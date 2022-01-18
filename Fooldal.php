<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.css">
    <title>Document</title>
</head>
<body>
    <header>
        <?php
            include('Navbar.php');

            
        ?>

  <!-- Background image -->
  <div
    class="p-5 text-center bg-image"
    style="
      background-image: url('ferfiora.png');
      background-repeat: no-repeat;
      background-position: center;
      background-size:cover;
    "
  >
    <div class="mask" style="background-color: rgba(0, 0, 0, 0.6);">
      <div class="d-flex justify-content-center align-items-center h-100">
        <div class="text-white">
          <h1 class="mb-3">Heading</h1>
          <h4 class="mb-3">Subheading</h4>
          <a class="btn btn-outline-light btn-lg" href="#!" role="button"
          >Call to action</a
          >
        </div>
      </div>
    </div>
  </div>
  <div
    class="p-5 text-center bg-image"
    style="
      background-image: url('noiora.jpg');
      background-repeat: no-repeat;
      background-position: center;
      background-size:cover;
    "
  >
    <div class="mask" style="background-color: rgba(0, 0, 0, 0.6);">
      <div class="d-flex justify-content-center align-items-center h-100">
        <div class="text-white">
          <h1 class="mb-3">Heading</h1>
          <h4 class="mb-3">Subheading</h4>
          <a class="btn btn-outline-light btn-lg" href="#!" role="button"
          >Call to action</a
          >
        </div>
      </div>
    </div>
  </div>
  <div
    class="p-5 text-center bg-image"
    style="
      background-image: url('Gyermekora.jpg');
      background-repeat: no-repeat;
      background-position: center;
      background-size:900px 300px;
    "
  >
    <div class="mask" style="background-color: rgba(0, 0, 0, 0.6);">
      <div class="d-flex justify-content-center align-items-center h-100">
        <div class="text-white">
          <h1 class="mb-3">Heading</h1>
          <h4 class="mb-3">Subheading</h4>
          <a class="btn btn-outline-light btn-lg" href="#!" role="button"
          >Call to action</a
          >
        </div>
      </div>
    </div>
  </div>
  <footer>

  </footer>
    <?php
    include('Footer.php')
    ?>
    </header>
    <script src="js/bootstrap.js"></script>
</body>
</html>