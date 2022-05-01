<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="fooldal.css">
</head>
<body>
    <header>
        <?php
              session_start();
              include('Navbar.php');
              include('header.php');
              include('kereso.php');
          

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
     if(isset($_GET["m"]) && $_GET["m"] == 5)
     {
       include('login.php');
    }
    if(isset($_GET["m"]) && $_GET["m"] == 6)
    {
      include('feltolt.php');
      include('torol.php');
   }
    ?>

      <footer>
        <?php
        include('Footer.php');
        ?>
      </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>