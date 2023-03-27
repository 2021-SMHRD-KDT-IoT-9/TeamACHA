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
	// 세션에 저장된 값 가져오기
	// getAttribute("name" - 생성할 때 작성한 name(String))
	// -> 반환타입(Object) -> 원래 타입으로 다운캐스팅해서 사용해야함
	String id = (String) session.getAttribute("id");
	Integer age = (Integer) session.getAttribute("age");
	// Integer가 아닌 기본형 int를 넣을 경우 세션 삭제시 null값이 되어 세션 확인시 에러가 뜬다
	// Integer는 reference type
	ArrayList<String> al = (ArrayList<String>) session.getAttribute("list");
	%>

	id : <%=id %><br> 
	age : <%=age %><br> 
	list : <%=al %><br>

	<a href="ex06removesession.jsp">세션 삭제</a>
	<br>
	<a href="ex07invalidate.jsp">세션 전부 삭제</a>
</body>
</html>