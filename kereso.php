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