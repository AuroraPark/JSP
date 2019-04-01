package com.codechobo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/LoginAction")
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	// POST 방식 요청을 처리 가능하게 doPost() 추가
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
					throws ServletException, IOException{
		doGet(request,response);
	}
	
	
	
	
	/**
     * @see HttpServlet#HttpServlet()
     */
    public LoginAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		//Servlet에 값넘기기 - query string
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		
		Cookie cookie = new Cookie(id, pwd);
		response.addCookie(cookie);

		if(id.equals("KING") && pwd.contentEquals("1234")) {
			// id와 pwd 가 일치하는 경우
			response.sendRedirect("/");
		} else {
			// id 와 pwd가 일치하지 않는 경우
			request.setAttribute("msg", "id또는 비밀번호가 틀립니다.");  // request객체에 메시지를 저장
			request.setAttribute("id", id);
			request.setAttribute("pwd", pwd);
			
			RequestDispatcher reqDis = request.getRequestDispatcher("/loginForm.jsp");
			reqDis.forward(request, response);
		}
		
		
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head");
		out.println("</head");
		out.println("<body>");
		out.println("<h1> Hello, "+id+".</h1>");
		out.println("<h1>Your password is "+pwd+".</h1>");
		out.println("</body>");
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
