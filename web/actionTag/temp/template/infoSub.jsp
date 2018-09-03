<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-29
  Time: 오후 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
	String type = request.getParameter("type");
	if (type != null) {
%>
<html>
<head></head>
<body>
<table width="100%" border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td>타입</td>
		<td><b><%=type%>
		</b></td>
	</tr>
	<tr>
		<td>특징</td>
		<td>
			<%
				if (type.equals("A")) {
			%>강한 내구성.<%
		} else if (type.equals("B")) {
		%>뛰어난 대처능력<%
			}
		%>
		</td>
	</tr>
</table>
</body>
</html>
<%
	}
%>
