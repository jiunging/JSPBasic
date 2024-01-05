package com.example.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.test") // 1. 확장자패턴을 쓴다 ( ~~~~.test로 끝나면 맵핑)
public class TestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public TestController() {
        super();
        
    }

    //2. get/post 요청도 하나로 모은다
    // 밑에 보면, get으로 들어오던, post로 들어오던 doAction으로 보내버림
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		//3. URL주소를 분기(각 요청별로 코드를 만듦)
		// 무슨 .test였는지 주소 덕분에 알게 되는듯?
		String uri = request.getRequestURI();
		// ContextPath는 맨 앞 /JSPBasic이거 말하는듯?
		String path = uri.substring(request.getContextPath().length());
		System.out.println(path);
		
		if(path.equals("/controller/join.test")) {
			// 회원가입~~~~ 처리로직
		} else if(path.equals("/controller/modify.test")) {
			// 정보수정~~~~ 처리로직
		} else if(path.equals("/controller/delete.text")) {
			// 회원탈퇴~~~~ 처리로직
		} else if(path.equals("/controller/logout.test")) {
			// 로그아웃~~~~ 처리로직
		}
		
		
		
	}
	
	

}
