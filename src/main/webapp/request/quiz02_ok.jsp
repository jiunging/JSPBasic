<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String a = request.getParameter("height");
	String b = request.getParameter("weight");
	
	int height = Integer.parseInt(a);
	int weight = Integer.parseInt(b);
	
	double bmi = (double)(weight / (((height / 100) + (height % 100 * 0.01)) * ((height / 100) + (height % 100 * 0.01))));
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	선생님 이름은: <%=name %> <br>
	선생님 키는: <%= a %> <br>
    선생님 몸무게는: <%= b %> <br>
    BMI 지수는: <%= bmi %> <br>
    
    <% if(bmi >= 25) {%>
    	과체중입니다
    <% } else if(bmi <= 18) {%>
		저체중입니다
	<% } else {%>
		정상입니다
	<% } %>
	
</body>
</html>





