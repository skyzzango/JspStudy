package dbtest;

import java.sql.*;

class My_DB {
	private static final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String ID = "itbank";
	private static final String PW = "itbank1104";
	private static Connection con;
	private static Statement stmt;
	private static ResultSet rs;
	private static PreparedStatement pstmt;

	My_DB() {


		try {
			// jdbc 드라이버를 메모리에 로드(자바 6부터는 자동 로딩)
//			Class.forName(DRIVER);
//			System.out.println("DB 드라이버 로드 성공!");

			// ODB 와 연결 con 연결된 객체
			con = DriverManager.getConnection(URL, ID, PW);
			System.out.println("DB 접속 성공!");

			stmt = con.createStatement();

		} catch (SQLException e) {
			sqlFinally();
			e.printStackTrace();
		}
	}

	private void sqlFinally() {
		try {
			if (con != null) {
				con.close();
			}
			if (stmt != null) {
				stmt.close();
			}
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("DB 종료!");
	}

	static int sqlUpdate(String sql) {
		int result = 0;
		try (
				Connection conn = DriverManager.getConnection(URL, ID, PW);
				Statement statement = conn.createStatement()
		) {
			result = statement.executeUpdate(sql);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	static void sqlQuery(String sql) {
		try (
				Connection conn = DriverManager.getConnection(URL, ID, PW);
				Statement statement = conn.createStatement();
				ResultSet rs = statement.executeQuery(sql)
		) {
			if (rs.next()) {
				int n1 = rs.getInt(1);
				String s1 = rs.getString(2);
				int n2 = rs.getInt("College");
				String s2 = rs.getString("loc");
				System.out.println(n1 + "\t" + s1 + "\t" + n2 + "\t" + s2);
			} else {
				System.out.println("No Data");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	static void sqlPrepared1(String sql) {
		try (
				Connection conn = DriverManager.getConnection(URL, ID, PW);
				PreparedStatement pstmt = conn.prepareStatement(sql)
		) {
			pstmt.setInt(1, 9920);
			pstmt.setString(2, "홍길동");
			pstmt.setString(3, "GilDong");
			pstmt.setString(4, "전임교수");
			pstmt.setInt(5, 450);
			pstmt.setInt(6, 40);
			pstmt.setInt(7, 203);

			int n = pstmt.executeUpdate();
			System.out.println(n + "개의 행이 추가되었습니다.");

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	static void sqlPrepared2(String sql) {
		try (
				Connection conn = DriverManager.getConnection(URL, ID, PW);
				PreparedStatement pstmt = conn.prepareStatement(sql)
		) {
			pstmt.setInt(1, 500);
			pstmt.setString(2, "홍길동");

			int n = pstmt.executeUpdate();
			System.out.println(n + "개의 행이 추가되었습니다.");

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	static void sqlPrepared3(String sql) {
		try (
				Connection conn = DriverManager.getConnection(URL, ID, PW);
				PreparedStatement pstmt = conn.prepareStatement(sql)
		) {
			pstmt.setInt(1, 203);

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				System.out.println(rs.getString("NAME") + "\t");
				System.out.println(rs.getInt("PROFNO") + "\t");
				System.out.println(rs.getString("DNAME") + "\t");
				System.out.println(rs.getString("POSITION") + "\t");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	static void sqlPrepared4(String sql1, String sql2) {
		try (
				Connection conn = DriverManager.getConnection(URL, ID, PW);
				PreparedStatement pstmt1 = conn.prepareStatement(sql1);
				PreparedStatement pstmt2 = conn.prepareStatement(sql2)
		) {
			// 트랜잭션 1번 작업 시작
			conn.setAutoCommit(false);
			pstmt1.setInt(1, 255);
			pstmt1.setString(2, "핵물리학과");
			pstmt1.setInt(3, 200);
			pstmt1.setString(4, "9호관");
			pstmt1.executeUpdate();
			// 1번 작업 종료 -> 2번 작업 시작
			pstmt2.setString(1, "생명공학과");
			pstmt2.setString(2, "8호관");
			pstmt2.setInt(3, 255);
			pstmt2.executeUpdate();
			// 2번 작업 종료, 정상적으로 실행된 경우 DB에 반영!
			conn.commit();
			System.out.println("DB 커밋 완료");

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	static Connection getCon() {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, ID, PW);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
}
