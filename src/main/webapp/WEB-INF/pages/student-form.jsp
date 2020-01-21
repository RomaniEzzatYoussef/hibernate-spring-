<%--
  Created by IntelliJ IDEA.
  User: Romani Ezzat
  Date: 1/19/2020
  Time: 11:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Student Form</title>
</head>
<body>

<form:form action="processStudentForm" modelAttribute="student">
    First name: <form:input path="firstName"/> <br><br>
    Last name: <form:input path="lastName"/>  <br><br>

    Country:
    <form:select path="country">
<%--        <form:option value="Egypt" label="Egypt"/>--%>
<%--        <form:option value="Germany" label="Germany"/>--%>
<%--        <form:option value="France" label="France"/>--%>
<%--        <form:option value="Brazil" label="Brazil"/>--%>
        <form:options items="${student.countryOptions}"/>
    </form:select> <br><br>

    Favorite Language: <br>
<%--    Java <form:radiobutton path="favoriteLanguage" value="Java"/>--%>
<%--    C# <form:radiobutton path="favoriteLanguage" value="C#"/>--%>
<%--    PHP <form:radiobutton path="favoriteLanguage" value="PHP"/>--%>
<%--    Ruby <form:radiobutton path="favoriteLanguage" value="Ruby"/> <br><br>--%>

    <form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions}"  /> <br><br>

<%--    Operating Systems: <br>--%>
<%--    Linux <form:checkbox path="operatingSystems" value="Linux"/>--%>
<%--    Mac OS <form:checkbox path="operatingSystems" value="Mac OS"/>--%>
<%--    MS Windows <form:checkbox path="operatingSystems" value="MS Windows"/> <br><br>--%>

    <form:checkboxes path="operatingSystems" items="${student.operatingSystemsOptions}"  /> <br><br>

    <input type="submit" value="Submit"/>
</form:form>

</body>
</html>
