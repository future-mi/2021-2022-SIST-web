<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.model.*"%>
<jsp:useBean id="model" class="com.sist.model.DataBoardModel"/>
<%
    // 분리 
    // JSP → View(HTML/CSS)
    // Model(자바)
    model.databoardReplyOk(request, response);
%>