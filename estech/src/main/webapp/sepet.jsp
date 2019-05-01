<!DOCTYPE html>
<html>
<head> 
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<title>EStech</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="image/favicon.ico">
    <link href="css/tasarim.css" rel="stylesheet"/>
	<link href="css/sepet.css" rel="stylesheet"/>
	<link href="css/header.css" rel="stylesheet"/>
	<link href="css/footer.css" rel="stylesheet"/>
</head>

<body>
<div id="id1"></div>
    	<div class="header1"> <!-- headerin başladığı kısım --> 
	<header class="sticky">
		<div class="logo"> <a href="index.html"> <img src="image/logo.png" alt="logo" width="117px" height="40px"> </a> </div>
			<ul class="menu">
				<li><a href="uyekayit.html"><i class="fas fa-user-plus"></i>Kayıt Ol</a></li>
				<li><a href="giris.html"><i class="fas fa-user-alt"></i>Üye Girişi</a></li>
				<li><a href="sepet.html"><i class="fas fa-shopping-cart"></i>Sepet</a></li>
			</ul>
	</header>
</div>  <!-- headerin bittiği kısım --> 
	<div class="nav1">	<!-- navbarın başladığı kısım --> 
		<nav>
			<ol class="menu2">
				<li><a href="index.html">Anasayfa</a></li>
				<li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Kategori 1</a>
					<div class="dropdown-content">
					<a href="#">Alt kategori 1</a>
					<a href="#">Alt kategori 2</a>
					<a href="#">Alt kategori 3</a>
					<a href="#">Alt kategori 4</a>
					<a href="#">Alt kategori 5</a>
					</div>
				</li>
				<li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Kategori 2</a>
					<div class="dropdown-content">
					<a href="#">Alt kategori 1</a>
					<a href="#">Alt kategori 2</a>
					<a href="#">Alt kategori 3</a>
					<a href="#">Alt kategori 4</a>
					</div>
				</li>
				<li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Kategori 3</a>
					<div class="dropdown-content">
					<a href="#">Alt kategori 1</a>
					<a href="#">Alt kategori 2</a>
					<a href="#">Alt kategori 3</a>
					</div>
				</li>
				<li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Kategori 4</a>
					<div class="dropdown-content">
					<a href="#">Alt kategori 1</a>
					<a href="#">Alt kategori 2</a>
					</div>
				</li>
				<li class="dropdown">
				<a href="javascript:void(0)" class="dropbtn">Kategori 5</a>
					<div class="dropdown-content">
					<a href="#">Alt kategori 1</a>
					</div>
				</li>
			</ol>
		</nav>
	</div>	<!-- navbarın bittiği kısım --> 
	<section id="sepet_urun">
		<div class="bolmeler">
			<div class="sepet_detay">
				<table class="table table-condensed">
					<thead>
						<tr class="sepet_menu">
							<td class="gorsel">Ürün</td>
							<td class="aciklama">Açıklama</td>
							<td class="fiyat">Fiyat</td>
							<td class="toplam">Toplam Fiyat</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="sepet_urun">
								<a href=""><img src="image/i9.jpg" width="110" height="110" alt=""></a>
							</td>
							<td class="sepet_aciklama">
								<h4><a href="">Intel I9 İşlemci</a></h4>
								<p>ID: 1089772</p>
							</td>
							<td class="sepet_fiyat">
								<p>₺3.790,00</p>
							</td>
							<td class="sepet_toplam">
								<p class="sepet_toplam_fiyat">₺3.790,00</p>
							</td>
							<td class="sepet_sil">
								<a class="sepet_miktar_sil" href=""><img src="image/sil.png"/></a>
							</td>
						</tr>

						<tr>
							<td class="sepet_urun">
								<a href=""><img src="image/i9.jpg" width="110" height="110" alt=""></a>
							</td>
							<td class="sepet_aciklama">
								<h4><a href="">Intel I9 İşlemci</a></h4>
								<p>ID: 1089772</p>
							</td>
							<td class="sepet_fiyat">
								<p>₺3.790,00</p>
							</td>
							<td class="sepet_toplam">
								<p class="sepet_toplam_fiyat">₺3.790,00</p>
							</td>
							<td class="sepet_sil">
								<a class="sepet_miktar_sil" href=""><img src="image/sil.png"/></a>
							</td>
						</tr>
						<tr>
							<td class="sepet_urun">
								<a href=""><img src="image/i9.jpg" width="110" height="110" alt=""></a>
							</td>
							<td class="sepet_aciklama">
								<h4><a href="">Intel I9 İşlemci</a></h4>
								<p>ID: 1089772</p>
							</td>
							<td class="sepet_fiyat">
								<p>₺3.790,00</p>
							</td>
							<td class="sepet_toplam">
								<p class="sepet_toplam_fiyat">₺3.790,00</p>
							</td>
							<td class="sepet_sil">
								<a class="sepet_miktar_sil" href=""><img src="image/sil.png"/></a>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</section>

	<section id="tutar_kismi">
		<div class="odeme_alani">
		  <ul>
		    <li>Ürünler Toplamı <span>₺7.579,99</span></li>
		    <li>Gönderim Ücreti <span>Ücretsiz</span></li>
		    <li>Ödenecek Tutar <span>₺7.579,99</span></li>
	      </ul>
		  <a class="guncelle" href="">Güncelle</a>
          <a class="odeme" href="adres.html">Ödemeye Geç</a> 
        </div>
	</section>
	<footer>	<!-- footerin başladığı kısım --> 
	<div class="hakkimizda">
		<p> <b>Biz Kimiz? </b><br> Eskişehir Teknik Üniversitesi'nde Web Programlama Dersi proje ödevi için bir araya gelen 7 kişilik öğrenci grubuyuz.</p>
	</div>
		<div class="ulasim">
			<a href="iletisim.html"> <span> Bize ulaşın</span></a>
		</div>
			<div class="sosyalmedya">
				<ol>
					<li><a href="https://github.com/porsukmyo-students/Es-tech" target="_blank"><img src="image/sosyalmedya/facebook.png" alt="face"></a></li>
					<li><a href="https://github.com/porsukmyo-students/Es-tech" target="_blank"><img src="image/sosyalmedya/twitter.png" alt="twit"></a></li>
					<li><a href="https://github.com/porsukmyo-students/Es-tech" target="_blank"><img src="image/sosyalmedya/instagram.png" alt="insta"></a></li>
					<li><a href="https://github.com/porsukmyo-students/Es-tech" target="_blank"><img src="image/sosyalmedya/github.png" alt="github"></a></li>
				</ol>
			</div>
				<div class="haklar">
					<p>Es-tech © 2019 - Tüm hakları saklıdır. </p>
					<div class="up">
						<a style="display:scroll;position:fixed; bottom:10px; right:5px;" href="#id1"> <img src="image/yukari-cik.png" alt="yukarı" width="40px" height="40px"/></a>
					</div>
				</div>					
</footer>	<!-- footerin bittiği kısım --> 
</body>
</html>