<%@page pageEncoding="UTF-8" %>

<html>
<head> 
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<title>EStech</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="image/favicon.ico">
	<link href="css/siparislerim.css" rel="stylesheet"/>
	<link href="css/header.css" rel="stylesheet"/>
	<link href="css/footer.css" rel="stylesheet"/>
</head>

<body>
<div id="id1"></div>

<jsp:include page="header.jsp"/>

<section id="siparisler">
    <table class="siparis">
        <thead class="siparis_bilgileri">
            <tr>
                <td colspan="2" class="tarih_kod">
                    <p>Sipariş Tarihi: 05/05/2019</p>
                    <p>Sipariş Kodu: 546518461</p>
                </td>
                <td class="siparis_tutar">
                    <h4>Ödenen Tutar:</h4>
                    <p>₺36.48</p>
                </td>
            </tr>
        </thead>
        <tbody class="urun_bilgileri">
            <tr class="urun_aciklamalari">
                <td rowspan="2" class="resim"><a href="urun-detay.html"><input type="submit" value="" class="urun_isim2" style="vertical-align: middle"><img src="image/i9.jpg" width="110" height="110" alt=""></a></td>
                <td class="urun_isim"><a href="urun-detay.html"><input type="submit" value="Intel I9 İşlemci" class="urun_isim2" style="vertical-align: middle"></a></td>
                <td class="adres"><b>Adres:</b>Çamlıca Mh. KYK Gündüzalp Öğrenci Yurdu Tepebaşı/Eskişehir</td>
            </tr>
            <tr>
                <td class="adet_fiyat">
                    <p>2 Adet</p>
                    <p>₺5.840</p>
                </td>
                <td class="kargo">
                    <p><b>Kargo:</b> EStech Kargo</p>
                    <p><b>Kargo Takip:</b> 2165461612</p>
                </td>
            </tr>
        </tbody>
        <tbody class="urun_bilgileri">
            <tr class="urun_aciklamalari">
                <td rowspan="2" class="resim"><a href="urun-detay.html"><input type="submit" value="" class="urun_isim2" style="vertical-align: middle"><img src="image/i9.jpg" width="110" height="110" alt=""></a></td>
                <td class="urun_isim"><a href="urun-detay.html"><input type="submit" value="Intel I9 İşlemci" class="urun_isim2" style="vertical-align: middle"></a></td>
                <td class="adres"><b>Adres:</b>Çamlıca Mh. KYK Gündüzalp Öğrenci Yurdu Tepebaşı/Eskişehir</td>
            </tr>
            <tr>
                <td class="adet_fiyat">
                    <p>2 Adet</p>
                    <p>₺5.840</p>
                </td>
                <td class="kargo">
                    <p><b>Kargo:</b> EStech Kargo</p>
                    <p><b>Kargo Takip:</b> 2165461612</p>
                </td>
            </tr>
        </tbody>
        <tbody class="urun_bilgileri">
            <tr class="urun_aciklamalari">
                <td rowspan="2" class="resim"><a href="urun-detay.html"><input type="submit" value="" class="urun_isim2" style="vertical-align: middle"><img src="image/i9.jpg" width="110" height="110" alt=""></a></td>
                <td class="urun_isim"><a href="urun-detay.html"><input type="submit" value="Intel I9 İşlemci" class="urun_isim2" style="vertical-align: middle"></a></td>
                <td class="adres"><b>Adres:</b>Çamlıca Mh. KYK Gündüzalp Öğrenci Yurdu Tepebaşı/Eskişehir</td>
            </tr>
            <tr>
                <td class="adet_fiyat">
                    <p>2 Adet</p>
                    <p>₺5.840</p>
                </td>
                <td class="kargo">
                    <p><b>Kargo:</b> EStech Kargo</p>
                    <p><b>Kargo Takip:</b> 2165461612</p>
                </td>
            </tr>
        </tbody>
    </table>
</section>

	
<jsp:include page="footer.jsp"/>
</body>
</html>
