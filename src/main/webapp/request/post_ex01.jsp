<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h3>데이터 보내기(post방식)</h3>

	<!-- 
		post방식은 반드시 form 태그가 필요함
		method="post"라고만 적으면 된다.
	 -->
	 
	 <form action="post_ex02.jsp" method="post"> <!-- 요로케 -->
	 
	 	아이디:<input type="text" name="id">
	 	비번:<input type="password" name="pw">
	 	<input type="submit" value="전송하기">
	 	
	 </form>
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 


</body>
</html>