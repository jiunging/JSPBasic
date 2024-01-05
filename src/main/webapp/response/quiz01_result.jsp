<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String kor = request.getParameter("Kor");
	String eng = request.getParameter("Eng");
	String math = request.getParameter("Math");
	
	int kor2 = Integer.parseInt(kor);
	int eng2 = Integer.parseInt(eng);
	int math2 = Integer.parseInt(math);
	
	int result = (kor2 + eng2 + math2) / 3;
	
	if(result >= 60) {
		response.sendRedirect("quiz01_ok.jsp");
	} else {
		response.sendRedirect("quiz01_no.jsp");
	}


%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




</body>
</html>