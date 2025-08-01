<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 문법 연습</title>
</head>
<body> 
	<%-- 스크립트 태그 선언부 --%>
	
	<%! 
		String memberId;
		String membePw;
		String memberName;
		String memberAge;
	
	%>
	
	<%
		memberId = request.getParameter("memberid"); // 가입 회원 아이디
		membePw = request.getParameter("memberpw"); // 가입 회원 비밀번호
		memberName = request.getParameter("membername"); // 가입 회원 이름
		memberAge = request.getParameter("memberage"); // 가입 회원 나이
	%>
	
	
</body>
</html>