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
	// 1. 쿠키 객체 생성 Cookie(name;String타입만 가능,value)
	Cookie cookie = new Cookie("test", "firstCookie");
	// 2. 만료기간 설정 (초 단위)
	cookie.setMaxAge(60*60*24*365); // 1년
	// 3. 서버에서 생성된 쿠키 -> 클라이언트로 보냄
	response.addCookie(cookie);
	
	// 쿠키 객체 생성해서 바로 응답
	response.addCookie(new Cookie("id", "smart"));
	%>
	
	<a href="ex02getcookie.jsp">쿠키확인</a>
</body>
</html>