<%@ page import="Models.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@page pageEncoding="UTF-8" %>

<html>
<head>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<link rel="stylesheet" href="css/ürünlistesi.css">
	<link rel="stylesheet" href="css/header.css">
<meta charset="utf-8">
<title>Ürün Sayfası</title>
</head>
<body>


	<section  id="urun_list" style="width: 100%;">	<!-- ürünlistesinin başladığı kısım -->
		<div class="blank_aside"> </div>
		<div  id="div1"  > 	<!-- 1.ana div -->


			<%

				ArrayList<Product> products = (ArrayList<Product>)request.getAttribute("products");
				if(products == null || request.getSession().getAttribute("categories") == null){
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
	</section>



</body>
</html>