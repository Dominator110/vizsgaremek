

<?php
session_start();
// if($_SESSION["nev"]){
//   $admin = mysqli_query($con,"SELECT admin FROM vevo WHERE nev ='".$_SESSION['nev']."'") or die;
//   $rekord = mysqli_fetch_object($admin);
//   ($rekord->admin == 1);
// }
// else

if(!isset($_POST['gomb'])){
    print("<form action='feltolt.php' method='post' enctype='multipart/form-data'>");
    print("Termék neve: <input type='text' name='nev'><br>");
    print("Márka: <input type='text' name='marka'><br>");
    print("Szín: <input type='text' name='szin'><br>");
    print("Termék tipus: <input type='text' name='tipus'><br>");
    print("Tipus iD: <input type='number' name='tipus_id'><br>");
    print("Készlet: <input type='number' name='keszlet'><br>");
    print("Ár: <input type='number' name='ar'><br>");
    print("<select name='Neme'>");
    print("<option value='ferfi'>Férfi</option>");
    print("<option value='noi'>Női</option>");
    print("<option value='gyerek'>Gyerek</option>");
    print("</select><br>");


    ?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <?php

    print("Leiras: <input type='textbox' name='leiras'><br>");
    print("Kép: <input type='file' name='kep' ><br>");
    print("<br><input type='submit' name='gomb' value='Rögzítés'><br>");
    
    print("</form>");

}
else
{

    require("kapcs.php");

    $nev = $_POST['nev'];
    $tipus = $_POST['tipus'];
    $tipus_id = $_POST['tipus_id'];
    $marka = $_POST['marka'];
    $szin = $_POST['szin'];
    $keszlet = $_POST['keszlet'];
    $ar = $_POST['ar'];
    $leiras = $_POST['leiras'];
   

    
    $target_dir = "kepek/";
    $target_file = $target_dir . basename($_FILES["kep"]["name"]);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
    
    // Check if image file is a actual image or fake image
    if(isset($_POST["gomb"])) {
      $check = getimagesize($_FILES["kep"]["tmp_name"]);
      if($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
      } else {
        echo "File is not an image.";
        $uploadOk = 0;
      }
    }
    
    // Check if file already exists
    // if (file_exists($target_file)) {
    //   echo "Sorry, file already exists.";
    //   $uploadOk = 0;
    // }
    
    // Check file size
    if ($_FILES["kep"]["size"] > 5000000) {
      echo "Sorry, your file is too large.";
      $uploadOk = 0;
    }
    
    // Allow certain file formats
    if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg") {
      echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
      $uploadOk = 0;
    }
    
    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
      echo "Sorry, your file was not uploaded.";
    // if everything is ok, try to upload file
    } else {
      if (move_uploaded_file($_FILES["kep"]["tmp_name"], $target_file)) {
        echo "The file ". htmlspecialchars( basename( $_FILES["kep"]["name"])). " has been uploaded.";
      } else {
        echo "Sorry, there was an error uploading your file.";
      }
    }

                $kep = "kepek/".$_FILES["kep"]["name"];

                if($_POST["Neme"]=="ferfi")
                {
                $query = "INSERT INTO ferfi_ora (Ferfi_ora_tipus_id,Ferfi_ora_nev,Ferfi_ora_tipus,Ferfi_ora_marka,Ferfi_ora_szin,Ferfi_ora_leiras,Ferfi_ora_keszlet,Ferfi_ora_ar,Ferfi_ora_kep) VALUES ('$tipus_id','$nev','$tipus','$marka','$szin','$leiras','$keszlet','$ar','$kep')";
                }
                else if($_POST["Neme"]=="noi")
                {
                  $query = "INSERT INTO noi_ora (Noi_ora_tipus_id,Noi_ora_nev,Noi_ora_tipus,Noi_ora_marka,Noi_ora_szin,Noi_ora_leiras,Noi_ora_keszlet,Noi_ora_ar,Noi_ora_kep) VALUES ('$tipus_id','$nev','$tipus','$marka','$szin','$leiras','$keszlet','$ar','$kep')";
                }
                else
                {
                  $query = "INSERT INTO gyermek_ora (Gyermek_ora_tipus_id,Gyermek_ora_nev,Gyermek_ora_tipus,Gyermek_ora_marka,Gyermek_ora_szin,Gyermek_ora_leiras,Gyermek_ora_keszlet,Gyermek_ora_ar,Gyermek_ora_kep) VALUES ('$tipus_id','$nev','$tipus','$marka','$szin','$leiras','$keszlet','$ar','$kep')";
                }
                mysqli_query($con,$query) or die ('Hiba az adatbevitelnél!');

                print("<br>A temék felöltve!");               
        
    }
?>