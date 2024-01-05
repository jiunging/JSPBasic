<%@page import="com.example.bean.QuizVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	QuizVO vo = (QuizVO)request.getAttribute("vo");


%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>학생 정보 출력 ㅋㅋ</h3>
	학생의 id는: <%=vo.getId() %> <br>
	학생의 pw는: <%=vo.getPw() %> <br>
	학생의 이름은: <%=vo.getName() %> <br>
	학생의 주소는: <%=vo.getAddress() %> <br>
	학생의 국어점수는: <%=vo.getMath() %> <br>
	학생의 수학점수는: <%=vo.getKor() %> <br>

	<h4>그래서 평균과 총점은 어떻게 되냐?</h4>
	국어, 수학 평균: <%=(Integer.parseInt(vo.getKor()) + Integer.parseInt(vo.getMath())) / 2 %> <br>
	국어, 수학 총점: <%=Integer.parseInt(vo.getKor()) + Integer.parseInt(vo.getMath()) %> <br>

</body>
</html>