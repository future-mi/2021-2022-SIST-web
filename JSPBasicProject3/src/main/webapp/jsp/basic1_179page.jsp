<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container {
	margin-top: 50px;
}
.row {
	width: 960px;
	margin: 0px auto; 
}
</style>
</head>
<body>
  <div class="contaniner">
   <h1>내장객체(response)</h1>
   <div class="row">
    <table class="table">
   	 <tr>
   	   <td width=15%>클래스</td>
   	   <td width=85%>HttpSevletResponse</td>
   	 </tr>
   	 <tr>
   	   <td width=15%>기능/역할</td>
   	   <td width=85%>
   	     <ul>
   	       <li>응답정보 : contentType:HTML(text/html)/XML(text/xml)/JSON(text/plain)</li>
   	       <li>헤더정보: 실제 데이터를 보내기전에 먼저보내는 데이터가 있는 경우(다운로드창)</li>
   	       <li>서버파일이동: 리다이렉트</li>
   	     </ul>
   	   </td>
   	 </tr>
     <tr>
   	   <td width=15%>주요메소드</td>
   	   <td width=85%>
   	     <ul>
   	       <li>응답정보: setContentType("text/html;charset=UTF-8")</li>
   	       <li>헤더정보: setHeader("Content-Disposition","attachment;filename=..")</li>
   	       <li>이동정보: sendRedirect("파일이동")</li>
   	       <li>sendRedirect: GET방식,request를 초기화</li>
   	       <li>파일을 이동할때마다 request는 초기화된다</li>
   	     </ul>
   	   </td>
   	 </tr>
    </table>
   </div>
  </div>
</body>
</html>