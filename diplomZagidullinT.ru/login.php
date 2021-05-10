<?php
    require "connect.php";
    $name = $_POST["name"];
    $password = $_POST["password"];
    if($name!="" && $password!=""){
        
        $query = mysqli_query($connect,"select `name`,`password` from `account` where `name`='".$name."' and `password`='".$password."'");
        $result = mysqli_fetch_assoc($query);
        if(isset($result)){
            setcookie("name",$name);
            setcookie("password",$password);
            header("location:fullinfp.php");
        }
        else{
            header("location:login.html");
        }
    }
    else{
        header("location:login.html");
    }
?>