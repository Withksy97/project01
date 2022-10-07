package com.kosa.visitors;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import dbConn.util.CloseHelper;
import dbConn.util.ConnectionHelper;

public class BookDAO { // Controller DAO => Data Access Object
	
	// connection & open
	public static Connection loadOracleDriver() {
		Connection conn = null;
		
		try {
			conn = ConnectionHelper.getConnection("oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	// insert
	public static void insert(Connection conn, BookVO vo) {
		StringBuffer sb = new StringBuffer();
		PreparedStatement pstmt = null;

		try {
			conn = ConnectionHelper.getConnection("oracle");
			sb.append("INSERT INTO GUESTBOOK(NUM, NAME, EMAIL, HOME, CONTENTS) ");
			sb.append(" VALUES(BOOK_NUM.NEXTVAL, ?, ?, ?, ?) ");

			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getEmail());
			pstmt.setString(3, vo.getHome());
			pstmt.setString(4, vo.getContents());
			pstmt.executeUpdate(); // 반환값이 있는 경우

		} catch (Exception e) {
			e.printStackTrace();
		}
	} // insert() end
	
	//전체 레코드 수 구해서 페이지 카운트 하는 함수 ,  conn,   5
	   public static int getPageCount(Connection conn, int numPerPage) 
	         throws SQLException {   //예외처리 위임
	      
	      String sql = "SELECT COUNT(*) FROM GUESTBOOK " ;   //20
	      Statement  stmt = conn.createStatement();
	      ResultSet  rs = stmt.executeQuery(sql);
	      int max = 0;
	      
	      while( rs.next() ) {
	         max = rs.getInt(1);  // 20
	         break;
	      } // while end
	      
	      CloseHelper.close(stmt);
	      int pageCount = (int)Math.ceil( (double)max / numPerPage );  //   20 / 5 = 4
	      
	      pageCount = Math.max(pageCount, 1);  // max(4, 1);
	      
	      return pageCount;
	   } //getPageCount() end
	// select all
	public static Vector<BookVO>selectAll(Connection conn, int mypage, int numPerPage) throws SQLException{
		
		StringBuffer sb = new StringBuffer();
		int start = (mypage - 1) * numPerPage;
		int end = mypage * numPerPage;
		sb.append("SELECT NUM, NAME, EMAIL, HOME, CONTENTS FROM GUESTBOOK ");
		sb.append(" WHERE NUM > ? AND NUM <= ? ");
		sb.append(" ORDER BY NUM DESC");
		
		PreparedStatement pstmt = conn.prepareStatement(sb.toString());
		pstmt.setInt(1, start);
		pstmt.setInt(2, end);
		ResultSet rs = pstmt.executeQuery();
		
		Vector<BookVO> data = new Vector<BookVO>();
		
		while(rs.next()) {
			BookVO vo = new BookVO();
			vo.setName(rs.getString("name"));
			vo.setNum(rs.getInt("num"));
			vo.setEmail(rs.getString("email"));
			vo.setHome(rs.getString("home"));
			vo.setContents(rs.getString("contents"));
		
			data.add(vo);
		}// end while
		
		CloseHelper.close(rs);
		CloseHelper.close(pstmt);
		
		return data; // !!!!
	} // selectAll() end
	
	// update
	// update(conn, vo) 레코드 수정
	public static void update(Connection conn, BookVO vo) throws SQLException {
		String sql = "UPDATE GUESTBOOK SET EMAIL= ? , HOME= ? , CONTENTS= ? WHERE NUM = ?";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getEmail());
		pstmt.setString(2, vo.getHome());
		pstmt.setString(3, vo.getContents());
		pstmt.setInt(4, vo.getNum());
		pstmt.executeUpdate();

		CloseHelper.close(pstmt);
	} // update() end
	
	// delete
	// delete(conn, vo) 레코드 삭제
	public static void delete(Connection conn, BookVO vo) throws SQLException {
		String sql = "DELETE FROM GUESTBOOK WHERE NUM = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, vo.getNum());
		pstmt.executeUpdate();

		CloseHelper.close(pstmt);
	} // delete() end
}
