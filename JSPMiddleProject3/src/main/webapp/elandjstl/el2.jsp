<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>산술연산자(+,-,*,/,%)</h3>
	2+3=${2+3}
	<br> null+10=${null+10 }
	<sub>null은 EL에서 0으로 취급</sub>
<!--<br> "10"+10=${"10"+10 } -->    
	<sub>"10"은 문자열 결합이 아니고 정수형으로 변경 후 연산</sub>
	<br>
	<!-- >" 10"+10=${" 10"+10} → 에러 -->
	"admin"+10=${"admin"+=10 }
	<sub>문자열결합연산자 += 이다</sub>
<!--<br> 10/3=${10/3 }, ${10 div 3 }  -->  
	<br> 10%3=${10%3 }, ${10 mod 3 }
	<br>
	<h3>비교연산자(숫자, 문자비교 가능 → true/false)</h3>
	10==20=${10==20 },${10 eq 20 }
<!--<br> 10!=20=${10!=20 },${10 ne 20 }  -->   
<!--<br> 10<20 = ${10 < 20 },${10 lt 20 }  --> 
    <br> 10>20 = ${10 > 20 },${10 gt 20 }
<!-- <br> 10<=20 = ${10 <= 20 },${10 le 20 }  -->
    <br> 10>=20 = ${10 >=20 },${10 ge 20 }
</body>
</html>