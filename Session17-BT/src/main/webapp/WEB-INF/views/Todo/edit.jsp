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
<form method="post" action="/TodoController/edit">
    <input type="text" disabled name="id" value="${todoEdit.id}">
    <input type="hidden" name="id" value="${todoEdit.id}">
    <label for="content">Công Việc</label>
    <input type="text" name="content" id="content" value="${todoEdit.content}">

    <select name="status">
        <option value="true" ${todoEdit.status ?'selected':''}>Hoàn Thành</option>
        <option value="false" ${todoEdit.status ?'':'selected'}>Chưa Hoàn Thành</option>
    </select>
    <button>Submit</button>
</form>
</body>
</html>