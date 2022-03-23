<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="16kb"%>
<%--
        out/application/pageContext/exception
        config/page → X
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <center>
  HTML을 출력하는 메모리 공간(출력버퍼) 크기: <%=out.getBufferSize() %><br>
  HTML을 출력하고 남아있는 버퍼의 크기: <%=out.getRemaining() %><br>
  사용중인 버퍼: <%=out.getBufferSize()-out.getRemaining() %>
  <br>
  <h1>Hello JspWriter</h1>
  <h1>출력버퍼(JSP의 실행결과를 출력하는 메모리)</h1>
  <%
      String s="Hello 내장객체(out)";
  %>
  <%=s %><br>
  <%
      String s1="Hello 내장객체(out)";
      out.println(s1);
  %><br>
  <%
      String s2="Hello 내장객체(out)";
  %>
  <h1><%=s2 %></h1>
  <%
      String s3="Hello 내장객체(out)";
      out.println("<h1>"+s3+"</h1>");
  %>
  <input type="text" name="name" class="input-sm">
  <br>
  <%
      out.println("<input type=\"text\" name=\"name\" class=\"input-sm\">");
  %>
  </center>
</body>
</html>