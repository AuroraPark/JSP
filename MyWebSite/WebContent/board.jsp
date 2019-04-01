<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String login_id = (String) session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME BOARD</title>
</head>
<body>
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
	
	<h1>board</h1> <br>
	<table style="width:100%">
        <tr>
            <th width="100">작성자</th>
            <th>내용</th>
            <th width="100">작성일자</th>
        </tr>
        <tr>
            <td>김나비</td>                             
            <td>강아지?</td>
            <td>2019-03-20</td>
        </tr>
        <tr>
            <td>박멍멍</td> 
            <td>고양이들은</td> 
            <td>2019-03-21</td> 
        </tr>
        <tr>
            <td>이고양</td> 
            <td>나비</td> 
            <td>2019-03-22</td> 
        </tr>
    </table>
	<button name="button" onclick="javascript:kkk();">글쓰기</button>	
	
	<script>
	window.onload = function () {
		if(<%=login_id %>== null){
			alert("로그인 하셔야합니다.");
			location.href="/loginForm.jsp";
		}
	}
	function kkk() {
				alert("준비중입니다");
		}
	
	</script>
	
</body>
</html>