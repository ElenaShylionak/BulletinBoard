<!DOCTYPE html>
<html>
<head>
    <title>BulletinBoard</title>

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
        <img src="/static.images/cart-check-fill.svg" class="d-inline-block align-top" alt="">
        Доска объявлений "Купилка" по Беларуси
    </a>
</nav>

<h1 style="text-align: center">Авторизация</h1>
<hr>
<div class="container mt-4">
<form action="/login " method="post">
    <div class="form-group">
        <label for="email">Электронная почта</label>
        <input type="email" class="form-control <#if RequestParameters.error??>is-invalid</#if>" id="email" name="username">
        <div id="email" class="invalid-feedback">
            Неверный электронная почта
        </div>
    </div>
    <div class="form-group">
        <label for="password">Пароль</label>
        <input type="password" class="form-control <#if RequestParameters.error??>is-invalid</#if>" id="password" name="password">
        <div id="password" class="invalid-feedback">
            Неверный пароль
        </div>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button type="submit" style="width: 100%" class="btn btn-dark">Войти</button>
</form>
<hr>
<h2>Нет аккаунта на Купилка? <a href="/registration">Зарегистрируйся!</a></h2>
</div>


</body>
</html>



