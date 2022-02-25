<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
    $(선택자) → 태그 → (객체모델:태그) → 객체: 태그명, 변수: 속성명
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	// 전체 색상 변경
	$('body').css("color","green")
	$('h1').css("color","red")
    $('#a').css("color","yellow")
    $('#b').css("color","blue")
    $('#c').css("color","lightgreen")
    $('.d').css("color","pink")
    $('div>h1').css("backgroundColor","yellow")
    $('div>span>h1').css("backgroundColor","cyan")
    $('#a,#b').css("backgroundColor","magenta")
    // 속성 선택자 // ^ → 시작하는 문자열
    $('a[href^=aaa]').css('color',"black").css('textDecoration','none')
    // * → 포함
    $('a[href*=ddd]').css('color',"green").css('textDecoration','')
    // $ → 끝문자열
    $('a[href$=ppp]').css('color',"orange")

})

</script>
</head>
<body>
  <h1 id="a">JQuery1</h1>
  <h1 id="b">JQuery2</h1>
  <h1 id="c">JQuery3</h1>
  <h1 class="d">JQuery4</h1>
  <h1 class="d">JQuery5</h1>
  <div>
    <h1>JQuery6</h1>
    <span>
      <h1>Jquery7</h1>
    </span>
  </div>
  <div>
    <a href="aaabbbccc">Hello Jquery8</a>
    <a href="bbbcccddd">Hello Jquery9</a>
    <a href="ccckkkppp">Hello Jquery10</a>
  </div>
</body>
</html>