<%@page import="java.util.Random"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@include file="include_header.jsp" %>
    
    <h3>
	1. 정수를 저장하는 HashSet을 생성 <hr>
	2. 1~45까지 랜덤하게 생성되는 로또번호를 set에 저장 <hr>
	3. 화면에 출력할 때는 "이번 번호는 x번 입니다" 반복으로 출력 <hr>
	4. header, footer는 include해주셈 <hr>
	</h3>
    
<%

	Set<Integer> set = new HashSet<>();
	Random ran = new Random();
	
	while(set.size() < 6) {
		int num = ran.nextInt(45) + 1; // 1~45
		set.add(num);
	}
%>

  	총 번호들은: <%=set.toString() %>  
  	<br>
  	
  	<%
  	Iterator<Integer> iter = set.iterator();
  	%>
  	
  	<% while(iter.hasNext()) { %>
  	이번 번호는: <%= iter.next() %> 	<br>
  	<%} %>
  	
  	
  	

  	

  	<br>

	<%@include file="include_footer.jsp" %>









    
    