-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jul 2019 pada 05.26
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cobaterminal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwalbis`
--

CREATE TABLE `jadwalbis` (
  `jadwal_id` int(11) NOT NULL,
  `jadwal_terminal` varchar(30) NOT NULL,
  `jadwal_singgah` time NOT NULL,
  `jadwal_pergi` time NOT NULL,
  `jadwal_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwalbis`
--

INSERT INTO `jadwalbis` (`jadwal_id`, `jadwal_terminal`, `jadwal_singgah`, `jadwal_pergi`, `jadwal_keterangan`) VALUES
(1, 'Terminal Cileungsi', '05:00:00', '08:00:00', 'BIS AC 48 SEAT\r\nNO.POL D.3333.AC'),
(2, 'Ter.bojonegoro', '00:00:00', '15:00:00', 'BIS 1'),
(3, 'TERMINAL TEGAL', '20:35:00', '20:40:00', 'BIS AC');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `nohp` text COLLATE utf8mb4_unicode_ci,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `updated_at` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarif` text COLLATE utf8mb4_unicode_ci,
  `kuota` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id`, `nama`, `email`, `nohp`, `alamat`, `updated_at`, `created_at`, `tarif`, `kuota`) VALUES
(1, 'BANDUNG', '06.00', NULL, 'MGI', '2019-07-04 08:21:08', '2019-06-26 02:21:58', 'Rp.70.000', 'D 7681 AM'),
(2, 'BANDUNG', '07.00', NULL, 'MGI', '2019-06-26 02:23:48', '2019-06-26 02:23:48', 'Rp.70.000', 'D 7662 AJ'),
(3, 'TASIK MALAYA', '07.00', NULL, 'BUDIMAN', '2019-06-26 02:28:15', '2019-06-26 02:28:15', 'Rp.90.000', 'Z 7525 ME'),
(4, 'BANDUNG', '08.00', NULL, 'MGI', '2019-06-26 02:31:10', '2019-06-26 02:31:10', 'Rp.70.000', 'D 7626 AO'),
(5, 'BANDUNG', '09.00', NULL, 'MGI', '2019-06-26 02:32:01', '2019-06-26 02:32:01', 'Rp.70.000', 'D 7625 AO'),
(6, 'BANDUNG', '10.00', NULL, 'MGI', '2019-06-26 02:32:53', '2019-06-26 02:32:53', 'Rp.70.000', 'D 7660 AJ'),
(7, 'PURWOKERTO', '10.15', NULL, 'TUNGGAL DARA', '2019-06-26 02:43:29', '2019-06-26 02:43:29', 'Rp.165.000', 'AD 1634 CG'),
(8, 'WONOGIRI', '10.30', NULL, 'PUTRA MULYA', '2019-06-26 02:45:28', '2019-06-26 02:45:28', 'Rp.165.000', 'AD 1708 AF'),
(9, 'PACITAN', '10.30', NULL, 'AGRAMAS', '2019-06-26 02:48:32', '2019-06-26 02:48:32', 'Rp.210.000', 'B 7274 KGA'),
(10, 'PURWANTORO', '10.30', NULL, 'AGRAMAS', '2019-06-26 02:52:11', '2019-06-26 02:52:11', 'Rp.155.000', 'B 7274 KGA'),
(11, 'PACITAN', '10.30', NULL, 'GAJAH MUNGKUR', '2019-06-26 02:58:12', '2019-06-26 02:58:12', 'Rp.175.000', 'AD 1516 FG'),
(12, 'PONOROGO', '11.00', NULL, 'SINDORO SATRIA MAS', '2019-06-26 03:01:00', '2019-06-26 03:01:00', 'Rp.170.000', 'H 1905 G'),
(13, 'BANDUNG', '11.00', NULL, 'MGI', '2019-06-26 03:02:55', '2019-06-26 03:02:55', 'Rp.70.000', 'D 7761 AJ'),
(14, 'PONOROGO', '11.00', NULL, 'ANDHORA', '2019-06-26 03:04:46', '2019-06-26 03:04:46', 'Rp.185.000', 'B 7072 SGA'),
(15, 'PURWANTORO', '11.30', NULL, 'LAJU PRIMA', '2019-06-26 03:07:33', '2019-06-26 03:07:33', 'Rp.150.000', 'AD 1437 DR'),
(16, 'MALANG', '11.30', NULL, 'MEDALI MAS', '2019-06-27 07:10:39', '2019-06-27 07:10:39', 'Rp.320.000', 'N 7253 US'),
(17, 'MADIUN', '12.00', NULL, 'HARAPAN JAYA', '2019-06-27 07:14:19', '2019-06-27 07:14:19', 'Rp.245.000', 'AG 7239 US'),
(18, 'MADURA', '12.00', NULL, 'PAHALA KENCANA', '2019-06-27 07:17:19', '2019-06-27 07:17:19', 'Rp.250.000', 'B 7898 IZ'),
(19, 'KLATEN', '12.00', NULL, 'LAJU PRIMA', '2019-06-27 07:19:36', '2019-06-27 07:19:36', 'Rp.150.000', 'AD 1437 DR'),
(20, 'KLATEN', '12.00', NULL, 'RAMAYANA', '2019-06-27 07:21:37', '2019-06-27 07:21:37', 'Rp.150.000', 'AB 1637 AB'),
(21, 'CEPU', '12.30', NULL, 'ZENTRUM', '2019-06-27 07:25:27', '2019-06-27 07:25:27', 'Rp.150.000', 'K 1487 BF'),
(22, 'DELANGGU', '12.30', NULL, 'PRAYOGO', '2019-06-27 07:27:16', '2019-06-27 07:27:16', 'Rp.130.000', 'AB 7650 JN'),
(23, 'MAGETAN', '12.30', NULL, 'LAJU PRIMA', '2019-06-27 07:30:14', '2019-06-27 07:30:14', 'Rp.170.000', 'B 7057 TGC'),
(24, 'JEPARA', '13.00', NULL, 'HARIANTO', '2019-06-27 07:32:28', '2019-06-27 07:32:28', 'Rp.210.000', 'B 7131 VGA'),
(25, 'BANDUNG', '13.00', NULL, 'MGI', '2019-06-27 07:33:56', '2019-06-27 07:33:56', 'Rp.70.000', 'D 7814 AN'),
(26, 'BOJO NEGORO', '13.30', NULL, 'AGRA MAS', '2019-06-27 07:36:21', '2019-06-27 07:36:21', 'Rp.230.000', 'B 7274 KGA'),
(27, 'JEPARA', '13.30', NULL, 'SHANTIKA', '2019-06-27 07:39:01', '2019-06-27 07:39:01', 'Rp.210.000', 'K 1558 CB'),
(28, 'MALANG', '13.30', NULL, 'GUNUNG HARTA', '2019-06-27 07:42:52', '2019-06-27 07:42:52', 'Rp.210.000', 'DK 9057 GH'),
(29, 'BANDUNG', '14.00', NULL, 'MGI', '2019-06-27 07:44:12', '2019-06-27 07:44:12', 'Rp.70.000', 'D 7768 AM'),
(30, 'TEMANGGUNG', '15:00', NULL, 'MURNI JAYA', '2019-06-27 07:46:30', '2019-06-27 07:46:30', 'Rp.150.000', 'A 7759 KC'),
(31, 'SOLO', '16.00', NULL, 'SINAR JAYA', '2019-06-27 07:49:09', '2019-06-27 07:49:09', 'Rp.115.000', 'B 7771 TGA'),
(32, 'BANDUNG', '16.00', NULL, 'MGI', '2019-06-27 07:50:54', '2019-06-27 07:50:54', 'Rp.70.000', 'D 7662 AJ'),
(33, 'PURWOREJO', '16.30', NULL, 'SINAR JAYA', '2019-06-27 07:53:16', '2019-06-27 07:53:16', 'Rp.85.000', 'B 7771 TGA'),
(34, 'WONOGIRI', '16.30', NULL, 'GUNUNG MULIA', '2019-06-27 07:54:39', '2019-06-27 07:54:39', 'Rp.165.000', 'AD 1437 DR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('vapersinfo.dev@gmail.com', '$2y$10$KJPEKLpf0S3f9EPC3it23OsUH7MgB4k0PU9gy/JhRiALdwhvAQjoe', '2019-04-10 04:51:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'adminadmin@gmail.com', 'adminadmin', 'JQht8qVfeQhcJFbqacHQhk8fnqIsKwiITsrM541FPs6ovGhns73PH0sPDXbi', '2019-04-16 08:54:22', '2019-04-16 08:54:22'),
(3, 'admin1', 'admin1.admin@gmail.com', '$2y$10$9DMRQUZ62lgB1JR4KO4JbOc6k/INvjvgsgPA2NVQpUmRL2uHd2/Gm', '3fAVTl2qwzEs2bAShIjGqoSWSIvdmoPQ481E8hvQHIyqNqZOjcDHCBTybaUz', '2019-06-22 09:50:01', '2019-06-22 09:50:01');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jadwalbis`
--
ALTER TABLE `jadwalbis`
  ADD PRIMARY KEY (`jadwal_id`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jadwalbis`
--
ALTER TABLE `jadwalbis`
  MODIFY `jadwal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
