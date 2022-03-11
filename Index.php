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

    <?php
      if(isset($_GET["m"])==0)
      {
        print("<div class='container'>");
          print("<div class='box'><a href='#'>");
            print("<img src='kepek/fora.jpg'></a>");
              print("<span>Férfikarórák</span>");
        print("</div>");
        print("<div class='box'><a href='#'>");
          print("<img src='kepek/nora.jpg'></a>");
            print("<span>Nőiórák</span>");
        print("</div>");
        print("<div class='box'><a href='#'>");
          print("<img src='kepek/gyora.jpg'></a>");
            print("<span>Gyerekóra</span>");
        print("</div>");
      print("</div>");
      }
    ?>
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