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
	// session Scope : 세션이 만료되기 전까지 사용할 수 있는 영역
	session.setAttribute("nickname", "쿠키몬스터");
	String nick = (String)session.getAttribute("nickname");
	%>
	
	${nickname}
	${sessionScope.nickname}
	
	<a href = "ex03session2.jsp">2로 이동</a>
</body>
</html>