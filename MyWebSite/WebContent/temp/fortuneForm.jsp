<%@ page contentType = "text/html; charset=utf-8" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String msg = (String)request.getAttribute("msg");

if(msg != null){
%>
	<label><b><%=msg%></b></label>
<% } %>
<form action="/Fortune" method=post>
	이름 : <input name="name" type=text value="" placeholder="ex>your name" name="name" required><br>
	생일 : <input name="birth" type=text value="" placeholder="ex>19901107" name="birth" required><br>
		<input type="submit" value="보여주기">
</form>
</body>
</html>