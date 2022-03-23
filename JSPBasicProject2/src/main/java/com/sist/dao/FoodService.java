package com.sist.dao;
import java.util.*;
import java.sql.*;
public class FoodService {
	  private Connection conn;
	  private PreparedStatement ps;
	  private final String URL="jdbc:oracle:thin:@localhost:1521:XE";
	
	// 1.드라이버 등록
	  public void FoodService() {
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
	 // 4. 기능
	 // 4-1. 카테고리 출력 
	  public List<CategoryVO> categoryData(){
		  List<CategoryVO> list=new ArrayList<CategoryVO>();
		  try {
			  getConnection();
			  String sql="SELECT cno,title,poster,subject "
					  	+"FROM category "
					  	+"ORDER BY cno ASC";
			  ps=conn.prepareStatement(sql);
			  ResultSet rs=ps.executeQuery();
			  while(rs.next()) {
				  CategoryVO vo=new CategoryVO();
				  vo.setCno(rs.getInt(1));
				  vo.setTitle(rs.getString(2));
				  vo.setPoster(rs.getString(3));
				  vo.setSubject(rs.getString(4));
				  
				  list.add(vo);
			  }
			  rs.close();		  
		  } catch(Exception ex) {
			  ex.printStackTrace();
		  } finally {
			  disConnection();
		  }
		  return list;
	  }
	 // 4-2. 카테고리별 맛집 목록
	  public List<FoodVO> categoryListData(int cno) {
		  List<FoodVO> list=new ArrayList<FoodVO>();
		  try {
			  getConnection();
			  String sql="SELECT no,name,address,tel,type,poster,score "
					  	+"FROM foodhouse "
					    +"WHERE cno=?";
			  ps=conn.prepareStatement(sql);
			  ps.setInt(1, cno);
			  ResultSet rs=ps.executeQuery();
			  while(rs.next()) {
				  FoodVO vo=new FoodVO();
				  vo.setNo(rs.getInt(1));
				  String address=rs.getString(2);
				//  address=address.substring(0,address.lastIndexOf("지"));
				  vo.setName(address);
				  vo.setAddress(rs.getString(3));
				  vo.setTel(rs.getString(4));
				  vo.setType(rs.getString(5));
				  String poster=rs.getString(6);
				  poster=poster.substring(0,poster.indexOf("^"));
				  poster=poster.replace("#","&");
				  vo.setScore(rs.getDouble(7));
				  vo.setPoster(poster);
				  
				  list.add(vo);
			  }
			  rs.close();
		  } catch(Exception ex) {
			  ex.printStackTrace();
		  } finally {
			  disConnection();
		  }		  
		  return list;
	  }
	 // 4-3. 카테고리 정보 출력
	  public CategoryVO categoryInfoData(int cno) {
		  CategoryVO vo=new CategoryVO();
		  try {
			  getConnection();
			  String sql="SELECT title,subject "
					  	+"FROM category "
					  	+"WHERE con=?";
			  ps=conn.prepareStatement(sql);
			  ps.setInt(1, cno);
			  ResultSet rs=ps.executeQuery();
			  rs.next();
			  vo.setTitle(rs.getString(1));
			  vo.setSubject(rs.getString(2));
			  rs.close();
			  
		  } catch(Exception ex) {
			  ex.printStackTrace();
		  } finally {
			  disConnection();
		  }
		  return vo;
	  }
	 // 4-4. 맛집 상세보기
	  public FoodVO foodDetailData(int no) {
		  FoodVO vo=new FoodVO();
		  try {
			  getConnection();
			  String sql="SELECT no,cno,name,score,poster,address, "
					  	+"tel,type,price,time,parking,menu "
					  	+"FROM foodhouse "
					  	+"WHERE no=?";
			  ps=conn.prepareStatement(sql);
			  ps.setInt(1, no); // 1은 첫번째 ?에 no값을 대입
			  ResultSet rs=ps.executeQuery();
			  rs.next();
			  vo.setNo(rs.getInt(1));
			  vo.setCno(rs.getInt(2));
			  vo.setName(rs.getString(3));
			  vo.setScore(rs.getDouble(4));
			  vo.setPoster(rs.getString(5));
			  vo.setAddress(rs.getString(6));
			  vo.setTel(rs.getString(7));
			  vo.setType(rs.getString(8));
			  vo.setPrice(rs.getString(9));
			  vo.setTime(rs.getString(10));
			  vo.setParking(rs.getString(11));
			  vo.setMenu(rs.getString(12));

			  rs.close();
			  
		  } catch(Exception ex) {
			  ex.printStackTrace();
		  } finally {
			  disConnection();
		  }
		  	return vo;
	  }
}
