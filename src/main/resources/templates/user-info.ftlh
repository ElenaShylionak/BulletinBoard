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
           Доска объявлений "Купилка" по Беларуси
    </a>
</nav>

<h1 style="text-align: center">Подробная информация о пользователе</h1>
<hr>

<div class="container mt-4">
<b>Номер телефона: </b> ${user.phoneNumber}<br>
<b>Email: </b> ${user.email}<br>
    <hr>
<h4>Товары пользователя ${user.name}</h4>
    <hr>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
<#else>
    <h3>Товаров нет</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</div>
</body>
</html>