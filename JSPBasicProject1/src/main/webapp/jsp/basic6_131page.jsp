<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%--
	<%= %> → JSP
	out.println() → Servlet
	${} → MVC(Spring)
	→ out.println(들어가는 코딩) → ;을 사용 할 수 없다
	→ 데이터를 브라우저에 출력할 목적으로 사용
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>브라우저에 데이터 출력</h1>
	정수 : <%=10 %><br>
	실수 : <%=10.5 %><br>
	문자열 : <%= "홍길동" %><br>
	배열 : <%
			int[] arr={1,2,3,4,5};
		  %>
		  <%= Arrays.toString(arr) %>
	<br>
	문자열 : <%
				String sex="남자";
			%>
		   <%=sex %>
	배열 : <%
			String[] names={"홍길동","심청이","박문수","이순신"};
			out.println(Arrays.toString(names));
		  %>
	<%--
		  <%= %> : 변수값, 일반 데이터값, 메소드 리턴값 출력이 가능
				   <%= name%>, <%= ""%>, <%= sdf.format()%>
	 --%>
	 <br>
	 <%
	 	String s="Hello JSP";
	 %>
	 <%= s.substring(0,5) %>
	 <%-- Java+HTML을 동시에 주석 --%>
	 <!-- HTML만 주석처리 -->
</body>
</html>