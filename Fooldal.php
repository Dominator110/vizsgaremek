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
        session_start();
            include('Navbar.php');

              if(isset($_SESSION['name']))
              {
                ?>
                <a class="btn btn-primary" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample">
                  Link with href
                </a>
                <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
                  Button with data-bs-target
                </button>                <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
              
                <div class="offcanvas-header">
                  <h5 class="offcanvas-title" id="offcanvasExampleLabel">Offcanvas</h5>
                  <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                  <div>
                    Some text as placeholder. In real life you can have the elements you have chosen. Like, text, images, lists, etc.
                  </div>
                  <div class="dropdown mt-3">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown">
                      Dropdown button
                    </button>
                  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <li><a class="dropdown-item" href="#">Action</a></li>
                    <li><a class="dropdown-item" href="#">Another action</a></li>
                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                  </ul>
                </div>
              </div>
            </div>
          <?php
          } 
        ?>
    </header>
    <!-- hatter -->
      <div class="container">
        <div class="box"><a href="#">
          <img src="kepek/fora.jpg"></a>
            <span>For Men</span>
        </div>
        <div class="box"><a href="#">
          <img src="kepek/nora.jpg"></a>
          <span>For Women</span>
        </div>
        <div class="box"><a href="#">
          <img src="kepek/gyora.jpg"></a>
          <span>For Children</span>
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