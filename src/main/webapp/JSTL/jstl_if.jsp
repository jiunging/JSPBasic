<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- prefix="c"니까 아래 c라는 이름으로 사용할 수 있음 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 변수 선언 -->
	<c:set var="a" value="홍길동" />
	
	<!-- 출력 -->
	<c:out value="${a }"/>
	
	<!-- if -->
	<c:if test="${param.name eq '이순신' }">
		<b>이순신입니다</b>
	</c:if>
	
	
	<c:if test="${param.name eq '홍길동' }">
		<b>홍길동입니다</b>
	</c:if>
	
	<h3>이름이 홍길동이고, 나이가 20세 이상이라면 "성인입니다" 출력</h3>
	<c:if test="${param.name eq '홍길동' and param.age >= 20 }">
		<b>성인입니다</b>
	</c:if>
	
	

</body>
</html>