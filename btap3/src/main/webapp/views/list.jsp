<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nliem
  Date: 12/05/2024
  Time: 10:52 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/add">Them moi</a>
<table border="5">
   <thead>
   <tr>
       <td>ID</td>
       <td>NAME</td>
       <td>ADDRESS</td>
       <td>PHONE</td>
       <td>STATUS</td>
       <td colspan="2">ACTIONE</td>
   </tr>
   <c:forEach items="${employeeList}" varStatus="loop" var="employee">
       <tr>
           <td>${employee.id}</td>
           <td>${employee.name}</td>
           <td>${employee.address}</td>
           <td>${employee.phone}</td>
           <td>${employee.status}</td>
           <td><a href="edit/${employee.id}">EDIT</a> </td>
           <td><a href="delete/${employee.id}">DELETE</a> </td>
       </tr>
   </c:forEach>
   </thead>
</table>
</body>
</html>
