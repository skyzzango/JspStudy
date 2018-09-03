<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-19
  Time: 오전 2:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>Title</title>
</head>
<body>
hello world<br>
<%
	String sage = request.getParameter("age");
	out.println("나이 : " + sage);
	int i;
	for (i = 0; i <= 5; i++) {
		out.print("i 의 값은 = " + i);
		out.print("<br>====================<br>");
	}
	int arr[] = {10, 20, 30};
	out.println(Arrays.toString(arr));
%>
<%!
	int test = 1;
	String name = "jsp";

	private int test() {
		return 3;
	}
%>
<br>
<%
	out.println(test);
	out.println(name);
	out.println(test());
%>
<br>
<%=test%>
<%=name%>
<%=test()%>
<br/>
<jsp:useBean id="student" class="Student"/>
<jsp:setProperty name="student" property="name" value="song"/>
<jsp:setProperty name="student" property="age" value="25"/>
이름 :
<jsp:getProperty name="student" property="name"/>
나이 :
<jsp:getProperty name="student" property="age"/>
<br>
<a href="index.html">처음으로 이동  </a>
</body>
</html>
