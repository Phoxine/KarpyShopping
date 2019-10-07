package com.web.store.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.persistence.NoResultException;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.text.RandomStringGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.web.store.exception.MemberNotFoundException;
import com.web.store.model.CreditCardBean;
import com.web.store.model.ManagerBean;
import com.web.store.model.MemberBean;
import com.web.store.model.TaxIdBean;
import com.web.store.service.MemberService;

import _00_init.util.GlobalService;
import _00_init.util.SystemUtils2019;

@Controller
public class MemberController {

	// TODO: Input String check -> should not include space or special symbol which
	// likes SQL command (pending)

	@Autowired
	MemberService service;

	@Autowired
	ServletContext context;

	@InitBinder
	public final void initBinderUsuariosFormValidator(final WebDataBinder binder, final Locale locale) {
		final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd", locale);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

	@ExceptionHandler({ MemberNotFoundException.class })
	public ModelAndView handleError(HttpServletRequest request, MemberNotFoundException exception) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("invalidAccount", exception.getAccount());
		mv.addObject("exception", exception);
		mv.addObject("errorMessage", exception.getMessage());
		System.out.println(exception.getMessage());
		mv.addObject("url", request.getRequestURL() + "?" + request.getQueryString());

		String a1 = "此帳號已存在 : ";
		String a2 = "欄位不可為空";
		String a3 = "帳號或是密碼錯誤 : ";
		if (exception.getMessage().equals(a1)) {
			mv.setViewName("errorPage/memberNotFound2");

		} else if (exception.getMessage().equals(a2)) {
			mv.setViewName("errorPage/memberNotFound");
			return mv;
		} else if (exception.getMessage().equals(a3)) {
			mv.setViewName("errorPage/memberLoginError");
		}

//		
//		mv.setViewName("errorPage/memberNotFound");
//		mv.setViewName("errorPage/memberLoginError");
		return mv;
	}

	@RequestMapping("/membersall")
	public String list(Model model) {
		List<MemberBean> list = service.getAllMember();
		model.addAttribute("members", list);
		return "backstage/members";
	}

	@RequestMapping("/member")
	public String getMemberById(@RequestParam("account") String account, Model model) {
		model.addAttribute("member", service.getMemberByAccount(account));
		return "member/member";
	}

	@RequestMapping(value = "/idExists", method = RequestMethod.GET)
	public String idExists(Model model, Integer mId) {
		MemberBean mb = new MemberBean();
		model.addAttribute("MemberBean", mb);
		return "idcheck/idExists";
	}

	@RequestMapping(value = "/idExists", method = RequestMethod.POST)
	public String idExists(@ModelAttribute("MemberBean") MemberBean mb) {
		System.out.println(mb.getAccount());
		service.idExists(mb.getmId());
		return "idcheck/idFound";
	}

//登入控制器
	@RequestMapping(value = "/memberLogin", method = RequestMethod.GET)
	public String getManagerForm(Model model1, HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberBean mb = new MemberBean();
		model1.addAttribute("memberBean", mb);
		char[][] pairs = { { 'a', 'z' }, { 'A', 'Z' }, { '0', '9' } };
		ThirdPartyLoginController.RANDOM_STRING = new RandomStringGenerator.Builder().withinRange(pairs).build()
				.generate(ThirdPartyLoginController.RANDOM_STRING_LENGTH);
		System.out.println("Random String:" + ThirdPartyLoginController.RANDOM_STRING);
		session.setAttribute("state", ThirdPartyLoginController.RANDOM_STRING);

		return "member/memberLogin";
	}

	@RequestMapping(value = "/memberLogin", method = RequestMethod.POST)
	public String processManagerForm(@ModelAttribute("memberBean") MemberBean mb, @RequestParam("form") boolean form,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println("form :" + form);

		if (!form) {
			int mId = service.addMember(mb);
			mb.setPassword(GlobalService.getMD5Endocing(GlobalService.encryptString(mb.getPassword())));
			mb.setmId(mId);
			System.out.println(mb.toString());
			session.setAttribute("memberLoginOK", mb);
		} else {
			MemberBean Member = new MemberBean();
			Member = service.checkIdPassword(mb.getAccount(), mb.getPassword());
			System.out.println(Member.toString());
			session.setAttribute("memberLoginOK", Member);
		}
		String uri = (String) session.getAttribute("requestURI");
		System.out.println("uri : " + uri);
		if (uri == null) {
			return "redirect:/home";
		} else {
			session.removeAttribute("requestURI");
			return "redirect:/" + uri.substring(15);
		}
	}

//註冊會員控制器
	@RequestMapping(value = "/member/add", method = RequestMethod.GET)
	public String getAddNewMemberForm(Model model) {
		MemberBean mb = new MemberBean();
		model.addAttribute("MemberBean", mb);
		return "registration/addMember";
	}

