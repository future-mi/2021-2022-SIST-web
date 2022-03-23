package com.sist.dao;
/*
 *	공통모듈 : 데이터베이스연결, 네트워크연결, SQL
 *	데이터만관리 : ~VO(Spring), ~DTO(Mybatis), ~Bean(JSP)
 *  관련된 데이터를 모아서 브라우저로 전송
 *  
 *  실제 기능을 수행하는 클래스
 *  1) 데이터 베이스 연결 → DAO
 *  2) 외부에서 데이터 읽기, 파일 → ~Manager
 *  3) 웹에서 데이터 읽기 → ~Service
 */
public class CategoryVO {
	private int cno;
	private String title;
	private String subject;
	private String poster;
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	
	
}
