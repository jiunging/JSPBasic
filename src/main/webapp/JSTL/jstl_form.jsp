<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>if문 확인하기</h3>

	<form action="jstl_if.jsp" method="post">
	
		이름:<input type="text" name="name">
		나이:<input type="number" name="age">
		<input type="submit" name="value">
	</form>
	
	<h3>choose문 확인하기</h3>

	<form action="jstl_choose.jsp" method="post">
	
		이름:<input type="text" name="name">
		나이:<input type="number" name="age">
		점수:<input type="number" name="score">
		<input type="submit" name="value">
	</form>

</body>
</html>