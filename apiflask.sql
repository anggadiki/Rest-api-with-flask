-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2023 pada 14.03
-- Versi server: 8.0.33-0ubuntu0.22.04.2
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apiflask`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `popular_songs`
--

CREATE TABLE `popular_songs` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `popular_songs`
--

INSERT INTO `popular_songs` (`id`, `title`, `artist`) VALUES
(201, 'Song 1', 'Artist 1'),
(202, 'Song 2', 'Artist 2'),
(203, 'Song 3', 'Artist 3'),
(204, 'Song 4', 'Artist 4'),
(205, 'Song 5', 'Artist 5'),
(206, 'Song 6', 'Artist 6'),
(207, 'Song 7', 'Artist 7'),
(208, 'Song 8', 'Artist 8'),
(209, 'Song 9', 'Artist 9'),
(210, 'Song 10', 'Artist 10'),
(211, 'Song 11', 'Artist 11'),
(212, 'Song 12', 'Artist 12'),
(213, 'Song 13', 'Artist 13'),
(214, 'Song 14', 'Artist 14'),
(215, 'Song 15', 'Artist 15'),
(216, 'Song 16', 'Artist 16'),
(217, 'Song 17', 'Artist 17'),
(218, 'Song 18', 'Artist 18'),
(219, 'Song 19', 'Artist 19'),
(220, 'Song 20', 'Artist 20'),
(221, 'Song 21', 'Artist 21'),
(222, 'Song 22', 'Artist 22'),
(223, 'Song 23', 'Artist 23'),
(224, 'Song 24', 'Artist 24'),
(225, 'Song 25', 'Artist 25'),
(226, 'Song 26', 'Artist 26'),
(227, 'Song 27', 'Artist 27'),
(228, 'Song 28', 'Artist 28'),
(229, 'Song 29', 'Artist 29'),
(230, 'Song 30', 'Artist 30'),
(231, 'Song 31', 'Artist 31'),
(232, 'Song 32', 'Artist 32'),
(233, 'Song 33', 'Artist 33'),
(234, 'Song 34', 'Artist 34'),
(235, 'Song 35', 'Artist 35'),
(236, 'Song 36', 'Artist 36'),
(237, 'Song 37', 'Artist 37'),
(238, 'Song 38', 'Artist 38'),
(239, 'Song 39', 'Artist 39'),
(240, 'Song 40', 'Artist 40'),
(241, 'Song 41', 'Artist 41'),
(242, 'Song 42', 'Artist 42'),
(243, 'Song 43', 'Artist 43'),
(244, 'Song 44', 'Artist 44'),
(245, 'Song 45', 'Artist 45'),
(246, 'Song 46', 'Artist 46'),
(247, 'Song 47', 'Artist 47'),
(248, 'Song 48', 'Artist 48'),
(249, 'Song 49', 'Artist 49'),
(250, 'Song 50', 'Artist 50'),
(251, 'Song 51', 'Artist 51'),
(252, 'Song 52', 'Artist 52'),
(253, 'Song 53', 'Artist 53'),
(254, 'Song 54', 'Artist 54'),
(255, 'Song 55', 'Artist 55'),
(256, 'Song 56', 'Artist 56'),
(257, 'Song 57', 'Artist 57'),
(258, 'Song 58', 'Artist 58'),
(259, 'Song 59', 'Artist 59'),
(260, 'Song 60', 'Artist 60'),
(261, 'Song 61', 'Artist 61'),
(262, 'Song 62', 'Artist 62'),
(263, 'Song 63', 'Artist 63'),
(264, 'Song 64', 'Artist 64'),
(265, 'Song 65', 'Artist 65'),
(266, 'Song 66', 'Artist 66'),
(267, 'Song 67', 'Artist 67'),
(268, 'Song 68', 'Artist 68'),
(269, 'Song 69', 'Artist 69'),
(270, 'Song 70', 'Artist 70'),
(271, 'Song 71', 'Artist 71'),
(272, 'Song 72', 'Artist 72'),
(273, 'Song 73', 'Artist 73'),
(274, 'Song 74', 'Artist 74'),
(275, 'Song 75', 'Artist 75'),
(276, 'Song 76', 'Artist 76'),
(277, 'Song 77', 'Artist 77'),
(278, 'Song 78', 'Artist 78'),
(279, 'Song 79', 'Artist 79'),
(280, 'Song 80', 'Artist 80'),
(281, 'Song 81', 'Artist 81'),
(282, 'Song 82', 'Artist 82'),
(283, 'Song 83', 'Artist 83'),
(284, 'Song 84', 'Artist 84'),
(285, 'Song 85', 'Artist 85'),
(286, 'Song 86', 'Artist 86'),
(287, 'Song 87', 'Artist 87'),
(288, 'Song 88', 'Artist 88'),
(289, 'Song 89', 'Artist 89'),
(290, 'Song 90', 'Artist 90'),
(291, 'Song 91', 'Artist 91'),
(292, 'Song 92', 'Artist 92'),
(293, 'Song 93', 'Artist 93'),
(294, 'Song 94', 'Artist 94'),
(295, 'Song 95', 'Artist 95'),
(296, 'Song 96', 'Artist 96'),
(297, 'Song 97', 'Artist 97'),
(298, 'Song 98', 'Artist 98'),
(299, 'Song 99', 'Artist 99');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `popular_songs`
--
ALTER TABLE `popular_songs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `popular_songs`
--
ALTER TABLE `popular_songs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
