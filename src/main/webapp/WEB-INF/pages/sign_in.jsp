<%--
  Created by IntelliJ IDEA.
  User: mahfuz
  Date: 1/13/16
  Time: 2:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
    <%--<spring:url value="/resources/css/common.css" var="mainCss" />--%>

    <%--<spring:url value="/resources/js/jquery.1.10.2.min.js" var="jqueryJs" />--%>
    <%--<spring:url value="/resources/js/main.js" var="mainJs" />--%>

    <link href="<spring:url value="/resources/css/common.css" />" rel="stylesheet" />

    <%--<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet" >--%>

    <title>Sign In | Leave Management</title>
</head>
<%--<body style="background-color: #2c3e50">--%>
<body >


<div id="main_content" >

    <h1>Welcome to Leave Management</h1>

    <p>Enter Credentials</p><br/><br/>
    <form:form commandName="user">
        <table>
            <tr>
                <td><form:input path="username" placeholder="Enter Username"/></td>

            </tr>

            <tr>
                <td><form:input path="password" placeholder="Enter Password" /></td>
            </tr>
            <tr>
                <td colspan="3"><input class="button" type="submit" value="Sign In"/>
                </td>
            </tr>
        </table>
    </form:form>
</div>

</body>
</html>
