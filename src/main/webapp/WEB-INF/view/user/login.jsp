<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String err = (String) request.getAttribute("err");%>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<style>
    .err{color: red;}
</style>
<body>
    <h1>로그인</h1>
    <%if(err != null) {%>
    <div class="err"><%=err%></div>
    <%}%>
    <div>
        <form action="/user/login" method="post">
        <div><input type="text" name="uid" placeholder="user id"></div>
        <div><input type="password" name="upw" placeholder="user password"></div>
        <div>
            <input type="submit" value="login">
        </div>
    </form>
        <div>
            <a href="/user/join">join</a>
        </div>
    </div>
</body>
</html>