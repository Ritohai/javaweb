<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 7/24/2023
  Time: 10:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!-- Khai báo sử dụng JSTL Core Tags -->


<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>JSTL Core Tags Example 01</title>
</head>
<body>

<h2>Departments and Employees</h2>

<!-- Dùng for để duyệt trên các phòng ban (departments) -->
<c:forEach items="${departments}" var="dept">
  <h3>${dept.deptName}</h3>
  <ul>
    <!-- Dùng for để duyệt trên các nhân viên
                thuộc phòng ban hiện tại -->
    <c:forEach items="${dept.employees}" var="emp">
      <li>
          ${emp.empName} - (${emp.job})
      </li>
    </c:forEach>
  </ul>

</c:forEach>

</body>
</html>
