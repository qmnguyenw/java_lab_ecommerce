<%-- 
    Document   : search
    Created on : Aug 18, 2021, 4:37:45 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
            <div class="controller">
                <div class="float-left my-3">
                    <form class="form-inline" method="GET" action="search?name=${name}">
                        <input
                            class="form-control mr-sm-2"
                            type="text" name="keyword"
                            placeholder="Search"
                            aria-label="Search"
                            value="${name}"
                            />
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">
                            <i class="fa fa-search"></i> Search
                        </button>
                    </form>
                </div>
                <div class="float-right my-3">
                    <a href="add">
                        <button type="button" class="btn btn-success">
                            <i class="fa fa-plus-circle"></i> Add New Product
                        </button>
                    </a>
                </div>
            </div>
            <c:if test="${index <= maxPage}">                  
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Name</th>
                            <th scope="col">Image</th>
                            <th scope="col">Price</th>
                            <th scope="col">Actions</th>
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach items="${listProduct}" var="i" >
                            <tr>
                                <th scope="row">${i.id}</th>
                                <td>${i.name}</td>
                                <td><img src="${i.image_url}" style="width:100px; height: auto;"/></td>
                                <td>${i.price}</td>
                                <td>
                                    <a href="edit?id=${i.id}">
                                        <button type="button" class="btn btn-primary">
                                            <i class="fa fa-edit"></i>
                                        </button>
                                    </a>

                                    <form id="deleForm" style="display: inline;" action="delete?id=${i.id}" method="post" onsubmit="return deleteConfirm()">
                                        <button type="submit" class="btn btn-danger" id ="delete"><i class="fa fa-trash"></i></button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="paging">
                    <c:if test="${maxPage < 1}">
                        <h3>Not Found!!</h3>
                    </c:if>
                    <c:if test="${maxPage > 1}">
                        <c:forEach begin="1" end="${maxPage}" var="i">
                            <a class="${i==index?"active":""}" href="home?index=${i}">${i}</a>
                        </c:forEach>
                    </c:if>
                </div>
            </c:if>
            <div class="message">
                <c:if test="${index > maxPage}">
                    <h3> Not found!!!</h3>
                </c:if>
            </div>
        </div>
        <%@include file="component/footer.jsp" %>
        <script
            src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous">
        </script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
            crossorigin="anonymous">
        </script>
        <script>
            function deleteConfirm() {
                return confirm('Bạn thực sự muốn xoá sản phẩm này?');
            }
        </script>
    </body>
</html>