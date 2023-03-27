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
	// 1.pageScope : 해당 페이지 내에서 지역변수처럼 사용
	// 자바변수로 선언한 것과 다른점 : EL표기법으로 다룰 수 있다
	// setAttribute(String,Object)
	pageContext.setAttribute("nickname", "쿠키몬스터");
	String nick = (String) pageContext.getAttribute("nickname");
	%>

	표현식 : <%=nick%><br>
	el(name) : ${nickname}<br>
	el : ${pageScope.nickname}<br> <!-- 영역끼리 name이 겹치치 않으면 생략가능 -->
	el(java) : ${nick}<br> <!-- 이 상황에서 아무것도 안뜸 -->
	
	<a href="ex01page2.jsp">2로 이동</a>
</body>
</html>



