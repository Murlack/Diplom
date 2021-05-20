<?php
    require "connect.php";
    $p1 = $_POST['password1'];
    $p2 = $_POST['password2'];
    $name = $_COOKIE['name'];
    $password = $_COOKIE['password'];
    if ($p1!='' && $p2!=''){
        if($p1 == $p2){
            mysqli_query($connect,"UPDATE `account` SET `password`='".$p1."' WHERE `name`='".$name."'");//and `account`.`password`='".$password."'"
            header("location:login.html");
            // $resd = mysqli_fetch_assoc($res);
            // print_r($resd);
        }
        else{
            header("location:changePas.html");
        }
    }
    else{
        header("location:changePas.html");
    }
?>