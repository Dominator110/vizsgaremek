<?php 
	 // kilep, ha nincs keresofeltetel megadva...
	 if ( ! ( isset($_GET['keywords']) && ($_GET['keywords'] != "") )  ) {  }
	 else {
	 
?>

			<div class="container">
					<div class="row">

			<?php 



			include_once('kapcs.php');

			if(  isset($_GET['keywords']) && ($_GET['keywords'] != "") )
			{
				// $_GET['m']="";
				$kulcs = isset($_GET['keywords']) ? '%'.$_GET['keywords'].'%' : '';
			}
			$query = "SELECT ora_nev ferfi_ora_nev, ora_kep ferfi_ora_kep, ora_leiras ferfi_ora_leiras, ora_marka ferfi_ora_marka, ora_ar ferfi_ora_ar, case termek_tipus when 0 then 'Ferfiorak' when 1 then 'Noiorak' else 'Gyerekorak' end targetsite FROM termek where ora_nev like cast( '$kulcs' as varchar(30) character set UTF8) /* OR ferfi_ora_tipus like  cast('$kulcs' as varchar(30) character set utf8) */ order by targetsite";
			$result = $con->query($query);

			while ($row = $result->fetch_assoc())
			{
			foreach($result as $proditems) :
			?>
								<div class="col-sm-3 col-md-6 col-lg-4">
																<div class="card">
																	<div class="card-body text-center">
																			<img src=<?= $proditems['ferfi_ora_kep']; ?> class="product-img">
																			<h5 class="card-title"><b><?= $proditems['ferfi_ora_marka']; ?></b></h5>
																		<h5 class="card-title"><b><?= $proditems['ferfi_ora_nev']; ?></b></h5>
																		<p class="card-text small"><?= $proditems['ferfi_ora_leiras']; ?></p>
																		<p class="tags"><?= $proditems['ferfi_ora_ar']; ?>Ft</p>
																		<a href="<?= $proditems['targetsite']; ?>" target="_blank" class="btn btn-dark button-text"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Még több óra</a>
																	</div>
																</div>
															</div>
									<?php
								endforeach;
			}
			/*
			$query = "SELECT ferfi_ora_nev,ferfi_ora_kep,ferfi_ora_leiras,ferfi_ora_marka,ferfi_ora_ar FROM ferfi_ora_view where ferfi_ora_nev  like cast( '$kulcs' as varchar(30) character set UTF8) OR ferfi_ora_tipus like  cast('$kulcs' as varchar(30) character set utf8) ";

			echo $query;

			$result = $con->query($query);

			// fetch associative array 
			while ($row = $result->fetch_assoc())
			{
			foreach($result as $proditems) :
			?>
								<div class="col-sm-3 col-md-6 col-lg-4">
																<div class="card">
																	<div class="card-body text-center">
																			<img src=<?= $proditems['ferfi_ora_kep']; ?> class="product-img">
																			<h5 class="card-title"><b><?= $proditems['ferfi_ora_marka']; ?></b></h5>
																		<h5 class="card-title"><b><?= $proditems['ferfi_ora_nev']; ?></b></h5>
																		<p class="card-text small"><?= $proditems['ferfi_ora_leiras']; ?></p>
																		<p class="tags"><?= $proditems['ferfi_ora_ar']; ?>Ft</p>
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

			$query2 = "SELECT noi_ora_nev,noi_ora_kep,noi_ora_leiras,noi_ora_marka,noi_ora_ar FROM noi_ora_view where noi_ora_nev like '$kulcs' OR noi_ora_tipus like '$kulcs'";

			$result2 = $con->query($query2);

			while ($row = $result2->fetch_assoc())
			{
			foreach($result2 as $proditems) :
			?>
								<div class="col-sm-3 col-md-6 col-lg-4">
																<div class="card">
																	<div class="card-body text-center">
																			<img src=<?= $proditems['noi_ora_kep']; ?> class="product-img">
																			<h5 class="card-title"><b><?= $proditems['noi_ora_marka']; ?></b></h5>
																		<h5 class="card-title"><b><?= $proditems['noi_ora_nev']; ?></b></h5>
																		<p class="card-text small"><?= $proditems['noi_ora_leiras']; ?></p>
																		<p class="tags"><?= $proditems['noi_ora_ar']; ?>Ft</p>
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

			$query3 = "SELECT gyermek_ora_nev,gyermek_ora_kep,gyermek_ora_leiras2,gyermek_ora_marka,gyermek_ora_ar  FROM gyermek_ora_view where gyermek_ora_nev like '$kulcs' OR gyermek_ora_tipus like '$kulcs'";

			$result3 = $con->query($query3);

			while ($row = $result3->fetch_assoc())
			{
			foreach($result3 as $proditems) :
			?>
								<div class="col-sm-3 col-md-6 col-lg-4">
																<div class="card">
																	<div class="card-body text-center">
																			<img src=<?= $proditems['gyermek_ora_kep']; ?> class="product-img">
																			<h5 class="card-title"><b><?= $proditems['gyermek_ora_marka']; ?></b></h5>
																		<h5 class="card-title"><b><?= $proditems['gyermek_ora_nev']; ?></b></h5>
																		<p class="card-text small"><?= $proditems['gyermek_ora_leiras']; ?></p>
																		<p class="tags"><?= $proditems['gyermek_ora_ar']; ?>Ft</p>
																		<a href="Gyerekorak" target="_blank" class="btn btn-dark button-text"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Még több óra</a>
																	</div>
																</div>
															</div>
									<?php
								endforeach;
			}

			*/
			?>
			</div>
			</div>

<?php
	 }
?>  