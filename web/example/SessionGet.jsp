<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-19
  Time: 오후 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
<%
	out.println("*********************<br/>");
	Object obj1 = session.getAttribute("mySessionName");
	String mySessionName = (String) obj1;
	out.println(mySessionName + "<br/>");
	out.println("*********************<br/>");
	Object obj2 = session.getAttribute("myNum");
	Integer myNum = (Integer) obj2;
	out.println(myNum + "<br/>");
	out.println("*********************<br/>");

	String id, value;
	Enumeration enumeration = session.getAttributeNames();
	while (enumeration.hasMoreElements()) {
		id = enumeration.nextElement().toString();
		value = session.getAttribute(id).toString();
		out.println("id : " + id + "<br/>");
		out.println("value : " + value + "<br/>");
		out.println("*********************<br/>");
	}

	String sessionID = session.getId();
	out.println("sessionID : " + sessionID + "<br/>");
	int sessionInter = session.getMaxInactiveInterval();
	out.println("sessionInter : " + sessionInter + "<br/>");
	out.println("*********************<br/>");

	session.removeAttribute("mySessionName");
	Enumeration enumeration1 = session.getAttributeNames();
	while (enumeration1.hasMoreElements()) {
		id = enumeration1.nextElement().toString();
		value = session.getAttribute(id).toString();
		out.println("sName : " + id + "<br/>");
		out.println("sValue : " + value + "<br/>");
		out.println("*********************<br/>");
	}

	session.invalidate();
	if(request.isRequestedSessionIdValid()) {
		out.println("session valid");
	} else {
		out.println("session invalid");
	}
%>
</body>
</html>
