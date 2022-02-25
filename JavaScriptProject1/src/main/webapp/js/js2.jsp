<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
    [ 연산자 ]
    1. 단항연산자 (++, --, !)
    2. 형변환 연산자
        Number, String, Boolean    
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
// main → 팝업 / window.open → window(브라우저)
window.onload=function(){
	let a=10;
	let b=a++;
	console.log("a="+a+", b="+b); // a=11, b=10

	a=10;
	b=++a;
	console.log("a="+a+", b="+b); // a=11, b=11
	
	let c=false;
	c=!c;
	console.log("c="+c); // true
	
	// 주의점
	let d=1;
	d=!d;
	console.log("d="+d); // false
	// 비교연산자, 부정연산자, 논리연산자 → 결과값 (Boolean → true/false)
	// 모든 숫자 → 0, 0.0이 아닌 수는 true
	// 형변환 연산자
	let e="10"
	console.log("e="+typeof e)
	console.log("e="+typeof Number(e)) // 형변환
	console.log("e="+typeof parseInt(e))
	console.log("e="+typeof Boolean(e)+","+e+","+Boolean(e)) // e=boolean,10,true
	
	let m="10"
	let n="20"
    console.log("m+n="+(m+n)) // m+n=1020
    console.log("m+n="+(Number(m)+Number(n))) // m+n=30
    
    // 숫자 → 문자열, Boolean로 변경이 가능
    // 변수에는 데이터형을 사용하지 않는다 → 확인시 : typeof
    // 모든 숫자는 true/false로 이용이 가능(0, 0.0이 아닌 수는 true)
}
</script>
</head>
<body>

</body>
</html>