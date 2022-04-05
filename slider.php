<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/slider.css">
</head>
<body>

<section class="product"> 
        <h2 class="product-category">Legjobb ajánlatok</h2>
        <button class="pre-btn"><img src="kepek/arrow.png" alt=""></button>
        <button class="nxt-btn"><img src="kepek/arrow.png" alt=""></button>
        <div class="product-container">

            <?php
                $con = mysqli_connect("localhost","root","","webshop");
                $products = "SELECT * FROM ferfi_ora WHERE ajanlatunk = 1 ";
                $products_run = mysqli_query($con, $products);
                if(mysqli_num_rows($products_run) > 0)
                {
                    foreach($products_run as $proditems) :
                        ?>
                        <div class="product-card">
                        <div class="product-image">
                            <img src=<?= $proditems['Ferfi_ora_kep']; ?> class="product-thumb" alt="">
                            <button class="card-btn">Vásárlás</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand"><?= $proditems['Ferfi_ora_nev']; ?></b></h2>
                            <p class="product-short-description"><?= $proditems['Ferfi_ora_leiras']; ?></p>
                            <span class="price">$20</span><span class="actual-price"><?= $proditems['Ferfi_ora_ar']; ?></span>
                        </div>
                        </div>
                        <?php
                    endforeach;
                }

            ?> 


        </div>
    </section>

    <script src="js/slider.js"></script>
</body>
</html>