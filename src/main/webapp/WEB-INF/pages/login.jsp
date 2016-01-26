<%--
  Created by IntelliJ IDEA.
  User: mahfuz
  Date: 1/13/16
  Time: 2:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <%--<spring:url value="/resources/css/common.css" var="mainCss" />--%>

    <%--<spring:url value="/resources/js/jquery.1.10.2.min.js" var="jqueryJs" />--%>
    <%--<spring:url value="/resources/js/main.js" var="mainJs" />--%>

    <link href="<spring:url value="/resources/css/common.css" />" rel="stylesheet"/>
    <link href="<spring:url value="/resources/css/login.css" />" rel="stylesheet"/>

    <%--<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet" >--%>

    <title>Log In | Leave Management</title>
</head>
<%--<body style="background-color: #2c3e50">--%>
<body>


<h3 style="margin-top: 100px;">Welcome to Leave Management</h3>

<div  id="main_content">

    <div class="center_outer_div" onload='document.f.username.focus();'>

        <c:if test="${not empty error}">
            <div class="errorblock">
                Your login was unsuccessful. <br />
                Caused: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message }
            </div>
        </c:if>

        <div style="margin-bottom: 20px;" class="center_inner_div"><img
                src="<spring:url value="/resources/img/nophoto_user.png"/> " alt="User Photo" class="circle" />
        </div>

        <div>
            <form class="center_horizontal" action="j_spring_security_check" name="f" method="post">
                <input name="j_username" placeholder="Enter Username"/> <br><br>
                <input name="j_password" placeholder="Enter Password" type="password"/> <br><br>

                <input class="button center_horizontal" type="submit" value="Sign In"/>
            </form>
        </div>
    </div>
</div>

</body>
</html>
