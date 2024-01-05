package com.example.model;

public class MemberDAO {
	/*
	 * DAO는 데이터베이스 연결을 처리하는 클래스
	 * 
	 * 불필요하게 요청별로 객체를 여러개 만들 필요가 없어서
	 * 
	 */
	
	// 1. 나자신의 객체를 만든다.
	private static MemberDAO instance = new MemberDAO();
	
	// 2. 생성자는 private 처리
	private MemberDAO() {
		
	}
	
	// 3. getter를 사용해서 내부에 만들어진 instance를 반환한다.
	public static MemberDAO getInstance() {
		return instance;
	}
	
	// 아래에서는 데이터베이스 관련 로직 .... ~~~~~
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
