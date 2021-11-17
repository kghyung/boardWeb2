<%@ page import="com.koreait.board2.model.UserVO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
   UserVO loginUser = (UserVO) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List</title>
</head>
<body>
    <%if(loginUser != null){%>
    <div><%=loginUser.getNm()%>님 환영합니다.<a href="/user/logout"><input type="button" value="logout"></a></div>
    <%} else {%>
    <a href="/user/login">로그인</a>
    <%}%>
<h1>리스트</h1>
</body>
</html>