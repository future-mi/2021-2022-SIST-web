package com.sist.controller;

import java.io.*;
import java.lang.reflect.Method;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import com.sist.model.*;

/*
 * list.do
 * join.do
 * main.do
 * detail.do
 * 		→ DispatcherSevlet을 호출
 */

@WebServlet("*.do")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// 모델을 등록
	List<String> modelList=new ArrayList<String>();

	public void init(ServletConfig config) throws ServletException {
		modelList.add("com.sist.model.MainModel");
		modelList.add("com.sist.model.BoardModel");
		modelList.add("com.sist.model.MemberModel");
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// 1. 사용자 입력한 URI읽기
			String uri=request.getRequestURI(); // ?부터는 포함이 안된다
			System.out.println("uri="+uri);
			uri=uri.substring(request.getContextPath().length()+1);
			System.out.println("uri="+uri);
			
			for(String cls:modelList) {
				// 1. 메모리할당
				Class clsName=Class.forName(cls);
				Object obj=clsName.getConstructor().newInstance();
				// 2. 메소드 찾기
				// clsName에 클래스의 모든 정보를 가지고있다
				// clsName(클래스정보) → 메소드를 전체 가지고온다
				Method[] methods=clsName.getDeclaredMethods();
				for(Method m:methods) {
					// System.out.println(m.getName());
					RequestMapping rm=m.getAnnotation(RequestMapping.class);
					// 어노테이션이 없는 경우에는 에러발생
					if(rm.value().equals(uri)) {
						// 메소드실행
						// System.out.println(rm.value());
						// System.out.println(m.getName());
						String jsp = (String) m.invoke(obj, request, response);
						// 메소드 호출(invoke) → 메소드이름을 몰라도 호출이 가능
						// return "redirect:list.do" → send
						// return "../board/list.jsp"
						if(jsp.startsWith("redirect:")) {
							// request를 초기화한 다음 → 화면이동
							String s=jsp.substring(jsp.indexOf(":")+1);
							response.sendRedirect(s);
						} else {
							RequestDispatcher rd=request.getRequestDispatcher(jsp);
							rd.forward(request, response);
						}
						return;
					}
				}	
			}			
		} catch (Exception ex) {}
	}
}
