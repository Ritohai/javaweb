<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/14/2023
  Time: 4:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Danh sách việc làm!!!</h1>
<a href="/TodoController/add">Add Todolist</a>
<table border="1" cellspacing="5" cellpadding="10">
    <tr>
        <th>STT</th>
        <th>Content</th>
        <th>Status</th>
        <th colspan="2">Action</th>
    </tr>

    <c:forEach items="${todoList}" var="tdl">
        <tr>
            <td>${tdl.id}</td>
            <td>${tdl.content}</td>
            <td>${tdl.status ? "Hoàn thành" : "Chưa hoàn thành"}</td>
            <td> <a href="/TodoController/edit/${tdl.id}">Edit</a></td>
            <td> <a href="/TodoController/delete/${tdl.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>