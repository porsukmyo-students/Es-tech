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


<jsp:include page="header.jsp"/>

<!-- navbarın bittiği kısım -->
			<div id="slider">
			<a href="#"><img src="image/slider/1.png"/></a>
			<a href="#"><img src="image/slider/2.png"/></a>
			<a href="#"><img src="image/slider/3.png"/></a>
			<a href="#"><img src="image/slider/4.png"/></a>
			</div>
   
	<!-- ürünlistesinin bittiği kısım -->
	<jsp:include page="ürünlistesi.jsp"/>
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
