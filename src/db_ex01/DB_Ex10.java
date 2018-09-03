package db_ex01;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

public class DB_Ex10 {
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String ID = "itbank";
	private static final String PW = "itbank1104";

	public static void main(String[] args) {
		Properties pro = new Properties();
		try {
			pro.load(new FileInputStream("src/properties/department.properties"));
		} catch (IOException e) {
			e.printStackTrace();
		}

		try (
				Connection conn = DriverManager.getConnection(URL, ID, PW);
				PreparedStatement pstmt = conn.prepareStatement(pro.getProperty("department_insert"))
		) {

			pstmt.setInt(1, 100);
			pstmt.setString(2, "기계공학");
			pstmt.setInt(3, 200);
			pstmt.setString(4, "2호관");

			int n = pstmt.executeUpdate();
			System.out.println(n + "개의 행이 추가되었습니다.");

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
