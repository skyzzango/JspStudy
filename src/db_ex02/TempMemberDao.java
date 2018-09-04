package db_ex02;

import java.sql.*;
import java.util.Vector;

public class TempMemberDao {
	private static final String DRIVER = "org.h2.Driver";
	private static final String URL = "jdbc:h2:C:/Users/skyzz/IdeaProjects/JspStudy/src/db_ex02/h2";
	private static final String ID = "iu";
	private static final String PW = "iu1004";
	private ConnectionPool pool = null;

	public TempMemberDao() {
//		try {
//			Class.forName(DRIVER);
//		} catch (ClassNotFoundException e) {
//			System.out.println("Error : 드라이버 로딩 실패!!");
//			e.printStackTrace();
//		}
		try {
			pool = ConnectionPool.getInstance();
		} catch (Exception e) {
			System.out.println("Error : 드라이버 로딩 실패!!");
		}
	}

	public Vector<TempMemberVO> getMemberList() {
		Vector<TempMemberVO> memList = new Vector<>();
		String query = "select * from TEMPMEMBER";
		try (
//				Connection conn = DriverManager.getConnection(URL, ID, PW);
				Connection conn = pool.getConnection();
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(query)
		) {
			while (rs.next()) {
				TempMemberVO tmp = new TempMemberVO();
				tmp.setId(rs.getString("id"));
				tmp.setPassword(rs.getString("password"));
				tmp.setName(rs.getString("name"));
				tmp.setMem_num1(rs.getString("mem_num1"));
				tmp.setMem_num2(rs.getString("mem_num2"));
				tmp.setEmail(rs.getString("email"));
				tmp.setPhone(rs.getString("phone"));
				tmp.setZipcode(rs.getString("zipcode"));
				tmp.setAddress(rs.getString("address"));
				tmp.setJob(rs.getString("job"));
				memList.add(tmp);
			}
			pool.releaseConnection(conn);
		} catch (SQLException e) {
			System.out.println("Error : 멤버리스트 불러오기 실패!!");
			e.printStackTrace();
		}
		return memList;
	}
}
