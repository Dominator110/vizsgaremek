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
                  <div class="container mt-5">
                  <div class="card">
                  <div class="card-header text-center">
                  User Registration with Email Verification in PHP
                  </div>
                                
                  <div class="card-body">
                  <form action="store-registration-send-email.php" method="post">
                  <div class="form-group">
                  <label for="exampleInputEmail1">Name</label>
                  <input type="text" name="name" class="form-control" id="name" required="">
                  </div>      
                                
                  <div class="form-group">
                  <label for="exampleInputEmail1">Email address</label>
                  <input type="email" name="email" class="form-control" id="email" aria-describedby="emailHelp" required="">
                  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                  </div>
                                
                  <div class="form-group">
                  <label for="exampleInputEmail1">Password</label>
                  <input type="password" name="password" class="form-control" id="password" required="">
                  </div>
                                
                  <div class="form-group">
                  <label for="exampleInputEmail1">Confirm Password</label>
                  <input type="password" name="cpassword" class="form-control" id="cpassword" required="">
                  </div>   
                  <input type="submit" name="password-reset-token" class="btn btn-primary">
                  </form>
                  </div>
                  </div>
                  </div>
                <?php
              }
        ?>
    </header>
    <!-- Background image -->
    <?php 
    if(isset($_GET["m"])==0)
    {
      ?>
      <!-- <div style="
        background-image: url('fora.jpg');
        background-repeat: no-repeat;
        background-position: center;
        background-size:1200px 600px;
        margin-left:auto;
        margin-right:auto;
        border-radius: 100px 100px 0px 0px;
        height:600px;
        width:1200px;
        " class="mask">
        <a href='https://stackoverflow.com/questions/796087/make-a-div-into-a-link' style=" text-decoration:none;  ">
        <div id="div-link" class="d-flex justify-content-center align-items-top h-100" >
          <div class="text-white">
            <h1 class="mb-3">Férfiórák</h1>
          </div>
        </div>
      </div>
      <div style="
        background-image: url('noiora.jpg');
        background-repeat: no-repeat;
        background-position: center;
        background-size:1200px 600px;
        margin-left:auto;
        margin-right:auto;
        height:600px;
        width:1200px;
        " class="mask" style="background-color: rgba(0, 0, 0, 0.6);">
        <a href='https://stackoverflow.com/questions/796087/make-a-div-into-a-link' style=" text-decoration:none;  ">
        <div id="div-link" class="d-flex justify-content-center align-items-center h-100" >
          <div class="text-blue">
            <h1 class="mb-3">Gyermekóra</h1>
          </div>
        </div>
      </div>
      <div style="
        background-image: url('Gyermekora.jpg');
        background-repeat: no-repeat;
        background-position: center;
        background-size:1200px 600px;
        margin-left:auto;
        margin-right:auto;
        border-radius:0px 0px 100px 100px;
        height:600px;
        width:1200px;
        " class="mask" style="background-color: rgba(0, 0, 0, 0.6);">
        <a href='https://stackoverflow.com/questions/796087/make-a-div-into-a-link' style=" text-decoration:none;  ">
        <div id="div-link" class="d-flex justify-content-center align-items-center h-100" >
          <div class="text-blue">
            <h1 class="mb-3">Gyermekóra</h1>
          </div>
        </div>
      </div> -->
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
    }
?>
      <footer>
        <?php
        include('Footer.php')
        ?>
      </footer>
    <script src="js/bootstrap.js"></script>
</body>
</html>