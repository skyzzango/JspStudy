<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-29
  Time: 오후 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
	String pageTitle = (String) request.getAttribute("PAGETITLE");
	String contentPage = request.getParameter("CONTENTPAGE");
%>
<html lang="ko">
<head>
	<%@include file="../../../partials/head.html" %>
	<title><%=pageTitle%>
	</title>
</head>
<body>
<%@include file="../../../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>include 적용 페이지</h3><br>
	<table width="400" border="2" cellpadding="5" cellspacing="0">
		<tr>
			<td colspan="2">
				<jsp:include page="../module/top.jsp" flush="false"/>
			</td>
		</tr>
		<tr>
			<td width="100" align="top">
				<jsp:include page="../module/left.jsp" flush="false"/>
			</td>
			<td width="300" align="top">
				<%--내용 부분 시작--%>
				<jsp:include page="<%=contentPage%>" flush="false"/>
				<%--내용 부분 끝--%>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<jsp:include page="../module/bottom.jsp" flush="false"/>
			</td>
		</tr>
	</table>
</div>
</body>
</html>