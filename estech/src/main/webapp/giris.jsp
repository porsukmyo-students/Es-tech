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
  <form action="/estech/user" method="post" class="form">

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
				  <input type="hidden" name="action" value="login-control" />
			  </td>

			  <td align="right">
				  <input type="submit" value="Giriş yap" class="sepetsub" style="vertical-align: middle">
			  </td>

		  </tr>

	  </table>

  </form>
</div> 
<footer>	<!-- footerin başladığı kısım --> 
	<jsp:include page="footer.jsp"	/>
</footer>	<!-- footerin bittiği kısım --> 
</body>
</html>
