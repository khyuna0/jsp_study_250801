<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 문법 연습</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		// 20세 이상이면 "성년" 아니면 "미성년"으로 출력하시오
		// 단, 성년 : 빨강,폰트사이즈 30 / 미성년 : 파랑, 폰트사이즈 30으로 출력하시오. -> html+css 로 제작
		
		int age = Integer.parseInt(request.getParameter("age")); // 문자열 나이를 정수형 나이로 변환
		if ( age >= 20 ) {
			// 성년
	%> 	
		<%-- 여기부터 HTML 영역 --%>	
		<span style="font-size : 30px; color:red">성년</span>
	<%		
		} else {
			// 미성년
	%>
		<%-- 여기부터 HTML 영역 --%>	
		<span style="font-size : 30px; color:red">미성년</span>	
	<%				
		}
	%>
	
</body>
</html>