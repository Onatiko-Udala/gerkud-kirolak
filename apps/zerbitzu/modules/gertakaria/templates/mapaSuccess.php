<?php use_helper('Javascript','GMap') ?>
<?php use_helper('Pagination'); ?>




<div id="geolokalizazioa" style="display:block;">
<br><br>
<table class="planoa" width=90%>
<!-- <tr><th class="ezker">Planoa</th><th class="eskuin"></th></tr>  -->
<tr><td colspan=2>
        <?php
          $gMap = new GMap();
	  $gMap->setScroll('false');
          $gMap->setZoom(14);
          $gMap->setCenter(43.3251,-1.920894);
          $gMap->setHeight('100%');
          $gMap->setWidth('100%');
        ?>
    <?php foreach ($pager->getResults() as $gertakaria): ?>
        <?php if (($gertakaria->getKalea_id())&&($gertakaria->getBarrutia_id()!=6)) : ?>
                <?php
                  $test="'".$gertakaria->getId()."'";
                  $kale = Doctrine::getTable('Kalea')->find($gertakaria->getKaleaId());
                  $helbidea = $kale->getGoogle().", ".$gertakaria->getKale_zbkia()." 20110 PASAIA";
//                  $helbidea = $gertakaria->getKalea().", ".$gertakaria->getKale_zbkia()." 20110 PASAIA";
                $puntua = $gMap->geocodeXml($helbidea);
                if (($puntua->getLat()!='')||($puntua->getLng()!=''))
                {
                        $gMapMarker = new GMapMarker($puntua->getLat(),$puntua->getLng(),array('title'=>$test));
                        $gMap->addMarker($gMapMarker);
                }
                ?>
        <?php endif; ?>
    <?php endforeach; ?>
    <?php $gMap->centerOnMarkers();?>

<?php include_map($gMap,array('width'=>'100%','height'=>'500px')); ?>

<!-- Javascript included at the bottom of the page -->
<?php include_map_javascript($gMap); ?>

