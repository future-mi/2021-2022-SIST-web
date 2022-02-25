<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
    반복문
    do~while : 사용빈도가 거의 없다(후조건 → 무조건 한번을 수행)
    while : 무한루프(반복횟수가 없는 경우)
    for : 웹사이트 제작 → 반복 횟수가 있다
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function(){
	let i=1;
	document.write("<h1>do~while</h1>")
	do {
		document.write("i="+i+"<br>")
		i++;
	} while(i<=10);
	document.write("<hr>")
	i=1;
	document.write("<h1>while</h1>")
    while(i<=10) {
    	document.write("i="+i+"<br>")
        i++;
	}
	i=1;
    document.write("<hr>")
    document.write("<h1>for</h1>")
    for(i=1;i<=10;i++) {
		document.write("i="+i+"<br>")
	}
	document.write("<hr>")
    document.write("<h1>for2=continue</h1>")
	for(i=1;i<=10;i++) {
		if(i===5) {
			  continue; // 제외 (5를 제외하고 나머지 수행)
		}
	}
	document.write("i="+i+"<br>")
	
	document.write("<hr>")
    document.write("<h1>for2=break</h1>")
    for(i=1;i<=10;i++) {
    	if(i===5) {
    		break; // 반복문을 중단
    	}
    	document.write("i="+i+"<br>")
    }	
}
</script>
</head>
<body>

</body>
</html>