<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.net.URLDecoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String[] values = request.getParameterValues("remember");

		if (values != null) {
			Cookie cookie = new Cookie("id", URLEncoder.encode(request.getParameter("id"), "utf-8"));
			response.addCookie(cookie);
		}
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		if (id.equals("KING") && pwd.contentEquals("1234")) {
			// id와 pwd 가 일치하는 경우 - board.jsp로 이동
			response.sendRedirect("/board.jsp");
			// 세션만들어서 id저장
			session.setAttribute("id", id);

		} else {
			// id 와 pwd가 일치하지 않는 경우
			//request.setAttribute("msg", "id또는 비밀번호가 틀립니다."); // request객체에 메시지를 저장
			//request.setAttribute("id", id);
			//request.setAttribute("pwd", pwd);
			
			//RequestDispatcher reqDis = request.getRequestDispatcher("/loginForm.jsp");
			//reqDis.forward(request, response);
			response.sendRedirect("/loginRedi.jsp");
		}
	%>
</body>
</html>