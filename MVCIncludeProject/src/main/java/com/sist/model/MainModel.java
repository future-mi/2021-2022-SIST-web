package com.sist.model;
import javax.servlet.http.*;

import com.sist.controller.RequestMapping;
public class MainModel {
	@RequestMapping("main/main.do")
	public String main_main(HttpServletRequest request) {
		request.setAttribute("main_jsp", "../main/home.jsp");
		return "../main/main.jsp";
	}
}
