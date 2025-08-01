<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 세부사항</title>
</head>
<body>
	<%  // 클라이언트의 정보나 서버의 정보 request로 얻기
		
	
		// 서버
		out.println("서버 이름 : " + request.getServerName() + "<br>" ); // br 태그 인식 가능!
		out.println("서버 포트 번호 : " + request.getServerPort() + "<br>" );
		out.println("요청 방식 : " + request.getMethod() + "<br>" );
		out.println("프로토콜 : " + request.getProtocol() + "<br>");
		out.println("서버 URL : " + request.getRequestURL() + "<br>");
		out.println("서버 URI : " + request.getRequestURI() + "<br>");
		out.println("hr");
		
		// 클라이언트
		out.println("클라이언트 정보 IP 주소 : " + request.getRemoteAddr() + "<br>");
		out.println("클라이언트 정보 웹브라우저 : " + request.getHeader("User-Agent"));
	%>


</body>
</html>