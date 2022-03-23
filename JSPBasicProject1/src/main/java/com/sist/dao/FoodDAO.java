package com.sist.dao;
import java.util.*;
import java.sql.*;

public class FoodDAO {
	private Connection conn;
	private PreparedStatement ps;
	private final String URL="jdbc:oracle:thin:@localhost:1521:XE";
	// 드라이버 등록
	public FoodDAO()
	{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception ex) {}
}
	// 오라클 연결
	public void getConnection() {			
		try {
			conn=DriverManager.getConnection(URL,"hr","happy");
		} catch (Exception ex) {}
		
}
	// 오라클 닫기
	public void disConnection() {
		try {
			if(ps!=null) ps.close();
			if(conn!=null) conn.close();
		} catch (Exception ex) {}
	}
	
	// 기능
	// 1. 카테고리 읽기
	public List<CategoryVO> categoryListData(){
		List<CategoryVO> list=new ArrayList<CategoryVO>();
		try {
			// 1. 오라클 연결
			getConnection();
			// 2. SQL문장 전송
			String sql="SELECT cno,title,subject,poster "
						+"FROM category "
						+"ORDER BY cno ASC";
			ps=conn.prepareStatement(sql);
			// 3. SQL문장 실행 요청 → 실행된 데이터 받기
			ResultSet rs=ps.executeQuery();
			// 4. 받은 데이터를 List에 담아준다
			// 5. 담아둔 데이터를 브라우저로 전송
			while(rs.next()) {
				CategoryVO vo=new CategoryVO();
				vo.setCno(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setSubject(rs.getString(3));
				vo.setPoster(rs.getString(4));
			}
			rs.close();
			
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			disConnection();
		}
		return list;
	}
}
