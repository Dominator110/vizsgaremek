<?php
// $varos=fopen("https://api.openweathermap.org/data/2.5/weather?q=Budapest&units=metric&lang=hu&appid=cb9d90cacab0b7302686aab85a55f78b","r");
// $adatok=fread($varos,1024);

// $adatok_k=json_decode($adatok);

// $hofok=round($adatok_k->main->temp,2).'°C';
// print $hofok;
// $szel=$adatok_k->wind->speed;
// $szel=$szel * 3.6;
// print("<br>". $szel.'km/h');
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="idojaras.css" />
    
  </head>
  <body>
    <div>
      <header class="container">
        <h1>Időjárás</h1>
      </header>
      <nav class="container">
        <div class="row align-items-center py-2">
          <div class="input-group col-sm">
            <span class="input-group-text" id="basic-addon1">Lat</span>
            <input
              type="text"
              class="form-control"
              inputmode="numeric"
              id="latitude"
              placeholder="latitude"
              aria-label="latitude"
              aria-describedby="basic-addon1"
              value="42.98"
            />
          </div>
          <div class="input-group col-sm">
            <span class="input-group-text" id="basic-addon1">Lon</span>
            <input
              type="text"
              class="form-control"
              inputmode="numeric"
              id="longitude"
              placeholder="longitude"
              aria-label="longitude"
              aria-describedby="basic-addon1"
              value="-81.23"
            />
          </div>
        </div>
        <div class="row align-items-center py-2">
          <div class="col-auto me-auto">
            <button id="btnGet" type="button" class="btn btn-primary mb-3">
              Get Weather
            </button>
            <button id="btnCurrent" type="button" class="btn btn-primary mb-3">
              Use Current Location
            </button>
          </div>
        </div>
      </nav>
      <main class="container">
        <h2>Weather</h2>
        <!-- results for weather data -->
        <div class="weather row gx-2">
          <div class="col">
            <div class="card" style="width: 30vw">
              <h5 class="card-title p-2">Date</h5>
              <img
                src="http://openweathermap.org/img/wn/10d@4x.png"
                class="card-img-top"
                alt="Weather description"
              />
              <div class="card-body">
                <h3 class="card-title">Weather Label</h3>
                <p class="card-text">High Temp Low Temp</p>
                <p class="card-text">HighFeels like</p>
                <p class="card-text">Pressure</p>
                <p class="card-text">Humidty</p>
                <p class="card-text">UV Index</p>
                <p class="card-text">Precipitation</p>
                <p class="card-text">Dew Point</p>
                <p class="card-text">Wind speed and direction</p>
                <p class="card-text">Sunrise</p>
                <p class="card-text">Sunset</p>
              </div>
            </div>
          </div>
        </div>
      </main>
      <footer class="container">
        <div class="row align-items-center">
          <div class="col">
            <img
              src="http://openweathermap.org/img/wn/10d.png"
              alt="demo icon"
            />
            <span>10d.png</span>
          </div>
          <div class="col">
            <img
              src="http://openweathermap.org/img/wn/10d@2x.png"
              alt="demo icon"
            />
            <span>10d@2x.png</span>
          </div>
          <div class="col">
            <img
              src="http://openweathermap.org/img/wn/10d@4x.png"
              alt="demo icon"
            />
            <span>10d@4x.png</span>
          </div>
        </div>
      </footer>
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"
    ></script>
    <script src="idojaras.js" defer></script>
  </body>
</html>
