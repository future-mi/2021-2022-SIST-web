package com.sist.model;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.RequestMapping;

public class MemberModel {
	@RequestMapping("member/join.do")
	public String memberJoin(HttpServletRequest request) {
		request.setAttribute("msg", "회원가입");
		return "../member/join.jsp";
	}
}
