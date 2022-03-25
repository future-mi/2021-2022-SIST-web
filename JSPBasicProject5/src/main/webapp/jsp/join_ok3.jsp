<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 사용자로부터 전송된 데이터 받기 --%>
<%
    request.setCharacterEncoding("UTF-8");
%>
<%-- 객체생성 MemberBean m=new MemberBean() --%>
<jsp:useBean id="m" class="com.sist.member.MemberBean">
  <%-- 값을 받는다 : setXxx에 값을 채워준다 --%>
  <jsp:setProperty name="m" property="*"/>
  <%-- 주의점: HTML → 입력창의 name속성의 값 = 클래스멤버변수의 값이 일치가 되어야한다 --%>
</jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>사용자로부터 받은 요청데이터</h1>
  이름: <%=m.getName() %><br>
  나이: <%=m.getAge() %><br>
  성별: <%=m.getSex() %><br>
  주소: <%=m.getAddr() %><br>
  전화: <%=m.getTel() %><br>
  <%--
        <jsp:UseBean id="m"/>
        id에 설정된 값 → 일반객체처럼 사용이 가능
   --%>
</body>
</html>