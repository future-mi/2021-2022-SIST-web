<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
	JSP(Java Server Page) : 서버에서 실행되는 파일
	JSP(WEB 파일+JAVA)
	JSP의 최종 결과값 → HTML → 브라우저에 전송(JAVA코딩은 사라진다)
	
	[ 사용되는 도구 ]
	1. 브라우저(실행화면) → 크롬/FF/IE
	2. JDK → openjdk(1.8이상)
	3. 웹서버 → 아파치 / IIS(x)
	4. JSP/SERVLET-엔진
		- 자바를 번역해서 HTML(XML)로 변환 : 웹 컨테이너(톰캣)
		  톰캣 안에는 실습용 웹서버가 존재(50명 정도)

	→ 웹사이트 제작 (J2EE) → sevelet-api.jar
	
	[ 실행 과정 ]
	1. 브라우저 : 사용자가 URL요청
	2. 서버가 URL 주소를 받아서 해당 파일 찾기
		- URL 주소에는 항상 포함 → 파일명
		  http://localhost:8080/JSPBasicProject1/jsp/basic1.jsp
		- HTML, XML 파일일 경우 → 파일을 브라우저로 전송 
		  (브라우저에 HTML/XML을 한줄씩 번역(인터프리터)) → 화면출력
		- JSP 파일을 요청한 경우 (HTML+JAVA) → 자바를 번역 후 HTML 변경
		  톰캣에 의해서 자바가 실행 → 실행된 결과를 브라우저로 전송
		  → 실행된 결과 : HTML 또는 XML
		  
	브라우저에서 자바는 일반 텍스트로 인식 → 자바와 HTML을 분리
	- 자바영역 : <% 자바코딩 %>
	- HTML영역 : <% %>외에 코딩되는 부분
	1. 자바와 HTML 분리
	  1) 지시자
	  	- page : JSP에 대한 정보 
	  			- contentType : 변환(JSP → HTML) 
	  				→ contentType="text/html"
	  				→ contentType="text/xml"
	  			- 자바사용(라이브러리)
	  				→ import="java.util.*, java.io.*"
	  				→ info="작업자(수정일)"
	  				→ errorPage="파일명" → 에러시 이동하는 파일 지정
	  	- taglib : 자바를 태그형으로 변경한 라이브러리
	  				<%
	  					if(조건문)
	  					{
	  				%>
	  					HTML을 코딩
	  				<%
	  					}
	  				%>
	  				
	  				<c:if test="">
	  				 HTML코딩
	  				</c:if>
	  	- include : 조립식 프로그램
	  				JSP에서 특정부분에 다른 JSP 첨부가 가능
	  				
	  2) 자바사용법
	  	- <% %> : 스크립트릿 → 일반자바
	  			  <%
	  			  	int a=10; 변수선언 → 지역변수
	  			  	for()
	  			  	{
	  			  	}
	  			  	
	  			  	[ 주의점 ]
	  			  	 주석 → 일반자바와 동일
	  			  	 // → 한 줄 주석
	  			  	 /* */ → 여러줄 주석
	  			  	 문법사항도 자바와 동일 
	  			  	 객체선언 → 메소드 호출
	  			  	 A a=new A();
	  			  	 a.display();
	  			  %>
	  	- <%= %> : 표현식 → 화면출력 (System.out.println())
	  				<td><%= "홍길동"%></td> 
	  				→ ;을 사용하지 않는다
	   	- <%! %> : 선언식(거의 사용빈도가 없다) → 메소드 선언, 멤버변수
	  	- <%@ %> : 지시자 선언문 → JSP의 시작코드
		
		JSP → Java로 변환
		a.jsp → a_jsp.java → a_jsp.class → 실행(HTML)
			영역에 존재하는 모든 자바 파일이 사라진다 → HTML만 메모리에 저장
			저장된 HTML을 읽어서 브라우저에 출력
			
		a.jsp
		<%@ page %>
		<%!
			public void display()
			{
			}
			int number=1;  → 클래스 블록안에 설정 
		%>
		<html>
		 <body>
		 	<%
		 		String name="홍길동"; →
		  	%>
		  	<%= name%>
		 </body>
		</html>
		→ 자바로 변경
		public class a_jsp extends HttpServlet {
			<%!-
			
			-%>
			public void display() {
			}
			int number=1;
		
			public void _jspInit(){ 	→ 생성자 대신 초기화시에 사용
			}
			public void _jspDestory(){ 	→ 메모리에서 해제
				→ 파일이동
				→ 새로고침(새로운 객체가 생성) 	→ new/gc
				→ finalize()
			}
			public void _jspService(){	→ Thread메소드
				String name="홍길동";
				out.println(name); <%= name%>
				→ main
			}
		}
		
		→ 제작한 모든 JSP는 _jspService()에서 실행되는 문장
		  클라이언트 요청시마다 실행해서 결과값을 보내준다
		
	  3) 내장객체
	  	- request (HttpServletRequest) : 클라이언트에서 전송한 데이터를 받을 때 사용
	  						클라이언트에서 서버로 전송 → URL주소뒤에 있다
	  				   		 받을 파일명?변수=값
	  				   	 	 받을 파일명?변수=값&변수=값... → GET
	  				   					  감춘다 → POST
	  	- response (HttpSecletResponse) : 응답(결과값을 보내준다)
	  				 HTML 전송을 할지 쿠키전송을 할지 JSP 파일에서는 한번만 사용이 가능
	  				 → 서버자체에서 파일 이동이 가능(sendRedirect())
	  	- session (HttpSession) : 모든 JSP에 저장된 데이터를 공유 할 수 있다
	  							  클라이언트의 일부 정보를 저장(id,pwd,name...)
	  							  로그아웃이나 브라우저 종료시까지 메모리 유지
	  	- application (SevletContext) : 실제 경로명 읽기 → getRealPath()
	  									로그파일 제작
	  	- out (JSPWriter) : 화면출력 (<%= %>)
	  	- config (ServletConfig → web.xml) : 톰캣이 인식 
	  	- exception (Exception) : 예외처리 → try~catch
	  	- page : this(자신의 객체)
	  	  pageContext (PageContext) : 화면이동 → forward(MVC) → request를 유지
	  	  							 	sendRedirect() → request초기화
	  	  							  다른 JSP를 첨부 → include() : JSP에 다른 JSP를 포함 → 조립식
	  	  							  
	  4) JSP에서 제공하는 액션태그 
	  	<jsp:useBean> : 객체생성 → new A()
	  	<jsp:setProperty> : setter 호출
	  	<jsp:getProperty> : getter 호출
	  	<jsp:include> : JSP안에 다른 JSP를 포함 할 때 사용 
	  	<jsp:forward> : request를 유지한 상태에서 화면 이동
	  	
	  5) 태그라이브러리 / 표현법
	  	- 제어문
	  		<c:forEach> : for
	  		<c:if> : if
	  		<c:choose> : switch~case
	  		<c:forTokens> : StringTokonizer
	  		<c:set> : 변수설정

	  	- URL
	  		<c:import>, <c:redirect>
	  	- 변환
	  		<fmt:formatDate> : SimpleDateFormat
	  		
	  6) MVC → Spring은 MVC만 존재
	  	- Java/HTML을 분리해서 사용
	  	- M : 자바로 코딩(Model)
	  	- V : HTML만 출력(View)
	  	- C : Model+View연결 → Controller
	  	 → Front(MVC)
	  	   vue → vuex
		   react → redux
		   
		자바 → VO, DAO, Manager, Service
		
		1. 화면디자인 : HTML/CSS
		2. 브라우저 제어 : 동적 JavaScript
		3. 오라클 제어후 데이터 전송 : Java
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1>Hello JSP!!</h1>
</body>
</html>