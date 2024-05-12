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
<form action="/addemployee" method="post">
    <input type="text" name="name" placeholder="Ho va ten"><br>
    <input type="text" name="address" placeholder="Dia chi"><br>
    <input type="text" name="phone" placeholder="SDT"><br>
    <input type="radio" checked name="status" value="true"><span>Active</span><br>
    <input type="radio"  name="status" value="false"><span>Inactive</span><br>
    <input type="submit" value="ADD">
</form>
</body>
</html>
