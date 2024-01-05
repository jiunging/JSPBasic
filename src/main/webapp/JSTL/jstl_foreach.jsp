<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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



	<h3>향상된 포문 item(배열 or 리스트)</h3>

	<%
		int[] arr = new int[] {1,2,3,4,5};
		for(int i : arr) {
			out.println(i);
		}
	%>
	
	<c:forEach var="i" begin="1" end="10" step="1">
	${i }
	
	</c:forEach>
	
 	<hr/>
	<h3>구구단 1단~9단까지 JSTL로 출력하기</h3>
	<c:forEach var="i" begin="1" end="9" step="1">
		구구단${i }단 <br> <hr>
		<c:forEach var="j" begin="1" end="9" step="1">
			${i } X ${j }= ${i * j}<br>
		</c:forEach>
		<br>
	</c:forEach>
	
	
	<br>
	<c:set var="arr" value="<%=new int[] {1,2,3,4,5} %>" />
	
	
	<c:forEach var="i" items='${arr}' varStatus='a'>
		값 ${i }
		인덱스 ${a.index }
		카운트 ${a.count }
		<br>
	</c:forEach>
	<hr/>
	<%
		ArrayList<String> list = new ArrayList<>();
		list.add("홍길동");
		list.add("이순신");
		list.add("홍길자");
		list.add("박찬호");
		
		request.setAttribute("list", list);
	%>
	

 		<c:forEach var="i" items="${list }" varStatus="a">
 			${a.count }. ${i } <br>
		</c:forEach>

	

</body>
</html>