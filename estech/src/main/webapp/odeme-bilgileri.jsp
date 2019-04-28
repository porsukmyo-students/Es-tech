<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/odemebil.css"/>
<style type="text/css">
.div1 .form .divbox strong {
	font-weight: inherit;
	font-size: 24px;
	text-align: justify;
	color: #000000;
}
.div1 {
	text-align: center;
}
.div1 {
	text-align: left;
}
</style>
<title>Ödeme Bilgileri</title>
</head>
<body>
<div class="div1">
  <form action="" class="form">
  <div class="divsatir">
    <div class="divlabel">
      <label for="kart_no" class="label">Kart Numarası</label>
    </div>
    <div class="divbox">
      <input type="text" id="kart_no" name="kart_no " placeholder="16 Haneli Kart Numaranız">
    </div>
  </div>
  <div class="divsatir">
    <div class="divlabel">
      <label for="ad_soyad">Kart Üzerindeki Ad Soyad</label>
    </div>
    <div class="divbox">
      <input type="text" id="ad_soyad" name="ad_soyad" placeholder="Adınız Soyadınız">
    </div>
  </div>
  <div class="divsatir">
    <div class="divlabel">
      <label for="kart_bilgileri" class="label">Son Kullanma Tarihi</label>
    </div>
    <div class="divbox">
      <input name="ay" type="number" id="ay" placeholder="Ay" max="12" min="1" size="2">
      <strong>/</strong>
      <input name="yıl" type="number" id="yıl" placeholder="Yıl" max="99" min="00" size="2">
  </div>
    </div>
    <div class="divlabel">
      <label for="CVC" class="label">CVC</label>
    </div>
    <div class="divbox">
        <input name="cvc" type="text" id="cvc" placeholder="CVC" size="2" maxlength="3" >
    </div>
    <div class="divsatir">
      <p>&nbsp; </p>
    <a href="https://www.google.com" target="_blank"> <button class="button" style="vertical-align: middle"> <span>Ödeme Yap</span> </button></a>
</div>
  </form>
</div>
<span class="div1"></span><span class="div1"></span>
</body>
</html>
