<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-19
  Time: 오후 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
<%
	session.setAttribute("mySessionName", "mySessionData");
	session.setAttribute("myNum", 12345);
%>
<a href="SessionGet.jsp">session get</a>
</body>
</html>
