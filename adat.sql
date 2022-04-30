-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2022 at 07:02 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `webshop`
--
CREATE DATABASE IF NOT EXISTS `anyad` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `anyad`;

-- --------------------------------------------------------

--
-- Table structure for table `felhasznalo`
--

DROP TABLE IF EXISTS `felhasznalo`;

CREATE TABLE `felhasznalo` (
  `Felh_id` int(11) NOT NULL,
  `Felh_nev` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `jelszo` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `felhasznalo`
--

INSERT INTO `felhasznalo` (`Felh_id`, `Felh_nev`, `jelszo`, `email`) VALUES
(1, 'Gabo', '7815696ecbf1c96e6894b779456d330e', 'gabo.imre@gmail.com'),
(2, 'Roland', '7815696ecbf1c96e6894b779456d330e', 'rolandbardfalvi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ferfi_ora_regi`
--

DROP TABLE IF EXISTS `ferfi_ora_regi`;
CREATE TABLE `ferfi_ora_regi` (
  `Ferfi_ora_id` int(11) NOT NULL,
  `Ferfi_ora_tipus_id` int(11) NOT NULL,
  `ajanlatunk` int(10) NOT NULL,
  `Ferfi_ora_nev` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Ferfi_ora_tipus` varchar(30) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Ferfi_ora_marka` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Ferfi_ora_ar` int(11) NOT NULL,
  `Ferfi_ora_szin` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Ferfi_ora_leiras` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Ferfi_ora_leiras2` varchar(1000) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Ferfi_ora_keszlet` int(11) NOT NULL,
  `Ferfi_ora_kep` varchar(256) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `ferfi_ora_regi`
--

INSERT INTO `ferfi_ora_regi` (`Ferfi_ora_id`, `Ferfi_ora_tipus_id`, `ajanlatunk`, `Ferfi_ora_nev`, `Ferfi_ora_tipus`, `Ferfi_ora_marka`, `Ferfi_ora_ar`, `Ferfi_ora_szin`, `Ferfi_ora_leiras`, `Ferfi_ora_leiras2`, `Ferfi_ora_keszlet`, `Ferfi_ora_kep`) VALUES
(12, 2, 0, 'Series-3', 'Digitális', 'Apple', 86790, 'Fehér', 'Kijelző: 42mm,GPS', 'Típus:Okosóra, Fényképező:Nincs, SIM kártya foglalat:Nincs,GPS:Van,Vízálló:Igen,Akkumulátor kapacitás:279 mAh Tömeg.42.4 g,Kijelző mérete:1.5\",\r\nKijelző felbontása:	272 x 340 pixel,Hálózati kapcsolatok:\r\n2G támogatás,	Nincs\r\n3G támogatás,	Nincs\r\nLTE támogatás, (4G)Nincs,\r\nAdatátvitel:	\r\nWi-Fi,\r\nBluetooth,\r\nNFC támogatás.', 10, 'kepek/Apple-Series-3.png'),
(13, 1, 0, 'Planet Ocean', 'Analog', 'Omega', 1500000, 'Szürke/narancs', '42mm,Sapphire Glass 100%', 'Működése: Automata, A tok anyaga:	Acél, Szíj anyaga:	Kaucsuk, Működése:	Automata, A tok anyaga:	Acél, Átmérő:43.5 mm, Magasság:	17,5 mm, Üveg:	Zafírüveg', 200, 'kepek/Omega_planet.png'),
(14, 2, 1, 'Series-7', 'Digitális', 'Apple', 180000, 'Zöld', 'GPS,telefonhívás, EKG mérés', 'Típus:	Okosóra, Fényképező:  Nincs, SIM kártya foglalat: Nincs, GPS: Van, Vízálló:Igen, Tömeg: 51.5 g, Kijelző mérete:1.9\",', 32, 'kepek/a_w_s7.png'),
(15, 1, 1, 'Portugieser', 'Analog', 'IWC', 4335868, 'Ezüst/fekete', 'A tok anyaga: Acél, Kaliber/Óramű	52010', 'Működése:	Automata, A tok anyaga:	Acél, Szíj anyaga:	Krokodilbőr, Működése:	Automata, A tok anyaga:	Acél, Átmérő:	40,9 mm, Vízálló:	3 ATM, Lünetta anyag:	Acél, Üveg:	Zafírüveg, Számlap:	Fekete, Számlap számai:	Arab,', 1, 'kepek/IWC_Portugieser.png'),
(16, 1, 0, 'Yacht Master', 'Analog', 'Rolex', 24615100, 'Arany', 'Átmérő: 44 mm, Lünetta anyaga: Kerámia', 'Működése:	Automata, Szíj anyaga:	Sárgaarany, A tok anyaga:	Sárgaarany, Átmérő:	44 mm, Magasság:	13 mm, Vízálló:	10 ATM, Lünetta anyag:	Kerámia, Üveg:	Zafírüveg, Számlap:	Fehér, Számlap számai:	Számjegyek nélkül', 10, 'kepek/Rolex_yacht_master.png'),
(17, 1, 1, 'Moonwatch', 'Analog', 'Omega', 2595906, 'Fekete', 'Átmérő: 44.25mm, Stainless acél', 'Működése:	Kézi felhúzás, A tok anyaga:	Acél, Szíj anyaga:	Bőr, Kaliber/Óramű:	1861, Járástartalék:	48 h, Kövek száma:	18, Átmérő:	39.7 mm, Vízálló:	5 ATM, Lünetta anyag:	Kerámia, Üveg:	Zafírüveg, Számlap:	Kék, Számlap számai:	Számjegyek nélkül', 3, 'kepek/moonwatch.png'),
(18, 2, 1, 'watch-3', 'Digitális', 'Samsung', 92199, 'Fekete', 'GPS,Vízálló,Akkumulátor kapacitás:340 mAh', 'Típus:	Okosóra, Fényképező:	Nincs, SIM kártya foglalat:	Nincs, GPS:	Van, Vízálló:	Igen, Akkumulátor kapacitás:	340 mAh, Tömeg:	50 g', 1210, 'kepek/watch-3.png'),
(19, 2, 1, 'Huawei Watch3', 'Digitális', 'Huawei', 108000, 'Fekete', 'Akkumulátor kapacitás: 450 mAh,GPS,Vízálló', ' Típus:	Okosóra, Fényképező:	Nincs, SIM kártya foglalat:	Nincs, GPS:	Van, Vízálló:	Igen, Akkumulátor kapacitás:	450 mAh, Tömeg:	54 g, Kijelző mérete:	1.43\", Kijelző felbontása:	466 x 466 pixel, 2G támogatás:	Van, 3G támogatás:	Van, LTE támogatás (4G):	Van, Adatátvitel:	Wi-Fi,Bluetooth,NFC támogatás', 12, 'kepek/huawei-watch-3.png'),
(22, 1, 1, 'Datejust', 'Analog', 'Rolex', 3660893, 'Ezüst', 'Átmérő: 41mm,Oyster szíj', 'Működése:	Automata, A tok anyaga:	Arany/Acél, Szíj anyaga:	Acél, Kaliber/Óramű:	3235, Átmérő:	36 mm, Vízálló:	10 ATM, Lünetta anyag:	Fehérarany, Számlap számai:	Számjegyek nélkül', 8, 'kepek/Rolex_datejust.png');

-- --------------------------------------------------------

--
-- Stand-in structure for view `ferfi_ora_view`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `ferfi_ora_view`;
CREATE TABLE `ferfi_ora_view` (
`termek_id` int(11)
,`ferfi_ora_tipus_id` int(11)
,`ajanlatunk` int(10)
,`ferfi_ora_nev` varchar(80)
,`ferfi_ora_tipus` varchar(9)
,`ferfi_ora_marka` varchar(20)
,`ferfi_ora_ar` int(11)
,`ferfi_ora_szin` varchar(20)
,`ferfi_ora_leiras` varchar(100)
,`ferfi_ora_leiras2` varchar(1000)
,`ferfi_ora_keszlet` int(11)
,`ferfi_ora_kep` varchar(256)
);

-- --------------------------------------------------------

--
-- Table structure for table `gyermek_ora_regi`
--

DROP TABLE IF EXISTS `gyermek_ora_regi`;
CREATE TABLE `gyermek_ora_regi` (
  `Gyermek_ora_id` int(11) NOT NULL,
  `Gyermek_ora_tipus_id` int(11) NOT NULL,
  `ajanlatunk` int(11) NOT NULL,
  `Gyermek_ora_nev` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Gyermek_ora_tipus` varchar(30) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Gyermek_ora_marka` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Gyermek_ora_ar` int(11) NOT NULL,
  `Gyermek_ora_szin` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Gyermek_ora_leiras` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Gyermek_ora_leiras2` varchar(1000) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Gyermek_ora_keszlet` int(11) NOT NULL,
  `gyermek_ora_kep` varchar(256) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `gyermek_ora_regi`
--

INSERT INTO `gyermek_ora_regi` (`Gyermek_ora_id`, `Gyermek_ora_tipus_id`, `ajanlatunk`, `Gyermek_ora_nev`, `Gyermek_ora_tipus`, `Gyermek_ora_marka`, `Gyermek_ora_ar`, `Gyermek_ora_szin`, `Gyermek_ora_leiras`, `Gyermek_ora_leiras2`, `Gyermek_ora_keszlet`, `gyermek_ora_kep`) VALUES
(1, 1, 1, 'Gyermek karóra', 'Analog', 'Deniel Klein', 13000, 'Fekete', 'Szerkezet:Elemes kvarc (Japán), Szíj anyaga:Szilikon, Szíj színe:Fekete', 'Cikkszám:	DK.1.12765.4, Gyártó:	Daniel Klein, Nem:	Gyermek, Stílus:	Divatos, Szerkezet:	Elemes kvarc (Japán), Szíj anyaga:	Szilikon, Szíj színe:	Fekete, Szíj szélesség:	12 mm, Tok anyaga:	Műanyag, Tok színe:	Fekete, Tok átmérő (gombok nélkül):	32 mm, Tok vastagság:	8 mm, Tok alakja:	Kerek', 34555, 'kepek/danielfiu.png'),
(2, 1, 0, 'Gyermek karóra', 'Analog', 'Deniel Klein', 13000, 'Rózsaszín', 'Szerkezet:Elemes kvarc (Japán), Szíj anyaga:Szilikon, Szíj színe:Rózsaszín', ' Cikkszám:	DK.1.12764.6, Gyártó:	Daniel Klein, Nem:	Gyermek, Stílus:	Divatos, Szerkezet:	Elemes kvarc (Japán), Szíj anyaga:	Szilikon, Szíj színe:	Fehér,Piros, Szíj szélesség:	12 mm, Tok anyaga:	Műanyag, Tok színe:	Piros, Tok átmérő (gombok nélkül):	32 mm, Tok vastagság:	8 mm, Tok alakja:	Kerek, Maximális csuklóméret:	18 cm, Számlap színe:	Fehér, Számlap típusa:	Arab számok, Üveg:	Kristály üveg, Gyári doboz:	Nincs, Vízállóság:	30 m', 345, 'kepek/Danielklein.png'),
(3, 1, 0, 'QC29J344', 'Analog', 'Q&Q', 9000, 'Kék', 'Gép típus: Kvarc-akkumulátor,Tok: fém,Szíj műanyag', 'Méret:kicsi (szélesség 2,49 cm-ig), Gép típus:Kvarc-akkumulátor, Tok:fém, Szíj:műanyag, Szíj színe:kék, Üveg:ásványi, Vízállóság:3 ATM/3 BAR, Méret:24 x 28 mm', 12344, 'kepek/Q&QQC29J344.png'),
(4, 2, 1, 'Gyermek karóra', 'Digitális', 'Casio', 13490, 'Piros', 'Stílus:Sportos Szerkezet:Digitális Elemes kvarc (Japán), Szíj anyaga:Műanyag', 'Gyártó:	Casio, Nem:	Gyermek, Stílus:	Sportos, Szerkezet:	 Digitális, Elemes kvarc (Japán), Szíj anyaga:	Műanyag, Szíj színe:	Piros, Tok anyaga:	Műanyag, Tok színe:	Fekete, Tok átmérő (gombok nélkül):	34.9 mm, Tok vastagság:	11.9 mm, Tok alakja:	Kerek, Maximális csuklóméret:	19 cm, Üveg:	Plasztik, Funkciók:	 Dátum , Ébresztő, Háttérvilágítás, Stopper,  Vízállóság:	50 m', 1231, 'kepek/lw200-4aAVEG.png'),
(5, 2, 0, 'Gyermek karóra', 'Digitális', 'Casio', 12490, 'Szürke', 'Funkciók:	 A hét napjai ,Dátum ,Ébresztő,Stopper ', 'Gyártó:	Casio, Nem:	Gyermek, Stílus:	Sportos,	 Digitális, Elemes kvarc (Japán), Szíj anyaga:	Műanyag, Szíj színe:	Szürke, Tok anyaga:	Műanyag, Tok színe:	Szürke, Tok átmérő (gombok nélkül):	34.5 mm, Tok vastagság:	8.6 mm, Tok alakja:	Szögletes, Maximális csuklóméret:	18.5 cm, Számlap színe:	 Fekete, Rózsaszín, Üveg:	Plasztik,	 A hét napjai :Dátum,Ébresztő,Stopper  Vízállóság:	30 m', 1344, 'kepek/la-20wh-8aef.png'),
(6, 1, 0, 'VR99J007Y gyerek kar', 'Analog', 'Q&Q', 15290, 'Kék', 'Tok átmérője: (mm) 30 ,Tok magassága: (mm) 10 ,Tok anyaga:Műanyag', 'Márka:Q&Q, Modell:VR99J007Y, Nem:Gyerek, Tok átmérője (mm):30, Tok magassága (mm):10, Tok anyaga:Műanyag, Mechanizmus:Quartz, Tok alakja:Kerek, Tok sapka:Átlátszatlan, Üveg anyaga:Műanyag, Kijelző:Analóg, Szíj/karperec:Szíj, Szíj/karperec anyaga:Szilikon, Szíj/karperec szélessége:16, Vízálló:100 m (10 atm), Stílus:Alkalmi, Számlap szín:Fehér, Szíj/karperec színe:Kék', 13, 'kepek/Q&QVR99J007.png'),
(7, 1, 1, 'Gyerek karóra', 'Analog', 'Q&Q', 7450, 'Sárga', 'Tok átmérő: (gombok nélkül):	32 mm ,Tok alakja:Kerek ,Maximális csuklóméret:	19 cm', 'kronográf:kronográf nélkül, Méret:közepes (szélesség 2,5 - 3,99 cm), Gép típus:Kvarc-akkumulátor, Tok:műanyag, Szíj:szilikon, Szíj színe:sárga, Üveg:műanyag, Vízállóság:10 ATM/10 BAR, Súly:19, Méret:39 x 43 x 9,5 mm', 10, 'kepek/Q&QVRiJ009Y.png'),
(8, 1, 0, 'Gyerek karóra', 'Analog', 'Q&Q', 7450, 'Piros', 'Tok színe:	Ezüst, Tok átmérő (gombok nélkül):24 mm ,Tok vastagság:7.5 mm', 'kronográf:kronográf nélkül, Méret:kicsi (szélesség 2,49 cm-ig), Gép típus:Kvarc-akkumulátor, Tok:fém, Szíj:műanyag, Szíj színe:piros, Üveg:ásványi, Vízállóság:3 ATM/3 BAR, Méret:24 x 28 mm', 33, 'kepek/QC29J334Y.png'),
(9, 1, 0, 'VS59J002Y', 'Analog', 'Q&Q', 6300, 'Rózsaszín', 'Üveg műanyag, Vízállóság: 10 ATM/10 BAR ,Súly: 21', 'kronográf: kronográf nélkül, Méret:közepes (szélesség 2,5 - 3,99 cm), Gép típus:Kvarc-akkumulátor, Tok:műanyag, Szíj:szilikon, Szíj színe:rózsaszín, Üveg:műanyag, Vízállóság:10 ATM/10 BAR, Súly:21, Méret:32 x 36 x 10 mm', 31, 'kepek/Q&QVS59J002Y.png');

-- --------------------------------------------------------

--
-- Stand-in structure for view `gyermek_ora_view`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `gyermek_ora_view`;
CREATE TABLE `gyermek_ora_view` (
`termek_id` int(11)
,`gyermek_ora_tipus_id` int(11)
,`ajanlatunk` int(10)
,`gyermek_ora_nev` varchar(80)
,`gyermek_ora_tipus` varchar(9)
,`gyermek_ora_marka` varchar(20)
,`gyermek_ora_ar` int(11)
,`gyermek_ora_szin` varchar(20)
,`gyermek_ora_leiras` varchar(100)
,`gyermek_ora_leiras2` varchar(1000)
,`gyermek_ora_keszlet` int(11)
,`gyermek_ora_kep` varchar(256)
);

-- --------------------------------------------------------

--
-- Table structure for table `kosar`
--

DROP TABLE IF EXISTS `kosar`;
CREATE TABLE `kosar` (
  `kosar_id` int(11) NOT NULL,
  `kosar_nev` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `kosar_ar` int(11) NOT NULL,
  `kosar_fizetett_e` int(11) NOT NULL,
  `Felh_id` int(11) NOT NULL,
  `termek_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Triggers `kosar`
--
DROP TRIGGER IF EXISTS `kosar_BEFORE_INSERT`;
DELIMITER $$
CREATE TRIGGER `kosar_BEFORE_INSERT` BEFORE INSERT ON `kosar` FOR EACH ROW BEGIN

declare tnev varchar(100);
declare ar int(11);

     select 
     
     termek.ora_nev, termek.ora_ar from termek where termek_id = new.termek_id
     into tnev, ar;
     
    SET NEW.kosar_nev = tnev; 
	SET NEW.kosar_ar = ar;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `noi_ora_regi`
--

DROP TABLE IF EXISTS `noi_ora_regi`;
CREATE TABLE `noi_ora_regi` (
  `Noi_ora_id` int(11) NOT NULL,
  `Noi_ora_tipus_id` int(11) NOT NULL,
  `ajanlatunk` int(11) NOT NULL,
  `Noi_ora_nev` varchar(40) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Noi_ora_tipus` varchar(30) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Noi_ora_marka` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Noi_ora_ar` int(11) NOT NULL,
  `Noi_ora_szin` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Noi_ora_leiras` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Noi_ora_leiras2` varchar(1000) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Noi_ora_keszlet` int(11) NOT NULL,
  `Noi_ora_kep` varchar(256) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `noi_ora_regi`
--

INSERT INTO `noi_ora_regi` (`Noi_ora_id`, `Noi_ora_tipus_id`, `ajanlatunk`, `Noi_ora_nev`, `Noi_ora_tipus`, `Noi_ora_marka`, `Noi_ora_ar`, `Noi_ora_szin`, `Noi_ora_leiras`, `Noi_ora_leiras2`, `Noi_ora_keszlet`, `Noi_ora_kep`) VALUES
(3, 1, 0, 'Riley', 'Analog', 'Fossil', 58000, 'Rózsaszín', 'Vízhatlan,Törésálló,Kivételes pontosság', 'Mechanizmus típusa: Kvarc, Üveg: Kristályüveg, Vízállóság: 10 ATM, Tok anyaga: Acél, Szíj anyaga: Acél, Carryover: IGEN, Szín: Rózsaszín, Stílus: Fémes, Tok vastagsága: 12 mm, Szíj szélessége: 18 mm, Tok mérete: 38 mm, Gyártó: Fossil, Model: Riley ES2811, CSZ: 4051432012112', 122, 'kepek/fossil.png'),
(4, 1, 0, 'Freja', 'Analog', 'Skagen', 50000, 'Arany', 'Sekély vízbe,Törésálló,Kivételes pontosság', 'Mechanizmus típusa: Kvarc, Üveg: Kristályüveg, Vízállóság: 5 ATM, Tok anyaga: Acél, Szíj anyaga: Acél, Carryover: IGEN, Szín: Arany, Stílus: Fémes, Tok vastagsága: 6 mm, Szíj szélessége: 12 mm, Tok mérete: 26 mm, Gyártó: Skagen, Model: Freja SKW2717, CSZ: 4051432403385', 100, 'kepek/Freja.png'),
(5, 2, 0, 'Ironman', 'Digitális', 'Timex', 22000, 'Fehér', 'Szilikon szíj,Szögletes burkolat,Kivételes pontosság', 'Állati eredetű, nem textil alkotórész: Nem, Mechanizmus típusa: Kvarc, Üveg: Akril, Vízállóság: 10 ATM, Tok anyaga: Anyag, Szíj anyaga: Szilikon, Egyebek: A termék a gyári dobozba van csomagolva, Szín: Fehér, Rögzítés módja: Csat, Stílus: Paszte, Tok vastagsága: 11 mm, Szíj szélessége: 12 mm, Tok mérete: 33 mm, Gyártó: Timex, Model: Ironman TW5M19900, CSZ: 0753048810987', 10011, 'kepek/ironman.png'),
(6, 1, 0, 'l1212', 'Analog', 'Lacoste', 40000, 'Fekete', 'Időtlen megjelenés,Törésálló,Sekély vízbe', 'Mechanizmus típusa: Kvarc, Üveg: Kristályüveg, Vízállóság: 5 ATM, Tok anyaga: Anyag, Szíj anyaga: Szilikon, Egyebek: A termék a gyári dobozba van csomagolva, Szín: Fekete, Tok vastagsága: 9 mm, Szíj szélessége: 18 mm, Tok mérete: 36 mm, Gyártó: Lacoste, Model: L1212 2001064, CSZ: 7613272317764', 1001, 'kepek/l1212.png'),
(7, 1, 1, 'Signature', 'Analog', 'Skagen', 58000, 'Ezüst', 'Fröccsenés elleni védelem,Törésálló,Elegáns karperec', 'Mechanizmus típusa: Kvarc, Üveg: Kristályüveg, Vízállóság: 3 ATM, Tok anyaga: Acél, Szíj anyaga: Acél, Egyebek: A termék a gyári dobozba van csomagolva, Szín: Ezüst, Rögzítés módja: Retesz, Tok vastagsága: 6 mm, Szíj szélessége: 14 mm, Tok mérete: 29 mm, Gyártó: Skagen, Model: Signature SKW2996, CSZ: 4064092079814', 255, 'kepek/Signatur.png'),
(8, 1, 0, 'Slim Runway', 'Analog', 'Michael Kors', 89999, 'Fekete', 'Fröccsenés elleni védelem,Törésálló,Elegáns karperec', 'Mechanizmus típusa: Kvarc, Üveg: Kristályüveg, Vízállóság: 5 ATM, Tok anyaga: Acél, Szíj anyaga: Acél, Carryover: IGEN, Szín: Fekete, Tok vastagsága: 9 mm, Szíj szélessége: 22 mm, Tok mérete: 44 mm, Gyártó: Michael Kors, Model: Slim Runway MK8507, CSZ: 4053858710238', 167, 'kepek/Slim-run.png'),
(9, 1, 1, 'Soho', 'Analog', 'DKNY', 50000, 'Ezüst', 'Üveg: Kristályüveg, Vízállóság: 5 ATM, Tok anyaga: Acél', 'Mechanizmus típusa: Kvarc, Üveg: Kristályüveg, Vízállóság: 5 ATM, Tok anyaga: Acél, Szíj anyaga: Acél, Carryover: IGEN, Szín: Ezüst, Stílus: Fémes, Tok vastagsága: 9 mm, Szíj szélessége: 18 mm, Tok mérete: 34 mm, Gyártó: DKNY, Model: Soho NY2342, CSZ: 4053858467361', 344, 'kepek/Soho.png'),
(10, 1, 0, 'Virginia', 'Analog', 'Fossil', 58000, 'Rózsaszín', 'Mechanizmus típusa: Kvarc Üveg: Kristályüveg Vízállóság: 5 ATM', 'Mechanizmus típusa: Kvarc, Üveg: Kristályüveg, Vízállóság: 5 ATM, Tok anyaga: Acél, Szíj anyaga: Acél, Carryover: IGEN, Szín: Rózsaszín, Stílus: Fémes, Tok vastagsága: 9 mm, Szíj szélessége: 14 mm, Tok mérete: 30 mm, Gyártó: Fossil, Model: Virginia ES3284, CSZ: 4051432944406', 12345, 'kepek/Virginia.png'),
(11, 2, 0, 'Vintage', 'Digitális', 'Casio', 23000, 'Ezüst', 'Vízállóság: 3 ATM, Tok anyaga: Acél', 'Állati eredetű, nem textil alkotórész: Nem, Mechanizmus típusa: Kvarc, Üveg: Akril, Technológiák: ALD001, BAN003, BAN300, BAT003, BEL007, CAS004, GLA005, KAL001, STP006, VER002, WDK001, Vízállóság: 3 ATM, Egyebek: A termék a gyári dobozba van csomagolva, Szín: Szürke, Rögzítés módja: Retesz, Tok vastagsága: 9 mm, Szíj szélessége: 22 mm, Tok mérete: 33 mm, Gyártó: Casio, Model: Vintage A100WEGG-1AEF, CSZ: 4549526305955', 1345, 'kepek/Vintage.png');

-- --------------------------------------------------------

--
-- Stand-in structure for view `noi_ora_view`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `noi_ora_view`;
CREATE TABLE `noi_ora_view` (
`termek_id` int(11)
,`noi_ora_tipus_id` int(11)
,`ajanlatunk` int(10)
,`noi_ora_nev` varchar(80)
,`noi_ora_tipus` varchar(9)
,`noi_ora_marka` varchar(20)
,`noi_ora_ar` int(11)
,`noi_ora_szin` varchar(20)
,`noi_ora_leiras` varchar(100)
,`noi_ora_leiras2` varchar(1000)
,`noi_ora_keszlet` int(11)
,`noi_ora_kep` varchar(256)
);

-- --------------------------------------------------------

--
-- Table structure for table `rendelesek`
--

DROP TABLE IF EXISTS `rendelesek`;
CREATE TABLE `rendelesek` (
  `Rendelesek_id` int(11) NOT NULL,
  `szamla` varchar(1000) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Felh_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `termek`
--

DROP TABLE IF EXISTS `termek`;
CREATE TABLE `termek` (
  `termek_id` int(11) NOT NULL,
  `ora_tipus_id` int(11) NOT NULL,
  `ajanlatunk` int(10) NOT NULL,
  `ora_nev` varchar(80) DEFAULT NULL,
  `ora_marka` varchar(20) DEFAULT NULL,
  `ora_ar` int(11) NOT NULL,
  `ora_szin` varchar(20) DEFAULT NULL,
  `ora_leiras` varchar(100) DEFAULT NULL,
  `ora_leiras2` varchar(1000) DEFAULT NULL,
  `ora_keszlet` int(11) NOT NULL,
  `ora_kep` varchar(256) DEFAULT NULL,
  `termek_tipus` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `termek`
--

INSERT INTO `termek` (`termek_id`, `ora_tipus_id`, `ajanlatunk`, `ora_nev`, `ora_marka`, `ora_ar`, `ora_szin`, `ora_leiras`, `ora_leiras2`, `ora_keszlet`, `ora_kep`, `termek_tipus`) VALUES
(1, 2, 0, 'Series-3', 'Apple', 86790, 'Fehér', 'Kijelző: 42mm,GPS', 'Típus:Okosóra, Fényképező:Nincs, SIM kártya foglalat:Nincs,GPS:Van,Vízálló:Igen,Akkumulátor kapacitás:279 mAh Tömeg.42.4 g,Kijelző mérete:1.5\",\r\nKijelző felbontása:	272 x 340 pixel,Hálózati kapcsolatok:\r\n2G támogatás,	Nincs\r\n3G támogatás,	Nincs\r\nLTE támogatás, (4G)Nincs,\r\nAdatátvitel:	\r\nWi-Fi,\r\nBluetooth,\r\nNFC támogatás.', 10, 'kepek/Apple-Series-3.png', 0),
(2, 1, 0, 'Planet Ocean', 'Omega', 1500000, 'Szürke/narancs', '42mm,Sapphire Glass 100%', 'Működése: Automata, A tok anyaga:	Acél, Szíj anyaga:	Kaucsuk, Működése:	Automata, A tok anyaga:	Acél, Átmérő:43.5 mm, Magasság:	17,5 mm, Üveg:	Zafírüveg', 200, 'kepek/Omega_planet.png', 0),
(3, 2, 1, 'Series-7', 'Apple', 180000, 'Zöld', 'GPS,telefonhívás, EKG mérés', 'Típus:	Okosóra, Fényképező:  Nincs, SIM kártya foglalat: Nincs, GPS: Van, Vízálló:Igen, Tömeg: 51.5 g, Kijelző mérete:1.9\",', 32, 'kepek/a_w_s7.png', 0),
(4, 1, 1, 'Portugieser', 'IWC', 4335868, 'Ezüst/fekete', 'A tok anyaga: Acél, Kaliber/Óramű	52010', 'Működése:	Automata, A tok anyaga:	Acél, Szíj anyaga:	Krokodilbőr, Működése:	Automata, A tok anyaga:	Acél, Átmérő:	40,9 mm, Vízálló:	3 ATM, Lünetta anyag:	Acél, Üveg:	Zafírüveg, Számlap:	Fekete, Számlap számai:	Arab,', 1, 'kepek/IWC_Portugieser.png', 0),
(5, 1, 0, 'Yacht Master', 'Rolex', 24615100, 'Arany', 'Átmérő: 44 mm, Lünetta anyaga: Kerámia', 'Működése:	Automata, Szíj anyaga:	Sárgaarany, A tok anyaga:	Sárgaarany, Átmérő:	44 mm, Magasság:	13 mm, Vízálló:	10 ATM, Lünetta anyag:	Kerámia, Üveg:	Zafírüveg, Számlap:	Fehér, Számlap számai:	Számjegyek nélkül', 10, 'kepek/Rolex_yacht_master.png', 0),
(6, 1, 1, 'Moonwatch', 'Omega', 2595906, 'Fekete', 'Átmérő: 44.25mm, Stainless acél', 'Működése:	Kézi felhúzás, A tok anyaga:	Acél, Szíj anyaga:	Bőr, Kaliber/Óramű:	1861, Járástartalék:	48 h, Kövek száma:	18, Átmérő:	39.7 mm, Vízálló:	5 ATM, Lünetta anyag:	Kerámia, Üveg:	Zafírüveg, Számlap:	Kék, Számlap számai:	Számjegyek nélkül', 3, 'kepek/moonwatch.png', 0),
(7, 2, 1, 'watch-3', 'Samsung', 92199, 'Fekete', 'GPS,Vízálló,Akkumulátor kapacitás:340 mAh', 'Típus:	Okosóra, Fényképező:	Nincs, SIM kártya foglalat:	Nincs, GPS:	Van, Vízálló:	Igen, Akkumulátor kapacitás:	340 mAh, Tömeg:	50 g', 1210, 'kepek/watch-3.png', 0),
(8, 2, 1, 'Huawei Watch3', 'Huawei', 108000, 'Fekete', 'Akkumulátor kapacitás: 450 mAh,GPS,Vízálló', ' Típus:	Okosóra, Fényképező:	Nincs, SIM kártya foglalat:	Nincs, GPS:	Van, Vízálló:	Igen, Akkumulátor kapacitás:	450 mAh, Tömeg:	54 g, Kijelző mérete:	1.43\", Kijelző felbontása:	466 x 466 pixel, 2G támogatás:	Van, 3G támogatás:	Van, LTE támogatás (4G):	Van, Adatátvitel:	Wi-Fi,Bluetooth,NFC támogatás', 12, 'kepek/huawei-watch-3.png', 0),
(9, 1, 1, 'Datejust', 'Rolex', 3660893, 'Ezüst', 'Átmérő: 41mm,Oyster szíj', 'Működése:	Automata, A tok anyaga:	Arany/Acél, Szíj anyaga:	Acél, Kaliber/Óramű:	3235, Átmérő:	36 mm, Vízálló:	10 ATM, Lünetta anyag:	Fehérarany, Számlap számai:	Számjegyek nélkül', 8, 'kepek/Rolex_datejust.png', 0),
(10, 1, 0, 'Riley', 'Fossil', 58000, 'Rózsaszín', 'Vízhatlan,Törésálló,Kivételes pontosság', 'Mechanizmus típusa: Kvarc, Üveg: Kristályüveg, Vízállóság: 10 ATM, Tok anyaga: Acél, Szíj anyaga: Acél, Carryover: IGEN, Szín: Rózsaszín, Stílus: Fémes, Tok vastagsága: 12 mm, Szíj szélessége: 18 mm, Tok mérete: 38 mm, Gyártó: Fossil, Model: Riley ES2811, CSZ: 4051432012112', 122, 'kepek/fossil.png', 1),
(11, 1, 0, 'Freja', 'Skagen', 50000, 'Arany', 'Sekély vízbe,Törésálló,Kivételes pontosság', 'Mechanizmus típusa: Kvarc, Üveg: Kristályüveg, Vízállóság: 5 ATM, Tok anyaga: Acél, Szíj anyaga: Acél, Carryover: IGEN, Szín: Arany, Stílus: Fémes, Tok vastagsága: 6 mm, Szíj szélessége: 12 mm, Tok mérete: 26 mm, Gyártó: Skagen, Model: Freja SKW2717, CSZ: 4051432403385', 100, 'kepek/Freja.png', 1),
(12, 2, 0, 'Ironman', 'Timex', 22000, 'Fehér', 'Szilikon szíj,Szögletes burkolat,Kivételes pontosság', 'Állati eredetű, nem textil alkotórész: Nem, Mechanizmus típusa: Kvarc, Üveg: Akril, Vízállóság: 10 ATM, Tok anyaga: Anyag, Szíj anyaga: Szilikon, Egyebek: A termék a gyári dobozba van csomagolva, Szín: Fehér, Rögzítés módja: Csat, Stílus: Paszte, Tok vastagsága: 11 mm, Szíj szélessége: 12 mm, Tok mérete: 33 mm, Gyártó: Timex, Model: Ironman TW5M19900, CSZ: 0753048810987', 10011, 'kepek/ironman.png', 1),
(13, 1, 0, 'l1212', 'Lacoste', 40000, 'Fekete', 'Időtlen megjelenés,Törésálló,Sekély vízbe', 'Mechanizmus típusa: Kvarc, Üveg: Kristályüveg, Vízállóság: 5 ATM, Tok anyaga: Anyag, Szíj anyaga: Szilikon, Egyebek: A termék a gyári dobozba van csomagolva, Szín: Fekete, Tok vastagsága: 9 mm, Szíj szélessége: 18 mm, Tok mérete: 36 mm, Gyártó: Lacoste, Model: L1212 2001064, CSZ: 7613272317764', 1001, 'kepek/l1212.png', 1),
(14, 1, 1, 'Signature', 'Skagen', 58000, 'Ezüst', 'Fröccsenés elleni védelem,Törésálló,Elegáns karperec', 'Mechanizmus típusa: Kvarc, Üveg: Kristályüveg, Vízállóság: 3 ATM, Tok anyaga: Acél, Szíj anyaga: Acél, Egyebek: A termék a gyári dobozba van csomagolva, Szín: Ezüst, Rögzítés módja: Retesz, Tok vastagsága: 6 mm, Szíj szélessége: 14 mm, Tok mérete: 29 mm, Gyártó: Skagen, Model: Signature SKW2996, CSZ: 4064092079814', 255, 'kepek/Signatur.png', 1),
(15, 1, 0, 'Slim Runway', 'Michael Kors', 89999, 'Fekete', 'Fröccsenés elleni védelem,Törésálló,Elegáns karperec', 'Mechanizmus típusa: Kvarc, Üveg: Kristályüveg, Vízállóság: 5 ATM, Tok anyaga: Acél, Szíj anyaga: Acél, Carryover: IGEN, Szín: Fekete, Tok vastagsága: 9 mm, Szíj szélessége: 22 mm, Tok mérete: 44 mm, Gyártó: Michael Kors, Model: Slim Runway MK8507, CSZ: 4053858710238', 167, 'kepek/Slim-run.png', 1),
(16, 1, 1, 'Soho', 'DKNY', 50000, 'Ezüst', 'Üveg: Kristályüveg, Vízállóság: 5 ATM, Tok anyaga: Acél', 'Mechanizmus típusa: Kvarc, Üveg: Kristályüveg, Vízállóság: 5 ATM, Tok anyaga: Acél, Szíj anyaga: Acél, Carryover: IGEN, Szín: Ezüst, Stílus: Fémes, Tok vastagsága: 9 mm, Szíj szélessége: 18 mm, Tok mérete: 34 mm, Gyártó: DKNY, Model: Soho NY2342, CSZ: 4053858467361', 344, 'kepek/Soho.png', 1),
(17, 1, 0, 'Virginia', 'Fossil', 58000, 'Rózsaszín', 'Mechanizmus típusa: Kvarc Üveg: Kristályüveg Vízállóság: 5 ATM', 'Mechanizmus típusa: Kvarc, Üveg: Kristályüveg, Vízállóság: 5 ATM, Tok anyaga: Acél, Szíj anyaga: Acél, Carryover: IGEN, Szín: Rózsaszín, Stílus: Fémes, Tok vastagsága: 9 mm, Szíj szélessége: 14 mm, Tok mérete: 30 mm, Gyártó: Fossil, Model: Virginia ES3284, CSZ: 4051432944406', 12345, 'kepek/Virginia.png', 1),
(18, 2, 0, 'Vintage', 'Casio', 23000, 'Ezüst', 'Vízállóság: 3 ATM, Tok anyaga: Acél', 'Állati eredetű, nem textil alkotórész: Nem, Mechanizmus típusa: Kvarc, Üveg: Akril, Technológiák: ALD001, BAN003, BAN300, BAT003, BEL007, CAS004, GLA005, KAL001, STP006, VER002, WDK001, Vízállóság: 3 ATM, Egyebek: A termék a gyári dobozba van csomagolva, Szín: Szürke, Rögzítés módja: Retesz, Tok vastagsága: 9 mm, Szíj szélessége: 22 mm, Tok mérete: 33 mm, Gyártó: Casio, Model: Vintage A100WEGG-1AEF, CSZ: 4549526305955', 1345, 'kepek/Vintage.png', 1),
(19, 1, 1, 'Gyermek karóra', 'Deniel Klein', 13000, 'Fekete', 'Szerkezet:Elemes kvarc (Japán), Szíj anyaga:Szilikon, Szíj színe:Fekete', 'Cikkszám:	DK.1.12765.4, Gyártó:	Daniel Klein, Nem:	Gyermek, Stílus:	Divatos, Szerkezet:	Elemes kvarc (Japán), Szíj anyaga:	Szilikon, Szíj színe:	Fekete, Szíj szélesség:	12 mm, Tok anyaga:	Műanyag, Tok színe:	Fekete, Tok átmérő (gombok nélkül):	32 mm, Tok vastagság:	8 mm, Tok alakja:	Kerek', 34555, 'kepek/danielfiu.png', 2),
(20, 1, 0, 'Gyermek karóra', 'Deniel Klein', 13000, 'Rózsaszín', 'Szerkezet:Elemes kvarc (Japán), Szíj anyaga:Szilikon, Szíj színe:Rózsaszín', ' Cikkszám:	DK.1.12764.6, Gyártó:	Daniel Klein, Nem:	Gyermek, Stílus:	Divatos, Szerkezet:	Elemes kvarc (Japán), Szíj anyaga:	Szilikon, Szíj színe:	Fehér,Piros, Szíj szélesség:	12 mm, Tok anyaga:	Műanyag, Tok színe:	Piros, Tok átmérő (gombok nélkül):	32 mm, Tok vastagság:	8 mm, Tok alakja:	Kerek, Maximális csuklóméret:	18 cm, Számlap színe:	Fehér, Számlap típusa:	Arab számok, Üveg:	Kristály üveg, Gyári doboz:	Nincs, Vízállóság:	30 m', 345, 'kepek/Danielklein.png', 2),
(21, 1, 0, 'QC29J344', 'Q&Q', 9000, 'Kék', 'Gép típus: Kvarc-akkumulátor,Tok: fém,Szíj műanyag', 'Méret:kicsi (szélesség 2,49 cm-ig), Gép típus:Kvarc-akkumulátor, Tok:fém, Szíj:műanyag, Szíj színe:kék, Üveg:ásványi, Vízállóság:3 ATM/3 BAR, Méret:24 x 28 mm', 12344, 'kepek/Q&QQC29J344.png', 2),
(22, 2, 1, 'Gyermek karóra', 'Casio', 13490, 'Piros', 'Stílus:Sportos Szerkezet:Digitális Elemes kvarc (Japán), Szíj anyaga:Műanyag', 'Gyártó:	Casio, Nem:	Gyermek, Stílus:	Sportos, Szerkezet:	 Digitális, Elemes kvarc (Japán), Szíj anyaga:	Műanyag, Szíj színe:	Piros, Tok anyaga:	Műanyag, Tok színe:	Fekete, Tok átmérő (gombok nélkül):	34.9 mm, Tok vastagság:	11.9 mm, Tok alakja:	Kerek, Maximális csuklóméret:	19 cm, Üveg:	Plasztik, Funkciók:	 Dátum , Ébresztő, Háttérvilágítás, Stopper,  Vízállóság:	50 m', 1231, 'kepek/lw200-4aAVEG.png', 2),
(23, 2, 0, 'Gyermek karóra', 'Casio', 12490, 'Szürke', 'Funkciók:	 A hét napjai ,Dátum ,Ébresztő,Stopper ', 'Gyártó:	Casio, Nem:	Gyermek, Stílus:	Sportos,	 Digitális, Elemes kvarc (Japán), Szíj anyaga:	Műanyag, Szíj színe:	Szürke, Tok anyaga:	Műanyag, Tok színe:	Szürke, Tok átmérő (gombok nélkül):	34.5 mm, Tok vastagság:	8.6 mm, Tok alakja:	Szögletes, Maximális csuklóméret:	18.5 cm, Számlap színe:	 Fekete, Rózsaszín, Üveg:	Plasztik,	 A hét napjai :Dátum,Ébresztő,Stopper  Vízállóság:	30 m', 1344, 'kepek/la-20wh-8aef.png', 2),
(24, 1, 0, 'VR99J007Y gyerek kar', 'Q&Q', 15290, 'Kék', 'Tok átmérője: (mm) 30 ,Tok magassága: (mm) 10 ,Tok anyaga:Műanyag', 'Márka:Q&Q, Modell:VR99J007Y, Nem:Gyerek, Tok átmérője (mm):30, Tok magassága (mm):10, Tok anyaga:Műanyag, Mechanizmus:Quartz, Tok alakja:Kerek, Tok sapka:Átlátszatlan, Üveg anyaga:Műanyag, Kijelző:Analóg, Szíj/karperec:Szíj, Szíj/karperec anyaga:Szilikon, Szíj/karperec szélessége:16, Vízálló:100 m (10 atm), Stílus:Alkalmi, Számlap szín:Fehér, Szíj/karperec színe:Kék', 13, 'kepek/Q&QVR99J007.png', 2),
(25, 1, 1, 'Gyerek karóra', 'Q&Q', 7450, 'Sárga', 'Tok átmérő: (gombok nélkül):	32 mm ,Tok alakja:Kerek ,Maximális csuklóméret:	19 cm', 'kronográf:kronográf nélkül, Méret:közepes (szélesség 2,5 - 3,99 cm), Gép típus:Kvarc-akkumulátor, Tok:műanyag, Szíj:szilikon, Szíj színe:sárga, Üveg:műanyag, Vízállóság:10 ATM/10 BAR, Súly:19, Méret:39 x 43 x 9,5 mm', 10, 'kepek/Q&QVRiJ009Y.png', 2),
(26, 1, 0, 'Gyerek karóra', 'Q&Q', 7450, 'Piros', 'Tok színe:	Ezüst, Tok átmérő (gombok nélkül):24 mm ,Tok vastagság:7.5 mm', 'kronográf:kronográf nélkül, Méret:kicsi (szélesség 2,49 cm-ig), Gép típus:Kvarc-akkumulátor, Tok:fém, Szíj:műanyag, Szíj színe:piros, Üveg:ásványi, Vízállóság:3 ATM/3 BAR, Méret:24 x 28 mm', 33, 'kepek/QC29J334Y.png', 2),
(27, 1, 0, 'VS59J002Y', 'Q&Q', 6300, 'Rózsaszín', 'Üveg műanyag, Vízállóság: 10 ATM/10 BAR ,Súly: 21', 'kronográf: kronográf nélkül, Méret:közepes (szélesség 2,5 - 3,99 cm), Gép típus:Kvarc-akkumulátor, Tok:műanyag, Szíj:szilikon, Szíj színe:rózsaszín, Üveg:műanyag, Vízállóság:10 ATM/10 BAR, Súly:21, Méret:32 x 36 x 10 mm', 31, 'kepek/Q&QVS59J002Y.png', 2);

-- --------------------------------------------------------

--
-- Structure for view `ferfi_ora_view`
--
DROP TABLE IF EXISTS `ferfi_ora_view`;

DROP VIEW IF EXISTS `ferfi_ora_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ferfi_ora_view`  AS SELECT `termek`.`termek_id` AS `termek_id`, `termek`.`ora_tipus_id` AS `ferfi_ora_tipus_id`, `termek`.`ajanlatunk` AS `ajanlatunk`, `termek`.`ora_nev` AS `ferfi_ora_nev`, CASE WHEN `termek`.`ora_tipus_id` = 1 THEN 'ANALÓG' ELSE 'DIGITÁLIS' END AS `ferfi_ora_tipus`, `termek`.`ora_marka` AS `ferfi_ora_marka`, `termek`.`ora_ar` AS `ferfi_ora_ar`, `termek`.`ora_szin` AS `ferfi_ora_szin`, `termek`.`ora_leiras` AS `ferfi_ora_leiras`, `termek`.`ora_leiras2` AS `ferfi_ora_leiras2`, `termek`.`ora_keszlet` AS `ferfi_ora_keszlet`, `termek`.`ora_kep` AS `ferfi_ora_kep` FROM `termek` WHERE `termek`.`termek_tipus` = 0  ;

-- --------------------------------------------------------

--
-- Structure for view `gyermek_ora_view`
--
DROP TABLE IF EXISTS `gyermek_ora_view`;

DROP VIEW IF EXISTS `gyermek_ora_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gyermek_ora_view`  AS SELECT `termek`.`termek_id` AS `termek_id`, `termek`.`ora_tipus_id` AS `gyermek_ora_tipus_id`, `termek`.`ajanlatunk` AS `ajanlatunk`, `termek`.`ora_nev` AS `gyermek_ora_nev`, CASE WHEN `termek`.`ora_tipus_id` = 1 THEN 'ANALÓG' ELSE 'DIGITÁLIS' END AS `gyermek_ora_tipus`, `termek`.`ora_marka` AS `gyermek_ora_marka`, `termek`.`ora_ar` AS `gyermek_ora_ar`, `termek`.`ora_szin` AS `gyermek_ora_szin`, `termek`.`ora_leiras` AS `gyermek_ora_leiras`, `termek`.`ora_leiras2` AS `gyermek_ora_leiras2`, `termek`.`ora_keszlet` AS `gyermek_ora_keszlet`, `termek`.`ora_kep` AS `gyermek_ora_kep` FROM `termek` WHERE `termek`.`termek_tipus` = 2  ;

-- --------------------------------------------------------

--
-- Structure for view `noi_ora_view`
--
DROP TABLE IF EXISTS `noi_ora_view`;

DROP VIEW IF EXISTS `noi_ora_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `noi_ora_view`  AS SELECT `termek`.`termek_id` AS `termek_id`, `termek`.`ora_tipus_id` AS `noi_ora_tipus_id`, `termek`.`ajanlatunk` AS `ajanlatunk`, `termek`.`ora_nev` AS `noi_ora_nev`, CASE WHEN `termek`.`ora_tipus_id` = 1 THEN 'ANALÓG' ELSE 'DIGITÁLIS' END AS `noi_ora_tipus`, `termek`.`ora_marka` AS `noi_ora_marka`, `termek`.`ora_ar` AS `noi_ora_ar`, `termek`.`ora_szin` AS `noi_ora_szin`, `termek`.`ora_leiras` AS `noi_ora_leiras`, `termek`.`ora_leiras2` AS `noi_ora_leiras2`, `termek`.`ora_keszlet` AS `noi_ora_keszlet`, `termek`.`ora_kep` AS `noi_ora_kep` FROM `termek` WHERE `termek`.`termek_tipus` = 1  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `felhasznalo`
--
ALTER TABLE `felhasznalo`
  ADD PRIMARY KEY (`Felh_id`),
  ADD UNIQUE KEY `email` (`email`) USING BTREE;

--
-- Indexes for table `ferfi_ora_regi`
--
ALTER TABLE `ferfi_ora_regi`
  ADD PRIMARY KEY (`Ferfi_ora_id`);

--
-- Indexes for table `gyermek_ora_regi`
--
ALTER TABLE `gyermek_ora_regi`
  ADD PRIMARY KEY (`Gyermek_ora_id`);

--
-- Indexes for table `kosar`
--
ALTER TABLE `kosar`
  ADD PRIMARY KEY (`kosar_id`),
  ADD KEY `Felh_id` (`Felh_id`),
  ADD KEY `kosar_termek_id` (`termek_id`);

--
-- Indexes for table `noi_ora_regi`
--
ALTER TABLE `noi_ora_regi`
  ADD PRIMARY KEY (`Noi_ora_id`);

--
-- Indexes for table `rendelesek`
--
ALTER TABLE `rendelesek`
  ADD KEY `Felh_id` (`Felh_id`);

--
-- Indexes for table `termek`
--
ALTER TABLE `termek`
  ADD PRIMARY KEY (`termek_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `felhasznalo`
--
ALTER TABLE `felhasznalo`
  MODIFY `Felh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ferfi_ora_regi`
--
ALTER TABLE `ferfi_ora_regi`
  MODIFY `Ferfi_ora_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `gyermek_ora_regi`
--
ALTER TABLE `gyermek_ora_regi`
  MODIFY `Gyermek_ora_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kosar`
--
ALTER TABLE `kosar`
  MODIFY `kosar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3066;

--
-- AUTO_INCREMENT for table `noi_ora_regi`
--
ALTER TABLE `noi_ora_regi`
  MODIFY `Noi_ora_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `termek`
--
ALTER TABLE `termek`
  MODIFY `termek_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kosar`
--
ALTER TABLE `kosar`
  ADD CONSTRAINT `kosar_ibfk_1` FOREIGN KEY (`Felh_id`) REFERENCES `felhasznalo` (`Felh_id`),
  ADD CONSTRAINT `kosar_ibfk_2` FOREIGN KEY (`Felh_id`) REFERENCES `felhasznalo` (`Felh_id`),
  ADD CONSTRAINT `kosar_termek_id` FOREIGN KEY (`termek_id`) REFERENCES `termek` (`termek_id`);

--
-- Constraints for table `rendelesek`
--
ALTER TABLE `rendelesek`
  ADD CONSTRAINT `rendelesek_ibfk_1` FOREIGN KEY (`Felh_id`) REFERENCES `felhasznalo` (`Felh_id`);