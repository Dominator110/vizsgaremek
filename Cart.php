<?php
    session_start();
    include_once('kapcs.php');

    if ( isset($_GET['m']) && isset($_SESSION['felh_id'] ) ){

        $termekid = $_GET['m'];
        $vevoid = $_SESSION['felh_id'] ;
        $sql = "INSERT INTO kosar (termek_id,felh_id) VALUE ('$termekid','$vevoid' );";
        mysqli_query($con,$sql) or die ("Sikertelen adatbeszúrás");
        //  print("<meta http-equiv='refresh' content='0'>");
        header('Location: cart.php');
    }
    else
    {



?>
            <!DOCTYPE html>
            <html lang="en">
            <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Kosár</title>
            </head>
            <body>

            <?php
                $sql = "select * from kosar where felh_id = ".$_SESSION['felh_id'] ;
                $row = mysqli_query($con,$sql) or die ("Sikertelen adatbeszúrás");

                if(mysqli_num_rows($row ) > 0)
                {
                    $total = 0;
                    foreach($row  as $proditems) :
                        $total += $proditems['kosar_ar'];
                        ?>
                        <div class="product-card">
                            <div class="product-info">
                                <h2 class="product-brand"><?= $proditems['kosar_nev']; ?></b></h2>
                                <span class="price">$20</span><span class="actual-price"><?= $proditems['kosar_ar']; ?></span>
                                <a href="kosartorol.php?m=<?= $proditems['kosar_id']; ?>">elem törlése</a> 
                            </div>
                        </div>
                        <?php
                    endforeach;
                    echo("<hr /> Összsen: " . $total . " HUF");
                }


            ?>

            </body>
            </html>
<?php
    }
?>