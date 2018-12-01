<%--
  Created by IntelliJ IDEA.
  User: datquocngo
  Date: 30/11/2018
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product</title>
</head>
<body>
<h1>Product: </h1>
<form action="product/search.jsp" method="post">
    <p>
        <a href="/products?action=search">Search!</a> <br>
    </p>
</form>
<table border="1">
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Price</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
        <tr>
            <td><a href="/products?action=view&id=${requestScope["product"].getId()}">${requestScope["product"].getId()}</a></td>
            <td>${requestScope["product"].getName()}</td>
            <td>${requestScope["product"].getPrice()}</td>
            <td><a href="/products?action=edit&id=${requestScope["product"].getId()}">edit</a></td>
            <td><a href="/products?action=delete&id=${requestScope["product"].getId()}">delete</a></td>
        </tr>
</table>
</body>
</html>