<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setAttribute("name", "홍길동");    //${requestScope.name}
    session.setAttribute("name1", "박문수");    //${sessionScope.name}
    application.setAttribute("name2", "심청이"); //${applicationScope.name}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 request에 있는 이름을 출력: ${requestScope.name} <br> 
 ${name}<br> <%-- requestScope는 생략이 가능하다 --%>
 session에 있는 이름을 출력: ${sessionScope.name1}<br>
 ${name1}<br>
 application에 있는 이름을 출력: ${applicationScope.name2}<br>
 ${name2}
</body>
</html>