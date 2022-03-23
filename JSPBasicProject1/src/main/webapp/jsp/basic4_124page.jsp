<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 멤버변수 <%! %> --%>
<%--
	public class className{
		private String name;
		private int age;
		private String sex;
		//멤버변수(기본 초기값을 가지고 있다) <%! %>
			- 기본데이터형
			 - 정수형 : byte, short, int, long
			 - 실수형 : float, double
			 - 논리형 : boolean 
			 - 문자형 : char
			- 참조데이터형 : 클래스(String..사용자정의,배열) → null
		
		public void display() {
			<% %>
			int i=1; //지역변수(초기값을 가지고있지 않다) → 반드시 초기화후에 사용
		}
	}
 --%>
 <%!
 	int a;
 	double d;
 	String s;
 	int[] arr;
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>멤버변수(자동 초기화) 출력</h1>
  a=<%=a %><br>
  d=<%=d %><br>
  s=<%=s %><br>
  arr=<%=arr %>
</body>
</html>