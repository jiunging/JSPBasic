<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	// 쿠키는 삭제가 없음(동일한 이름의 쿠키의 만료시간을 0초로 만들기)

	Cookie c = new Cookie("aaa", "true");
	c.setMaxAge(0);
	response.addCookie(c);

%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	쿠키 삭제완료
	<a href="Cookie_get.jsp">쿠키확인하기</a>



</body>
</html>