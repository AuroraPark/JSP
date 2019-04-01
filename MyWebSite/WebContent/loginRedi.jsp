<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

request.setAttribute("msg", "id또는 비밀번호가 틀립니다."); // request객체에 메시지를 저장
request.setAttribute("id", id);
request.setAttribute("pwd", pwd);

RequestDispatcher reqDis = request.getRequestDispatcher("/loginForm.jsp");
reqDis.forward(request, response);
%>
</body>
</html>