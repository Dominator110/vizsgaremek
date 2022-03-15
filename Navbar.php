<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Főmenü</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class='nav-item'>
          <a class='nav-link' href='/'>Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Elérhetőségek</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Termékek
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="Férfiórák">Férfi órák</a></li>
            <li><a class="dropdown-item" href="#">Női órák</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Gyermek órák</a></li>
          </ul>
        </li>
        <?php

        print("<form method='post'>");
        print("<li class='nav-item'>");
        print("<a class='nav-link' href='regisztráció'>Regisztrácio</a>");
        print("</li>");

        print("</form>");
        ?>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Keresés" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Keresés</button>
      </form>
    </div>
  </div>
</nav>
    
</body>
</html>