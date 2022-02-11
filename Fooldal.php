<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="fooldal.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Document</title>
</head>
<body>
    <header>
        <?php
            include('Navbar.php');

              if(isset($_GET["m"])==1)
              {
                ?>
                <?php
                  include('regisztraciosOldal.php')
                  ?>
                <?php
              }
        ?>
    </header>
    <!-- hatter -->
      <div class="container">
        <div class="box"><a href="#">
          <img src="kepek/fora.jpg"></a>
            <span>Férfikarórák</span>
        </div>
        <div class="box"><a href="#">
        <img src="kepek/nora.jpg"></a>
          <span>Nőiórák</span>
        </div>
        <div class="box"><a href="#">
        <img src="kepek/gyora.jpg"></a>
          <span>Gyerekóra</span>
        </div>
      </div>
    <?php
?>
      <footer>
        <?php
        include('Footer.php')
        ?>
      </footer>
    <script src="js/bootstrap.js"></script>
</body>
</html>