	@RequestMapping(value = "/member/add", method = RequestMethod.POST)
	public String processAddNewMemberForm(@ModelAttribute("MemberBean") MemberBean mb, BindingResult result,
			HttpServletRequest request) {
		service.addMember(mb);
		return "redirect:/members";
	}

//修改會員控制器
	@RequestMapping(value = "/updatemember", method = RequestMethod.GET)
	public String Changemamber(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberBean mb = (MemberBean) session.getAttribute("memberLoginOK");
		model.addAttribute("MemberBean", mb);
		return "account/updatemember";
	}

	@RequestMapping(value = "/updatemember", method = RequestMethod.POST)
	public String Changemember(@ModelAttribute("MemberBean") MemberBean mb, @RequestParam("county") String county,
			@RequestParam("city") String city, @RequestParam("addr") String addr, @RequestParam("gender") String gender,
			@RequestParam("date") @DateTimeFormat(pattern = "yyyy/MM/dd") Date date, BindingResult result,
			HttpServletRequest request) {
		System.out.println("=====date = " + date);
		HttpSession session = request.getSession();
		MemberBean memberBean = (MemberBean) session.getAttribute("memberLoginOK");
		memberBean.setBirthday(new java.sql.Timestamp(date.getTime()));
		memberBean.setGender(gender);
		memberBean.setAddr(county + city + addr);
		service.updateMember(memberBean);
		return "redirect:/home";
	}

	// 後台會員修改控制器
//		@RequestMapping(value = "/updatemember1", method = RequestMethod.GET)
//		public void updateMember(Model model, HttpServletRequest request) {
//			HttpSession session = request.getSession();
//			MemberBean mb = (MemberBean) session.getAttribute("memberLoginOK");
//			model.addAttribute("memberBean", mb);
//		}
//
//		@RequestMapping(value = "/updatemember1", method = RequestMethod.POST)
//		public String updateMember(@ModelAttribute("memberBean") MemberBean mb, 
//				 @RequestParam("addr") String addr, @RequestParam("gender") String gender,
//				@RequestParam("date") @DateTimeFormat(pattern = "yyyy/MM/dd") Date date, BindingResult result,
//				HttpServletRequest request) {
//			System.out.println("=====date = " + date);
//			HttpSession session = request.getSession();
//			MemberBean memberBean = (MemberBean) session.getAttribute("memberLoginOK");
//			memberBean.setBirthday(new java.sql.Timestamp(date.getTime()));
//			memberBean.setGender(gender);
//			memberBean.setAddr(addr);
//			service.updateMember(memberBean);
//			return "redirect:/adminMembers";
//		}

	// 後台新增會員

	@RequestMapping(value = "/addMember")
	public String addMember(@RequestParam("mId") Integer mId, @RequestParam("name") String name,
			@RequestParam("account") String account, @RequestParam("password") String password,
			@RequestParam("email") String email, @RequestParam("addr") String addr,
			@RequestParam("gender") String gender, @RequestParam("tel") String tel,
			@RequestParam("date") @DateTimeFormat(pattern = "yyyy/MM/dd") Date date, Model model) {
		MemberBean mb = new MemberBean();
		mb.setmId(mId);
		mb.setName(name);
		mb.setAccount(account);
		mb.setPassword(password);
		mb.setEmail(email);
		mb.setAddr(addr);
		mb.setGender(gender);
		mb.setTel(tel);
		mb.setBirthday(new java.sql.Timestamp(date.getTime()));
		service.addMember(mb);
		return "redirect:/adminMembers";
	}

