<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="image/favicon.ico">
<link rel="stylesheet" href="css/iletisim.css"/>
	<link rel="stylesheet" href="css/header.css"/>
	<link rel="stylesheet" href="css/footer.css"/>
	<title>İletişim</title>
</head>
<body>
<div  id="id1"></div>
	<div class="header1"> <!-- headerin başladığı kısım --> 
	<header class="sticky">
		<div class="logo"> <a href="index.html"> <img src="image/logo.png" alt="logo" width="117px" height="40px"> </a> </div>
			<ul class="menu">
				<li><a href="uyekayit.html">Kayıt Ol</a></li>
				<li><a href="giris.html">Üye Girişi</a></li>
				<li><a href="sepet.html">Sepet</a></li>
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
<div class="div1"> <!-- iletisim kisminin basladigi yer -->
  <form action="" class="form">
  <div class="divsatir">
    <div class="divlabel">
      <label for="eposta" class="label">E-posta</label>
    </div>
    <div class="divbox">
      <input type="email" id="eposta" name="eposta" placeholder="E-posta adresiniz" maxlength="30">
    </div>
  </div> 
    <div class="divsatir">
    <div class="divlabel">
      <label for="mesaj" class="label">Mesajınız</label>
    </div>
    <div class="divbox">
      <textarea id="mesaj" name="mesaj" placeholder="Mesajınız...  Maksimum 300 karakter." style="height:200px" maxlength="300"></textarea>
    </div>
  </div>
  <div class="divsatir">
    <a href="https://www.google.com" target="_blank"> <button class="button" style="vertical-align: middle"> <span>Gönder</span> </button></a>
  </div>
  </form>
</div>
	<footer>
	<div class="hakkimizda">
		<p> <b> Biz Kimiz? </b> <br> Eskişehir Teknik Üniversitesi'nde Web Programlama Dersi proje ödevi için bir araya gelen 7 kişilik öğrenci grubuyuz.</p>
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
</footer>
</body>
</html>
