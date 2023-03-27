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
	// application Scope : ServeltContext
	application.setAttribute("nickname", "쿠키몬스터");
	String nick = (String)application.getAttribute("nickname");
	%>
	
	${nickname}
	${applicationScope.nickname}
	
	<a href = "ex04application2.jsp">2로 이동</a>
</body>
</html>