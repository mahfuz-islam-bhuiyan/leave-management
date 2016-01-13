<%--
  Created by IntelliJ IDEA.
  User: mahfuz
  Date: 1/13/16
  Time: 2:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Sign In | Leave Management</title>
</head>
<body style="background-color: #2c3e50">


<div style="width: 60%; margin: 0px auto;
     background:#3498db;">

    <h1><font color="white">Welcome to Leave Management</font> </h1>

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
                <td colspan="3"><input type="submit" value="Sign In"/>
                </td>
            </tr>
        </table>
    </form:form>
</div>

</body>
</html>
