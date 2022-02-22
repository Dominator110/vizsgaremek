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
    include('Navbar.php')
    ?>
    <div class="container mt-5">
        <div class="card">
            <div class="card-body">
                <form action="Login.php" method="post">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" name="email" class="form-control" id="email" aria-describedby="emailHelp" required="">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Password</label>
                        <input type="password" name="password" class="form-control" id="password" required="">
                    </div>
                    <input type="submit" name="password-reset-token" class="btn btn-primary" value="Register">
                    <?php
                    include('Footer.php');
                    ?>
                </form>
            </div>
        </div>
    </div>
    <?php
    if(isset($_POST['password-reset-token'])){
        $con = mysqli_connect("localhost","root","","webshop");

    if (mysqli_connect_errno())
    {
        print( "Adatbázis kapcsolódási hiba!  " . mysqli_connect_error());
    }
    
    $email = $_POST['email'];
    $jelszo = $_POST['password'];
    $secure_pass = md5($jelszo);
    
    $query = "SELECT * FROM felhasznalo WHERE email='$email' AND jelszo='$secure_pass'";
    $results = mysqli_query($con, $query);

    if(mysqli_num_rows($results) > 0)
    {
        $_SESSION['nev2'] = $nev2;
        
        print("<a href='index.php'>Sikeres belépés</a>");
    }
    else
    {
        print("<a href='Bejelentkezes.php'>Nem létezik ilyen felhasználó!</a>");
    }
    }
    ?>
</body>
</html>