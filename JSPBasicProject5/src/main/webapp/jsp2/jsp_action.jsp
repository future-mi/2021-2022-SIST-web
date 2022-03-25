<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
    <jsp:useBean id="" class="" scope=""> : 객체생성할때 사용되는 태그
      id=객체명
      class=클래스명(패키지명.클래스명)
      scope=사용범위
            page(default) : 한JSP안에서 사용 가능
            request : 사용자 요청시마다
            session : 프로그램 종료시까지 사용이 가능
            application : 전역(모든JSP에서 사용)
    <jsp:setProperty name="id명" property="" value="">
      name=객체명 <jsp:useBean id="">
      property="변수명" → setter
      property="name" → setName()
      property="*" → 객체가 가지고 있는 모든 setter
      → 사용자가 값을 전송할 때 
      변수 : id,pwd,name,sex,age
      전송 : id,name,sex,age → pwd는 null으로 초기화
      클래스 : 클래스 : null(String), 정수:0, 0L 실수:0.0F,0.0
              boolean : false
      value=직접 값을 주입
       
     <jsp:getProperty name="" property="*이 존재하지 않는다">
       
      읽기/쓰기를 할 때 <% %> → 태그를 이용해서 사용(jsp액션태그)
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>