-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2023 at 05:22 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2023_08_04_151901_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `author`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Prof.', 'Voluptas reprehenderit tempore reprehenderit eligendi deserunt voluptatum et nihil. Pariatur laudantium voluptatibus doloribus ipsum asperiores. Deserunt enim cupiditate nostrum et ut. Sed atque eum vitae.', 'Sebastian Oberbrunner', 3, '2023-08-04 09:49:09', '2023-08-04 09:49:09'),
(2, 'Dr.', 'Dolorem ut enim illum recusandae reprehenderit. Praesentium voluptas ipsa et consequatur molestiae earum. Expedita dolor omnis autem quia facilis.', 'Barney Haag', 3, '2023-08-04 09:49:09', '2023-08-04 09:49:09'),
(3, 'Dr.', 'Nemo recusandae corrupti sint aut quo. Molestiae exercitationem dolor quia quia molestiae dolor. Repellat omnis sed vel aut nisi officiis laudantium.', 'Else Kozey', 8, '2023-08-04 09:49:09', '2023-08-04 09:49:09'),
(4, 'Dr.', 'Est et et est distinctio dolores odio minus. Velit quo rerum odit quia numquam esse. Exercitationem dolor nam voluptas libero.', 'Wilber Kilback', 9, '2023-08-04 09:49:09', '2023-08-04 09:49:09'),
(5, 'Prof.', 'Tempore exercitationem necessitatibus quos inventore. Minima nihil tempora nemo sit harum consequatur nihil. Similique vel suscipit voluptates iste.', 'Jamar Cremin', 4, '2023-08-04 09:49:09', '2023-08-04 09:49:09'),
(6, 'Prof.', 'Sint laudantium rerum sint quam. Et itaque quae sed consequatur animi nisi. Eaque repellat aperiam soluta ipsa. Maiores veritatis quae quidem omnis.', 'Prof. Antone Donnelly DVM', 7, '2023-08-04 09:49:09', '2023-08-04 09:49:09'),
(7, 'Mrs.', 'Ad rerum officia qui quas assumenda. Ut natus voluptate quod ex reprehenderit temporibus voluptatem. Libero est consequatur dolorum voluptatem quia quibusdam.', 'Gavin Gulgowski', 7, '2023-08-04 09:49:09', '2023-08-04 09:49:09'),
(8, 'Dr.', 'Quaerat praesentium repellat vitae accusantium adipisci possimus voluptas. Inventore quia beatae modi unde delectus enim. Corporis eum praesentium quod aut quas id. Odit tempore deserunt facere.', 'Dr. Norval Balistreri Jr.', 1, '2023-08-04 09:49:09', '2023-08-04 09:49:09'),
(9, 'Mr.', 'In deserunt excepturi impedit id odio adipisci. Aut alias consequatur doloribus quam omnis.', 'Prof. Emerald Cartwright II', 7, '2023-08-04 09:49:09', '2023-08-04 09:49:09'),
(10, 'Dr.', 'Sint dolores voluptatem sunt facilis nemo non. Vel autem sequi qui maxime. Aliquid qui esse laborum tempore ex. Molestiae iure voluptatem excepturi nemo nobis possimus deserunt.', 'Barney Hill V', 2, '2023-08-04 09:49:09', '2023-08-04 09:49:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Keely Kuhic', 'ypfeffer@example.org', '2023-08-04 09:49:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L7fAuvcEP5', '2023-08-04 09:49:09', '2023-08-04 09:49:09'),
(2, 'Rubye Bergstrom', 'kade.runte@example.org', '2023-08-04 09:49:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IYNYE6iQ5I', '2023-08-04 09:49:09', '2023-08-04 09:49:09'),
(3, 'Mrs. Alejandra Marquardt DVM', 'imani94@example.net', '2023-08-04 09:49:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hM06ZZDehO', '2023-08-04 09:49:09', '2023-08-04 09:49:09'),
(4, 'Prof. Emerald Rolfson', 'rbrown@example.com', '2023-08-04 09:49:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qwRA4rxjts', '2023-08-04 09:49:09', '2023-08-04 09:49:09'),
(5, 'Orie Wehner', 'aileen92@example.com', '2023-08-04 09:49:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'edeQSmpUWN', '2023-08-04 09:49:09', '2023-08-04 09:49:09'),
(6, 'Easter Koelpin', 'growe@example.com', '2023-08-04 09:49:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cthd9YpzGU', '2023-08-04 09:49:09', '2023-08-04 09:49:09'),
(7, 'Jaquelin Hagenes DVM', 'yheathcote@example.com', '2023-08-04 09:49:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'y4bLBINBdm', '2023-08-04 09:49:09', '2023-08-04 09:49:09'),
(8, 'Joyce Luettgen', 'ericka.jaskolski@example.com', '2023-08-04 09:49:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'daOGB22i79', '2023-08-04 09:49:09', '2023-08-04 09:49:09'),
(9, 'Tianna Jacobs', 'gulgowski.adolphus@example.com', '2023-08-04 09:49:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hPJ3ris0O7', '2023-08-04 09:49:09', '2023-08-04 09:49:09'),
(10, 'Aubree Mohr', 'henry30@example.org', '2023-08-04 09:49:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Gw5avdZKjI', '2023-08-04 09:49:09', '2023-08-04 09:49:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
