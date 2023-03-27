<!--<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/static/css/style.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
          crossorigin="anonymous">
</head>
<body>

<nav class="navbar navbar-light bg-light">
    <a class="navbar-brand" href="#">
        <img src="/static.images/money-bag-svgrepo-com.svg" class="d-inline-block align-top" alt="">
        Доска объявлений "Купилка" по Беларуси
    </a>
</nav>

<hr>

<h1 style="text-align: center">Личный кабинет</h1>
<hr>
<br>
<div style="text-align: center">
    <img src="/static/images/avatar.png"
         style="border:2px solid black; border-radius: 20px" height="120">
    <br>
    <br>
    <h2>${user.name}</h2>
    <br>
    Электоронная почта: <b>${user.email}</b>
    <br>
    Номер телефона: <b>${user.phoneNumber}</b>
    <br>
    <br>
    <#if user.isAdmin()>
        <a class="btn btn-dark mb-3" style="text-align: center; width: 100%"
           href="/admin">
            Панель администратора
        </a><br>
    </#if>
    <a class="btn btn-dark mb-3" style="text-align: center; width: 100%"
       href="/my/products">
        Мои товары
    </a>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" style="text-align: center; width: 100%" class="btn btn-danger mb-2">
            Выйти из аккаунта
        </button>
    </form>
</div>
</body>
</html> -->
