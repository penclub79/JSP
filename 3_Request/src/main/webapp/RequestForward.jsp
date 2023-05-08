<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- RequestLogin에서 넘어온 아이디와 패스워드를 읽어드림 -->
<%
	// 사용자의 정보가 저장되어있는 객체 request 의 getParameter() 사용자의 정보를 추출한다.
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
%>

	<h1> Request Forward 페이지 입니다.</h1>
	
	<br>
	
<% 	
	// id와 password는 이전 페이지만 값을 받아온다. getParameter의 값을 가지고 오는 범위는 이전 페이지의 한장 뿐이다.
	// 그래서 세션이 필요하다.
%>
	<h2>
	당신의 아이디는 <%= id %> 이고 패스워드는 <%= pass %> 입니다.
	</h2>

</body>
</html>