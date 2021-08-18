<%-- 
    Document   : add
    Created on : Aug 18, 2021, 4:37:45 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link
            href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
            rel="stylesheet"
            />
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
            integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
            crossorigin="anonymous"
            />
        <link rel="stylesheet" href="./static/css/style.css" />
        <title>Product</title>
    </head>
    <body>
        <%@include file="component/header.jsp" %>
        <div class="container">
            <h1>Add Product</h1>
            <form action="add" method="POST">
                <table class="table table-borderless">
                    <tbody>
                        <tr>
                            <th scope="row">Name:</th>
                            <td><input class="rec" type ="text" name="name" value="${name}" /></td>
                        </tr>
                        <tr>
                            <th scope="row">Image:</th>
                            <td><input class="rec" type ="text" name="image_url" value="${image_url}" /></td>
                        </tr>
                        <tr>
                            <th scope="row">Price:</th>
                            <td><input class="rec" type ="text" name="price" value="${price}" /></td>
                        </tr>
                    </tbody>
                </table>
                <c:forEach items="${message}" var="i" >
                    <div>${i}</div>
                </c:forEach>

                <input id="submit" class="button btn btn-success" type="submit" value="Add">
                <a href="home"><button type="button" class="btn btn-secondary">Back</button></a>
            </form>
        </div>
        <%@include file="component/footer.jsp" %>
    </body>
</html>
