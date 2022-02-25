package com.sist.dao;
import java.util.*;
import java.sql.*;
public class SeoulDAO {
	private Connection conn;
	private PreparedStatement ps;
	private final String URL="jdbc:oracle:thin:@localhost:1521:XE";
	
	// 드라이버등록
	public SeoulDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception ex) {}
	}

	// 연결
	public void getConnection() {			
		try {
			conn=DriverManager.getConnection(URL,"hr","happy");
		} catch (Exception ex) {}
		
	}

	// 닫기
	public void disConnection() {
		try {
			if(ps!=null) ps.close();
			if(conn!=null) conn.close();
		} catch (Exception ex) {}
	}

	// 기능설정
	public List<SeoulLocationVO> locationAllData(){
		List<SeoulLocationVO> list=new ArrayList<SeoulLocationVO>();
		try {
			getConnection();
			String sql="SELECT no,title,poster,msg,address "
					  +"FROM seoul_location ";
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				SeoulLocationVO vo=new SeoulLocationVO();
				vo.setNo(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setPoster(rs.getString(3));
				vo.setMsg(rs.getString(4));
				vo.setAddress(rs.getString(5));
				list.add(vo);
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
