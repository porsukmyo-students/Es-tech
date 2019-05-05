﻿<%@page pageEncoding="UTF-8" %>

<html>
<head> 
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<title>EStech</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="image/favicon.ico">
	<link href="css/sepet.css" rel="stylesheet"/>
	<link href="css/header.css" rel="stylesheet"/>
	<link href="css/footer.css" rel="stylesheet"/>
</head>

<body>
<jsp:include page="header.jsp"/>

	<section id="sepet_urun">
		<div class="bolmeler">
			<div class="sepet_detay">
				<thead>
						<tr class="sepet_menu">
							<td class="gorsel">Ürün</td>
							<td class="aciklama">Açıklama</td>
                                                        <td class="adet">Adet</td>
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
                                                        <td class="sepet_adet">
                                                           <input class="adet_box" type="text" value="1"></input>
                                                        </td>
							<td class="sepet_toplam">
								<p class="sepet_toplam_fiyat">₺3.790,00</p>
							</td>
							<td class="sepet_sil">
                                                            <a class="sepet_miktar_sil" href="">SİL</a>
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
                                                        <td class="sepet_adet">
                                                           <input class="adet_box" type="text" value="1"></input>
                                                        </td>
							<td class="sepet_toplam">
								<p class="sepet_toplam_fiyat">₺3.790,00</p>
							</td>
							<td class="sepet_sil">
                                                            <a class="sepet_miktar_sil" href="">SİL</a>
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
                                                        <td class="sepet_adet">
                                                           <input class="adet_box" type="text" value="1"></input>
                                                        </td>
							<td class="sepet_toplam">
								<p class="sepet_toplam_fiyat">₺3.790,00</p>
							</td>
							<td class="sepet_sil">
								<a class="sepet_miktar_sil" href="">SİL</a>
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
		  <a href=""><input type="submit" value="Güncelle" class="guncelle" style="vertical-align: middle"></a>
          <a href="adres.html"><input type="submit" value="Ödemeye Git" class="odeme" style="vertical-align: middle"></a> 
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
