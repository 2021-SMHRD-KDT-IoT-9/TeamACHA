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
	// 요청한 클라이언트의 모든 세션값 삭제
	// -> 로그아웃
	session.invalidate();
	%>

	<a href="ex05getsession.jsp">세션확인</a>
</body>
</html>