<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 확인</title>
</head>
<body>
	<h2>회원 가입 정보</h2>
	<hr>
	<% // 선언문 -> ( <%! ) 전역변수 선언할 때 사용 (잘 안씀)
	
	String memberId = request.getParameter("memberid"); // 가입 회원 아이디
	String membePw = request.getParameter("memberpw"); // 가입 회원 비밀번호
	String memberName = request.getParameter("membername"); // 가입 회원 이름
	String memberAge = request.getParameter("memberage"); // 가입 회원 나이
	String memberGender = request.getParameter("gender"); // 가입 회원 성별
	if (memberGender.equals("male") ){
		memberGender = "남성";
	} else {
		memberGender = "여성";
	}
	String memberEmail1 = request.getParameter("email"); // 가입 회원 이메일 아이디
	String memberEmail2 = request.getParameter("email2"); // 가입 회원 이메일 도메인
	String[] memberHobbys = request.getParameterValues("hobby"); // 가입 회원 취미
	// getParameterValues -> 문자열 배열 형태로 가져오기
	
	String memberIntro = request.getParameter("intro"); // 가입 회원 자기소개
	
	%>
	
	<ul>
		<li>아이디 : <%=memberId%> </li>
		<li>비밀번호 : <%=membePw%> </li>
		<li>이름 : <%=memberName%></li>
		<li>나이 : <%=memberAge%></li>
		<li>성별 : <%=memberGender%></li>
		<li>이메일 : <%=memberEmail1%>@<%=memberEmail2%></li>
		<li>취미 : 
			<%
			 if(memberHobbys != null) { // 체크박스 선택을 하나도 하지 않은 경우 처리함
				for(int i=0;i<memberHobbys.length;i++) {
					out.print(memberHobbys[i] + " , ");
				} 
			 } else {
				 out.print("선택한 취미가 없습니다.");
			 }
			//	for(String m : memberHobbys) { 향상된 for 문
			//		out.print(memberHobbys + " , ");
			//	}	
				
			%> 
		</li>
		<li>자기소개 : <%=memberIntro%></li>
	</ul>
	
</body>
</html>