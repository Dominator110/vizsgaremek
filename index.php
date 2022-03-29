<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css2/bootstrap.css">
    <link rel="stylesheet" href="fooldal.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Document</title>
</head>
<body>
    <header>
        <?php
            include('Navbar.php');

            if(isset($_GET["m"]) && $_GET["m"] == 1)
              {
                ?>
                <?php
                  include('regisztraciosOldal.php');
                  ?>
                <?php
              }
        ?>
    </header>
    <?php
         if(!isset($_GET["m"]))
         {
           include('Fooldaltartalma.php');
         }
        if(isset($_GET["m"]) && $_GET["m"] == 2)
        {
          include('teszt.php');
       }

      include('Feltolt.php');
    ?>

      <footer>
        <?php
        include('Footer.php');
        ?>
      </footer>
    <script src="js/bootstrap.js"></script>
</body>
</html>