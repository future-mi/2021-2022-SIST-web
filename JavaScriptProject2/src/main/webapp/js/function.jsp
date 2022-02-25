<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
    자바스크립트의 핵심 : function
    1. 자바
      - 변수 : 종류(지역, 멤버(인스턴스, 공유(static))), 스코프(사용범위)
      - 연산자 : 단항연산자, 이항연산자(산술, 비교, 논리, 대입)
      - 제어문 : 조건문(단일, 선택, 다중), 반복문(for(forEach), while), 반복제어문(break)
      - 배열(1차)
      - 클래스 : 구성요소(변수, 메소드, 생성자)
      - 객체지향 : 캡슐화(getter/setter), 재사용(상속,포함), 수정(오버라이딩), 추가(오버로딩)
      - 클래스종류 : 데이터관리(~VO), 데이터활용(~DAO, Manager), 인터페이스 
      - 예외처리 : 예외복구(try~catch), 예외회피(throws)
      - 라이브러리 : java.lang → Object, String, StringBuffer, Wrapper, Math 
                  java.util → StringTokenizer, Random, Date, Calendar
      - 컬렉션 / 제네릭스 : List(ArrayList, Vector), Map(HashMap), Set(HashSet)
      - IO(파일입출력) : File, FileInputStream, FileOutputStream, FileReader, FileWriter
    2. 오라클
      - DML : SELECT, INSERT, UPDATE, DELETE
      - DDL : CREATE, DROP, ALTER, TRUNCATE
      - TCL : COMMIT, ROLLBACK
    3. HTML/CSS : 태그, 속성, CSS(변경) → 내부 CSS, 인라인 CSS
    4. JSP
      - 지시자 : page, taglib, include
      - JSP사용법 : <% %>, <%! %>, <%= %>
      - 내장객체 : request, response, session, pageContext, application
      - jsp액션태그 : <jsp:include>
      - EL : ${}
                → request.setAttribute()
             ${requestScope.id} → <%=request.getAttribute("id") %>
                → session.setAttribute()
             ${sessionScope.id} → <%=session.getAttribute("id") %>
                → requestScope, sessionScope는 생략할 수있다
      - JSTL : core, fmt, fn
               <c:if>, <c:set>, <c:forEach>, <c:redirect>, <c:choose>
               <fmt:formateDate>, <fmt:formatNumber>
               fn → ${fn:substring()} → String 메소드
               
    5. MVC     
      - Model : 조립 → 요청을 받아서 요청 처리후에 데이터 전송
      - View : EL/JSTL → 데이터를 받아서 출력
      - Controller : Model/View를 연결시켜주는 역할
                   → 클래스로 찾기(조건문,Map)
                   → 메소드로 찾기(어노테이션) → 찾기
   
    6. JDBC 
      - Connection → PrepraredStatement → ResultSet
      - JSBC → DBCP → ORM(MyBatis → Spring)
      
    7. 자바스크립트 : 라이브러리(Jquery(Ajax), VueJS, ReactJS, NodeJS)
      1) 위치 
        - 파일에 설정 : 한개의 파일에서만 사용(내부 스크립트)
            <script type="text/javascript">
            변수선언 : 전역변수
            함수선언(매개변수) : 사용자요청(Front), 에러방지, 이벤트
            { 지역변수
            }
            변수 → 자동지정변수 : var, let, const(상수형변수 → function)
        - 파일을 만든 후 설정 : 여러개 파일에서 사용이 가능(외부 스크립트)
            <script src="파일"></script> → import
      2) 변수설정 : Jquery(Ajax), VueJS, ReactJS, NodeJS(서버)
                → 라이브러리(변수, 연산자, 제어문, 메소드)
      3) 연산자 / 제어문 : 함수 → 이벤트에서 주로 처리(HTML → 태그이용)
        - 단항연산자
        - 이항연산자
        - 삼항연산자
      4) 함수(316page)
        - 익명의 함수 : function(){}
        - 선언적 함수 : function func_name(){}
      5) 자동호출 : 자바스크립트에서 지원하는 함수
        - window.onload : main (callback)
        - callback : 시스템에 의해서 자동 호출 
        - servlet : doGet/doPost/service
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container {
    margin-top: 50px;
}
.row {
    margin: 0px auto;
    width: 350px;
}
h1 { 
    text-align: center;
}
</style>
<script type="text/javascript">
// 함수의 첫번째 유형(매개변수x, 리턴형x)
function calc() {
    let kor=document.querySelector("#kor").value;
    let eng=document.querySelector("#eng").value;
    let math=document.querySelector("#math").value;

    let total=Number(kor)+Number(eng)+Number(math);
    document.querySelector("#total").value=total;
    let avg=total/3;
    document.querySelector("#avg").value=Math.round(avg);
}
</script>
</head>
<body>
 <div class="container">
   <h1>성적계산</h1>
   <div class="row">
     <table class="table">
       <tr>
         <td class="text-center" width="30%">국어</td>
         <td width="70%">
           <input type="text" id=kor size=15 class="input-sm">
         </td>
       </tr>
       <tr>
         <td class="text-center" width="30%">영어</td>
         <td width="70%">
           <input type="text" id=eng size=15 class="input-sm">
         </td>
       </tr>       
       <tr>
         <td class="text-center" width="30%">수학</td>
         <td width="70%">
           <input type="text" id=math size=15 class="input-sm">
         </td>
       </tr>       
       <tr>
         <td class="text-center" width="30%">총점</td>
         <td width="70%">
           <input type="text" id=total size=15 class="input-sm">
         </td>
       </tr>       
       <tr>
         <td class="text-center" width="30%">평균</td>
         <td width="70%">
           <input type="text" id=avg size=15 class="input-sm">
         </td>
       </tr>
       <tr>
         <td colspan="2" class="text-center">
           <input type="button" value="계산" class="btn btn-sm btn-primary"
           onclick="calc()">        
           <!-- 
                자바스크립트 함수의 호출 → 이벤트
                <select> : onchange="처리함수호출"
                <button><img><a> : onclick="처리함수호출"
                모든태그에 적용 : onmouseover, onmouseout
                입력창 : onkeyup, onkeydown
            -->   
         </td>
       </tr>       
     </table>
   </div>
 </div>
</body>
</html>