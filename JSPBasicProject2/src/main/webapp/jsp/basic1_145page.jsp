<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="16kb" import="java.util.*,java.text.*"
    errorPage="error.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %> 
<%--
	자바/HTML 분리, 자바코딩위치
	<% %> : 일반자바 → 지역변수선언, 제어문, 메소드호출, 스크립트릿
	<%! %> : 메소드선언, 멤버변수 선언, 선언문
	<%= %> : 데이터를 출력 → 메소드, 변수명, 일반데이터
	
	1. 지시자
	 1) page(145page)
	 	<%@ page 속성="값" %>
	 	→ JSP에 대한 파일 정보
	 	[ 속성 ]
	 		- contentType=""
	 		  브라우저에서 실행시에 출력 형식 지정
	 		   text/xml(XML), text/plain(JSON)
	 		  default : text/html;charset=ISO-8859_01
	 		  
	 		- buffer="16kb"
	 			Java → 실행 → 결과값 HTML → 저장하는 공간 크기
	 			default : 8kb
	 		- import=""
	 			Java 코딩시 필요한 라이브러리 로딩
	 			<%@ page import="java.util.*, java.io.*" %>
	 			or <%@ page import="java.util.*"%>
	 			   <%@ page import="java.io.*"%>
	 			자동 첨부 : java.lang.* / javax.http.servlet.*
	 		- errorPage="파일명"
	 			에러발생시 보여주는 파일로 이동(한개만 사용)
	 		- isErrorPage="true" → web.xml
	 			종류별로 처리 
	 		  default : false
	 		  
	  	[ WEB에러 ]
	  	404 : 파일을 찾을 수 없는 경우 
	  		  <a> → 경로설정
	  	412 : 한글 변환 코드
	  		  UTF-8 → UFT-8
	  		  text/html → test/html
		400 : bad request
			  사용자가 보내준 데이터 값 받는 데이터형이 일치(X)
			  Spring
		403 : 접속거부
		500 : 자바 소스에러 → 예외처리
		200	: 정상수행(화면에 출력)
	  
	 2) include
	 	<%@ include 속성="값" %>  : 조립식으로 변경
	 	<%@ include file="a.jsp"%>
	 3) taglib
	 	<%@ taglib 속성="값"%> :자바코딩이 아니라 태그형
		for(int i=i; i<=10;i++)
	 	→ <c:forEach var="i" begin="1" end="10" step="1">
	 	for(MovieVO vo:list)
	 	→ <c:forEach var="vo" item="list">
	 	if(i<10)
	 	→ <c:if test="i<10">
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%
 	 int a=10/0;
  %>
</body>
</html>