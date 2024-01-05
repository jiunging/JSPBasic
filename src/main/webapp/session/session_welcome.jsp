<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	// 여기에서 세션이 없다 -> 인증이 안 된 사람
	if(session.getAttribute("user_id") == null) {
		response.sendRedirect("session_login.jsp");
	}

	// 세션
    String user_id = (String)session.getAttribute("user_id");
	String nick = (String)session.getAttribute("user_nick");

    
    
%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%= user_id %>님 환영합니다 ㅋㅋ <br>
	닉네임은? <%= nick %> ㅋㅋ <br>
	
	<a href="session_logout.jsp">로그아웃하기</a>
	


</body>
</html>