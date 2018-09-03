<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-29
  Time: 오후 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
	request.setAttribute("PAGETITLE", "정보 보기");
%>
<jsp:forward page="template.jsp">
	<jsp:param name="CONTENTPAGE" value="infoView.jsp"/>
</jsp:forward>