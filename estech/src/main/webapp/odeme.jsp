<%@page pageEncoding="UTF-8"%>

<html>
<head>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link rel="stylesheet" href="css/odemebil.css"/>
    <link rel="icon" type="image/png" href="image/favicon.ico">
    <link rel="stylesheet" href="css/header.css"/>
	<link rel="stylesheet" href="css/footer.css"/>
<style type="text/css">
.div1 .form .divbox strong {
	font-weight: inherit;
	font-size: 24px;
	text-align: justify;
	color: #000000;
}
.div1 {
	text-align: center;
}
.div1 {
	text-align: left;
}
</style>
<title>Ödeme Bilgileri</title>
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
    <br>
    <br>
<div class="div1">
  <form action="" class="form">
  <div class="divsatir">
    <div class="divlabel">
      <label for="kart_no" class="label">Kart Numarası</label>
    </div>
    <div class="divbox">
      <input type="text" id="kart_no" name="kart_no " placeholder="16 Haneli Kart Numaranız">
    </div>
  </div>
  <div class="divsatir">
    <div class="divlabel">
      <label for="ad_soyad">Kart Üzerindeki Ad Soyad</label>
    </div>
    <div class="divbox">
      <input type="text" id="ad_soyad" name="ad_soyad" placeholder="Adınız Soyadınız">
    </div>
  </div>
  <div class="divsatir">
    <div class="divlabel">
      <label for="kart_bilgileri" class="label">Son Kullanma Tarihi</label>
    </div>
    <div class="divbox">
      <input name="ay" type="number" id="ay" placeholder="Ay" max="12" min="1">
      <strong>/</strong>
      <input name="yıl" type="number" id="yıl" placeholder="Yıl" max="99" min="00">
  </div>
    </div>
    <div class="divlabel">
      <label for="CVC" class="label">CVC</label>
    </div>
    <div class="divbox">
        <input name="cvc" type="text" id="cvc" placeholder="CVC" maxlength="3" >
    </div>
    <div class="divsatir">
      <p>&nbsp; </p>
    <a href="https://www.google.com" target="_blank"> <input type="submit" value="Ödeme yap" class="button" style="vertical-align: middle"></a>
</div>
  </form>
	</div>
    <br>
    <br>
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
					<p>EStech © 2019 - Tüm hakları saklıdır. </p>
					<div class="up">
						<a style="display:scroll;position:fixed; bottom:10px; right:5px;" href="#id1"> <img src="image/yukari-cik.png" alt="yukarı" width="40px" height="40px"/></a>
					</div>
				</div>					
</footer>	<!-- footerin bittiği kısım --> 
	
	
</body>
</html>
