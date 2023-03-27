<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	// setAttribute(name(String), value(Object)) : 세션 생성
	session.setAttribute("id", "testid");
	session.setAttribute("age", 20);

	ArrayList<String> al = new ArrayList<String>();
	al.add("apple");
	al.add("banana");
	session.setAttribute("list", al);
	%>

	<a href="ex05getsession.jsp">세션 확인</a><br>
	<a href="getsession">세션 확인(서블릿)</a>
</body>
</html>