<?php
    $name = $_COOKIE['name'];
    $phone = $_COOKIE['phone'];
    $password = $_COOKIE['password'];
?>
<!DOCTYPE html>
<html>
    <head>
        <title>
            diplom
        </title>
        <link href="style/style.css" rel="stylesheet">
        <link href="style/styleHeader.css" rel="stylesheet">
        <link href="style/styleOrdertaxi.css" rel="stylesheet">
        <link href="style/styleTarifs.css" rel="stylesheet">
        <link href="style/styleAbout.css" rel="stylesheet">
        <link href="style/styleVacansy.css" rel="stylesheet">
        <link href="style/styleNews.css" rel="stylesheet">
        <link href="style/styleMaps.css" rel="stylesheet">
        <link href="style/styleFooter.css" rel="stylesheet">
        <link href="style/styleLogin.css" rel="stylesheet">
        <link href="style/styleAccount.css" rel="stylesheet">
        <link href="style/styleFooter.css" rel="stylesheet">
        <link href="style/stylePersInf.css" rel="stylesheet">
        <meta charset="utf-8">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="main_dep">
            <header class="header">
                <a href="index.html" class="header_logatip">
                </a>
                <div class="header_links_1">
                    <a href="#" class="header_links1_about">О компании</a>
                    <a href="#" class="header_links1_help">Помощь</a>
                    <a href="#" class="header_links1_taxi">Заказать такси</a>
                </div>
                <div class="header_phone_num">
                    <div class="header_phone_num_icon"></div>
                    <a href="tel:+79083323409" class="header_phone">+7(908) 332 34 09</a>
                </div>
                <div class="header_links_2">
                    <a href="login.html" class="header_links_2_login">
                        Вход
                    </a>
                    <a href="register_now.html" class="header_links_2_register">
                        Зарегистрироваться
                    </a>
                </div>
                
            </header>

            <div class="acc_box">
                <div class="acc_box_d">
                    <div class="acc_box_main_box"><div class="acc_box_main_img"></div></div>
                    <h1 class="acc_box_main_h1">Ваши данные</h1>

                    <p class="acc_box_main_name eee">Имя</p>
                    <p class="acc_box_main_name_p"><?php echo $name;?></p>

                    <p class="acc_box_main_name">Мобильный номер</p>
                    <p class="acc_box_main_name_p"><?php echo $phone;?></p>

                    <p class="acc_box_main_name">Пароль</p>
                    <p class="acc_box_main_name_p ccc"><?php echo $password;?></p>
                    <a href="changePas.html" class="acc_box_pass">Изменить пароль</a>
                </div>
            </div>

            <footer class="footer">

                <div class="footer_log">
                    <div class="footer_log_img">

                    </div>
                    <h1 class="footer_log_name">Атлобус</h1>
                </div>

                <div class="footer_inform">
                    <div class="footer_inform_box">
                        <h1 class="footer_inform_box_h1">
                            Компания
                        </h1>
                        <ul class="footer_inform_box_inf_person">
                            <li class="footer_inform_box_inf_person_li">О компании</li>
                            <li class="footer_inform_box_inf_person_li">Новости</li>
                            <li class="footer_inform_box_inf_person_li">Вакансии</li>
                        </ul>
                    </div>
                    <div class="footer_inform_box">
                        <h1 class="footer_inform_box_h1">
                            Правила безопасности
                        </h1>
                        <ul class="footer_inform_box_inf_person">
                            <li class="footer_inform_box_inf_person_li">Для водителей</li>
                            <li class="footer_inform_box_inf_person_li">Для пассажиров</li>
                            <li class="footer_inform_box_inf_person_li">COVID-19</li>
                        </ul>
                    </div>
                    <div class="footer_inform_box">
                        <h1 class="footer_inform_box_h1">
                            Сервисы
                        </h1>
                        <ul class="footer_inform_box_inf_person">
                            <li class="footer_inform_box_inf_person_li">Для водителей</li>
                            <li class="footer_inform_box_inf_person_li">Для пассажиров</li>
                            <li class="footer_inform_box_inf_person_li">Для инвесторов</li>
                        </ul>
                    </div>
                </div>
                <hr class="footer_hr">
                <a href="https://vk.com/murlak" class="footer_a">VK</a>
                <p class="footer_konf">Все права защищены © 2020 Атлобус, разработка сайта - Загидуллин Тимур. All rights reserved © 2020 Atlobus, website development-Zagidullin Timur</p>
            </footer>
        </div>
    </body>
</html>