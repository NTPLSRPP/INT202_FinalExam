<%--
  Created by IntelliJ IDEA.
  User: RapBitch
  Date: 12/18/2023
  Time: 10:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Customer</title>
</head>
<body>
<h1>New Customer</h1>
<br>
<form method="post" action="${pageContext.request.contextPath}/020/customer?action=add">
    <label>
        Customer Number :
        <input type="number" name="customerNumber" required>
    </label>
    <br>
    <label>
        Customer Name :
        <input type="text" name="customerName" required>
    </label>
    <br>
    <label>
        First Name :
        <input type="text" name="contactFirstName" required>
    </label>
    <br>
    <label>
        Last Name :
        <input type="text" name="contactLastName" required>
    </label>
    <br>
    <label>
        Phone :
        <input type="text" name="phone" required>
    </label>
    <br>
    <label>
        Address Line 1 :
        <input type="text" name="addressLine1" required>
    </label>
    <br>
    <label>
        Address Line 2 :
        <input type="text" name="addressLine2">
    </label>
    <br>
    <label>
        City :
        <input type="text" name="city" required>
    </label>
    <br>
    <label>
        State :
        <input type="text" name="state">
    </label>
    <br>
    <label>
        Postal Code :
        <input type="text" name="postalCode">
    </label>
    <br>
    <label>
        Country :
        <input type="text" name="country" required>
    </label>
    <br>
    <label>
        Sales Rep Employee : <br>
        <c:forEach items="${requestScope.employeeList}" var="employee">
            <input type="radio" name="salesRepEmployee" value="${employee.employeeNumber}"> ${employee.employeeNumber}
            <br>
        </c:forEach>
    </label>
    <br>
    <label>
        Credit Limit :
        <input type="text" name="creditLimit">
    </label>
    <br>
    <input type="submit" value="submit">
</form>
</body>
</html>