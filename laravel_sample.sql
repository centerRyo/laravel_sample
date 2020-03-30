-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: 2020 年 3 月 30 日 18:29
-- サーバのバージョン： 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `laravel_sample`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `drills`
--

CREATE TABLE `drills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `problem0` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `problem1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `problem2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `problem3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `problem4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `problem5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `problem6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `problem7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `problem8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `problem9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `drills`
--

INSERT INTO `drills` (`id`, `title`, `category_name`, `problem0`, `problem1`, `problem2`, `problem3`, `problem4`, `problem5`, `problem6`, `problem7`, `problem8`, `problem9`, `created_at`, `updated_at`) VALUES
(3, 'サンプルテスト', 'サンプルカテゴリー', 'var', 'console.log(', 'Laravel Framework', 'ここまでできたら上級', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-24 21:11:54', '2020-03-24 21:11:54');

-- --------------------------------------------------------

--
-- テーブルの構造 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2020_03_10_010130_create_drills_table', 1),
(8, '2020_03_20_091937_change_problem_not_null_to_null_on_drills_table', 2);

-- --------------------------------------------------------

--
-- テーブルの構造 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test taro', 'test@example.com', NULL, '$2y$10$80vuJ.L7Tp9xV7bm389HZ.VMagdv5LgHMuAWctkNJDtqen72HEPFq', NULL, '2020-03-17 16:09:58', '2020-03-17 16:09:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drills`
--
ALTER TABLE `drills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `drills`
--
ALTER TABLE `drills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
