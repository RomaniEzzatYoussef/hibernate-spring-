<%--
  Created by IntelliJ IDEA.
  User: Romani Ezzat
  Date: 1/19/2020
  Time: 11:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Student Details</title>
</head>
<body>

Student Details Using Spring MVC <br><br>

The student is confirmed:  <br><br>

Student first name: ${student.firstName} <br>
Student last name: ${student.lastName} <br>
Student country: ${student.country} <br>
Student Favorite Language: ${student.favoriteLanguage} <br>
Student Operating System:

<ul>
    <c:forEach var="temp" items="${student.operatingSystems}">
        <li> ${temp} </li>
    </c:forEach>

</ul>

 <br>

</body>
</html>
