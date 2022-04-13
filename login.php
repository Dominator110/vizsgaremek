<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>User Registration with Email Verification in PHP</title>
<!-- CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <?php
    session_start();
    error_reporting(0);
    include('Navbar.php');
    if(!isset($_POST['login']))
    {
    ?>
    <div class="container mt-5">
        <div class="card">
            <div class="card-body">
                <form method="post">

                    <div class="form-group">
                        <label for="exampleInputEmail1">Name</label>
                        <input type="text" name="name" class="form-control" id="name" required="">
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Password</label>
                        <input type="password" name="password" class="form-control" id="password" required="">
                    </div>

                    <input type="submit" name="login" class="btn btn-primary" value="Login">
                </form>
            </div>
        </div>
    </div>
    
    <?php
    }
    require('kapcs.php');
    
    $bejelentkezettNeve = $_SESSION['name'];
    $username = $_POST['name'];
    $jelszo = $_POST['password'];
    $secure_pass = md5($jelszo);

    if(isset($_POST['login']))
    {
        $query = "SELECT * FROM felhasznalo WHERE Felh_nev='$username' AND jelszo='$secure_pass'";
    }
    $results = mysqli_query($con, $query);

    if(mysqli_num_rows($results) > 0)
    {
        print("<a href='Fooldal.php'>Sikeres belépés</a>");
    }
    else
    {
        print("<a href='login.php'>Nem létezik ilyen felhasználó!</a>");
    }
    include('Footer.php');
    ?>
</body>
</html>