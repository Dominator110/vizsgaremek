-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Feb 22. 14:53
-- Kiszolgáló verziója: 10.4.14-MariaDB
-- PHP verzió: 7.4.11

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
  `jelszo` varchar(60) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ferfi_ora`
--

CREATE TABLE `ferfi_ora` (
  `Ferfi_ora_id` int(11) NOT NULL,
  `Ferfi_ora_nev` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Ferfi_ora_marka` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Ferfi_ora_ar` int(11) NOT NULL,
  `Ferfi_ora_szin` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Ferfi_ora_keszlet` int(11) NOT NULL,
  `Ferfi_ora_kep` varchar(256) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gyermek_ora`
--

CREATE TABLE `gyermek_ora` (
  `Gyermek_ora_id` int(11) NOT NULL,
  `Gyermek_ora_nev` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Gyermek_ora_marka` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Gyermek_ora_ar` int(11) NOT NULL,
  `Gyermek_ora_szin` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Gyermek_ora_keszlet` int(11) NOT NULL,
  `gyermek_ora_kep` varchar(256) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

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
  `Noi_ora_nev` varchar(40) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Noi_ora_marka` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Noi_ora_ar` int(11) NOT NULL,
  `Noi_ora_szin` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Noi_ora_keszlet` int(11) NOT NULL,
  `Noi_ora_kep` varchar(256) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

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
  MODIFY `Felh_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `ferfi_ora`
--
ALTER TABLE `ferfi_ora`
  MODIFY `Ferfi_ora_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `gyermek_ora`
--
ALTER TABLE `gyermek_ora`
  MODIFY `Gyermek_ora_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `kosar`
--
ALTER TABLE `kosar`
  MODIFY `kosar_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `noi_ora`
--
ALTER TABLE `noi_ora`
  MODIFY `Noi_ora_id` int(11) NOT NULL AUTO_INCREMENT;

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