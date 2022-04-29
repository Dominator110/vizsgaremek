-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Ápr 29. 13:32
-- Kiszolgáló verziója: 10.4.17-MariaDB
-- PHP verzió: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `webshop`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalo`
--

CREATE TABLE `felhasznalo` (
  `Felh_id` int(11) NOT NULL,
  `Felh_nev` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `jelszo` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `felhasznalo`
--

INSERT INTO `felhasznalo` (`Felh_id`, `Felh_nev`, `jelszo`, `email`) VALUES
(1, '', 'd41d8cd98f00b204e980', ''),
(2, 'asd', '7815696ecbf1c96e6894', 'rolandbardfalvi@gmail.com'),
(3, 'Roland', '7815696ecbf1c96e6894b779456d330e', 'rolandbardfalvi@gmail.com');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ferfi_ora`
--

CREATE TABLE `ferfi_ora` (
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
-- A tábla adatainak kiíratása `ferfi_ora`
--

INSERT INTO `ferfi_ora` (`Ferfi_ora_id`, `Ferfi_ora_tipus_id`, `ajanlatunk`, `Ferfi_ora_nev`, `Ferfi_ora_tipus`, `Ferfi_ora_marka`, `Ferfi_ora_ar`, `Ferfi_ora_szin`, `Ferfi_ora_leiras`, `Ferfi_ora_leiras2`, `Ferfi_ora_keszlet`, `Ferfi_ora_kep`) VALUES
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
-- Tábla szerkezet ehhez a táblához `gyermek_ora`
--

CREATE TABLE `gyermek_ora` (
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
-- A tábla adatainak kiíratása `gyermek_ora`
--

INSERT INTO `gyermek_ora` (`Gyermek_ora_id`, `Gyermek_ora_tipus_id`, `ajanlatunk`, `Gyermek_ora_nev`, `Gyermek_ora_tipus`, `Gyermek_ora_marka`, `Gyermek_ora_ar`, `Gyermek_ora_szin`, `Gyermek_ora_leiras`, `Gyermek_ora_leiras2`, `Gyermek_ora_keszlet`, `gyermek_ora_kep`) VALUES
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
-- Tábla szerkezet ehhez a táblához `kosar`
--

CREATE TABLE `kosar` (
  `kosar_id` int(11) NOT NULL,
  `kosar_nev` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `kosar_ar` int(11) NOT NULL,
  `kosar_fizetett_e` int(11) NOT NULL,
  `Felh_id` int(11) NOT NULL,
  `Ferfi_ora_id` int(11) NOT NULL,
  `Noi_ora_id` int(11) NOT NULL,
  `Gyermek_ora_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `noi_ora`
--

CREATE TABLE `noi_ora` (
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
-- A tábla adatainak kiíratása `noi_ora`
--

INSERT INTO `noi_ora` (`Noi_ora_id`, `Noi_ora_tipus_id`, `ajanlatunk`, `Noi_ora_nev`, `Noi_ora_tipus`, `Noi_ora_marka`, `Noi_ora_ar`, `Noi_ora_szin`, `Noi_ora_leiras`, `Noi_ora_leiras2`, `Noi_ora_keszlet`, `Noi_ora_kep`) VALUES
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
-- Tábla szerkezet ehhez a táblához `rendelesek`
--

CREATE TABLE `rendelesek` (
  `Rendelesek_id` int(11) NOT NULL,
  `szamla` varchar(1000) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Felh_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `felhasznalo`
--
ALTER TABLE `felhasznalo`
  ADD PRIMARY KEY (`Felh_id`);

--
-- A tábla indexei `ferfi_ora`
--
ALTER TABLE `ferfi_ora`
  ADD PRIMARY KEY (`Ferfi_ora_id`);

--
-- A tábla indexei `gyermek_ora`
--
ALTER TABLE `gyermek_ora`
  ADD PRIMARY KEY (`Gyermek_ora_id`);

--
-- A tábla indexei `kosar`
--
ALTER TABLE `kosar`
  ADD PRIMARY KEY (`kosar_id`),
  ADD KEY `Felh_id` (`Felh_id`),
  ADD KEY `Ferfi_ora_id` (`Ferfi_ora_id`),
  ADD KEY `Noi_ora_id` (`Noi_ora_id`),
  ADD KEY `Gyermek_ora_id` (`Gyermek_ora_id`);

--
-- A tábla indexei `noi_ora`
--
ALTER TABLE `noi_ora`
  ADD PRIMARY KEY (`Noi_ora_id`);

--
-- A tábla indexei `rendelesek`
--
ALTER TABLE `rendelesek`
  ADD KEY `Felh_id` (`Felh_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `felhasznalo`
--
ALTER TABLE `felhasznalo`
  MODIFY `Felh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `ferfi_ora`
--
ALTER TABLE `ferfi_ora`
  MODIFY `Ferfi_ora_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT a táblához `gyermek_ora`
--
ALTER TABLE `gyermek_ora`
  MODIFY `Gyermek_ora_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `kosar`
--
ALTER TABLE `kosar`
  MODIFY `kosar_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `noi_ora`
--
ALTER TABLE `noi_ora`
  MODIFY `Noi_ora_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `kosar`
--
ALTER TABLE `kosar`
  ADD CONSTRAINT `kosar_ibfk_1` FOREIGN KEY (`Felh_id`) REFERENCES `felhasznalo` (`Felh_id`),
  ADD CONSTRAINT `kosar_ibfk_2` FOREIGN KEY (`Felh_id`) REFERENCES `felhasznalo` (`Felh_id`),
  ADD CONSTRAINT `kosar_ibfk_3` FOREIGN KEY (`Ferfi_ora_id`) REFERENCES `ferfi_ora` (`Ferfi_ora_id`),
  ADD CONSTRAINT `kosar_ibfk_4` FOREIGN KEY (`Noi_ora_id`) REFERENCES `noi_ora` (`Noi_ora_id`),
  ADD CONSTRAINT `kosar_ibfk_5` FOREIGN KEY (`Gyermek_ora_id`) REFERENCES `gyermek_ora` (`Gyermek_ora_id`);

--
-- Megkötések a táblához `rendelesek`
--
ALTER TABLE `rendelesek`
  ADD CONSTRAINT `rendelesek_ibfk_1` FOREIGN KEY (`Felh_id`) REFERENCES `felhasznalo` (`Felh_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
