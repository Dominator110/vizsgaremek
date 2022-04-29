<div class="container">
        <div class="row">
<?php 
include('kapcs.php');

if($_GET['keywords'] != "" )
{
	$_GET['m']="";
    $kulcs = isset($_GET['keywords']) ? '%'.$_GET['keywords'].'%' : '';
}
$query = "SELECT Ferfi_ora_nev,Ferfi_ora_kep,Ferfi_ora_leiras,Ferfi_ora_marka,Ferfi_ora_ar FROM ferfi_ora where Ferfi_ora_nev like '$kulcs' OR Ferfi_ora_tipus like '$kulcs'";

$result = $con->query($query);

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
									                        <a href="Ferfiorak" target="_blank" class="btn btn-dark button-text"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Még több óra</a>
								                        </div>
							                        </div>
						                        </div>
                        <?php
                    endforeach;
}

?>
</div>
  </div>
  <div class="container">
        <div class="row">
<?php 

$query2 = "SELECT Noi_ora_nev,Noi_ora_kep,Noi_ora_leiras,Noi_ora_marka,Noi_ora_ar FROM noi_ora where Noi_ora_nev like '$kulcs' OR Noi_ora_tipus like '$kulcs'";

$result2 = $con->query($query2);

/* fetch associative array */
while ($row = $result2->fetch_assoc())
 {
  foreach($result2 as $proditems) :
  ?>
                    <div class="col-sm-3 col-md-6 col-lg-4">
							                        <div class="card">
								                        <div class="card-body text-center">
									                            <img src=<?= $proditems['Noi_ora_kep']; ?> class="product-img">
                                                                <h5 class="card-title"><b><?= $proditems['Noi_ora_marka']; ?></b></h5>
									                        <h5 class="card-title"><b><?= $proditems['Noi_ora_nev']; ?></b></h5>
									                        <p class="card-text small"><?= $proditems['Noi_ora_leiras']; ?></p>
									                        <p class="tags"><?= $proditems['Noi_ora_ar']; ?>Ft</p>
									                        <a href="Noiorak" target="_blank" class="btn btn-dark button-text"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Még több óra</a>
								                        </div>
							                        </div>
						                        </div>
                        <?php
                    endforeach;
}

?>
</div>
  </div>
  <div class="container">
        <div class="row">
<?php 

$query3 = "SELECT Gyermek_ora_nev,gyermek_ora_kep,Gyermek_ora_leiras2,Gyermek_ora_marka,Gyermek_ora_ar  FROM gyermek_ora where Gyermek_ora_nev like '$kulcs' OR Gyermek_ora_tipus like '$kulcs'";

$result3 = $con->query($query3);

/* fetch associative array */
while ($row = $result3->fetch_assoc())
 {
  foreach($result3 as $proditems) :
  ?>
                    <div class="col-sm-3 col-md-6 col-lg-4">
							                        <div class="card">
								                        <div class="card-body text-center">
									                            <img src=<?= $proditems['gyermek_ora_kep']; ?> class="product-img">
                                                                <h5 class="card-title"><b><?= $proditems['Gyermek_ora_marka']; ?></b></h5>
									                        <h5 class="card-title"><b><?= $proditems['Gyermek_ora_nev']; ?></b></h5>
									                        <p class="card-text small"><?= $proditems['Gyermek_ora_leiras']; ?></p>
									                        <p class="tags"><?= $proditems['Gyermek_ora_ar']; ?>Ft</p>
									                        <a href="Gyerekorak" target="_blank" class="btn btn-dark button-text"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Még több óra</a>
								                        </div>
							                        </div>
						                        </div>
                        <?php
                    endforeach;
}

?>
</div>
  </div>