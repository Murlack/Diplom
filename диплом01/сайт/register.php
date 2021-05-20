<?php
    require "connect.php";
    $name=$_POST['name'];
    $password1=$_POST['password1'];
    $password2=$_POST['password2'];
    $phone=$_POST['phone'];
    $today = date("Y-m-d H:i:s");

    if($name!= '' && $password1!='' &&$password2!=''&&$phone!=''){
        $query= mysqli_query($connect,"select `name` from `account` where `name`='".$name."'");
        $result = mysqli_fetch_assoc($query);
        if($name == $result['name']){
            header("location:register_now.html");
            echo "аккаунт с данным именем уже существует вернитесь назад чтобы заполнить форму заново";
            exit;
        }
        else{
            if($password1 == $password2){
                mysqli_query($connect,"insert into `account`(`name`, `password`, `phone`) values ('".$name."','".$password1."','".$phone."')");
                header("location:login.html");
                exit;
            }
            else{
                header("location:register_now.html");
                exit;
            }
        }
    }
    else{
        header("location:register_now.html");
        exit;
    }
?>