<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!-- 
  		GET → URL뒤에 데이터 첨부해서 전송 
  		HTML: <a>:GET, <form>:GET,POST
  		JavaScript: location.href="파일" → GET
  		Java: sendRedirect() → GET
   -->
  <a href="login_ok.jsp?id=admin&pwd=1234">로그인</a>
</body>
</html>