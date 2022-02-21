package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.cotroller.RequestMapping;

public class MusicModel {
	@RequestMapping("main/music.do")
	public String main_main(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("msg", "Music page");
		
		return "../main/music.jsp";
	}
}
