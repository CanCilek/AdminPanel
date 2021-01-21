<?php
$sayfa = 'Fotoğraflar';
include('inc/vt.php');
include('inc/head.php');
include('inc/nav.php');


$sorgu = $baglanti->prepare("SELECT * FROM fotograf where id");
$sorgu->execute();
$yon = 'sag';

while ($sonuc = $sorgu->fetch()) {
    ?>

    <section class="page-section">
        <div class="container">
            <div class="product-item">
                <div class="product-item-title d-flex">
                    <div class="bg-faded p-5 d-flex <?php echo $yon == 'sag' ? 'ml-auto' : 'mr-auto' ?> rounded">
                        <h2 class="section-heading mb-0">
                            <span class="section-heading-upper"><?= $sonuc['ustBaslik'] ?></span>
                            <span class="section-heading-lower"><?= $sonuc['baslik'] ?></span>
                        </h2>
                    </div>
                </div>
                <img class="product-item-img mx-auto d-flex rounded img-fluid mb-3 mb-lg-0"
                     src="img/<?= $sonuc['foto'] ?>" alt="">
               
            </div>
        </div>
    </section>


    <?php
    if ($yon == 'sag') $yon = 'sol';
    else $yon = 'sag';

} //while sonu
include('inc/footer.php');
?>
