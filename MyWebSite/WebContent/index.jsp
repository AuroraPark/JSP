<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String login_id = (String) session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
</head>
<body>
	<!-- 여기에는 이제 메인화면을 구성해야한다.
	로그인이 되었으면 환영문구 / 로그인이 안되었으면 로그인 폼으로 가는 버튼을 놓는다. -->
	<!-- 로그인이 되어있는지 안되어있는지 어떻게 알지? 따로 flag를 두어야겠다? -->
	<a href="/">HOME</a>
	<%
		if (login_id == null) {
	%>
	<a href="/loginForm.jsp">login</a>
	<%
		} else {
	%>
	<a href="/logoutAction.jsp">logout</a>
	<%
		}
	%>
	<!-- 쿠키를 요청한후 쿠키가 있으면 getName을 가져온다.-->
	<a href="/board.jsp">BOARD</a>
	<br>

	<%
		if (login_id != null) {
	%>
	회원명 :
	<%=login_id%>
	님 환영합니돠
	<%
		} else {
	%>
	로그인이 필요합니다.
	<%
		}
	%>
</body>
</html>