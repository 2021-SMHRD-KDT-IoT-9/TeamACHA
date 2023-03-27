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
	// 2.request scope
	// pagescope랑 다른점 : foward 방식(페이지를 이동하는 방식)으로 데이터를 공유할 수 있다!
	// 페이지 이동방식 : 리다이렉팅(sendRedirect) / 포워딩(forward)
	request.setAttribute("nickname", "쿠키몬스터");
	String nick = (String) request.getAttribute("nickname");

	// 포워딩방식으로 이동(RequestDispatcher 객체 필요)
	RequestDispatcher rd = request.getRequestDispatcher("ex02request2.jsp");
	rd.forward(request, response);
	%>
	<%=nick%><br>
	<a href="ex02request2.jsp">2로 이동</a>
</body>
</html>