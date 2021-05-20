<?php
    require "connect.php";
    //require "login.php";
    $name = $_COOKIE['name'];
    $password = $_COOKIE['password'];
    $query = mysqli_query($connect,"select * from `account` where `name`='".$name."' and `password`='".$password."'");
        $result = mysqli_fetch_assoc($query);
        setcookie("name",$result['name']);
        setcookie("password",$result['password']);
        setcookie("pont_a",$result['pont_a']);
        setcookie("pont_b",$result['pont_b']);
        setcookie("dataTime",$result['dataTime']);
        setcookie("phone",$result['phone']);
        header("location:account.php");
?>