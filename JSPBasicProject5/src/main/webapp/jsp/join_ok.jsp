<%@page import="com.sist.member.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // 사용자가 보내준 데이터를 받는다 → 출력, DB
    // 한글여부(한글이 있는 경우 → 디코딩)
    request.setCharacterEncoding("UTF-8");
    MemberBean m=new MemberBean();
    String name=request.getParameter("name");
    String age=request.getParameter("age");
    String sex=request.getParameter("sex");
    String addr=request.getParameter("addr");
    String tel=request.getParameter("tel");
    
    m.setName(name);
    m.setAge(Integer.parseInt(age));
    m.setSex(sex);
    m.setAddr(addr);
    m.setTel(tel);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>사용자로부터 받은 요청데이터</h1>
  이름: <%=name %><br>
  성별: <%=sex %><br>
  나이: <%=age %><br>
  주소: <%=addr %><br>
  전화번호: <%=tel %>
</body>
</html>