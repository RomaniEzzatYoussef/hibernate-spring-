<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Romani Ezzat
  Date: 1/18/2020
  Time: 11:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Select Form</title>
</head>
<body>

<form:form action="getSelectedStudent" modelAttribute="student">
   Choose Student: <br><br>
    <form:select  path="lastName">
        <form:options items="${studentNames}"/>
    </form:select> <br><br>
    <input type="submit" value="Submit">
</form:form>

</body>
</html>
