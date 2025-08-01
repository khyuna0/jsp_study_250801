<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h2>회원가입 양식</h2>
	<hr>
	
	<form action="memberJoinOK.jsp" method="post"> <!-- post -> 폼 데이터에서 입력된 부분 가리기  -->
	
		아이디 : <input type="text" name ="memberid" required="required"><br><br>
		비밀번호 : <input type="password" name ="memberpw" required="required"><br><br>
		이름 : <input type = "text" name = "membername" maxlength="10" disabled="disabled" value = "홍길동" ><br><br>
		나이 	: <input type = "text" name = "memberage" value = "20" readonly="readonly"><br><br>
		성별 : <input type = "radio" name = "gender" value="male" checked="checked" >남자 
		<input type = "radio" name = "gender" value="female">여자 <br><br>	
		<!-- 라디오 타입 이름을 똑같이 써줘야 하나만 선택 가능 / value 값 필수-->
		이메일 : <input type="text" name = "email" size = "10" placeholder="abc"> @ 
		<select name = "email2">
			<option value ="naver.com" >naver.com</option>
			<option value ="gmail.com">gmail.com</option>	
			<option value ="daum.net">daum.net</option>			
		</select>
		<br><br>
		취미 : 
		<input type="checkbox" name = "hobby" value = "game" checked="checked" >게임
		<input type="checkbox" name = "hobby" value = "sports">운동
		<input type="checkbox" name = "hobby" value = "book">독서
		<input type="checkbox" name = "hobby" value = "movie">영화 
		<!-- 서버에서 받을 때 유의 : 문자열 배열 형식으로 전달됨 -->
		<br><br>
		
		자기소개 : 
		<textarea rows="5" cols="50" name ="intro" placeholder="10자 이상"></textarea>
		<br><br>
		
		<input type ="submit" value ="회원가입">
	 	<input type ="reset" value ="취소">
		
		
	</form>
	
</body>
</html>