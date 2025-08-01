<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<% // 로그인 정보 (파라미터 값) 가져오기S
	
		// 클라이언트가 입력한 id 값 가져오기
		String memberId = request.getParameter("loginId"); // 파라미터 이름과 일치하지 않으면 null 뜸
		// 클라이언트가 입력한 pw 값 가져오기
		String memberPw = request.getParameter("loginPw");
	%>
		<h2>로그인하신 아이디는 <b><%= memberId %></b> 이고, 비밀번호는 <b><%= memberPw %></b> 입니다.</h2>
		
</body>
</html>