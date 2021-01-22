-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 21 Oca 2021, 16:41:49
-- Sunucu sürümü: 8.0.17
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `fotograf`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anasayfa`
--

CREATE TABLE `anasayfa` (
  `id` int(11) NOT NULL,
  `foto` char(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ustBaslik` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ustIcerik` varchar(6000) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `anasayfa`
--

INSERT INTO `anasayfa` (`id`, `foto`, `ustBaslik`, `ustIcerik`) VALUES
(1, 'img_4169_1024x768.jpg', 'CAN ÇİLEK', '<p>Burdur Mehmet Akif Ersoy Üniversitesinde Bilgisayar Mühendisliği 4. Sınıf Öğrencisiyim, Mesleğim ile en çok ilgi duyduğum alan mobil programlama bu konuda kendimi geliştirmeye çalışıyorum , orta düzeyde Flutter biliyorum diyebilirim.&nbsp;</p>');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fotograf`
--

CREATE TABLE `fotograf` (
  `id` int(200) NOT NULL,
  `foto` varchar(2500) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `baslik` char(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ustBaslik` char(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `sira` int(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `fotograf`
--

INSERT INTO `fotograf` (`id`, `foto`, `baslik`, `ustBaslik`, `sira`) VALUES
(11, 'deneme_1024x682.jpg', 'Gün Batımı', '2018 Bozcada', 1),
(16, 'img_0599_1024x682.jpg', 'Fatih Sultan Mehmet Köprüsü', '2016 Mihrabat Korusu', 2),
(13, 'img_0631_1024x682.jpg', 'Bitki', '2016 Mihrabat Korusu', 3),
(14, 'img_2257_1024x682.jpg', 'Gün Batımı', '2019 Balıkesir', 4),
(15, 'photo_2021-01-21_03-02-27_1024x627.jpg', 'Gün Batımı', '2018 Ören', 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `id` int(11) NOT NULL,
  `foto` char(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ustBaslik` char(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `baslik` char(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `icerik` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`id`, `foto`, `ustBaslik`, `baslik`, `icerik`) VALUES
(1, 'photo_2021-01-21_01-00-19_1024x676.jpg', 'CAN ÇİLEK', 'HAKKIMDA', '<p>Burdur Mehmet Akif Ersoy Üniversitesinde Bilgisayar Mühendisliği 4. Sınıf Öğrencisiyim, Mesleğim ile en çok ilgi duyduğum alan mobil programlama bu konuda kendimi geliştirmeye çalışıyorum , orta düzeyde Flutter biliyorum diyebilirim.&nbsp;</p>');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE `iletisim` (
  `id` int(11) NOT NULL,
  `ad` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mesaj` text NOT NULL,
  `tarih` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `iletisim`
--

INSERT INTO `iletisim` (`id`, `ad`, `email`, `mesaj`, `tarih`) VALUES
(1, 'Can', 'gfds@hotmail.com', 'gggg', '2020-12-19 15:06:16');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `id` int(11) NOT NULL,
  `kadi` char(50) NOT NULL,
  `parola` char(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `kadi`, `parola`) VALUES
(1, 'admin', '105a9a2d46f64e147097c986076d2164');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `fotograf`
--
ALTER TABLE `fotograf`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `fotograf`
--
ALTER TABLE `fotograf`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `iletisim`
--
ALTER TABLE `iletisim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
