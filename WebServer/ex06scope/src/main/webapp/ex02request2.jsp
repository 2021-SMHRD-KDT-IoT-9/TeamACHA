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
	String nick = (String) request.getAttribute("nickname");
	%>
	<%=nick%>
	<!-- 새로운 리퀘스트 영역으로 이동했으므로 null값이 뜨는데? -->
	<!-- forwarding 방식 쓰니까 제대로 뜨는데? -->
	${nickname}
	${requestScope.nickname}
</body>
</html>