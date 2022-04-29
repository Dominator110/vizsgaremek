<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bovebben.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js%22%3E"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
    <?php
    require("kapcs.php");
    include("Navbar.php");
    //include('kereso.php');
    $FerfioraID = mysqli_query($con,"SELECT Ferfi_ora_nev,Ferfi_ora_kep,Ferfi_ora_leiras2,Ferfi_ora_marka,Ferfi_ora_ar FROM ferfi_ora WHERE Ferfi_ora_id='".$_GET['m']."';") or die ("Nem sikerült a lekérdezés!");
    $KivalasztottOldal = $_GET['m'];
    if($FerfioraID->num_rows>0){
    while($row = $FerfioraID->fetch_assoc()){

        $nev = $row["Ferfi_ora_nev"];
        $leiras = $row["Ferfi_ora_leiras2"];
        $marka = $row["Ferfi_ora_marka"];
        $ar = $row["Ferfi_ora_ar"];
        $kep = $row["Ferfi_ora_kep"];
        ?>
            <div class="height d-flex justify-content-center align-items-center">
                <div class="card p-3">
                    <div class="d-flex justify-content-between align-items-center ">
                        <div class="mt-2">
                            <h4 class="text-uppercase">Termék</h4>
                                <div class="mt-5">
                                <h5 class="text-uppercase mb-0">Név :</h5>
                                    <h5 class="text-uppercase mb-0"><?= $row["Ferfi_ora_nev"] ?></h5>
                                    <h5 class="text-uppercase mb-0">Márka :</h5>
                                        <h1 class="main-heading mt-0"><?= $row["Ferfi_ora_marka"] ?></h1>
                                        <h5 class="text-uppercase mb-0">Ár :</h5>
                                        <h6 class="text-muted ml-1"><?= $row["Ferfi_ora_ar"] ?>Ft</h6>
                                        </div>
                                        <h5 class="text-uppercase mb-0">Leirás :</h5>
                                </div>
                         </div>
                    <div class="image"> <img src=<?= $row["Ferfi_ora_kep"] ?> width="300"> </div>
                    <p><?= $row["Ferfi_ora_leiras2"] ?></p> <button class="btn btn-dark">Kosárba</button>
                    </div>

                </div>
            </div>
        <?php

    }}
    ?>
    <?php
    $NoioraID = mysqli_query($con,"SELECT Noi_ora_nev,Noi_ora_kep,Noi_ora_leiras2,Noi_ora_marka,Noi_ora_ar FROM noi_ora WHERE Noi_ora_id='".$_GET['a']."';") or die ("Nem sikerült a lekérdezés!");
    $KivalasztottOldal = $_GET['a'];
    if($NoioraID->num_rows>0){
    while($row = $NoioraID->fetch_assoc()){

        $nev2 = $row["Noi_ora_nev"];
        $leiras2 = $row["Noi_ora_leiras2"];
        $marka2 = $row["Noi_ora_marka"];
        $ar2 = $row["Noi_ora_ar"];
        $kep2 = $row["Noi_ora_kep"];
        ?>
            <div class="height d-flex justify-content-center align-items-center">
                <div class="card p-3">
                    <div class="d-flex justify-content-between align-items-center ">
                        <div class="mt-2">
                            <h4 class="text-uppercase">Bővebben</h4>
                                <div class="mt-5">
                                <h5 class="text-uppercase mb-0">Név :</h5>
                                    <h5 class="text-uppercase mb-0"><?= $row["Noi_ora_nev"] ?></h5>
                                    <h5 class="text-uppercase mb-0">Márka :</h5>
                                        <h1 class="main-heading mt-0"><?= $row["Noi_ora_marka"] ?></h1>
                                        <div class="d-flex flex-row user-ratings">
                                        <h5 class="text-uppercase mb-0">Ár :</h5>
                                        <h6 class="text-muted ml-1"><?= $row["Noi_ora_ar"] ?>Ft</h6>
                                        </div>
                                        <h5 class="text-uppercase mb-0">Leirás :</h5>
                                </div>
                         </div>
                    <div class="image"> <img src=<?= $row["Noi_ora_kep"] ?> width="300"> </div>
                </div>
             <p><?= $row["Noi_ora_leiras2"] ?></p> <button class="btn btn-dark">Kosárba</button>
                </div>
            </div>
        <?php

    }}
    ?>
        <?php
    $GyermekoraID = mysqli_query($con,"SELECT Gyermek_ora_nev,gyermek_ora_kep,Gyermek_ora_leiras2,Gyermek_ora_marka,Gyermek_ora_ar FROM gyermek_ora WHERE Gyermek_ora_id='".$_GET['j']."';") or die ("Nem sikerült a lekérdezés!");
    $KivalasztottOldal = $_GET['j'];
    if($GyermekoraID->num_rows>0){
    while($row = $GyermekoraID->fetch_assoc()){

        $nev3 = $row["Gyermek_ora_nev"];
        $leiras3 = $row["Gyermek_ora_leiras2"];
        $marka3 = $row["Gyermek_ora_marka"];
        $ar3 = $row["Gyermek_ora_ar"];
        $kep3 = $row["gyermek_ora_kep"];
        ?>
            <div class="height d-flex justify-content-center align-items-center">
                <div class="card p-3">
                    <div class="d-flex justify-content-between align-items-center ">
                        <div class="mt-2">
                            <h4 class="text-uppercase">Bővebben</h4>
                                <div class="mt-5">
                                <h5 class="text-uppercase mb-0">Név :</h5>
                                    <h5 class="text-uppercase mb-0"><?= $row["Gyermek_ora_nev"] ?></h5>
                                    <h5 class="text-uppercase mb-0">Márka :</h5>
                                        <h1 class="main-heading mt-0"><?= $row["Gyermek_ora_marka"] ?></h1>
                                        <div class="d-flex flex-row user-ratings">
                                        <h5 class="text-uppercase mb-0">Ár :</h5>
                                        <h6 class="text-muted ml-1"><?= $row["Gyermek_ora_ar"] ?>Ft</h6>
                                        </div>
                                        <h5 class="text-uppercase mb-0">Leirás :</h5>
                                </div>
                         </div>
                    <div class="image"> <img src=<?= $row["gyermek_ora_kep"] ?> height="350" width="200"> </div>
                </div>
             <p><?= $row["Gyermek_ora_leiras2"] ?></p> <button class="btn btn-dark">Kosárba</button>
                </div>
            </div>
        <?php

    }}
    ?>
    <?php
    include('Footer.php');
    ?>


<script src="js/bootstrap.js"></script>
</body>
</html>