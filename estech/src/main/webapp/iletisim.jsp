<%@page pageEncoding="UTF-8" %>
<html>
<head>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link rel="icon" type="image/png" href="image/favicon.ico">
<link rel="stylesheet" href="css/iletisim.css"/>
	<link rel="stylesheet" href="css/header.css"/>
	<link rel="stylesheet" href="css/footer.css"/>
	<title>İletişim</title>
</head>
<body>
	<jsp:include page="header.jsp"/>

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
		<input type="submit" value="Gönder" class="sepetsub" style="vertical-align: middle">
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
