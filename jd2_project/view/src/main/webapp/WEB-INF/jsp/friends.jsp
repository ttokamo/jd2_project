<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype HTML>
<html>
<head>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta charset="utf-8">
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<header>
    <a href="/home.html">
        <div class="logo">Логотип</div>
    </a>
    <div class="search">Поиск</div>
</header>

<div class="wrapper">

    <div class="menu">

        <a href="/view/home.html">
            <div class="menu-block">
                <div class="icon">
                    <img src="images/user.png" alt="profile">
                </div>
                <div class="menu-text">Профиль</div>
            </div>
        </a>

        <a href="/view/friends.html">
            <div class="menu-block">
                <div class="icon">
                    <img src="images/friends.png" alt="profile">
                </div>
                <div class="menu-text">Друзья</div>
            </div>
        </a>

        <a href="/view/messages.html">
            <div class="menu-block">
                <div class="icon">
                    <img src="images/message.png" alt="profile">
                </div>
                <div class="menu-text">Сообщения</div>
            </div>
        </a>

        <a href="/view/settings.html">
            <div class="menu-block">
                <div class="icon">
                    <img src="images/settings.png" alt="profile">
                </div>
                <div class="menu-text">Настройки</div>
            </div>
        </a>

    </div>
    <div class="fast-block"></div>

    <div class="friend-box">
        <div class="friend-choice-block">
            <a href="/view/friends.html">
                <div class="inner-friend-choice-block">
                    <div class="inner-friend-choice-block-text">
                        <b>Друзья</b>
                    </div>
                </div>
            </a>
            <a href="/view/users.html">
                <div class="inner-friend-choice-block">
                    <div class="inner-friend-choice-block-text">
                        <b>Все пользователи</b>
                    </div>
                </div>
            </a>
        </div>
        <a href="/view/profile.html">
            <div class="search-friend-block">
                <div class="avatar-in-search"></div>
                <div class="nickname-in-search">Tokamo</div>
            </div>
        </a>
    </div>
</div>

<footer>
    <div class="logout">Выход</div>
</footer>
</body>
</html>