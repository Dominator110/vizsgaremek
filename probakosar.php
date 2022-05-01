<?php
include('kapcs.php');
if(isset($_POST['kosarba']) && isset($_SESSION['Felh_id'])){

    $Ferfi_ora_id = $_GET['m'];
    $vevoid = $_SESSION['Felh_id'];
    $sql = "INSERT INTO kosar (kosar_nev,kosar_ar,Felh_id,) VALUE ('$nev','$marka','$ar','$Felh_id');";
    mysqli_query($con,$sql) or die ("Sikertelen adatbeszúrás");
    print("<meta http-equiv='refresh' content='0'>");
}
?>