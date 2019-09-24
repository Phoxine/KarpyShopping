package com.web.store.controller;

import java.sql.Blob;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.store.model.MemberBean;

import com.web.store.service.MemberService;

@Controller
public class WebSocketController {

	@Autowired
	MemberService service;

	@RequestMapping("/chat")
	public String chat(HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberBean mb = (MemberBean) session.getAttribute("memberLoginOK");
		if (mb != null) {
			switch (mb.searchAccountSource()) {
			case "origin":
				mb = service.getMemberByAccount(mb.getAccount());
				break;
			case "gmail":
				mb = service.getMemberByGmail(mb.getGmail());
				break;
			case "line":
				mb = service.getMemberByLine(mb.getLine());
				break;
			default:
				System.out.println("something went error");
			}

			// reset memberBean
			session.setAttribute("memberLoginOK", mb);
		}
		return "websocket/chatroom";
	}

	// TODO--會員圖片
	@RequestMapping(value = "/getMemberPicture/{mId}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getPicture(HttpServletResponse resp, @PathVariable Integer mId) {
		byte[] body = null;
		HttpHeaders headers = new HttpHeaders();

		MemberBean mb = service.getMemberBymId(mId);

		if (mb != null) {
			Blob picture = mb.getMemberImage();
			if (picture != null) {
				try {
					body = picture.getBytes(1, (int) picture.length());
					System.out.println("body==" + body);
				} catch (SQLException e) {
					System.out.println("叉燒包");
					e.printStackTrace();
				}
			}
		}

		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		String mimeType = "image/jpg";
		MediaType mediaType = MediaType.valueOf(mimeType);
		headers.setContentType(mediaType);
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(body, headers, HttpStatus.OK);
		return responseEntity;
	}

}
