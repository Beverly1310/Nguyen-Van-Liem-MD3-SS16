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
<form action="/edit" method="post">
    <input type="text" name="id" value="${employee.id}" readonly><br>
    <input type="text" name="name" value="${employee.name}"><br>
    <input type="text" name="address" value="${employee.address}"><br>
    <input type="text" name="phone" value="${employee.phone}"><br>
    <input type="radio" ${employee.status?"checked":""} name="status" value="true"><span>Active</span><br>
    <input type="radio" ${!employee.status?"checked":""} name="status" value="false"><span>Inactive</span><br>
    <input type="submit" value="EDIT">
</form>
</body>
</html>
