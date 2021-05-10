<?php
    require "connect.php";
    $tarif = $_POST['tarif'];
    $phone = $_POST['phone'];
    $adra = $_POST['adrA'];
    $adrb = $_POST['adrB'];
    $date = date("Y-m-d");
    $time = date("H:i:s");
    if($tarif!=''&&$phone!=''&&$adra!=''&&$adrb!=''){
        mysqli_query($connect,"INSERT INTO `reis`(`point_a`, `point_b`, `phone`, `date`, `time`, `tarif`) VALUES ('".$adra."','".$adrb."','".$phone."','".$date."','".$time."','".$tarif."')");
        sleep(5);
        header("location:index.html");
    }
    else{
        header("location:index.html");
    }
?>