	// 後台更新會員
	@RequestMapping(value = "/updateMember1")
	public String updateMember(@RequestParam("mId") Integer mId, @RequestParam("name") String name,
			@RequestParam("account") String account, @RequestParam("password") String password,
			@RequestParam("email") String email, @RequestParam("addr") String addr,
			@RequestParam("gender") String gender, @RequestParam("tel") String tel,
			@RequestParam("date") @DateTimeFormat(pattern = "yyyy/MM/dd") Date date, Model model) {

		MemberBean mb = new MemberBean();
		mb.setmId(mId);
		mb.setName(name);
		mb.setAccount(account);
		mb.setPassword(password);
		mb.setTel(tel);
		mb.setAddr(addr);
         if (date != null) {
			mb.setBirthday(new java.sql.Timestamp(date.getTime()));
		}

//		mb.setBirthday(new java.sql.Timestamp(date.getTime()));
		mb.setEmail(email);
		mb.setGender(gender);
		service.updateMember(mb);

		return "redirect:/adminMembers";
	}

//變更密碼控制器
	@RequestMapping(value = "/member/change", method = RequestMethod.GET)
	public String getChangeMemberForm(Model model) {
		return "account/changeMemberPassword";
	}

	@RequestMapping(value = "/member/change", method = RequestMethod.POST)
	public String processChangeMemberForm(@RequestParam("oldPW") String oldPW, @RequestParam("newPW") String newPW,
			@RequestParam("renewPW") String renewPW, HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberBean mb = (MemberBean) session.getAttribute("memberLoginOK");
		service.changePassword(service.checkIdPassword(mb.getAccount(), oldPW), newPW);
		return "redirect:/members";
	}

	// 變更密碼控制器測試
	@RequestMapping(value = "/member/changetest", method = RequestMethod.GET)
	public String getChangeMemberFormTest(Model model) {
		MemberBean mb = new MemberBean();
		model.addAttribute("MemberBean", mb);
		return "account/changeMemberPasswordTest";
	}

	@RequestMapping(value = "/member/changetest", method = RequestMethod.POST)
	public String processChangeMemberFormTest(@ModelAttribute("MemberBean") MemberBean mb,
			@RequestParam("newPW") String newPW, BindingResult result, HttpServletRequest request) {
		service.changePassword(service.checkIdPassword(mb.getAccount(), mb.getPassword()), newPW);
		return "redirect:/members";
	}

	// 刪除會員控制器
	@RequestMapping(value = "/member/delete", method = RequestMethod.GET)
	public String deleteMember(Model model) {
		MemberBean mb = new MemberBean();
		model.addAttribute("MemberBean", mb);
		return "account/deleteMember";
	}

	@RequestMapping(value = "/member/delete", method = RequestMethod.POST)
	public String deleteMember(@ModelAttribute("MemberBean") MemberBean mb, BindingResult result,
			HttpServletRequest request) {
		service.deleteMember(mb);
		return "member/members";
	}

	// 登出控制器
	@RequestMapping("/memberLogout")
	public String manageLogout(Model model) {
		System.out.println("Mout");
		return "member/memberLogout";
	}

	@RequestMapping(value = "addCreditCard", method = RequestMethod.GET)
	public String addCreditCard(Model model) {
		CreditCardBean cb = new CreditCardBean();
		model.addAttribute("CreditCardBean", cb);
		return "creditCard/addCreditCard";
	}

	@RequestMapping(value = "addCreditCard", method = RequestMethod.POST)
	public String addCreditCard(@ModelAttribute("CreditCardBean") CreditCardBean cb, BindingResult result,
			HttpServletRequest request, @RequestParam("date") @DateTimeFormat(pattern = "yyyy/MM/dd") Date date) {
		System.out.println("DATE:" + date);
		cb.setVdate(new java.sql.Timestamp(date.getTime()));
		System.out.println("cb:" + cb.toString());
		HttpSession session = request.getSession();
		MemberBean mb = (MemberBean) session.getAttribute("memberLoginOK");
		cb.setmId(mb.getmId());
		service.addCreditCard(cb);
		return "redirect:/home";
	}

	@RequestMapping("/CreditCardList")
	public String getCreditCardsBymId(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberBean mb = (MemberBean) session.getAttribute("memberLoginOK");
		if (mb != null) {
			List<CreditCardBean> list = service.getCreditCardsBymId(mb.getmId());
			model.addAttribute("creditCard", list);
		}

		return "creditCard/creditCards";
	}

