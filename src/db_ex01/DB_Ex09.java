package db_ex01;

import java.sql.*;
import java.util.Scanner;

public class DB_Ex09 {
	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		System.out.println("SQL 입력 : ");
		String sql = in.nextLine();

		Connection conn = My_DB.getCon();

		try (
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery()
		) {
			ResultSetMetaData rsmd = rs.getMetaData();
			System.out.println("컬럼 객수 : " + rsmd.getColumnCount());

			for (int i = 1; i < rsmd.getColumnCount(); i++) {
				System.out.println(rsmd.getCatalogName(i) + "\t");
			}
			System.out.println();

			for (int i = 1; i < rsmd.getColumnCount(); i++) {
				System.out.println(rsmd.getColumnType(i) + "\t");
			}
			System.out.println();
			System.out.println();

			int col = rsmd.getColumnCount();
			while (rs.next()) {
				for (int num = 1; num <= col; num++) {
					int type = rsmd.getColumnType(num);
					switch (type) {
						case Types.NUMERIC:
							System.out.println(rs.getInt(num) + "\t");
							break;
						case Types.VARCHAR:
							System.out.println(rs.getString(num) + "\t");
							break;
						case Types.DATE:
							System.out.println(rs.getInt(num) + "\t");
							break;
					}
				}
				System.out.println();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
