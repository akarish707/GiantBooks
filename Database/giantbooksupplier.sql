-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2022 at 05:48 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `giantbooksupplier`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `publisher_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `sinopsis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `publisher_id`, `title`, `author`, `year`, `sinopsis`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Janitorial Supervisor', 'Rene Bosco', 2014, 'I suppose?\' said Alice. \'I mean what I say,\' the Mock Turtle repeated thoughtfully. \'I should like to have got in your knocking,\' the Footman went on saying to herself, \'after such a nice soft thing.', 'totoro 1.jpg', NULL, NULL),
(2, 1, 'Kindergarten Teacher', 'Prof. Darryl Feeney', 2014, 'Alice did not at all this time. \'I want a clean cup,\' interrupted the Gryphon. \'They can\'t have anything to say, she simply bowed, and took the hookah out of the garden, and I shall remember it in.', 'totoro 2.jpg', NULL, NULL),
(3, 6, 'HR Specialist', 'Alana Goodwin', 2000, 'Alice as she swam lazily about in the world am I? Ah, THAT\'S the great wonder is, that there\'s any one left alive!\' She was walking by the carrier,\' she thought; \'and how funny it\'ll seem, sending.', 'totoro 3.jpg', NULL, NULL),
(4, 4, 'Skin Care Specialist', 'Deonte Gleichner', 2016, 'But the snail replied \"Too far, too far!\" and gave a look askance-- Said he thanked the whiting kindly, but he could go. Alice took up the fan and gloves. \'How queer it seems,\' Alice said with some.', 'totoro 4.jpg', NULL, NULL),
(5, 3, 'Agricultural Science Technician', 'Maud Bergstrom', 2011, 'Dormouse crossed the court, \'Bring me the list of singers. \'You may go,\' said the King. \'I can\'t explain MYSELF, I\'m afraid, sir\' said Alice, \'and those twelve creatures,\' (she was so long since she.', 'totoro 5.jpg', NULL, NULL),
(6, 3, 'Anthropology Teacher', 'Prof. Jayden Schulist', 2016, 'Alice had been anything near the right words,\' said poor Alice, \'when one wasn\'t always growing larger and smaller, and being so many lessons to learn! Oh, I shouldn\'t want YOURS: I don\'t put my arm.', 'totoro 6.jpg', NULL, NULL),
(7, 2, 'Logging Tractor Operator', 'Jayne Wiegand IV', 2000, 'She was a dead silence instantly, and Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a moment. \'Let\'s go on for some minutes. The Caterpillar and Alice was not quite sure.', 'totoro 7.jpg', NULL, NULL),
(8, 5, 'Machinery Maintenance', 'Dr. Jeffery Heaney', 2021, 'THE KING AND QUEEN OF HEARTS. Alice was too much pepper in my own tears! That WILL be a queer thing, to be listening, so she took up the chimney, and said to herself as she leant against a buttercup.', 'totoro 8.jpg', NULL, NULL),
(9, 5, 'Textile Worker', 'Alexzander Hauck IV', 2019, 'WHAT?\' thought Alice; \'I might as well say that \"I see what the moral of that dark hall, and close to her to carry it further. So she set the little creature down, and was going to turn into a.', 'totoro 9.jpg', NULL, NULL),
(10, 3, 'Signal Repairer OR Track Switch Repairer', 'Mrs. Marlen Larkin', 2019, 'Alice noticed with some difficulty, as it didn\'t much matter which way you have of putting things!\' \'It\'s a pun!\' the King and Queen of Hearts were seated on their slates, \'SHE doesn\'t believe.', 'totoro 10.jpg', NULL, NULL),
(11, 2, 'Engine Assembler', 'Joaquin Mante', 2020, 'Alice thought decidedly uncivil. \'But perhaps he can\'t help it,\' she thought, \'and hand round the refreshments!\' But there seemed to rise like a serpent. She had not as yet had any sense, they\'d.', 'totoro 11.jpg', NULL, NULL),
(12, 6, 'Distribution Manager', 'Jerel Lowe', 2014, 'Father William replied to his son, \'I feared it might end, you know,\' said the King, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the same, the next witness!\' said.', 'totoro 12.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `books_categories`
--

CREATE TABLE `books_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `books_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books_categories`
--

INSERT INTO `books_categories` (`id`, `books_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 7, 4, NULL, NULL),
(2, 11, 4, NULL, NULL),
(3, 5, 2, NULL, NULL),
(4, 1, 4, NULL, NULL),
(5, 2, 3, NULL, NULL),
(6, 9, 4, NULL, NULL),
(7, 5, 4, NULL, NULL),
(8, 5, 2, NULL, NULL),
(9, 1, 4, NULL, NULL),
(10, 3, 4, NULL, NULL),
(11, 9, 1, NULL, NULL),
(12, 11, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Category 1', NULL, NULL),
(2, 'Category 2', NULL, NULL),
(3, 'Category 3', NULL, NULL),
(4, 'Category 4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_27_023615_create_categories_table', 1),
(6, '2022_11_27_023629_create_publishers_table', 1),
(7, '2022_11_27_023746_create_books_table', 1),
(8, '2022_11_27_023806_create_books_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `address`, `phone`, `email`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Jimmie Gutmann', '9648 Dawn Trail\nMadysonhaven, SC 00730-3441', '+1-310-770-9958', 'johns.retta@doyle.com', 'logo 1.png', NULL, NULL),
(2, 'Kameron Lueilwitz DDS', '217 Predovic Mountain Apt. 200\nSamarafort, RI 94107', '+1-720-417-4637', 'brown.dorothy@gulgowski.com', 'logo 2.png', NULL, NULL),
(3, 'Jensen Spinka II', '89543 Cecile Trail\nWest Sibyl, SC 93742-6851', '1-417-587-7682', 'xweimann@ferry.com', 'logo 3.png', NULL, NULL),
(4, 'Dr. Annette Cremin PhD', '57050 Cesar Unions Apt. 971\nNew Stephaniastad, CO 00647', '1-231-436-6655', 'tyshawn16@ullrich.com', 'logo 4.png', NULL, NULL),
(5, 'Claudine Ryan', '906 Paula River\nEast Carlotta, AR 63900-3428', '1-651-239-1954', 'mae.borer@simonis.org', 'logo 5.png', NULL, NULL),
(6, 'Joey Lynch', '4481 Kacey Springs\nMertzfurt, LA 74759', '1-206-294-4813', 'conroy.payton@hotmail.com', 'logo 6.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_publisher_id_foreign` (`publisher_id`);

--
-- Indexes for table `books_categories`
--
ALTER TABLE `books_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_categories_books_id_foreign` (`books_id`),
  ADD KEY `books_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `books_categories`
--
ALTER TABLE `books_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_publisher_id_foreign` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`);

--
-- Constraints for table `books_categories`
--
ALTER TABLE `books_categories`
  ADD CONSTRAINT `books_categories_books_id_foreign` FOREIGN KEY (`books_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `books_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
