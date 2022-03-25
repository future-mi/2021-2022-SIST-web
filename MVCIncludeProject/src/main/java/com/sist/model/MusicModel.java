package com.sist.model;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.RequestMapping;

// emp대체
public class MusicModel {
	@RequestMapping("music/list.do")
	public String music_main(HttpServletRequest request) {
		request.setAttribute("main_jsp", "../music/list.jsp");
		return "../main/main.jsp";
	}
}