	@RequestMapping("/CreditCard")
	public String getCreditCardBycId(@RequestParam("cId") Integer cId, Model model, HttpServletRequest request) {
		model.addAttribute("card", service.getCreditCardBycId(cId));
		return "creditCard/creditCard";
	}

//	@RequestMapping(value = "/membertest", method = RequestMethod.GET)
//	public String addCreditCard1(Model model) {
//		CreditCardBean cb = new CreditCardBean();
//		model.addAttribute("CreditCardBean", cb);
//		return "membertest";
//	}

	@RequestMapping(value = "/memberchange", method = RequestMethod.GET)
	public String Changemember1(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		CreditCardBean cb = new CreditCardBean();
		MemberBean member = (MemberBean) session.getAttribute("memberLoginOK");
		MemberBean mb = null;
		System.out.println("start check which type of account");
		switch (member.searchAccountSource()) {

		case "origin":
			System.out.println("origin account");
			mb = service.getMemberByAccount(member.getAccount());
			session.setAttribute("memberLoginOK", mb);
			break;

		case "line":
			System.out.println("line account");
			mb = service.getMemberByLine(member.getLine());
			session.setAttribute("memberLoginOK", mb);
			break;

		case "gmail":
			System.out.println("google account");
			mb = service.getMemberByGmail(member.getGmail());
			session.setAttribute("memberLoginOK", mb);
			break;
		default:
			System.out.println("something went wrong");
		}
		System.out.println("Regain MemberBean");
		SimpleDateFormat x = new SimpleDateFormat("yyyy-MM-dd");
		if (mb.getBirthday() != null) {
			System.out.println(mb.getBirthday());
			String bd = x.format(mb.getBirthday());
			model.addAttribute("Birthday", bd);
			System.out.println(bd);
		}

		if (mb != null && mb.getMemberImage() != null) {
			Blob blob = null;
			byte[] imageData = null;
			if (mb.getMemberImage() != null) {
				blob = mb.getMemberImage();
				try {
					imageData = blob.getBytes(1, (int) blob.length());
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				session.setAttribute("memberImage", Base64.getEncoder().encodeToString(imageData));
			}

		}
		// deal with address
		if (mb.getAddr() != null) {
			String[] token = mb.getAddr().split(" ");

			switch (token.length) {
			case 0:
				break;
			case 1:
				session.setAttribute("city", token[0]);
				break;
			case 2:
				session.setAttribute("city", token[0]);
				session.setAttribute("city2", token[1]);
				break;
			case 3:
				session.setAttribute("city", token[0]);
				session.setAttribute("city2", token[1]);
				session.setAttribute("city3", token[2]);
				break;
			default:
				System.out.println("Something went wrong with Address");
			}

		}
		// get credit cards
		List<CreditCardBean> list = null;
		try {
			list = service.getCreditCardsBymId(mb.getmId());
		} catch (NoResultException e) {
			System.out.println("無信用卡資料");
			e.printStackTrace();
		}
		// process CNumber date
		for (int i = 0; i < list.size(); i++) {
			CreditCardBean cbean = list.get(i);
			cbean.setCnumber(cbean.getCnumber().substring(0, 4) + "-" + cbean.getCnumber().substring(4, 8) + "-"
					+ cbean.getCnumber().substring(8, 12) + "-" + cbean.getCnumber().substring(12, 16));
			list.set(i, cbean);
		}
		model.addAttribute("creditcards", list);
		model.addAttribute("memberBean", mb);
		model.addAttribute("CreditCardBean", cb);
		// Garbage Collection
		cb = null;
		member = null;
		System.gc();
		return "member/memberchange";
	}

	@RequestMapping(value = "/memberchange", method = RequestMethod.POST)

	public String Changemember1(@ModelAttribute("CreditCardBean") CreditCardBean cb,
			@ModelAttribute("memberBean") MemberBean mb, BindingResult result, HttpServletRequest request,
			@RequestParam("form") String form, @RequestParam("oldPW") String oldPW, @RequestParam("newPW") String newPW,
			@RequestParam("renewPW") String renewPW, @RequestParam("county") String county,
			@RequestParam("city") String city, @RequestParam("addr") String addr,
			@RequestParam("date") @DateTimeFormat(pattern = "yyyy/MM/dd") Date date,
			@RequestParam("cnumber1") String cnumber1, @RequestParam("cnumber2") String cnumber2,
			@RequestParam("cnumber3") String cnumber3, @RequestParam("cnumber4") String cnumber4) {
		HttpSession session = request.getSession();
		MemberBean memberbean = (MemberBean) session.getAttribute("memberLoginOK");
		if (form.equals("1")) {
			MultipartFile file = mb.getFile();
			mb.setmId(memberbean.getmId());
			if (date != null)
				mb.setBirthday(new java.sql.Timestamp(date.getTime()));
			// remove space from addr detail that input by user -> code:[String.join("",
			// addr.split(" "))]
			// county and city's values are no problem cause those come from select tag
			mb.setAddr(county + " " + city + " " + String.join("", addr.split(" ")));

			if (!file.isEmpty()) {
				try {
					mb.setMemberImage(SystemUtils2019.fileToBlob(file.getInputStream(), file.getSize()));
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			session.setAttribute("memberLoginOK", service.updateMember(mb));
		}
		// 修改密碼
		else if (form.equals("2")) {
			// TODO: memberLoginOK should be updated as latest password
			if (!GlobalService.getMD5Endocing(GlobalService.encryptString(oldPW)).equals(memberbean.getPassword())) {
				session.setAttribute("wrongpw", "舊密碼錯誤");
				return "redirect:/memberchange";
			}
			service.changePassword(service.checkIdPassword(memberbean.getAccount(), oldPW), newPW);
			// update memberLoginOK
			session.setAttribute("memberLoginOK", service.getMemberBymId(memberbean.getmId()));
		}
		// 新增會員信用卡
		else if (form.equals("3")) {
			cb.setVdate(new java.sql.Timestamp(date.getTime()));
			System.out.println("form :" + form);
			MemberBean db = (MemberBean) session.getAttribute("memberLoginOK");
			cb.setCnumber(cnumber1 + cnumber2 + cnumber3 + cnumber4);
			cb.setmId(db.getmId());
			service.addCreditCard(cb);
		}
//		garbage collection
		session.removeAttribute("city");
		session.removeAttribute("city2");
		session.removeAttribute("city2");
		memberbean = null;
		System.gc();

		return "redirect:/membercentre";
	}

	// 上傳會員圖片測試
	@RequestMapping(value = "/uploadImage", method = RequestMethod.GET)
	public String addImage(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberBean member = (MemberBean) session.getAttribute("memberLoginOK");
		MemberBean mb = null;
		if (member != null && member.getMemberImage() != null) {
			System.out.println("both true");
			mb = service.getMemberBymId(member.getmId());
			try {
				session.setAttribute("memberImage", SystemUtils2019.Blob2Base64String(mb.getMemberImage()));
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			mb = new MemberBean();
		}
		model.addAttribute("memberBean", mb);
		System.out.println("HelloWorld");
		return "account/uploadImage";

	}

	@RequestMapping(value = "/uploadImage", method = RequestMethod.POST)
	public String addImage(@ModelAttribute("memberBean") MemberBean mb, BindingResult result,
			HttpServletRequest request) {
		MultipartFile file = mb.getFile();
		HttpSession session = request.getSession();
		MemberBean member = (MemberBean) session.getAttribute("memberLoginOK");

		if (!file.isEmpty()) {
			try {
				member.setMemberImage(SystemUtils2019.fileToBlob(file.getInputStream(), file.getSize()));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		session.setAttribute("memberLoginOK", member);
		service.updateMember(member);
		return "redirect:/uploadImage";
	}

	@RequestMapping(value = "/delCreditCard")
	public String deleteCreditCard(@RequestParam("cId") Integer cId, HttpServletRequest request) {
		service.deleteCreditCard(cId);
		return "redirect:/memberchange";
	}

	@RequestMapping("/memberQA")
	public String memberQA() {
		return "member/memberQA";
	}

	@RequestMapping("/memberQandA")
	public String memberQA1() {
		return "member/memberQandA";
	}

	@RequestMapping(value = "/receiptDetail", method = RequestMethod.GET)
	public String receiptDetail(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		TaxIdBean tb = new TaxIdBean();
		MemberBean mb = (MemberBean) session.getAttribute("memberLoginOK");
		List<TaxIdBean> list = service.getTaxIdBymid(mb.getmId());
		session.setAttribute("list", list);
		model.addAttribute("memberBean", mb);
		model.addAttribute("TaxIdBean", tb);
		return "member/receiptDetail";
	}

	@RequestMapping(value = "/receiptDetail", method = RequestMethod.POST)
	public String receiptDetail(@ModelAttribute("memberBean") MemberBean mb, @ModelAttribute("TaxIdBean") TaxIdBean tb,
			@RequestParam("form") Boolean form, BindingResult result, HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberBean member = (MemberBean) session.getAttribute("memberLoginOK");
		System.out.println(form);
		// form {taxid : true vehicle : false}
		if (form == true) {
			tb.setmId(member.getmId());
			service.addTaxId(tb);
		} else if (form == false) {
			mb.setmId(member.getmId());
			service.updateVehicle(mb);
			member.setVehicle(mb.getVehicle());
		}
		session.setAttribute("memberLoginOK", member);
		return "redirect:/receiptDetail";
	}

//	@RequestMapping(value = "/updateVehicle", method = RequestMethod.GET)
//	public String updateVehicle(Model model, HttpServletRequest request) {
//		MemberBean mb = new MemberBean();
//		model.addAttribute("memberBean", mb);
//		return "member/receiptDetail";
//	}
//
//	@RequestMapping(value = "/updateVehicle", method = RequestMethod.POST)
//	public String updateVehicle(@ModelAttribute("memberBean") MemberBean mb,  BindingResult result,
//			HttpServletRequest request) {
//		HttpSession session = request.getSession();
//		MemberBean memberBean = (MemberBean) session.getAttribute("memberLoginOK");
//		memberBean.setVehicle(mb.getVehicle());
//		service.updateVehicle(memberBean);
//		return "member/receiptDetail";
//	}
//	
//	@RequestMapping(value = "/addTaxId", method = RequestMethod.GET)
//	public String addTaxId(Model model) {
//		TaxIdBean tb = new TaxIdBean();
//		model.addAttribute("TaxIdBean", tb);
//		return "redirect:/home";
//	}
//
//	@RequestMapping(value = "/addTaxId", method = RequestMethod.POST)
//	public String addTaxId(@ModelAttribute("TaxIdBean") TaxIdBean tb, BindingResult result,
//			HttpServletRequest request) {
//		HttpSession session = request.getSession();
//		MemberBean mb = (MemberBean) session.getAttribute("memberLoginOK");
//		tb.setmId(mb.getmId());
//		service.addTaxId(tb);
//		return "redirect:/home";
//	}

	@RequestMapping(value = "/delTaxId")
	public String deleteTaxId(@RequestParam("tId") Integer tId, HttpServletRequest request) {
		service.deleteTaxId(tId);
		return "redirect:/receiptDetail";
	}

	@RequestMapping("/taxIdList")
	public String getTaxIdBymId(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberBean mb = (MemberBean) session.getAttribute("memberLoginOK");
		if (mb != null) {
			List<TaxIdBean> list = service.getTaxIdBymid(mb.getmId());
			model.addAttribute("TaxId", list);
		}
		return "redirect:/home";
	}

	@RequestMapping("/taxId")
	public String getTaxIdBytId(@RequestParam("tId") Integer tId, Model model, HttpServletRequest request) {
		model.addAttribute("taxId", service.getTaxIdBytId(tId));
		return "redirect:/home";
	}

	@RequestMapping(value = "/updateVehicle", method = RequestMethod.GET)
	public String updateVehicle(Model model, HttpServletRequest request) {
		MemberBean mb = new MemberBean();
		model.addAttribute("memberBean", mb);
		return "account/updateVehicle";
	}

	@RequestMapping(value = "/updateVehicle", method = RequestMethod.POST)
	public String updateVehicle(@ModelAttribute("memberBean") MemberBean mb, BindingResult result,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberBean memberBean = (MemberBean) session.getAttribute("memberLoginOK");
		memberBean.setVehicle(mb.getVehicle());
		service.updateVehicle(memberBean);
		return "redirect:/home";
	}

}
