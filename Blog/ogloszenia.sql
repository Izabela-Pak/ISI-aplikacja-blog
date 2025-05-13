-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2025 at 11:36 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ogloszenia`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategorie`
--

CREATE TABLE `kategorie` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `kategorie`
--

INSERT INTO `kategorie` (`id`, `nazwa`) VALUES
(1, 'Książki'),
(2, 'Muzyka'),
(3, 'Filmy');

-- --------------------------------------------------------

--
-- Table structure for table `ogloszenie`
--

CREATE TABLE `ogloszenie` (
  `id` int(10) UNSIGNED NOT NULL,
  `uzytkownik_id` int(10) UNSIGNED NOT NULL,
  `kategoria` int(10) UNSIGNED DEFAULT NULL,
  `tytul` text DEFAULT NULL,
  `tresc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `ogloszenie`
--

INSERT INTO `ogloszenie` (`id`, `uzytkownik_id`, `kategoria`, `tytul`, `tresc`) VALUES
(1, 1, 1, 'Daniel Craig. Biografia', 'Biografia Daniela Craiga, niedrogo sprzedam'),
(2, 1, 1, 'Selekcja', 'Sprzedam: \"Selekcja\" J. Kellermana, niezniszczona'),
(3, 2, 1, 'Buick', 'Sprzedam horror Stephena Kinga w dobrym stanie'),
(4, 2, 1, 'Tytus, Romek i Atomek', 'Ks. IV do sprzedania, stan dobry'),
(5, 2, 2, 'Imagine Dragons', 'Sprzedam dwa CD Imagine Dragons'),
(6, 2, 3, 'Kultowa Godzilla', 'Mam oryginalną kopię filmu Godzilla'),
(7, 2, 3, 'Wojny Gwiezdne', 'Odstąpię pierwsze wydanie Wojen Gwiezdnych (VHS) - stan bardzo dobry'),
(8, 2, 3, 'Wojny Gwiezdne', 'Odstąpię pierwsze wydanie Wojen Gwiezdnych (VHS) - stan bardzo dobry');

-- --------------------------------------------------------

--
-- Table structure for table `uzytkownik`
--

CREATE TABLE `uzytkownik` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `email` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `uzytkownik`
--

INSERT INTO `uzytkownik` (`id`, `imie`, `nazwisko`, `telefon`, `email`) VALUES
(1, 'Anna', 'Kowalska', '601601601', 'anna@poczta.pl'),
(2, 'Jan', 'Nowak', '608608608', 'jan@poczta.pl'),
(3, 'Krzysztof', 'Kowalewski', '605606607', 'krzysztof@poczta.pl');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ogloszenie`
--
ALTER TABLE `ogloszenie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uzytkownik`
--
ALTER TABLE `uzytkownik`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ogloszenie`
--
ALTER TABLE `ogloszenie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `uzytkownik`
--
ALTER TABLE `uzytkownik`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
