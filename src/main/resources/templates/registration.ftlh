<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/static/css/style.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
          crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-light bg-light">
    <a class="navbar-brand" href="#">
        Доска объявлений "Купилка" по Беларуси</a>
</nav>
<h1 style="text-align: center">Регистрация</h1>
<hr>
<div class="container mt-4">
<form action="/registration" method="post">
    <div class="form-group">
        <label for="name">Имя пользователя</label>
        <input type="text" class="form-control" required id="name" name="name">
    </div>
    <div class="form-group">
        <label for="email">Электронная почта</label>
        <input type="email" class="form-control" id="email" required name="email">
    </div>
    <div class="form-group">
        <label for="phoneNumber">Номер телефона</label>
        <input type="text" class="form-control" id="phoneNumber" required name="phoneNumber">
    </div>
    <div class="form-group">
        <label for="password">Пароль</label>
        <input type="password" class="form-control" id="password" required name="password">
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button type="submit" style="width: 100%" class="btn btn-dark">Зарегистрироваться</button>
</form>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>


</div>
</body>
</html>