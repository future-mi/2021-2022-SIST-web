<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%
     String driver=application.getInitParameter("driver");
     String url=application.getInitParameter("url");
     String user=application.getInitParameter("username");
     String password=application.getInitParameter("password");
     out.println("<h1>driver:"+driver+"</h1>");
     out.println("<h1>url:"+url+"</h1>");
     out.println("<h1>username:"+user+"</h1>");
     out.println("<h1>password:"+password+"</h1>");
     application.log("driver:"+driver);
     application.log("url:"+url);
     application.log("username:"+user);
     application.log("password:"+password);
  %>
  <h1>서버이름:<%=application.getServerInfo() %></h1>
  <h1>버전:<%=application.getMajorVersion() %>.<%=application.getMinorVersion() %></h1>
  <h1>실제 저장 경로: <%=application.getRealPath("/") %></h1>
</body>
</html>