<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.sist.dao.*"%>
<%-- 목록출력 --%>
<%
    // 자바코딩 → JSP(Java+HTML)
    // JSP → HTML코드 안에 Java를 첨부
    // Servlet → Java코드 안에 HTML을 첨부
    // MV → 자바,HTML분리 사용 → 메소드 호출
    // MVC → 자바,HTML을 완전분리 → Controller(데이터만 전송)
    // 1. 자바를 이용해서 오라클에 저장된 데이터 읽기(HTML은 오라클 연결 기능이없다)
    // 2. 사용자가 요청한 값을 받는다
    // 페이지를 받는다
    String strPage=request.getParameter("page");
    // 실행과 동시에 페이지를 지정할 수 없다 → default설정
    /*
        String strPage=request.getParameter("page");
        list.jsp         → stPage=null
        		if(starPage==null)
        list.jsp?page=   → strPage="" (공백)
        	    if(strPage="") → X
        	    if(strPage.equals("")) → O
        list.jsp?page=1  → strPage="1"
        	    
    */
    if(strPage==null) 
    	strPage="1";
    int curpage=Integer.parseInt(strPage);
    // 오라클로부터 페이지에 해당되는 데이터를 읽어온다
    BooksDAO dao=new BooksDAO();
    List<BooksVO> list=dao.booksListData(curpage);
    // 글자 수 처리
    for(BooksVO vo:list) {
    	String title=vo.getTitle();
    	if(title.length()>12) {
    		title=title.substring(0,12)+"...";
    		vo.setTitle(title);
    	} else {
    		vo.setTitle(title);
    	}
    }
    // 페이지나누기
    int totalpage=dao.booksTotalPage();
    // 블록별 처리
    // < [1][2][3][4][5] > < [6][7][8][9][10] >
    int BLOCK=5;
    int startPage=((curpage-1)/BLOCK*BLOCK)+1;
    int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
	if(endPage>totalpage)
		endPage=totalpage;
	
	// 쿠키데이터 읽기
	// 1. 쿠키전체
	List<BooksVO> cList=new ArrayList<BooksVO>();
	Cookie[] cookies=request.getCookies();
	// 사이트 주소
	if(cookies!=null) {    //쿠키가 존재하면
		for(int i=cookies.length-1;i>=0;i--) {
			// 최신방문부터 출력한다 → getName():키명 getValue():값
			if(cookies[i].getName().startsWith("m")) {
				String no=cookies[i].getValue();
				BooksVO vo=dao.booksDetailData(Integer.parseInt(no));
				cList.add(vo);
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- 
    서블릿은 설정 → 실행순서(생명주기)
    1. 페이징 기법
    2. Cookie 설정
    3. Session 설정 → 댓글(로그인처리) id,name → 댓글
 -->
<style type="text/css">
.container {
    margin-top: 50px;
    
}
.row {
    /* 크기 결정 */
    margin: 0px auto;
    width: 960px;
    
}
</style>
</head>
  <div class="container">
    <div class="row">
     <%-- 책 포스터 출력 --%>
     <%
        for(BooksVO vo:list) {
     %>
           <div class="col-md-3">
            <div class="thumbnail">
              <a href="detail_before.jsp?no=<%=vo.getNo()%>">
                <img src="<%=vo.getPoster() %>" alt="Lights" style="width:220px;height: 300px;">
                <div class="caption">
                  <p><%=vo.getTitle() %></p>
                </div>
              </a>
            </div>
          </div>
     <%
        }
     %>
    </div>
    <div class="row">
      <%-- 페이지 출력 --%>
       <div class="text-center">
        <ul class="pagination">
          <%
             // 1 6 11 16 ... startPage 
             // 5 10 15 20 ... endPage
             if(startPage>1) {
          %>
               <li><a href="list.jsp?page=<%=startPage-1%>">&lt;</a></li>     
          <%
             }
          %>
          <%
             for(int i=startPage;i<=endPage;i++) {
               String css="";
               if(i==curpage) {
                   css="class=active";
               } else {
                   css="";
               }
          %>
               <li <%=css %>><a href="list.jsp?page=<%=i%>"><%=i %></a></li>
          <%
             }
          %>
          <%
              if(endPage<totalpage) {
          %>
                 <li><a href="list.jsp?page=<%=endPage+1%>">&gt;</a></li>
          <%
              }
          %>
        </ul>
       </div>
    </div>
    <div class="row">
      <%-- 최신 본 책 목록 (cookie) --%>
      <h3>최신방문 책 목록</h3>
      <table class="table">
        <tr>
          <td>
            <a href="cookie_all.jsp" class="btn btn-sm btn-success">더보기</a>
            <a href="cookie_delete.jsp" class="btn btn-sm btn-success">삭제</a>
          </td>
        </tr>
      </table>
      <hr>
      <div>
       <%
            int k=0;
            for(BooksVO vo:cList) {
            	if(k>7) break;
       %>
            <td>
            <a href="detail.jsp?no=<%=vo.getNo() %>"><img src="<%=vo.getPoster() %>"
                alt="<%=vo.getTitle() %>" width=120px height="150px;"></a></td>
       <%
                k++;
           }
       %>
         
      </div>
    </div>
  </div>
</body>
</html>
