

<?php
// if($_SESSION["nev"]){
//   $admin = mysqli_query($con,"SELECT admin FROM vevo WHERE nev ='".$_SESSION['nev']."'") or die;
//   $rekord = mysqli_fetch_object($admin);
//   ($rekord->admin == 1);
// }
// else

if(!isset($_POST['gomb'])){
    print("<form action='torol.php' method='post' enctype='multipart/form-data'>");

    print("ID: <input type='number' name='id'><br>");
    print("<select name='Tabla'>");
    print("<option value='ferfi'>Férfi</option>");
    print("<option value='noi'>Női</option>");
    print("<option value='gyerek'>Gyerek</option>");
    print("<option value='Felhasznalo'>felhasznalo</option>");
    print("</select><br>");


    ?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <?php

        print("<br><input type='submit' name='gomb' value='Törlés'><br>");

    print("</form>");

}
else
{

    require("kapcs.php");

    $id = $_POST['id'];

                if($_POST["Tabla"]=="ferfi")
                {
                $query = "DELETE FROM ferfi_ora WHERE Ferfi_ora_id=$id";

                print("<br>A temék törölve!"); 
                }
                else if($_POST["Tabla"]=="noi")
                {
                  $query = "DELETE FROM noi_ora WHERE Noi_ora_id=$id";
                  print("<br>A temék törölve!"); 
                }
                else if($_POST["Tabla"]=="felhasznalo")
                {
                  $query = "DELETE FROM felhasznalo WHERE Felh_id=$id";

                  print("<br>A felhasználó sikeresen törölve!"); 
                }
                else
                {
                  $query = "DELETE FROM gyermek_ora WHERE Gyermek_ora_id=$id";
                  print("<br>A temék törölve!"); 
                }
                mysqli_query($con,$query) or die ('Hiba az adatbevitelnél!');             
    }
?>