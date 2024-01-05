<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- a태그로 jspTag폴더의 quiz01로 상대경로, 절대경로 -->
	<a href="../jspTag/quiz01.jsp">quiz01로 이동하기(상대경로)</a>
	<a href="/JSPBasic/jspTag/quiz01.jsp">quiz01로 이동하기(절대경로)</a>

	<br><br><br>


	<!-- img태그로 HTML폴더 안에 있는 테스트1.JPG 상대경로, 절대경로-->
	엄준식 ㅋㅋ 상대경로 <img src="../img/엄준식.jfif"> <br><br><br><br>
	엄준식 ㅋㅋ 절대경로 <img src="/JSPBasic/img/엄준식.jfif">
	
	<br><br><br><br>
	
	<!-- a태그로 TestServlet로 상대경로, 절대경로 (맵핑경로 확인)-->
	TestServlet로 이동하기(상대경로) <a href="../../apple"></a>
	TestServlet로 이동하기(절대경로) <a href="JSPBasic/apple"></a>
	

</body>
</html>