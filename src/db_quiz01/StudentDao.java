package db_quiz01;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentDao {
	private static final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String ID = "itbank";
	private static final String PW = "itbank1104";

	private static StudentDao instance = new StudentDao();

	private StudentDao() {
	}

	public static StudentDao getInstance() {
		try {
			Class.forName(DRIVER);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return instance;
	}

	public void insert(StudentDto data) {
		String sql = "insert into STUDENT values " +
				"(SEQ_STUDENT.nextval, ?, ?, ?, ?, sysdate)";
		try (
				Connection conn = DriverManager.getConnection(URL, ID, PW);
				PreparedStatement ppst = conn.prepareStatement(sql)
		) {
			ppst.setString(1, data.getName());
			ppst.setString(2, data.getPhone());
			ppst.setString(3, data.getEmail());
			ppst.setString(4, data.getAddress());
			ppst.executeUpdate();
		} catch (SQLException e) {
			System.out.println("등록 실패!!");
			e.printStackTrace();
		}
	}

	public List<StudentDto> getList() {
		String sql = "select * from STUDENT";
		List<StudentDto> list = null;
		try (
				Connection conn = DriverManager.getConnection(URL, ID, PW);
				PreparedStatement ppst = conn.prepareStatement(sql);
				ResultSet rs = ppst.executeQuery()
		) {
			if (rs.next()) {
				list = new ArrayList<>();
				do {
					StudentDto data = new StudentDto();
					data.setNum(rs.getInt("num"));
					data.setName(rs.getString("name"));
					data.setPhone(rs.getString("phone"));
					data.setEmail(rs.getString("email"));
					data.setAddress(rs.getString("address"));
					data.setReg_date(rs.getTimestamp("reg_date"));
					list.add(data);
				} while (rs.next());
			}
		} catch (SQLException e) {
			System.out.println("전체 불러오기 실패!!");
			e.printStackTrace();
		}
		return list;
	}

	public StudentDto getStudent(int num) {
		StudentDto stu = null;
		String sql = "select * from STUDENT where NUM = ?";
		try (
				Connection conn = DriverManager.getConnection(URL, ID, PW);
				PreparedStatement ppst = conn.prepareStatement(sql)
		) {
			ppst.setInt(1, num);
			try (ResultSet rs = ppst.executeQuery()) {
				if (rs.next()) {
					stu = new StudentDto();
					stu.setNum(rs.getInt("num"));
					stu.setName(rs.getString("name"));
					stu.setPhone(rs.getString("phone"));
					stu.setEmail(rs.getString("email"));
					stu.setAddress(rs.getString("address"));
					stu.setReg_date(rs.getTimestamp("reg_date"));
				}
			}
		} catch (SQLException e) {
			System.out.println("정보 불러오기 실패!!");
			e.printStackTrace();
		}
		return stu;
	}

	public void update(StudentDto data) {
		String sql = "update STUDENT set NAME = ?, PHONE = ?, EMAIL = ?, ADDRESS = ? where NUM = ?";
		try (
				Connection conn = DriverManager.getConnection(URL, ID, PW);
				PreparedStatement ppst = conn.prepareStatement(sql)
		) {
			ppst.setString(1, data.getName());
			ppst.setString(2, data.getPhone());
			ppst.setString(3, data.getEmail());
			ppst.setString(4, data.getAddress());
			ppst.setInt(5, data.getNum());
			ppst.executeUpdate();
		} catch (SQLException e) {
			System.out.println("정보 수정 실패!!");
			e.printStackTrace();
		}
	}

	public void delete(int num) {
		String sql = "delete from STUDENT where NUM = ?";
		try (
				Connection conn = DriverManager.getConnection(URL, ID, PW);
				PreparedStatement ppst = conn.prepareStatement(sql)
		) {
			ppst.setInt(1, num);
			ppst.executeUpdate();
		} catch (SQLException e) {
			System.out.println("정보 삭제 실패!!");
			e.printStackTrace();
		}
	}
}
