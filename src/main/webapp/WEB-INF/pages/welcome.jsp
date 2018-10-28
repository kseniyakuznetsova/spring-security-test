<%--
  Created by IntelliJ IDEA.
  User: Kseniya
  Date: 28.10.2018
  Time: 12:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Title : ${title}</h1>
    <h1>Message : ${message}</h1>
    <form name='loginForm' action="/login" method='get'>
        <input name="submit" type="submit" value="Войти" />
    </form>
</body>
</html>
