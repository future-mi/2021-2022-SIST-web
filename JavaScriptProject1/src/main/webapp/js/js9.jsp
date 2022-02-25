<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
    let, var, const(상수형 변수) → 태그를 가지고 올때, 배열
    1. 숫자형, 문자형, 논리형 → 기본데이터형
        - number, string, boolean, underfined, NaN, null
    2. 사용자 정의 데이터형
        - Array, Object
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function() {
	/*
	let a=10;
	console.log("a="+a);
	a=10.5
	console.log("a="+a);
	a="admin"
    console.log("a="+a);
    a=[1,2,3,4,5,"홍길동","남자"]
    console.log("a="+a);
    */
    let names=["홍길동","박문수","심청이","이순신","김두한"];
    let sexs=["남자","남자","여자","남자","남자"];
    // for문 출력
    document.write("<hr>")
    document.write("===== 일반 for 이용 배열 데이터 출력 =====<br>")
    for(let i=0;i<names.length;i++) {
    	document.write(names[i]+"&nbsp;")
    }
    
    // for of → 배열에 실제 데이터값을 한개씩 받아서 출력
    document.write("<hr>")
    document.write("===== for of 이용 배열 데이터 출력 =====<br>")
    for(let name of names) {
    	document.write(name+"&nbsp;")
    }
   
    document.write("<hr>")
    document.write("===== for in 이용 배열 데이터 출력 =====<br>")
    // 배열의 인덱스 번호 
    for(let i in names) {   // 0,1,2
        document.write(names[i]+"&nbsp;")
    })
    
    document.write("<hr>")
    document.write("===== forEach 이용 배열 데이터 출력(1) =====<br>")
    // 배열명.forEach(function(name){})
    // for(변수:배열)
    names.forEach(function(name) {
    	document.write(name+"&nbsp;")
    })
    
    document.write("<hr>")
    // 가장 많다 → function, return 생략(화살표 함수)
    document.write("===== forEach 이용 배열 데이터 출력(2) =====<br>")
    names.forEach((name)=>{
    	document.write(name+"&nbsp;")
    }
    
    document.write("<hr>")
    document.write("==== map 이용 배열 데이터 출력(1)====<br>")
    // 배열명.map(function(name){}, 배열명.map((name)=>{})
    names.map(function(name){
    	document.write(name+"&nbsp;")
    })
    
    document.write("<hr>")
    document.write("==== map 이용 배열 데이터 출력(2)====<br>")
    // 배열명.map(function(name){}, 배열명.map((name)=>{})
    names.map((name)=>{
    	document.write(name+"&nbsp;")
    })
}
</script>
</head>
<body>

</body>
</html>