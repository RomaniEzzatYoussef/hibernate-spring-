<%--
  Created by IntelliJ IDEA.
  User: Romani Ezzat
  Date: 1/18/2020
  Time: 5:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html>
<head>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/css/my-test.css">

    <script src="${pageContext.request.contextPath}/resources/js/simple-test.js"></script>
    <title>Home</title>
</head>
<body>

<h2>Spring MVC Demo - Home Page</h2>

<a href="selectStudent/showSelectStudentForm">Get Student Form</a> <br><br>
<a href="student/showStudentForm">Student Form</a> <br><br>
<a href="customer/showCustomerForm">Customer Form</a> <br><br>
<a href="jdbc/showTestJDBCPage">JDBC Connection Test</a> <br><br>
<a href="hibernate/showTestHibernatePage">Hibernate Configuration File Connection Test</a> <br><br>


<img src="${pageContext.request.contextPath}/resources/images/spring-logo.jpg" />

<br><br>

<input type="button" onclick="doSomeWork()" value="Click Me"/>

</body>
</html>
