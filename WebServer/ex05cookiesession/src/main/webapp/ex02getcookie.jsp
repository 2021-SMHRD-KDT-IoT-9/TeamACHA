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
	// 1.클라이언트에 저장된 쿠키 가져오기
	Cookie[] cookies = request.getCookies();
	
	// 확장for문 (for~each문)
	// for( : 배열(arraylist)의 레퍼런스 변수 이름)
	for(Cookie c : cookies){
		out.print(c.getName()+" : "+c.getValue()+"<br>");
	}
	%>
	
	<a href="ex03removecookie.jsp">쿠키삭제</a><br>
	<a href="ex01setcookie.jsp">쿠키추가</a><br>
	<a href="remove">서블릿에서 쿠키 삭제</a>
</body>
</html>