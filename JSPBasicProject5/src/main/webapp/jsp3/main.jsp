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
   width: 960px;
   height: 760px;
   border: 1px solid black;
   
}
.row {
   width:930px;
   margin: 0px auto;
   height: 100px; 
   border: 1px solid red;
   clear: both;
}
h1{
    text-align: center;
}
.col-sm-2 {
    width: 180px; 
    height: 460px;
    border: 1px solid blue;
}
.col-sm-10 {
    width: 720px; 
    height: 460px;
    border: 1px solid green;    
}
</style>
</head>
<body>
  <div class="container">
    <div class="row">
      <jsp:include page="header.jsp"></jsp:include>
      <%--
            pagecontext.include("header.jsp")
            주의점 : 요청 → main.jsp로 전송한다
            → 포함하고있는 모든 JSP가 request를 공유 할 수 있다
            → 포함되어있는 JSP에서 단독으로 수행 → 해당 JSP만 화면에 보여진다
            → CSS/JavaScript → main에 설정(충돌이 없게)
            → 경로명
              header,nav,aside → main안에 include → main.jsp
       --%>
    </div>
    <div class="row">
      <jsp:include page="nav.jsp"></jsp:include>
    </div>
    <div class="col-sm-2">
      <jsp:include page="aside.jsp"></jsp:include>
    </div>
    <div class="col-sm-10">
      <jsp:include page="section.jsp"></jsp:include>
    </div>
    <div class="row">
      <jsp:include page="footer.jsp"></jsp:include>
    </div>
  </div>
</body>
</html>