-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Out-2022 às 01:19
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `300api`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
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
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_17_193407_services', 1),
(6, '2022_09_17_293407_create_schedule_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
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

--
-- Extraindo dados da tabela `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 16, 'auth_token', '04d364f8fbca2a99bb6eb7c155efb1af5116cd87a0a256b775c504f5f0266b8e', '[\"*\"]', '2022-09-18 03:16:20', NULL, '2022-09-18 03:10:12', '2022-09-18 03:16:20'),
(2, 'App\\Models\\User', 16, 'auth_token', '4bd8a38136b55459dda9dfe990e8cc17475f1f45ed6bd42710c5964853e61200', '[\"*\"]', NULL, NULL, '2022-09-18 07:43:31', '2022-09-18 07:43:31'),
(3, 'App\\Models\\User', 16, 'auth_token', 'eb3707b5e78d2ec4ae621943b8ee82df0b68baa84158c81fcbab66e4bb794e1c', '[\"*\"]', NULL, NULL, '2022-09-18 07:55:44', '2022-09-18 07:55:44'),
(4, 'App\\Models\\User', 16, 'auth_token', 'b55660fcb229e34102a02621f7139b6641333b0d970407c7399808ef95ecffc0', '[\"*\"]', NULL, NULL, '2022-09-18 08:36:30', '2022-09-18 08:36:30'),
(5, 'App\\Models\\User', 16, 'auth_token', '6e00abdc6621dca15b2a63467cbded92d79923bae72a841b8c90e3dc128ddff2', '[\"*\"]', NULL, NULL, '2022-09-18 09:06:55', '2022-09-18 09:06:55'),
(6, 'App\\Models\\User', 16, 'auth_token', '0b114e2498a3f97f1727afd26167751b96de6e3afd0ee4d90d97b300e8a5c83a', '[\"*\"]', NULL, NULL, '2022-09-18 23:01:17', '2022-09-18 23:01:17'),
(7, 'App\\Models\\User', 16, 'auth_token', '0d65a42ec9d1585d901e375737dbf39532053ab095c27216d43e8201445f2e55', '[\"*\"]', NULL, NULL, '2022-09-18 23:01:24', '2022-09-18 23:01:24'),
(8, 'App\\Models\\User', 16, 'auth_token', 'fe7c454173d4547a767e9c643d85b06405c4524272078eeb03ec57f1ed6ee3fc', '[\"*\"]', NULL, NULL, '2022-09-18 23:03:31', '2022-09-18 23:03:31'),
(9, 'App\\Models\\User', 16, 'auth_token', '3641e9d9c84c08460890da62ea79433a334521d5d546fd643f3b638369861519', '[\"*\"]', NULL, NULL, '2022-09-18 23:06:03', '2022-09-18 23:06:03'),
(10, 'App\\Models\\User', 16, 'auth_token', '041167d920785b5ea01ca241b802cba8acb52a133bdc1aa2678dc0a173b6bd07', '[\"*\"]', NULL, NULL, '2022-09-18 23:06:40', '2022-09-18 23:06:40'),
(11, 'App\\Models\\User', 16, 'auth_token', '65766531987f0fce58f9cda8c456520c9c8d45599f5795819602701ef3284a4a', '[\"*\"]', NULL, NULL, '2022-09-18 23:07:42', '2022-09-18 23:07:42'),
(12, 'App\\Models\\User', 16, 'auth_token', 'ab11053ca5f9e163487f7463d3df1f354ff844147bc483ff8edeb56b980ddf33', '[\"*\"]', NULL, NULL, '2022-09-18 23:08:46', '2022-09-18 23:08:46'),
(13, 'App\\Models\\User', 16, 'auth_token', '1e295721c7f8de956c77c64008cc8e7c1281d69105afacd97ccfb2deeb9fee59', '[\"*\"]', NULL, NULL, '2022-09-18 23:11:12', '2022-09-18 23:11:12'),
(14, 'App\\Models\\User', 16, 'auth_token', 'ba7f5b60bed15dbad8d823a3cc56c8791dc751099e8375fa42b4fc77e6db4be4', '[\"*\"]', NULL, NULL, '2022-09-18 23:13:44', '2022-09-18 23:13:44'),
(15, 'App\\Models\\User', 16, 'auth_token', '75bca0e5e4fc74b6037168508a63fa6ec5a940b0a87304a1e6b40c21f75805e0', '[\"*\"]', NULL, NULL, '2022-09-18 23:35:11', '2022-09-18 23:35:11'),
(16, 'App\\Models\\User', 16, 'auth_token', '0c20b573130325d34703661170031165f924ba909d9860f700fd55cb495ed96a', '[\"*\"]', NULL, NULL, '2022-09-18 23:35:58', '2022-09-18 23:35:58'),
(17, 'App\\Models\\User', 16, 'auth_token', '4d40042805505bc1c79202bcbcd937d322219cdaf39439950735c3c11c8039ca', '[\"*\"]', NULL, NULL, '2022-09-18 23:36:30', '2022-09-18 23:36:30'),
(18, 'App\\Models\\User', 16, 'auth_token', '5d32aafd63ecbe1e28a12dcda112d84b824d9ddfade6676273ef4756ceef6535', '[\"*\"]', NULL, NULL, '2022-09-18 23:37:14', '2022-09-18 23:37:14'),
(19, 'App\\Models\\User', 16, 'auth_token', 'c96b831f7ed431ade6ff01581ffa75d8bb1c93ed45f83c985dec8f4d3cc21692', '[\"*\"]', NULL, NULL, '2022-09-18 23:37:40', '2022-09-18 23:37:40'),
(20, 'App\\Models\\User', 16, 'auth_token', '42c618f18b82eaabb5e91732c9be319f9c557e28406f23fe45a8c04573fe76bb', '[\"*\"]', NULL, NULL, '2022-09-18 23:39:52', '2022-09-18 23:39:52'),
(21, 'App\\Models\\User', 16, 'auth_token', '26090f48132dc798a9f82a935756e9a7bfab1380952e641c0450961466e5a577', '[\"*\"]', NULL, NULL, '2022-09-18 23:41:54', '2022-09-18 23:41:54'),
(22, 'App\\Models\\User', 16, 'auth_token', '27475936df65136b3178db099baccb9379e6b6f358b6f21c5668e7096d6fb43b', '[\"*\"]', NULL, NULL, '2022-09-18 23:47:17', '2022-09-18 23:47:17'),
(23, 'App\\Models\\User', 16, 'auth_token', '46f30e712dd9c34be220565df9e69d18b70be0ddd9b2359bf184c8733fd88520', '[\"*\"]', NULL, NULL, '2022-09-18 23:53:36', '2022-09-18 23:53:36'),
(24, 'App\\Models\\User', 16, 'auth_token', 'cc58ab62038f29d496b1378ec94c584b7e42b3aa8efdc44692185d25ceb31be9', '[\"*\"]', NULL, NULL, '2022-09-18 23:58:41', '2022-09-18 23:58:41'),
(25, 'App\\Models\\User', 16, 'auth_token', 'b35d87fae8ff4a7b69949349551d3cda027afa992bca65778bb34996f6dcbd36', '[\"*\"]', NULL, NULL, '2022-09-19 00:14:34', '2022-09-19 00:14:34'),
(26, 'App\\Models\\User', 16, 'auth_token', '372bf046297e648d12c69ef8050e9eeac567d0f3b8825a3b2c2c730a6900319f', '[\"*\"]', NULL, NULL, '2022-09-19 00:19:48', '2022-09-19 00:19:48'),
(27, 'App\\Models\\User', 16, 'auth_token', 'c521ad4783a5f45148ff5032f0ccdef4af16df0a702ba454f0c9ce343dabc2cd', '[\"*\"]', NULL, NULL, '2022-09-19 00:20:19', '2022-09-19 00:20:19'),
(29, 'App\\Models\\User', 16, 'auth_token', '13b220ff096ce092a9984ca1ccdfa9b43688e90d307203da7cc68cecff37209a', '[\"*\"]', NULL, NULL, '2022-09-19 00:30:30', '2022-09-19 00:30:30'),
(30, 'App\\Models\\User', 16, 'auth_token', '1bbc05e38e2ef98d053c687daa67c9c2866c673b0d53743c33a736568c78efbe', '[\"*\"]', NULL, NULL, '2022-09-19 00:56:52', '2022-09-19 00:56:52'),
(31, 'App\\Models\\User', 16, 'auth_token', 'ffbda5632dbdc9837a37253c1098fb63406f59dcf752673da325413feb4657b2', '[\"*\"]', NULL, NULL, '2022-09-19 01:28:25', '2022-09-19 01:28:25'),
(32, 'App\\Models\\User', 16, 'auth_token', '25afec80ddbefa8cc75a1f278ca752208a05472e00f69007b35d4ded35a61325', '[\"*\"]', NULL, NULL, '2022-09-19 01:34:05', '2022-09-19 01:34:05'),
(33, 'App\\Models\\User', 16, 'auth_token', '87d758b86d8028ffcf1fcbe05decb491e8a40fe43413515fa45fbf82a6aba06c', '[\"*\"]', NULL, NULL, '2022-09-19 01:36:22', '2022-09-19 01:36:22'),
(34, 'App\\Models\\User', 16, 'auth_token', '70ed77d6524121b44ff0f156a90b9db4a4f41ffdbaf9d9bdd948ac4cdf2f8efb', '[\"*\"]', NULL, NULL, '2022-09-19 01:38:49', '2022-09-19 01:38:49'),
(35, 'App\\Models\\User', 16, 'auth_token', 'bdc5ea32cea872a8e2d1967a1dfadcd2b338b1511659e8c5ce4705de5a3404cb', '[\"*\"]', '2022-09-19 03:14:44', NULL, '2022-09-19 01:49:39', '2022-09-19 03:14:44'),
(40, 'App\\Models\\User', 16, 'auth_token', '35f957c240f8369f975c4c71b04ff6d2482052c51f5bbd3ec6793d8333bee599', '[\"*\"]', '2022-09-19 04:46:58', NULL, '2022-09-19 04:46:57', '2022-09-19 04:46:58'),
(41, 'App\\Models\\User', 16, 'auth_token', '908a6784b66d731cadbc79c4caa2a9b9e1a8580531d561ee206055af6adac9b2', '[\"*\"]', '2022-09-19 04:47:15', NULL, '2022-09-19 04:47:14', '2022-09-19 04:47:15'),
(42, 'App\\Models\\User', 16, 'auth_token', '1df6d138a3073778bd3a3c35163d60645ef0e95d17e3949aa649f40ce8027494', '[\"*\"]', '2022-09-19 04:47:56', NULL, '2022-09-19 04:47:55', '2022-09-19 04:47:56'),
(43, 'App\\Models\\User', 16, 'auth_token', 'f1e5d067eaa620b2d49910abb0ddce2092f7c5218e342930929ab770d2fb4f33', '[\"*\"]', '2022-09-19 04:48:42', NULL, '2022-09-19 04:48:41', '2022-09-19 04:48:42'),
(44, 'App\\Models\\User', 16, 'auth_token', '4b1a929dbb7f611e23f7bd5897debffb4488522aeb4489f373f4c0d5fba8379d', '[\"*\"]', '2022-09-19 04:52:01', NULL, '2022-09-19 04:50:15', '2022-09-19 04:52:01'),
(45, 'App\\Models\\User', 16, 'auth_token', '84e9fd7cf8fce486eaeb8023e508436e8f9617532989cde3b6bbcdd11bdbed89', '[\"*\"]', '2022-09-19 04:57:22', NULL, '2022-09-19 04:57:21', '2022-09-19 04:57:22'),
(46, 'App\\Models\\User', 16, 'auth_token', '4f683839d792a323774e8acabd0ff1053ca5424ef8540f84c8e52cbca3d25956', '[\"*\"]', '2022-09-19 04:59:10', NULL, '2022-09-19 04:59:09', '2022-09-19 04:59:10'),
(47, 'App\\Models\\User', 16, 'auth_token', '1a1cdd7ad7f6e6d011fe560309b55767c74b8a2a789ece4fa462d82d9bfc407c', '[\"*\"]', NULL, NULL, '2022-09-19 06:31:09', '2022-09-19 06:31:09'),
(48, 'App\\Models\\User', 16, 'auth_token', '7b2bea37f6fb7cff4490e63ecd11c210786a1af4eed92c8fc0df730950b852ea', '[\"*\"]', NULL, NULL, '2022-09-19 06:33:33', '2022-09-19 06:33:33'),
(49, 'App\\Models\\User', 16, 'auth_token', 'bcb8e24292ec4ab7f3d46eb2c8c80966806a44e6d314bd0b4543eeaad992bf08', '[\"*\"]', NULL, NULL, '2022-09-19 06:36:03', '2022-09-19 06:36:03'),
(50, 'App\\Models\\User', 16, 'auth_token', '3f3f8f0e28800c8bdec265f10cb1c934de54ad0fb044a0a78a8662c5ee2ce48f', '[\"*\"]', '2022-09-19 06:45:52', NULL, '2022-09-19 06:43:26', '2022-09-19 06:45:52'),
(51, 'App\\Models\\User', 16, 'auth_token', 'd4f62387a4f58bfe5a1186d6e98b89ab67ad687cd1f562b953b2cf3b206094a7', '[\"*\"]', NULL, NULL, '2022-09-19 06:50:55', '2022-09-19 06:50:55'),
(52, 'App\\Models\\User', 16, 'auth_token', 'adb1b263d39a26be69001505abf136678966e00f73862ee4da53673066980370', '[\"*\"]', '2022-09-19 06:55:36', NULL, '2022-09-19 06:53:56', '2022-09-19 06:55:36'),
(53, 'App\\Models\\User', 16, 'auth_token', '3b5c3522f1b5e12dc7ab8a477093a9f5037bd0e63a37a5f8a98a6d90583e36ba', '[\"*\"]', '2022-09-19 07:32:44', NULL, '2022-09-19 07:32:05', '2022-09-19 07:32:44'),
(54, 'App\\Models\\User', 16, 'auth_token', '6a4936ce710386c4b524ba9d16f28e77e7c3559f87dd78285669b3178548c9a2', '[\"*\"]', '2022-09-19 07:34:38', NULL, '2022-09-19 07:34:37', '2022-09-19 07:34:38'),
(55, 'App\\Models\\User', 16, 'auth_token', '72f799d309594a929e6125660431dc1bb1a9b682adcc3e106adfe5591055e87b', '[\"*\"]', '2022-09-19 08:11:21', NULL, '2022-09-19 08:11:20', '2022-09-19 08:11:21'),
(56, 'App\\Models\\User', 16, 'auth_token', '8ece60e0833ea654e67c07e78bcd34cd2b4448657a8f8c71d75866ad1a046c39', '[\"*\"]', NULL, NULL, '2022-09-19 08:56:35', '2022-09-19 08:56:35'),
(57, 'App\\Models\\User', 16, 'auth_token', '9495d8bbddb6bb7146c03a5935ebf14d504c9785ed9c5191a30f97788b597845', '[\"*\"]', '2022-09-19 09:52:58', NULL, '2022-09-19 09:52:20', '2022-09-19 09:52:58'),
(60, 'App\\Models\\User', 17, 'auth_token', '14f5523851b617e391531dffd6187296ded478090ad10dc0fd1487dce9c44852', '[\"*\"]', '2022-09-19 09:55:37', NULL, '2022-09-19 09:55:37', '2022-09-19 09:55:37'),
(61, 'App\\Models\\User', 17, 'auth_token', 'b3e841e672df5f06812e0fdccefcfeeef5f9fe9ac255a9718a41eaf74d5eea18', '[\"*\"]', '2022-09-19 10:59:41', NULL, '2022-09-19 10:59:40', '2022-09-19 10:59:41'),
(62, 'App\\Models\\User', 16, 'auth_token', 'a585b304a7e6af0dafed49518176962d51f5fefb5373b9562b9b05cd38d743d3', '[\"*\"]', '2022-09-19 11:15:49', NULL, '2022-09-19 11:15:48', '2022-09-19 11:15:49'),
(63, 'App\\Models\\User', 16, 'auth_token', '43fc0bd2e21a036743381a8652634638e3be41ffcfd9020ee06988a66b1f187e', '[\"*\"]', '2022-09-19 11:18:15', NULL, '2022-09-19 11:18:13', '2022-09-19 11:18:15'),
(64, 'App\\Models\\User', 17, 'auth_token', '219c0fc2d9d25ab79f12932e7de6f6ac5cb7f81f5f319e7bd4da18026fecf046', '[\"*\"]', '2022-09-19 11:19:57', NULL, '2022-09-19 11:19:56', '2022-09-19 11:19:57'),
(65, 'App\\Models\\User', 16, 'auth_token', 'a1e56c16ebc26b156e8a0ae8044e21be28d4cc94c8d6602d26f7a4ca909e386b', '[\"*\"]', '2022-09-19 11:22:46', NULL, '2022-09-19 11:22:45', '2022-09-19 11:22:46'),
(66, 'App\\Models\\User', 17, 'auth_token', 'f9fa8bf8e12deb86af00dcc6d60080e93747d5381313df9967a84d3246c3d7b9', '[\"*\"]', '2022-09-19 11:23:22', NULL, '2022-09-19 11:23:21', '2022-09-19 11:23:22'),
(67, 'App\\Models\\User', 16, 'auth_token', '9ecaff91146d94f87291d65326ea9ba2f32d062efd2d01e8b57b3866adc896cb', '[\"*\"]', '2022-09-19 11:26:39', NULL, '2022-09-19 11:26:37', '2022-09-19 11:26:39'),
(68, 'App\\Models\\User', 17, 'auth_token', '554e203804509579324680b03471d33788fc946a6d05813bcef6f376ca198ad2', '[\"*\"]', '2022-09-19 11:29:14', NULL, '2022-09-19 11:29:12', '2022-09-19 11:29:14'),
(69, 'App\\Models\\User', 17, 'auth_token', '95c8bdd3e7b6a9e085bb9eaf28afd29fb418dc6f8311fa037cd0e78680dbe5b9', '[\"*\"]', '2022-09-20 18:48:46', NULL, '2022-09-20 18:48:44', '2022-09-20 18:48:46'),
(70, 'App\\Models\\User', 16, 'auth_token', 'bf6c41153aa8dd161d664023f54318bbf540399ee764b5ef98996080c0944bc6', '[\"*\"]', '2022-09-20 18:52:36', NULL, '2022-09-20 18:52:17', '2022-09-20 18:52:36'),
(71, 'App\\Models\\User', 17, 'auth_token', 'ae3f1495aa67b1e9e0bba33d2aa776e795e6b4873f4043831cf58b0672978995', '[\"*\"]', '2022-09-20 18:53:15', NULL, '2022-09-20 18:53:14', '2022-09-20 18:53:15'),
(72, 'App\\Models\\User', 16, 'auth_token', '051e0a9837f552c3944b288fb898cb45fd0c2c8e952dc565691ace18be37c7c6', '[\"*\"]', '2022-09-20 18:54:06', NULL, '2022-09-20 18:54:05', '2022-09-20 18:54:06'),
(73, 'App\\Models\\User', 17, 'auth_token', '1109333bc1f17e6f40c86b022ddf0ea9a05660346b105b21b3755c2cb4f8e1d1', '[\"*\"]', '2022-09-20 19:01:01', NULL, '2022-09-20 19:01:00', '2022-09-20 19:01:01'),
(74, 'App\\Models\\User', 17, 'auth_token', '88dd92580023fb12f1fc3d997a05ecad9c10bc9786f10a6c7242a2b40befa963', '[\"*\"]', '2022-09-20 19:06:41', NULL, '2022-09-20 19:06:39', '2022-09-20 19:06:41'),
(75, 'App\\Models\\User', 16, 'auth_token', 'f429f8f7f242a95c9902255c33d671e029e7948efab4d4bf4f3fa4e06d294ac4', '[\"*\"]', '2022-09-20 19:07:52', NULL, '2022-09-20 19:07:50', '2022-09-20 19:07:52'),
(76, 'App\\Models\\User', 16, 'auth_token', '1838506aa3ee8ea9e9966d74ef8271ff43b06be0d79d3308d568f7154ceedd8b', '[\"*\"]', NULL, NULL, '2022-09-20 19:07:51', '2022-09-20 19:07:51'),
(77, 'App\\Models\\User', 17, 'auth_token', 'bce0024860b45d715a7ac977f680f3f1869b5557dbe7718f55b69ae04c951317', '[\"*\"]', '2022-09-20 19:10:57', NULL, '2022-09-20 19:10:56', '2022-09-20 19:10:57'),
(78, 'App\\Models\\User', 17, 'auth_token', '78c66f0abebdf96bcef4d5573233d602cedbc802f66a6d5625f8e349d2555f3c', '[\"*\"]', '2022-09-20 20:37:00', NULL, '2022-09-20 20:36:59', '2022-09-20 20:37:00'),
(79, 'App\\Models\\User', 16, 'auth_token', '22de80825bcf15a5a9dc99814f447cea22f7eb9a40e62a03f035830151911479', '[\"*\"]', '2022-09-20 20:43:36', NULL, '2022-09-20 20:39:48', '2022-09-20 20:43:36'),
(80, 'App\\Models\\User', 16, 'auth_token', '44b280a9bbb86413231d57b4a5f56138567a2cc49c4dcd9446164ace089d7972', '[\"*\"]', '2022-09-20 20:45:32', NULL, '2022-09-20 20:45:31', '2022-09-20 20:45:32'),
(82, 'App\\Models\\User', 16, 'auth_token', '750d2a828b2f12100e250d6eb6de17b747e688c7fa35f508fcab6d17183b344c', '[\"*\"]', '2022-09-20 22:50:51', NULL, '2022-09-20 22:50:49', '2022-09-20 22:50:51'),
(83, 'App\\Models\\User', 17, 'auth_token', 'aa18b8a624052906972afa8db115e92c56b4764d45c4409a779c4f43a34d7a05', '[\"*\"]', '2022-09-22 17:47:25', NULL, '2022-09-22 17:45:25', '2022-09-22 17:47:25'),
(85, 'App\\Models\\User', 16, 'auth_token', '0459f0510b205c94f5af8dc9a6a75f5df8713160fb1202f00fb28d2d7ca4cb94', '[\"*\"]', '2022-09-22 17:55:30', NULL, '2022-09-22 17:55:28', '2022-09-22 17:55:30'),
(86, 'App\\Models\\User', 16, 'auth_token', '8d8f045dcbc2c3d1a7953e595625da7a267d69ac3082d899b71b8545d5aae1c4', '[\"*\"]', '2022-09-22 18:25:20', NULL, '2022-09-22 18:25:19', '2022-09-22 18:25:20'),
(87, 'App\\Models\\User', 17, 'auth_token', '5e00c7e03fad8e18d167ed33a7227d3fea096dc0588d59f787e1034cb7d6a5c7', '[\"*\"]', NULL, NULL, '2022-09-22 18:29:06', '2022-09-22 18:29:06'),
(88, 'App\\Models\\User', 16, 'auth_token', '6a344a636595f9660d6f80ce081775c0784600eb06c908cb6d1748df7ac452b5', '[\"*\"]', NULL, NULL, '2022-09-22 18:31:54', '2022-09-22 18:31:54'),
(89, 'App\\Models\\User', 16, 'auth_token', '0a14d9c8fe00d3f216031b9de97d271926166fc4973ba25a6c47fc2b06e0c8fc', '[\"*\"]', NULL, NULL, '2022-09-22 18:33:26', '2022-09-22 18:33:26'),
(90, 'App\\Models\\User', 16, 'auth_token', '442de2238cbad27da92fd5b9bbe0b373695d25387a1148491847094457b0f0c3', '[\"*\"]', NULL, NULL, '2022-09-22 18:34:42', '2022-09-22 18:34:42'),
(91, 'App\\Models\\User', 16, 'auth_token', '6e1a3a90b8e4c19f1a673a945aee2aea344cbeb80d8d32959a51a65a4bc89f56', '[\"*\"]', '2022-09-22 18:36:51', NULL, '2022-09-22 18:35:26', '2022-09-22 18:36:51'),
(94, 'App\\Models\\User', 17, 'auth_token', '3c538f2c47898bef9246597501a4fb6df15f56c4c2c13d774cba3672d6c9030f', '[\"*\"]', '2022-09-22 18:44:35', NULL, '2022-09-22 18:44:33', '2022-09-22 18:44:35'),
(95, 'App\\Models\\User', 16, 'auth_token', 'b5fe2df44f9e49fc55cfebf223f8c352be1f5182509985d40a17828254d9d3e3', '[\"*\"]', '2022-09-22 18:47:32', NULL, '2022-09-22 18:47:30', '2022-09-22 18:47:32'),
(96, 'App\\Models\\User', 17, 'auth_token', 'fbe4d92cb48f0be9425b42fc1ea1ded328bf543e414dbe91099da13b85d57f40', '[\"*\"]', '2022-09-22 18:54:02', NULL, '2022-09-22 18:50:12', '2022-09-22 18:54:02'),
(97, 'App\\Models\\User', 16, 'auth_token', '5f36650fc0e4d33807a752e1eef07afd45056a7250f9cfe879e8a92967081788', '[\"*\"]', '2022-09-22 18:56:54', NULL, '2022-09-22 18:56:52', '2022-09-22 18:56:54'),
(98, 'App\\Models\\User', 17, 'auth_token', '37bb0bb8be1007274cb04377312ab298a73cd4d234159f3a3effb35a9e3f7fac', '[\"*\"]', '2022-09-22 19:01:38', NULL, '2022-09-22 19:01:36', '2022-09-22 19:01:38'),
(99, 'App\\Models\\User', 17, 'auth_token', '8b6bd6bb1ee41cabd8115a0442228b86f25b084c647096a0cacc74853bf3cde9', '[\"*\"]', '2022-09-22 19:06:53', NULL, '2022-09-22 19:03:38', '2022-09-22 19:06:53'),
(100, 'App\\Models\\User', 16, 'auth_token', 'f3ff80b8b9229446183886ed38b90b15d7395130329d46f9129e358585507877', '[\"*\"]', '2022-09-22 19:09:25', NULL, '2022-09-22 19:09:23', '2022-09-22 19:09:25'),
(101, 'App\\Models\\User', 16, 'auth_token', '05430076a6914ac2211ad59d9fa14d503f21bf0cc0fdc88bf7993222e665d3ff', '[\"*\"]', '2022-09-22 19:10:23', NULL, '2022-09-22 19:10:22', '2022-09-22 19:10:23'),
(102, 'App\\Models\\User', 16, 'auth_token', '1ac3667a510941089dc0e2524f2f34584491b19f2aa06b8486f26b42214eb4fc', '[\"*\"]', '2022-09-22 19:17:06', NULL, '2022-09-22 19:17:05', '2022-09-22 19:17:06'),
(103, 'App\\Models\\User', 16, 'auth_token', '9209ac855fcdc47563dbba922ad7e279b58b3e77ca405869993967e938aa556c', '[\"*\"]', NULL, NULL, '2022-09-22 19:33:41', '2022-09-22 19:33:41'),
(104, 'App\\Models\\User', 17, 'auth_token', 'fc6ae14587b54ab2217be3d80df889fb346a5b67174327396485f0b3a41c58b6', '[\"*\"]', NULL, NULL, '2022-09-22 19:34:17', '2022-09-22 19:34:17'),
(105, 'App\\Models\\User', 16, 'auth_token', '7faee13a643254b83092e5636882f096f33f2dce6c3fe39e32c333852475acd7', '[\"*\"]', NULL, NULL, '2022-09-22 19:34:51', '2022-09-22 19:34:51'),
(106, 'App\\Models\\User', 16, 'auth_token', '73c22bc4a8eaa7bed108b584b5336165adaa7af122e663f11d3658c79bc901ab', '[\"*\"]', '2022-09-22 19:35:40', NULL, '2022-09-22 19:35:33', '2022-09-22 19:35:40'),
(107, 'App\\Models\\User', 16, 'auth_token', 'daab06fd0910c4f27f772d0f856ed32275ef850a21ec7954a00045587a526454', '[\"*\"]', '2022-09-22 19:36:42', NULL, '2022-09-22 19:35:50', '2022-09-22 19:36:42'),
(108, 'App\\Models\\User', 17, 'auth_token', '87e1221b8ffdb5007831abbb10cad912f0bbd11027d4859ee4cdf696caaf60ce', '[\"*\"]', NULL, NULL, '2022-09-22 19:37:47', '2022-09-22 19:37:47'),
(109, 'App\\Models\\User', 16, 'auth_token', 'df79a8281211dc15d4dd7314fe91f013c39079a73c749c8b796e20c1e062f8c1', '[\"*\"]', '2022-09-22 19:39:20', NULL, '2022-09-22 19:38:57', '2022-09-22 19:39:20'),
(110, 'App\\Models\\User', 16, 'auth_token', '001884580d30aabaf19c52ffd0eaf9d36e919bcec4cb2eb8705ec1cc4b7a7ee9', '[\"*\"]', '2022-09-22 19:39:49', NULL, '2022-09-22 19:39:48', '2022-09-22 19:39:49'),
(111, 'App\\Models\\User', 16, 'auth_token', '9debb32b0af92fb4870da64da84cac78de969a6f424f0ea2400941341ca482ab', '[\"*\"]', NULL, NULL, '2022-09-22 19:40:58', '2022-09-22 19:40:58'),
(112, 'App\\Models\\User', 16, 'auth_token', '885942ca034e5c31510d6a95824b0c53b0dec2a5c1543be11d21da6af228885b', '[\"*\"]', '2022-09-22 20:28:17', NULL, '2022-09-22 19:41:55', '2022-09-22 20:28:17'),
(113, 'App\\Models\\User', 16, 'auth_token', '666f4f92976f2da9db0a708b59f96a66c6249dc7e090adca10ab55d23f06e43c', '[\"*\"]', '2022-09-22 20:29:10', NULL, '2022-09-22 20:28:34', '2022-09-22 20:29:10'),
(114, 'App\\Models\\User', 16, 'auth_token', 'a3b252c32fe19f5c17d6591fb275ea8e2c3710c93d8436f30060b32835e8d3fa', '[\"*\"]', '2022-09-22 20:29:41', NULL, '2022-09-22 20:29:40', '2022-09-22 20:29:41'),
(115, 'App\\Models\\User', 17, 'auth_token', 'bf1dfc63b6107e22e1b5dc1bb6858578d8685b2f47e0dcd6016d79b563620252', '[\"*\"]', '2022-09-22 20:30:59', NULL, '2022-09-22 20:30:14', '2022-09-22 20:30:59'),
(116, 'App\\Models\\User', 16, 'auth_token', '6c17c5b6f29c6db13e792529c0af6b04f005428a128c3d7200a03c394ce21411', '[\"*\"]', '2022-09-22 21:22:26', NULL, '2022-09-22 20:34:20', '2022-09-22 21:22:26'),
(117, 'App\\Models\\User', 16, 'auth_token', '7c0f59624b1cb36d39ff05e3d7f60af99851d5d86547fa8dfe9c7d246e3a7708', '[\"*\"]', '2022-09-22 23:18:17', NULL, '2022-09-22 23:18:15', '2022-09-22 23:18:17'),
(120, 'App\\Models\\User', 16, 'auth_token', '294bff0f398ea5f58a3548f90bc113d8f7ce73a42f468472e3e26ff2764e1cdb', '[\"*\"]', '2022-09-22 23:39:31', NULL, '2022-09-22 23:39:29', '2022-09-22 23:39:31'),
(122, 'App\\Models\\User', 17, 'auth_token', 'b71e27f4fbfc28a5dd219615fdfa7691da32ae60691a098634fc367547219ac9', '[\"*\"]', '2022-09-23 18:37:57', NULL, '2022-09-23 18:37:56', '2022-09-23 18:37:57'),
(123, 'App\\Models\\User', 16, 'auth_token', '8f2b7e4cf9c267beb0a9f0b0e640384b01650af62e9039a59c44a6f11da60778', '[\"*\"]', '2022-09-23 19:21:17', NULL, '2022-09-23 19:21:16', '2022-09-23 19:21:17'),
(124, 'App\\Models\\User', 17, 'auth_token', 'b8518097de789e12b2a2b85ae8fe31bb585004bead5cd8a44ff9cf6d1803c990', '[\"*\"]', '2022-09-23 19:24:47', NULL, '2022-09-23 19:24:45', '2022-09-23 19:24:47'),
(125, 'App\\Models\\User', 16, 'auth_token', 'af5a7203d0e1a0b458abfbf7d43628eefb1068845e44d13ebd2a9475ce732532', '[\"*\"]', '2022-09-23 19:32:54', NULL, '2022-09-23 19:32:53', '2022-09-23 19:32:54'),
(126, 'App\\Models\\User', 17, 'auth_token', '0a9de6e90e00e3b1389a779cfb07692fd677af3ff8beb32218811ea91cfd536b', '[\"*\"]', '2022-09-23 19:36:52', NULL, '2022-09-23 19:36:51', '2022-09-23 19:36:52'),
(127, 'App\\Models\\User', 17, 'auth_token', '6404deb30e1d14c86789f92ff514182641a29b760d01f83349681b47486dfa6b', '[\"*\"]', '2022-09-23 19:43:49', NULL, '2022-09-23 19:43:47', '2022-09-23 19:43:49'),
(128, 'App\\Models\\User', 16, 'auth_token', 'a7e2c6285135afbe8e7617e704dc43848b893902abe5eac41572d5d66b38ba28', '[\"*\"]', '2022-09-23 19:50:05', NULL, '2022-09-23 19:50:04', '2022-09-23 19:50:05'),
(129, 'App\\Models\\User', 16, 'auth_token', '37add889844172917f9ecfbf927740c1c6e395a6c8e4dcefda824bef26968e6d', '[\"*\"]', '2022-09-23 19:51:47', NULL, '2022-09-23 19:51:45', '2022-09-23 19:51:47'),
(131, 'App\\Models\\User', 16, 'auth_token', '411d114c507b8e03ad43fcd591aa26f4cb79b301e2ad0141a577c57aa2df2378', '[\"*\"]', '2022-09-23 20:00:43', NULL, '2022-09-23 20:00:42', '2022-09-23 20:00:43'),
(132, 'App\\Models\\User', 17, 'auth_token', 'a9e93d8467850c3c5f10ea7ed373f8f8a509ec0c497c8ad00820445238a5ad2c', '[\"*\"]', '2022-09-23 20:03:54', NULL, '2022-09-23 20:03:53', '2022-09-23 20:03:54'),
(133, 'App\\Models\\User', 17, 'auth_token', '873b5c676f2213562edaa0dea5a66b58a6656ff9bae3b657ed0607a9660f5453', '[\"*\"]', '2022-09-23 20:05:39', NULL, '2022-09-23 20:05:38', '2022-09-23 20:05:39'),
(134, 'App\\Models\\User', 16, 'auth_token', '41426003acb2e004f7eb18084be5ec412cdf261484000c551fcb23d4a0507163', '[\"*\"]', '2022-09-23 20:07:28', NULL, '2022-09-23 20:07:27', '2022-09-23 20:07:28'),
(135, 'App\\Models\\User', 17, 'auth_token', '744f1308c0916e36ab8da1efe4166b0503c3bfbb1c6484d182dfd993aa6aa522', '[\"*\"]', '2022-09-23 21:11:54', NULL, '2022-09-23 21:11:52', '2022-09-23 21:11:54'),
(136, 'App\\Models\\User', 16, 'auth_token', '53b9c54c841dbd385a8e3efa1d6ccaf0a0da9954fc03ccd27be3a111b29e14ad', '[\"*\"]', '2022-09-23 21:16:24', NULL, '2022-09-23 21:16:22', '2022-09-23 21:16:24'),
(137, 'App\\Models\\User', 16, 'auth_token', 'a5d396b92706e0661d754bdacb322ae06e1671b1f93c5d89b23a6d8267df6fb3', '[\"*\"]', '2022-09-23 21:18:18', NULL, '2022-09-23 21:18:17', '2022-09-23 21:18:18'),
(138, 'App\\Models\\User', 16, 'auth_token', '90c6bb57d45c2a8f8fe6a6615c936e6bf801ecb772437b2d81edf646d380220a', '[\"*\"]', '2022-09-25 02:10:10', NULL, '2022-09-25 02:10:08', '2022-09-25 02:10:10'),
(139, 'App\\Models\\User', 16, 'auth_token', 'ebd5a0a62e7a007b86292a822808865f8db5b920966aee1677ad38796350a7a3', '[\"*\"]', '2022-09-25 02:34:37', NULL, '2022-09-25 02:29:52', '2022-09-25 02:34:37'),
(140, 'App\\Models\\User', 17, 'auth_token', 'afcb07cd4b5c17dffa9ced590e8d6909566b79735a81aaf6a13ea367309129fe', '[\"*\"]', '2022-09-25 02:36:00', NULL, '2022-09-25 02:35:59', '2022-09-25 02:36:00'),
(141, 'App\\Models\\User', 16, 'auth_token', '7ee7dd1c6363e1edfc1ea72e876485264779a1205a6a34e731500e531ff45658', '[\"*\"]', '2022-09-26 01:06:50', NULL, '2022-09-26 01:06:48', '2022-09-26 01:06:50'),
(143, 'App\\Models\\User', 17, 'auth_token', '60163ea21928a24968b95587e220830ed529e988176d694cfd69d002edc68588', '[\"*\"]', '2022-09-26 16:57:30', NULL, '2022-09-26 16:57:29', '2022-09-26 16:57:30'),
(144, 'App\\Models\\User', 16, 'auth_token', 'e6d8f8c944392bdf33bc4c222ff614d946389d00ee4e97ff2e0db54697208f52', '[\"*\"]', '2022-09-26 17:03:07', NULL, '2022-09-26 17:03:06', '2022-09-26 17:03:07'),
(151, 'App\\Models\\User', 16, 'auth_token', '3c8faf073f30541f926471f770bf7700fbf9f02fc237d71eef32b142ff0e8e94', '[\"*\"]', '2022-09-26 18:46:39', NULL, '2022-09-26 18:46:35', '2022-09-26 18:46:39'),
(157, 'App\\Models\\User', 16, 'auth_token', '65f37238950d5f0b836c8101256fb4b1c14e9352e9c00872d13e3d4e78759fca', '[\"*\"]', NULL, NULL, '2022-09-29 21:32:29', '2022-09-29 21:32:29'),
(158, 'App\\Models\\User', 16, 'auth_token', '3f28ad8aef90110af0576534a61bd8c5396cae2d5368648c67f3575ebd5c8556', '[\"*\"]', NULL, NULL, '2022-09-29 21:33:56', '2022-09-29 21:33:56'),
(159, 'App\\Models\\User', 16, 'auth_token', 'f1fd776f2c90cdc9061ae88debc42b7efe2d54968ac3f566074d494c3be4b6d7', '[\"*\"]', NULL, NULL, '2022-09-29 21:49:38', '2022-09-29 21:49:38'),
(162, 'App\\Models\\User', 16, 'auth_token', '0f7c7026bbe3195bc2f9c39aa85f82cfae3dff3da45227a5aabb1f65785f377b', '[\"*\"]', '2022-09-29 22:57:26', NULL, '2022-09-29 22:57:25', '2022-09-29 22:57:26'),
(168, 'App\\Models\\User', 16, 'auth_token', '99af33f7b551f68c497ef7b9d836f878b515f5da01add0437c2ca6bf5008f190', '[\"*\"]', '2022-09-30 04:52:11', NULL, '2022-09-30 04:52:09', '2022-09-30 04:52:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dma` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `schedules`
--

INSERT INTO `schedules` (`id`, `dma`, `service_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2022-09-22 14:59:36', 1, 16, '2022-09-17 21:38:28', NULL),
(3, '2022-09-19 00:22:16', 5, 17, '2022-09-19 00:22:16', NULL),
(4, '2022-09-22 14:59:36', 3, 17, '2022-09-23 18:37:25', '2022-09-23 18:37:25'),
(5, '2022-08-23 23:00:00', 2, 16, '2022-09-23 19:59:50', '2022-09-23 19:59:50'),
(6, '2022-09-22 14:59:36', 2, 16, '2022-09-23 21:14:38', '2022-09-23 21:14:38'),
(8, '2022-09-29 03:15:00', 3, 16, '2022-09-25 02:10:34', '2022-09-25 02:10:34'),
(9, '2022-09-30 04:35:00', 5, 16, '2022-09-25 02:30:35', '2022-09-25 02:30:35'),
(10, '2022-09-15 13:25:00', 1, 17, '2022-09-25 02:36:16', '2022-09-25 02:36:16'),
(15, '2022-09-28 20:05:00', 1, 20, '2022-09-26 19:03:33', '2022-09-26 19:03:33'),
(16, '2022-09-15 19:06:00', 4, 22, '2022-09-26 19:04:54', '2022-09-26 19:04:54'),
(17, '2022-09-17 18:35:00', 3, 16, '2022-09-26 19:34:24', '2022-09-26 19:34:24'),
(18, '2022-09-28 20:45:00', 2, 23, '2022-09-26 19:43:00', '2022-09-26 19:43:00'),
(22, '2022-10-06 03:15:00', 3, 25, '2022-09-30 05:14:57', '2022-09-30 05:14:57'),
(23, '2022-10-04 01:05:00', 1, 16, '2022-10-02 01:02:45', '2022-10-02 01:02:45'),
(24, '2022-10-16 02:55:00', 4, 17, '2022-10-02 01:53:27', '2022-10-02 01:53:27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `services`
--

INSERT INTO `services` (`id`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 1000, 'Pezinho', '2022-09-17 21:36:22', '2022-09-17 22:36:22'),
(2, 3000, 'Corte de cabelo', '2022-09-18 00:36:22', '2022-09-18 00:36:22'),
(3, 4500, 'Corte + Barba', '2022-09-18 00:36:22', '2022-09-18 00:36:22'),
(4, 6000, 'Barba + Cabelo +Bigode', '2022-09-18 00:36:22', '2022-09-18 00:36:22'),
(5, 10000, 'Serviço completo', '2022-09-18 00:36:22', '2022-09-18 00:36:22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `phone_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'JãoMudado', '11964302049', '2022-09-18 00:36:21', '', 'Xq8HHZYpcP', '2022-09-18 00:36:21', '2022-09-18 03:17:29'),
(2, 'Mrs. Maurine Stanton', 'Reiciendis explicabo illum sit porro.', '2022-09-18 00:36:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sQLLkcjSaF', '2022-09-18 00:36:21', '2022-09-18 00:36:21'),
(3, 'Kasey Terry', 'Fugit voluptatem sequi sed animi iusto voluptatum corrupti labore.', '2022-09-18 00:36:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xdeaHcW2oR', '2022-09-18 00:36:21', '2022-09-18 00:36:21'),
(4, 'Stanford Brown', 'Aut saepe voluptatem vero molestiae qui cupiditate.', '2022-09-18 00:36:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DAF2q75tXp', '2022-09-18 00:36:21', '2022-09-18 00:36:21'),
(5, 'Victor Gutkowski V', 'Aut voluptatem nisi commodi.', '2022-09-18 00:36:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sBppW0hjUU', '2022-09-18 00:36:21', '2022-09-18 00:36:21'),
(6, 'Naomi Sanford V', 'Rerum vero ab delectus.', '2022-09-18 00:36:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yJgTlgxH3Y', '2022-09-18 00:36:21', '2022-09-18 00:36:21'),
(7, 'Haley Grant', 'Cum et accusantium quis maxime sequi.', '2022-09-18 00:36:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vD9Hyi2usN', '2022-09-18 00:36:21', '2022-09-18 00:36:21'),
(8, 'Reba DuBuque', 'Qui sint eius aut eos quo culpa praesentium.', '2022-09-18 00:36:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1JDXz0aybM', '2022-09-18 00:36:21', '2022-09-18 00:36:21'),
(9, 'Elvie Beer', 'Sint aut consequuntur et sequi recusandae quasi.', '2022-09-18 00:36:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PlFKWFx3HW', '2022-09-18 00:36:22', '2022-09-18 00:36:22'),
(10, 'Brady Reilly', 'Quia omnis temporibus veritatis ut ipsam delectus nihil.', '2022-09-18 00:36:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UfzmvoF03d', '2022-09-18 00:36:22', '2022-09-18 00:36:22'),
(11, 'Ruth Kirlin', 'Aut aliquam in odio.', '2022-09-18 00:36:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'W0Bc8NidOI', '2022-09-18 00:36:22', '2022-09-18 00:36:22'),
(12, 'Gustave Becker', 'Fugiat officia autem esse rem ut omnis similique.', '2022-09-18 00:36:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9qHv47QgvQ', '2022-09-18 00:36:22', '2022-09-18 00:36:22'),
(13, 'Chase Bednar', 'Ipsa quis veritatis eligendi rem enim.', '2022-09-18 00:36:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qMUMVx0Spc', '2022-09-18 00:36:22', '2022-09-18 00:36:22'),
(14, 'JãoMudado455', '119643020211', '2022-09-18 00:36:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g12GtNlxXQ', '2022-09-18 00:36:22', '2022-09-18 03:19:00'),
(15, 'Earl Wuckert Sr.', 'Laboriosam doloremque doloremque porro aut qui asperiores.', '2022-09-18 00:36:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QByuWA6cvU', '2022-09-18 00:36:22', '2022-09-18 00:36:22'),
(16, 'Jones3', '11964302045', NULL, '$2y$10$4McjwKSHf1Bh0Q./c46diOOaolCqdOIZ4aXA2s4UAyRL7Eei/F6ie', NULL, '2022-09-18 03:09:19', '2022-09-18 03:09:19'),
(17, 'João Pedro Silva', '11964302074', NULL, '$2y$10$2RXep0Y3EtXf/SrYOYeuduXFoywAfPueaMp.NAsI9KvzHzUWinGuO', NULL, '2022-09-19 03:18:47', '2022-09-19 03:18:47'),
(18, 'Marcos', '111213', NULL, '$2y$10$C1eh5PZ8WKRysisNQmVus.H8G.GNr6dQRTpwnSv4DnMH9cB2zxC9O', NULL, '2022-09-26 18:49:08', '2022-09-26 18:49:08'),
(19, 'Felipe', '141516', NULL, '$2y$10$G60ePJhDsBgUrXhR/a2tOOtOOwI8aEA/467wY3UjngbM2mA/t1kUy', NULL, '2022-09-26 18:50:03', '2022-09-26 18:50:03'),
(20, 'Kaio', '159753', NULL, '$2y$10$8qkcJ1D4srhmcS/paflzwuPB5GVDwfK34mceuWL/0zgH/PkL3JFcq', NULL, '2022-09-26 18:51:24', '2022-09-26 18:51:24'),
(21, 'Gabriel', '753159', NULL, '$2y$10$hS7ZDJqEyVLWfBDuUFJW3OcoarstpwPSh.YEJW7gNlmwAny43/pEy', NULL, '2022-09-26 18:58:19', '2022-09-26 18:58:19'),
(22, 'Pedro', '456789', NULL, '$2y$10$gHhRz7pVRg36TqfuwXEmX.VoGaOxMozMxHtgyvKznrMhrbzMEObE2', NULL, '2022-09-26 19:04:20', '2022-09-26 19:04:20'),
(23, 'Camila', '147852369', NULL, '$2y$10$2TRhZ7Pu7r1J6qhr6YiqVOoaN8gprDsAgSE3K8XR/OJTEDklYjuDW', NULL, '2022-09-26 19:42:38', '2022-09-26 19:42:38'),
(24, 'Henrique', '11123456789', NULL, '$2y$10$YOW8J75g6Ov0lBJBrJnQAesjF36IS/2ocO1gEKNTlawuH5z8haETm', NULL, '2022-09-30 04:25:56', '2022-09-30 04:25:56'),
(25, 'Flavio', '11852741', NULL, '$2y$10$OVagA15zYsoBcKkEIrPoTeeUYP/zdlPxVq4h2xEPuXfPzK1zugMvy', NULL, '2022-09-30 05:14:27', '2022-09-30 05:14:27');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_phone_index` (`phone`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_service_id_foreign` (`service_id`),
  ADD KEY `schedules_user_id_foreign` (`user_id`);

--
-- Índices para tabela `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_id_unique` (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT de tabela `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
