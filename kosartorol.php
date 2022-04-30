<?php
session_start();
    include_once('kapcs.php');

    if ( isset($_GET['m']) && isset($_SESSION['felh_id'] ) ){

        $termekid = $_GET['m'];
        $vevoid = $_SESSION['felh_id'] ;
        $sql = "delete from kosar where felh_id= $vevoid and kosar_id = $termekid;";
        mysqli_query($con,$sql) or die ("Sikertelen adatbeszúrás");
        //  print("<meta http-equiv='refresh' content='0'>");
        header('Location: cart.php');
    }
?>