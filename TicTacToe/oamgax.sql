-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Máj 03. 21:21
-- Kiszolgáló verziója: 10.4.11-MariaDB
-- PHP verzió: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `amoba`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `lepes`
--

CREATE TABLE `lepes` (
  `azon` int(2) NOT NULL,
  `x` int(2) NOT NULL,
  `y` int(2) NOT NULL,
  `karakter` varchar(2) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `lepes`
--

INSERT INTO `lepes` (`azon`, `x`, `y`, `karakter`) VALUES
(1, 4, 4, 'X'),
(2, 3, 4, 'X'),
(3, 5, 6, 'X'),
(4, 5, 4, 'X'),
(5, 4, 5, 'X'),
(6, 4, 5, 'X'),
(7, 4, 5, 'O'),
(8, 5, 6, 'X'),
(9, 5, 6, 'X'),
(10, 5, 5, 'X'),
(11, 5, 5, 'X'),
(12, 5, 5, 'O'),
(13, 5, 5, 'X'),
(14, 5, 5, 'O'),
(15, 5, 5, 'X'),
(16, 2, 2, 'X'),
(17, 2, 3, 'O'),
(18, 1, 2, 'X'),
(19, 3, 2, 'O'),
(20, 3, 3, 'X'),
(21, 1, 1, 'O'),
(22, 1, 3, 'X'),
(23, 3, 1, 'O'),
(24, 2, 1, 'X'),
(25, 2, 1, 'O');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `lepes`
--
ALTER TABLE `lepes`
  ADD PRIMARY KEY (`azon`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `lepes`
--
ALTER TABLE `lepes`
  MODIFY `azon` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
