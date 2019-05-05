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
		<div class="logo"> <a href="/estech_war_exploded/estech"> <img src="image/logo.png" alt="logo" width="117px" height="40px"> </a> </div>
			<ul class="menu">
                            <!--Yeni Eklenen Kısım-->
                            <li class="acilirmenu2">
					<li><a href="uyekayit.html"><i class="fas fa-shipping-fast"></i><input type="submit" value="Siparişlerim" class="ustbar" style="vertical-align: middle"></a></li>	
					<li><a href="uyekayit.html"><i class="fas fa-user"></i><input type="submit" value="Hesabım" class="ustbar" style="vertical-align: middle"></a></li>
					<li><a href="uyekayit.html"><i class="fas fa-sign-out-alt"></i><input type="submit" value="Çıkış Yap" class="ustbar" style="vertical-align: middle"></a></li>
					<li><a href="uyekayit.html"><i class="fas fa-user-plus"></i><input type="submit" value="Kayıt ol" class="ustbar" style="vertical-align: middle"></a></li>
					<li><a href="giris.html"><i class="fas fa-sign-in-alt"></i><input type="submit" value="Üye girişi" class="ustbar" style="vertical-align: middle"></a></li>
					<li><a href="sepet.html"><i class="fas fa-shopping-cart"></i><input type="submit" value="Sepet" class="ustbar" style="vertical-align: middle"></a></li>
			    </li>
                            <!--Yeni Eklenen Kısım-->
				<%
					if(request.getParameter("user")==null){
						out.println("<li>");
						out.println("<div class='btn'>");
						out.println("<i class = 'fas fa-user-plus'></i>");
						out.println("<form action='/estech_war_exploded/user' method='post'>");
						out.println("<input type='hidden' name='action' value='register'>");
						out.println("<input type='submit'  value='Kayıt ol' class='ustbar' style='vertical-align:middle'>");
						out.println("</form>");
						out.println("</div>");


						out.println("<li>");
						out.println("<div class='btn'>");
						out.println("<i class = 'fas fa-user-alt'></i>");
						out.println("<form action='/estech_war_exploded/user' method='post'>");
						out.println("<input type='hidden' name='action' value='login'>");
						out.println("<input type='submit'  value='Üye girişi' class='ustbar' style='vertical-align:middle'>");
						out.println("</form>");
						out.println("</div>");


					}

				%>


<%--				<li>--%>
<%--					<div class="btn">--%>
<%--						<i class="fas fa-user-plus"></i>--%>
<%--						<form action="/estech_war_exploded/user" method="post">--%>
<%--						<input type="hidden" name="action" value="register"/>--%>
<%--						<input type="submit" value="Kayıt ol" class="ustbar" style="vertical-align: middle">--%>
<%--					</form>--%>
<%--				</div>--%>


<%--				</li>--%>
<%--				<li>--%>
<%--					<div class="btn">--%>
<%--						<i class="fas fa-user-alt"></i>--%>
<%--						<form action="/estech_war_exploded/user" method="post">--%>
<%--							<input type="hidden" value="login" name="action"/>--%>
<%--							<input type="submit" value="Üye girişi" class="ustbar" style="vertical-align: middle">--%>
<%--						</form>--%>
<%--					</div>--%>
<%--				</li>--%>

				<li>

					<div class="btn">
						<i class="fas fa-shopping-cart"></i>
						<form action="/estech_war_exploded/user" method="post">
							<input type="hidden" name="action" value="basket"/>
							<input type="submit" value="Sepet" class="ustbar" style="vertical-align: middle">
						</form>
					</div>

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

						response.sendRedirect("/estech_war_exploded/mainpage");
					}
					else{
						for (int i = 0; i <categories.size() ; i++) {

							Category category;
							category = categories.get(i);
							out.println("<li>");
							out.println("<form method='post' action='/estech_war_exploded/mainpage'>");
							out.println("<input type='hidden' name='action' value='getProducts="+category.getId()+"'/>");
                            out.println("<input type='submit'  value='"+category.getName()+"' class='navbar' style='vertical-align: middle'>");
                            out.println("</form>");
							out.println("</li>");
						}
					}



				%>


