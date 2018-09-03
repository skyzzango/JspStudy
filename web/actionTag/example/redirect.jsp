<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-30
  Time: 오후 9:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	System.out.println("forward.jsp 에서 request 파라미터 확인");
	System.out.println("이름 : " + name);
	System.out.println("나이 : " + age);
	System.out.println("forward_ret 으로 다시 요청하라고 응답해줌");
	response.sendRedirect("redirect_ret.jsp");
	// redirect_ret 로 요청 전달
%>
