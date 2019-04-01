<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="java.net.URLEncoder"%>
<%
	Cookie[] cookies = request.getCookies();
	String id_cookie = "";
	
	if (cookies.length > 0) {
		
		for (int i = 1; i < cookies.length; i++) {
			if ("id".equals(cookies[i].getName())) {
				id_cookie = URLDecoder.decode(cookies[i].getValue(), "utf-8");
			}
		}
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!--1. 로그인 폼 : id, pwd, 체크박스, 로그인 버튼 -->
	<form action="/loginAction.jsp" method=post>
		<label for="uname"><b>Id</b></label><br> <input type="text"
			placeholder="Enter User Id" name="id" value="<%= id_cookie%>"
			required><br> <label for="psw"><b>Password</b></label><br>
		<input type="password" placeholder="Enter Password" name="pwd"
			required><br>
		<%
			String msg = (String) request.getAttribute("msg");

			if (msg != null) {
		%>
		<label><b><%=msg%></b></label><br>
		<%
			}
		%>
		<button type="submit">Login</button>
		<br> <label> <input type="checkbox" name="remember"
			value="remember"> Remember me
		</label><br>
	</form>






</body>
</html>