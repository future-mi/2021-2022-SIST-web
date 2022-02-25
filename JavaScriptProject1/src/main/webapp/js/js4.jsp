<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
    비교연산자, 논리연산자, 대입연산자
    제어문, 함수, 이벤트처리(태그제어), 내장객체(window,document,form,location,history)
    화면제어 → DOMScript(라이브러리: Jquery(Ajax))

 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
// 자바스크립트는 오류를 브라우저나 도스창에 출력하지 않는다(단 브라우저에 흰색으로 출력)
// 디버깅을 사용한다 : console.log
window.onload=function(){
	let a=10
	let b=5
    console.log("a===b "+(a===b)) // false
    console.log("a!=b "+(a!=b))  // true
    console.log("a<b "+(a<b))  // false
    console.log("a>b "+(a>b))  // true
    console.log("a<=b "+(a<=b)) //false
    console.log("a>=b "+(a>=b)) // true
    
    let c="Hello"
    let d="JavaScript"
    console.log("c===d "+(c===d)) // false
    console.log("c!=d "+(c!=d))  // true
    console.log("c<d "+(c<d))  // true
    console.log("c>d "+(c>d))  // false
    console.log("c<=d "+(c<=d)) //true
    console.log("c>=d "+(c>=d)) // false
    
    
    // 논리연산자(&&, ||)
    /*
        && : 직렬연산자(조건 2개가 true 일때 true)
        || : 병렬연산자(조건 2개중에 한개이상 true면 true)        
    */
    let i=(6>7) && (6===7)
    console.log("i="+i)
    i=(6<7) || (6===7) 
    console.log("i="+i)
    
    // 대입연산자 =, +=, -=
    i=10;
    i+=20;
    i-=20;
}
</script>
</head>
<body>

</body>
</html>