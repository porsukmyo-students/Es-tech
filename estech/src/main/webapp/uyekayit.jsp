<%@page pageEncoding="UTF-8" %>

<html>
<head>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link rel="stylesheet" href="css/uyekayit.css"/>
	<link rel="stylesheet" href="css/header.css"/>
	<link rel="stylesheet" href="css/footer.css"/>
	<link rel="icon" type="image/png" href="image/favicon.ico">
	<title>Kayıt Ol</title>
</head>
<body>

<jsp:include page="header.jsp"/>

<div class="div1">
  <form action="/estech_war_exploded/user" class="form1" method="post">

      <table  cellspacing="8px" >
          <tr>
              <td><label for="isim" class="label">Ad</label></td>
              <td><input type="text" id="isim" name="name" placeholder="Adınız" maxlength="20"></td>
          </tr>

          <tr>
              <td><label for="soyad" class="labe1">Soyad</label></td>
              <td><input type="text" id="soyad" name="surname" placeholder="Soyadınız" maxlength="25"></td>
          </tr>

          <tr>
              <td>
                  <label for="eposta" class="label">E-posta</label>
              </td>
              <td><input type="email" id="eposta" name="mail" placeholder="E-posta adresiniz" maxlength="30"></td>
          </tr>

          <tr>
              <td>
                  <label for="sifre" class="label">Şifre</label>
              </td>

              <td>
                  <input type="password" id="sifre" name="password" placeholder="Şifreniz" maxlength="15">
              </td>


          </tr>

          <tr>
              <td>
                  <label for="phone" class="label">Telefon Numarası</label>
              </td>
              <td><input type="text" id="phone" name="phone" placeholder="Telefon Numaranız" maxlength="30"></td>
          </tr>


          <tr>
              <td><input type="hidden"  name="action" value="add-user"></td>
              <td align="right"><input type="submit" value="Kayıt ol" class="sepetsub" style="vertical-align: middle"></td>
          </tr>

      </table>
  </form>

</div>
    <jsp:include page="footer.jsp"/>
</body>
</html>
