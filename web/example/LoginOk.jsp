<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-19
  Time: 오후 9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
<%
	String id, pw;

	id = request.getParameter("user_id");
	pw = request.getParameter("user_pw");

	if (id.equals("song") && pw.equals("1234")) {
		session.setAttribute("id", id);
		response.sendRedirect("SessionNew.jsp");
	} else {
		response.sendRedirect("test.jsp");
	}
%>
</body>
</html>
