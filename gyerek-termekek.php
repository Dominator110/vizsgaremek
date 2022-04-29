<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style2.css" rel="stylesheet">

</head>
<body>
    
    <div class="container">
        <div class="row">
            <!-- Brand List  -->
            <div class="col-md-3">
                <form action="" method="GET">
                    <div class="card filter shadow mt-3">
                        <div class="card-header">
                            <h5>szürő 
                                <button type="submit" class="btn btn-primary btn-sm float-end">Keresés</button>
                            </h5>
                        </div>
                        <div class="card-body">
                            <h6>Kategoriák</h6>
                            <hr>
                            <?php
                                $con = mysqli_connect("localhost","root","","webshop");

                                $brand_query = "SELECT * FROM gyermek_ora GROUP BY Gyermek_ora_tipus";
                                $brand_query_run  = mysqli_query($con, $brand_query);

                                if(mysqli_num_rows($brand_query_run) > 0)
                                {
                                    foreach($brand_query_run as $brandlist)
                                    {
                                        $checked = [];
                                        if(isset($_GET['termek']))
                                        {
                                            $checked = $_GET['termek'];
                                        }
                                        ?>
                                            <div>
                                                <input type="checkbox" name="termek[]" value="<?= $brandlist['Gyermek_ora_tipus_id']; ?>" 
                                                    <?php if(in_array($brandlist['Gyermek_ora_tipus_id'], $checked)){ echo "checked"; } ?>
                                                 />
                                                <?= $brandlist['Gyermek_ora_tipus']; ?>
                                            </div>
                                        <?php
                                    }
                                }
                                else
                                {
                                    echo "No Brands Found";
                                }
                            ?>
                        </div>
                    </div>
                </form>
            </div>

            <!-- Brand Items - Products -->
            <div class="col-md-9 mt-3">
                <div class="card ">
                    <div class="card-body row">
                        <?php
                            if(isset($_GET['termek']))
                            {
                                $branchecked = [];
                                $branchecked = $_GET['termek'];
                                foreach($branchecked as $rowbrand)
                                {
                                    // echo $rowbrand;
                                    $products = "SELECT * FROM gyermek_ora WHERE Gyermek_ora_tipus_id IN ($rowbrand) ";
                                    $products_run = mysqli_query($con, $products);
                                    if(mysqli_num_rows($products_run) > 0)
                                    {
                                        foreach($products_run as $proditems) :
                                            ?>
                                            <div class="col-sm-3 col-md-6 col-lg-4">
							                        <div class="card">
								                        <div class="card-body text-center">
									                            <img src=<?= $proditems['gyermek_ora_kep']; ?> class="product-image">
                                                                <h5 class="card-title"><b><?= $proditems['Gyermek_ora_marka']; ?></b></h5>
									                        <h5 class="card-title"><b><?= $proditems['Gyermek_ora_nev']; ?></b></h5>
									                        <p class="card-text small"><?= $proditems['Gyermek_ora_leiras']; ?></p>
									                        <p class="tags"><?= $proditems['Gyermek_ora_ar']; ?>Ft</p>
									                        <?php print("<a href='bovebben.php?j=".$proditems['Gyermek_ora_id']."' class='btn btn-dark'>Bővebben</a>")?>
								                        </div>
							                        </div>
						                        </div>
                                            <?php
                                        endforeach;
                                    }
                                }
                            }
                            else
                            {
                                $products = "SELECT * FROM gyermek_ora";
                                $products_run = mysqli_query($con, $products);
                                if(mysqli_num_rows($products_run) > 0)
                                {
                                    foreach($products_run as $proditems) :
                                        ?>
                                        <div class="col-sm-3 col-md-6 col-lg-4">
							                    <div class="card">
								                    <div class="card-body text-center">
									                        <img src=<?= $proditems['gyermek_ora_kep']; ?> class="product-image">
									                    <h5 class="card-title"><b><?= $proditems['Gyermek_ora_nev']; ?></b></h5>
									                    <p class="card-text small"><?= $proditems['Gyermek_ora_leiras'];?></p>
									                    <p class="tags"><?= $proditems['Gyermek_ora_ar']; ?>Ft</p>
                                                        <?php print("<a href='bovebben.php?j=".$proditems['Gyermek_ora_id']."' class='btn btn-dark'>Bővebben</a>")?>
								                        </div>
							                        </div>
						                        </div>
                                        <?php
                                    endforeach;
                                }
                                else
                                {
                                    echo "No Items Found";
                                }
                            }
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</body>
</html>