-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Agu 2023 pada 05.16
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Berta Torphy MD', 'alvis.ullrich@example.com', '2023-08-11 02:29:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jIQHhlLvpA', '2023-08-11 02:29:58', '2023-08-11 02:29:58'),
(3, 'Miss Mae Pfeffer Sr.', 'klein.eugene@example.net', '2023-08-11 02:29:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WbqoIAhsLH', '2023-08-11 02:29:58', '2023-08-11 02:29:58'),
(4, 'Mortimer Schowalter', 'eldon32@example.com', '2023-08-11 02:29:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3VXb2Aoipl', '2023-08-11 02:29:58', '2023-08-11 02:29:58'),
(5, 'Stephon Larkin', 'daphne.aufderhar@example.org', '2023-08-11 02:29:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FIfzM0VFS4', '2023-08-11 02:29:58', '2023-08-11 02:29:58'),
(6, 'Jaron Donnelly', 'zkiehn@example.com', '2023-08-11 02:29:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pFswtsuQ1U', '2023-08-11 02:29:58', '2023-08-11 02:29:58'),
(7, 'Horacio Russel', 'clarabelle.mitchell@example.net', '2023-08-11 02:29:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ok1CKzzv92', '2023-08-11 02:29:58', '2023-08-11 02:29:58'),
(8, 'Jamil Schuster', 'kuhn.tess@example.net', '2023-08-11 02:29:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0njyywDpTU', '2023-08-11 02:29:58', '2023-08-11 02:29:58'),
(9, 'Mrs. Treva Rosenbaum DVM', 'geraldine47@example.org', '2023-08-11 02:29:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fk2FoiplQP', '2023-08-11 02:29:58', '2023-08-11 02:29:58'),
(10, 'Kariane Zieme', 'ynienow@example.org', '2023-08-11 02:29:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sG1CGaznuJ', '2023-08-11 02:29:58', '2023-08-11 02:29:58'),
(12, 'Dicko', 'dicko@email.com', NULL, '$2y$10$Yu7ZAIONcSC0Jca0k9aB3exGaxxxRFu8z93ucrMnT4bT3TFGnrtDe', NULL, '2023-08-15 19:41:46', '2023-08-15 19:41:46');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
