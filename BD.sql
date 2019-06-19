-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 07, 2019 at 11:56 PM
-- Server version: 5.7.25
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `integral_express`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brandscategory_id` int(11) DEFAULT NULL,
  `image_preview` text COLLATE utf8mb4_unicode_ci,
  `image_detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `global_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `brandscategory_id`, `image_preview`, `image_detail`, `created_at`, `updated_at`, `deleted_at`, `global_name`) VALUES
(23, 'Healthy America', 'healthy-america', NULL, NULL, NULL, '2019-02-05 04:15:02', '2019-02-05 04:15:02', NULL, 'nacional'),
(24, 'Healthy Sport', 'healthy-sport', NULL, NULL, NULL, '2019-02-05 04:16:35', '2019-02-05 04:16:35', NULL, 'nacional'),
(25, 'Megabolic', 'megabolic', NULL, NULL, NULL, '2019-02-05 04:16:54', '2019-02-05 04:16:54', NULL, 'nacional'),
(26, 'Procaps', 'procaps', NULL, NULL, NULL, '2019-02-05 04:17:00', '2019-02-05 04:17:00', NULL, 'nacional'),
(27, 'TNT/Neopharma', 'tnt-neopharma', NULL, NULL, NULL, '2019-02-05 04:17:11', '2019-02-05 04:17:11', NULL, 'nacional'),
(28, 'Megaplex/UPN', 'megaplex-upn', NULL, NULL, NULL, '2019-02-05 04:17:21', '2019-02-05 04:17:21', NULL, 'nacional'),
(29, 'BPI', 'bpi', NULL, NULL, NULL, '2019-02-05 04:17:38', '2019-02-05 04:17:38', NULL, 'option2'),
(30, 'BSN', 'bsn', NULL, NULL, NULL, '2019-02-05 04:17:45', '2019-02-05 04:17:45', NULL, 'option2'),
(31, 'Cellucor', 'cellucor', NULL, NULL, NULL, '2019-02-05 04:18:02', '2019-02-05 04:18:02', NULL, 'option2'),
(32, 'Dymatize', 'dymatize', NULL, NULL, NULL, '2019-02-05 04:18:15', '2019-02-05 04:18:15', NULL, 'option2'),
(33, 'Met Rx', 'met-rx', NULL, NULL, NULL, '2019-02-05 04:18:24', '2019-02-05 04:18:24', NULL, 'option2'),
(34, 'Musclemeds', 'musclemeds', NULL, NULL, NULL, '2019-02-05 04:18:38', '2019-02-05 04:18:38', NULL, 'option2'),
(35, 'MusclePharm', 'musclepharm', NULL, NULL, NULL, '2019-02-05 04:18:47', '2019-02-05 04:18:47', NULL, 'option2'),
(36, 'Muscletech', 'muscletech', NULL, NULL, NULL, '2019-02-05 04:18:55', '2019-02-05 04:18:55', NULL, 'option2'),
(37, 'Optimun Nutrition', 'optimun-nutrition', NULL, NULL, NULL, '2019-02-05 04:19:15', '2019-02-05 04:19:15', NULL, 'option2'),
(38, 'Prossups', 'prossups', NULL, NULL, NULL, '2019-02-05 04:19:23', '2019-02-05 04:19:23', NULL, 'option2'),
(39, 'Universal', 'universal', NULL, NULL, NULL, '2019-02-05 04:19:35', '2019-02-05 04:19:35', NULL, 'option2');

-- --------------------------------------------------------

--
-- Table structure for table `brandscategories`
--

CREATE TABLE `brandscategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image_preview` text COLLATE utf8mb4_unicode_ci,
  `image_detail` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT '1',
  `description` text COLLATE utf8mb4_unicode_ci,
  `show_on_front` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brandscategories`
--

