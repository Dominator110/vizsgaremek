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
            include('header.php');

        ?>
    </header>
    <?php
              if(!isset($_GET["m"]))
              {
                ?>
                <?php

                include('Fooldaltartalma.php');
                include('slider.php');
                  ?>
                <?php
              }

        if(isset($_GET["m"]) && $_GET["m"] == 1)
        {
          include('regisztraciosOldal.php');
        }
        if(isset($_GET["m"]) && $_GET["m"] == 2)
        {
          include('termekek.php');
       }

       if(isset($_GET["m"]) && $_GET["m"] == 3)
       {
         include('noi-termekek.php');
      }
      if(isset($_GET["m"]) && $_GET["m"] == 4)
      {
        include('gyerek-termekek.php');
     }


     // include('Feltolt.php');
    ?>

      <footer>
        <?php
        include('Footer.php');
        ?>
      </footer>
    <script src="js/bootstrap.js"></script>
</body>
</html>