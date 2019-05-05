<%@page pageEncoding="UTF-8" %>
<html>
<head>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link rel="stylesheet" href="css/giris.css">
	<link rel="stylesheet" href="css/header.css">
	<link rel="stylesheet" href="css/footer.css">
	<link rel="icon" type="image/png" href="image/favicon.ico">
	<title>Giriş</title>
</head>
<body>

<jsp:include page="header.jsp"/>
<div class="div1">
  <form action="/estech_war_exploded/user" method="post" class="form">

	  <table cellspacing="10px">
		  <tr>
			  <td>
				  <label for="eposta" class="label">E-posta</label>
			  </td>
			  <td>
				  <input type="email" id="eposta" name="mail" placeholder="E-posta adresiniz" maxlength="50">
			  </td>
		  </tr>

		  <tr>
			  <td>
				  <label for="sifre" class="label">Şifre</label>
			  </td>
			  <td>
				  <input type="password" id="sifre" name="password" placeholder="Şifreniz" maxlength="15" >
			  </td>
		  </tr>

		  <tr>
			  <td>
				  <input type="hidden" name="action" value="sing-in" />
			  </td>

			  <td align="right">
				  <input type="submit" value="Giriş yap" class="sepetsub" style="vertical-align: middle">
			  </td>

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
