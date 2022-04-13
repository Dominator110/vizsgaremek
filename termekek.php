<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Funda of Web IT</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>
<body>
    
    <div class="container">
        <div class="row">
            <!-- Brand List  -->
            <div class="col-md-3">
                <form action="" method="GET">
                    <div class="card shadow mt-3">
                        <div class="card-header">
                            <h5>Filter 
                                <button type="submit" class="btn btn-primary btn-sm float-end">Search</button>
                            </h5>
                        </div>
                        <div class="card-body">
                            <h6>Brand List</h6>
                            <hr>
                            <?php
                                $con = mysqli_connect("localhost","root","","webshop");

                                $brand_query = "SELECT * FROM ferfi_ora GROUP BY Ferfi_ora_tipus";
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
                                                <input type="checkbox" name="termek[]" value="<?= $brandlist['Ferfi_ora_tipus_id']; ?>" 
                                                    <?php if(in_array($brandlist['Ferfi_ora_tipus_id'], $checked)){ echo "checked"; } ?>
                                                 />
                                                <?= $brandlist['Ferfi_ora_tipus']; ?>
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
                                    $products = "SELECT * FROM ferfi_ora WHERE Ferfi_ora_tipus_id IN ($rowbrand) ";
                                    $products_run = mysqli_query($con, $products);
                                    if(mysqli_num_rows($products_run) > 0)
                                    {
                                        foreach($products_run as $proditems) :
                                            ?>
                                            <div class="col-sm-3 col-md-6 col-lg-4">
							                        <div class="card">
								                        <div class="card-body text-center">
									                            <img src=<?= $proditems['Ferfi_ora_kep']; ?> class="product-image">
                                                                <h5 class="card-title"><b><?= $proditems['Ferfi_ora_marka']; ?></b></h5>
									                        <h5 class="card-title"><b><?= $proditems['Ferfi_ora_nev']; ?></b></h5>
									                        <p class="card-text small"><?= $proditems['Ferfi_ora_leiras']; ?></p>
									                        <p class="tags"><?= $proditems['Ferfi_ora_ar']; ?>Ft</p>
									                        <a href="https://api.whatsapp.com/send?phone=2348162667912" target="_blank" class="btn btn-success button-text"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Add to cart</a>
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
                                $products = "SELECT * FROM ferfi_ora";
                                $products_run = mysqli_query($con, $products);
                                if(mysqli_num_rows($products_run) > 0)
                                {
                                    foreach($products_run as $proditems) :
                                        ?>
                                        <div class="col-sm-3 col-md-6 col-lg-4">
							                    <div class="card">
								                    <div class="card-body text-center">
									                        <img src=<?= $proditems['Ferfi_ora_kep']; ?> class="product-image">
									                    <h5 class="card-title"><b><?= $proditems['Ferfi_ora_nev']; ?></b></h5>
									                    <p class="card-text small"><?= $proditems['Ferfi_ora_leiras'];?></p>
									                    <p class="tags"><?= $proditems['Ferfi_ora_ar']; ?>Ft</p>
                                                        <a href="https://api.whatsapp.com/send?phone=2348162667912" target="_blank" class="btn btn-success button-text"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Add to cart</a>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>