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
    margin: 0px auto;
    width: 700px;
}
h1 { 
    text-align: center;
}
</style>
<script type="text/javascript">
function postfind(){
	window.open("post.jsp","postfind","width=450,height=350,scrollbars=yes")	 
}


</script>
</head>
<body>
  <div class="container">
    <h1>회원가입</h1>
    <div class="row">
    <form name="frm">
      <table class="table">
        <tr>
          <td width="15%" class="text-center">우편번호</td>
          <td width="85%">
            <input type="text" size=7 class="input-sm" readonly name="post">
            <input type="button" class="btn btn-sm btn-danger" value="우편번호검색"
            onclick="postfind()"
            >
          </td>
        </tr>
        <tr>
          <td width="15%" class="text-center">주소</td>
          <td width="85%">
            <input type="text" size=45 class="input-sm" readonly name="addr">
          </td>
        </tr>        
        
      </table>
    </form> 
    </div>
  </div>
</body>
</html>