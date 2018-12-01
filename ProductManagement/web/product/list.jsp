<%--
  Created by IntelliJ IDEA.
  User: datquocngo
  Date: 29/11/2018
  Time: 18:00
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Products</title>
</head>
<body>
    <h1>Products: </h1>
    <form method="post">
        <p>
            <a href="/products?action=create">Create new Product!</a> <br>
            <input name="txtSearch" type="text" id="txtSearch" width="300" height="30" value="Enter Name to Search!">
            <button type="submit">Search</button>
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
        <c:forEach items='${requestScope["products"]}' var = "product">
            <tr>
                <td><a href="/products?action=view&id=${product.getId()}">${product.getId()}</a></td>
                <td>${product.getName()}</td>
                <td>${product.getPrice()}</td>
                <td><a href="/products?action=edit&id=${product.getId()}">edit</a></td>
                <td><a href="/products?action=delete&id=${product.getId()}">delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
