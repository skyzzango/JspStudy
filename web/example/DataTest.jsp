<%@ page import="java.sql.*" %>
<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-19
  Time: 오후 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
</head>
<body>

<%!
	private Connection connection;
	private Statement statement;
	private ResultSet resultSet;

	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String uid = "scott";
	private String upw = "tiger";
	private String query = "select * from member";
%>

<%
	try {
		Class.forName(driver);  // JDBC 드라이브를 메모리에 로드
		connection = DriverManager.getConnection(url, uid, upw); //DB 연결 객체 생성
		out.println("1");
		statement = connection.createStatement(); // 쿼리 객체
		resultSet = statement.executeQuery(query);

		while (resultSet.next()) {
			String id = resultSet.getString("id");
			String pw = resultSet.getString("pw");
			String name = resultSet.getString("name");
			String phone = resultSet.getString("phone");

			out.println("아이디  : " + id + "비밀번호 : " + pw);
			out.println("이름 : " + name + "전화번호  :" + phone);
		}

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if (resultSet != null) {
				resultSet.close();
			}
			if (statement != null) {
				statement.close();
			}
			if (connection != null) {
				connection.close();
			}
		} catch (SQLException e1) {
			e1.getMessage();
		}
	}

%>
<h1> 안녕 </h1>
</body>
</html>

