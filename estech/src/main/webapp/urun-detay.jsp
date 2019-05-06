<%@ page import="Models.Product" %>
<%@page pageEncoding="UTF-8" %>

<html>
<head>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<link rel="icon" type="image/png" href="image/favicon.ico">
    <meta charset="utf-8">
    <title>EStech</title>
	<link rel="stylesheet" href="css/footer.css">
    <link rel="icon" type="image/png" href="image/favicon.ico">
	<link rel="stylesheet" href="css/header.css">
	<link href="css/detay.css" rel="stylesheet">
    </head>
<body>
<jsp:include page="header.jsp"/>


	<%! Product product;%>

	<%product = (Product) request.getAttribute("product");%>

    <div class="icerik">
  <div class="solkisim">
    <div class="kart">
      <img src=<%="data:image/jpg;base64,"+product.getPhoto()%> width="300" heigth="300">
<%--      <p>İşlemci Özellikleri İşlemci Sayısı : 8 Çekirdek İşlemci Soket Tipi : Soket 1151 - 9. Nesil İşlemci Numarası : 9900K İşlemci Teknolojisi : Intel Core i9 İşlemci Hızı : 3.6 GHz Turbo ile 5.0 GHz İşlemci Ön Bellek : 16 MB İşlemci Bus Hızı : 8 GT/s DMI3 İşlemci Markası : Intel Teknik Özellikler Boost Guard : Var Intel vPro : Var Intel Kimlik Koruması : Var Intel OS Koruması : Var Termal İzleme : Var Intel Optane : Var </p>--%>
    </div>
  </div>
  <div class="sagkisim">
    <div class="kart">
      <h2><%=product.getTitle()%></h2>
        <span><%=product.getPrice()+"₺"%></span> <br><br>
      <a href="sepet.html" target="_blank"> <input type="submit" value="Sepete Ekle" class="sepetsub" style="vertical-align: middle"></a>
    </div>
  </div>
</div>
<br><br><br><br><br><br><br><br><br><br>
    
<jsp:include page="footer.jsp"/>
	<!-- footerin bittiği kısım -->
</body>
</html>
