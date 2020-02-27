<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<c:if test="${param.username.equals('admin') && param.password.equals('password')}">
    <c:redirect url="profile.jsp"/>
</c:if>

<html>
<head>
<%--    <jsp:include page="partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Please Log In" />--%>
<%--    </jsp:include>--%>
    <title>Login Page</title>
    <%@include file= "partials/head.jsp" %>
    <%@include file= "partials/navbar.jsp" %>

</head>
<body>

    <div class="container">
        <h1>Please Log In</h1>
        <form action="login.jsp" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block" value="Log In">
        </form>
    </div>

    <%@include file= "partials/scripts.jsp" %>
</body>
</html>
