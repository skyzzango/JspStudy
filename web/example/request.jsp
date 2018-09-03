<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-19
  Time: 오후 2:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>Title</title>
</head>
<body>
<%
	out.println("서버 : " + request.getServerName() + "<br/>");
	out.println("포트 : " + request.getServerPort() + "<br/>");
	out.println("요청방식 : " + request.getProtocol() + "<br/>");
	out.println("URL : " + request.getRequestURL() + "<br/>");
	out.println("URI : " + request.getRequestURI() + "<br/>");
%>
<%
	request.setCharacterEncoding("UTF-8");
	String search = request.getParameter("user_search");
	out.println("검색어 : " + search + "<br/>");

	if (search.equals("관리자")) {
		response.sendRedirect("elice.jsp?age=" + search);
	} else {
		response.sendRedirect("hello.jsp?age=" + search);
	}
%>
</body>
</html>
