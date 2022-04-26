<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="rendezvenyek/bovebbenStyle.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bovebben.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js%22%3E"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
</head>
<body>
    <?php
    require("kapcs.php");

    $rendezvenyID = mysqli_query($con,"SELECT Ferfi_ora_nev,Ferfi_ora_kep,Ferfi_ora_leiras,Ferfi_ora_marka,Ferfi_ora_ar FROM ferfi_ora WHERE Ferfi_ora_id='".$_GET['m']."';") or die ("Nem sikerült a lekérdezés!");
    $KivalasztottOldal = $_GET['m'];
    if($rendezvenyID->num_rows>0){
    while($row = $rendezvenyID->fetch_assoc()){

        $nev = $row["Ferfi_ora_nev"];
        $liras = $row["Ferfi_ora_leiras"];
        $marka = $row["Ferfi_ora_marka"];
        $ar = $row["Ferfi_ora_ar"];
        $kep = $row["Ferfi_ora_kep"];
        ?>
   
        <?php
    }}
    ?>
    
<script src="js/bootstrap.js"></script>
</body>
</html>