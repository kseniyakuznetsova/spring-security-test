<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h1>Title : ${title}</h1>
<h1>Message : ${message}</h1>


<c:if test="${pageContext.request.userPrincipal.name != null}">
    <h2>
        Welcome : ${pageContext.request.userPrincipal.name}
    </h2>
    <c:url value="/j_spring_security_logout" var="logoutUrl" />
    <form action="${logoutUrl}" method="POST" id="logoutForm">
        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}" />
        <input type="submit" value="Logout">
    </form>

</c:if>
<c:if test="${pageContext.request.userPrincipal.name == null}">
    <form name='loginForm' action="/login" method='GET'>
        <input name="submit" type="submit" value="Войти" />
    </form>
</c:if>

</body>
</html>
