<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Discount Calculator" %>
</h1>
<br/>
<form method="post" action="Discount">
    <label>Product Description</label>
    <input type="text" name="description">
    <br>
    <label>List Price</label>
    <input type="text" name="price">
    <br>
    <label>Discount percent</label>
    <input type="text" name="discount">
    <br>
    <input type="submit" value="submit" action="action">
</form>
</body>
</html>