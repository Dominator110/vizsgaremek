<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <?php
    session_start();
    error_reporting(0);
    if(!isset($_POST['login']))
    {
    ?>
    <div class="container mt-5">
        <div class="card">
            <div class="card-body">
                <form method="post">

                    <div class="form-group">
                        <label for="exampleInputEmail1">Felhasználónév </label>
                        <input type="text" name="name" class="form-control" id="name" required="">
                    </div>

                    <div class="form-group">
                        <label for="password">Jelszó</label>
                        <input type="password" name="password" class="form-control" id="password" required="">
                    </div>

                    <input type="submit" name="login" class="btn btn-dark" value="Bejelentkezés">
                </form>
            </div>
        </div>
    </div>
    
    <?php
    }
    else
    {   
        require('kapcs.php');        
        
        $username = $_POST["name"];        
        $jelszo = $_POST["password"];
        $secure_pass = md5($jelszo);        

        // if(isset($_POST['login'])){
            Login();
        // }    
    }

    function Login(){

        global $username, $jelszo, $secure_pass,$emailkuldo;

      /*
        $_SESSION["login"] = true;
        $_SESSION["bejelentkezettNeve"] = $GLOBALS['username'];        
        $_SESSION["felh_id"] = 12345678;
        print("<a href='index.php'>Sikeres belépés</a>");
      */
  
        $_SESSION['login'] = false;

        $query = "SELECT * FROM felhasznalo WHERE Felh_nev=\"".$GLOBALS['username']."\" AND jelszo=\"".$GLOBALS['secure_pass']."\"";

        $results = mysqli_query($GLOBALS['con'], $query);

        if(mysqli_num_rows($results) > 0)
        {
            foreach($results as $row) :
                $_SESSION['login'] = true;
                $_SESSION['bejelentkezettNeve'] = $username;
                $_SESSION['felh_id'] = $row['Felh_id'];
                print("<a href='/'>Sikeres belépés</a>");
            endforeach;
        }
        else
        {
            print("<a href='bejelentkezes'>Nem létezik ilyen felhasználó!</a>");
        }             
    }

    ?>
</body>
</html>