INSERT INTO `brandscategories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `image_preview`, `image_detail`, `slug`, `order`, `description`, `show_on_front`) VALUES
(14, 'Proteinas', '2019-02-05 04:10:09', '2019-02-05 04:10:09', NULL, 'brandscategories\\February2019\\npgJOXk2T8ygyo5PFUfO.png', 'brandscategories\\February2019\\2rFrtwnXkc3jMOcH1Mqv.png', 'proteinas', 1, NULL, 1),
(15, 'Entrenamiento', '2019-02-05 04:11:08', '2019-02-05 04:11:08', NULL, 'brandscategories\\February2019\\DSFxjZdbFUsZa4Ic0YgF.png', 'brandscategories\\February2019\\Wj3jwaOa7FfB3IxF7wTY.jpg', 'entrenamiento', 2, NULL, 1),
(16, 'Quemadores', '2019-02-05 04:11:40', '2019-02-05 04:11:40', NULL, 'brandscategories\\February2019\\5X1lR7eKdBT9nRYMtqTh.png', 'brandscategories\\February2019\\2DsALZ07JWUIdmhFMLsV.jpg', 'quemadores', 3, NULL, 1),
(17, 'Creatininas', '2019-02-05 04:12:05', '2019-02-05 04:12:05', NULL, 'brandscategories\\February2019\\FNXXmK1vOowaBpKVJHK9.png', 'brandscategories\\February2019\\b79xuVp35ptDgaWvRhad.jpg', 'creatininas', 4, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-01-11 15:38:06', '2019-01-11 15:38:06'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-01-11 18:38:06', '2019-01-11 18:38:06');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, NULL, 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(32, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(57, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(58, 7, 'name', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"El campo :attribute es requerido.\",\"max\":\"El largo m\\u00e1ximo del campo :attribute es :max.\"}}}', 2),
(59, 7, 'description', 'rich_text_box', 'Descripción', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"El campo :attribute es requerido.\"}}}', 9),
(60, 7, 'image', 'image', 'Imágen', 0, 1, 1, 1, 1, 1, '{}', 4),
(61, 7, 'brand_id', 'number', 'Brand Id', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"El campo :attribute es requerido.\"}}}', 5),
(62, 7, 'shop_link', 'text_area', 'Links de compras', 0, 0, 0, 0, 0, 0, '{}', 6),
(63, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 10),
(64, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(65, 7, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 13),
(66, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(67, 8, 'name', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{}', 2),
(68, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(69, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(70, 8, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 5),
(71, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 9, 'name', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{}', 2),
(73, 9, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"validation\":{\"rule\":\"unique:brands,slug\"}}', 3),
(75, 9, 'image_preview', 'image', 'Imágen de muestra', 0, 0, 0, 0, 0, 0, '{\"resize\":{\"width\":\"150\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true}', 5),
(76, 9, 'image_detail', 'image', 'Imágen en detalle', 0, 0, 0, 0, 0, 0, '{}', 6),
(77, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(78, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(79, 9, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 9),
(80, 7, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"validation\":{\"rule\":\"unique:products,slug\"}}', 3),
(81, 7, 'product_belongsto_brand_relationship', 'relationship', 'Marca', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Brand\",\"table\":\"brands\",\"type\":\"belongsTo\",\"column\":\"brand_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brands\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(82, 9, 'brand_belongsto_brandscategory_relationship', 'relationship', 'Categoría', 0, 0, 0, 0, 0, 0, '{\"model\":\"App\\\\Brandscategory\",\"table\":\"brandscategories\",\"type\":\"belongsTo\",\"column\":\"brandscategory_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brands\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(83, 8, 'image_preview', 'image', 'Imágen de muestra', 0, 1, 1, 1, 1, 1, '{}', 6),
(84, 8, 'image_detail', 'image', 'Imágen en detalle', 0, 0, 1, 1, 1, 1, '{}', 7),
(85, 8, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"validation\":{\"rule\":\"unique:brandscategories,slug\"}}', 8),
(86, 9, 'brandscategory_id', 'text', 'Brandscategory Id', 0, 0, 0, 0, 0, 0, '{}', 4),
(87, 7, 'price', 'text', 'Precio', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"El campo :attribute es requerido.\",\"max\":\"El largo m\\u00e1ximo del campo :attribute es :max.\"}}}', 12),
(88, 7, 'discount', 'number', 'Descuento', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"El campo :attribute es requerido.\",\"max\":\"El largo m\\u00e1ximo del campo :attribute es :max.\"}}}', 14),
(89, 7, 'code', 'text', 'Código', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"El campo :attribute es requerido.\",\"max\":\"El largo m\\u00e1ximo del campo :attribute es :max.\"}}}', 15),
(90, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(91, 10, 'image', 'image', 'Imágen', 0, 1, 1, 1, 1, 1, '{}', 2),
(92, 10, 'title', 'text', 'Título', 0, 1, 1, 1, 1, 1, '{}', 3),
(93, 10, 'description', 'text', 'Descripción', 0, 1, 1, 1, 1, 1, '{}', 4),
(94, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(95, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(96, 10, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(97, 10, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 8),
(98, 10, 'order', 'number', 'Orden', 0, 1, 1, 1, 1, 1, '{}', 9),
(99, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(100, 11, 'name', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{}', 2),
(101, 11, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 3),
(102, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(103, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(104, 11, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 6),
(105, 9, 'global_name', 'select_dropdown', 'Tipo', 0, 1, 1, 1, 1, 1, '{\"default\":\"nacional\",\"options\":{\"nacional\":\"Nacional\",\"option2\":\"Importada\"}}', 10),
(106, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(107, 12, 'name', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{}', 2),
(108, 12, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(109, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(110, 12, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 5),
(113, 8, 'order', 'number', 'Orden', 0, 1, 1, 1, 1, 1, '{}', 9),
(114, 8, 'description', 'text_area', 'Descripción', 0, 0, 1, 1, 1, 1, '{}', 10),
(115, 8, 'show_on_front', 'checkbox', 'Mostrar en el home', 0, 1, 1, 1, 1, 1, '{}', 11),
(116, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(117, 13, 'reference', 'text', 'Referencia', 0, 1, 1, 1, 1, 1, '{}', 2),
(118, 13, 'payu_order_id', 'text', 'Payu OrdenID', 0, 1, 1, 0, 0, 0, '{}', 3),
(119, 13, 'transaction_id', 'text', 'Transacción ID', 0, 1, 1, 1, 1, 1, '{}', 4),
(120, 13, 'state', 'text', 'Estado', 0, 1, 1, 0, 0, 0, '{}', 5),
(121, 13, 'value', 'text', 'Valor', 0, 1, 1, 1, 1, 1, '{}', 6),
(122, 13, 'user_id', 'text', 'User Id', 0, 0, 0, 0, 0, 0, '{}', 7),
(123, 13, 'amount', 'text', 'Monto', 0, 0, 0, 0, 0, 0, '{}', 8),
(124, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 9),
(125, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(126, 13, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 11),
(127, 13, 'order_belongstomany_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"orders_products\",\"pivot\":\"1\",\"taggable\":null}', 12),
(128, 7, 'images', 'image', 'Imágen de muestra en descripción', 0, 0, 1, 1, 1, 1, '{}', 20),
(129, 7, 'beneficios', 'rich_text_box', 'Beneficios', 0, 0, 1, 1, 1, 1, '{}', 16),
(130, 7, 'uso_sugerido', 'rich_text_box', 'Uso Sugerido', 0, 0, 1, 1, 1, 1, '{}', 17),
(131, 7, 'advertencia', 'rich_text_box', 'Advertencias', 0, 0, 1, 1, 1, 1, '{}', 18),
(132, 7, 'sabores', 'rich_text_box', 'Sabores', 0, 0, 0, 0, 0, 0, '{}', 19),
(133, 7, 'descripcion_imagen', 'rich_text_box', 'Descripción Imagen de muestra', 0, 0, 1, 1, 1, 1, '{}', 22),
(134, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(135, 14, 'title', 'text', 'Título', 0, 1, 1, 1, 1, 1, '{}', 2),
(136, 14, 'description', 'rich_text_box', 'Descripción', 0, 1, 1, 1, 1, 1, '{}', 3),
(137, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(138, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(139, 14, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 6),
(140, 7, 'product_belongsto_brandscategory_relationship', 'relationship', 'Categoría', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Brandscategory\",\"table\":\"brandscategories\",\"type\":\"belongsTo\",\"column\":\"brandscategories_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brands\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(141, 7, 'brandscategories_id', 'text', 'Brandscategories Id', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"El campo :attribute es requerido.\"}}}', 21),
(142, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(143, 15, 'name', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{}', 2),
(144, 15, 'product_id', 'text', 'Product Id', 0, 0, 0, 0, 0, 0, '{}', 3),
(145, 15, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(146, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(147, 15, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 6),
(148, 15, 'flavor_belongsto_product_relationship', 'relationship', 'Producto', 0, 0, 0, 0, 0, 0, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brands\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(149, 7, 'product_belongstomany_flavor_relationship', 'relationship', 'Sabores', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Flavor\",\"table\":\"flavors\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"products_flavors\",\"pivot\":\"1\",\"taggable\":\"on\"}', 23);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-01-11 15:38:06', '2019-01-11 15:38:06'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-01-11 15:38:06', '2019-01-11 15:38:06'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(7, 'products', 'products', 'Producto', 'Productos', 'voyager-shop', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-01-12 00:10:44', '2019-03-01 20:34:28'),
(8, 'brandscategories', 'brandscategories', 'Categoría', 'Categorías', 'voyager-categories', 'App\\Brandscategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-01-12 00:21:27', '2019-02-05 05:05:18'),
(9, 'brands', 'brands', 'Brand', 'Brands', 'voyager-receipt', 'App\\Brand', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-01-12 00:23:31', '2019-02-05 04:16:14'),
(10, 'sliders', 'sliders', 'Slider', 'Sliders', 'voyager-window-list', 'App\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-01-12 12:21:12', '2019-01-12 12:29:55'),
(11, 'dealers', 'dealers', 'Dealer', 'Dealers', 'voyager-truck', 'App\\Dealer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-01-12 13:56:36', '2019-01-12 13:56:36'),
(12, 'productsgroups', 'productsgroups', 'Productsgroup', 'Productsgroups', 'voyager-list', 'App\\Productsgroup', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-01-16 21:00:00', '2019-01-16 21:00:00'),
(13, 'orders', 'orders', 'Order', 'Orders', 'voyager-basket', 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-05 06:59:18', '2019-02-05 06:59:18'),
(14, 'faqs', 'faqs', 'Faq', 'Faqs', 'voyager-question', 'App\\Faq', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-08 12:04:08', '2019-02-08 12:04:08'),
(15, 'flavors', 'flavors', 'Sabor', 'Sabores', NULL, 'App\\Flavor', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-03-01 20:30:06', '2019-03-01 20:32:30');

-- --------------------------------------------------------

--
-- Table structure for table `dealers`
--

CREATE TABLE `dealers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dealers`
--

INSERT INTO `dealers` (`id`, `name`, `logo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'Exito', 'dealers/January2019/KfXm6fVZI5UHNMrlaaMT.png', '2019-01-14 16:12:09', '2019-01-18 14:35:06', NULL),
(6, 'Linio', 'dealers/January2019/t7yA9LGbslSCzLEUgH20.png', '2019-01-14 16:13:16', '2019-01-18 14:34:56', NULL),
(7, 'Olimpica', 'dealers/January2019/k6bAIrSnsVWbhviCFTsY.png', '2019-01-14 16:13:46', '2019-01-18 14:42:53', NULL),
(8, 'Homecenter', 'dealers/January2019/2ftuS6S1lwVEwTEORYWN.png', '2019-01-14 16:14:16', '2019-01-18 14:42:42', NULL),
(9, 'Home Sentry', 'dealers/January2019/CDBE98a0trnrM19lp2HK.png', '2019-01-15 20:51:32', '2019-01-18 14:34:19', NULL),
(10, 'Mercado Libr', 'dealers/January2019/iAQOOFrqwNuTu0gFsFK3.png', '2019-01-15 20:52:08', '2019-01-18 14:34:07', NULL),
(11, 'Jumbo', 'dealers/January2019/BIzQrUKd5ufGbJAJfOPC.png', '2019-01-15 20:52:31', '2019-01-18 14:29:00', NULL),
(12, 'Metro', 'dealers/January2019/GMUwJMU7s6KOdrpuOGEB.png', '2019-01-15 20:52:47', '2019-01-18 14:33:50', NULL),
(13, 'Easy', 'dealers/January2019/sKg8eWxvk4ybTFjzsiKV.png', '2019-01-15 20:53:01', '2019-01-18 14:36:32', NULL),
(14, 'Carrulla', 'dealers/January2019/6JqrDi638rV3POy3WJhy.png', '2019-01-19 06:11:28', '2019-01-19 06:11:28', NULL),
(15, 'DollarCity', 'dealers/January2019/dy83aPUBV8xWLF1eMmsB.png', '2019-01-19 06:11:48', '2019-01-19 06:11:48', NULL),
(16, 'Los 3 Elefantes', 'dealers/January2019/MZDdHUPvnD8ZV3uBlWAS.png', '2019-01-19 06:12:06', '2019-01-19 06:12:06', NULL),
(17, 'D1', 'dealers/January2019/DtADYB4XlhnWGMJoNhD3.png', '2019-01-19 06:12:19', '2019-01-19 06:18:06', NULL),
(18, 'La 14', 'dealers/January2019/J0jH3mbzCyTE82F7YprL.png', '2019-01-19 06:12:47', '2019-01-19 06:17:54', NULL),
(19, 'Oxxo', 'dealers/January2019/JS9kDPzU28rvRcngcs4O.png', '2019-01-19 06:13:18', '2019-01-19 06:17:42', NULL),
(20, 'Surtimax', 'dealers/January2019/MOTFc2eL96vjG6Dym0EJ.png', '2019-01-19 06:13:41', '2019-01-19 06:13:41', NULL),
(21, 'Colsubsidio', 'dealers/January2019/4YNdhhFrg6UerOYGIHrg.png', '2019-01-19 06:14:01', '2019-01-19 06:14:01', NULL),
(22, 'Super Inter', 'dealers/January2019/3zwmWKoLZ4jmkeq8b0nH.png', '2019-01-19 06:14:20', '2019-01-19 06:14:20', NULL),
(23, 'Panamericana', 'dealers/January2019/Q8ichrlIWa7brpFtQFHp.png', '2019-01-19 06:14:42', '2019-01-19 06:17:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '¿Como encargar un pedido?', '<p><span style=\"color: #232323; font-family: Poppins, sans-serif; font-size: 17.6px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus, voluptas explicabo molestiae tempore natus velit sed aliquam ut! Culpa asperiores, error ullam qui! Commodi nobis distinctio aperiam totam perferendis quas.</span></p>', '2019-02-08 12:04:52', '2019-02-08 12:04:52', NULL),
(2, 'Cupones de pago y promociones', '<p><span style=\"color: #232323; font-family: Poppins, sans-serif; font-size: 17.6px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus, voluptas explicabo molestiae tempore natus velit sed aliquam ut! Culpa asperiores, error ullam qui! Commodi nobis distinctio aperiam totam perferendis quas.</span></p>', '2019-02-08 12:05:04', '2019-02-08 12:05:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flavors`
--

CREATE TABLE `flavors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flavors`
--

INSERT INTO `flavors` (`id`, `name`, `product_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Vainilla', NULL, '2019-03-01 20:34:46', '2019-03-01 20:34:46', NULL),
(2, 'Chocolate', NULL, '2019-03-01 20:34:57', '2019-03-01 20:34:57', NULL),
(3, 'caramelo', NULL, '2019-03-01 20:35:25', '2019-03-01 20:35:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-01-11 15:38:04', '2019-01-11 15:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Escritorio', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2019-01-11 15:38:04', '2019-01-11 15:54:52', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2019-01-11 15:38:04', '2019-02-08 12:04:24', 'voyager.media.index', NULL),
(3, 1, 'Usuarios', '', '_self', 'voyager-person', '#000000', 15, 1, '2019-01-11 15:38:04', '2019-01-11 15:56:14', 'voyager.users.index', 'null'),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 15, 2, '2019-01-11 15:38:04', '2019-01-12 00:51:30', 'voyager.roles.index', NULL),
(5, 1, 'Herramientas', '', '_self', 'voyager-tools', '#000000', NULL, 9, '2019-01-11 15:38:04', '2019-02-08 12:04:24', NULL, ''),
(6, 1, 'Constructor de menú', '', '_self', 'voyager-list', '#000000', 5, 1, '2019-01-11 15:38:04', '2019-01-11 15:56:42', 'voyager.menus.index', 'null'),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-01-11 15:38:04', '2019-01-12 00:51:23', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-01-11 15:38:04', '2019-01-12 00:51:23', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-01-11 15:38:04', '2019-01-12 00:51:23', 'voyager.bread.index', NULL),
(10, 1, 'Configuraciones', '', '_self', 'voyager-settings', '#000000', NULL, 10, '2019-01-11 15:38:04', '2019-02-08 12:04:24', 'voyager.settings.index', 'null'),
(11, 1, 'Categorias', '', '_self', 'voyager-categories', '#000000', 16, 1, '2019-01-11 15:38:06', '2019-01-11 15:55:51', 'voyager.categories.index', 'null'),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, 16, 2, '2019-01-11 15:38:06', '2019-01-11 15:48:32', 'voyager.posts.index', NULL),
(13, 1, 'Páginas', '', '_self', 'voyager-file-text', '#000000', 16, 3, '2019-01-11 15:38:07', '2019-01-11 15:56:04', 'voyager.pages.index', 'null'),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-01-11 15:38:07', '2019-01-12 00:51:23', 'voyager.hooks', NULL),
(15, 1, 'Usuarios', '', '_self', 'voyager-people', '#000000', NULL, 7, '2019-01-11 15:46:24', '2019-02-08 12:04:24', NULL, ''),
(16, 1, 'Blog', '', '_self', 'voyager-news', '#000000', NULL, 6, '2019-01-11 15:48:05', '2019-02-08 12:04:24', NULL, ''),
(17, 1, 'Productos', '', '_self', 'voyager-shop', NULL, 20, 4, '2019-01-12 00:10:46', '2019-01-16 21:00:26', 'voyager.products.index', NULL),
(18, 1, 'Categorías', '', '_self', 'voyager-categories', '#000000', 20, 1, '2019-01-12 00:21:27', '2019-01-12 00:51:49', 'voyager.brandscategories.index', 'null'),
(19, 1, 'Marcas', '', '_self', 'voyager-receipt', '#000000', 20, 2, '2019-01-12 00:23:31', '2019-01-12 00:55:29', 'voyager.brands.index', 'null'),
(20, 1, 'Productos', '', '_self', 'voyager-shop', '#000000', NULL, 5, '2019-01-12 00:50:41', '2019-02-08 12:04:24', NULL, ''),
(21, 1, 'Carrusel', '', '_self', 'voyager-window-list', '#000000', 23, 1, '2019-01-12 12:21:14', '2019-01-12 15:35:11', 'voyager.sliders.index', 'null'),
(22, 1, 'Distribuidores', '', '_self', 'voyager-truck', '#000000', 23, 2, '2019-01-12 13:56:36', '2019-01-12 15:35:18', 'voyager.dealers.index', 'null'),
(23, 1, 'Home', '', '_self', 'voyager-home', '#000000', NULL, 3, '2019-01-12 15:34:46', '2019-02-05 07:03:38', NULL, ''),
(24, 1, 'Grupos', '', '_self', 'voyager-list', '#000000', 20, 3, '2019-01-16 21:00:00', '2019-01-16 21:00:37', 'voyager.productsgroups.index', 'null'),
(25, 1, 'Ventas', '', '_self', 'voyager-basket', '#000000', NULL, 2, '2019-02-05 06:59:18', '2019-02-05 07:03:44', 'voyager.orders.index', 'null'),
(26, 1, 'Faqs', '', '_self', 'voyager-question', NULL, NULL, 4, '2019-02-08 12:04:08', '2019-02-08 12:04:24', 'voyager.faqs.index', NULL),
(27, 1, 'Sabores', '', '_self', NULL, NULL, NULL, 11, '2019-03-01 20:30:06', '2019-03-01 20:30:06', 'voyager.flavors.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payu_order_id` int(11) DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `reference`, `payu_order_id`, `transaction_id`, `state`, `value`, `user_id`, `amount`, `created_at`, `updated_at`, `deleted_at`, `date`) VALUES
(54, 'APPROVED', 845338831, '9d434f07-8504-42c4-930b-12d1f24ceee0', 'APPROVED', '71', 1, NULL, '2019-02-07 19:52:00', '2019-02-07 19:52:04', NULL, '2019-02-07'),
(55, 'APPROVED', 845338837, 'eacb67c6-ec36-4d4c-89d4-9ed160db4984', 'APPROVED', '10', 1, NULL, '2019-02-07 19:55:52', '2019-02-07 19:55:55', NULL, '2019-02-07'),
(56, 'APPROVED', 845339270, 'c1827a6f-8156-4444-8640-2d9e1e10eb5b', 'APPROVED', '92', 1, NULL, '2019-02-08 00:39:45', '2019-02-08 00:39:49', NULL, '2019-02-08'),
(57, 'APPROVED', 845340132, 'e2f3a917-65d9-4b91-a52c-f849453fd469', 'APPROVED', '82', 4, NULL, '2019-02-08 13:23:48', '2019-02-08 13:23:53', NULL, '2019-02-08'),
(58, 'APPROVED', 845340146, 'd9a20935-2182-4b02-ab15-c6c975235370', 'APPROVED', '82', 4, NULL, '2019-02-08 13:30:39', '2019-02-08 13:30:43', NULL, '2019-02-08'),
(59, NULL, NULL, NULL, NULL, '0', 4, NULL, '2019-02-08 13:54:45', '2019-02-08 13:54:45', NULL, NULL),
(60, 'APPROVED', 845359473, '80c7ab32-04e1-4ef3-bcf2-51a8789be86d', 'APPROVED', '55', 1, NULL, '2019-02-15 20:19:43', '2019-02-15 20:19:47', NULL, '2019-02-15'),
(61, 'APPROVED', 845360987, '3cb54455-04c0-4bec-81aa-a232934123cb', 'APPROVED', '82', 1, NULL, '2019-02-16 17:45:52', '2019-02-16 17:45:56', NULL, '2019-02-16'),
(62, 'APPROVED', 845368224, '864c89a3-a829-46ba-b9d5-ae7d22174bce', 'APPROVED', '55', 1, NULL, '2019-02-20 06:27:54', '2019-02-20 06:28:04', NULL, '2019-02-20'),
(63, 'APPROVED', 845368233, '905a94eb-169e-41d2-87b1-3bdc696efaf1', 'APPROVED', '71', 1, NULL, '2019-02-20 06:29:06', '2019-02-20 06:29:11', NULL, '2019-02-20'),
(64, NULL, NULL, NULL, NULL, '0', 1, NULL, '2019-02-20 06:38:07', '2019-02-20 06:38:07', NULL, NULL),
(65, NULL, NULL, NULL, NULL, '0', 1, NULL, '2019-02-20 07:37:05', '2019-02-20 07:37:05', NULL, NULL),
(66, 'APPROVED', 845368361, '31da3205-7391-4e0a-9908-12d93bee1288', 'APPROVED', '71', 7, NULL, '2019-02-20 07:45:31', '2019-02-20 07:45:40', NULL, '2019-02-20'),
(67, NULL, NULL, NULL, NULL, '0', 7, NULL, '2019-02-20 07:46:35', '2019-02-20 07:46:35', NULL, NULL),
(68, NULL, NULL, NULL, NULL, '0', 7, NULL, '2019-02-20 07:47:47', '2019-02-20 07:47:47', NULL, NULL),
(69, NULL, NULL, NULL, NULL, '0', 7, NULL, '2019-02-20 07:48:12', '2019-02-20 07:48:12', NULL, NULL),
(70, NULL, NULL, NULL, NULL, '0', 7, NULL, '2019-02-20 07:48:53', '2019-02-20 07:48:53', NULL, NULL),
(71, 'APPROVED', 845368367, '512f903c-0144-4a4f-9c1e-8d18bbdef0e8', 'APPROVED', '71', 7, NULL, '2019-02-20 07:50:53', '2019-02-20 07:50:57', NULL, '2019-02-20'),
(72, 'APPROVED', 845369438, '0e815a48-b8dd-4737-96a5-23abf9336778', 'APPROVED', '82', 8, NULL, '2019-02-20 13:22:42', '2019-02-20 13:22:46', NULL, '2019-02-20'),
(73, 'APPROVED', 845369447, '7fff24c1-c1c1-4a55-a6a6-2b18e11e03f7', 'APPROVED', '82', 8, NULL, '2019-02-20 13:29:27', '2019-02-20 13:29:30', NULL, '2019-02-20'),
(74, 'APPROVED', 845369512, '0c325987-0761-4bc6-8741-2aa3ef513197', 'APPROVED', '82', 8, NULL, '2019-02-20 13:58:41', '2019-02-20 13:58:45', NULL, '2019-02-20'),
(75, 'DESPACHADO', 845370754, '4b9dca4a-73c4-4dfa-8a31-944ce743a8b0', 'APPROVED', '82', 1, NULL, '2019-02-20 21:26:05', '2019-02-25 09:47:05', NULL, '2019-02-20'),
(76, 'APPROVED', 845393750, 'c0cb68c6-a765-4663-91a2-69a9aa1b55c7', 'APPROVED', '82', 8, NULL, '2019-02-28 00:51:45', '2019-02-28 00:51:51', NULL, '2019-02-28'),
(77, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2019-03-01 01:50:11', '2019-03-01 01:50:11', NULL, NULL),
(78, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2019-03-01 14:25:45', '2019-03-01 14:25:45', NULL, NULL),
(79, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2019-03-01 21:28:28', '2019-03-01 21:28:28', NULL, NULL),
(80, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2019-03-04 18:58:22', '2019-03-04 18:58:22', NULL, NULL),
(81, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2019-03-05 21:24:04', '2019-03-05 21:24:04', NULL, NULL),
(82, 'CONTRA ENTREGA', 99999, '', 'APPROVED', '21.78', 1, NULL, '2019-03-07 00:28:53', '2019-03-07 00:28:53', NULL, '2019-03-07'),
(83, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2019-03-07 14:01:22', '2019-03-07 14:01:22', NULL, NULL),
(84, NULL, NULL, NULL, NULL, '0', NULL, NULL, '2019-03-07 14:01:46', '2019-03-07 14:01:46', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `created_at`, `updated_at`, `deleted_at`, `quantity`) VALUES
(1, 34, NULL, NULL, NULL, NULL, 1),
(2, 34, NULL, NULL, NULL, NULL, 1),
(3, 34, NULL, NULL, NULL, NULL, 1),
(4, 34, NULL, NULL, NULL, NULL, 1),
(5, 35, NULL, NULL, NULL, NULL, 1),
(6, 35, NULL, NULL, NULL, NULL, 1),
(7, 42, 248, NULL, NULL, NULL, 1),
(8, 42, 250, NULL, NULL, NULL, 1),
(9, 45, NULL, NULL, NULL, NULL, 1),
(10, 45, NULL, NULL, NULL, NULL, 1),
(11, 45, NULL, NULL, NULL, NULL, 1),
(12, 45, NULL, NULL, NULL, NULL, 1),
(13, 46, 249, NULL, NULL, NULL, 1),
(14, 46, 247, NULL, NULL, NULL, 1),
(15, 48, 244, NULL, NULL, NULL, 1),
(16, 49, 245, NULL, NULL, NULL, 1),
(17, 50, 245, NULL, NULL, NULL, 1),
(18, 50, 249, NULL, NULL, NULL, 1),
(19, 51, 245, NULL, NULL, NULL, 1),
(20, 51, 249, NULL, NULL, NULL, 1),
(21, 52, 246, NULL, NULL, NULL, 1),
(22, 54, 248, NULL, NULL, NULL, 1),
(23, 55, 246, NULL, NULL, NULL, 1),
(24, 56, 250, NULL, NULL, NULL, 1),
(25, 56, 246, NULL, NULL, NULL, 1),
(26, 57, 250, NULL, NULL, NULL, 1),
(27, 58, 250, NULL, NULL, NULL, 1),
(28, 60, 243, NULL, NULL, NULL, 1),
(29, 61, 250, NULL, NULL, NULL, 2),
(30, 62, 243, NULL, NULL, NULL, 1),
(31, 63, 248, NULL, NULL, NULL, 1),
(32, 66, 248, NULL, NULL, NULL, 1),
(33, 71, 248, NULL, NULL, NULL, 1),
(34, 72, 250, NULL, NULL, NULL, 1),
(35, 73, 250, NULL, NULL, NULL, 1),
(36, 74, 250, NULL, NULL, NULL, 1),
(37, 75, 250, NULL, NULL, NULL, 1),
(38, 76, 250, NULL, NULL, NULL, 1),
(39, 77, 250, NULL, NULL, NULL, 1),
(40, 78, 250, NULL, NULL, NULL, 1),
(41, 79, 250, NULL, NULL, NULL, 1),
(42, 80, 251, NULL, NULL, NULL, 1),
(43, 81, 250, NULL, NULL, NULL, 1),
(44, 82, 251, NULL, NULL, NULL, 2),
(45, 83, 250, NULL, NULL, NULL, 1),
(46, 84, 250, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-01-11 15:38:07', '2019-01-11 15:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(2, 'browse_bread', NULL, '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(3, 'browse_database', NULL, '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(4, 'browse_media', NULL, '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(5, 'browse_compass', NULL, '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(6, 'browse_menus', 'menus', '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(7, 'read_menus', 'menus', '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(8, 'edit_menus', 'menus', '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(9, 'add_menus', 'menus', '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(10, 'delete_menus', 'menus', '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(11, 'browse_roles', 'roles', '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(12, 'read_roles', 'roles', '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(13, 'edit_roles', 'roles', '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(14, 'add_roles', 'roles', '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(15, 'delete_roles', 'roles', '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(16, 'browse_users', 'users', '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(17, 'read_users', 'users', '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(18, 'edit_users', 'users', '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(19, 'add_users', 'users', '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(20, 'delete_users', 'users', '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(21, 'browse_settings', 'settings', '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(22, 'read_settings', 'settings', '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(23, 'edit_settings', 'settings', '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(24, 'add_settings', 'settings', '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(25, 'delete_settings', 'settings', '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(26, 'browse_categories', 'categories', '2019-01-11 15:38:06', '2019-01-11 15:38:06'),
(27, 'read_categories', 'categories', '2019-01-11 15:38:06', '2019-01-11 15:38:06'),
(28, 'edit_categories', 'categories', '2019-01-11 15:38:06', '2019-01-11 15:38:06'),
(29, 'add_categories', 'categories', '2019-01-11 15:38:06', '2019-01-11 15:38:06'),
(30, 'delete_categories', 'categories', '2019-01-11 15:38:06', '2019-01-11 15:38:06'),
(31, 'browse_posts', 'posts', '2019-01-11 15:38:06', '2019-01-11 15:38:06'),
(32, 'read_posts', 'posts', '2019-01-11 15:38:06', '2019-01-11 15:38:06'),
(33, 'edit_posts', 'posts', '2019-01-11 15:38:06', '2019-01-11 15:38:06'),
(34, 'add_posts', 'posts', '2019-01-11 15:38:06', '2019-01-11 15:38:06'),
(35, 'delete_posts', 'posts', '2019-01-11 15:38:06', '2019-01-11 15:38:06'),
(36, 'browse_pages', 'pages', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(37, 'read_pages', 'pages', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(38, 'edit_pages', 'pages', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(39, 'add_pages', 'pages', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(40, 'delete_pages', 'pages', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(41, 'browse_hooks', NULL, '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(42, 'browse_products', 'products', '2019-01-12 00:10:45', '2019-01-12 00:10:45'),
(43, 'read_products', 'products', '2019-01-12 00:10:45', '2019-01-12 00:10:45'),
(44, 'edit_products', 'products', '2019-01-12 00:10:45', '2019-01-12 00:10:45'),
(45, 'add_products', 'products', '2019-01-12 00:10:45', '2019-01-12 00:10:45'),
(46, 'delete_products', 'products', '2019-01-12 00:10:45', '2019-01-12 00:10:45'),
(47, 'browse_brandscategories', 'brandscategories', '2019-01-12 00:21:27', '2019-01-12 00:21:27'),
(48, 'read_brandscategories', 'brandscategories', '2019-01-12 00:21:27', '2019-01-12 00:21:27'),
(49, 'edit_brandscategories', 'brandscategories', '2019-01-12 00:21:27', '2019-01-12 00:21:27'),
(50, 'add_brandscategories', 'brandscategories', '2019-01-12 00:21:27', '2019-01-12 00:21:27'),
(51, 'delete_brandscategories', 'brandscategories', '2019-01-12 00:21:27', '2019-01-12 00:21:27'),
(52, 'browse_brands', 'brands', '2019-01-12 00:23:31', '2019-01-12 00:23:31'),
(53, 'read_brands', 'brands', '2019-01-12 00:23:31', '2019-01-12 00:23:31'),
(54, 'edit_brands', 'brands', '2019-01-12 00:23:31', '2019-01-12 00:23:31'),
(55, 'add_brands', 'brands', '2019-01-12 00:23:31', '2019-01-12 00:23:31'),
(56, 'delete_brands', 'brands', '2019-01-12 00:23:31', '2019-01-12 00:23:31'),
(57, 'browse_sliders', 'sliders', '2019-01-12 12:21:13', '2019-01-12 12:21:13'),
(58, 'read_sliders', 'sliders', '2019-01-12 12:21:13', '2019-01-12 12:21:13'),
(59, 'edit_sliders', 'sliders', '2019-01-12 12:21:13', '2019-01-12 12:21:13'),
(60, 'add_sliders', 'sliders', '2019-01-12 12:21:13', '2019-01-12 12:21:13'),
(61, 'delete_sliders', 'sliders', '2019-01-12 12:21:13', '2019-01-12 12:21:13'),
(62, 'browse_dealers', 'dealers', '2019-01-12 13:56:36', '2019-01-12 13:56:36'),
(63, 'read_dealers', 'dealers', '2019-01-12 13:56:36', '2019-01-12 13:56:36'),
(64, 'edit_dealers', 'dealers', '2019-01-12 13:56:36', '2019-01-12 13:56:36'),
(65, 'add_dealers', 'dealers', '2019-01-12 13:56:36', '2019-01-12 13:56:36'),
(66, 'delete_dealers', 'dealers', '2019-01-12 13:56:36', '2019-01-12 13:56:36'),
(67, 'browse_productsgroups', 'productsgroups', '2019-01-16 21:00:00', '2019-01-16 21:00:00'),
(68, 'read_productsgroups', 'productsgroups', '2019-01-16 21:00:00', '2019-01-16 21:00:00'),
(69, 'edit_productsgroups', 'productsgroups', '2019-01-16 21:00:00', '2019-01-16 21:00:00'),
(70, 'add_productsgroups', 'productsgroups', '2019-01-16 21:00:00', '2019-01-16 21:00:00'),
(71, 'delete_productsgroups', 'productsgroups', '2019-01-16 21:00:00', '2019-01-16 21:00:00'),
(72, 'browse_orders', 'orders', '2019-02-05 06:59:18', '2019-02-05 06:59:18'),
(73, 'read_orders', 'orders', '2019-02-05 06:59:18', '2019-02-05 06:59:18'),
(74, 'edit_orders', 'orders', '2019-02-05 06:59:18', '2019-02-05 06:59:18'),
(75, 'add_orders', 'orders', '2019-02-05 06:59:18', '2019-02-05 06:59:18'),
(76, 'delete_orders', 'orders', '2019-02-05 06:59:18', '2019-02-05 06:59:18'),
(77, 'browse_faqs', 'faqs', '2019-02-08 12:04:08', '2019-02-08 12:04:08'),
(78, 'read_faqs', 'faqs', '2019-02-08 12:04:08', '2019-02-08 12:04:08'),
(79, 'edit_faqs', 'faqs', '2019-02-08 12:04:08', '2019-02-08 12:04:08'),
(80, 'add_faqs', 'faqs', '2019-02-08 12:04:08', '2019-02-08 12:04:08'),
(81, 'delete_faqs', 'faqs', '2019-02-08 12:04:08', '2019-02-08 12:04:08'),
(82, 'browse_flavors', 'flavors', '2019-03-01 20:30:06', '2019-03-01 20:30:06'),
(83, 'read_flavors', 'flavors', '2019-03-01 20:30:06', '2019-03-01 20:30:06'),
(84, 'edit_flavors', 'flavors', '2019-03-01 20:30:06', '2019-03-01 20:30:06'),
(85, 'add_flavors', 'flavors', '2019-03-01 20:30:06', '2019-03-01 20:30:06'),
(86, 'delete_flavors', 'flavors', '2019-03-01 20:30:06', '2019-03-01 20:30:06');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-01-11 15:38:06', '2019-01-11 15:38:06'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-01-11 15:38:06', '2019-01-11 15:38:06'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-01-11 15:38:06', '2019-01-11 15:38:06'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-01-11 15:38:06', '2019-01-11 15:38:06');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `brand_id` int(11) DEFAULT NULL,
  `shop_link` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `code` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` longtext COLLATE utf8mb4_unicode_ci,
  `beneficios` longtext COLLATE utf8mb4_unicode_ci,
  `uso_sugerido` longtext COLLATE utf8mb4_unicode_ci,
  `advertencia` longtext COLLATE utf8mb4_unicode_ci,
  `sabores` longtext COLLATE utf8mb4_unicode_ci,
  `descripcion_imagen` longtext COLLATE utf8mb4_unicode_ci,
  `brandscategories_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `brand_id`, `shop_link`, `created_at`, `updated_at`, `deleted_at`, `slug`, `price`, `discount`, `code`, `images`, `beneficios`, `uso_sugerido`, `advertencia`, `sabores`, `descripcion_imagen`, `brandscategories_id`) VALUES
(243, 'Quemador', '<p><span style=\"color: #232323; font-family: Poppins; font-size: 16px;\">Zapatos casuales (cont&aacute;ctenos para determinar la talla)</span><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; color: #232323; font-family: Poppins; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Tejido ligero texturizado</li>\r\n<li style=\"box-sizing: border-box;\">Cuello en v redondeado</li>\r\n<li style=\"box-sizing: border-box;\">Adornos pom pom</li>\r\n<li style=\"box-sizing: border-box;\">Ajuste regular - fiel a su tama&ntilde;o</li>\r\n</ul>\r\n<p><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /><span style=\"color: #232323; font-family: Poppins; font-size: 16px;\">Duis auctor hendrerit nisi, at lacinia ex vulputate quis. Suspendisse convallis iaculis tortor, quis mattis lectus rutrum a.</span></p>', 'products\\February2019\\Tf4CVFxs3RcPcLq0tfu9.jpg', 23, NULL, '2019-02-05 04:26:18', '2019-02-05 04:26:18', NULL, 'quemador', '55.00', NULL, '385DDF5p', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, 'Proteina', '<p><span style=\"color: #232323; font-family: Poppins; font-size: 16px;\">Zapatos casuales (cont&aacute;ctenos para determinar la talla)</span><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; color: #232323; font-family: Poppins; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Tejido ligero texturizado</li>\r\n<li style=\"box-sizing: border-box;\">Cuello en v redondeado</li>\r\n<li style=\"box-sizing: border-box;\">Adornos pom pom</li>\r\n<li style=\"box-sizing: border-box;\">Ajuste regular - fiel a su tama&ntilde;o</li>\r\n</ul>\r\n<p><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /><span style=\"color: #232323; font-family: Poppins; font-size: 16px;\">Duis auctor hendrerit nisi, at lacinia ex vulputate quis. Suspendisse convallis iaculis tortor, quis mattis lectus rutrum a.</span></p>', 'products\\February2019\\9KvEwa1KDNM7Iadb14TZ.jpg', NULL, NULL, '2019-02-05 04:31:40', '2019-02-05 04:31:40', NULL, 'proteina', '100.00', NULL, '385DDF5p', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, 'Proteina', '<p><span style=\"color: #232323; font-family: Poppins; font-size: 16px;\">Zapatos casuales (cont&aacute;ctenos para determinar la talla)</span><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; color: #232323; font-family: Poppins; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Tejido ligero texturizado</li>\r\n<li style=\"box-sizing: border-box;\">Cuello en v redondeado</li>\r\n<li style=\"box-sizing: border-box;\">Adornos pom pom</li>\r\n<li style=\"box-sizing: border-box;\">Ajuste regular - fiel a su tama&ntilde;o</li>\r\n</ul>\r\n<p><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /><span style=\"color: #232323; font-family: Poppins; font-size: 16px;\">Duis auctor hendrerit nisi, at lacinia ex vulputate quis. Suspendisse convallis iaculis tortor, quis mattis lectus rutrum a.</span></p>', 'products\\February2019\\kYKUozOkUnKsiLf70xzD.jpg', NULL, NULL, '2019-02-05 04:32:34', '2019-02-05 04:32:34', NULL, 'proteina-product', '74.00', 50, '385DDF5p', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, 'Proteina', '<p><span style=\"color: #232323; font-family: Poppins; font-size: 16px;\">Zapatos casuales (cont&aacute;ctenos para determinar la talla)</span><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; color: #232323; font-family: Poppins; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Tejido ligero texturizado</li>\r\n<li style=\"box-sizing: border-box;\">Cuello en v redondeado</li>\r\n<li style=\"box-sizing: border-box;\">Adornos pom pom</li>\r\n<li style=\"box-sizing: border-box;\">Ajuste regular - fiel a su tama&ntilde;o</li>\r\n</ul>\r\n<p><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /><span style=\"color: #232323; font-family: Poppins; font-size: 16px;\">Duis auctor hendrerit nisi, at lacinia ex vulputate quis. Suspendisse convallis iaculis tortor, quis mattis lectus rutrum a.</span></p>', 'products\\February2019\\aLtgToTtKi44HmppdFw3.jpg', NULL, NULL, '2019-02-05 04:33:21', '2019-02-05 04:33:21', NULL, 'proteina-product-two', '10.00', NULL, '385DDF5p', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, 'Proteina', '<p><span style=\"color: #232323; font-family: Poppins; font-size: 16px;\">Zapatos casuales (cont&aacute;ctenos para determinar la talla)</span><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; color: #232323; font-family: Poppins; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Tejido ligero texturizado</li>\r\n<li style=\"box-sizing: border-box;\">Cuello en v redondeado</li>\r\n<li style=\"box-sizing: border-box;\">Adornos pom pom</li>\r\n<li style=\"box-sizing: border-box;\">Ajuste regular - fiel a su tama&ntilde;o</li>\r\n</ul>\r\n<p><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /><span style=\"color: #232323; font-family: Poppins; font-size: 16px;\">Duis auctor hendrerit nisi, at lacinia ex vulputate quis. Suspendisse convallis iaculis tortor, quis mattis lectus rutrum a.</span></p>', 'products\\February2019\\c8EByyG00PWgbqgilZ3Y.jpg', 27, NULL, '2019-02-05 04:34:14', '2019-02-08 12:28:37', NULL, 'proteina-product-three', '84.00', 0, '385DDF5p', NULL, NULL, NULL, NULL, NULL, NULL, 14),
(248, 'Proteina', '<p><span style=\"color: #232323; font-family: Poppins; font-size: 16px;\">Zapatos casuales (cont&aacute;ctenos para determinar la talla)</span><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; color: #232323; font-family: Poppins; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Tejido ligero texturizado</li>\r\n<li style=\"box-sizing: border-box;\">Cuello en v redondeado</li>\r\n<li style=\"box-sizing: border-box;\">Adornos pom pom</li>\r\n<li style=\"box-sizing: border-box;\">Ajuste regular - fiel a su tama&ntilde;o</li>\r\n</ul>\r\n<p><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /><span style=\"color: #232323; font-family: Poppins; font-size: 16px;\">Duis auctor hendrerit nisi, at lacinia ex vulputate quis. Suspendisse convallis iaculis tortor, quis mattis lectus rutrum a.</span></p>', 'products\\February2019\\MXIrAL31yX0TI2RdssV5.png', 26, NULL, '2019-02-05 04:34:51', '2019-02-08 12:28:15', NULL, 'proteina-product-for', '71.00', 0, '385DDF5p', NULL, NULL, NULL, NULL, NULL, NULL, 14),
(249, 'Protein', '<p><span style=\"color: #232323; font-family: Poppins; font-size: 16px;\">Zapatos casuales (cont&aacute;ctenos para determinar la talla)</span><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; color: #232323; font-family: Poppins; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Tejido ligero texturizado</li>\r\n<li style=\"box-sizing: border-box;\">Cuello en v redondeado</li>\r\n<li style=\"box-sizing: border-box;\">Adornos pom pom</li>\r\n<li style=\"box-sizing: border-box;\">Ajuste regular - fiel a su tama&ntilde;o</li>\r\n</ul>\r\n<p><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /><span style=\"color: #232323; font-family: Poppins; font-size: 16px;\">Duis auctor hendrerit nisi, at lacinia ex vulputate quis. Suspendisse convallis iaculis tortor, quis mattis lectus rutrum a.</span></p>', 'products\\February2019\\pbsMSvjDxAsPjmCs2J8Y.png', 24, NULL, '2019-02-05 04:35:21', '2019-02-08 12:27:40', NULL, 'protein', '94.00', 0, '385DDF5p', NULL, NULL, NULL, NULL, NULL, NULL, 14),
(250, 'Ideal Boost', '<p><span style=\"color: #232323; font-family: Poppins; font-size: 16px;\">Zapatos casuales (cont&aacute;ctenos para determinar la talla)</span><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; color: #232323; font-family: Poppins; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Tejido ligero texturizado</li>\r\n<li style=\"box-sizing: border-box;\">Cuello en v redondeado</li>\r\n<li style=\"box-sizing: border-box;\">Adornos pom pom</li>\r\n<li style=\"box-sizing: border-box;\">Ajuste regular - fiel a su tama&ntilde;o</li>\r\n</ul>\r\n<p><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /><span style=\"color: #232323; font-family: Poppins; font-size: 16px;\">Duis auctor hendrerit nisi, at lacinia ex vulputate quis. Suspendisse convallis iaculis tortor, quis mattis lectus rutrum a.</span></p>', 'products\\February2019\\CzvqxoY4AjzYguTNXDMm.jpg', 23, NULL, '2019-02-05 04:35:54', '2019-02-08 12:25:56', NULL, 'ideal-boost', '82.00', 0, '385DDF5p', 'products/February2019/gFTCVVRCViwvthERIJJ8.png', '<p><span style=\"color: #767676; font-family: Poppins, sans-serif; font-size: 17.6px;\">&bull; 10 a&ntilde;os consecutivos de calidad galardonada&nbsp;</span><br style=\"box-sizing: border-box; color: #767676; font-family: Poppins, sans-serif; font-size: 17.6px;\" /><span style=\"color: #767676; font-family: Poppins, sans-serif; font-size: 17.6px;\">&bull; La marca de nutrici&oacute;n deportiva m&aacute;s confiable del mundo&nbsp;</span><br style=\"box-sizing: border-box; color: #767676; font-family: Poppins, sans-serif; font-size: 17.6px;\" /><span style=\"color: #767676; font-family: Poppins, sans-serif; font-size: 17.6px;\">&bull; prote&iacute;na aislada de suero: Fuente primaria&nbsp;</span><br style=\"box-sizing: border-box; color: #767676; font-family: Poppins, sans-serif; font-size: 17.6px;\" /><span style=\"color: #767676; font-family: Poppins, sans-serif; font-size: 17.6px;\">&bull; 5.5 gramos de BCAAs que ocurren naturalmente (leucina, isoleucina y valina) en cada cucharada&nbsp;</span><br style=\"box-sizing: border-box; color: #767676; font-family: Poppins, sans-serif; font-size: 17.6px;\" /><span style=\"color: #767676; font-family: Poppins, sans-serif; font-size: 17.6px;\">&bull; 4 gramos de glutamina y &aacute;cido glut&aacute;mico de origen natural&nbsp;</span><br style=\"box-sizing: border-box; color: #767676; font-family: Poppins, sans-serif; font-size: 17.6px;\" /><span style=\"color: #767676; font-family: Poppins, sans-serif; font-size: 17.6px;\">&bull; Instant&aacute;neo para mezclar f&aacute;cilmente usando solo un vaso y una cuchara&nbsp;</span><br style=\"box-sizing: border-box; color: #767676; font-family: Poppins, sans-serif; font-size: 17.6px;\" /><span style=\"color: #767676; font-family: Poppins, sans-serif; font-size: 17.6px;\">&bull; Gran variedad de sabores para elegir&nbsp;</span></p>', '<p><span style=\"color: #767676; font-family: Poppins, sans-serif; font-size: 17.6px;\">Mezclar 1 cucharada de Gold Standard 100% Whey &trade; con 8-12 oz de agua fr&iacute;a. Variar la cantidad de agua para lograr la consistencia y el sabor deseado. Para aumentar su ingesta de prote&iacute;nas por porci&oacute;n y lograr un sabor delicioso agregar leche en vez de agua. Consumir porciones adicionales durante todo el d&iacute;a para satisfacer sus necesidades diarias de prote&iacute;nas. Use en combinaci&oacute;n con fuentes de prote&iacute;nas integrales de alimentos, una dieta equilibrada y un programa de ejercicio.</span></p>', '<p><span style=\"color: #767676; font-family: Poppins, sans-serif; font-size: 17.6px;\">Este producto contiene suero derivado de leche y lecitina (para mejorar la capacidad de mezcla) derivado de la soja. Para su uso como un suplemento diet&eacute;tico solamente. No utilizar como &uacute;nica fuente de nutrici&oacute;n para la p&eacute;rdida de peso o mantenimiento. Mantener fuera del alcance de los ni&ntilde;os.</span></p>', '<p><span style=\"color: #767676; font-family: Poppins, sans-serif; font-size: 17.6px;\">Vainilla ice Cream, Chocolate</span></p>', '<p><span style=\"color: #232323; font-family: Poppins; font-size: 16px;\">Zapatos casuales (cont&aacute;ctenos para determinar la talla)</span><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /></p>\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; color: #232323; font-family: Poppins; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Tejido ligero texturizado</li>\r\n<li style=\"box-sizing: border-box;\">Cuello en v redondeado</li>\r\n<li style=\"box-sizing: border-box;\">Adornos pom pom</li>\r\n<li style=\"box-sizing: border-box;\">Ajuste regular - fiel a su tama&ntilde;o</li>\r\n</ul>\r\n<p><br style=\"box-sizing: border-box; color: #232323; font-family: Poppins; font-size: 16px;\" /><span style=\"color: #232323; font-family: Poppins; font-size: 16px;\">Duis auctor hendrerit nisi, at lacinia ex vulputate quis. Suspendisse convallis iaculis tortor, quis mattis lectus rutrum a.</span></p>', 14),
(251, 'TEST', '<p>TEST</p>', 'products/March2019/Yv8TwWXXlb1uLxI1720k.png', 23, NULL, '2019-03-01 20:36:15', '2019-03-01 20:36:15', NULL, 'test', '22.00', 1, 'ADSAVC12', 'products/March2019/2emWpPvgE556LVljfZmX.png', '<p>TEST</p>', '<p>TEST</p>', '<p>TEST</p>', NULL, '<p>TEST</p>', 14);

-- --------------------------------------------------------

--
-- Table structure for table `productsgroups`
--

CREATE TABLE `productsgroups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productsgroups`
--

INSERT INTO `productsgroups` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Spillproof Latica Orgánica', '2019-01-16 21:02:02', '2019-01-17 13:50:38', NULL),
(2, 'Segundo Default', '2019-01-16 21:20:11', '2019-01-16 21:20:11', NULL),
(3, 'Tercero Default', '2019-01-16 21:20:55', '2019-01-16 21:20:55', NULL),
(4, 'Cuarto grupo', '2019-01-17 00:32:24', '2019-01-17 00:32:24', NULL),
(5, 'Carscents Latica Orgánica', '2019-01-17 13:51:14', '2019-01-17 13:51:14', NULL),
(6, 'Spray Citrus Splash / Orange Squeeze', '2019-01-17 14:11:30', '2019-01-17 14:11:30', NULL),
(7, 'Eliminador de olores en gel', '2019-01-17 14:16:06', '2019-01-17 14:16:06', NULL),
(8, 'Spray Eliminador de Olores', '2019-01-17 14:19:15', '2019-01-17 14:19:15', NULL),
(9, 'Power Bloc', '2019-01-17 14:21:08', '2019-01-17 14:21:08', NULL),
(10, 'Aroma Stones', '2019-01-17 14:24:15', '2019-01-17 14:24:15', NULL),
(11, 'Cool gel', '2019-01-17 14:26:00', '2019-01-17 14:26:00', NULL),
(12, 'Xtreme Gel', '2019-01-17 14:27:13', '2019-01-17 14:27:13', NULL),
(13, 'Xtra Organic', '2019-01-17 14:54:14', '2019-01-17 14:54:14', NULL),
(14, 'Vent Clip', '2019-01-17 14:54:55', '2019-01-17 14:54:55', NULL),
(15, 'Limpiador para llantas y rines', '2019-01-17 15:00:17', '2019-01-17 15:00:23', NULL),
(16, 'Ceras limpiadoras', '2019-01-17 15:04:43', '2019-01-17 15:04:43', NULL),
(17, 'Limpiador y Acondicionador de Cuero', '2019-01-17 15:16:28', '2019-01-17 15:16:28', NULL),
(18, 'Restaurador de Cuero', '2019-01-17 15:18:07', '2019-01-17 15:18:07', NULL),
(19, 'Limpiador de Alfombras', '2019-01-17 15:18:49', '2019-01-17 15:18:49', NULL),
(21, 'Shampoo con Cera', '2019-01-17 15:21:07', '2019-01-17 15:21:07', NULL),
(22, 'Siliconas Perfumadas', '2019-01-17 15:22:21', '2019-01-17 15:22:21', NULL),
(23, 'Cera', '2019-01-17 15:23:46', '2019-01-17 15:23:46', NULL),
(24, 'Lubricante mulitusos', '2019-01-17 15:33:37', '2019-01-17 15:33:37', NULL),
(25, 'Línea Bike', '2019-01-17 15:35:45', '2019-01-17 15:35:45', NULL),
(26, 'Aceites especiales', '2019-01-17 15:44:33', '2019-01-17 15:44:33', NULL),
(27, 'Despinchador de Llantas 12 oz', '2019-01-17 15:49:39', '2019-01-17 15:49:39', NULL),
(28, 'Despinchador de Llantas 16 oz', '2019-01-17 15:50:37', '2019-01-17 15:50:37', NULL),
(29, 'Sellador de llantas para todo tipo de carros', '2019-01-17 16:04:32', '2019-01-17 16:04:32', NULL),
(30, 'Sellador de llantas para bicicletas y motos', '2019-01-17 16:05:20', '2019-01-17 16:05:20', NULL),
(31, 'Inflador Multipropósito', '2019-01-17 16:05:50', '2019-01-17 16:06:28', NULL),
(32, 'Smart Shine', '2019-01-17 16:09:50', '2019-01-17 16:09:50', NULL),
(33, 'Guantes de Microfibra', '2019-01-17 16:10:26', '2019-01-17 16:10:26', NULL),
(34, 'Paños de microfibra', '2019-01-17 16:11:21', '2019-01-17 16:11:21', NULL),
(35, 'Pilas', '2019-01-17 16:23:57', '2019-01-17 16:23:57', NULL),
(36, 'Linternas', '2019-01-17 16:24:52', '2019-01-17 16:24:52', NULL),
(37, 'Little Trees', '2019-01-17 16:36:25', '2019-01-17 16:36:34', NULL),
(38, 'Vent Wrap', '2019-01-17 17:07:05', '2019-01-17 17:07:05', NULL),
(39, 'Pump Spray', '2019-01-17 17:26:51', '2019-01-17 17:26:51', NULL),
(40, 'Fresh Link', '2019-01-17 17:34:03', '2019-01-17 17:34:03', NULL),
(41, 'In a Can Aerosol', '2019-01-17 17:43:38', '2019-01-17 17:43:38', NULL),
(42, 'Fiber Can', '2019-01-17 17:53:16', '2019-01-17 17:53:16', NULL),
(43, 'Ambientadores Little Bottle', '2019-01-17 20:45:14', '2019-01-17 20:45:14', NULL),
(44, 'Vent Clip 1 pak', '2019-01-17 20:57:24', '2019-01-17 20:57:24', NULL),
(45, 'Vent Clip 2 pak', '2019-01-18 13:50:56', '2019-01-18 13:50:56', NULL),
(46, 'Ambientador para colgar', '2019-01-18 15:05:35', '2019-01-18 15:05:35', NULL),
(47, 'Varitas 18 ml', '2019-01-18 15:26:39', '2019-01-18 15:26:39', NULL),
(48, 'Pilas recargables', '2019-01-18 16:04:43', '2019-01-18 16:04:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_flavors`
--

CREATE TABLE `products_flavors` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `flavor_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_flavors`
--

INSERT INTO `products_flavors` (`id`, `product_id`, `flavor_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 251, 1, NULL, NULL, NULL),
(2, 251, 2, NULL, NULL, NULL),
(3, 251, 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-01-11 15:38:04', '2019-01-11 15:38:04'),
(2, 'user', 'Normal User', '2019-01-11 15:38:04', '2019-01-11 15:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Express Nutrition', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Venta de suplementos', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\February2019\\fS91V8nNhIZ5gl65rKuQ.png', '', 'image', 3, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Administración', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Bienvenidos al portal de administración', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(11, 'site.contact', 'Donde se envían los mails de contacto', 'info@designingsolutions.com.co', NULL, 'text', 6, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`, `link`, `order`) VALUES
(4, 'sliders\\February2019\\VVbgma5gGO5cuJog2hDu.jpg', NULL, NULL, '2019-02-05 04:20:48', '2019-02-05 04:20:48', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-01-11 15:38:07', '2019-01-11 15:38:07'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-01-11 15:38:07', '2019-01-11 15:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dni` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cardname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cardnumber` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cardexpmonth` int(11) DEFAULT NULL,
  `cardexpyear` int(11) DEFAULT NULL,
  `cardcvv` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `address`, `city`, `state`, `zip`, `country`, `phone`, `dni`, `cardname`, `cardnumber`, `cardexpmonth`, `cardexpyear`, `cardcvv`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$H3Z0Kbm95qsfuoVpeyVw/eadf3qAjN/frNpce7ZcCQnpJotVN3Ebm', 'FbzCJDVERYPf8n9g4LgLHYDEl0ljoBB1otHCd3dJjXYSplA0xrnjQEJJnlPw', NULL, '2019-01-11 15:38:06', '2019-01-11 15:38:06', 'Bogota 1203, Calle 1', 'Bogota', 'Bogota', '5666', 'Bogota', '57 555 636', '3623156', NULL, NULL, NULL, NULL, NULL),
(2, 2, 'Godoy', 'fgodoyalt@gmail.com', 'users/default.png', NULL, '$2y$10$N9qrnxbKVSxK6GvW3io1lewWND/V2zLscbIE1QxoRKrPbwUnfyDNW', NULL, NULL, '2019-02-06 19:23:23', '2019-02-06 19:23:23', 'Riavadavia 1709, 110', 'Gualeguaychú', 'Entre Ríos', '2820', NULL, '3446360827', '37467147', NULL, NULL, NULL, NULL, NULL),
(3, 2, 'Franco', 'francogodoyalt@hotmail.com', 'users/default.png', NULL, '$2y$10$J/o9cvvsCBNgb.7/6CGb0.NeLsR12Uc0CFNKGlSleY1UgcZh/4PSC', NULL, NULL, '2019-02-07 15:43:15', '2019-02-07 15:43:15', 'Riavadavia 1709, 110', 'Gualeguaychú', 'Entre Ríos', '2820', NULL, '3446360827', '37467147', NULL, NULL, NULL, NULL, NULL),
(4, 2, 'German', 'creativo@designingsolutions.com.co', 'users/default.png', NULL, '$2y$10$hOhKdiL2moOEapuD6sN6UekjFVih3WX4rtro92s.HHPLqjUF21b1W', NULL, NULL, '2019-02-08 13:23:32', '2019-02-08 13:23:32', '231231', '231231', '231231', '231', NULL, '231213', '123', NULL, NULL, NULL, NULL, NULL),
(5, 2, 'Godoy Alt', 'info@integralwebhost.com', 'users/default.png', NULL, '$2y$10$Q25LtRJpEsCMCg630ujIFujuebpunrrvmmFM/g8Onas5bAao/pNKa', NULL, NULL, '2019-02-20 07:26:00', '2019-02-20 07:26:00', 'addres', 'Gualeguaychú', 'Entre Ríos', '220', NULL, '93446360827', '32392735', 'Franco Godoy Alt', NULL, 0, 2019, 944),
(6, 2, 'Godoy Alt', 'francogodoyalt2@hotmail.com', 'users/default.png', NULL, '$2y$10$9jPSX59PSYYqtQ57a137D.H0.cZOYZZu.GkyJw9ComWWKYJuAWTKe', NULL, NULL, '2019-02-20 07:37:05', '2019-02-20 07:37:05', 'addres', 'Gualeguaychú', 'Entre Ríos', '220', NULL, '21321312', '32392735', 'franco', '2121521521521521', 11, 2019, 699),
(7, 2, 'Godoy Alt', 'fr3ancogodoyalt@hotmail.com', 'users/default.png', NULL, '$2y$10$I.xOEXAzmjBgHXBhIzp/DexI73.YmvLoZgwwMXv2uisSTjSl3FjHW', NULL, NULL, '2019-02-20 07:39:03', '2019-02-20 07:39:03', 'addres', 'Gualeguaychú', 'Entre Ríos', '220', NULL, '93446360827', '32392735', 'asdasdasd', '2132132132132132', 10, 2222, 221),
(8, 2, 'German Martinez', 'germanfac1@gmail.com', 'users/default.png', NULL, '$2y$10$w.2adM49GsiUUuG8PR7LI.06QMzZnOwfAjoJutf3lhZQeA6kyQbr.', NULL, NULL, '2019-02-20 13:22:23', '2019-02-20 13:22:23', 'carre 47 no 134 15', 'Bogota', 'Cundinamarca', '011571', NULL, '3143858926', '12', 'Carlos Andres Romero', '5306959463811064', 12, 2019, 302),
(9, 2, 'Godoy Alt', 'francogodoyalt22@hotmail.com', 'users/default.png', NULL, '$2y$10$1yMT8ei6igxc3HYLm8ZIWOYJoH5ozrVKNMbT7tDL0NaTlBWRczJ5e', NULL, NULL, '2019-02-20 13:41:27', '2019-02-20 13:41:27', 'addres', 'Gualeguaychú', 'Entre Ríos', '220', NULL, '93446360827', '32392735', 'FRAAA', '4444444444444444', 9, 2019, 212),
(10, 2, 'Franco GodoyAlt', 'i222nfo@integralwebhost.com', 'users/default.png', NULL, '$2y$10$7lZo0ff.GGK8B0/4ajy2YuOINo3/WuvHPQgsfTq7kf2V3nfUfEEs2', NULL, NULL, '2019-02-20 13:46:18', '2019-02-20 13:46:18', 'addres', 'Gualeguaychú', 'Entre Ríos', '220', NULL, '93446360827', '32392735', 'fraa', '5555555555555555', 9, 2019, 213),
(11, 2, 'Franco GodoyAlt', 'in555fo@integralwebhost.com', 'users/default.png', NULL, '$2y$10$QZ5OVp0U5eNZeeeDYJ.Y/O.DiGAd92CgBVfGZwQSiFd4M8CWGUe2e', NULL, NULL, '2019-02-20 13:49:30', '2019-02-20 13:49:30', 'addres', 'Gualeguaychú', 'Entre Ríos', '220', NULL, '93446360827', NULL, 'FRAAA', '2212121122121212', 12, 2019, 211);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brandscategories`
--
ALTER TABLE `brandscategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flavors`
--
ALTER TABLE `flavors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productsgroups`
--
ALTER TABLE `productsgroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_flavors`
--
ALTER TABLE `products_flavors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `brandscategories`
--
ALTER TABLE `brandscategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `flavors`
--
ALTER TABLE `flavors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `productsgroups`
--
ALTER TABLE `productsgroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `products_flavors`
--
ALTER TABLE `products_flavors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
