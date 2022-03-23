package com.sist.dao;
// 10장, 11장
import java.util.*;
import java.sql.*;

public class ZipcodeDAO {
	  private Connection conn;
	  private PreparedStatement ps;
	  private final String URL="jdbc:oracle:thin:@localhost:1521:XE";
	
	  // 1.드라이버 등록
	  public void zipcodeDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException cf) {
			System.out.println(cf.getMessage());
		}
	  }
	  // 2. 오라클 연결
	  public void getConnection() {			
		try {
			conn=DriverManager.getConnection(URL,"hr","happy");
		} catch (Exception ex) {}
				
	  }
	  // 3. 오라클 해제
	  public void disConnection() {
		try {
			if(ps!=null) ps.close();
			if(conn!=null) conn.close();
		} catch (Exception ex) {}
	  }
	  
	  // 4. 각 테이블마다 기능처리(CRUD)
	  public List<ZipcodeVO> zipcodeListData(String dong){
		  List<ZipcodeVO> list=new ArrayList<ZipcodeVO>();
		  try {
			  // 1. 연결
			  getConnection();
			  // 2. SQL문장 제작
			  String sql="SELECT zipcode,sido,gugun,dong, "
					     +"NVL(bunji,' ') "
					     +"FROM zipcode "
					     +"WHERE dong LIKE '%'||?||'%'";
			  // 3. SQL문장 전송
			  ps=conn.prepareStatement(sql);
			  // 4. ?에 값을 채운다
			  ps.setString(1, dong);
			  // 5. 실행요청
			  ResultSet rs=ps.executeQuery();
			  // 6. List에 값을 채운다
			  while(rs.next()) {
				  ZipcodeVO vo=new ZipcodeVO();
				  vo.setZipcode(rs.getString(1));
				  vo.setSido(rs.getString(2));
				  vo.setGugun(rs.getString(3));
				  vo.setDong(rs.getString(4));
				  vo.setBunji(rs.getString(5));
				  
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
	  // 4-1. 우편번호검색, 맛집검색 → 사용자입력 → request
	  public int zipcodeCount(String dong) {
		  int count=0;
		  try {
			getConnection();
			String sql="SELECT COUNT(*) "
						+"FROM zipcode "
						+"WHERE dong LIKE '%'||?||'%'";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dong);
			ResultSet rs=ps.executeQuery();
			rs.next();
			count=rs.getInt(1);
			rs.close();
		  } catch (Exception ex) {
			
		  } finally {
			  disConnection();
		  }
		  	return count;
	  } 
}