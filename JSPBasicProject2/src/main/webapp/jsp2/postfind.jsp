<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.sist.dao.*"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	String dong=request.getParameter("dong");
	
	// 1) <input type=text name="dong">
	// 2) <a href="postfind.jsp?dong=서초">
	ZipcodeDAO dao=new ZipcodeDAO();
	List<ZipcodeVO> list=null;
	if(dong!=null){
		list=dao.zipcodeListData(dong);
	}
%>    
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
	width: 800px;
	margin: 0px auto; 
}
h1 {
	text-align: center;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
    $('.btn').click(function(){
        let dong=$('.input-sm').val();
        if(dong.trim()=="") {
            $('.input-sm').focus();
            return;
        }
        $('form').submit();
    })
})
</script>
</head>
<body>
  <div class="container">
   <h1>우편번호 찾기(request)</h1>
   <div class="row">
    <table class="table">
     <tr>
      <td>
        <%-- 데이터 전송 (자신의 JSP, 다른 JSP → AJAX) --%>
        <form method=post action="postfind.jsp">
         입력:<input type=text size=15 class="input-sm" name=dong>
         <input type=button class="btn btn-sm btn-primary" value=검색>
        </form>
      </td>
     </tr>
    </table>
    <%
       if(list!=null) {
    %>
	    <table class="table">
	     <tr class="success">
	       <th class="text-center">우편번호</th>
	       <th class="text-center">주소</th>
	     </tr>
	     <%
	         for(ZipcodeVO vo:list) {
	     %>
	            <tr>
	             <td class="text-center"><%=vo.getZipcode() %></td>
	             <td><%=vo.getAddress() %></td>
	            </tr>
	     <%
	         }
	     %>
	    </table>
	 <%
      	}
	 %>
   </div>
  </div>
</body>
</html>