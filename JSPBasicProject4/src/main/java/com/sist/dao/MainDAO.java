package com.sist.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MainDAO {
	private Connection conn;
	private PreparedStatement ps;
	private final String URL="jdbc:oracle:thin:@localhost:1521:XE";
	
	// 1.드라이버 등록
	public MainDAO() {
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
	 // 4. Books읽기
	 public List<BookVO> bookListData() {
		 List<BookVO> list=new ArrayList<BookVO>();
		 try {
			getConnection();
			String sql="SELECT title,poster,rownum "
					  +"FROM books "
					  +"WHERE rownum<=20 ";
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				BookVO vo=new BookVO();
				vo.setTitle(rs.getString(1));
				vo.setPoster(rs.getString(2));
				list.add(vo);
			}
			rs.close();
		} catch (Exception ex) {
			
		} finally {
			disConnection();
		}
		 return list;
	 }
	 // 5. Music읽기
	 public List<MusicVO> musicListData(){
		 List<MusicVO> list=new ArrayList<MusicVO>();
		 try {
			getConnection();
			String sql="SELECT no,title,poster,singer "
					  +"FROM genie_music ";
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				MusicVO vo=new MusicVO();
				vo.setNo(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setPoster(rs.getString(3));
				vo.setSinger(rs.getString(4));
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
