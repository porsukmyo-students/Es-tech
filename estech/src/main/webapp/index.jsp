<%@ page import="java.util.ArrayList" %>
<%@ page import="Models.Product" %>
<%@page pageEncoding="UTF-8" %>
<html>
<head>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<link rel="icon" type="image/png" href="image/favicon.ico">
	<style>
		#slider {
    		width:1200px;
    		height:365px;
    	}
	</style>
	<link rel="stylesheet" href="css/header.css">
	<link rel="stylesheet" href="css/ürünlistesi.css">
	<link rel="stylesheet" href="css/footer.css">
	<link rel="stylesheet" href="css/slider.css">
	<script src="js/slider.js"></script>
	<script src="js/slider-min.js"></script>
	<script src="js/size.js"></script>
	<meta charset="utf-8">
	<title>ES-TECH</title>
</head>
<body>
<div  id="id1"></div>
<div class="header1"> <!-- headerin başladığı kısım --> 
	<header class="sticky">
		<div class="logo"> <a href="index.html"> <img src="image/logo.png" alt="logo" width="117px" height="40px"> </a> </div>
			<ul class="menu">
				<li><a ><i class="fas fa-user-plus"></i><input type="submit" value="Kayıt ol" class="ustbar" style="vertical-align: middle"></a></li>
				<li><a href="giris.html"><i class="fas fa-user-alt"></i><input type="submit" value="Üye girişi" class="ustbar" style="vertical-align: middle"></a></li>
				<li><a href="sepet.html"><i class="fas fa-shopping-cart"></i><input type="submit" value="Sepet" class="ustbar" style="vertical-align: middle"></a></li>
			</ul>
	</header>
</div>  <!-- headerin bittiği kısım --> 
	<div class="nav1">	<!-- navbarın başladığı kısım --> 
		<nav>
			<ol class="menu2">
				<li><a href="index.html"><input type="submit" value="Anasayfa" class="navbar" style="vertical-align: middle"></a></li>
				<li class="acilirmenu">
                <a href="javascript:void(0)" class="dropbtn"><input type="submit" value="Kategori 1" class="navbar" style="vertical-align: middle"></a>
					<div class="acilirmenu-icerik">
					<a href="#"><input type="submit" value="Alt Kategori 1" class="navbar" style="vertical-align: middle"></a>
					<a href="#"><input type="submit" value="Alt Kategori 2" class="navbar" style="vertical-align: middle"></a>
					<a href="#"><input type="submit" value="Alt Kategori 3" class="navbar" style="vertical-align: middle"></a>
					<a href="#"><input type="submit" value="Alt Kategori 4" class="navbar" style="vertical-align: middle"></a>
					<a href="#"><input type="submit" value="Alt Kategori 5" class="navbar" style="vertical-align: middle"></a>
					</div>
				</li>
				<li class="acilirmenu">
                <a href="javascript:void(0)" class="dropbtn"><input type="submit" value="Kategori 2" class="navbar" style="vertical-align: middle"></a>
					<div class="acilirmenu-icerik">
					<a href="#"><input type="submit" value="Alt Kategori 1" class="navbar" style="vertical-align: middle"></a>
					<a href="#"><input type="submit" value="Alt Kategori 2" class="navbar" style="vertical-align: middle"></a>
					<a href="#"><input type="submit" value="Alt Kategori 3" class="navbar" style="vertical-align: middle"></a>
					<a href="#"><input type="submit" value="Alt Kategori 4" class="navbar" style="vertical-align: middle"></a>
					</div>
				</li>
				<li class="acilirmenu">
                <a href="javascript:void(0)" class="dropbtn"><input type="submit" value="Kategori 3" class="navbar" style="vertical-align: middle"></a>
					<div class="acilirmenu-icerik">
					<a href="#"><input type="submit" value="Alt Kategori 1" class="navbar" style="vertical-align: middle"></a>
					<a href="#"><input type="submit" value="Alt Kategori 2" class="navbar" style="vertical-align: middle"></a>
					<a href="#"><input type="submit" value="Alt Kategori 3" class="navbar" style="vertical-align: middle"></a>
					</div>
				</li>
				<li class="acilirmenu">
                <a href="javascript:void(0)" class="dropbtn"><input type="submit" value="Kategori 4" class="navbar" style="vertical-align: middle"></a>
					<div class="acilirmenu-icerik">
					<a href="#"><input type="submit" value="Alt Kategori 1" class="navbar" style="vertical-align: middle"></a>
					<a href="#"><input type="submit" value="Alt Kategori 2" class="navbar" style="vertical-align: middle"></a>
					</div>
				</li>
				<li class="acilirmenu">
				<a href="javascript:void(0)" class="dropbtn"><input type="submit" value="Kategori 5" class="navbar" style="vertical-align: middle"></a>
					<div class="acilirmenu-icerik">
					<a href="#"><input type="submit" value="Alt Kategori 1" class="navbar" style="vertical-align: middle"></a>
					</div>
				</li>
			</ol>
		</nav>
	</div>	<!-- navbarın bittiği kısım --> 
			<div id="slider">
			<a href="#"><img src="image/slider/1.png"/></a>
			<a href="#"><img src="image/slider/2.png"/></a>
			<a href="#"><img src="image/slider/3.png"/></a>
			<a href="#"><img src="image/slider/4.png"/></a>
			</div>
   
<section  id="urun_list" style="width: 100%;">	<!-- ürünlistesinin başladığı kısım -->
	<div class="blank_aside"> </div>
	<div  id="div1"  > 	<!-- 1.ana div -->




		<%

			ArrayList<Product> products = (ArrayList<Product>)request.getAttribute("products");
			if(products == null ){
				response.sendRedirect("/estech/mainpage");
			}
			else{
				Product product;

				for(int i = 0 ; i<products.size();i++){
					product = products.get(i);
					out.println("<div class='div2'>");//2.div 329x510
					out.println("<div class='div3'>");//3.div 283x430
					out.println("<div class='div4'>");//
					out.println("<div class='div5'>");
					out.println("<a><img src='data:image/jpg;base64,"+product.getPhoto()+"' width='230' height='200'></a>");
					out.println("</div>");
					out.println("</div>");
					out.println("<div class='div6' align='center'>");
					out.println("<span class='p'>"+product.getPrice()+"₺</span>");
					out.println("</div>");
					out.println("<div class=div7>");
					out.println("<p class='div7class'><span>"+product.getTitle()+"</span></p>");
					out.println("</div>");
					out.println("<div class='div8'>");
					out.println("<a target='_blank'><input type='submit' value='Sepete Ekle' class='sepetsub' style='vertical-align:middle'></a>");
					out.println("</div>");
					out.println("</div>");
					out.println("</div>");
				}
			}

		%>



</div>
	<div class="blank_aside" ></div>
</section>	<!-- ürünlistesinin bittiği kısım -->
	
<footer>	<!-- footerin başladığı kısım --> 
	<div class="hakkimizda">
		<p> <b>Biz Kimiz? </b><br> Eskişehir Teknik Üniversitesi'nde Web Programlama Dersi proje ödevi için bir araya gelen 7 kişilik öğrenci grubuyuz.</p>
	</div>
		<div class="ulasim">
			<a href="iletisim.html"> <span> <b> Bize ulaşın </b></span></a>
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
