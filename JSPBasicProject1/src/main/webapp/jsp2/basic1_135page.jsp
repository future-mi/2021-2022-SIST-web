<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.sist.dao.*"%>
<%--
	JSP에서 사용하는 기본 제어문(p135~p144)
	if(조건문) {
		조건문이 true면 실행하는 문장 → JSP에서는 주로 HTML
	}
	<%
		if(조건문 {
	%>	
		HTML출력
	<%
		}
	%>
	
	- 선택조건문
	  	if(조건문) {
	  		조건문이 true일 때 처리 문장
	  	} else {
	  		조건문이 false일 때 처리 문장
	  	}
	형식)
		<%
			if(조건문) {
		%>
			조건문이 true일 때 HTML로 화면에 출력
		<%
			} else {
		%>
			조건문이 false일 때 HTML로 화면에 출력
		<% 
			}
		%>
	- 다중조건문
		if(조건문) {
		} else if(조건문) {
		} else if(조건문) {
		} else {
		}
	- 반복문
		while : 반복횟수가 지정이 없는 경우(무한루프)
				→ 서버, 데이터베이스
		for : 반복횟수가 지정된 경우
	- 선택문
		switch(정수/문자/문자열) {
			case 값1:
				처리문장
			case 값2:
				처리문장
			.....
			.....
			default: 해당사항이 없는 경우	
		}
	- 반복제어문
		break: 반복문을 종료할 때 사용
		continue: 특정부분을 제외 할 때 주로 사용
 --%>
 <%-- 1. 오라클로부터 데이터를 받아온다 --%>
 <%
 	FoodDAO dao=new FoodDAO();
 	// 오라클 연결 준비(객체생성)
 	List<CategoryVO> list=dao.categoryListData();
 	// 연결이 되었다면 해당 데이터를 가지고 온다
 	// list안에는 맛집 카테고리 데이터가 존재
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap" rel="stylesheet">
<style type="text/css">
*{
	font-family: 'Nanum Brush Script', cursive;
}
.container {
	margin-top: 50px;
}
.row_find {
	background-image: url('back.jpg');
	background-size: cover;
}
</style>
</head>
<body>
 <div class="container">
 <div class="row">
  <table class="table">
   <tr>
    <td class="text-center">
     <input type=text size=50 class="input-sm">
     <input type=button value="검색" class="btn btn-sm btn=danger">
     </td>
    </tr>
  </table>
 </div>
  <h1>믿고보는 맛집리스트</h1>
  <hr>
  <div class="row">
  	<%
  		for(int i=0;i<list.size();i++) {
  			if(i>=0 && i<12) {
  				CategoryVO vo=list.get(i);
  			// HTML로 출력	
  	%>
  		<div class="col-md-4">
    	<div class="thumbnail">
      		<a href="#">
       		 <img src="<%=vo.getPoster() %>" alt="Lights" style="width:100%">
        	<div class="caption">
          <p><%=vo.getTitle() %></p>
        </div>
      </a>
    </div>
   </div>
  	<%	
  			}
  		}
  	%>
  </div>
  <h1>지역별 인기맛집</h1>
  <hr>
  <div class="row">
   <%
        for(int i=12;i<18;i++){
            CategoryVO vo=list.get(i);
   %>
     <div class="col-md-4">
     <div class="thumbnail">
      <a href="#">
        <img src="<%=vo.getPoster() %>" alt="Lights" style="width:100%">
        <div class="caption">
          <p><%=vo.getTitle() %></p>
        </div>
      </a>
    </div>
    </div>
   <%
        }
   %>
  </div>
  <h1>메뉴별 인기맛집</h1>
  <hr>
  <div class="row">
   <%
   	    for(int i=18;i<30;i++){
   	    	CategoryVO vo=list.get(i);
   %>
     <div class="col-md-4">
     <div class="thumbnail">
      <a href="#">
        <img src="<%=vo.getPoster() %>" alt="Lights" style="width:100%">
        <div class="caption">
          <p><%=vo.getTitle() %></p>
        </div>
      </a>
    </div>
    </div>
   <%
   		}
   %>
  </div>
  </div>
</body>
</html>