-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-03-2019 a las 23:13:23
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_date` date DEFAULT NULL,
  `arrived_date` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carts`
--

INSERT INTO `carts` (`id`, `order_date`, `arrived_date`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Pending', 1, '2019-01-09 01:26:41', '2019-01-10 03:07:55'),
(2, NULL, NULL, 'Active', 2, '2019-01-09 03:29:45', '2019-01-09 03:29:45'),
(3, NULL, NULL, 'Pending', 1, '2019-01-10 03:07:55', '2019-01-10 04:28:18'),
(4, NULL, NULL, 'Pending', 3, '2019-01-10 04:08:57', '2019-01-10 04:26:49'),
(5, NULL, NULL, 'Active', 3, '2019-01-10 04:26:49', '2019-01-10 04:26:49'),
(6, NULL, NULL, 'Pending', 1, '2019-01-10 04:28:18', '2019-01-10 22:24:33'),
(7, NULL, NULL, 'Active', 1, '2019-01-10 22:24:33', '2019-01-10 22:24:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_details`
--

CREATE TABLE `cart_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cart_details`
--

INSERT INTO `cart_details` (`id`, `cart_id`, `product_id`, `quantity`, `discount`, `created_at`, `updated_at`) VALUES
(13, 1, 9, 1, 0, '2019-01-10 01:49:29', '2019-01-10 01:49:29'),
(14, 1, 1, 21, 0, '2019-01-10 01:49:40', '2019-01-10 01:49:40'),
(17, 1, 6, 1, 0, '2019-01-10 02:09:10', '2019-01-10 02:09:10'),
(18, 4, 20, 1, 0, '2019-01-10 04:09:18', '2019-01-10 04:09:18'),
(19, 4, 9, 1, 0, '2019-01-10 04:13:41', '2019-01-10 04:13:41'),
(20, 4, 7, 1, 0, '2019-01-10 04:13:50', '2019-01-10 04:13:50'),
(22, 3, 2, 6, 0, '2019-01-10 04:28:04', '2019-01-10 04:28:04'),
(23, 3, 6, 1, 0, '2019-01-10 04:28:13', '2019-01-10 04:28:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Quidem', 'Nam et saepe autem tempora nihil rerum explicabo quia voluptas.', NULL, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(2, 'Consequatur', 'Necessitatibus eum ut officiis atque laborum qui ex magni deleniti quae sunt.', NULL, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(3, 'Omnis', 'Non unde exercitationem quis dolorem est explicabo sequi et nemo harum.', NULL, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(4, 'Laudantium', 'Eum id nobis cupiditate ex cumque maxime dolorem repellat iure voluptatem qui pariatur facilis.', NULL, '2019-01-09 01:16:42', '2019-01-09 01:16:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(83, '2014_10_12_000000_create_users_table', 1),
(84, '2014_10_12_100000_create_password_resets_table', 1),
(85, '2018_11_06_160140_create_categories_table', 1),
(86, '2018_11_06_173628_create_products_table', 1),
(87, '2018_11_06_193056_create_product_images_table', 1),
(88, '2019_01_07_174724_create_carts_table', 1),
(89, '2019_01_07_174813_create_cart_details_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci,
  `price` double(8,2) NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `long_description`, `price`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Deserunt non non', 'Atque eum laboriosam quibusdam blanditiis autem animi minima quam qui quo reiciendis pariatur.', 'Odit qui ad numquam aspernatur ad. Qui dolor et modi inventore. Porro excepturi dolore aut est.', 24.95, 1, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(2, 'Qui consequuntur deleniti', 'Culpa cupiditate quia distinctio velit assumenda nihil.', 'Magnam qui eveniet consequatur illum reprehenderit quibusdam. Doloremque autem labore ipsum et expedita. Harum ab harum ab voluptatum ipsam.', 54.15, 1, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(3, 'Est sit', 'Possimus at cumque id quam ut rerum possimus quas rerum illo.', 'Ex iusto eos porro rerum rem ipsum cum sit. Et unde quaerat distinctio rerum ratione.', 147.84, 1, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(4, 'Voluptatibus id qui', 'Corrupti voluptatem est optio adipisci magnam et culpa ex officiis illum in laudantium.', 'Aliquid tenetur fuga error eos. Sapiente repudiandae consequatur voluptatum numquam dolor. Maiores sit ab in hic. Libero ea ratione earum suscipit voluptate nemo.', 5.09, 1, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(5, 'Aut ut aliquam pariatur', 'Vitae ut modi explicabo animi quibusdam non qui.', 'Quo rerum quo enim quis consequatur adipisci et. Ut neque molestiae vel quis et nihil. Sunt animi aut omnis. Quia assumenda et harum consectetur qui ut dolor.', 86.05, 1, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(6, 'Et cum ut itaque inventore', 'Illum officiis harum recusandae aspernatur neque quidem est sequi cum fugiat non consequatur.', 'Deserunt sit dolores rem. Ratione quidem quo saepe ab eius itaque eum. Libero alias inventore nobis velit est maiores. Quia eum vitae adipisci et. Libero qui laboriosam omnis qui amet perspiciatis.', 115.52, 2, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(7, 'Quibusdam consequatur sint', 'Minus qui velit ea porro culpa temporibus.', 'Quia sit qui doloremque non fugiat a corporis. Autem incidunt autem qui. Earum dignissimos nemo excepturi illum deserunt unde. Minima dicta itaque voluptate nostrum omnis.', 29.57, 2, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(8, 'Quo maxime blanditiis', 'Non accusantium quidem omnis qui rem at enim.', 'Consequatur optio veritatis eligendi qui porro ut. Deleniti totam qui corrupti iste sequi aut fuga ex. Et aut ab veritatis.', 128.69, 2, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(9, 'Velit mollitia soluta', 'Neque aut voluptatem voluptatem voluptate provident voluptas sunt aut voluptas consectetur.', 'Et qui animi iure et. Cupiditate labore numquam dolorem assumenda. Mollitia deleniti beatae sint alias. Non provident et delectus aut quia quia.', 35.30, 2, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(10, 'Laudantium aperiam et perspiciatis', 'At quaerat nam provident inventore ullam nihil voluptatum beatae est debitis.', 'Ut velit et et et sit et harum. Omnis excepturi ab voluptatem neque. Odit est vitae sed sint. Saepe similique aut labore et.', 54.02, 2, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(11, 'Sequi enim corrupti repellat', 'Quo unde doloremque commodi repellendus accusamus optio.', 'Fugit reprehenderit est et ipsa. Iusto dolore deserunt vel odio perspiciatis qui quasi. Labore quos neque excepturi dolores non cupiditate.', 33.25, 3, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(12, 'Qui velit voluptas autem', 'Rem illum suscipit aut qui vitae est qui impedit dolorem.', 'Eius eligendi nostrum aut. Doloribus minima ut ut nihil et et consectetur. Et et ipsa magni nam a eveniet quis. Dicta placeat eveniet consequatur eveniet deleniti velit.', 144.23, 3, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(13, 'Accusamus minima et', 'Ad voluptatem dolores et ipsum repellendus totam quaerat dignissimos mollitia accusamus cupiditate facilis.', 'Deserunt praesentium dicta enim hic magni. Ut tenetur reprehenderit perferendis quasi. Fuga hic dignissimos a exercitationem. Vitae et quia voluptatem eius nemo accusantium.', 71.05, 3, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(14, 'Est a consequatur ipsum', 'Et quidem expedita atque sunt perferendis inventore odit consectetur qui et quasi vitae.', 'Debitis provident sit error laboriosam ullam. Soluta at temporibus qui maiores aut quas quae laborum. Atque provident expedita temporibus quidem culpa id.', 129.73, 3, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(15, 'Consequuntur omnis minus commodi', 'Atque enim architecto quod eveniet quibusdam officia aliquam.', 'Fugit architecto quo velit maiores dolores provident omnis. Ex tempore cum error quis laboriosam eaque dolores. Quae quis voluptas perspiciatis omnis ea minus aut.', 59.79, 3, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(16, 'Est animi', 'Aut aliquid rem ea voluptas temporibus cum ex minus.', 'Dolorem sed tempora in. Necessitatibus vero cumque corporis.', 25.78, 4, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(17, 'Id praesentium ab', 'Et sit suscipit praesentium eius enim nam error sit quia qui accusamus modi quo.', 'Officia error temporibus id cum. Omnis et perspiciatis cupiditate quia provident. Accusantium enim provident nemo quod labore atque.', 49.02, 4, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(18, 'Occaecati eius impedit', 'Ipsum perspiciatis magnam vel cupiditate ex aut est neque assumenda tenetur.', 'Suscipit eveniet quia accusantium tempora. Quis voluptatem id nesciunt esse necessitatibus nemo ratione. Nihil dicta eum omnis rerum perferendis optio.', 97.97, 4, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(19, 'Dolor sed sunt porro', 'Ad in eos accusamus a ipsam aut velit.', 'Laboriosam est reiciendis iste. Quod quis eaque sit dolorem rerum voluptatum. Voluptates et aut quis dolores ut sint tempora.', 25.59, 4, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(20, 'Nemo et sint perspiciatis', 'Architecto eveniet qui voluptate ut ut corporis.', 'Vel cupiditate nihil exercitationem et et eaque. Qui tempora est sapiente. Libero libero assumenda iste magni. Voluptatem eum eos deserunt necessitatibus rem illum culpa.', 86.11, 4, '2019-01-09 01:16:42', '2019-01-09 01:16:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `featured`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'https://lorempixel.com/250/250/?59276', 1, 1, '2019-01-09 01:16:42', '2019-01-10 04:15:05'),
(2, 'https://lorempixel.com/250/250/?73394', 0, 1, '2019-01-09 01:16:42', '2019-01-10 04:15:05'),
(3, 'https://lorempixel.com/250/250/?40873', 0, 1, '2019-01-09 01:16:42', '2019-01-10 04:15:05'),
(4, 'https://lorempixel.com/250/250/?32266', 0, 1, '2019-01-09 01:16:42', '2019-01-10 04:15:05'),
(5, 'https://lorempixel.com/250/250/?79782', 0, 1, '2019-01-09 01:16:42', '2019-01-10 04:15:05'),
(6, 'https://lorempixel.com/250/250/?48746', 0, 2, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(7, 'https://lorempixel.com/250/250/?20931', 0, 2, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(8, 'https://lorempixel.com/250/250/?70685', 0, 2, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(9, 'https://lorempixel.com/250/250/?42094', 0, 2, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(10, 'https://lorempixel.com/250/250/?76073', 0, 2, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(11, 'https://lorempixel.com/250/250/?41629', 0, 3, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(12, 'https://lorempixel.com/250/250/?71614', 0, 3, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(13, 'https://lorempixel.com/250/250/?88709', 0, 3, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(14, 'https://lorempixel.com/250/250/?19540', 0, 3, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(15, 'https://lorempixel.com/250/250/?21132', 0, 3, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(16, 'https://lorempixel.com/250/250/?55105', 0, 4, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(17, 'https://lorempixel.com/250/250/?97242', 0, 4, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(18, 'https://lorempixel.com/250/250/?60336', 0, 4, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(19, 'https://lorempixel.com/250/250/?91878', 0, 4, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(20, 'https://lorempixel.com/250/250/?98141', 0, 4, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(21, 'https://lorempixel.com/250/250/?65186', 0, 5, '2019-01-09 01:16:42', '2019-01-10 22:27:48'),
(22, 'https://lorempixel.com/250/250/?66361', 1, 5, '2019-01-09 01:16:42', '2019-01-10 22:27:48'),
(23, 'https://lorempixel.com/250/250/?75188', 0, 5, '2019-01-09 01:16:42', '2019-01-10 22:27:48'),
(24, 'https://lorempixel.com/250/250/?51754', 0, 5, '2019-01-09 01:16:42', '2019-01-10 22:27:48'),
(25, 'https://lorempixel.com/250/250/?85024', 0, 5, '2019-01-09 01:16:42', '2019-01-10 22:27:48'),
(26, 'https://lorempixel.com/250/250/?15737', 0, 6, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(27, 'https://lorempixel.com/250/250/?45646', 0, 6, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(28, 'https://lorempixel.com/250/250/?18065', 0, 6, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(29, 'https://lorempixel.com/250/250/?53394', 0, 6, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(30, 'https://lorempixel.com/250/250/?52806', 0, 6, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(31, 'https://lorempixel.com/250/250/?10327', 0, 7, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(32, 'https://lorempixel.com/250/250/?97586', 0, 7, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(33, 'https://lorempixel.com/250/250/?41819', 0, 7, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(34, 'https://lorempixel.com/250/250/?57696', 0, 7, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(35, 'https://lorempixel.com/250/250/?30150', 0, 7, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(36, 'https://lorempixel.com/250/250/?70982', 0, 8, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(37, 'https://lorempixel.com/250/250/?77874', 0, 8, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(38, 'https://lorempixel.com/250/250/?53873', 0, 8, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(39, 'https://lorempixel.com/250/250/?11106', 0, 8, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(40, 'https://lorempixel.com/250/250/?74986', 0, 8, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(41, 'https://lorempixel.com/250/250/?41085', 0, 9, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(42, 'https://lorempixel.com/250/250/?61216', 0, 9, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(43, 'https://lorempixel.com/250/250/?80526', 0, 9, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(44, 'https://lorempixel.com/250/250/?74426', 0, 9, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(45, 'https://lorempixel.com/250/250/?74734', 0, 9, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(46, 'https://lorempixel.com/250/250/?34992', 0, 10, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(47, 'https://lorempixel.com/250/250/?43270', 0, 10, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(48, 'https://lorempixel.com/250/250/?24611', 0, 10, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(49, 'https://lorempixel.com/250/250/?54303', 0, 10, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(50, 'https://lorempixel.com/250/250/?11143', 0, 10, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(51, 'https://lorempixel.com/250/250/?71590', 0, 11, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(52, 'https://lorempixel.com/250/250/?21585', 0, 11, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(53, 'https://lorempixel.com/250/250/?18173', 0, 11, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(54, 'https://lorempixel.com/250/250/?82451', 0, 11, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(55, 'https://lorempixel.com/250/250/?70252', 0, 11, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(56, 'https://lorempixel.com/250/250/?44719', 0, 12, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(57, 'https://lorempixel.com/250/250/?99056', 0, 12, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(58, 'https://lorempixel.com/250/250/?65320', 0, 12, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(59, 'https://lorempixel.com/250/250/?13735', 0, 12, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(60, 'https://lorempixel.com/250/250/?71747', 0, 12, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(61, 'https://lorempixel.com/250/250/?44571', 0, 13, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(62, 'https://lorempixel.com/250/250/?97803', 0, 13, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(63, 'https://lorempixel.com/250/250/?90803', 0, 13, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(64, 'https://lorempixel.com/250/250/?65962', 0, 13, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(65, 'https://lorempixel.com/250/250/?19194', 0, 13, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(66, 'https://lorempixel.com/250/250/?97214', 0, 14, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(67, 'https://lorempixel.com/250/250/?82592', 0, 14, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(68, 'https://lorempixel.com/250/250/?92439', 0, 14, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(69, 'https://lorempixel.com/250/250/?77035', 0, 14, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(70, 'https://lorempixel.com/250/250/?13051', 0, 14, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(71, 'https://lorempixel.com/250/250/?36192', 0, 15, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(72, 'https://lorempixel.com/250/250/?20694', 0, 15, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(73, 'https://lorempixel.com/250/250/?25507', 0, 15, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(74, 'https://lorempixel.com/250/250/?23474', 0, 15, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(75, 'https://lorempixel.com/250/250/?29847', 0, 15, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(76, 'https://lorempixel.com/250/250/?26241', 0, 16, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(77, 'https://lorempixel.com/250/250/?55161', 0, 16, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(78, 'https://lorempixel.com/250/250/?33204', 0, 16, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(79, 'https://lorempixel.com/250/250/?63347', 0, 16, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(80, 'https://lorempixel.com/250/250/?54878', 0, 16, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(81, 'https://lorempixel.com/250/250/?41261', 0, 17, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(82, 'https://lorempixel.com/250/250/?41305', 0, 17, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(83, 'https://lorempixel.com/250/250/?58417', 0, 17, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(84, 'https://lorempixel.com/250/250/?66436', 0, 17, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(85, 'https://lorempixel.com/250/250/?89903', 0, 17, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(86, 'https://lorempixel.com/250/250/?33901', 0, 18, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(87, 'https://lorempixel.com/250/250/?63330', 0, 18, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(88, 'https://lorempixel.com/250/250/?14759', 0, 18, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(89, 'https://lorempixel.com/250/250/?23927', 0, 18, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(90, 'https://lorempixel.com/250/250/?29810', 0, 18, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(91, 'https://lorempixel.com/250/250/?81067', 0, 19, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(92, 'https://lorempixel.com/250/250/?59307', 0, 19, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(93, 'https://lorempixel.com/250/250/?19150', 0, 19, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(94, 'https://lorempixel.com/250/250/?54657', 0, 19, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(95, 'https://lorempixel.com/250/250/?13516', 0, 19, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(96, 'https://lorempixel.com/250/250/?15171', 0, 20, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(97, 'https://lorempixel.com/250/250/?15699', 0, 20, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(98, 'https://lorempixel.com/250/250/?75099', 0, 20, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(99, 'https://lorempixel.com/250/250/?72012', 0, 20, '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(100, 'https://lorempixel.com/250/250/?52153', 0, 20, '2019-01-09 01:16:42', '2019-01-09 01:16:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Peter Parker', 'pedrossanz33@gmail.com', NULL, '$2y$10$x0xXhPro9sgd/ZuWHUG9.e.CQGiyxx2KM7u3DzJ1nSkKKLeY5VjVa', 1, '2fyDc6eKrD0BJ9dLzvOkp1ipQkktivsuMpWqXaHmJfOJhzWaUoD1emgUPv5J', '2019-01-09 01:16:42', '2019-01-09 01:16:42'),
(2, 'Elizabeth', 'ashcatsupmaster@gmail.com', NULL, '$10$x0xXhPro9sgd/ZuWHUG9.e.CQGiyxx2KM7u3DzJ1nSkKKLeY5VjVa', 0, 'ybLX3Vq4bxslg6vkgdhQfuiiT8Rkx4g5aODCoNg9UF9rson1iEFyRdyBz8BG', '2019-01-09 03:29:45', '2019-01-09 03:29:45'),
(3, 'Elizabeth', 'fheda.taz3194@gmail.com', NULL, '$2y$10$bzZ6oGtl7fsyNj4vDEh1w.3tRYeFeUUnR14rHrqeHfokRmczcvS7W', 0, 'EVcHeOd3ekqvgAEOYxaDXinQhnwvj2idaE3qzirqZULoJTmbwt8Sl5UhMcsa', '2019-01-10 04:08:57', '2019-01-10 04:08:57');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_details_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_details_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `cart_details`
--
ALTER TABLE `cart_details`
  ADD CONSTRAINT `cart_details_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `cart_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Filtros para la tabla `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
