<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-19
  Time: 오후 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
<%
	//	<session 속성>
	//	setAttribute() : 세션에 데이터를 저장 합니다.
	//	getAttribute() : 세션에서 데이터를 얻습니다.
	//	getAttributeNames() : 세션에 저장되어 있는 모든 데이터의 이름(유니크한 키값)을 얻습니다.
	//	getId() : 자동 생성된 세션의 유니크한 아이디를 얻습니다.
	//	isNew() : 세션이 최초 생성되었는지, 이전에 생성된 세션인지를 구분 합니다.
	//	getMaxInactiveInterval() : 세션의 유효시간을 얻습니다. 가장 최근 요청시점을 기준으로 카운트 됩니다.
	//	(C:\javalec\apache-tomcat-7.0.57\apache-tomcat-7.0.57\conf\web.xml 참조)
	//	removeAttribute() : 세션에서 특정 데이터 제거 합니다.
	//	Invalidate() : 세션의 모든 데이터를 삭제 합니다.

	Enumeration enumeration = session.getAttributeNames();
	while (enumeration.hasMoreElements()) {
		String id = enumeration.nextElement().toString();
		String value = (String) session.getAttribute(id);
		if (value.equals("song")) {
			out.println(id + " 님 안녕하세요!<br/>");
			out.println(value + " 님 안녕하세요!<br/>");
		}
	}
%>
</body>
</html>
