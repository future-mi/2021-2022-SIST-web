<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	System.out.println("login_ok:id="+id);
	System.out.println("login_ok:pwd="+pwd);
	/*
		System.out.println → 도스창에 출력
		out.println → 브라우저에 출력
	*/
	response.sendRedirect("main.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>