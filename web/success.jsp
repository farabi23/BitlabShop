<%@ page import="servlets.Users" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Farabi
  Date: 13/01/2025
  Time: 02:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

        <title>Success page</title>
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
            </ul>
        </div>
    </div>
</nav>

<br>
<br>

<div style="text-align: center; margin: auto; width: 50%;" >

    <%
        String fullName = (String) request.getAttribute("fullName");
    %>

    <h1 style="text-align: center">Welcome!</h1>
    <br>
    <h4 style="text-align: center"><%=fullName%></h4>


    <%
    %>
</div>

</body>
</html>
