<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 
   위치 : eq, odd, even, nth-child → 가상 선택자
 -->
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function() {
	$('table>thread>tr').css("background","#CCCCFF")
	$('table>tbody>tr:nth-child(2n)').css("background","rgb(1,117,118,0.7)")
	//
})
</script>
</head>
<body>
  <h1>회원 목록</h1>
  <table border="1" bordercolor=black width=350>
    <thead>
    <tr>
      <td>번호</td>
      <td>이름</td>
      <td>성별</td>
    </tr>
    </thead>
    <tbody>
    <tr>
      <td>1</td>
      <td>홍길동</td>
      <td>남자</td>
    </tr>
    <tr>
      <td>1</td>
      <td>홍길동</td>
      <td>남자</td>
    </tr>
    <tr>
      <td>1</td>
      <td>홍길동</td>
      <td>남자</td>
    </tr>
    <tr>
      <td>1</td>
      <td>홍길동</td>
      <td>남자</td>
    </tr>
    <tr>
      <td>1</td>
      <td>홍길동</td>
      <td>남자</td>
    </tr>
    <tr>
      <td>1</td>
      <td>홍길동</td>
      <td>남자</td>
    </tr>
    <tr>
      <td>1</td>
      <td>홍길동</td>
      <td>남자</td>
    </tr>
    <tr>
      <td>1</td>
      <td>홍길동</td>
      <td>남자</td>
    </tr>
    </tbody>
  </table>
</body>
</html>