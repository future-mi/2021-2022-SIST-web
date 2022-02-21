package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.cotroller.RequestMapping;

public class MovieModel {
	@RequestMapping("main/movie.do")
	public String main_main(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("msg", "Movie page");
		return "../main/movie.jsp";
	}
}