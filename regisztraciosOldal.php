<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- CSS -->
</head>
<body>
    <?php
    error_reporting(0);
    
    if(!isset($_POST['password-reset-token'])){
    print("<div class='container mt-5'>");
    print("<div class='card'>");
    print("<div class='card-header text-center'>");
    print("Regisztráció");
    print("</div>");

    print("<div class='card-body'>");
    print("<form method='post'>");
    print("<div class='form-group'>");
    print("<label for='exampleInputEmail1'>Felhasználónév</label>");
    print("<input type='text' name='name' class='form-control' id='name' required=''>");
    print("</div>");

    print("<div class='form-group'>");
    print("<label for='exampleInputEmail1'>E-mail-cím</label>");
    print("<input type='email' name='email' class='form-control' id='email' aria-describedby='emailHelp' required=''>");
    print("<small id='emailHelp' class='form-text text-muted'>Sohasem fogjuk megosztani az email-címed bárki mással.</small>");
    print("</div>");

    print("<div class='form-group'>");
    print("<label for='exampleInputEmail1'>Jelszó</label>");
    print("<input type='password' name='password' class='form-control' id='password' required=''>");
    print("</div>");

    print("<div class='form-group'>");
    print("<label for='exampleInputEmail1'>Jelszó újra </label>");
    print("<input type='password' name='cpassword' class='form-control' id='cpassword' required=''>");
    print("</div>");   
    print("<input type='submit' name='password-reset-token' class='btn btn-primary' value='Regisztráció'>");
    print("</form>");
    }
    require("kapcs.php");

    $username = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $secure_pass = md5($password);
    
    $CheckSameName = "SELECT * FROM felhasznalo WHERE Felh_nev=\"".$GLOBALS['username']."\"";
    $result = mysqli_query($GLOBALS['con'], $CheckSameName);

    if(mysqli_num_rows($result) > 0)
        {

            print("<a href='regisztracio'>Már létezik ilyen felhasználó</a>");
        }
        else
        {
            $query = "INSERT INTO felhasznalo (Felh_nev, jelszo, email) VALUES ('$username','$secure_pass','$email')";
            print("<a href='bejelentkezes'>Sikeres regisztráció!</a>");
        }     
        mysqli_query($con, $query) or die ('Hiba az adatbevitelnél!');
    ?>
</form>
</div>
</div>
</div>
</body>
</html>