<?php
$sayfa = 'Ana Sayfa';
include('inc/vt.php');
include('inc/head.php');
include('inc/nav.php');

$sorgu = $baglanti->prepare("SELECT * FROM anasayfa");
$sorgu->execute();
$sonuc = $sorgu->fetch();//sorgu çalıştırılıp veriler alınıyor

?>

    <section class="page-section clearfix">
        <div class="container">
            <div class="intro"> <!-- intro yazılacak tırnak içine -->
                <img class="intro-img img-fluid mb-3 mb-lg-0 rounded" src="img/<?= $sonuc['foto'] ?>" alt="">
                <div class="intro-text left-0 text-center bg-faded p-5 rounded">
                    <h2 class="section-heading mb-4">

                        <span class="section-heading-lower"><?= $sonuc['ustBaslik'] ?></span>
                    </h2>
                    <p class="mb-4">
                        <?= $sonuc['ustIcerik'] ?>
						<a class="nav-link text-uppercase text-expanded" href="hakkimizda.php"><button>Hakkımda Sayfası İçin Tıklayınız</button></a>

                    </p>
                    <div class="intro-button mx-auto">
                       
                    </div>
                </div>
            </div>
        </div>
    </section>



<?php
include('inc/footer.php');
?>