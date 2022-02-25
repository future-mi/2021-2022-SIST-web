<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
    [ 이항연산자 ]
    1. 산술연산자 : +, -, *, /, %
    2. 비교연산자 : ==(=== 권장), !=, <, >, <=, >= → 결과값 boolean
    3. 논리연산자 : &&, ||
    4. 대입연산자 : =, +=, -=
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function() {
	// 산술연산자
	let a=5;
	let b=2;
	console.log("a+b="+(a+b))
	console.log("a-b="+(a-b))	    		
	console.log("a*b="+(a*b)) // a*b=10       
	console.log("a/b="+(a/b)) // a/b=2.5  
	console.log("a%b="+(a%b)) // a%b=1     
	
	let c="10"
	let d="20"
    console.log("c+d="+(c+d)) // 1020
    // 숫자형으로 변환후에 연산 처리
    console.log("c-d="+(c-d)) // -10
    console.log("c*d="+(c*d)) // 200
    console.log("c/d="+(c/d)) // 0.5
    console.log("c%d="+(c%d)) // 10
	
	let e="10"
	let f=20
	console.log("e+f="+(e+f)) // 문자열변환
	
	let m='A'
	let n=1
	console.log("m*n="+(m*n)) // m*n=NaN
	
}
</script>
</head>
<body>

</body>
</html>