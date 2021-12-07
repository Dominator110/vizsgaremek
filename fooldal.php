<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="fooldal.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Főoldal</title>
    
</head>
<body>
<!-- főmenű -->
<div id="fonavbar">
    <ul>
        <div>
            <img id="logo" src="logo.png" alt="Logo">
        </div>
        <li><a href="#bejelentkezes">Bejelentkezés</a></li>
        <li><a class="active" href="">Home</a></li>
        <li id="hirek" ><a href="#">Hírek</a></li>
        <li id="sport"><a href="#">Sport</a></li>
        <li id="politika"><a href="#">Politika</a></li>
        <li id="egeszseg"><a href="#">Egészség</a></li>
        <li id="kulturalis"><a href="#">Kulturális</a></li>
        <li id="idojaras"><a href="idojaras.php" target="_blank">Időjárás</a></li>
        <div class="topnav">
            <div class="search-container">

            <button type="submit"><i class="fa fa-search"></i></button>
            <input type="text" placeholder="keresés..">
            </div>

            
        </div>
    </ul>
</div>
<!-- sport menü -->
<div id="sportnavbar">
    <ul id="sportul">
        <li id="sportli"><a id="Foci" href="">Foci</a></li>
        <li id="sportli"><a id="kosar" href="">Kosárlabda</a></li>
        <li id="sportli"><a id="ropi" href="">Röplabda</a></li>
        <li id="sportli"><a id="kezi" href="">Kézilabda</a></li>
        <li id="sportli"><a id="vizilabda" href="">Vizilabda</a></li>
        <li id="sportli"><a id="f1" href="">Formula-1</a></li>
    </ul>
</div>
<!-- Hírek menü -->
<div id="Hirekmenu">
    <ul id="hirekul">
        <li id="hirekli"><a id="Home" href="">Home</a></li>
        <li id="hirekli"><a id="Covid" href="">Covid</a></li>
        <li id="hirekli"><a id="Tech" href="">Technologia</a></li>
        <li id="hirekli"><a id="klima" href="">Klíma</a></li>
        <li id="hirekli"><a id="tudomany" href="">Tudomány</a></li>
        <li id="hirekli"><a id="Mo" href="">Magyarország</a></li>
    </ul>
</div>
<!-- politika menu -->
<div id="Politikamenu">
    <ul id="politikaul">
        <li id="politikali"><a id="Belfoldi" href="">Belföldi Politika</a></li>
        <li id="politikali"><a id="Vilag" href="">Világ politika</a></li>
    </ul>
</div>
<!-- egeszseg menu -->
<div id="egeszsegmenu">
    <ul id="egeszsegul">
        <li id="egeszsegli"><a id="tap" href="">Táplálkozás</a></li>
        <li id="egeszsegli"><a id="olt" href="">Öltözködés</a></li>
        <li id="egeszsegli"><a id="mozgas" href="">Mozgás</a></li>
    </ul>
</div>
<!-- kulturalis menu -->
<div id="kulturalismenu">
    <ul id="kulturalisul">
        <li id="kulturalisli"><a id="tap" href="">Filmek</a></li>
        <li id="kulturalisli"><a id="olt" href="">Művészet</a></li>
        <li id="kulturalisli"><a id="mozgas" href="">Zene</a></li>
        <li id="kulturalisli"><a id="mozgas" href="">Könyvek</a></li>
        <li id="kulturalisli"><a id="mozgas" href="">TV</a></li>
    </ul>
</div>







<script src="fooldal.js"></script>
</body>
</html>