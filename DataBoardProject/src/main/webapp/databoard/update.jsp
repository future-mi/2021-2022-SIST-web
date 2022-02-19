<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.model.*"%>
<jsp:useBean id="model" class="com.sist.model.DataBoardModel"/>
<%
    model.databoardUpdate(request);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container{
   margin-top: 50px;
}
.row {
   width:800px;
   margin: 0px auto; 
}
h1{
    text-align: center;
}
.table td {
    font-size: 9pt;
}
</style>
</head>
<body>
  <div class="container">
    <h1>수정하기</h1>
    <div class="row">
    <form method="post" action="update_ok.jsp">
      <table class="table">
        <tr>
          <th width=15% class="text-right success">이름</th>
          <td width=85%>
            <input type=text name=name size=15 class="input-sm"
            value="${vo.name}">
            <input type="hidden" name=no value="${no}">
            <input type="hidden" name=page value="${page}">
          </td>
        </tr>
        <tr>
          <th width=15% class="text-right success">제목</th>
          <td width=85%>
            <input type=text name=subject size=50 class="input-sm"
            value="${vo.subject}">
          </td>
        </tr>
        <tr>
          <th width=15% class="text-right success">내용</th>
          <td width=85%>
            <textarea rows="8" cols="55" name=content>${vo.content}</textarea>
          </td>
        </tr>  
        <tr>                    
        <tr>
          <th width=15% class="text-right success">비밀번호</th>
          <td width=85%>
            <input type=password name=pwd size=10 class="input-sm">
          </td>
        </tr>
        <tr>
          <td colspan="2" class="text-center">
          <button class="btn btn-sm btn-danger">수정하기</button>
          <input type=button value="취소" class="btn btn-sm btn-warning"
                 onclick="javascript:history.back()">  
          </td>
        </tr>        
      </table>
      </form>
    </div>
  </div>
</body>
</html>