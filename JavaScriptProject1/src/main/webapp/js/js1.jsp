<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
    [ 역할 ]
    - 브라우저에서 기능처리(동작) : 자바스크립트
    - 브라우저에 화면출력(정적) : HTML/CSS
    - 데이터를 관리 : 자바(Model)
    - 데이터를 저장 : 오라클
    
    [ 자바스크립트 ]
    1. 사용법
      1) 내부스크립트(한개 파일에서만 사용)
        - <script></script → <head> 주로사용, 지정이되어 있지 않다
      2) 외부스크립트(여러개 파일에 적용)
        - .js파일을 만들어 처리
        - import를 사용한다 : <script src="파일명|원격(http)">  
      3) 인라인 스크립트(태그한개만 제어)
        - <a href="javascript:함수호출(라이브러리함수, 사용자정의함수)">
        
    2. 버전
      1) ES5.0 → var(자동지정변수) 
                 단점 : 스코프(사용범위)가 명확하지 않다
            
      2) ES6.0 → let(스코프가 명확하다 → {}을 벗어나면 사용이 불가능)
                 const : 상수형 변수 → final
                 람다식 : → 함수포인터
                 lest display=function(){}
                 let display=() → {}
                 → 는 생략(function,return)
                 같다(==, === 권장)
      3) 로직이 없다(프로그램형식) : 쓰레드, 저장, 소켓(채팅,게임)
      
    3. 자바스크립트의 문법
      1) 변수선언(데이터를 사용하는 것이 아니고, 자동 지정변수 사용(var,let))
        - let i=0      → i:int       
        - let i=10.5   → i:double
        - let i='A'    → i:String
        - let i="ABC"  → i:String
        - let i=[]     → i:Array
                         ["aaa", 10, "bbb", 10.5] → 다른 데이터형을 모아서 처리
        - let i={}     → i:Pbject → 자바스크립트의 객체 표현법(JSON)
        - let i=function() → i:function
      2) 연산자 처리
        (1) 단항연산자(++, --, !) → 형변환(X)
            - Number("10.5") → 10.5, Number("10") → 10
            - String(10) → "10"
            - Boolean(1) → true, Boolean(0) → false
        (2) 산술연산자(+, -, /, *, %)
            - "10"+"10" → 1010(문자열결합)
            - "10"*"10" → 100
        (3) 비교연산자(===, !=, <, >, <=, >=) 결과는 boolean
        (4) 논리연산자(&&, ||)
        (5) 대입연산자(=, +=, -=)    
      3) 제어문 처리
        (1) 조건문
            - 단일조건문(if)
            - 선택조건문(if~else)
            - 다중조건문(if ~ else if ~ else if ~ else)
        (2) 선택문
            - swich ~ case
        (3) 반복문
            - while
            - do ~ while
            - for → for of, for in
            - forEach
            - map
        (4) 반복제어문
            - break, continue
      4) 함수 : 프로시저형식(리턴형을 사용하지 않는다)
            - function func_name() {
              }
            - function func_name() {
                 return 값
              }  
      5) 클래스(객체지향언어) 
            - class Sawon {
              }
              
      6) 화면 출력
        - alret()
        - document.write()
        - 태그.innerHTML
        - console.log()   
      7) 변수선언
        - 지역변수
            function func_name() {
                let i=10;
            } // 함수 안에서만 사용이 가능
        - 전역변수
            let i=10;
            function func_name() {
                // i변수
            }
        - 데이터형 
            let i=10
            let i=10.5
            let i='A' → let i='AAA' → let i="AAA" → String
            let i=[값,....] 배열 
            let i={키:값,키:값....} 객체 (JSON) → VO
            let i=[{},{},{},{},{}...] → List
                → 자바, 자바스크립트 호환 
             ~VO → {}
             List → [{},{},{}...]    
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function(){
	// 자바의 main 역할 → $(function(){})
	// componentDidMount() : react / mounted() : vue
	let a=10;
	let b=10.5;
	let c='ABC';
	let d="ABD"  // ; 생략가능
	let e=[1,2,3,4,5,"홍길동"];
	let f={name:"홍길동",sex:"남자"}
	// 자바스크립트(단순한 언어) → 대소문자를 구분한다
	console.log(a);
    console.log(b);
    console.log(c);
    console.log(d);
    console.log(e);
    console.log(f);
    document.write("a="+a+"<br>")
    document.write("b="+b+"<br>")
    document.write("c="+c+"<br>")
    document.write("d="+d+"<br>")
    document.write("e="+e+"<br>")
    document.write("f="+f+"<br>")
    
    document.write("<hr>");
    // typeof → 변수의 데이터형
    /*
        1. number : 정수, 실수
        2. string : 문자(''), 문자열("")
        3. object : 배열([]), 객체({})
        4. boolean : true/false
    */
    document.write("a="+typeof a+"<br>")
    document.write("b="+typeof b+"<br>")
    document.write("c="+typeof c+"<br>")
    document.write("d="+typeof d+"<br>")
    document.write("e="+typeof e+"<br>")
    document.write("f="+typeof f+"<br>")
    document.write("g="+typeof true+"<br>")
    
    let i
    document.write("i="+typeof i+"<br>") // undefined → 값이 없는 상태
    document.write("j="+typeof j+"<br>")
    
    let k=''
   	document.write("k="+typeof k+"<br>")
    
}
</script>
</head>
<body>

</body>
</html>