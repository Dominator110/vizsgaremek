<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/navbar.css" rel="stylesheet">
    <link href="css/kikeresett.css" rel="stylesheet">
    <title>Navbar</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
  <img src="kepek/logo.png" class="logonavbar">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class='nav-item'>
          <a class='nav-link ' href='/'>Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Elérhetőségek</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Termékek
          </a>
          <ul class="dropdown-menu bg-dark  dropdown-menu-dark" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="Ferfiorak">Férfi órák</a></li>
            <li><a class="dropdown-item" href="Noiorak">Női órák</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="Gyerekorak">Gyermek órák</a></li>
          </ul>
        </li>
        <?php
        error_reporting(0);
        print("<form method='post'>");
        print("<li class='nav-item'>");
        print("<a class='nav-link' href='regisztracio'>Regisztrácio</a>");
        print("</li>");

        print("</form>");
        ?>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" name="keywords" placeholder="Keresés" aria-label="Search">
        <button class="btn btn-outline-success"  type="submit">Keresés</button>
      </form>
    </div>
  </div>
</nav>
<div class="container">
        <div class="row">
<?php 
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
$mysqli = new mysqli("localhost", "root", "", "webshop");

if($_GET['keywords'] != "")
{
    $kulcs = isset($_GET['keywords']) ? '%'.$_GET['keywords'].'%' : '';
}

$query = "SELECT Ferfi_ora_nev,Ferfi_ora_kep,Ferfi_ora_leiras,Ferfi_ora_marka,Ferfi_ora_ar FROM ferfi_ora where Ferfi_ora_nev like '$kulcs'";

$result = $mysqli->query($query);

/* fetch associative array */
while ($row = $result->fetch_assoc())
 {
  foreach($result as $proditems) :
  ?>
                    <div class="col-sm-3 col-md-6 col-lg-4">
							                        <div class="card">
								                        <div class="card-body text-center">
									                            <img src=<?= $proditems['Ferfi_ora_kep']; ?> class="product-img">
                                                                <h5 class="card-title"><b><?= $proditems['Ferfi_ora_marka']; ?></b></h5>
									                        <h5 class="card-title"><b><?= $proditems['Ferfi_ora_nev']; ?></b></h5>
									                        <p class="card-text small"><?= $proditems['Ferfi_ora_leiras']; ?></p>
									                        <p class="tags"><?= $proditems['Ferfi_ora_ar']; ?>Ft</p>
									                        <a href="termekek.php" target="_blank" class="btn btn-success button-text"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Még több óra</a>
								                        </div>
							                        </div>
						                        </div>
                        <?php
                    endforeach;
}

?>
</div>
  </div>
</body>
</html>

