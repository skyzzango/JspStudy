package db_ex02;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

public class DAO {
	private Context init;
	private Connection conn = null;
	private DataSource ds = null;

	public DAO() {
		try {
			init = new InitialContext();
			ds = (DataSource) init.lookup("java:/comp/env/jdbc/MyH2");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}

	public Connection getConnection() throws SQLException {
		return ds.getConnection();
	}

	public Vector<TempMemberVO> getMemberList() {
		Vector<TempMemberVO> memList = new Vector<>();
		String query = "select * from TEMPMEMBER";
		try (
				Connection conn = ds.getConnection();
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(query)
		) {
			while (rs.next()) {
				TempMemberVO mem = new TempMemberVO();
				mem.setId(rs.getString("id"));
				mem.setPassword(rs.getString("password"));
				mem.setName(rs.getString("name"));
				mem.setMem_num1(rs.getString("mem_num1"));
				mem.setMem_num2(rs.getString("mem_num2"));
				mem.setEmail(rs.getString("email"));
				mem.setPhone(rs.getString("phone"));
				mem.setZipcode(rs.getString("zipcode"));
				mem.setAddress(rs.getString("address"));
				mem.setJob(rs.getString("job"));
				memList.add(mem);
			}
		} catch (SQLException e) {
			System.out.println("Error : 멤버리스트 불러오기 실패!!!");
			e.printStackTrace();
		}
		return memList;
	}
}
