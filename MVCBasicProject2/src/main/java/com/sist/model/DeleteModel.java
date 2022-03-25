package com.sist.model;

import javax.servlet.http.HttpServletRequest;
/*
 * 메인(1)
 * 회원관련(1) → 로그인처리/회원가입/회원수정/ID/Password
 * 커뮤니티(2) → 자유게시판(댓글) / 묻고답하기(계층형)
 * 목록(1) → 맛집,레시피,명소(여행) 
 * 상세보기(1)
 * 공지사항 
 * 예약(1), 장바구니(1), 추천(1) → 3/4
 */
public class DeleteModel implements Model{
	public String handlerRequest(HttpServletRequest request) {
		request.setAttribute("msg", "게시판 삭제");
		return "delete.jsp";
	}
}
