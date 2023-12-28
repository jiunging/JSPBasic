<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%

	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String birth = request.getParameter("birth");
	String age = request.getParameter("age");
	String major = request.getParameter("b1");
	
 	String[] hobby = request.getParameterValues("a1"); 
 	String region = request.getParameter("region");
 	String intro = request.getParameter("intro");

	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	넘어온 아이디: <%= id %> <br>
	넘어온 비밀번호: <%= pw %> <br>
	넘어온 생년월일: <%= birth %> <br>
	넘어온 나이: <%= age %> <br>
	
	<%int count = 0; %>
	
	<% for(String a : hobby)  {%> 
	<%count++; %>
	취미 <%=count %>: <%= a %> <br>
	<% } %> 
	
	넘어온 전공: <%= major %> <br>
 	넘어온 지역: <%= region %> <br>
 	자기소개: <%=intro %> <br>
	


</body>
</html>