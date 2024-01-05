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

	<!-- when절은 if, when절 추가하면 else if, otherwise는 else -->
	<c:choose>
		<c:when test="${param.name eq '홍길동' }">
			홍길동입니다
		</c:when>
		<c:when test="${param.name eq '이순신' }">
			이순신입니다
		</c:when>
		<c:otherwise>
			홍길동, 이순신이 아닙니다
		</c:otherwise>
	</c:choose>
	
	<br>
	
	<!--
	choose를 사용해서 90 이상이면 A, 80 이상이면 B, 나머지는 F
	중첩구문을 사용해서 95점 이상일 때는 A+, 90~94까지는 A로 출력
	-->
<%-- 	<c:choose>
    <c:when test="${param.score >= 95}">
        점수 : ${param.score } <br>
        학점 : A+
    </c:when> 
    <c:when test="${param.score >= 90 && param.score < 95}">
        점수 : ${param.score } <br>
        학점 : A
    </c:when>
    <c:when test="${param.score >= 80 && param.score < 90}">
        점수 : ${param.score } <br>
        학점 : B
    </c:when>
    <c:otherwise>
        점수 : ${param.score } <br>
        학점 : F
    </c:otherwise>
	</c:choose> --%>
	
	
 	<c:choose>
		<c:when test="${param.score >= 90 }">
			<c:choose>
				<c:when test="${param.score >= 95 }">
				점수 : ${param.score } <br>
				학점 : A+
				</c:when> 	
			<c:otherwise>
				점수 : ${param.score } <br>
				학점 : A
			</c:otherwise>
			</c:choose>
		</c:when>
		<c:when test="${param.score >= 80 }">
			점수 : ${param.score } <br>
			학점 : B
		</c:when>
		<c:otherwise>
			점수 : ${param.score } <br>
			학점 : F
		</c:otherwise>
	</c:choose> 
	
	
	
	
	
	
	

</body>
</html>