<%--
  Created by IntelliJ IDEA.
  User: Farabi
  Date: 13/01/2025
  Time: 02:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <title>Login page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">


    </head>
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
                    <a class="nav-link" href="/signin">Sign in</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<br>
<br>

<form action="/check" method="post" style="text-align: center; margin: auto; width: 30%;" class="form-signin" >

    <h3 style="text-align: left">Login Page</h3>

    <div style="text-align: left" class="form-label" data-mdb-input-init class="form-outline mb-4">
        <input type="email" id="form2Example1" class="form-control" name="email"/>
        <label class="form-label" for="form2Example1">Email address</label>
    </div>

    <div  style="text-align: left" class="form-label" data-mdb-input-init class="form-outline mb-4">
        <input type="password" id="form2Example2" class="form-control" name="password"/>
        <label for="form2Example2">Password</label>
    </div>

    <div style="text-align: left">
    <button type="submit" data-mdb-button-init data-mdb-ripple-init class="btn btn-success btn-block mb-4">Login</button>
    </div>

</form>

<c:if test="${not empty errorMessage}">
    <script>
        alert("${errorMessage}");
    </script>
</c:if>

</body>
</html>
