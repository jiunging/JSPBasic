<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// forward_ex04에서 setAttribute로 값을 담았기 때문에,
	// 받을때는 getAttribute로 받아야함
	String data = (String)request.getAttribute("data");

%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%=data %>

</body>
</html>