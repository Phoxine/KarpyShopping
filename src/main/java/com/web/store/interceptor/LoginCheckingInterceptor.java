package com.web.store.interceptor;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.web.store.model.ManagerBean;

public class LoginCheckingInterceptor implements HandlerInterceptor {
	List<String> url = new ArrayList<String>();
	String servletPath;
	String contextPath;
	String requestURI;
	String QueryString;

	// This method is called before the controller
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean isRequestedSessionIdValid = false;
		if (request instanceof HttpServletRequest && response instanceof HttpServletResponse) {
			HttpServletRequest req = (HttpServletRequest) request;
			HttpServletResponse resp = (HttpServletResponse) response;
			servletPath = req.getServletPath();
			contextPath = req.getContextPath();
			requestURI = req.getRequestURI();
			QueryString = req.getQueryString();
			isRequestedSessionIdValid = req.isRequestedSessionIdValid();
			System.out.println("filter prehandle");

			if (checkLogin(req)) {
				// 需要登入，但已經登入
				System.out.println("b");
				return true;
			} else {
				// 需要登入，尚未登入，所以送回登入畫面
				System.out.println("c");
				HttpSession session = req.getSession();

				if (!isRequestedSessionIdValid) {
					session.setAttribute("timeOut", "使用逾時，請重新登入");
				} else {
					// 記住原本的"requestURI"，稍後如果登入成功，系統可以自動轉入
					// 原本要執行的程式。
					if (QueryString == null) {
						System.out.println("handle uri:" + requestURI);
						session.setAttribute("requestURI", requestURI);
					} else {
						System.out.println("handle uri:" + requestURI + "?" + QueryString);
						session.setAttribute("requestURI", requestURI + "?" + QueryString);
					}
				}
//				resp.sendRedirect(contextPath + "/AddorLogin");
				resp.sendRedirect(contextPath + "/adminlogin");
				return true;
			}

		} else {
			throw new ServletException("Request/Response 型態錯誤(極不可能發生)");
		}

	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("filter posthandle");
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("filter after");
	}

	// 判斷Session物件內是否含有識別字串為LoginOK的屬性物件，如果有，表示已經登入，否則尚未登入
	private boolean checkLogin(HttpServletRequest req) {
		HttpSession session = req.getSession();

		ManagerBean loginToken = (ManagerBean) session.getAttribute("LoginOK");
		if (loginToken == null) {
			return false;
		} else {
			return true;
		}
	}

	// 如果請求的ServletPath的前導字是以某個必須登入才能使用之資源的路徑，那就必須登入。

}
