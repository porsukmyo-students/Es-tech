<%@ page import="java.util.ArrayList" %>
<%@ page import="Models.Product" %>
<%@ page import="java.util.logging.Logger" %>
<%@page pageEncoding="UTF-8" %>

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

    <script>
        function totalPriceAdd() {



            let price_elements = document.getElementsByClassName("price");

            let quantity_elements = document.getElementsByClassName("adet_box");

            let total_elements = document.getElementsByClassName("sepet_toplam_fiyat");

            let full_total_price=0;
            let total_price=0;

                for(let i = 0 ; i < quantity_elements.length ; i++){
                     total_price = price_elements[i].innerHTML * quantity_elements[i].value;
                     full_total_price+= total_price;
                     total_elements[i].innerHTML = total_price+"₺";
                }


            let spans = document.getElementsByClassName("span1");

                for(let i = 0;i<spans.length;i++){
                    spans[i].innerHTML = full_total_price+"₺";
                }

        }

        window.onload = function () {
            totalPriceAdd();
        }


    </script>

</head>

<body>
<jsp:include page="header.jsp"/>

	<section id="sepet_urun">
		<div class="bolmeler">
			<div class="sepet_detay">
				<table class="tablo">
				<thead>
						<tr class="sepet_menu">
							<td class="gorsel">Ürün</td>
							<td class="aciklama">Açıklama</td>
							<td class="fiyat">Fiyat</td>
                            <td class="adet">Adet</td>
							<td class="toplam">Toplam Fiyat</td>
							<td></td>
						</tr>
					</thead>
					<tbody>



						<%

                            ArrayList<Product> products = (ArrayList<Product>) request.getSession().getAttribute("shopping-cart");

                            Logger logger = Logger.getLogger("sepet ");



							if(products != null){
                                logger.info(String.valueOf(products.size()));

                                for(Product p : products){

								    out.println("<tr>");
								    out.println("<td class='sepet_urun'>");
                                    out.println("<a><img src='data:image/jpg;base64,"+p.getPhoto()+"' width='110' height='110'></a>");
                                    out.println("</td>");

                                    out.println("<td class='sepet_aciklama'>");
                                    out.println("<h4><a>"+p.getTitle()+"</a></h4>");
                                    out.println("<p>ID: "+p.getProductNumber()+"</p>");
                                    out.println("</td>");

                                    out.println("<td class='sepet_fiyat'>");
                                    out.println("<p class='price'>"+p.getPrice()+"</p>");
                                    out.println("</td>");


                                    out.println("<td class='sepet_adet'>");
                                    out.println("<input class='adet_box' type='number' value='1' min='1' id='adet' name='quantity' onchange=totalPriceAdd()></input>");
                                    out.println("</td>");

                                    out.println("<td class='sepet_toplam'>");
                                    out.println("<p class='sepet_toplam_fiyat' ></p>");
                                    out.println("</td>");

                                    out.println("<td class='sepet_sil'>");
                                    out.println("<form action='/estech_war_exploded/mainpage' method='post'>");
                                    out.println("<input type='hidden' name='action' value='removeShoppingCart="+p.getProductNumber()+"'>");
                                    out.println("<input type='submit' class='sepet_miktar_sil' value='SİL'/>");
                                    out.println("</form>");
                                    out.println("</td>");

                                    out.println("</tr>");

					            }
							}

						%>

					</tbody>
				</table>
			</div>
		</div>
	</section>

	<section id="tutar_kismi">
		<div class="odeme_alani">
		  <ul>
		    <li>Ürünler Toplamı <span class="span1">₺7.579,99</span></li>
		    <li>Gönderim Ücreti <span>Ücretsiz</span></li>
		    <li>Ödenecek Tutar <span class="span1">₺7.579,99</span></li>
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
