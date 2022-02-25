<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
    1. 자바 SawonVO → JSON
    2. 자바 List → Array
    
    323page(객체 → 배열[],객체{})
    
    1) Array배열
        - push() : 배열의 값을 추가
        - pop() : 배열의 마지막 값을 제거
        - slice() : 원하는 위치까지 잘라서 새로운 배열을 만든다
        - indexof() : 데이터의 취지 확인
        - find() : 찾기
        - delete() : 배열을 완전 삭제
        - length() : 저장갯수
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function(){
	// 배열선언
	let names=[
		  {name:"홍길동"},
		  {name:"심청이"},
		  {name:"이순신"},
		  {name:"박문수"},
		  {name:"춘향이"}
		]
	// 배열출력
	console.log(names);
	// 배열의 크기
	console.log("인원수:"+names.length)
	// 인원추가
	names.push({name:"김두한"});
	// 추가된 데이터 출력
	console.log(names);
    // 배열제거
    names.pop();
    console.log(names)
    names.delete;
    console.log("인원확인: "+names.length)
}

</script>
</head>
<body>

</body>
</html>