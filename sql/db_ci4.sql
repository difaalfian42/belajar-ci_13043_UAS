-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jul 2024 pada 07.49
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2024-07-15-050610', 'App\\Database\\Migrations\\User', 'default', 'App', 1721020131, 1),
(2, '2024-07-15-050616', 'App\\Database\\Migrations\\Product', 'default', 'App', 1721020132, 1),
(3, '2024-07-15-050622', 'App\\Database\\Migrations\\Transaction', 'default', 'App', 1721020132, 1),
(4, '2024-07-15-050630', 'App\\Database\\Migrations\\TransactionDetail', 'default', 'App', 1721020132, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `jumlah` int(5) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `nama`, `harga`, `jumlah`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'ASUS TUF A15 FA506NF', 10899000, 5, 'asus_tuf_a15.jpg', '2024-07-15 05:11:21', NULL),
(2, 'Asus Vivobook 14 A1404ZA', 6899000, 7, 'asus_vivobook_14.jpg', '2024-07-15 05:11:21', NULL),
(3, 'Lenovo IdeaPad Slim 3-14IAU7', 6299000, 5, 'lenovo_idepad_slim_3.jpg', '2024-07-15 05:11:21', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `total_harga` double NOT NULL,
  `alamat` text NOT NULL,
  `ongkir` double DEFAULT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `transaction_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `jumlah` int(5) NOT NULL,
  `diskon` double DEFAULT NULL,
  `subtotal_harga` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'susanti.daliono', 'snovitasari@yahoo.co.id', '$2y$10$n/A2Wb1w62h6DNFGzxZNZOn6XobqNU/t/L9DmdPMzzbornNFQaNMe', 'admin', '2024-07-15 05:11:38', NULL),
(2, 'msitumorang', 'hartati.vino@yahoo.co.id', '$2y$10$H1wh7GfSIXotmAQd7d1Uhu3l7uTdfLXF1f8BHd3m1vbU3xErvcj9m', 'admin', '2024-07-15 05:11:38', NULL),
(3, 'danuja49', 'ibun04@hutasoit.sch.id', '$2y$10$o5p.3xuC2ab6UfcxN6pgg.eaQT02QiNAllDeCDAYjZfsHme9SSddS', 'guest', '2024-07-15 05:11:38', NULL),
(4, 'ibun.habibi', 'tamba.jarwa@yahoo.com', '$2y$10$SdU4YM9sc3OnBYhK3Ik2zedtPFnshocErz/LAMhV6JFhzPt/dz2du', 'guest', '2024-07-15 05:11:38', NULL),
(5, 'joko.wijaya', 'gsuryono@farida.info', '$2y$10$oqk/ItJvJEMkXl.iLjClbeI8CLgxJOQJJVJkSfQi5POjOfi9.yX1e', 'guest', '2024-07-15 05:11:38', NULL),
(6, 'nainggolan.puji', 'sitorus.damar@anggraini.in', '$2y$10$rE.etC.gNJdm9iWEh/oOf.j47qf6S/8AQyjAYAnxnv.UPzFs2yC0q', 'guest', '2024-07-15 05:11:38', NULL),
(7, 'rusman28', 'wwastuti@samosir.mil.id', '$2y$10$lqJako/p/DXeDcd5EjO8WOZnoWgqGDPnreRRUUVxQp5K1BoxpLq36', 'guest', '2024-07-15 05:11:38', NULL),
(8, 'cinthia.firgantoro', 'patricia81@hartati.net', '$2y$10$69b7q7ggK0qsB89mAG/rE.E0wutEI.pcvRM26npjgZVwBO/RJqCum', 'admin', '2024-07-15 05:11:38', NULL),
(9, 'yuniar.natalia', 'purnawati.harsaya@gmail.co.id', '$2y$10$dx6IW0wNm3zN4vdGgWstaOddzy4cmvospo0YaXUvgr5wPFbNEaarS', 'admin', '2024-07-15 05:11:38', NULL),
(10, 'anastasia15', 'oliva.namaga@gmail.co.id', '$2y$10$gpNkHWzssGbVoNbNF0VVXeNzzNqZU7RjyueF15LFtAHAbiFInQnYO', 'admin', '2024-07-15 05:11:38', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
