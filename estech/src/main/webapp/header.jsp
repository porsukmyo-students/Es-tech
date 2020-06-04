<%@ page import="java.util.ArrayList" %>
<%@ page import="Models.Category" %>
<%@page pageEncoding="UTF-8" %>
<html>
<head>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<link rel="stylesheet" href="css/header.css">
<meta charset="utf-8">
<title>Başlıksız Belge</title>
</head>

<body>
<div id="id1"></div>
<div class="header1"> <!-- headerin başladığı kısım -->
	<header class="sticky">
		<div class="logo"> <a href="/estech/mainpage"> <img src="image/logo.png" alt="logo" width="117px" height="40px"> </a> </div>
			<ul class="menu">

				<li class="acilirmenu2">

				<%
				//action parametre değerleri: sign-up,sign,orders,my-account,sign-out,shopping-cart
					if(request.getSession().getAttribute("user")==null) {
						out.println("<form action='/estech/user' method='post'>");
						out.println("<input type='hidden' name='action' value='sign-up'>");
						out.println("<li><a><i class='fas fa-user-plus'></i><input type='submit' value='Kayıt ol' class='ustbar' style='vertical-align: middle'></a></li>");
						out.println("</form>");

						out.println("<form action='/estech/user' method='post'>");
						out.println("<input type='hidden' name='action' value='sign-in'>");
						out.println("<li><a><i class='fas fa-sign-in-alt'></i><input type='submit' value='Giriş' class='ustbar' style='vertical-align: middle'></a></li>");
						out.println("</form>");
					}

					else{
						out.println("<form action='/estech/user' method='post'>");
						out.println("<input type='hidden' name='action' value='orders'>");
						out.println("<li><a><i class='fas fa-shipping-fast'></i><input type='submit' value='Siparişler' class='ustbar' style='vertical-align: middle'></a></li>");
						out.println("</form>");

						out.println("<form action='/estech/user' method='post'>");
						out.println("<input type='hidden' name='action' value='my-account'>");
						out.println("<li><a><i class='fas fa-user'></i><input type='submit' value='Hesabım' class='ustbar' style='vertical-align: middle'></a></li>");
						out.println("</form>");

						out.println("<form action='/estech/user' method='post'>");
						out.println("<input type='hidden' name='action' value='sign-out'>");
						out.println("<li><a><i class='fas fa-sign-out-alt'></i><input type='submit' value='Çıkış Yap' class='ustbar' style='vertical-align: middle'></a></li>");
						out.println("</form>");
					}
				%>
				<form action="/estech/user" method="post">
					<input type="hidden" name="action" value="shopping-cart">
					<li><a ><i class="fas fa-shopping-cart"></i><input type="submit" value="Sepet" class="ustbar" style="vertical-align: middle"></a></li>
				</form>

				</li>
			</ul>
	</header>
</div>  <!-- headerin bittiği kısım -->
	<div class="nav1">	<!-- navbarın başladığı kısım -->
		<nav>
			<ol class="menu2">
				<li>
					<a>
						<form method="post" action="mainpage">
							<input type="submit" value="Anasayfa" class="navbar" style="vertical-align: middle"><input type="hidden" name="action" value=""/>
						</form>
					</a>
				</li>

				<%
					ArrayList<Category> categories = (ArrayList<Category>) request.getSession().getAttribute("categories");

					if(categories == null || categories.size()==0){
						response.sendRedirect("/estech/mainpage");
					}
					else{
						for (int i = 0; i <categories.size() ; i++) {

							Category category;
							category = categories.get(i);
							out.println("<li>");
							out.println("<form method='post' action='/estech/mainpage'>");
							out.println("<input type='hidden' name='action' value='getProducts="+category.getId()+"'/>");
                            out.println("<input type='submit'  value='"+category.getName()+"' class='navbar' style='vertical-align: middle'>");
                            out.println("</form>");
							out.println("</li>");
						}
					}

				%>

			</ol>
		</nav>
	</div>	<!-- navbarın bittiği kısım -->
</body>
</html>
