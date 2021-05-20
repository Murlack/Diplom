<?php
    require "connect.php";
    $adrA = $_COOKIE['pont_a'];
    $adrB = $_COOKIE['pont_b'];
    $DT = $_COOKIE['dataTime'];
    $phone = $_COOKIE['phone'];
    $form = '<div class="coneiner_box_datetime">
    <hr class="history_box_hr">
    <div class="history_box_dt">
        <div class="history_box_data">10.05.2021</div>
        <div class="history_box_hr2_div"><hr class="history_box_hr2"></div>
        <div class="history_box_time">13:55</div>
    </div>
    <div class="history_box_map12">
        <div class="history_box_map12_A">Ломженская 14а</div>
        <div class="history_box_hr2_div"><hr class="history_box_hr3"></div>
        <div class="history_box_map12_B">Проспект победы д3</div>
    </div>
    <hr class="history_box_hr">
</div>';
    $query = mysqli_query($connect,"select * from `reis` where `phone`='".$phone."'");
    $result = mysqli_fetch_assoc($query);
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
        <link href="style/styleChangePas.css" rel="stylesheet">
        <link href="style/styleHistory.css" rel="stylesheet"> 
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
            <div class="history">
                <div class="history_box1">
                    <div class="history_box_box_h">
                        <h1 class="history_box_box_h_h1">История поездок</h1>
                    </div>
                    <div class="history_box_box_h">
                        <h1 class="history_box_box_h_h2">Все истории</h1>
                    </div>

                    <?php
                        foreach($query as $v){
                            echo '<div class="coneiner_box_datetime">
                            <hr class="history_box_hr">
                            <div class="history_box_dt">
                                <div class="history_box_data">'.$v["date"].'</div>
                                <div class="history_box_hr2_div"><hr class="history_box_hr2"></div>
                                <div class="history_box_time">'.$v['time'].'</div>
                            </div>
                            <div class="history_box_map12">
                                <div class="history_box_map12_A">'.$v['point_a'].'</div>
                                <div class="history_box_hr2_div"><hr class="history_box_hr3"></div>
                                <div class="history_box_map12_B">'.$v['point_b'].'</div>
                            </div>
                            <hr class="history_box_hr">
                        </div>';
                        }
                    ?>
                    
                </div>
            </div>
        </div>
    </body>
</html>
<!-- <div class="coneiner_box_datetime">
                        <hr class="history_box_hr">
                        <div class="history_box_dt">
                            <div class="history_box_data">10.05.2021</div>
                            <div class="history_box_hr2_div"><hr class="history_box_hr2"></div>
                            <div class="history_box_time">13:55</div>
                        </div>
                        <div class="history_box_map12">
                            <div class="history_box_map12_A">Ломженская 14а</div>
                            <div class="history_box_hr2_div"><hr class="history_box_hr3"></div>
                            <div class="history_box_map12_B">Проспект победы д3</div>
                        </div>
                        <hr class="history_box_hr">
                    </div> -->