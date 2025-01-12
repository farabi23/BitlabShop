        <%@ page import="servlets.Items" %>
<%@ page import="servlets.Database" %>
<%@ page import="java.sql.SQLException" %>
        <%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Farabi
  Date: 13/01/2025
  Time: 01:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">


</head>

<body>

<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Bitlab Shop</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Top sales</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">New sales</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">By category</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-disabled="true">Sign in</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div style="align-items: center; display: flex; justify-content: center;">
    <h1>Welcome to BITLAB SHOP</h1>
</div>

<div style="align-items: center; display: flex; justify-content: center;">
<h6>Electronic devices with high quality and service</h6>
</div>

<div style="align-items: center; display: flex; justify-content: center;">
    <%
        List<Items> itemList = (List<Items>) request.getAttribute("items");
        if (itemList != null){
            for(Items item: itemList){


    %>
    <div class="card" style="width: 18rem; margin: 10px; text-align: center;" >
        <div class="card-body" style="align-items: center;">
            <h4 class="card-title"><%=item.getName()%></h4>
            <h5  class="card-title" style="color: green">$<%=item.getPrice()%></h5>
            <p class="card-text"><%=item.getDescription()%></p>
            <a href="#" class="btn btn-success" style="width: 100%;">Buy now</a>
        </div>
    </div>


    <%
            }
        }
    %>

</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>
