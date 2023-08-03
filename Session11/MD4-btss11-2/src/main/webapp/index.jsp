<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Simple Calculator</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form action="calculator" method="post">
  Operand 1: <input type="text" name="operand1" required><br>
  Operand 2: <input type="text" name="operand2" required><br>
  Operator:
  <select name="operator">
    <option value="+">+</option>
    <option value="-">-</option>
    <option value="*">*</option>
    <option value="/">/</option>
  </select><br>
  <input type="submit" value="Calculate">
</form>
<% if (request.getAttribute("error") != null) { %>
<p style="color: red;"><%= request.getAttribute("error") %></p>
<% } %>
</body>
</html>
