<%@ page import="Models.Customer" %>
<%@page pageEncoding="UTF-8" %>

<html>
<head>
    <meta charset="UTF-8"/>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link rel="stylesheet" href="css/hesabim.css"/>
	<link rel="stylesheet" href="css/header.css"/>
	<link rel="stylesheet" href="css/footer.css"/>
	<link rel="icon" type="image/png" href="image/favicon.ico">
	<title>Hesabım</title>
</head>
<body>
<jsp:include page="header.jsp"/>


<%!Customer user;%>
<%
    user = (Customer) request.getSession().getAttribute("user");
%>

<div class="div1">
  <form action="/estech_war_exploded/user" class="form1" method="post">

      <table  cellspacing="8px" >
          <tr>
              <td><label for="isim" class="label">Ad</label></td>
              <td><input type="text" id="isim" name="name" value=<%=user.getName()%> maxlength="20" required></td>
          </tr>

          <tr>
              <td><label for="soyad" class="labe1">Soyad</label></td>
              <td><input type="text" id="soyad" name="surname" value=<%=user.getSurName()%> maxlength="25" required></td>
          </tr>

          <tr>
              <td>
                  <label for="eposta" class="label">E-posta</label>
              </td>
              <td><input type="email" id="eposta" name="mail" value=<%=user.getMail()%> maxlength="30" required></td>
          </tr>

          <tr>
              <td>
                  <label for="sifre" class="label">Şifre</label>
              </td>

              <td>
                  <input type="password" id="sifre" name="password"  maxlength="15" required>
              </td>

          </tr>

          <tr>
              <td>
                  <label for="telefon" class="label">E-posta</label>
              </td>
              <td><input type="text" id="telefon" name="phone" value=<%=user.getPhoneNumber()%> maxlength="14" required></td>
          </tr>


          <tr>
              <td><input type="hidden"  name="action" value="updateAccount" required></td>
              <td align="right"><input type="submit" value="Güncelle" class="sepetsub" style="vertical-align: middle"></td>
          </tr>

      </table>

  </form>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