<%--				<li class="acilirmenu">--%>
<%--                <a href="javascript:void(0)" class="dropbtn"><input type="submit" value="Kategori 1" class="navbar" style="vertical-align: middle"></a>--%>
<%--					<div class="acilirmenu-icerik">--%>
<%--					<a href="#"><input type="submit" value="Alt Kategori 1" class="navbar" style="vertical-align: middle"></a>--%>
<%--					<a href="#"><input type="submit" value="Alt Kategori 2" class="navbar" style="vertical-align: middle"></a>--%>
<%--					<a href="#"><input type="submit" value="Alt Kategori 3" class="navbar" style="vertical-align: middle"></a>--%>
<%--					<a href="#"><input type="submit" value="Alt Kategori 4" class="navbar" style="vertical-align: middle"></a>--%>
<%--					<a href="#"><input type="submit" value="Alt Kategori 5" class="navbar" style="vertical-align: middle"></a>--%>
<%--					</div>--%>
<%--				</li>--%>
<%--				<li class="acilirmenu">--%>
<%--                <a href="javascript:void(0)" class="dropbtn"><input type="submit" value="Kategori 2" class="navbar" style="vertical-align: middle"></a>--%>
<%--					<div class="acilirmenu-icerik">--%>
<%--					<a href="#"><input type="submit" value="Alt Kategori 1" class="navbar" style="vertical-align: middle"></a>--%>
<%--					<a href="#"><input type="submit" value="Alt Kategori 2" class="navbar" style="vertical-align: middle"></a>--%>
<%--					<a href="#"><input type="submit" value="Alt Kategori 3" class="navbar" style="vertical-align: middle"></a>--%>
<%--					<a href="#"><input type="submit" value="Alt Kategori 4" class="navbar" style="vertical-align: middle"></a>--%>
<%--					</div>--%>
<%--				</li>--%>
<%--				<li class="acilirmenu">--%>
<%--                <a href="javascript:void(0)" class="dropbtn"><input type="submit" value="Kategori 3" class="navbar" style="vertical-align: middle"></a>--%>
<%--					<div class="acilirmenu-icerik">--%>
<%--					<a href="#"><input type="submit" value="Alt Kategori 1" class="navbar" style="vertical-align: middle"></a>--%>
<%--					<a href="#"><input type="submit" value="Alt Kategori 2" class="navbar" style="vertical-align: middle"></a>--%>
<%--					<a href="#"><input type="submit" value="Alt Kategori 3" class="navbar" style="vertical-align: middle"></a>--%>
<%--					</div>--%>
<%--				</li>--%>
<%--				<li class="acilirmenu">--%>
<%--                <a href="javascript:void(0)" class="dropbtn"><input type="submit" value="Kategori 4" class="navbar" style="vertical-align: middle"></a>--%>
<%--					<div class="acilirmenu-icerik">--%>
<%--					<a href="#"><input type="submit" value="Alt Kategori 1" class="navbar" style="vertical-align: middle"></a>--%>
<%--					<a href="#"><input type="submit" value="Alt Kategori 2" class="navbar" style="vertical-align: middle"></a>--%>
<%--					</div>--%>
<%--				</li>--%>
<%--				<li class="acilirmenu">--%>
<%--				<a href="javascript:void(0)" class="dropbtn"><input type="submit" value="Kategori 5" class="navbar" style="vertical-align: middle"></a>--%>
<%--					<div class="acilirmenu-icerik">--%>
<%--					<a href="#"><input type="submit" value="Alt Kategori 1" class="navbar" style="vertical-align: middle"></a>--%>
<%--					</div>--%>
<%--				</li>--%>
			</ol>
		</nav>
	</div>	<!-- navbarın bittiği kısım -->
</body>
</html>
