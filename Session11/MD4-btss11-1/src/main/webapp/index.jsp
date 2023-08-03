<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Danh sách khách hàng</title>
</head>
<body>
<h1>Danh sách khách hàng</h1>
<table border="1">
  <tr>
    <th>Tên</th>
    <th>Ngày sinh</th>
    <th>Địa chỉ</th>
    <th>Ảnh</th>
  </tr>
  <c:forEach items="${listCustomers}" var="customer">
    <tr>
      <td>${customer.name}</td>
      <td>${customer.birthdate}</td>
      <td>${customer.address}</td>
      <td><img src="${customer.image}" alt="Ảnh khách hàng"></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
