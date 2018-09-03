package example_servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet(name = "exaple_servlet.Join")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private static final String DB_URL = "jdbc:mysql://localhost:3306/new_schema";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "rkd00#00";

	Connection connection;
	Statement statement;

	public Join() {
		super();
		System.out.println("생성자");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost() 실행");

		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("new_id");
		String pw1 = request.getParameter("new_pw1");
		String pw2 = request.getParameter("new_pw2");
		String name = request.getParameter("user_name");
		String gender = request.getParameter("gender");
		String mail = request.getParameter("user_mail");
		String tel1 = request.getParameter("user_tel1");
		String tel2 = request.getParameter("user_tel2");
		String tel3 = request.getParameter("user_tel3");
		String tel = (tel1 + tel2 + tel3).trim().replaceAll("-", "");
		String homepage = request.getParameter("user_homepage");

		String query = "insert into member values('" + id + "', '" + pw1 + "', '" + name + "', '" + gender + "', '" + mail + "', '" + tel + "', '" + homepage + "')";

		System.out.println(query);

		try {
			Class.forName(JDBC_DRIVER);
			System.out.println("드라이버 연결!!");
			connection = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
			System.out.println("DB 연결!!");
			statement = connection.createStatement();
			int i = statement.executeUpdate(query);
			if (i == 1) {
				System.out.println("쿼리 insert 성공!!");
				response.sendRedirect("test.jsp");
			} else {
				response.sendRedirect("join.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (statement != null) {
					statement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
