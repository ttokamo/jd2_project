<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype HTML>
<html>
<head>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <title>Home</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/lightbox.css">
</head>
<body>
<header>
    <a href="/view/home.html">
        <div class="logo">Логотип</div>
    </a>
    <div class="search">Поиск</div>
</header>

<div class="wrapper">
    <div class="avatar">
    </div>
    <div class="info-block">

        <c:set var = "user" value="${user}"/>
        <c:set var ="userId" value="${user.getId()}"/>

        <div class="nickname">
            <b><c:out value="${user.getNickname()}"/></b>
        </div>
        <div class="info">
            <b>
                Пол: <c:out value="${user.getGender()}" default="Не указано"/><br>
                Возраст: <c:out value="${user.getAge()}" default="Не указано"/><br>
                Дата рождения: <c:out value="${user.getBirthday()}" default="Не указано"/>
            </b>
        </div>
    </div>

    <div class="fast-block"></div>

    <div class="menu">

        <a href="/view/profile.html">
            <div class="menu-block">
                <div class="icon">
                    <img src="../images/user.png" alt="profile">
                </div>
                <div class="menu-text">Профиль</div>
            </div>
        </a>

        <a href="/view/friends.html">
            <div class="menu-block">
                <div class="icon">
                    <img src="../images/friends.png" alt="friends">
                </div>
                <div class="menu-text">Друзья</div>
            </div>
        </a>

        <a href="/view/messages.jsp">
            <div class="menu-block">
                <div class="icon">
                    <img src="../images/message.png" alt="messages">
                </div>
                <div class="menu-text">Сообщения</div>
            </div>
        </a>

        <a href="/view/settings.html">
            <div class="menu-block">
                <div class="icon">
                    <img src="../images/settings.png" alt="settings">
                </div>
                <div class="menu-text">Настройки</div>
            </div>
        </a>

    </div>
    <div class="news"></div>
</div>
<footer>
    <div class="logout">Выход</div>
</footer>
</body>
</html>