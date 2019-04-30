<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/giris.css"/>
    <title>Giriş</title>
</head>
<body>
<div class="div1">
    <form  class="form" method="post" action="LoginServlet">
        <div class="divsatir">
            <div class="divlabel">
                <label for="eposta" class="label">E-posta</label>
            </div>
            <div class="divbox">
                <input type="email" id="eposta" name="mail" placeholder="E-posta adresiniz">
            </div>
        </div>
        <div class="divsatir">
            <div class="divlabel">
                <label for="sifre" class="label">Şifre</label>
            </div>
            <div class="divbox">
                <input type="password" id="sifre" name="password" placeholder="Şifreniz" >
            </div>
        </div>
        <div class="divsatir">
            <input type="submit" class="button" style="vertical-align: middle" value="Giriş">
        </div>
    </form>
</div>
</body>
</html>
