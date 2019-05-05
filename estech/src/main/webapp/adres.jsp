<%@page pageEncoding="UTF-8" %>

<html>
<head>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link rel="stylesheet" href="css/ilbil.css"/>
	<link rel="stylesheet" href="css/header.css"/>
	<link rel="stylesheet" href="css/footer.css"/>
	<link rel="icon" type="image/png" href="image/favicon.ico">
	<title>Kayıt Ol</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="div1">
  <form action="/user/" class="form1" method="post">

      <table  cellspacing="8px" >
          <tr>
              <td><label for="isim" class="label">Ad</label></td>
              <td><input type="text" id="isim" name="ad " placeholder="Adınız" maxlength="20"></td>
          </tr>

          <tr>
              <td><label for="soyad" class="labe1">Soyad</label></td>
              <td><input type="text" id="soyad" name="soyad" placeholder="Soyadınız" maxlength="25"></td>
          </tr>

          <tr>
			  <td><label for="ulke" class="labe1">Ülke</label></td>
              <td><input type="text" id="ulke" name="ulke" placeholder="Ülkeniz" maxlength="25"></td>
          </tr>

          <tr>
              <td><label for="sehir" class="labe1">Şehir</label></td>
              <td><input type="text" id="sehir" name="sehir" placeholder="Şehriniz" maxlength="25"></td>


          </tr>

          <tr>
              <td><label for="ilce" class="labe1">İlçe</label></td>
              <td><input type="text" id="ilce" name="ilce" placeholder="İlçeniz" maxlength="25"></td>
          </tr>
		

          <tr>
              <td>
                  <label for="adres">Adres</label>
              </td>
              <td><textarea id="adres" name="adres" placeholder="Adresiniz" style="height:200px"></textarea></td>
          </tr>
		  
		  <tr>
              <td><label for="telefon" class="labe1">Telefon</label></td>
              <td><input type="text" id="telefon" name="telefon" placeholder="Telefonunuz" maxlength="25"></td>
          </tr>

          <tr>
              <td><input type="hidden"  name="action" value="register"></td>
              <td align="right"><input type="submit" placeholder="Kayıt ol" class="sepetsub" style="vertical-align: middle"></td>
          </tr>

      </table>

  </form>
</div>
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
						<a ></a>
						<a style="display:scroll;position:fixed; bottom:10px; right:5px;" href="#id1"> <img src="image/yukari-cik.png" alt="yukarı" width="40px" height="40px"/></a>
					</div>
				</div>					
</footer>	<!-- footerin bittiği kısım --> 
</body>
</html>
