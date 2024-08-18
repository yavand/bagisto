-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 18, 2024 at 06:13 AM
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
-- Database: `bagisto`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int UNSIGNED NOT NULL,
  `address_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_address_id` int UNSIGNED DEFAULT NULL,
  `customer_id` int UNSIGNED DEFAULT NULL COMMENT 'null if guest checkout',
  `cart_id` int UNSIGNED DEFAULT NULL COMMENT 'only for cart_addresses',
  `order_id` int UNSIGNED DEFAULT NULL COMMENT 'only for order_addresses',
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_address` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'only for customer_addresses',
  `use_for_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `address_type`, `parent_address_id`, `customer_id`, `cart_id`, `order_id`, `first_name`, `last_name`, `gender`, `company_name`, `address`, `city`, `state`, `country`, `postcode`, `email`, `phone`, `vat_id`, `default_address`, `use_for_shipping`, `additional`, `created_at`, `updated_at`) VALUES
(1, 'customer', NULL, 3, NULL, NULL, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 0, NULL, '2024-08-15 13:23:01', '2024-08-15 13:23:01'),
(2, 'cart_billing', 1, 3, 1, NULL, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 1, NULL, '2024-08-15 13:23:08', '2024-08-15 13:23:08'),
(3, 'cart_shipping', 1, 3, 1, NULL, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 0, NULL, '2024-08-15 13:23:08', '2024-08-15 13:23:08'),
(4, 'order_shipping', NULL, NULL, NULL, 1, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 0, NULL, '2024-08-16 02:55:17', '2024-08-16 02:55:17'),
(5, 'order_billing', NULL, NULL, NULL, 1, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 0, NULL, '2024-08-16 02:55:17', '2024-08-16 02:55:17'),
(6, 'cart_billing', 1, 3, 2, NULL, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 1, NULL, '2024-08-16 03:49:24', '2024-08-16 03:49:24'),
(7, 'cart_shipping', 1, 3, 2, NULL, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 0, NULL, '2024-08-16 03:49:24', '2024-08-16 03:49:24'),
(8, 'order_shipping', NULL, NULL, NULL, 2, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 0, NULL, '2024-08-16 04:31:01', '2024-08-16 04:31:01'),
(9, 'order_billing', NULL, NULL, NULL, 2, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 0, NULL, '2024-08-16 04:31:01', '2024-08-16 04:31:01'),
(10, 'cart_billing', 1, 3, 3, NULL, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 1, NULL, '2024-08-16 04:42:13', '2024-08-16 04:42:13'),
(11, 'cart_shipping', 1, 3, 3, NULL, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 0, NULL, '2024-08-16 04:42:13', '2024-08-16 04:42:13'),
(12, 'order_shipping', NULL, NULL, NULL, 3, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 0, NULL, '2024-08-16 07:13:30', '2024-08-16 07:13:30'),
(13, 'order_billing', NULL, NULL, NULL, 3, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 0, NULL, '2024-08-16 07:13:30', '2024-08-16 07:13:30'),
(14, 'cart_billing', 1, 3, 4, NULL, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 1, NULL, '2024-08-16 07:20:34', '2024-08-16 07:20:34'),
(15, 'cart_shipping', 1, 3, 4, NULL, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 0, NULL, '2024-08-16 07:20:34', '2024-08-16 07:20:34'),
(16, 'order_shipping', NULL, NULL, NULL, 4, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 0, NULL, '2024-08-16 07:23:19', '2024-08-16 07:23:19'),
(17, 'order_billing', NULL, NULL, NULL, 4, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 0, NULL, '2024-08-16 07:23:19', '2024-08-16 07:23:19'),
(18, 'cart_billing', 1, 3, 5, NULL, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 1, NULL, '2024-08-17 03:19:54', '2024-08-17 03:19:54'),
(19, 'cart_shipping', 1, 3, 5, NULL, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 0, NULL, '2024-08-17 03:19:54', '2024-08-17 03:19:54'),
(20, 'order_shipping', NULL, NULL, NULL, 5, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 0, NULL, '2024-08-17 03:54:23', '2024-08-17 03:54:23'),
(21, 'order_billing', NULL, NULL, NULL, 5, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 0, NULL, '2024-08-17 03:54:23', '2024-08-17 03:54:23'),
(22, 'cart_billing', 1, 3, 6, NULL, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 1, NULL, '2024-08-17 04:01:09', '2024-08-17 04:01:09'),
(23, 'cart_shipping', 1, 3, 6, NULL, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 0, NULL, '2024-08-17 04:01:09', '2024-08-17 04:01:09'),
(24, 'order_shipping', NULL, NULL, NULL, 6, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 0, NULL, '2024-08-17 11:25:55', '2024-08-17 11:25:55'),
(25, 'order_billing', NULL, NULL, NULL, 6, 'sdfsd', 'fsdf', NULL, 'dsfsdf', 'sdfsdfsd', 'dsfds', 'sfsdf', 'DZ', '121212', 'sdfsdf@sd.ff', '33223322', NULL, 0, 0, NULL, '2024-08-17 11:25:55', '2024-08-17 11:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `api_token`, `status`, `role_id`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'مثال', 'admin@example.com', '$2y$10$z1SH73e8M1q1yRl8/vLgJ.uNGjB.chK/CHyvm5kYPsCgj90Ppwwym', 'YiNxRz9MgNanonpV3lFrVQ74YtOZaGKDq2naBNJDZsu4ducoss8uFxn3sWEmXaG7otWBHO5lRgKh3x69', 1, 1, NULL, NULL, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(3, 'مثال', 'newCustomer440593@example.com', '$2y$10$z1SH73e8M1q1yRl8/vLgJ.uNGjB.chK/CHyvm5kYPsCgj90Ppwwym', 'YiNxRz9MgNanonpV3lFrVQ75YtOZaGKDq2naBNJDZsu4ducoss8uFxn3sWEmXaG7otWBHO5lRgKh3x69', 1, 1, NULL, NULL, '2024-08-15 12:20:01', '2024-08-15 12:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `swatch_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regex` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_unique` tinyint(1) NOT NULL DEFAULT '0',
  `is_filterable` tinyint(1) NOT NULL DEFAULT '0',
  `is_comparable` tinyint(1) NOT NULL DEFAULT '0',
  `is_configurable` tinyint(1) NOT NULL DEFAULT '0',
  `is_user_defined` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_on_front` tinyint(1) NOT NULL DEFAULT '0',
  `value_per_locale` tinyint(1) NOT NULL DEFAULT '0',
  `value_per_channel` tinyint(1) NOT NULL DEFAULT '0',
  `default_value` int DEFAULT NULL,
  `enable_wysiwyg` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `code`, `admin_name`, `type`, `swatch_type`, `validation`, `regex`, `position`, `is_required`, `is_unique`, `is_filterable`, `is_comparable`, `is_configurable`, `is_user_defined`, `is_visible_on_front`, `value_per_locale`, `value_per_channel`, `default_value`, `enable_wysiwyg`, `created_at`, `updated_at`) VALUES
(1, 'sku', 'SKU', 'text', NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(2, 'name', 'نام', 'text', NULL, NULL, NULL, 3, 1, 0, 0, 1, 0, 0, 0, 1, 0, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(3, 'url_key', 'کلید URL', 'text', NULL, NULL, NULL, 4, 1, 1, 0, 0, 0, 0, 0, 1, 0, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(4, 'tax_category_id', 'دسته مالیاتی', 'select', NULL, NULL, NULL, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(5, 'new', 'جدید', 'boolean', NULL, NULL, NULL, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(6, 'featured', 'ویژگی‌دار', 'boolean', NULL, NULL, NULL, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(7, 'visible_individually', 'نمایش انفرادی', 'boolean', NULL, NULL, NULL, 9, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(8, 'status', 'وضعیت', 'boolean', NULL, NULL, NULL, 10, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(9, 'short_description', 'توضیح کوتاه', 'textarea', NULL, NULL, NULL, 11, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 1, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(10, 'description', 'توضیحات', 'textarea', NULL, NULL, NULL, 12, 1, 0, 0, 1, 0, 0, 0, 1, 0, NULL, 1, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(11, 'price', 'قیمت', 'price', NULL, 'decimal', NULL, 13, 1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(12, 'cost', 'هزینه', 'price', NULL, 'decimal', NULL, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(13, 'special_price', 'قیمت ویژه', 'price', NULL, 'decimal', NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(14, 'special_price_from', 'قیمت ویژه از', 'date', NULL, NULL, NULL, 16, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(15, 'special_price_to', 'قیمت ویژه تا', 'date', NULL, NULL, NULL, 17, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(16, 'meta_title', 'عنوان متا', 'textarea', NULL, NULL, NULL, 18, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(17, 'meta_keywords', 'کلمات کلیدی متا', 'textarea', NULL, NULL, NULL, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(18, 'meta_description', 'توضیحات متا', 'textarea', NULL, NULL, NULL, 21, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(19, 'length', 'طول', 'text', NULL, 'decimal', NULL, 22, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(20, 'width', 'عرض', 'text', NULL, 'decimal', NULL, 23, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(21, 'height', 'ارتفاع', 'text', NULL, 'decimal', NULL, 24, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(22, 'weight', 'وزن', 'text', NULL, 'decimal', NULL, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(23, 'color', 'رنگ', 'select', NULL, NULL, NULL, 26, 0, 0, 1, 0, 1, 1, 0, 0, 0, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(24, 'size', 'اندازه', 'select', NULL, NULL, NULL, 27, 0, 0, 1, 0, 1, 1, 0, 0, 0, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(25, 'brand', 'برند', 'select', NULL, NULL, NULL, 28, 0, 0, 1, 0, 0, 1, 1, 0, 0, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(26, 'guest_checkout', 'خرید مهمان', 'boolean', NULL, NULL, NULL, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(27, 'product_number', 'شماره محصول', 'text', NULL, NULL, NULL, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(28, 'manage_stock', 'مدیریت موجودی', 'boolean', NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '2024-08-15 12:20:00', '2024-08-15 12:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_families`
--

CREATE TABLE `attribute_families` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_user_defined` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_families`
--

INSERT INTO `attribute_families` (`id`, `code`, `name`, `status`, `is_user_defined`) VALUES
(1, 'default', 'پیش‌فرض', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_groups`
--

CREATE TABLE `attribute_groups` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_family_id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column` int NOT NULL DEFAULT '1',
  `position` int NOT NULL,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_groups`
--

INSERT INTO `attribute_groups` (`id`, `code`, `attribute_family_id`, `name`, `column`, `position`, `is_user_defined`) VALUES
(1, 'general', 1, 'عمومی', 1, 1, 0),
(2, 'description', 1, 'توضیحات', 1, 2, 0),
(3, 'meta_description', 1, 'توضیحات متا', 1, 3, 0),
(4, 'price', 1, 'قیمت', 2, 1, 0),
(5, 'shipping', 1, 'حمل و نقل', 2, 2, 0),
(6, 'settings', 1, 'تنظیمات', 2, 3, 0),
(7, 'inventories', 1, 'موجودی‌ها', 2, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_group_mappings`
--

CREATE TABLE `attribute_group_mappings` (
  `attribute_id` int UNSIGNED NOT NULL,
  `attribute_group_id` int UNSIGNED NOT NULL,
  `position` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_group_mappings`
--

INSERT INTO `attribute_group_mappings` (`attribute_id`, `attribute_group_id`, `position`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 4),
(4, 1, 5),
(5, 6, 1),
(6, 6, 2),
(7, 6, 3),
(8, 6, 4),
(9, 2, 1),
(10, 2, 2),
(11, 4, 1),
(12, 4, 2),
(13, 4, 3),
(14, 4, 4),
(15, 4, 5),
(16, 3, 1),
(17, 3, 2),
(18, 3, 3),
(19, 5, 1),
(20, 5, 2),
(21, 5, 3),
(22, 5, 4),
(23, 1, 6),
(24, 1, 7),
(25, 1, 8),
(26, 6, 5),
(27, 1, 2),
(28, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int UNSIGNED NOT NULL,
  `attribute_id` int UNSIGNED NOT NULL,
  `admin_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `swatch_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `admin_name`, `sort_order`, `swatch_value`) VALUES
(1, 23, 'قرمز', 1, NULL),
(2, 23, 'سبز', 2, NULL),
(3, 23, 'زرد', 3, NULL),
(4, 23, 'سیاه', 4, NULL),
(5, 23, 'سفید', 5, NULL),
(6, 24, 'S', 1, NULL),
(7, 24, 'M', 2, NULL),
(8, 24, 'L', 3, NULL),
(9, 24, 'XL', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_option_translations`
--

CREATE TABLE `attribute_option_translations` (
  `id` int UNSIGNED NOT NULL,
  `attribute_option_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_option_translations`
--

INSERT INTO `attribute_option_translations` (`id`, `attribute_option_id`, `locale`, `label`) VALUES
(1, 1, 'fa', 'قرمز'),
(2, 2, 'fa', 'سبز'),
(3, 3, 'fa', 'زرد'),
(4, 4, 'fa', 'سیاه'),
(5, 5, 'fa', 'سفید'),
(6, 6, 'fa', 'S'),
(7, 7, 'fa', 'M'),
(8, 8, 'fa', 'L'),
(9, 9, 'fa', 'XL');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_translations`
--

CREATE TABLE `attribute_translations` (
  `id` int UNSIGNED NOT NULL,
  `attribute_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_translations`
--

INSERT INTO `attribute_translations` (`id`, `attribute_id`, `locale`, `name`) VALUES
(1, 1, 'fa', 'SKU'),
(2, 2, 'fa', 'نام'),
(3, 3, 'fa', 'کلید URL'),
(4, 4, 'fa', 'دسته مالیاتی'),
(5, 5, 'fa', 'جدید'),
(6, 6, 'fa', 'ویژگی‌دار'),
(7, 7, 'fa', 'نمایش انفرادی'),
(8, 8, 'fa', 'وضعیت'),
(9, 9, 'fa', 'توضیح کوتاه'),
(10, 10, 'fa', 'توضیحات'),
(11, 11, 'fa', 'قیمت'),
(12, 12, 'fa', 'هزینه'),
(13, 13, 'fa', 'قیمت ویژه'),
(14, 14, 'fa', 'قیمت ویژه از'),
(15, 15, 'fa', 'قیمت ویژه تا'),
(16, 16, 'fa', 'عنوان متا'),
(17, 17, 'fa', 'کلمات کلیدی متا'),
(18, 18, 'fa', 'توضیحات متا'),
(19, 19, 'fa', 'طول'),
(20, 20, 'fa', 'عرض'),
(21, 21, 'fa', 'ارتفاع'),
(22, 22, 'fa', 'وزن'),
(23, 23, 'fa', 'رنگ'),
(24, 24, 'fa', 'اندازه'),
(25, 25, 'fa', 'برند'),
(26, 26, 'fa', 'خرید مهمان'),
(27, 27, 'fa', 'شماره محصول'),
(28, 28, 'fa', 'مدیریت موجودی');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int UNSIGNED NOT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_gift` tinyint(1) NOT NULL DEFAULT '0',
  `items_count` int DEFAULT NULL,
  `items_qty` decimal(12,4) DEFAULT NULL,
  `exchange_rate` decimal(12,4) DEFAULT NULL,
  `global_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT '0.0000',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000',
  `sub_total` decimal(12,4) DEFAULT '0.0000',
  `base_sub_total` decimal(12,4) DEFAULT '0.0000',
  `tax_total` decimal(12,4) DEFAULT '0.0000',
  `base_tax_total` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `checkout_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `applied_cart_rule_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int UNSIGNED DEFAULT NULL,
  `channel_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `customer_email`, `customer_first_name`, `customer_last_name`, `shipping_method`, `coupon_code`, `is_gift`, `items_count`, `items_qty`, `exchange_rate`, `global_currency_code`, `base_currency_code`, `channel_currency_code`, `cart_currency_code`, `grand_total`, `base_grand_total`, `sub_total`, `base_sub_total`, `tax_total`, `base_tax_total`, `discount_amount`, `base_discount_amount`, `shipping_amount`, `base_shipping_amount`, `shipping_amount_incl_tax`, `base_shipping_amount_incl_tax`, `sub_total_incl_tax`, `base_sub_total_incl_tax`, `checkout_method`, `is_guest`, `is_active`, `applied_cart_rule_ids`, `customer_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'ali.yazdani324@gmail.com', 'ali', 'yazdanifar', 'flatrate_flatrate', NULL, 0, 1, '1.0000', NULL, 'USD', 'USD', 'USD', 'USD', '4353.0000', '4353.0000', '4343.0000', '4343.0000', '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', '10.0000', '10.0000', '10.0000', '4343.0000', '4343.0000', NULL, 0, 0, NULL, 3, 1, '2024-08-15 13:21:50', '2024-08-16 02:55:20'),
(2, 'ali.yazdani324@gmail.com', 'ali', 'yazdanifar', 'flatrate_flatrate', NULL, 0, 1, '1.0000', NULL, 'USD', 'USD', 'USD', 'IRR', '4353.0000', '4353.0000', '4343.0000', '4343.0000', '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', '10.0000', '10.0000', '10.0000', '4343.0000', '4343.0000', NULL, 0, 0, NULL, 3, 1, '2024-08-16 03:15:20', '2024-08-16 04:31:04'),
(3, 'ali.yazdani324@gmail.com', 'ali', 'yazdanifar', 'flatrate_flatrate', NULL, 0, 1, '1.0000', NULL, 'USD', 'USD', 'IRR', 'IRR', '4353.0000', '4353.0000', '4343.0000', '4343.0000', '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', '10.0000', '10.0000', '10.0000', '4343.0000', '4343.0000', NULL, 0, 0, NULL, 3, 1, '2024-08-16 04:35:04', '2024-08-16 07:13:33'),
(4, 'ali.yazdani324@gmail.com', 'ali', 'yazdanifar', 'flatrate_flatrate', NULL, 0, 1, '1.0000', NULL, 'USD', 'USD', 'IRR', 'IRR', '4353.0000', '4353.0000', '4343.0000', '4343.0000', '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', '10.0000', '10.0000', '10.0000', '4343.0000', '4343.0000', NULL, 0, 0, NULL, 3, 1, '2024-08-16 07:15:05', '2024-08-16 07:23:22'),
(5, 'ali.yazdani324@gmail.com', 'ali', 'yazdanifar', 'flatrate_flatrate', NULL, 0, 1, '1.0000', NULL, 'USD', 'USD', 'IRR', 'IRR', '4353.0000', '4353.0000', '4343.0000', '4343.0000', '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', '10.0000', '10.0000', '10.0000', '4343.0000', '4343.0000', NULL, 0, 0, NULL, 3, 1, '2024-08-17 03:19:41', '2024-08-17 03:54:25'),
(6, 'ali.yazdani324@gmail.com', 'ali', 'yazdanifar', 'flatrate_flatrate', NULL, 0, 1, '4.0000', NULL, 'USD', 'USD', 'IRR', 'IRR', '17412.0000', '17412.0000', '17372.0000', '17372.0000', '0.0000', '0.0000', '0.0000', '0.0000', '40.0000', '40.0000', '40.0000', '40.0000', '17372.0000', '17372.0000', NULL, 0, 0, NULL, 3, 1, '2024-08-17 04:00:54', '2024-08-17 11:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int UNSIGNED NOT NULL,
  `quantity` int UNSIGNED NOT NULL DEFAULT '0',
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_weight` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total_weight` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `price` decimal(12,4) NOT NULL DEFAULT '1.0000',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `custom_price` decimal(12,4) DEFAULT NULL,
  `total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `tax_percent` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_percent` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `applied_tax_rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `cart_id` int UNSIGNED NOT NULL,
  `tax_category_id` int UNSIGNED DEFAULT NULL,
  `applied_cart_rule_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `quantity`, `sku`, `type`, `name`, `coupon_code`, `weight`, `total_weight`, `base_total_weight`, `price`, `base_price`, `custom_price`, `total`, `base_total`, `tax_percent`, `tax_amount`, `base_tax_amount`, `discount_percent`, `discount_amount`, `base_discount_amount`, `price_incl_tax`, `base_price_incl_tax`, `total_incl_tax`, `base_total_incl_tax`, `applied_tax_rate`, `parent_id`, `product_id`, `cart_id`, `tax_category_id`, `applied_cart_rule_ids`, `additional`, `created_at`, `updated_at`) VALUES
(1, 1, 'test', 'simple', 'محصول تست', NULL, '32.0000', '32.0000', '32.0000', '4343.0000', '4343.0000', NULL, '4343.0000', '4343.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '4343.0000', '4343.0000', NULL, NULL, 1, 1, NULL, NULL, '{\"quantity\": 1, \"product_id\": 1}', '2024-08-15 13:21:50', '2024-08-15 13:21:50'),
(2, 1, 'test', 'simple', 'محصول تست', NULL, '32.0000', '32.0000', '32.0000', '4343.0000', '4343.0000', NULL, '4343.0000', '4343.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '4343.0000', '4343.0000', NULL, NULL, 1, 2, NULL, NULL, '{\"quantity\": 2, \"product_id\": 1}', '2024-08-16 03:15:20', '2024-08-16 03:15:32'),
(3, 1, 'test', 'simple', 'محصول تست', NULL, '32.0000', '32.0000', '32.0000', '4343.0000', '4343.0000', NULL, '4343.0000', '4343.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '4343.0000', '4343.0000', NULL, NULL, 1, 3, NULL, NULL, '{\"quantity\": 1, \"is_buy_now\": \"0\", \"product_id\": \"1\"}', '2024-08-16 04:35:04', '2024-08-16 04:35:04'),
(4, 1, 'test', 'simple', 'محصول تست', NULL, '32.0000', '32.0000', '32.0000', '4343.0000', '4343.0000', NULL, '4343.0000', '4343.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '4343.0000', '4343.0000', NULL, NULL, 1, 4, NULL, NULL, '{\"quantity\": 1, \"is_buy_now\": \"0\", \"product_id\": \"1\"}', '2024-08-16 07:15:05', '2024-08-16 07:15:05'),
(5, 1, 'test', 'simple', 'محصول تست', NULL, '32.0000', '32.0000', '32.0000', '4343.0000', '4343.0000', NULL, '4343.0000', '4343.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '4343.0000', '4343.0000', NULL, NULL, 1, 5, NULL, NULL, '{\"quantity\": 1, \"product_id\": 1}', '2024-08-17 03:19:41', '2024-08-17 03:19:41'),
(6, 4, 'test', 'simple', 'محصول تست', NULL, '32.0000', '128.0000', '128.0000', '4343.0000', '4343.0000', NULL, '17372.0000', '17372.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '17372.0000', '17372.0000', NULL, NULL, 1, 6, NULL, NULL, '{\"quantity\": 4, \"product_id\": 1}', '2024-08-17 04:00:54', '2024-08-17 11:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `cart_item_inventories`
--

CREATE TABLE `cart_item_inventories` (
  `id` int UNSIGNED NOT NULL,
  `qty` int UNSIGNED NOT NULL DEFAULT '0',
  `inventory_source_id` int UNSIGNED DEFAULT NULL,
  `cart_item_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_payment`
--

CREATE TABLE `cart_payment` (
  `id` int UNSIGNED NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cart_payment`
--

INSERT INTO `cart_payment` (`id`, `method`, `method_title`, `cart_id`, `created_at`, `updated_at`) VALUES
(1, 'demopackage', 'DemoPackage', 1, '2024-08-16 02:55:15', '2024-08-16 02:55:15'),
(10, 'zarinpal', 'Zarinpal', 2, '2024-08-16 04:30:34', '2024-08-16 04:30:34'),
(25, 'zarinpal', 'Zarinpal', 3, '2024-08-16 07:12:43', '2024-08-16 07:12:43'),
(26, 'zarinpal', 'Zarinpal', 4, '2024-08-16 07:20:42', '2024-08-16 07:20:42'),
(29, 'zarinpal', 'Zarinpal', 5, '2024-08-17 03:53:28', '2024-08-17 03:53:28'),
(33, 'zarinpal', 'Zarinpal', 6, '2024-08-17 11:22:44', '2024-08-17 11:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `cart_rules`
--

CREATE TABLE `cart_rules` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `coupon_type` int NOT NULL DEFAULT '1',
  `use_auto_generation` tinyint(1) NOT NULL DEFAULT '0',
  `usage_per_customer` int NOT NULL DEFAULT '0',
  `uses_per_coupon` int NOT NULL DEFAULT '0',
  `times_used` int UNSIGNED NOT NULL DEFAULT '0',
  `condition_type` tinyint(1) NOT NULL DEFAULT '1',
  `conditions` json DEFAULT NULL,
  `end_other_rules` tinyint(1) NOT NULL DEFAULT '0',
  `uses_attribute_conditions` tinyint(1) NOT NULL DEFAULT '0',
  `action_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `discount_quantity` int NOT NULL DEFAULT '1',
  `discount_step` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `apply_to_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_channels`
--

CREATE TABLE `cart_rule_channels` (
  `cart_rule_id` int UNSIGNED NOT NULL,
  `channel_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_coupons`
--

CREATE TABLE `cart_rule_coupons` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usage_limit` int UNSIGNED NOT NULL DEFAULT '0',
  `usage_per_customer` int UNSIGNED NOT NULL DEFAULT '0',
  `times_used` int UNSIGNED NOT NULL DEFAULT '0',
  `type` int UNSIGNED NOT NULL DEFAULT '0',
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `expired_at` date DEFAULT NULL,
  `cart_rule_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_coupon_usage`
--

CREATE TABLE `cart_rule_coupon_usage` (
  `id` int UNSIGNED NOT NULL,
  `times_used` int NOT NULL DEFAULT '0',
  `cart_rule_coupon_id` int UNSIGNED NOT NULL,
  `customer_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_customers`
--

CREATE TABLE `cart_rule_customers` (
  `id` int UNSIGNED NOT NULL,
  `times_used` bigint UNSIGNED NOT NULL DEFAULT '0',
  `customer_id` int UNSIGNED NOT NULL,
  `cart_rule_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_customer_groups`
--

CREATE TABLE `cart_rule_customer_groups` (
  `cart_rule_id` int UNSIGNED NOT NULL,
  `customer_group_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_translations`
--

CREATE TABLE `cart_rule_translations` (
  `id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` text COLLATE utf8mb4_unicode_ci,
  `cart_rule_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_shipping_rates`
--

CREATE TABLE `cart_shipping_rates` (
  `id` int UNSIGNED NOT NULL,
  `carrier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT '0',
  `base_price` double DEFAULT '0',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `tax_percent` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `applied_tax_rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_calculate_tax` tinyint(1) NOT NULL DEFAULT '1',
  `cart_address_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cart_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cart_shipping_rates`
--

INSERT INTO `cart_shipping_rates` (`id`, `carrier`, `carrier_title`, `method`, `method_title`, `method_description`, `price`, `base_price`, `discount_amount`, `base_discount_amount`, `tax_percent`, `tax_amount`, `base_tax_amount`, `price_incl_tax`, `base_price_incl_tax`, `applied_tax_rate`, `is_calculate_tax`, `cart_address_id`, `created_at`, `updated_at`, `cart_id`) VALUES
(29, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 10, 10, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', '10.0000', NULL, 1, 3, '2024-08-16 02:55:04', '2024-08-16 02:55:04', 1),
(30, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 1, 3, '2024-08-16 02:55:04', '2024-08-16 02:55:04', 1),
(87, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 10, 10, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', '10.0000', NULL, 1, 7, '2024-08-16 04:30:24', '2024-08-16 04:30:24', 2),
(88, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 1, 7, '2024-08-16 04:30:24', '2024-08-16 04:30:24', 2),
(139, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 10, 10, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', '10.0000', NULL, 1, 11, '2024-08-16 07:12:41', '2024-08-16 07:12:41', 3),
(140, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 1, 11, '2024-08-16 07:12:41', '2024-08-16 07:12:41', 3),
(143, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 10, 10, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', '10.0000', NULL, 1, 15, '2024-08-16 07:20:37', '2024-08-16 07:20:37', 4),
(144, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 1, 15, '2024-08-16 07:20:37', '2024-08-16 07:20:37', 4),
(159, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 10, 10, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', '10.0000', NULL, 1, 19, '2024-08-17 03:53:23', '2024-08-17 03:53:23', 5),
(160, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 1, 19, '2024-08-17 03:53:23', '2024-08-17 03:53:23', 5),
(175, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 40, 40, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '40.0000', '40.0000', NULL, 1, 23, '2024-08-17 11:22:42', '2024-08-17 11:22:42', 6),
(176, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 1, 23, '2024-08-17 11:22:42', '2024-08-17 11:22:42', 6);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rules`
--

CREATE TABLE `catalog_rules` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starts_from` date DEFAULT NULL,
  `ends_till` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `condition_type` tinyint(1) NOT NULL DEFAULT '1',
  `conditions` json DEFAULT NULL,
  `end_other_rules` tinyint(1) NOT NULL DEFAULT '0',
  `action_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_channels`
--

CREATE TABLE `catalog_rule_channels` (
  `catalog_rule_id` int UNSIGNED NOT NULL,
  `channel_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_customer_groups`
--

CREATE TABLE `catalog_rule_customer_groups` (
  `catalog_rule_id` int UNSIGNED NOT NULL,
  `customer_group_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_products`
--

CREATE TABLE `catalog_rule_products` (
  `id` int UNSIGNED NOT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `end_other_rules` tinyint(1) NOT NULL DEFAULT '0',
  `action_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `product_id` int UNSIGNED NOT NULL,
  `customer_group_id` int UNSIGNED NOT NULL,
  `catalog_rule_id` int UNSIGNED NOT NULL,
  `channel_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_product_prices`
--

CREATE TABLE `catalog_rule_product_prices` (
  `id` int UNSIGNED NOT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `rule_date` date NOT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `customer_group_id` int UNSIGNED NOT NULL,
  `catalog_rule_id` int UNSIGNED NOT NULL,
  `channel_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `position` int NOT NULL DEFAULT '0',
  `logo_path` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `display_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'products_and_description',
  `_lft` int UNSIGNED NOT NULL DEFAULT '0',
  `_rgt` int UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int UNSIGNED DEFAULT NULL,
  `additional` json DEFAULT NULL,
  `banner_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `position`, `logo_path`, `status`, `display_mode`, `_lft`, `_rgt`, `parent_id`, `additional`, `banner_path`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 'products_and_description', 1, 14, NULL, NULL, NULL, '2024-08-15 12:20:00', '2024-08-15 12:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `category_filterable_attributes`
--

CREATE TABLE `category_filterable_attributes` (
  `category_id` int UNSIGNED NOT NULL,
  `attribute_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_path` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `locale_id` int UNSIGNED DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `name`, `slug`, `url_path`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `locale_id`, `locale`) VALUES
(1, 1, 'اصلی', 'root', '', 'توضیح دسته اصلی', '', '', '', NULL, 'fa');

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hostname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_seo` json DEFAULT NULL,
  `is_maintenance_on` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_ips` text COLLATE utf8mb4_unicode_ci,
  `root_category_id` int UNSIGNED DEFAULT NULL,
  `default_locale_id` int UNSIGNED NOT NULL,
  `base_currency_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `code`, `timezone`, `theme`, `hostname`, `logo`, `favicon`, `home_seo`, `is_maintenance_on`, `allowed_ips`, `root_category_id`, `default_locale_id`, `base_currency_id`, `created_at`, `updated_at`) VALUES
(1, 'default', NULL, 'default', 'bagisto.test', NULL, NULL, NULL, 0, '', 1, 1, 2, '2024-08-15 12:20:00', '2024-08-16 03:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `channel_currencies`
--

CREATE TABLE `channel_currencies` (
  `channel_id` int UNSIGNED NOT NULL,
  `currency_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `channel_currencies`
--

INSERT INTO `channel_currencies` (`channel_id`, `currency_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `channel_inventory_sources`
--

CREATE TABLE `channel_inventory_sources` (
  `channel_id` int UNSIGNED NOT NULL,
  `inventory_source_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `channel_inventory_sources`
--

INSERT INTO `channel_inventory_sources` (`channel_id`, `inventory_source_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `channel_locales`
--

CREATE TABLE `channel_locales` (
  `channel_id` int UNSIGNED NOT NULL,
  `locale_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `channel_locales`
--

INSERT INTO `channel_locales` (`channel_id`, `locale_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `channel_translations`
--

CREATE TABLE `channel_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `channel_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `maintenance_mode_text` text COLLATE utf8mb4_unicode_ci,
  `home_seo` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `channel_translations`
--

INSERT INTO `channel_translations` (`id`, `channel_id`, `locale`, `name`, `description`, `maintenance_mode_text`, `home_seo`, `created_at`, `updated_at`) VALUES
(1, 1, 'fa', 'پیش‌فرض', NULL, '', '{\"meta_title\": \"فروشگاه نمونه\", \"meta_keywords\": \"فروشگاه نمونه کلمات کلیدی متا\", \"meta_description\": \"فروشگاه نمونه توضیحات متا\"}', NULL, '2024-08-16 03:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

CREATE TABLE `cms_pages` (
  `id` int UNSIGNED NOT NULL,
  `layout` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_pages`
--

INSERT INTO `cms_pages` (`id`, `layout`, `created_at`, `updated_at`) VALUES
(1, NULL, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(2, NULL, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(3, NULL, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(4, NULL, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(5, NULL, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(6, NULL, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(7, NULL, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(8, NULL, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(9, NULL, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(10, NULL, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(11, NULL, '2024-08-15 12:20:01', '2024-08-15 12:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_channels`
--

CREATE TABLE `cms_page_channels` (
  `cms_page_id` int UNSIGNED NOT NULL,
  `channel_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_translations`
--

CREATE TABLE `cms_page_translations` (
  `id` int UNSIGNED NOT NULL,
  `page_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `html_content` longtext COLLATE utf8mb4_unicode_ci,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cms_page_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_page_translations`
--

INSERT INTO `cms_page_translations` (`id`, `page_title`, `url_key`, `html_content`, `meta_title`, `meta_description`, `meta_keywords`, `locale`, `cms_page_id`) VALUES
(1, 'درباره ما', 'about-us', '<div class=\"static-container\"><div class=\"mb-5\">محتوای درباره ما</div></div>', 'about us', '', 'aboutus', 'fa', 1),
(2, 'سیاست بازگشت', 'return-policy', '<div class=\"static-container\"><div class=\"mb-5\">محتوای سیاست بازگشت</div></div>', 'return policy', '', 'return, policy', 'fa', 2),
(3, 'سیاست بازپرداخت', 'refund-policy', '<div class=\"static-container\"><div class=\"mb-5\">محتوای سیاست بازپرداخت</div></div>', 'Refund policy', '', 'refund, policy', 'fa', 3),
(4, 'شرایط و مقررات', 'terms-conditions', '<div class=\"static-container\"><div class=\"mb-5\">محتوای شرایط و مقررات</div></div>', 'Terms & Conditions', '', 'term, conditions', 'fa', 4),
(5, 'شرایط استفاده', 'terms-of-use', '<div class=\"static-container\"><div class=\"mb-5\">محتوای شرایط استفاده</div></div>', 'Terms of use', '', 'term, use', 'fa', 5),
(6, 'خدمات مشتری', 'customer-service', '<div class=\"static-container\"><div class=\"mb-5\">محتوای خدمات مشتری</div></div>', 'Customer Service', '', 'customer, service', 'fa', 7),
(7, 'جدید چیست', 'whats-new', '<div class=\"static-container\"><div class=\"mb-5\">محتوای جدید چیست</div></div>', 'What\'s New', '', 'new', 'fa', 8),
(8, 'سیاست پرداخت', 'payment-policy', '<div class=\"static-container\"><div class=\"mb-5\">محتوای سیاست پرداخت</div></div>', 'Payment Policy', '', 'payment, policy', 'fa', 9),
(9, 'سیاست حمل و نقل', 'shipping-policy', '<div class=\"static-container\"><div class=\"mb-5\">محتوای سیاست حمل و نقل</div></div>', 'Shipping Policy', '', 'shipping, policy', 'fa', 10),
(10, 'سیاست حفظ حریم خصوصی', 'privacy-policy', '<div class=\"static-container\"><div class=\"mb-5\">محتوای سیاست حفظ حریم خصوصی</div></div>', 'Privacy Policy', '', 'privacy, policy', 'fa', 11);

-- --------------------------------------------------------

--
-- Table structure for table `compare_items`
--

CREATE TABLE `compare_items` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `customer_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `core_config`
--

CREATE TABLE `core_config` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `core_config`
--

INSERT INTO `core_config` (`id`, `code`, `value`, `channel_code`, `locale_code`, `created_at`, `updated_at`) VALUES
(1, 'sales.checkout.shopping_cart.allow_guest_checkout', '1', NULL, NULL, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(2, 'emails.general.notifications.emails.general.notifications.verification', '1', NULL, NULL, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(3, 'emails.general.notifications.emails.general.notifications.registration', '1', NULL, NULL, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(4, 'emails.general.notifications.emails.general.notifications.customer', '1', NULL, NULL, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(5, 'emails.general.notifications.emails.general.notifications.new_order', '1', NULL, NULL, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(6, 'emails.general.notifications.emails.general.notifications.new_admin', '1', NULL, NULL, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(7, 'emails.general.notifications.emails.general.notifications.new_invoice', '1', NULL, NULL, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(8, 'emails.general.notifications.emails.general.notifications.new_refund', '1', NULL, NULL, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(9, 'emails.general.notifications.emails.general.notifications.new_shipment', '1', NULL, NULL, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(10, 'emails.general.notifications.emails.general.notifications.new_inventory_source', '1', NULL, NULL, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(11, 'emails.general.notifications.emails.general.notifications.cancel_order', '1', NULL, NULL, '2024-08-15 12:20:00', '2024-08-15 12:20:00'),
(12, 'customer.settings.social_login.enable_facebook', '1', 'default', NULL, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(13, 'customer.settings.social_login.enable_twitter', '1', 'default', NULL, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(14, 'customer.settings.social_login.enable_google', '1', 'default', NULL, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(15, 'customer.settings.social_login.enable_linkedin', '1', 'default', NULL, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(16, 'customer.settings.social_login.enable_github', '1', 'default', NULL, '2024-08-15 12:20:01', '2024-08-15 12:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AX', 'Åland Islands'),
(3, 'AL', 'Albania'),
(4, 'DZ', 'Algeria'),
(5, 'AS', 'American Samoa'),
(6, 'AD', 'Andorra'),
(7, 'AO', 'Angola'),
(8, 'AI', 'Anguilla'),
(9, 'AQ', 'Antarctica'),
(10, 'AG', 'Antigua & Barbuda'),
(11, 'AR', 'Argentina'),
(12, 'AM', 'Armenia'),
(13, 'AW', 'Aruba'),
(14, 'AC', 'Ascension Island'),
(15, 'AU', 'Australia'),
(16, 'AT', 'Austria'),
(17, 'AZ', 'Azerbaijan'),
(18, 'BS', 'Bahamas'),
(19, 'BH', 'Bahrain'),
(20, 'BD', 'Bangladesh'),
(21, 'BB', 'Barbados'),
(22, 'BY', 'Belarus'),
(23, 'BE', 'Belgium'),
(24, 'BZ', 'Belize'),
(25, 'BJ', 'Benin'),
(26, 'BM', 'Bermuda'),
(27, 'BT', 'Bhutan'),
(28, 'BO', 'Bolivia'),
(29, 'BA', 'Bosnia & Herzegovina'),
(30, 'BW', 'Botswana'),
(31, 'BR', 'Brazil'),
(32, 'IO', 'British Indian Ocean Territory'),
(33, 'VG', 'British Virgin Islands'),
(34, 'BN', 'Brunei'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'KH', 'Cambodia'),
(39, 'CM', 'Cameroon'),
(40, 'CA', 'Canada'),
(41, 'IC', 'Canary Islands'),
(42, 'CV', 'Cape Verde'),
(43, 'BQ', 'Caribbean Netherlands'),
(44, 'KY', 'Cayman Islands'),
(45, 'CF', 'Central African Republic'),
(46, 'EA', 'Ceuta & Melilla'),
(47, 'TD', 'Chad'),
(48, 'CL', 'Chile'),
(49, 'CN', 'China'),
(50, 'CX', 'Christmas Island'),
(51, 'CC', 'Cocos (Keeling) Islands'),
(52, 'CO', 'Colombia'),
(53, 'KM', 'Comoros'),
(54, 'CG', 'Congo - Brazzaville'),
(55, 'CD', 'Congo - Kinshasa'),
(56, 'CK', 'Cook Islands'),
(57, 'CR', 'Costa Rica'),
(58, 'CI', 'Côte d’Ivoire'),
(59, 'HR', 'Croatia'),
(60, 'CU', 'Cuba'),
(61, 'CW', 'Curaçao'),
(62, 'CY', 'Cyprus'),
(63, 'CZ', 'Czechia'),
(64, 'DK', 'Denmark'),
(65, 'DG', 'Diego Garcia'),
(66, 'DJ', 'Djibouti'),
(67, 'DM', 'Dominica'),
(68, 'DO', 'Dominican Republic'),
(69, 'EC', 'Ecuador'),
(70, 'EG', 'Egypt'),
(71, 'SV', 'El Salvador'),
(72, 'GQ', 'Equatorial Guinea'),
(73, 'ER', 'Eritrea'),
(74, 'EE', 'Estonia'),
(75, 'ET', 'Ethiopia'),
(76, 'EZ', 'Eurozone'),
(77, 'FK', 'Falkland Islands'),
(78, 'FO', 'Faroe Islands'),
(79, 'FJ', 'Fiji'),
(80, 'FI', 'Finland'),
(81, 'FR', 'France'),
(82, 'GF', 'French Guiana'),
(83, 'PF', 'French Polynesia'),
(84, 'TF', 'French Southern Territories'),
(85, 'GA', 'Gabon'),
(86, 'GM', 'Gambia'),
(87, 'GE', 'Georgia'),
(88, 'DE', 'Germany'),
(89, 'GH', 'Ghana'),
(90, 'GI', 'Gibraltar'),
(91, 'GR', 'Greece'),
(92, 'GL', 'Greenland'),
(93, 'GD', 'Grenada'),
(94, 'GP', 'Guadeloupe'),
(95, 'GU', 'Guam'),
(96, 'GT', 'Guatemala'),
(97, 'GG', 'Guernsey'),
(98, 'GN', 'Guinea'),
(99, 'GW', 'Guinea-Bissau'),
(100, 'GY', 'Guyana'),
(101, 'HT', 'Haiti'),
(102, 'HN', 'Honduras'),
(103, 'HK', 'Hong Kong SAR China'),
(104, 'HU', 'Hungary'),
(105, 'IS', 'Iceland'),
(106, 'IN', 'India'),
(107, 'ID', 'Indonesia'),
(108, 'IR', 'Iran'),
(109, 'IQ', 'Iraq'),
(110, 'IE', 'Ireland'),
(111, 'IM', 'Isle of Man'),
(112, 'IL', 'Israel'),
(113, 'IT', 'Italy'),
(114, 'JM', 'Jamaica'),
(115, 'JP', 'Japan'),
(116, 'JE', 'Jersey'),
(117, 'JO', 'Jordan'),
(118, 'KZ', 'Kazakhstan'),
(119, 'KE', 'Kenya'),
(120, 'KI', 'Kiribati'),
(121, 'XK', 'Kosovo'),
(122, 'KW', 'Kuwait'),
(123, 'KG', 'Kyrgyzstan'),
(124, 'LA', 'Laos'),
(125, 'LV', 'Latvia'),
(126, 'LB', 'Lebanon'),
(127, 'LS', 'Lesotho'),
(128, 'LR', 'Liberia'),
(129, 'LY', 'Libya'),
(130, 'LI', 'Liechtenstein'),
(131, 'LT', 'Lithuania'),
(132, 'LU', 'Luxembourg'),
(133, 'MO', 'Macau SAR China'),
(134, 'MK', 'Macedonia'),
(135, 'MG', 'Madagascar'),
(136, 'MW', 'Malawi'),
(137, 'MY', 'Malaysia'),
(138, 'MV', 'Maldives'),
(139, 'ML', 'Mali'),
(140, 'MT', 'Malta'),
(141, 'MH', 'Marshall Islands'),
(142, 'MQ', 'Martinique'),
(143, 'MR', 'Mauritania'),
(144, 'MU', 'Mauritius'),
(145, 'YT', 'Mayotte'),
(146, 'MX', 'Mexico'),
(147, 'FM', 'Micronesia'),
(148, 'MD', 'Moldova'),
(149, 'MC', 'Monaco'),
(150, 'MN', 'Mongolia'),
(151, 'ME', 'Montenegro'),
(152, 'MS', 'Montserrat'),
(153, 'MA', 'Morocco'),
(154, 'MZ', 'Mozambique'),
(155, 'MM', 'Myanmar (Burma)'),
(156, 'NA', 'Namibia'),
(157, 'NR', 'Nauru'),
(158, 'NP', 'Nepal'),
(159, 'NL', 'Netherlands'),
(160, 'NC', 'New Caledonia'),
(161, 'NZ', 'New Zealand'),
(162, 'NI', 'Nicaragua'),
(163, 'NE', 'Niger'),
(164, 'NG', 'Nigeria'),
(165, 'NU', 'Niue'),
(166, 'NF', 'Norfolk Island'),
(167, 'KP', 'North Korea'),
(168, 'MP', 'Northern Mariana Islands'),
(169, 'NO', 'Norway'),
(170, 'OM', 'Oman'),
(171, 'PK', 'Pakistan'),
(172, 'PW', 'Palau'),
(173, 'PS', 'Palestinian Territories'),
(174, 'PA', 'Panama'),
(175, 'PG', 'Papua New Guinea'),
(176, 'PY', 'Paraguay'),
(177, 'PE', 'Peru'),
(178, 'PH', 'Philippines'),
(179, 'PN', 'Pitcairn Islands'),
(180, 'PL', 'Poland'),
(181, 'PT', 'Portugal'),
(182, 'PR', 'Puerto Rico'),
(183, 'QA', 'Qatar'),
(184, 'RE', 'Réunion'),
(185, 'RO', 'Romania'),
(186, 'RU', 'Russia'),
(187, 'RW', 'Rwanda'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'São Tomé & Príncipe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SX', 'Sint Maarten'),
(198, 'SK', 'Slovakia'),
(199, 'SI', 'Slovenia'),
(200, 'SB', 'Solomon Islands'),
(201, 'SO', 'Somalia'),
(202, 'ZA', 'South Africa'),
(203, 'GS', 'South Georgia & South Sandwich Islands'),
(204, 'KR', 'South Korea'),
(205, 'SS', 'South Sudan'),
(206, 'ES', 'Spain'),
(207, 'LK', 'Sri Lanka'),
(208, 'BL', 'St. Barthélemy'),
(209, 'SH', 'St. Helena'),
(210, 'KN', 'St. Kitts & Nevis'),
(211, 'LC', 'St. Lucia'),
(212, 'MF', 'St. Martin'),
(213, 'PM', 'St. Pierre & Miquelon'),
(214, 'VC', 'St. Vincent & Grenadines'),
(215, 'SD', 'Sudan'),
(216, 'SR', 'Suriname'),
(217, 'SJ', 'Svalbard & Jan Mayen'),
(218, 'SZ', 'Swaziland'),
(219, 'SE', 'Sweden'),
(220, 'CH', 'Switzerland'),
(221, 'SY', 'Syria'),
(222, 'TW', 'Taiwan'),
(223, 'TJ', 'Tajikistan'),
(224, 'TZ', 'Tanzania'),
(225, 'TH', 'Thailand'),
(226, 'TL', 'Timor-Leste'),
(227, 'TG', 'Togo'),
(228, 'TK', 'Tokelau'),
(229, 'TO', 'Tonga'),
(230, 'TT', 'Trinidad & Tobago'),
(231, 'TA', 'Tristan da Cunha'),
(232, 'TN', 'Tunisia'),
(233, 'TR', 'Turkey'),
(234, 'TM', 'Turkmenistan'),
(235, 'TC', 'Turks & Caicos Islands'),
(236, 'TV', 'Tuvalu'),
(237, 'UM', 'U.S. Outlying Islands'),
(238, 'VI', 'U.S. Virgin Islands'),
(239, 'UG', 'Uganda'),
(240, 'UA', 'Ukraine'),
(241, 'AE', 'United Arab Emirates'),
(242, 'GB', 'United Kingdom'),
(243, 'UN', 'United Nations'),
(244, 'US', 'United States'),
(245, 'UY', 'Uruguay'),
(246, 'UZ', 'Uzbekistan'),
(247, 'VU', 'Vanuatu'),
(248, 'VA', 'Vatican City'),
(249, 'VE', 'Venezuela'),
(250, 'VN', 'Vietnam'),
(251, 'WF', 'Wallis & Futuna'),
(252, 'EH', 'Western Sahara'),
(253, 'YE', 'Yemen'),
(254, 'ZM', 'Zambia'),
(255, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `country_states`
--

CREATE TABLE `country_states` (
  `id` int UNSIGNED NOT NULL,
  `country_id` int UNSIGNED DEFAULT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `country_states`
--

INSERT INTO `country_states` (`id`, `country_id`, `country_code`, `code`, `default_name`) VALUES
(1, 244, 'US', 'AL', 'Alabama'),
(2, 244, 'US', 'AK', 'Alaska'),
(3, 244, 'US', 'AS', 'American Samoa'),
(4, 244, 'US', 'AZ', 'Arizona'),
(5, 244, 'US', 'AR', 'Arkansas'),
(6, 244, 'US', 'AE', 'Armed Forces Africa'),
(7, 244, 'US', 'AA', 'Armed Forces Americas'),
(8, 244, 'US', 'AE', 'Armed Forces Canada'),
(9, 244, 'US', 'AE', 'Armed Forces Europe'),
(10, 244, 'US', 'AE', 'Armed Forces Middle East'),
(11, 244, 'US', 'AP', 'Armed Forces Pacific'),
(12, 244, 'US', 'CA', 'California'),
(13, 244, 'US', 'CO', 'Colorado'),
(14, 244, 'US', 'CT', 'Connecticut'),
(15, 244, 'US', 'DE', 'Delaware'),
(16, 244, 'US', 'DC', 'District of Columbia'),
(17, 244, 'US', 'FM', 'Federated States Of Micronesia'),
(18, 244, 'US', 'FL', 'Florida'),
(19, 244, 'US', 'GA', 'Georgia'),
(20, 244, 'US', 'GU', 'Guam'),
(21, 244, 'US', 'HI', 'Hawaii'),
(22, 244, 'US', 'ID', 'Idaho'),
(23, 244, 'US', 'IL', 'Illinois'),
(24, 244, 'US', 'IN', 'Indiana'),
(25, 244, 'US', 'IA', 'Iowa'),
(26, 244, 'US', 'KS', 'Kansas'),
(27, 244, 'US', 'KY', 'Kentucky'),
(28, 244, 'US', 'LA', 'Louisiana'),
(29, 244, 'US', 'ME', 'Maine'),
(30, 244, 'US', 'MH', 'Marshall Islands'),
(31, 244, 'US', 'MD', 'Maryland'),
(32, 244, 'US', 'MA', 'Massachusetts'),
(33, 244, 'US', 'MI', 'Michigan'),
(34, 244, 'US', 'MN', 'Minnesota'),
(35, 244, 'US', 'MS', 'Mississippi'),
(36, 244, 'US', 'MO', 'Missouri'),
(37, 244, 'US', 'MT', 'Montana'),
(38, 244, 'US', 'NE', 'Nebraska'),
(39, 244, 'US', 'NV', 'Nevada'),
(40, 244, 'US', 'NH', 'New Hampshire'),
(41, 244, 'US', 'NJ', 'New Jersey'),
(42, 244, 'US', 'NM', 'New Mexico'),
(43, 244, 'US', 'NY', 'New York'),
(44, 244, 'US', 'NC', 'North Carolina'),
(45, 244, 'US', 'ND', 'North Dakota'),
(46, 244, 'US', 'MP', 'Northern Mariana Islands'),
(47, 244, 'US', 'OH', 'Ohio'),
(48, 244, 'US', 'OK', 'Oklahoma'),
(49, 244, 'US', 'OR', 'Oregon'),
(50, 244, 'US', 'PW', 'Palau'),
(51, 244, 'US', 'PA', 'Pennsylvania'),
(52, 244, 'US', 'PR', 'Puerto Rico'),
(53, 244, 'US', 'RI', 'Rhode Island'),
(54, 244, 'US', 'SC', 'South Carolina'),
(55, 244, 'US', 'SD', 'South Dakota'),
(56, 244, 'US', 'TN', 'Tennessee'),
(57, 244, 'US', 'TX', 'Texas'),
(58, 244, 'US', 'UT', 'Utah'),
(59, 244, 'US', 'VT', 'Vermont'),
(60, 244, 'US', 'VI', 'Virgin Islands'),
(61, 244, 'US', 'VA', 'Virginia'),
(62, 244, 'US', 'WA', 'Washington'),
(63, 244, 'US', 'WV', 'West Virginia'),
(64, 244, 'US', 'WI', 'Wisconsin'),
(65, 244, 'US', 'WY', 'Wyoming'),
(66, 40, 'CA', 'AB', 'Alberta'),
(67, 40, 'CA', 'BC', 'British Columbia'),
(68, 40, 'CA', 'MB', 'Manitoba'),
(69, 40, 'CA', 'NL', 'Newfoundland and Labrador'),
(70, 40, 'CA', 'NB', 'New Brunswick'),
(71, 40, 'CA', 'NS', 'Nova Scotia'),
(72, 40, 'CA', 'NT', 'Northwest Territories'),
(73, 40, 'CA', 'NU', 'Nunavut'),
(74, 40, 'CA', 'ON', 'Ontario'),
(75, 40, 'CA', 'PE', 'Prince Edward Island'),
(76, 40, 'CA', 'QC', 'Quebec'),
(77, 40, 'CA', 'SK', 'Saskatchewan'),
(78, 40, 'CA', 'YT', 'Yukon Territory'),
(79, 88, 'DE', 'NDS', 'Niedersachsen'),
(80, 88, 'DE', 'BAW', 'Baden-Württemberg'),
(81, 88, 'DE', 'BAY', 'Bayern'),
(82, 88, 'DE', 'BER', 'Berlin'),
(83, 88, 'DE', 'BRG', 'Brandenburg'),
(84, 88, 'DE', 'BRE', 'Bremen'),
(85, 88, 'DE', 'HAM', 'Hamburg'),
(86, 88, 'DE', 'HES', 'Hessen'),
(87, 88, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
(88, 88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
(89, 88, 'DE', 'RHE', 'Rheinland-Pfalz'),
(90, 88, 'DE', 'SAR', 'Saarland'),
(91, 88, 'DE', 'SAS', 'Sachsen'),
(92, 88, 'DE', 'SAC', 'Sachsen-Anhalt'),
(93, 88, 'DE', 'SCN', 'Schleswig-Holstein'),
(94, 88, 'DE', 'THE', 'Thüringen'),
(95, 16, 'AT', 'WI', 'Wien'),
(96, 16, 'AT', 'NO', 'Niederösterreich'),
(97, 16, 'AT', 'OO', 'Oberösterreich'),
(98, 16, 'AT', 'SB', 'Salzburg'),
(99, 16, 'AT', 'KN', 'Kärnten'),
(100, 16, 'AT', 'ST', 'Steiermark'),
(101, 16, 'AT', 'TI', 'Tirol'),
(102, 16, 'AT', 'BL', 'Burgenland'),
(103, 16, 'AT', 'VB', 'Vorarlberg'),
(104, 220, 'CH', 'AG', 'Aargau'),
(105, 220, 'CH', 'AI', 'Appenzell Innerrhoden'),
(106, 220, 'CH', 'AR', 'Appenzell Ausserrhoden'),
(107, 220, 'CH', 'BE', 'Bern'),
(108, 220, 'CH', 'BL', 'Basel-Landschaft'),
(109, 220, 'CH', 'BS', 'Basel-Stadt'),
(110, 220, 'CH', 'FR', 'Freiburg'),
(111, 220, 'CH', 'GE', 'Genf'),
(112, 220, 'CH', 'GL', 'Glarus'),
(113, 220, 'CH', 'GR', 'Graubünden'),
(114, 220, 'CH', 'JU', 'Jura'),
(115, 220, 'CH', 'LU', 'Luzern'),
(116, 220, 'CH', 'NE', 'Neuenburg'),
(117, 220, 'CH', 'NW', 'Nidwalden'),
(118, 220, 'CH', 'OW', 'Obwalden'),
(119, 220, 'CH', 'SG', 'St. Gallen'),
(120, 220, 'CH', 'SH', 'Schaffhausen'),
(121, 220, 'CH', 'SO', 'Solothurn'),
(122, 220, 'CH', 'SZ', 'Schwyz'),
(123, 220, 'CH', 'TG', 'Thurgau'),
(124, 220, 'CH', 'TI', 'Tessin'),
(125, 220, 'CH', 'UR', 'Uri'),
(126, 220, 'CH', 'VD', 'Waadt'),
(127, 220, 'CH', 'VS', 'Wallis'),
(128, 220, 'CH', 'ZG', 'Zug'),
(129, 220, 'CH', 'ZH', 'Zürich'),
(130, 206, 'ES', 'A Coruсa', 'A Coruña'),
(131, 206, 'ES', 'Alava', 'Alava'),
(132, 206, 'ES', 'Albacete', 'Albacete'),
(133, 206, 'ES', 'Alicante', 'Alicante'),
(134, 206, 'ES', 'Almeria', 'Almeria'),
(135, 206, 'ES', 'Asturias', 'Asturias'),
(136, 206, 'ES', 'Avila', 'Avila'),
(137, 206, 'ES', 'Badajoz', 'Badajoz'),
(138, 206, 'ES', 'Baleares', 'Baleares'),
(139, 206, 'ES', 'Barcelona', 'Barcelona'),
(140, 206, 'ES', 'Burgos', 'Burgos'),
(141, 206, 'ES', 'Caceres', 'Caceres'),
(142, 206, 'ES', 'Cadiz', 'Cadiz'),
(143, 206, 'ES', 'Cantabria', 'Cantabria'),
(144, 206, 'ES', 'Castellon', 'Castellon'),
(145, 206, 'ES', 'Ceuta', 'Ceuta'),
(146, 206, 'ES', 'Ciudad Real', 'Ciudad Real'),
(147, 206, 'ES', 'Cordoba', 'Cordoba'),
(148, 206, 'ES', 'Cuenca', 'Cuenca'),
(149, 206, 'ES', 'Girona', 'Girona'),
(150, 206, 'ES', 'Granada', 'Granada'),
(151, 206, 'ES', 'Guadalajara', 'Guadalajara'),
(152, 206, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(153, 206, 'ES', 'Huelva', 'Huelva'),
(154, 206, 'ES', 'Huesca', 'Huesca'),
(155, 206, 'ES', 'Jaen', 'Jaen'),
(156, 206, 'ES', 'La Rioja', 'La Rioja'),
(157, 206, 'ES', 'Las Palmas', 'Las Palmas'),
(158, 206, 'ES', 'Leon', 'Leon'),
(159, 206, 'ES', 'Lleida', 'Lleida'),
(160, 206, 'ES', 'Lugo', 'Lugo'),
(161, 206, 'ES', 'Madrid', 'Madrid'),
(162, 206, 'ES', 'Malaga', 'Malaga'),
(163, 206, 'ES', 'Melilla', 'Melilla'),
(164, 206, 'ES', 'Murcia', 'Murcia'),
(165, 206, 'ES', 'Navarra', 'Navarra'),
(166, 206, 'ES', 'Ourense', 'Ourense'),
(167, 206, 'ES', 'Palencia', 'Palencia'),
(168, 206, 'ES', 'Pontevedra', 'Pontevedra'),
(169, 206, 'ES', 'Salamanca', 'Salamanca'),
(170, 206, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 206, 'ES', 'Segovia', 'Segovia'),
(172, 206, 'ES', 'Sevilla', 'Sevilla'),
(173, 206, 'ES', 'Soria', 'Soria'),
(174, 206, 'ES', 'Tarragona', 'Tarragona'),
(175, 206, 'ES', 'Teruel', 'Teruel'),
(176, 206, 'ES', 'Toledo', 'Toledo'),
(177, 206, 'ES', 'Valencia', 'Valencia'),
(178, 206, 'ES', 'Valladolid', 'Valladolid'),
(179, 206, 'ES', 'Vizcaya', 'Vizcaya'),
(180, 206, 'ES', 'Zamora', 'Zamora'),
(181, 206, 'ES', 'Zaragoza', 'Zaragoza'),
(182, 81, 'FR', '1', 'Ain'),
(183, 81, 'FR', '2', 'Aisne'),
(184, 81, 'FR', '3', 'Allier'),
(185, 81, 'FR', '4', 'Alpes-de-Haute-Provence'),
(186, 81, 'FR', '5', 'Hautes-Alpes'),
(187, 81, 'FR', '6', 'Alpes-Maritimes'),
(188, 81, 'FR', '7', 'Ardèche'),
(189, 81, 'FR', '8', 'Ardennes'),
(190, 81, 'FR', '9', 'Ariège'),
(191, 81, 'FR', '10', 'Aube'),
(192, 81, 'FR', '11', 'Aude'),
(193, 81, 'FR', '12', 'Aveyron'),
(194, 81, 'FR', '13', 'Bouches-du-Rhône'),
(195, 81, 'FR', '14', 'Calvados'),
(196, 81, 'FR', '15', 'Cantal'),
(197, 81, 'FR', '16', 'Charente'),
(198, 81, 'FR', '17', 'Charente-Maritime'),
(199, 81, 'FR', '18', 'Cher'),
(200, 81, 'FR', '19', 'Corrèze'),
(201, 81, 'FR', '2A', 'Corse-du-Sud'),
(202, 81, 'FR', '2B', 'Haute-Corse'),
(203, 81, 'FR', '21', 'Côte-d\'Or'),
(204, 81, 'FR', '22', 'Côtes-d\'Armor'),
(205, 81, 'FR', '23', 'Creuse'),
(206, 81, 'FR', '24', 'Dordogne'),
(207, 81, 'FR', '25', 'Doubs'),
(208, 81, 'FR', '26', 'Drôme'),
(209, 81, 'FR', '27', 'Eure'),
(210, 81, 'FR', '28', 'Eure-et-Loir'),
(211, 81, 'FR', '29', 'Finistère'),
(212, 81, 'FR', '30', 'Gard'),
(213, 81, 'FR', '31', 'Haute-Garonne'),
(214, 81, 'FR', '32', 'Gers'),
(215, 81, 'FR', '33', 'Gironde'),
(216, 81, 'FR', '34', 'Hérault'),
(217, 81, 'FR', '35', 'Ille-et-Vilaine'),
(218, 81, 'FR', '36', 'Indre'),
(219, 81, 'FR', '37', 'Indre-et-Loire'),
(220, 81, 'FR', '38', 'Isère'),
(221, 81, 'FR', '39', 'Jura'),
(222, 81, 'FR', '40', 'Landes'),
(223, 81, 'FR', '41', 'Loir-et-Cher'),
(224, 81, 'FR', '42', 'Loire'),
(225, 81, 'FR', '43', 'Haute-Loire'),
(226, 81, 'FR', '44', 'Loire-Atlantique'),
(227, 81, 'FR', '45', 'Loiret'),
(228, 81, 'FR', '46', 'Lot'),
(229, 81, 'FR', '47', 'Lot-et-Garonne'),
(230, 81, 'FR', '48', 'Lozère'),
(231, 81, 'FR', '49', 'Maine-et-Loire'),
(232, 81, 'FR', '50', 'Manche'),
(233, 81, 'FR', '51', 'Marne'),
(234, 81, 'FR', '52', 'Haute-Marne'),
(235, 81, 'FR', '53', 'Mayenne'),
(236, 81, 'FR', '54', 'Meurthe-et-Moselle'),
(237, 81, 'FR', '55', 'Meuse'),
(238, 81, 'FR', '56', 'Morbihan'),
(239, 81, 'FR', '57', 'Moselle'),
(240, 81, 'FR', '58', 'Nièvre'),
(241, 81, 'FR', '59', 'Nord'),
(242, 81, 'FR', '60', 'Oise'),
(243, 81, 'FR', '61', 'Orne'),
(244, 81, 'FR', '62', 'Pas-de-Calais'),
(245, 81, 'FR', '63', 'Puy-de-Dôme'),
(246, 81, 'FR', '64', 'Pyrénées-Atlantiques'),
(247, 81, 'FR', '65', 'Hautes-Pyrénées'),
(248, 81, 'FR', '66', 'Pyrénées-Orientales'),
(249, 81, 'FR', '67', 'Bas-Rhin'),
(250, 81, 'FR', '68', 'Haut-Rhin'),
(251, 81, 'FR', '69', 'Rhône'),
(252, 81, 'FR', '70', 'Haute-Saône'),
(253, 81, 'FR', '71', 'Saône-et-Loire'),
(254, 81, 'FR', '72', 'Sarthe'),
(255, 81, 'FR', '73', 'Savoie'),
(256, 81, 'FR', '74', 'Haute-Savoie'),
(257, 81, 'FR', '75', 'Paris'),
(258, 81, 'FR', '76', 'Seine-Maritime'),
(259, 81, 'FR', '77', 'Seine-et-Marne'),
(260, 81, 'FR', '78', 'Yvelines'),
(261, 81, 'FR', '79', 'Deux-Sèvres'),
(262, 81, 'FR', '80', 'Somme'),
(263, 81, 'FR', '81', 'Tarn'),
(264, 81, 'FR', '82', 'Tarn-et-Garonne'),
(265, 81, 'FR', '83', 'Var'),
(266, 81, 'FR', '84', 'Vaucluse'),
(267, 81, 'FR', '85', 'Vendée'),
(268, 81, 'FR', '86', 'Vienne'),
(269, 81, 'FR', '87', 'Haute-Vienne'),
(270, 81, 'FR', '88', 'Vosges'),
(271, 81, 'FR', '89', 'Yonne'),
(272, 81, 'FR', '90', 'Territoire-de-Belfort'),
(273, 81, 'FR', '91', 'Essonne'),
(274, 81, 'FR', '92', 'Hauts-de-Seine'),
(275, 81, 'FR', '93', 'Seine-Saint-Denis'),
(276, 81, 'FR', '94', 'Val-de-Marne'),
(277, 81, 'FR', '95', 'Val-d\'Oise'),
(278, 185, 'RO', 'AB', 'Alba'),
(279, 185, 'RO', 'AR', 'Arad'),
(280, 185, 'RO', 'AG', 'Argeş'),
(281, 185, 'RO', 'BC', 'Bacău'),
(282, 185, 'RO', 'BH', 'Bihor'),
(283, 185, 'RO', 'BN', 'Bistriţa-Năsăud'),
(284, 185, 'RO', 'BT', 'Botoşani'),
(285, 185, 'RO', 'BV', 'Braşov'),
(286, 185, 'RO', 'BR', 'Brăila'),
(287, 185, 'RO', 'B', 'Bucureşti'),
(288, 185, 'RO', 'BZ', 'Buzău'),
(289, 185, 'RO', 'CS', 'Caraş-Severin'),
(290, 185, 'RO', 'CL', 'Călăraşi'),
(291, 185, 'RO', 'CJ', 'Cluj'),
(292, 185, 'RO', 'CT', 'Constanţa'),
(293, 185, 'RO', 'CV', 'Covasna'),
(294, 185, 'RO', 'DB', 'Dâmboviţa'),
(295, 185, 'RO', 'DJ', 'Dolj'),
(296, 185, 'RO', 'GL', 'Galaţi'),
(297, 185, 'RO', 'GR', 'Giurgiu'),
(298, 185, 'RO', 'GJ', 'Gorj'),
(299, 185, 'RO', 'HR', 'Harghita'),
(300, 185, 'RO', 'HD', 'Hunedoara'),
(301, 185, 'RO', 'IL', 'Ialomiţa'),
(302, 185, 'RO', 'IS', 'Iaşi'),
(303, 185, 'RO', 'IF', 'Ilfov'),
(304, 185, 'RO', 'MM', 'Maramureş'),
(305, 185, 'RO', 'MH', 'Mehedinţi'),
(306, 185, 'RO', 'MS', 'Mureş'),
(307, 185, 'RO', 'NT', 'Neamţ'),
(308, 185, 'RO', 'OT', 'Olt'),
(309, 185, 'RO', 'PH', 'Prahova'),
(310, 185, 'RO', 'SM', 'Satu-Mare'),
(311, 185, 'RO', 'SJ', 'Sălaj'),
(312, 185, 'RO', 'SB', 'Sibiu'),
(313, 185, 'RO', 'SV', 'Suceava'),
(314, 185, 'RO', 'TR', 'Teleorman'),
(315, 185, 'RO', 'TM', 'Timiş'),
(316, 185, 'RO', 'TL', 'Tulcea'),
(317, 185, 'RO', 'VS', 'Vaslui'),
(318, 185, 'RO', 'VL', 'Vâlcea'),
(319, 185, 'RO', 'VN', 'Vrancea'),
(320, 80, 'FI', 'Lappi', 'Lappi'),
(321, 80, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa'),
(322, 80, 'FI', 'Kainuu', 'Kainuu'),
(323, 80, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala'),
(324, 80, 'FI', 'Pohjois-Savo', 'Pohjois-Savo'),
(325, 80, 'FI', 'Etelä-Savo', 'Etelä-Savo'),
(326, 80, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa'),
(327, 80, 'FI', 'Pohjanmaa', 'Pohjanmaa'),
(328, 80, 'FI', 'Pirkanmaa', 'Pirkanmaa'),
(329, 80, 'FI', 'Satakunta', 'Satakunta'),
(330, 80, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa'),
(331, 80, 'FI', 'Keski-Suomi', 'Keski-Suomi'),
(332, 80, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi'),
(333, 80, 'FI', 'Etelä-Karjala', 'Etelä-Karjala'),
(334, 80, 'FI', 'Päijät-Häme', 'Päijät-Häme'),
(335, 80, 'FI', 'Kanta-Häme', 'Kanta-Häme'),
(336, 80, 'FI', 'Uusimaa', 'Uusimaa'),
(337, 80, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa'),
(338, 80, 'FI', 'Kymenlaakso', 'Kymenlaakso'),
(339, 80, 'FI', 'Ahvenanmaa', 'Ahvenanmaa'),
(340, 74, 'EE', 'EE-37', 'Harjumaa'),
(341, 74, 'EE', 'EE-39', 'Hiiumaa'),
(342, 74, 'EE', 'EE-44', 'Ida-Virumaa'),
(343, 74, 'EE', 'EE-49', 'Jõgevamaa'),
(344, 74, 'EE', 'EE-51', 'Järvamaa'),
(345, 74, 'EE', 'EE-57', 'Läänemaa'),
(346, 74, 'EE', 'EE-59', 'Lääne-Virumaa'),
(347, 74, 'EE', 'EE-65', 'Põlvamaa'),
(348, 74, 'EE', 'EE-67', 'Pärnumaa'),
(349, 74, 'EE', 'EE-70', 'Raplamaa'),
(350, 74, 'EE', 'EE-74', 'Saaremaa'),
(351, 74, 'EE', 'EE-78', 'Tartumaa'),
(352, 74, 'EE', 'EE-82', 'Valgamaa'),
(353, 74, 'EE', 'EE-84', 'Viljandimaa'),
(354, 74, 'EE', 'EE-86', 'Võrumaa'),
(355, 125, 'LV', 'LV-DGV', 'Daugavpils'),
(356, 125, 'LV', 'LV-JEL', 'Jelgava'),
(357, 125, 'LV', 'Jēkabpils', 'Jēkabpils'),
(358, 125, 'LV', 'LV-JUR', 'Jūrmala'),
(359, 125, 'LV', 'LV-LPX', 'Liepāja'),
(360, 125, 'LV', 'LV-LE', 'Liepājas novads'),
(361, 125, 'LV', 'LV-REZ', 'Rēzekne'),
(362, 125, 'LV', 'LV-RIX', 'Rīga'),
(363, 125, 'LV', 'LV-RI', 'Rīgas novads'),
(364, 125, 'LV', 'Valmiera', 'Valmiera'),
(365, 125, 'LV', 'LV-VEN', 'Ventspils'),
(366, 125, 'LV', 'Aglonas novads', 'Aglonas novads'),
(367, 125, 'LV', 'LV-AI', 'Aizkraukles novads'),
(368, 125, 'LV', 'Aizputes novads', 'Aizputes novads'),
(369, 125, 'LV', 'Aknīstes novads', 'Aknīstes novads'),
(370, 125, 'LV', 'Alojas novads', 'Alojas novads'),
(371, 125, 'LV', 'Alsungas novads', 'Alsungas novads'),
(372, 125, 'LV', 'LV-AL', 'Alūksnes novads'),
(373, 125, 'LV', 'Amatas novads', 'Amatas novads'),
(374, 125, 'LV', 'Apes novads', 'Apes novads'),
(375, 125, 'LV', 'Auces novads', 'Auces novads'),
(376, 125, 'LV', 'Babītes novads', 'Babītes novads'),
(377, 125, 'LV', 'Baldones novads', 'Baldones novads'),
(378, 125, 'LV', 'Baltinavas novads', 'Baltinavas novads'),
(379, 125, 'LV', 'LV-BL', 'Balvu novads'),
(380, 125, 'LV', 'LV-BU', 'Bauskas novads'),
(381, 125, 'LV', 'Beverīnas novads', 'Beverīnas novads'),
(382, 125, 'LV', 'Brocēnu novads', 'Brocēnu novads'),
(383, 125, 'LV', 'Burtnieku novads', 'Burtnieku novads'),
(384, 125, 'LV', 'Carnikavas novads', 'Carnikavas novads'),
(385, 125, 'LV', 'Cesvaines novads', 'Cesvaines novads'),
(386, 125, 'LV', 'Ciblas novads', 'Ciblas novads'),
(387, 125, 'LV', 'LV-CE', 'Cēsu novads'),
(388, 125, 'LV', 'Dagdas novads', 'Dagdas novads'),
(389, 125, 'LV', 'LV-DA', 'Daugavpils novads'),
(390, 125, 'LV', 'LV-DO', 'Dobeles novads'),
(391, 125, 'LV', 'Dundagas novads', 'Dundagas novads'),
(392, 125, 'LV', 'Durbes novads', 'Durbes novads'),
(393, 125, 'LV', 'Engures novads', 'Engures novads'),
(394, 125, 'LV', 'Garkalnes novads', 'Garkalnes novads'),
(395, 125, 'LV', 'Grobiņas novads', 'Grobiņas novads'),
(396, 125, 'LV', 'LV-GU', 'Gulbenes novads'),
(397, 125, 'LV', 'Iecavas novads', 'Iecavas novads'),
(398, 125, 'LV', 'Ikšķiles novads', 'Ikšķiles novads'),
(399, 125, 'LV', 'Ilūkstes novads', 'Ilūkstes novads'),
(400, 125, 'LV', 'Inčukalna novads', 'Inčukalna novads'),
(401, 125, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads'),
(402, 125, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads'),
(403, 125, 'LV', 'Jaunpils novads', 'Jaunpils novads'),
(404, 125, 'LV', 'LV-JL', 'Jelgavas novads'),
(405, 125, 'LV', 'LV-JK', 'Jēkabpils novads'),
(406, 125, 'LV', 'Kandavas novads', 'Kandavas novads'),
(407, 125, 'LV', 'Kokneses novads', 'Kokneses novads'),
(408, 125, 'LV', 'Krimuldas novads', 'Krimuldas novads'),
(409, 125, 'LV', 'Krustpils novads', 'Krustpils novads'),
(410, 125, 'LV', 'LV-KR', 'Krāslavas novads'),
(411, 125, 'LV', 'LV-KU', 'Kuldīgas novads'),
(412, 125, 'LV', 'Kārsavas novads', 'Kārsavas novads'),
(413, 125, 'LV', 'Lielvārdes novads', 'Lielvārdes novads'),
(414, 125, 'LV', 'LV-LM', 'Limbažu novads'),
(415, 125, 'LV', 'Lubānas novads', 'Lubānas novads'),
(416, 125, 'LV', 'LV-LU', 'Ludzas novads'),
(417, 125, 'LV', 'Līgatnes novads', 'Līgatnes novads'),
(418, 125, 'LV', 'Līvānu novads', 'Līvānu novads'),
(419, 125, 'LV', 'LV-MA', 'Madonas novads'),
(420, 125, 'LV', 'Mazsalacas novads', 'Mazsalacas novads'),
(421, 125, 'LV', 'Mālpils novads', 'Mālpils novads'),
(422, 125, 'LV', 'Mārupes novads', 'Mārupes novads'),
(423, 125, 'LV', 'Naukšēnu novads', 'Naukšēnu novads'),
(424, 125, 'LV', 'Neretas novads', 'Neretas novads'),
(425, 125, 'LV', 'Nīcas novads', 'Nīcas novads'),
(426, 125, 'LV', 'LV-OG', 'Ogres novads'),
(427, 125, 'LV', 'Olaines novads', 'Olaines novads'),
(428, 125, 'LV', 'Ozolnieku novads', 'Ozolnieku novads'),
(429, 125, 'LV', 'LV-PR', 'Preiļu novads'),
(430, 125, 'LV', 'Priekules novads', 'Priekules novads'),
(431, 125, 'LV', 'Priekuļu novads', 'Priekuļu novads'),
(432, 125, 'LV', 'Pārgaujas novads', 'Pārgaujas novads'),
(433, 125, 'LV', 'Pāvilostas novads', 'Pāvilostas novads'),
(434, 125, 'LV', 'Pļaviņu novads', 'Pļaviņu novads'),
(435, 125, 'LV', 'Raunas novads', 'Raunas novads'),
(436, 125, 'LV', 'Riebiņu novads', 'Riebiņu novads'),
(437, 125, 'LV', 'Rojas novads', 'Rojas novads'),
(438, 125, 'LV', 'Ropažu novads', 'Ropažu novads'),
(439, 125, 'LV', 'Rucavas novads', 'Rucavas novads'),
(440, 125, 'LV', 'Rugāju novads', 'Rugāju novads'),
(441, 125, 'LV', 'Rundāles novads', 'Rundāles novads'),
(442, 125, 'LV', 'LV-RE', 'Rēzeknes novads'),
(443, 125, 'LV', 'Rūjienas novads', 'Rūjienas novads'),
(444, 125, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads'),
(445, 125, 'LV', 'Salas novads', 'Salas novads'),
(446, 125, 'LV', 'Salaspils novads', 'Salaspils novads'),
(447, 125, 'LV', 'LV-SA', 'Saldus novads'),
(448, 125, 'LV', 'Saulkrastu novads', 'Saulkrastu novads'),
(449, 125, 'LV', 'Siguldas novads', 'Siguldas novads'),
(450, 125, 'LV', 'Skrundas novads', 'Skrundas novads'),
(451, 125, 'LV', 'Skrīveru novads', 'Skrīveru novads'),
(452, 125, 'LV', 'Smiltenes novads', 'Smiltenes novads'),
(453, 125, 'LV', 'Stopiņu novads', 'Stopiņu novads'),
(454, 125, 'LV', 'Strenču novads', 'Strenču novads'),
(455, 125, 'LV', 'Sējas novads', 'Sējas novads'),
(456, 125, 'LV', 'LV-TA', 'Talsu novads'),
(457, 125, 'LV', 'LV-TU', 'Tukuma novads'),
(458, 125, 'LV', 'Tērvetes novads', 'Tērvetes novads'),
(459, 125, 'LV', 'Vaiņodes novads', 'Vaiņodes novads'),
(460, 125, 'LV', 'LV-VK', 'Valkas novads'),
(461, 125, 'LV', 'LV-VM', 'Valmieras novads'),
(462, 125, 'LV', 'Varakļānu novads', 'Varakļānu novads'),
(463, 125, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads'),
(464, 125, 'LV', 'Vecumnieku novads', 'Vecumnieku novads'),
(465, 125, 'LV', 'LV-VE', 'Ventspils novads'),
(466, 125, 'LV', 'Viesītes novads', 'Viesītes novads'),
(467, 125, 'LV', 'Viļakas novads', 'Viļakas novads'),
(468, 125, 'LV', 'Viļānu novads', 'Viļānu novads'),
(469, 125, 'LV', 'Vārkavas novads', 'Vārkavas novads'),
(470, 125, 'LV', 'Zilupes novads', 'Zilupes novads'),
(471, 125, 'LV', 'Ādažu novads', 'Ādažu novads'),
(472, 125, 'LV', 'Ērgļu novads', 'Ērgļu novads'),
(473, 125, 'LV', 'Ķeguma novads', 'Ķeguma novads'),
(474, 125, 'LV', 'Ķekavas novads', 'Ķekavas novads'),
(475, 131, 'LT', 'LT-AL', 'Alytaus Apskritis'),
(476, 131, 'LT', 'LT-KU', 'Kauno Apskritis'),
(477, 131, 'LT', 'LT-KL', 'Klaipėdos Apskritis'),
(478, 131, 'LT', 'LT-MR', 'Marijampolės Apskritis'),
(479, 131, 'LT', 'LT-PN', 'Panevėžio Apskritis'),
(480, 131, 'LT', 'LT-SA', 'Šiaulių Apskritis'),
(481, 131, 'LT', 'LT-TA', 'Tauragės Apskritis'),
(482, 131, 'LT', 'LT-TE', 'Telšių Apskritis'),
(483, 131, 'LT', 'LT-UT', 'Utenos Apskritis'),
(484, 131, 'LT', 'LT-VL', 'Vilniaus Apskritis'),
(485, 31, 'BR', 'AC', 'Acre'),
(486, 31, 'BR', 'AL', 'Alagoas'),
(487, 31, 'BR', 'AP', 'Amapá'),
(488, 31, 'BR', 'AM', 'Amazonas'),
(489, 31, 'BR', 'BA', 'Bahia'),
(490, 31, 'BR', 'CE', 'Ceará'),
(491, 31, 'BR', 'ES', 'Espírito Santo'),
(492, 31, 'BR', 'GO', 'Goiás'),
(493, 31, 'BR', 'MA', 'Maranhão'),
(494, 31, 'BR', 'MT', 'Mato Grosso'),
(495, 31, 'BR', 'MS', 'Mato Grosso do Sul'),
(496, 31, 'BR', 'MG', 'Minas Gerais'),
(497, 31, 'BR', 'PA', 'Pará'),
(498, 31, 'BR', 'PB', 'Paraíba'),
(499, 31, 'BR', 'PR', 'Paraná'),
(500, 31, 'BR', 'PE', 'Pernambuco'),
(501, 31, 'BR', 'PI', 'Piauí'),
(502, 31, 'BR', 'RJ', 'Rio de Janeiro'),
(503, 31, 'BR', 'RN', 'Rio Grande do Norte'),
(504, 31, 'BR', 'RS', 'Rio Grande do Sul'),
(505, 31, 'BR', 'RO', 'Rondônia'),
(506, 31, 'BR', 'RR', 'Roraima'),
(507, 31, 'BR', 'SC', 'Santa Catarina'),
(508, 31, 'BR', 'SP', 'São Paulo'),
(509, 31, 'BR', 'SE', 'Sergipe'),
(510, 31, 'BR', 'TO', 'Tocantins'),
(511, 31, 'BR', 'DF', 'Distrito Federal'),
(512, 59, 'HR', 'HR-01', 'Zagrebačka županija'),
(513, 59, 'HR', 'HR-02', 'Krapinsko-zagorska županija'),
(514, 59, 'HR', 'HR-03', 'Sisačko-moslavačka županija'),
(515, 59, 'HR', 'HR-04', 'Karlovačka županija'),
(516, 59, 'HR', 'HR-05', 'Varaždinska županija'),
(517, 59, 'HR', 'HR-06', 'Koprivničko-križevačka županija'),
(518, 59, 'HR', 'HR-07', 'Bjelovarsko-bilogorska županija'),
(519, 59, 'HR', 'HR-08', 'Primorsko-goranska županija'),
(520, 59, 'HR', 'HR-09', 'Ličko-senjska županija'),
(521, 59, 'HR', 'HR-10', 'Virovitičko-podravska županija'),
(522, 59, 'HR', 'HR-11', 'Požeško-slavonska županija'),
(523, 59, 'HR', 'HR-12', 'Brodsko-posavska županija'),
(524, 59, 'HR', 'HR-13', 'Zadarska županija'),
(525, 59, 'HR', 'HR-14', 'Osječko-baranjska županija'),
(526, 59, 'HR', 'HR-15', 'Šibensko-kninska županija'),
(527, 59, 'HR', 'HR-16', 'Vukovarsko-srijemska županija'),
(528, 59, 'HR', 'HR-17', 'Splitsko-dalmatinska županija'),
(529, 59, 'HR', 'HR-18', 'Istarska županija'),
(530, 59, 'HR', 'HR-19', 'Dubrovačko-neretvanska županija'),
(531, 59, 'HR', 'HR-20', 'Međimurska županija'),
(532, 59, 'HR', 'HR-21', 'Grad Zagreb'),
(533, 106, 'IN', 'AN', 'Andaman and Nicobar Islands'),
(534, 106, 'IN', 'AP', 'Andhra Pradesh'),
(535, 106, 'IN', 'AR', 'Arunachal Pradesh'),
(536, 106, 'IN', 'AS', 'Assam'),
(537, 106, 'IN', 'BR', 'Bihar'),
(538, 106, 'IN', 'CH', 'Chandigarh'),
(539, 106, 'IN', 'CT', 'Chhattisgarh'),
(540, 106, 'IN', 'DN', 'Dadra and Nagar Haveli'),
(541, 106, 'IN', 'DD', 'Daman and Diu'),
(542, 106, 'IN', 'DL', 'Delhi'),
(543, 106, 'IN', 'GA', 'Goa'),
(544, 106, 'IN', 'GJ', 'Gujarat'),
(545, 106, 'IN', 'HR', 'Haryana'),
(546, 106, 'IN', 'HP', 'Himachal Pradesh'),
(547, 106, 'IN', 'JK', 'Jammu and Kashmir'),
(548, 106, 'IN', 'JH', 'Jharkhand'),
(549, 106, 'IN', 'KA', 'Karnataka'),
(550, 106, 'IN', 'KL', 'Kerala'),
(551, 106, 'IN', 'LD', 'Lakshadweep'),
(552, 106, 'IN', 'MP', 'Madhya Pradesh'),
(553, 106, 'IN', 'MH', 'Maharashtra'),
(554, 106, 'IN', 'MN', 'Manipur'),
(555, 106, 'IN', 'ML', 'Meghalaya'),
(556, 106, 'IN', 'MZ', 'Mizoram'),
(557, 106, 'IN', 'NL', 'Nagaland'),
(558, 106, 'IN', 'OR', 'Odisha'),
(559, 106, 'IN', 'PY', 'Puducherry'),
(560, 106, 'IN', 'PB', 'Punjab'),
(561, 106, 'IN', 'RJ', 'Rajasthan'),
(562, 106, 'IN', 'SK', 'Sikkim'),
(563, 106, 'IN', 'TN', 'Tamil Nadu'),
(564, 106, 'IN', 'TG', 'Telangana'),
(565, 106, 'IN', 'TR', 'Tripura'),
(566, 106, 'IN', 'UP', 'Uttar Pradesh'),
(567, 106, 'IN', 'UT', 'Uttarakhand'),
(568, 106, 'IN', 'WB', 'West Bengal'),
(569, 176, 'PY', 'PY-16', 'Alto Paraguay'),
(570, 176, 'PY', 'PY-10', 'Alto Paraná'),
(571, 176, 'PY', 'PY-13', 'Amambay'),
(572, 176, 'PY', 'PY-ASU', 'Asunción'),
(573, 176, 'PY', 'PY-19', 'Boquerón'),
(574, 176, 'PY', 'PY-5', 'Caaguazú'),
(575, 176, 'PY', 'PY-6', 'Caazapá'),
(576, 176, 'PY', 'PY-14', 'Canindeyú'),
(577, 176, 'PY', 'PY-11', 'Central'),
(578, 176, 'PY', 'PY-1', 'Concepción'),
(579, 176, 'PY', 'PY-3', 'Cordillera'),
(580, 176, 'PY', 'PY-4', 'Guairá'),
(581, 176, 'PY', 'PY-7', 'Itapúa'),
(582, 176, 'PY', 'PY-8', 'Misiones'),
(583, 176, 'PY', 'PY-9', 'Paraguarí'),
(584, 176, 'PY', 'PY-15', 'Presidente Hayes'),
(585, 176, 'PY', 'PY-2', 'San Pedro'),
(586, 176, 'PY', 'PY-12', 'Ñeembucú');

-- --------------------------------------------------------

--
-- Table structure for table `country_state_translations`
--

CREATE TABLE `country_state_translations` (
  `id` int UNSIGNED NOT NULL,
  `country_state_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_name` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `country_translations`
--

CREATE TABLE `country_translations` (
  `id` int UNSIGNED NOT NULL,
  `country_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal` int UNSIGNED NOT NULL DEFAULT '2',
  `group_separator` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',',
  `decimal_separator` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '.',
  `currency_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `name`, `symbol`, `decimal`, `group_separator`, `decimal_separator`, `currency_position`, `created_at`, `updated_at`) VALUES
(1, 'USD', 'دلار امریکا', '$', 2, ',', '.', NULL, NULL, NULL),
(2, 'IRR', 'تومان ایران', 'تومان', 0, ',', ',', 'right_with_space', '2024-08-16 03:19:10', '2024-08-16 03:23:07');

-- --------------------------------------------------------

--
-- Table structure for table `currency_exchange_rates`
--

CREATE TABLE `currency_exchange_rates` (
  `id` int UNSIGNED NOT NULL,
  `rate` decimal(24,12) NOT NULL,
  `target_currency` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_group_id` int UNSIGNED DEFAULT NULL,
  `channel_id` int UNSIGNED DEFAULT NULL,
  `subscribed_to_news_letter` tinyint(1) NOT NULL DEFAULT '0',
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `is_suspended` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `gender`, `date_of_birth`, `email`, `phone`, `image`, `status`, `password`, `api_token`, `customer_group_id`, `channel_id`, `subscribed_to_news_letter`, `is_verified`, `is_suspended`, `token`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'ali', 'yazdanifar', NULL, NULL, 'ali.yazdani324@gmail.com', NULL, NULL, 1, '$2y$10$URBLdpPKMy7Smggvgvenl.b/mwSnDTAUMwbNUE4kJKyOwvA6pHRdq', '3w35TLg9wxbQ29w3XLPXqI6ALyADgpX7PadwAmSRw2HIS4O8XP2x8fKKRcBx0OfBJkCVhmbrJiQh9Vlc', 1, 1, 0, 1, 0, '7e1b820e737497310273a554f7b57384', NULL, '2024-08-15 11:38:06', '2024-08-15 11:38:06'),
(4, 'John', 'Doe', NULL, NULL, 'john@example.com', NULL, NULL, 1, '$2y$10$ipIfuPC9glY9asHptO.dFOjve9uF1pvdhGTb0.9xBiAsFfNq6b89u', 'l9XdB3IOgBcTw4YGztqKnujpHAsibLqa1OeXT1ADsnLMU4TTJVtBrpBnWZ4MNNApXcZYvn9ThySKfbbB', 2, NULL, 0, 1, 0, 'c77ab88b48d9451e4ccef94a88f104f2', NULL, '2024-08-16 06:07:00', '2024-08-16 06:07:00'),
(5, 'کاربر', 'جدید', NULL, NULL, 'newCustomer440593@example.com', '09391681434', NULL, 1, '$2y$10$KVvh4lTp6.lD/Bdz0RJJKelPAJ171rnRygEONQedZScv6Q51sWb16', '5|B2OhEhtHcCD8ARYp8uKuG3f5T8niveYyzrqLYhEX40d91a3c', NULL, 1, 0, 1, 0, '1a86ab18a05cb724bf6c4abe6c3b6de6', NULL, '2024-08-16 08:44:27', '2024-08-18 04:10:16'),
(9, 'cust', 'custy', NULL, NULL, 'a.yazdani324@gmail.com', '09391681435', NULL, 1, '$2y$10$Zly2o1Jqm6.mAm4BExgiducwdvXENS/URGujzEFSODKsjOWL61qs.', 'Hyfkfw3mDblea7ABXAE3uXjia3aWiX0glCmk7DcHinZM6A3D3me9q6npPzDMmSKWJp92pgYUp3ZWv58p', 1, 1, 0, 1, 0, '86741b00afe7c24b851e6855d4980848', NULL, '2024-08-17 05:46:42', '2024-08-17 05:46:42'),
(10, 'Johnnn', 'Doennn', NULL, NULL, 'john@examplennn.com', NULL, NULL, 1, '$2y$10$BkuAURnE5ZkFzqCHZFTcgew70cUq6EbOl2aQda6glJI6yb4jT/y/e', '3tiVO0GhnHEUtuA8loZVzFjiV7XY6lXdkoG3shsvL10kNpomeGtaquyo4eEi0SKqMZIWLDEv52PwcJr1', 2, NULL, 0, 1, 0, '8f95b5a4e81a5d8d013a2dcd76282975', NULL, '2024-08-17 11:45:06', '2024-08-17 11:45:06'),
(11, 'cust', 'custy', NULL, NULL, 'ha.yazdani324@gmail.com', NULL, NULL, 1, '$2y$10$9lpNjIX3pI4QBiD.9s8DdesyIf.PXXSW2DOTavy7IO4HIrAfzlm8O', 'edMsMuXOr50uKChQBGD8iQJp6qm0FmZx8GaxeuPGjfAmCJm3Sq3UcgabI6HGeUuTNEuMuPP3eeZMSQJj', 2, NULL, 0, 1, 0, 'e1e1535b747c193e9138a20be64fa013', NULL, '2024-08-17 12:57:28', '2024-08-17 12:57:28'),
(12, 'custشمه', 'custy', NULL, NULL, 'hبa.yazdani324@gmail.com', NULL, NULL, 1, '$2y$10$Lr7fFBXnv2xoN9xatQdYJuSOFHqBj4rN/9xnaV6z4fyaGw39Jyhaa', 'BZn7nunfv5UK4dxsRJKCpwZcJrNQVi2OFpiU1QgUJz7kJo8lnClPrQ8mUgnuFxlEp0YTPOoYBOjqk8Xe', 2, NULL, 0, 1, 0, '7d12db972d1284372e687a54a619b13f', NULL, '2024-08-17 13:04:08', '2024-08-17 13:04:08'),
(13, 'custشمهdddd', 'custy', NULL, NULL, 'hda.yazdani324@gmail.com', NULL, NULL, 1, '$2y$10$Z8qwlnzp0iThkbe7iF46keTOE1gr.qSxMypowSUA0C//fCK8Q/s.i', 'JCvPRCeBEHde6WidH0AZyvV0oFVQyYSp3zwLyPhdVujVNSoOaVfJGaz1LgdLuf8XH8u9uLzfEqYheBSw', 2, NULL, 0, 1, 0, '8dc9f866492ce4360e9b9b9f8488b057', NULL, '2024-08-17 13:05:05', '2024-08-17 13:05:05'),
(14, 'wwwwwwww', 'custy', NULL, NULL, 'hdwa.yazdani324@gmail.com', NULL, NULL, 1, '$2y$10$sFZiwvmfA.7t8XfS9cL8Pehx3/KmJE.sIJwH5uz4vhaH3EwJV3tye', 'AzhAKyyBaZgl1Yg7lAP8Dpvu4MG0FIwLcvAZ4aBNkXA3mcPzmTz6qDf6qn5xEMagyyUlXJZyvJFRLWLt', 2, NULL, 0, 1, 0, 'e58827f078be448daec0d17cd6904279', NULL, '2024-08-17 13:06:12', '2024-08-17 13:06:12'),
(15, 'wwwwwwww', 'custy', NULL, NULL, 'hdw9a.yazdani324@gmail.com', '09391681789', NULL, 1, '$2y$10$Qb08MTWMn8mBxQnxKwuVTuEsnJEH6xO8ZMkZ/6Ml6ze8GIx4d4iNm', 'Q6NWe5IOSGD0qqV3vl2j1Ikog8wULnzHmKHppkUzZbrD4HX5FtGReTaAqQysqYFJzmludGI6wUMQpXYU', 2, NULL, 0, 1, 0, '226a61209fc0d04a12e643e99ee65b08', NULL, '2024-08-17 13:06:56', '2024-08-17 13:06:59'),
(16, 'wwwwwwww', 'custy', NULL, NULL, 'hdw9ewa.yazdani324@gmail.com', '09391681444', NULL, 1, '$2y$10$Tr63K5f87LJ9s.aBR5YgcOuqCyKajkKjn.nrgzP5.PYejA/yrTBFK', 'bal778nSZtbBeDgIt4HDIwORDYVZq4s5Z3FJ8qlBnZMpAG2aBpQk6O8RtgNPEJz0VcEla1UzJjvmpU4G', 2, NULL, 0, 1, 0, '232f059a40a3b9ecb81f55c1f60cfd94', NULL, '2024-08-17 13:21:35', '2024-08-17 13:21:37'),
(17, 'teetets', 'custy', NULL, NULL, 'abc@gmail.com', '09391681333', NULL, 1, '$2y$10$y26wsizRLk95mCXIwKx5xe8ExunaV5E70lDKdU8z1kDxvG0EBueiu', 'UDEvL1cCBACt86QnFu4RXZlM9XDTBE7UXaUF7fJ5rZlXDjEt19dYDzZSbZJLjAn9dD538NYQ7TcZFKun', 2, NULL, 0, 1, 0, '343eae5851fdc2dc9609e2d62d88a317', NULL, '2024-08-17 13:22:47', '2024-08-17 13:22:50'),
(18, 'teetets', 'custy', NULL, NULL, 'abc2@gmail.com', '09391681499', NULL, 1, '$2y$10$JGp7NIFDu4B2e18cC8r1i.uZcObIV5wxc.R0.TKNUItN3rvPV4r6y', 'xmXnGeONligfpzHRSAD8UqxCOi3hkfr7pi5AlXXVlR2xR6kRldfeDYybZswsGCvLsGGQTodTVKD5z4cZ', 2, NULL, 0, 1, 0, '3e83fd1323abe38dd8697d947004e8ce', NULL, '2024-08-18 03:40:56', '2024-08-18 03:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `code`, `name`, `is_user_defined`, `created_at`, `updated_at`) VALUES
(1, 'guest', 'مهمان', 0, NULL, NULL),
(2, 'general', 'عمومی', 0, NULL, NULL),
(3, 'wholesale', 'عمده', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_notes`
--

CREATE TABLE `customer_notes` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` int UNSIGNED DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_notified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `customer_password_resets`
--

CREATE TABLE `customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `customer_social_accounts`
--

CREATE TABLE `customer_social_accounts` (
  `id` int UNSIGNED NOT NULL,
  `customer_id` int UNSIGNED NOT NULL,
  `provider_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `datagrid_saved_filters`
--

CREATE TABLE `datagrid_saved_filters` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_purchased`
--

CREATE TABLE `downloadable_link_purchased` (
  `id` int UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `download_bought` int NOT NULL DEFAULT '0',
  `download_used` int NOT NULL DEFAULT '0',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `order_item_id` int UNSIGNED NOT NULL,
  `download_canceled` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `imports`
--

CREATE TABLE `imports` (
  `id` int UNSIGNED NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `process_in_queue` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validation_strategy` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allowed_errors` int NOT NULL DEFAULT '0',
  `processed_rows_count` int NOT NULL DEFAULT '0',
  `invalid_rows_count` int NOT NULL DEFAULT '0',
  `errors_count` int NOT NULL DEFAULT '0',
  `errors` json DEFAULT NULL,
  `field_separator` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images_directory_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_file_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` json DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `import_batches`
--

CREATE TABLE `import_batches` (
  `id` int UNSIGNED NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `data` json NOT NULL,
  `summary` json DEFAULT NULL,
  `import_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_sources`
--

CREATE TABLE `inventory_sources` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `contact_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int NOT NULL DEFAULT '0',
  `latitude` decimal(10,5) DEFAULT NULL,
  `longitude` decimal(10,5) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `inventory_sources`
--

INSERT INTO `inventory_sources` (`id`, `code`, `name`, `description`, `contact_name`, `contact_email`, `contact_number`, `contact_fax`, `country`, `state`, `city`, `street`, `postcode`, `priority`, `latitude`, `longitude`, `status`, `created_at`, `updated_at`) VALUES
(1, 'default', 'پیش‌فرض', NULL, 'پیش‌فرض', 'warehouse@example.com', '1234567899', NULL, 'US', 'MI', 'Detroit', '12th Street', '48127', 0, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int UNSIGNED NOT NULL,
  `increment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL DEFAULT '0',
  `total_qty` int DEFAULT NULL,
  `base_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(12,4) DEFAULT '0.0000',
  `base_sub_total` decimal(12,4) DEFAULT '0.0000',
  `grand_total` decimal(12,4) DEFAULT '0.0000',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000',
  `shipping_amount` decimal(12,4) DEFAULT '0.0000',
  `base_shipping_amount` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `order_id` int UNSIGNED DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reminders` int NOT NULL DEFAULT '0',
  `next_reminder_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `product_id` int UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_item_id` int UNSIGNED DEFAULT NULL,
  `invoice_id` int UNSIGNED DEFAULT NULL,
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `locales`
--

CREATE TABLE `locales` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` enum('ltr','rtl') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr',
  `logo_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `locales`
--

INSERT INTO `locales` (`id`, `code`, `name`, `direction`, `logo_path`, `created_at`, `updated_at`) VALUES
(1, 'fa', 'فارسی', 'rtl', 'locales/2FJhmizVLoWsFoqCIrM0WM1Hr8LlanbpQR99gGdl.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaigns`
--

CREATE TABLE `marketing_campaigns` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spooling` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_id` int UNSIGNED DEFAULT NULL,
  `customer_group_id` int UNSIGNED DEFAULT NULL,
  `marketing_template_id` int UNSIGNED DEFAULT NULL,
  `marketing_event_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_events`
--

CREATE TABLE `marketing_events` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `marketing_events`
--

INSERT INTO `marketing_events` (`id`, `name`, `description`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Birthday', 'Birthday', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marketing_templates`
--

CREATE TABLE `marketing_templates` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_admin_password_resets_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_06_12_111907_create_admins_table', 1),
(5, '2018_06_13_055341_create_roles_table', 1),
(6, '2018_07_05_130148_create_attributes_table', 1),
(7, '2018_07_05_132854_create_attribute_translations_table', 1),
(8, '2018_07_05_135150_create_attribute_families_table', 1),
(9, '2018_07_05_135152_create_attribute_groups_table', 1),
(10, '2018_07_05_140832_create_attribute_options_table', 1),
(11, '2018_07_05_140856_create_attribute_option_translations_table', 1),
(12, '2018_07_05_142820_create_categories_table', 1),
(13, '2018_07_10_055143_create_locales_table', 1),
(14, '2018_07_20_054426_create_countries_table', 1),
(15, '2018_07_20_054502_create_currencies_table', 1),
(16, '2018_07_20_054542_create_currency_exchange_rates_table', 1),
(17, '2018_07_20_064849_create_channels_table', 1),
(18, '2018_07_21_142836_create_category_translations_table', 1),
(19, '2018_07_23_110040_create_inventory_sources_table', 1),
(20, '2018_07_24_082635_create_customer_groups_table', 1),
(21, '2018_07_24_082930_create_customers_table', 1),
(22, '2018_07_27_065727_create_products_table', 1),
(23, '2018_07_27_070011_create_product_attribute_values_table', 1),
(24, '2018_07_27_092623_create_product_reviews_table', 1),
(25, '2018_07_27_113941_create_product_images_table', 1),
(26, '2018_07_27_113956_create_product_inventories_table', 1),
(27, '2018_08_30_064755_create_tax_categories_table', 1),
(28, '2018_08_30_065042_create_tax_rates_table', 1),
(29, '2018_08_30_065840_create_tax_mappings_table', 1),
(30, '2018_09_05_150444_create_cart_table', 1),
(31, '2018_09_05_150915_create_cart_items_table', 1),
(32, '2018_09_11_064045_customer_password_resets', 1),
(33, '2018_09_19_093453_create_cart_payment', 1),
(34, '2018_09_19_093508_create_cart_shipping_rates_table', 1),
(35, '2018_09_20_060658_create_core_config_table', 1),
(36, '2018_09_27_113154_create_orders_table', 1),
(37, '2018_09_27_113207_create_order_items_table', 1),
(38, '2018_09_27_115022_create_shipments_table', 1),
(39, '2018_09_27_115029_create_shipment_items_table', 1),
(40, '2018_09_27_115135_create_invoices_table', 1),
(41, '2018_09_27_115144_create_invoice_items_table', 1),
(42, '2018_10_01_095504_create_order_payment_table', 1),
(43, '2018_10_03_025230_create_wishlist_table', 1),
(44, '2018_10_12_101803_create_country_translations_table', 1),
(45, '2018_10_12_101913_create_country_states_table', 1),
(46, '2018_10_12_101923_create_country_state_translations_table', 1),
(47, '2018_11_16_173504_create_subscribers_list_table', 1),
(48, '2018_11_21_144411_create_cart_item_inventories_table', 1),
(49, '2018_12_06_185202_create_product_flat_table', 1),
(50, '2018_12_24_123812_create_channel_inventory_sources_table', 1),
(51, '2018_12_26_165327_create_product_ordered_inventories_table', 1),
(52, '2019_05_13_024321_create_cart_rules_table', 1),
(53, '2019_05_13_024322_create_cart_rule_channels_table', 1),
(54, '2019_05_13_024323_create_cart_rule_customer_groups_table', 1),
(55, '2019_05_13_024324_create_cart_rule_translations_table', 1),
(56, '2019_05_13_024325_create_cart_rule_customers_table', 1),
(57, '2019_05_13_024326_create_cart_rule_coupons_table', 1),
(58, '2019_05_13_024327_create_cart_rule_coupon_usage_table', 1),
(59, '2019_06_17_180258_create_product_downloadable_samples_table', 1),
(60, '2019_06_17_180314_create_product_downloadable_sample_translations_table', 1),
(61, '2019_06_17_180325_create_product_downloadable_links_table', 1),
(62, '2019_06_17_180346_create_product_downloadable_link_translations_table', 1),
(63, '2019_06_21_202249_create_downloadable_link_purchased_table', 1),
(64, '2019_07_30_153530_create_cms_pages_table', 1),
(65, '2019_07_31_143339_create_category_filterable_attributes_table', 1),
(66, '2019_08_02_105320_create_product_grouped_products_table', 1),
(67, '2019_08_20_170510_create_product_bundle_options_table', 1),
(68, '2019_08_20_170520_create_product_bundle_option_translations_table', 1),
(69, '2019_08_20_170528_create_product_bundle_option_products_table', 1),
(70, '2019_09_11_184511_create_refunds_table', 1),
(71, '2019_09_11_184519_create_refund_items_table', 1),
(72, '2019_12_03_184613_create_catalog_rules_table', 1),
(73, '2019_12_03_184651_create_catalog_rule_channels_table', 1),
(74, '2019_12_03_184732_create_catalog_rule_customer_groups_table', 1),
(75, '2019_12_06_101110_create_catalog_rule_products_table', 1),
(76, '2019_12_06_110507_create_catalog_rule_product_prices_table', 1),
(77, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(78, '2020_01_14_191854_create_cms_page_translations_table', 1),
(79, '2020_01_15_130209_create_cms_page_channels_table', 1),
(80, '2020_04_16_185147_add_table_addresses', 1),
(81, '2020_05_06_171638_create_order_comments_table', 1),
(82, '2020_05_21_171500_create_product_customer_group_prices_table', 1),
(83, '2020_06_25_162154_create_customer_social_accounts_table', 1),
(84, '2020_11_19_112228_create_product_videos_table', 1),
(85, '2020_11_26_141455_create_marketing_templates_table', 1),
(86, '2020_11_26_150534_create_marketing_events_table', 1),
(87, '2020_11_26_150644_create_marketing_campaigns_table', 1),
(88, '2020_12_21_000200_create_channel_translations_table', 1),
(89, '2020_12_27_121950_create_jobs_table', 1),
(90, '2021_03_11_212124_create_order_transactions_table', 1),
(91, '2021_04_07_132010_create_product_review_images_table', 1),
(92, '2021_12_15_104544_notifications', 1),
(93, '2022_03_15_160510_create_failed_jobs_table', 1),
(94, '2022_04_01_094622_create_sitemaps_table', 1),
(95, '2022_10_03_144232_create_product_price_indices_table', 1),
(96, '2022_10_04_144444_create_job_batches_table', 1),
(97, '2022_10_08_134150_create_product_inventory_indices_table', 1),
(98, '2023_05_26_213105_create_wishlist_items_table', 1),
(99, '2023_05_26_213120_create_compare_items_table', 1),
(100, '2023_06_27_163529_rename_product_review_images_to_product_review_attachments', 1),
(101, '2023_07_06_140013_add_logo_path_column_to_locales', 1),
(102, '2023_07_10_184256_create_theme_customizations_table', 1),
(103, '2023_07_12_181722_remove_home_page_and_footer_content_column_from_channel_translations_table', 1),
(104, '2023_07_20_185324_add_column_column_in_attribute_groups_table', 1),
(105, '2023_07_25_145943_add_regex_column_in_attributes_table', 1),
(106, '2023_07_25_165945_drop_notes_column_from_customers_table', 1),
(107, '2023_07_25_171058_create_customer_notes_table', 1),
(108, '2023_07_31_125232_rename_image_and_category_banner_columns_from_categories_table', 1),
(109, '2023_09_15_170053_create_theme_customization_translations_table', 1),
(110, '2023_09_20_102031_add_default_value_column_in_attributes_table', 1),
(111, '2023_09_20_102635_add_inventories_group_in_attribute_groups_table', 1),
(112, '2023_09_26_155709_add_columns_to_currencies', 1),
(113, '2023_10_05_163612_create_visits_table', 1),
(114, '2023_10_12_090446_add_tax_category_id_column_in_order_items_table', 1),
(115, '2023_11_08_054614_add_code_column_in_attribute_groups_table', 1),
(116, '2023_11_08_140116_create_search_terms_table', 1),
(117, '2023_11_09_162805_create_url_rewrites_table', 1),
(118, '2023_11_17_150401_create_search_synonyms_table', 1),
(119, '2023_12_11_054614_add_channel_id_column_in_product_price_indices_table', 1),
(120, '2024_01_11_154640_create_imports_table', 1),
(121, '2024_01_11_154741_create_import_batches_table', 1),
(122, '2024_01_19_170350_add_unique_id_column_in_product_attribute_values_table', 1),
(123, '2024_01_19_170350_add_unique_id_column_in_product_customer_group_prices_table', 1),
(124, '2024_01_22_170814_add_unique_index_in_mapping_tables', 1),
(125, '2024_02_26_153000_add_columns_to_addresses_table', 1),
(126, '2024_03_07_193421_rename_address1_column_in_addresses_table', 1),
(127, '2024_04_16_144400_add_cart_id_column_in_cart_shipping_rates_table', 1),
(128, '2024_04_19_102939_add_incl_tax_columns_in_orders_table', 1),
(129, '2024_04_19_135405_add_incl_tax_columns_in_cart_items_table', 1),
(130, '2024_04_19_144641_add_incl_tax_columns_in_order_items_table', 1),
(131, '2024_04_23_133154_add_incl_tax_columns_in_cart_table', 1),
(132, '2024_04_23_150945_add_incl_tax_columns_in_cart_shipping_rates_table', 1),
(133, '2024_04_24_102939_add_incl_tax_columns_in_invoices_table', 1),
(134, '2024_04_24_102939_add_incl_tax_columns_in_refunds_table', 1),
(135, '2024_04_24_144641_add_incl_tax_columns_in_invoice_items_table', 1),
(136, '2024_04_24_144641_add_incl_tax_columns_in_refund_items_table', 1),
(137, '2024_04_24_144641_add_incl_tax_columns_in_shipment_items_table', 1),
(138, '2024_05_10_152848_create_saved_filters_table', 1),
(139, '2024_06_03_174128_create_product_channels_table', 1),
(140, '2024_06_04_130527_add_channel_id_column_in_customers_table', 1),
(141, '2024_06_04_134403_add_channel_id_column_in_visits_table', 1),
(142, '2024_06_13_184426_add_theme_column_into_theme_customizations_table', 1),
(143, '2022_04_18_173816_create_push_notification_table', 2),
(144, '2022_04_18_173912_create_push_notification_translations_table', 2),
(145, '2024_08_13_151104_create_otp_tokens_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `order_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `read`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'order', 0, 1, '2024-08-16 02:55:17', '2024-08-16 02:55:17'),
(2, 'order', 0, 2, '2024-08-16 04:31:01', '2024-08-16 04:31:01'),
(3, 'order', 0, 3, '2024-08-16 07:13:31', '2024-08-16 07:13:31'),
(4, 'order', 0, 4, '2024-08-16 07:23:20', '2024-08-16 07:23:20'),
(5, 'order', 0, 5, '2024-08-17 03:54:23', '2024-08-17 03:54:23'),
(6, 'order', 0, 6, '2024-08-17 11:25:55', '2024-08-17 11:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int UNSIGNED NOT NULL,
  `increment_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_gift` tinyint(1) NOT NULL DEFAULT '0',
  `total_item_count` int DEFAULT NULL,
  `total_qty_ordered` int DEFAULT NULL,
  `base_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT '0.0000',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000',
  `grand_total_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_grand_total_invoiced` decimal(12,4) DEFAULT '0.0000',
  `grand_total_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_grand_total_refunded` decimal(12,4) DEFAULT '0.0000',
  `sub_total` decimal(12,4) DEFAULT '0.0000',
  `base_sub_total` decimal(12,4) DEFAULT '0.0000',
  `sub_total_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_sub_total_invoiced` decimal(12,4) DEFAULT '0.0000',
  `sub_total_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_sub_total_refunded` decimal(12,4) DEFAULT '0.0000',
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `discount_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_discount_refunded` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `tax_amount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `tax_amount_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount_refunded` decimal(12,4) DEFAULT '0.0000',
  `shipping_amount` decimal(12,4) DEFAULT '0.0000',
  `base_shipping_amount` decimal(12,4) DEFAULT '0.0000',
  `shipping_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_shipping_invoiced` decimal(12,4) DEFAULT '0.0000',
  `shipping_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_shipping_refunded` decimal(12,4) DEFAULT '0.0000',
  `shipping_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `shipping_tax_refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_shipping_tax_refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `customer_id` int UNSIGNED DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_id` int UNSIGNED DEFAULT NULL,
  `channel_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_id` int DEFAULT NULL,
  `applied_cart_rule_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `increment_id`, `status`, `channel_name`, `is_guest`, `customer_email`, `customer_first_name`, `customer_last_name`, `shipping_method`, `shipping_title`, `shipping_description`, `coupon_code`, `is_gift`, `total_item_count`, `total_qty_ordered`, `base_currency_code`, `channel_currency_code`, `order_currency_code`, `grand_total`, `base_grand_total`, `grand_total_invoiced`, `base_grand_total_invoiced`, `grand_total_refunded`, `base_grand_total_refunded`, `sub_total`, `base_sub_total`, `sub_total_invoiced`, `base_sub_total_invoiced`, `sub_total_refunded`, `base_sub_total_refunded`, `discount_percent`, `discount_amount`, `base_discount_amount`, `discount_invoiced`, `base_discount_invoiced`, `discount_refunded`, `base_discount_refunded`, `tax_amount`, `base_tax_amount`, `tax_amount_invoiced`, `base_tax_amount_invoiced`, `tax_amount_refunded`, `base_tax_amount_refunded`, `shipping_amount`, `base_shipping_amount`, `shipping_invoiced`, `base_shipping_invoiced`, `shipping_refunded`, `base_shipping_refunded`, `shipping_discount_amount`, `base_shipping_discount_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `shipping_tax_refunded`, `base_shipping_tax_refunded`, `sub_total_incl_tax`, `base_sub_total_incl_tax`, `shipping_amount_incl_tax`, `base_shipping_amount_incl_tax`, `customer_id`, `customer_type`, `channel_id`, `channel_type`, `cart_id`, `applied_cart_rule_ids`, `created_at`, `updated_at`) VALUES
(1, '1', 'processing', 'پیش‌فرض', 0, 'ali.yazdani324@gmail.com', 'ali', 'yazdanifar', 'flatrate_flatrate', 'Flat Rate - Flat Rate', 'Flat Rate Shipping', NULL, 0, 1, 1, 'USD', 'USD', 'USD', '4353.0000', '4353.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', '10.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '10.0000', '10.0000', 3, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 1, NULL, '2024-08-16 02:55:17', '2024-08-16 07:26:04'),
(2, '2', 'pending', 'پیش‌فرض', 0, 'ali.yazdani324@gmail.com', 'ali', 'yazdanifar', 'flatrate_flatrate', 'Flat Rate - Flat Rate', 'Flat Rate Shipping', NULL, 0, 1, 1, 'USD', 'USD', 'IRR', '4353.0000', '4353.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', '10.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '10.0000', '10.0000', 3, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 2, NULL, '2024-08-16 04:31:01', '2024-08-16 04:31:01'),
(3, '3', 'pending', 'پیش‌فرض', 0, 'ali.yazdani324@gmail.com', 'ali', 'yazdanifar', 'flatrate_flatrate', 'Flat Rate - Flat Rate', 'Flat Rate Shipping', NULL, 0, 1, 1, 'USD', 'IRR', 'IRR', '4353.0000', '4353.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', '10.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '10.0000', '10.0000', 3, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 3, NULL, '2024-08-16 07:13:30', '2024-08-16 07:13:30'),
(4, '4', 'pending', 'پیش‌فرض', 0, 'ali.yazdani324@gmail.com', 'ali', 'yazdanifar', 'flatrate_flatrate', 'Flat Rate - Flat Rate', 'Flat Rate Shipping', NULL, 0, 1, 1, 'USD', 'IRR', 'IRR', '4353.0000', '4353.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', '10.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '10.0000', '10.0000', 3, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 4, NULL, '2024-08-16 07:23:19', '2024-08-16 07:23:19'),
(5, '5', 'pending', 'پیش‌فرض', 0, 'ali.yazdani324@gmail.com', 'ali', 'yazdanifar', 'flatrate_flatrate', 'Flat Rate - Flat Rate', 'Flat Rate Shipping', NULL, 0, 1, 1, 'USD', 'IRR', 'IRR', '4353.0000', '4353.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', '10.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '10.0000', '10.0000', 3, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 5, NULL, '2024-08-17 03:54:23', '2024-08-17 03:54:23'),
(6, '6', 'pending', 'پیش‌فرض', 0, 'ali.yazdani324@gmail.com', 'ali', 'yazdanifar', 'flatrate_flatrate', 'Flat Rate - Flat Rate', 'Flat Rate Shipping', NULL, 0, 1, 4, 'USD', 'IRR', 'IRR', '17412.0000', '17412.0000', '0.0000', '0.0000', '0.0000', '0.0000', '17372.0000', '17372.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '40.0000', '40.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '17372.0000', '17372.0000', '40.0000', '40.0000', 3, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 6, NULL, '2024-08-17 11:25:55', '2024-08-17 11:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `order_comments`
--

CREATE TABLE `order_comments` (
  `id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_notified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int UNSIGNED NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT '0.0000',
  `total_weight` decimal(12,4) DEFAULT '0.0000',
  `qty_ordered` int DEFAULT '0',
  `qty_shipped` int DEFAULT '0',
  `qty_invoiced` int DEFAULT '0',
  `qty_canceled` int DEFAULT '0',
  `qty_refunded` int DEFAULT '0',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `amount_refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_amount_refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `discount_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_discount_refunded` decimal(12,4) DEFAULT '0.0000',
  `tax_percent` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `tax_amount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `tax_amount_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount_refunded` decimal(12,4) DEFAULT '0.0000',
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `product_id` int UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int UNSIGNED DEFAULT NULL,
  `tax_category_id` int UNSIGNED DEFAULT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `sku`, `type`, `name`, `coupon_code`, `weight`, `total_weight`, `qty_ordered`, `qty_shipped`, `qty_invoiced`, `qty_canceled`, `qty_refunded`, `price`, `base_price`, `total`, `base_total`, `total_invoiced`, `base_total_invoiced`, `amount_refunded`, `base_amount_refunded`, `discount_percent`, `discount_amount`, `base_discount_amount`, `discount_invoiced`, `base_discount_invoiced`, `discount_refunded`, `base_discount_refunded`, `tax_percent`, `tax_amount`, `base_tax_amount`, `tax_amount_invoiced`, `base_tax_amount_invoiced`, `tax_amount_refunded`, `base_tax_amount_refunded`, `price_incl_tax`, `base_price_incl_tax`, `total_incl_tax`, `base_total_incl_tax`, `product_id`, `product_type`, `order_id`, `tax_category_id`, `parent_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, 'test', 'simple', 'محصول تست', NULL, '32.0000', '32.0000', 1, 1, 0, 0, 0, '4343.0000', '4343.0000', '4343.0000', '4343.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '4343.0000', '4343.0000', 1, 'Webkul\\Product\\Models\\Product', 1, NULL, NULL, '{\"locale\": \"fa\", \"quantity\": 1, \"product_id\": 1}', '2024-08-16 02:55:17', '2024-08-16 07:26:04'),
(2, 'test', 'simple', 'محصول تست', NULL, '32.0000', '32.0000', 1, 0, 0, 0, 0, '4343.0000', '4343.0000', '4343.0000', '4343.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '4343.0000', '4343.0000', 1, 'Webkul\\Product\\Models\\Product', 2, NULL, NULL, '{\"locale\": \"fa\", \"quantity\": 2, \"product_id\": 1}', '2024-08-16 04:31:01', '2024-08-16 04:31:01'),
(3, 'test', 'simple', 'محصول تست', NULL, '32.0000', '32.0000', 1, 0, 0, 0, 0, '4343.0000', '4343.0000', '4343.0000', '4343.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '4343.0000', '4343.0000', 1, 'Webkul\\Product\\Models\\Product', 3, NULL, NULL, '{\"locale\": \"fa\", \"quantity\": 1, \"is_buy_now\": \"0\", \"product_id\": \"1\"}', '2024-08-16 07:13:30', '2024-08-16 07:13:30'),
(4, 'test', 'simple', 'محصول تست', NULL, '32.0000', '32.0000', 1, 0, 0, 0, 0, '4343.0000', '4343.0000', '4343.0000', '4343.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '4343.0000', '4343.0000', 1, 'Webkul\\Product\\Models\\Product', 4, NULL, NULL, '{\"locale\": \"fa\", \"quantity\": 1, \"is_buy_now\": \"0\", \"product_id\": \"1\"}', '2024-08-16 07:23:19', '2024-08-16 07:23:19'),
(5, 'test', 'simple', 'محصول تست', NULL, '32.0000', '32.0000', 1, 0, 0, 0, 0, '4343.0000', '4343.0000', '4343.0000', '4343.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '4343.0000', '4343.0000', 1, 'Webkul\\Product\\Models\\Product', 5, NULL, NULL, '{\"locale\": \"fa\", \"quantity\": 1, \"product_id\": 1}', '2024-08-17 03:54:23', '2024-08-17 03:54:23'),
(6, 'test', 'simple', 'محصول تست', NULL, '32.0000', '128.0000', 4, 0, 0, 0, 0, '4343.0000', '4343.0000', '17372.0000', '17372.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4343.0000', '4343.0000', '17372.0000', '17372.0000', 1, 'Webkul\\Product\\Models\\Product', 6, NULL, NULL, '{\"locale\": \"fa\", \"quantity\": 4, \"product_id\": 1}', '2024-08-17 11:25:55', '2024-08-17 11:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `order_payment`
--

CREATE TABLE `order_payment` (
  `id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED DEFAULT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `order_payment`
--

INSERT INTO `order_payment` (`id`, `order_id`, `method`, `method_title`, `additional`, `created_at`, `updated_at`) VALUES
(1, 1, 'demopackage', 'DemoPackage', NULL, '2024-08-16 02:55:17', '2024-08-16 02:55:17'),
(2, 2, 'zarinpal', 'Zarinpal', NULL, '2024-08-16 04:31:01', '2024-08-16 04:31:01'),
(3, 3, 'zarinpal', 'Zarinpal', NULL, '2024-08-16 07:13:30', '2024-08-16 07:13:30'),
(4, 4, 'zarinpal', 'Zarinpal', NULL, '2024-08-16 07:23:19', '2024-08-16 07:23:19'),
(5, 5, 'zarinpal', 'Zarinpal', NULL, '2024-08-17 03:54:23', '2024-08-17 03:54:23'),
(6, 6, 'zarinpal', 'Zarinpal', NULL, '2024-08-17 11:25:55', '2024-08-17 11:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `order_transactions`
--

CREATE TABLE `order_transactions` (
  `id` int UNSIGNED NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(12,4) DEFAULT '0.0000',
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json DEFAULT NULL,
  `invoice_id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `otp_tokens`
--

CREATE TABLE `otp_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `receiver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_at` time DEFAULT NULL,
  `expire_at` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `otp_tokens`
--

INSERT INTO `otp_tokens` (`id`, `receiver`, `token`, `sent_at`, `expire_at`, `created_at`, `updated_at`) VALUES
(2, '09391681434', '43415', '08:39:25', '08:41:25', '2024-08-16 08:39:00', '2024-08-18 04:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'Webkul\\Customer\\Models\\Customer', 1, 'auth_token', '90f64d7282498555a9f974401dae79d378a69f07c1d66d474838217511b92f04', '[\"*\"]', NULL, NULL, '2024-08-15 11:07:50', '2024-08-15 11:07:50'),
(2, 'Webkul\\Customer\\Models\\Customer', 2, 'auth_token', 'c84b7e4253bfd37884d0a1e06feeb0e41eb3aea403911494d76ef646003ab4a2', '[\"*\"]', NULL, NULL, '2024-08-15 11:10:57', '2024-08-15 11:10:57'),
(3, 'Webkul\\Customer\\Models\\Customer', 2, 'auth_token', 'cd4c07604035abd901bf40e90f1086ae6f89ca6e0777473769d9539fa5a917a9', '[\"*\"]', NULL, NULL, '2024-08-15 11:11:27', '2024-08-15 11:11:27'),
(4, 'Webkul\\Customer\\Models\\Customer', 2, 'auth_token', '5d66cc483653644d80fa9cd4e5dac803e9c41584c27660abf61552d14fb14e5b', '[\"*\"]', NULL, NULL, '2024-08-15 11:11:42', '2024-08-15 11:11:42'),
(5, 'Webkul\\Customer\\Models\\Customer', 5, 'auth_token', '6980b070ebd8c6734682793f57b4da7080462a602903228a5d5ea258f62dfbdc', '[\"*\"]', NULL, NULL, '2024-08-16 08:44:27', '2024-08-16 08:44:27'),
(6, 'Webkul\\Customer\\Models\\Customer', 9, 'YourTokenName', 'a36276b7d1f6c6b4fe0cd8af569f630213fce9207c9336ff2fae4b800c94c9b2', '[\"*\"]', NULL, NULL, '2024-08-17 06:15:29', '2024-08-17 06:15:29'),
(7, 'Webkul\\Customer\\Models\\Customer', 9, 'YourTokenName', '3a4c8c1d1817f839b563a7dcb1ba840c0a94543a21b4b09fef0d5b27c4f22cfc', '[\"*\"]', NULL, NULL, '2024-08-17 06:18:03', '2024-08-17 06:18:03'),
(8, 'Webkul\\Customer\\Models\\Customer', 9, 'YourTokenName', 'dcbf751101a92363b2d4ec92bb9d8a4c2225c7184a87181d43dde9b7937d6a7a', '[\"*\"]', NULL, NULL, '2024-08-17 06:19:58', '2024-08-17 06:19:58'),
(9, 'Webkul\\Customer\\Models\\Customer', 9, 'YourTokenName', 'a0697fe6736f4fc3924effd3c48a3192435c9e42dcb5c23f155f220bd3380ed6', '[\"*\"]', NULL, NULL, '2024-08-17 07:19:23', '2024-08-17 07:19:23'),
(10, 'Webkul\\Customer\\Models\\Customer', 9, 'YourTokenName', 'd97edf5b7a31afb12d31b497c1fa39035455bd941ceaea610678e463e9ec4f21', '[\"*\"]', NULL, NULL, '2024-08-17 07:45:20', '2024-08-17 07:45:20'),
(11, 'Webkul\\Customer\\Models\\Customer', 9, 'YourTokenName', '7490bbd6a01a95f0c8a3a9faea1b92daf0319d3fbe672d066e5d095bcc18836e', '[\"*\"]', NULL, NULL, '2024-08-17 08:04:49', '2024-08-17 08:04:49'),
(12, 'Webkul\\Customer\\Models\\Customer', 5, 'YourTokenName', 'b4877dfed85f62d135cf7f6461728b95f2da7653c1cef0b22e664379a87e03dc', '[\"*\"]', NULL, NULL, '2024-08-17 11:03:42', '2024-08-17 11:03:42'),
(13, 'Webkul\\Customer\\Models\\Customer', 3, 'YourTokenName', '9c76bf7006d110f9f9b380a7e5ad02b5fc4713b17254784ffe31ce505e0dff1e', '[\"*\"]', NULL, NULL, '2024-08-17 11:22:33', '2024-08-17 11:22:33'),
(14, 'Webkul\\Customer\\Models\\Customer', 9, 'YourTokenName', '3576fb14c670cf7da7a84658914bcfdba594c61fdc256023480d6e2a782cf608', '[\"*\"]', NULL, NULL, '2024-08-17 11:59:01', '2024-08-17 11:59:01');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `attribute_family_id` int UNSIGNED DEFAULT NULL,
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `type`, `parent_id`, `attribute_family_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, 'test', 'simple', NULL, 1, NULL, '2024-08-15 13:19:06', '2024-08-15 13:19:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_values`
--

CREATE TABLE `product_attribute_values` (
  `id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_value` text COLLATE utf8mb4_unicode_ci,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int DEFAULT NULL,
  `float_value` decimal(12,4) DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` json DEFAULT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `attribute_id` int UNSIGNED NOT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_attribute_values`
--

INSERT INTO `product_attribute_values` (`id`, `locale`, `channel`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `product_id`, `attribute_id`, `unique_id`) VALUES
(1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 5, '1|5'),
(2, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 6, '1|6'),
(3, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 7, '1|7'),
(4, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 8, 'default|1|8'),
(5, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 26, '1|26'),
(6, 'fa', NULL, '<p>تتتتتت</p>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 9, 'fa|1|9'),
(7, 'fa', NULL, '<p>یسبسیبسیب</p>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 'fa|1|10'),
(8, 'fa', NULL, 'ییببیل', NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'fa|1|16'),
(9, 'fa', NULL, 'بیلیب', NULL, NULL, NULL, NULL, NULL, NULL, 1, 17, 'fa|1|17'),
(10, 'fa', NULL, 'لبیل', NULL, NULL, NULL, NULL, NULL, NULL, 1, 18, 'fa|1|18'),
(11, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 19, '1|19'),
(12, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 20, '1|20'),
(13, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 21, '1|21'),
(14, NULL, NULL, '32', NULL, NULL, NULL, NULL, NULL, NULL, 1, 22, '1|22'),
(15, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '1|1'),
(16, 'fa', NULL, 'محصول تست', NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 'fa|1|2'),
(17, 'fa', NULL, 'محصول-تست', NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, 'fa|1|3'),
(18, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 23, '1|23'),
(19, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 1, 24, '1|24'),
(20, NULL, NULL, '232323', NULL, NULL, NULL, NULL, NULL, NULL, 1, 27, '1|27'),
(21, NULL, NULL, NULL, NULL, NULL, '12000.0000', NULL, NULL, NULL, 1, 11, '1|11'),
(22, NULL, NULL, NULL, NULL, NULL, '1200.0000', NULL, NULL, NULL, 1, 12, '1|12'),
(23, NULL, NULL, NULL, NULL, NULL, '4343.0000', NULL, NULL, NULL, 1, 13, '1|13'),
(24, NULL, 'default', NULL, NULL, NULL, NULL, NULL, '2024-08-14', NULL, 1, 14, 'default|1|14'),
(25, NULL, 'default', NULL, NULL, NULL, NULL, NULL, '2024-08-29', NULL, 1, 15, 'default|1|15'),
(26, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 28, 'default|1|28');

-- --------------------------------------------------------

--
-- Table structure for table `product_bundle_options`
--

CREATE TABLE `product_bundle_options` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_bundle_option_products`
--

CREATE TABLE `product_bundle_option_products` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `product_bundle_option_id` int UNSIGNED NOT NULL,
  `qty` int NOT NULL DEFAULT '0',
  `is_user_defined` tinyint(1) NOT NULL DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_bundle_option_translations`
--

CREATE TABLE `product_bundle_option_translations` (
  `id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_bundle_option_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `product_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_channels`
--

CREATE TABLE `product_channels` (
  `product_id` int UNSIGNED NOT NULL,
  `channel_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_channels`
--

INSERT INTO `product_channels` (`product_id`, `channel_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_cross_sells`
--

CREATE TABLE `product_cross_sells` (
  `parent_id` int UNSIGNED NOT NULL,
  `child_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_customer_group_prices`
--

CREATE TABLE `product_customer_group_prices` (
  `id` bigint UNSIGNED NOT NULL,
  `qty` int NOT NULL DEFAULT '0',
  `value_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `product_id` int UNSIGNED NOT NULL,
  `customer_group_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_downloadable_links`
--

CREATE TABLE `product_downloadable_links` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `sample_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sample_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sample_file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sample_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `downloads` int NOT NULL DEFAULT '0',
  `sort_order` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_downloadable_link_translations`
--

CREATE TABLE `product_downloadable_link_translations` (
  `id` int UNSIGNED NOT NULL,
  `product_downloadable_link_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_downloadable_samples`
--

CREATE TABLE `product_downloadable_samples` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_downloadable_sample_translations`
--

CREATE TABLE `product_downloadable_sample_translations` (
  `id` int UNSIGNED NOT NULL,
  `product_downloadable_sample_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_flat`
--

CREATE TABLE `product_flat` (
  `id` int UNSIGNED NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `url_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new` tinyint(1) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(12,4) DEFAULT NULL,
  `special_price` decimal(12,4) DEFAULT NULL,
  `special_price_from` date DEFAULT NULL,
  `special_price_to` date DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_family_id` int UNSIGNED DEFAULT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `visible_individually` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_flat`
--

INSERT INTO `product_flat` (`id`, `sku`, `type`, `product_number`, `name`, `short_description`, `description`, `url_key`, `new`, `featured`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `price`, `special_price`, `special_price_from`, `special_price_to`, `weight`, `created_at`, `locale`, `channel`, `attribute_family_id`, `product_id`, `updated_at`, `parent_id`, `visible_individually`) VALUES
(1, 'test', 'simple', '232323', 'محصول تست', '<p>تتتتتت</p>', '<p>یسبسیبسیب</p>', 'محصول-تست', 1, 1, 1, 'ییببیل', 'بیلیب', 'لبیل', '12000.0000', '4343.0000', '2024-08-14', '2024-08-29', '32.0000', '2024-08-15 17:49:06', 'fa', 'default', 1, 1, '2024-08-16 11:56:04', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_grouped_products`
--

CREATE TABLE `product_grouped_products` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `associated_product_id` int UNSIGNED NOT NULL,
  `qty` int NOT NULL DEFAULT '0',
  `sort_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `position` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `type`, `path`, `product_id`, `position`) VALUES
(1, 'images', 'product/1/D0fqUxvju5TsewffJMzvmIGw45X3q8SQ8elUPSQi.webp', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_inventories`
--

CREATE TABLE `product_inventories` (
  `id` int UNSIGNED NOT NULL,
  `qty` int NOT NULL DEFAULT '0',
  `product_id` int UNSIGNED NOT NULL,
  `vendor_id` int NOT NULL DEFAULT '0',
  `inventory_source_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_inventories`
--

INSERT INTO `product_inventories` (`id`, `qty`, `product_id`, `vendor_id`, `inventory_source_id`) VALUES
(1, 31, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_inventory_indices`
--

CREATE TABLE `product_inventory_indices` (
  `id` int UNSIGNED NOT NULL,
  `qty` int NOT NULL DEFAULT '0',
  `product_id` int UNSIGNED NOT NULL,
  `channel_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_inventory_indices`
--

INSERT INTO `product_inventory_indices` (`id`, `qty`, `product_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 23, 1, 1, NULL, '2024-08-17 11:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_ordered_inventories`
--

CREATE TABLE `product_ordered_inventories` (
  `id` int UNSIGNED NOT NULL,
  `qty` int NOT NULL DEFAULT '0',
  `product_id` int UNSIGNED NOT NULL,
  `channel_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_ordered_inventories`
--

INSERT INTO `product_ordered_inventories` (`id`, `qty`, `product_id`, `channel_id`) VALUES
(1, 8, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_price_indices`
--

CREATE TABLE `product_price_indices` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `customer_group_id` int UNSIGNED DEFAULT NULL,
  `channel_id` int UNSIGNED NOT NULL DEFAULT '1',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `regular_min_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `regular_max_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_price_indices`
--

INSERT INTO `product_price_indices` (`id`, `product_id`, `customer_group_id`, `channel_id`, `min_price`, `regular_min_price`, `max_price`, `regular_max_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '4343.0000', '12000.0000', '4343.0000', '12000.0000', NULL, NULL),
(2, 1, 2, 1, '4343.0000', '12000.0000', '4343.0000', '12000.0000', NULL, NULL),
(3, 1, 3, 1, '4343.0000', '12000.0000', '4343.0000', '12000.0000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_relations`
--

CREATE TABLE `product_relations` (
  `parent_id` int UNSIGNED NOT NULL,
  `child_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `customer_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_review_attachments`
--

CREATE TABLE `product_review_attachments` (
  `id` int UNSIGNED NOT NULL,
  `review_id` int UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'image',
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_super_attributes`
--

CREATE TABLE `product_super_attributes` (
  `product_id` int UNSIGNED NOT NULL,
  `attribute_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_up_sells`
--

CREATE TABLE `product_up_sells` (
  `parent_id` int UNSIGNED NOT NULL,
  `child_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_videos`
--

CREATE TABLE `product_videos` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `push_notifications`
--

CREATE TABLE `push_notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `push_notification_translations`
--

CREATE TABLE `push_notification_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `push_notification_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE `refunds` (
  `id` int UNSIGNED NOT NULL,
  `increment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL DEFAULT '0',
  `total_qty` int DEFAULT NULL,
  `base_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_refund` decimal(12,4) DEFAULT '0.0000',
  `base_adjustment_refund` decimal(12,4) DEFAULT '0.0000',
  `adjustment_fee` decimal(12,4) DEFAULT '0.0000',
  `base_adjustment_fee` decimal(12,4) DEFAULT '0.0000',
  `sub_total` decimal(12,4) DEFAULT '0.0000',
  `base_sub_total` decimal(12,4) DEFAULT '0.0000',
  `grand_total` decimal(12,4) DEFAULT '0.0000',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000',
  `shipping_amount` decimal(12,4) DEFAULT '0.0000',
  `base_shipping_amount` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `order_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `refund_items`
--

CREATE TABLE `refund_items` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `product_id` int UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_item_id` int UNSIGNED DEFAULT NULL,
  `refund_id` int UNSIGNED DEFAULT NULL,
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `permission_type`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'مدیر سیستم', 'این نقش دسترسی‌هایی را برای کاربران فراهم می‌کند', 'all', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `search_synonyms`
--

CREATE TABLE `search_synonyms` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `search_terms`
--

CREATE TABLE `search_terms` (
  `id` int UNSIGNED NOT NULL,
  `term` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `results` int NOT NULL DEFAULT '0',
  `uses` int NOT NULL DEFAULT '0',
  `redirect_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_in_suggested_terms` tinyint(1) NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id` int UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` int DEFAULT NULL,
  `total_weight` int DEFAULT NULL,
  `carrier_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carrier_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `track_number` text COLLATE utf8mb4_unicode_ci,
  `email_sent` tinyint(1) NOT NULL DEFAULT '0',
  `customer_id` int UNSIGNED DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `order_address_id` int UNSIGNED DEFAULT NULL,
  `inventory_source_id` int UNSIGNED DEFAULT NULL,
  `inventory_source_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `shipments`
--

INSERT INTO `shipments` (`id`, `status`, `total_qty`, `total_weight`, `carrier_code`, `carrier_title`, `track_number`, `email_sent`, `customer_id`, `customer_type`, `order_id`, `order_address_id`, `inventory_source_id`, `inventory_source_name`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 32, NULL, 'gdfg', '23232', 1, 3, 'Webkul\\Customer\\Models\\Customer', 1, 4, 1, 'پیش‌فرض', '2024-08-16 07:26:04', '2024-08-16 07:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `shipment_items`
--

CREATE TABLE `shipment_items` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `price` decimal(12,4) DEFAULT '0.0000',
  `base_price` decimal(12,4) DEFAULT '0.0000',
  `total` decimal(12,4) DEFAULT '0.0000',
  `base_total` decimal(12,4) DEFAULT '0.0000',
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `product_id` int UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_item_id` int UNSIGNED DEFAULT NULL,
  `shipment_id` int UNSIGNED NOT NULL,
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `shipment_items`
--

INSERT INTO `shipment_items` (`id`, `name`, `description`, `sku`, `qty`, `weight`, `price`, `base_price`, `total`, `base_total`, `price_incl_tax`, `base_price_incl_tax`, `product_id`, `product_type`, `order_item_id`, `shipment_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, 'محصول تست', NULL, 'test', 1, 32, '4343.0000', '4343.0000', '4343.0000', '4343.0000', '4343.0000', '4343.0000', 1, 'Webkul\\Product\\Models\\Product', 1, 1, '{\"locale\": \"fa\", \"quantity\": 1, \"product_id\": 1}', '2024-08-16 07:26:04', '2024-08-16 07:26:04');

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` int UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `generated_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers_list`
--

CREATE TABLE `subscribers_list` (
  `id` int UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_subscribed` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int UNSIGNED DEFAULT NULL,
  `channel_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tax_categories`
--

CREATE TABLE `tax_categories` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tax_categories_tax_rates`
--

CREATE TABLE `tax_categories_tax_rates` (
  `id` int UNSIGNED NOT NULL,
  `tax_category_id` int UNSIGNED NOT NULL,
  `tax_rate_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int UNSIGNED NOT NULL,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_zip` tinyint(1) NOT NULL DEFAULT '0',
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate` decimal(12,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `theme_customizations`
--

CREATE TABLE `theme_customizations` (
  `id` int UNSIGNED NOT NULL,
  `theme_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `channel_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `theme_customizations`
--

INSERT INTO `theme_customizations` (`id`, `theme_code`, `type`, `name`, `sort_order`, `status`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'default', 'image_carousel', 'اسلایدر تصاویر', 1, 1, 1, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(2, 'default', 'static_content', 'اطلاعات پیشنهاد', 2, 1, 1, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(3, 'default', 'category_carousel', 'مجموعه‌های دسته‌بندی', 3, 1, 1, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(4, 'default', 'product_carousel', 'محصولات جدید', 4, 1, 1, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(5, 'default', 'static_content', 'مجموعه‌های برتر', 5, 1, 1, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(6, 'default', 'static_content', 'مجموعه‌های جسور', 6, 1, 1, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(7, 'default', 'product_carousel', 'مجموعه‌های ویژه', 7, 1, 1, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(8, 'default', 'static_content', 'ظروف بازی', 8, 1, 1, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(9, 'default', 'product_carousel', 'همه محصولات', 9, 1, 1, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(10, 'default', 'static_content', 'مجموعه‌های جسور', 10, 1, 1, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(11, 'default', 'footer_links', 'پیوندهای فوتر', 11, 1, 1, '2024-08-15 12:20:01', '2024-08-15 12:20:01'),
(12, 'default', 'services_content', 'محتوای خدمات', 12, 1, 1, '2024-08-15 12:20:01', '2024-08-15 12:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `theme_customization_translations`
--

CREATE TABLE `theme_customization_translations` (
  `id` int UNSIGNED NOT NULL,
  `theme_customization_id` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` json NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `theme_customization_translations`
--

INSERT INTO `theme_customization_translations` (`id`, `theme_customization_id`, `locale`, `options`) VALUES
(1, 1, 'fa', '{\"images\": [{\"link\": \"\", \"image\": \"storage/theme/1/bl0tbEXY8MVeTA8why7aUMHzMlIJele1pRXgn1Rt.webp\", \"title\": \"آماده‌اید برای مجموعه جدید\"}, {\"link\": \"\", \"image\": \"storage/theme/1/9H2eQnXEqSh90WJTP7HAcOThbDTUVqkK1rXLjseP.webp\", \"title\": \"آماده‌اید برای مجموعه جدید\"}, {\"link\": \"\", \"image\": \"storage/theme/1/k77BinfM8RrxRb0MmWKSrGGm2qZe7hx0z3xvvUgv.webp\", \"title\": \"آماده‌اید برای مجموعه جدید\"}, {\"link\": \"\", \"image\": \"storage/theme/1/gW23ZoL1AxdtFyLnnQZ0QMd6XYoOhwFvlmIEIGbk.webp\", \"title\": \"آماده‌اید برای مجموعه جدید\"}]}'),
(2, 2, 'fa', '{\"css\": \".home-offer h1 {display: block;font-weight: 500;text-align: center;font-size: 22px;font-family: DM Serif Display;background-color: #E8EDFE;padding-top: 20px;padding-bottom: 20px;}@media (max-width:768px){.home-offer h1 {font-size:18px;padding-top: 10px;padding-bottom: 10px;}@media (max-width:525px) {.home-offer h1 {font-size:14px;padding-top: 6px;padding-bottom: 6px;}}\", \"html\": \"<div class=\\\"home-offer\\\"><h1>تا 40٪ تخفیف در سفارش اولتان، همین الان سفارش دهید</h1></div>\"}'),
(3, 3, 'fa', '{\"filters\": {\"sort\": \"asc\", \"limit\": 10, \"parent_id\": 1}}'),
(4, 4, 'fa', '{\"title\": \"محصولات جدید\", \"filters\": {\"new\": 1, \"sort\": \"asc\", \"limit\": 10}}'),
(5, 5, 'fa', '{\"css\": \".top-collection-container {overflow: hidden;}.top-collection-header {padding-left: 15px;padding-right: 15px;text-align: center;font-size: 70px;line-height: 90px;color: #060C3B;margin-top: 80px;}.top-collection-header h2 {max-width: 595px;margin-left: auto;margin-right: auto;font-family: DM Serif Display;}.top-collection-grid {display: flex;flex-wrap: wrap;gap: 32px;justify-content: center;margin-top: 60px;width: 100%;margin-right: auto;margin-left: auto;padding-right: 90px;padding-left: 90px;}.top-collection-card {position: relative;background: #f9fafb;overflow:hidden;border-radius:20px;}.top-collection-card img {border-radius: 16px;max-width: 100%;text-indent:-9999px;transition: transform 300ms ease;transform: scale(1);}.top-collection-card:hover img {transform: scale(1.05);transition: all 300ms ease;}.top-collection-card h3 {color: #060C3B;font-size: 30px;font-family: DM Serif Display;transform: translateX(-50%);width: max-content;left: 50%;bottom: 30px;position: absolute;margin: 0;font-weight: inherit;}@media not all and (min-width: 525px) {.top-collection-header {margin-top: 28px;font-size: 20px;line-height: 1.5;}.top-collection-grid {gap: 10px}}@media not all and (min-width: 768px) {.top-collection-header {margin-top: 30px;font-size: 28px;line-height: 3;}.top-collection-header h2 {line-height:2; margin-bottom:20px;} .top-collection-grid {gap: 14px}} @media not all and (min-width: 1024px) {.top-collection-grid {padding-left: 30px;padding-right: 30px;}}@media (max-width: 768px) {.top-collection-grid { row-gap:15px; column-gap:0px;justify-content: space-between;margin-top: 0px;} .top-collection-card{width:48%} .top-collection-card img {width:100%;} .top-collection-card h3 {font-size:24px; bottom: 16px;}}@media (max-width:520px) { .top-collection-grid{padding-left: 15px;padding-right: 15px;} .top-collection-card h3 {font-size:18px; bottom: 10px;}}\", \"html\": \"<div class=\\\"top-collection-container\\\"><div class=\\\"top-collection-header\\\"><h2>با افزودن‌های جدیدمان بازی کنید!</h2></div><div class=\\\"top-collection-grid container\\\"><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage/theme/5/Dph4Y5tZKSLKlwvFkYVDeMvq29qjaUWSjSV0DCWp.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"با افزودن‌های جدیدمان بازی کنید!\\\"><h3>مجموعه‌های ما</h3></div><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage/theme/5/DYM20Go1DyUxPmJk3gBidSiY0w7zBhyrVRRxkFPM.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"با افزودن‌های جدیدمان بازی کنید!\\\"><h3>مجموعه‌های ما</h3></div><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage/theme/5/A7FJ8FNY1qKnJbf7z3VFtzhUuGfs8Rudg8Tonzhb.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"با افزودن‌های جدیدمان بازی کنید!\\\"><h3>مجموعه‌های ما</h3></div><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage/theme/5/W4hjhlpKX03xm3rd0EAvS004wNpnnfIa80WpaGCw.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"با افزودن‌های جدیدمان بازی کنید!\\\"><h3>مجموعه‌های ما</h3></div><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage/theme/5/r2sOUC4tj0XC7TVpOCXV4Tccls9MIcwfZ7aVhIGT.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"با افزودن‌های جدیدمان بازی کنید!\\\"><h3>مجموعه‌های ما</h3></div><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage/theme/5/hg2wskpcI1Fc11ZjYqtOxI1gJdt89bvrCH6yun0n.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"با افزودن‌های جدیدمان بازی کنید!\\\"><h3>مجموعه‌های ما</h3></div></div></div>\"}'),
(6, 6, 'fa', '{\"css\": \".section-gap{margin-top:80px}.direction-ltr{direction:ltr}.direction-rtl{direction:rtl}.inline-col-wrapper{display:grid;grid-template-columns:auto 1fr;grid-gap:60px;align-items:center}.inline-col-wrapper .inline-col-image-wrapper{overflow:hidden}.inline-col-wrapper .inline-col-image-wrapper img{max-width:100%;height:auto;border-radius:16px;text-indent:-9999px}.inline-col-wrapper .inline-col-content-wrapper{display:flex;flex-wrap:wrap;gap:20px;max-width:464px}.inline-col-wrapper .inline-col-content-wrapper .inline-col-title{max-width:442px;font-size:60px;font-weight:400;color:#060c3b;line-height:70px;font-family:DM Serif Display;margin:0}.inline-col-wrapper .inline-col-content-wrapper .inline-col-description{margin:0;font-size:18px;color:#6e6e6e;font-family:Poppins}@media (max-width:991px){.inline-col-wrapper{grid-template-columns:1fr;grid-gap:16px}.inline-col-wrapper .inline-col-content-wrapper{gap:10px}} @media (max-width:768px){.inline-col-wrapper .inline-col-image-wrapper img {width:100%;} .inline-col-wrapper .inline-col-content-wrapper .inline-col-title{font-size:28px !important;line-height:normal !important}} @media (max-width:525px){.inline-col-wrapper .inline-col-content-wrapper .inline-col-title{font-size:20px !important;} .inline-col-description{font-size:16px} .inline-col-wrapper{grid-gap:10px}}\", \"html\": \"<div class=\\\"section-gap bold-collections container\\\"> <div class=\\\"inline-col-wrapper\\\"> <div class=\\\"inline-col-image-wrapper\\\"> <img src=\\\"\\\" data-src=\\\"storage/theme/6/hYFPB6OZdHcSBsfFPCwmX4klG55H9ixWXqknsaws.webp\\\" class=\\\"lazy\\\" width=\\\"632\\\" height=\\\"510\\\" alt=\\\"برای مجموعه‌های جسور جدیدمان آماده شوید!\\\"> </div> <div class=\\\"inline-col-content-wrapper\\\"> <h2 class=\\\"inline-col-title\\\"> برای مجموعه‌های جسور جدیدمان آماده شوید! </h2> <p class=\\\"inline-col-description\\\">معرفی مجموعه‌های جسور جدید ما! سبک خود را با طراحی‌های جسور و اظهارات جذاب بالا ببرید. الگوها و رنگ‌های جسوری را کشف کنید که لباس‌درمانی‌تان را بازتعریف می‌کنند. برای پذیرش بی‌نظیری آماده شوید!</p> <button class=\\\"primary-button max-md:rounded-lg max-md:px-4 max-md:py-2.5 max-md:text-sm\\\">مشاهده مجموعه‌ها</button> </div> </div> </div>\"}'),
(7, 7, 'fa', '{\"title\": \"محصولات ویژه\", \"filters\": {\"sort\": \"desc\", \"limit\": 10, \"featured\": 1}}'),
(8, 8, 'fa', '{\"css\": \".section-game {overflow: hidden;}.section-title,.section-title h2{font-weight:400;font-family:DM Serif Display}.section-title{margin-top:80px;padding-left:15px;padding-right:15px;text-align:center;line-height:90px}.section-title h2{font-size:70px;color:#060c3b;max-width:595px;margin:auto}.collection-card-wrapper{display:flex;flex-wrap:wrap;justify-content:center;gap:30px}.collection-card-wrapper .single-collection-card{position:relative}.collection-card-wrapper .single-collection-card img{border-radius:16px;background-color:#f5f5f5;max-width:100%;height:auto;text-indent:-9999px}.collection-card-wrapper .single-collection-card .overlay-text{font-size:50px;font-weight:400;max-width:234px;font-style:italic;color:#060c3b;font-family:DM Serif Display;position:absolute;bottom:30px;left:30px;margin:0}@media (max-width:1024px){.section-title{padding:0 30px}}@media (max-width:991px){.collection-card-wrapper{flex-wrap:wrap}}@media (max-width:768px) {.collection-card-wrapper .single-collection-card .overlay-text{font-size:32px; bottom:20px}.section-title{margin-top:32px}.section-title h2{font-size:28px;line-height:normal}} @media (max-width:525px){.collection-card-wrapper .single-collection-card .overlay-text{font-size:18px; bottom:10px} .section-title{margin-top:28px}.section-title h2{font-size:20px;} .collection-card-wrapper{gap:10px; 15px; row-gap:15px; column-gap:0px;justify-content: space-between;margin-top: 15px;} .collection-card-wrapper .single-collection-card {width:48%;}}\", \"html\": \"<div class=\\\"section-game\\\"><div class=\\\"section-title\\\"> <h2>با افزودن‌های جدیدمان بازی کنید!</h2> </div> <div class=\\\"section-gap container\\\"> <div class=\\\"collection-card-wrapper\\\"> <div class=\\\"single-collection-card\\\"> <img src=\\\"\\\" data-src=\\\"storage/theme/8/6SRY6HUaOX6ak6ppwgB2hSTZiH0NLA3b8VsxlnD8.webp\\\" class=\\\"lazy\\\" width=\\\"615\\\" height=\\\"600\\\" alt=\\\"با افزودن‌های جدیدمان بازی کنید!\\\"> <h3 class=\\\"overlay-text\\\">مجموعه‌های ما</h3> </div> <div class=\\\"single-collection-card\\\"> <img src=\\\"\\\" data-src=\\\"storage/theme/8/qNGVenWFhOaOKVGFfxrCNpY30nVSmzaXWSYqYs0g.webp\\\" class=\\\"lazy\\\" width=\\\"615\\\" height=\\\"600\\\" alt=\\\"با افزودن‌های جدیدمان بازی کنید!\\\"> <h3 class=\\\"overlay-text\\\"> مجموعه‌های ما </h3> </div> </div> </div> </div>\"}'),
(9, 9, 'fa', '{\"title\": \"همه محصولات\", \"filters\": {\"sort\": \"desc\", \"limit\": 10}}'),
(10, 10, 'fa', '{\"css\": \".section-gap{margin-top:80px}.direction-ltr{direction:ltr}.direction-rtl{direction:rtl}.inline-col-wrapper{display:grid;grid-template-columns:auto 1fr;grid-gap:60px;align-items:center}.inline-col-wrapper .inline-col-image-wrapper{overflow:hidden}.inline-col-wrapper .inline-col-image-wrapper img{max-width:100%;height:auto;border-radius:16px;text-indent:-9999px}.inline-col-wrapper .inline-col-content-wrapper{display:flex;flex-wrap:wrap;gap:20px;max-width:464px}.inline-col-wrapper .inline-col-content-wrapper .inline-col-title{max-width:442px;font-size:60px;font-weight:400;color:#060c3b;line-height:70px;font-family:DM Serif Display;margin:0}.inline-col-wrapper .inline-col-content-wrapper .inline-col-description{margin:0;font-size:18px;color:#6e6e6e;font-family:Poppins}@media (max-width:991px){.inline-col-wrapper{grid-template-columns:1fr;grid-gap:16px}.inline-col-wrapper .inline-col-content-wrapper{gap:10px}}@media (max-width:768px) {.inline-col-wrapper .inline-col-image-wrapper img {max-width:100%;}.inline-col-wrapper .inline-col-content-wrapper{max-width:100%;justify-content:center; text-align:center} .section-gap{padding:0 30px; gap:20px;margin-top:24px} .bold-collections{margin-top:32px;}} @media (max-width:525px){.inline-col-wrapper .inline-col-content-wrapper{gap:10px} .inline-col-wrapper .inline-col-content-wrapper .inline-col-title{font-size:20px;line-height:normal} .section-gap{padding:0 15px; gap:15px;margin-top:10px} .bold-collections{margin-top:28px;}  .inline-col-description{font-size:16px !important} .inline-col-wrapper{grid-gap:15px}\", \"html\": \"<div class=\\\"section-gap bold-collections container\\\"> <div class=\\\"inline-col-wrapper direction-rtl\\\"> <div class=\\\"inline-col-image-wrapper\\\"> <img src=\\\"\\\" data-src=\\\"storage/theme/10/9UhXOErqRbgfKyOM5tOprGiCXIhfRBjU2iaBSON9.webp\\\" class=\\\"lazy\\\" width=\\\"632\\\" height=\\\"510\\\" alt=\\\"برای مجموعه‌های جسور جدیدمان آماده شوید!\\\"> </div> <div class=\\\"inline-col-content-wrapper direction-ltr\\\"> <h2 class=\\\"inline-col-title\\\"> برای مجموعه‌های جسور جدیدمان آماده شوید! </h2> <p class=\\\"inline-col-description\\\">معرفی مجموعه‌های جسور جدید ما! سبک خود را با طراحی‌های جسور و اظهارات جذاب بالا ببرید. الگوها و رنگ‌های جسوری را کشف کنید که لباس‌درمانی‌تان را بازتعریف می‌کنند. برای پذیرش بی‌نظیری آماده شوید!</p> <button class=\\\"primary-button max-md:rounded-lg max-md:px-4 max-md:py-2.5 max-md:text-sm\\\">مشاهده مجموعه‌ها</button> </div> </div> </div>\"}'),
(11, 11, 'fa', '{\"column_1\": [{\"url\": \"bagisto.test/page/about-us\", \"title\": \"درباره ما\", \"sort_order\": 1}, {\"url\": \"bagisto.test/contact-us\", \"title\": \"تماس با ما\", \"sort_order\": 2}, {\"url\": \"bagisto.test/page/customer-service\", \"title\": \"خدمات مشتریان\", \"sort_order\": 3}, {\"url\": \"bagisto.test/page/whats-new\", \"title\": \"چه خبر است\", \"sort_order\": 4}, {\"url\": \"bagisto.test/page/terms-of-use\", \"title\": \"شرایط استفاده\", \"sort_order\": 5}, {\"url\": \"bagisto.test/page/terms-conditions\", \"title\": \"شرایط و مقررات\", \"sort_order\": 6}], \"column_2\": [{\"url\": \"bagisto.test/page/privacy-policy\", \"title\": \"سیاست حریم خصوصی\", \"sort_order\": 1}, {\"url\": \"bagisto.test/page/payment-policy\", \"title\": \"سیاست پرداخت\", \"sort_order\": 2}, {\"url\": \"bagisto.test/page/shipping-policy\", \"title\": \"سیاست حمل و نقل\", \"sort_order\": 3}, {\"url\": \"bagisto.test/page/refund-policy\", \"title\": \"سیاست بازپرداخت\", \"sort_order\": 4}, {\"url\": \"bagisto.test/page/return-policy\", \"title\": \"سیاست بازگشت\", \"sort_order\": 5}]}'),
(12, 12, 'fa', '{\"services\": [{\"title\": \"ارسال رایگان\", \"description\": \"از ارسال رایگان در تمام سفارش‌ها لذت ببرید\", \"service_icon\": \"icon-truck\"}, {\"title\": \"تعویض محصول\", \"description\": \"تعویض آسان محصول در دسترس است!\", \"service_icon\": \"icon-product\"}, {\"title\": \"EMI در دسترس است\", \"description\": \"EMI بدون هزینه در تمام کارت‌های اعتباری اصلی در دسترس است\", \"service_icon\": \"icon-dollar-sign\"}, {\"title\": \"پشتیبانی 24/7\", \"description\": \"پشتیبانی اختصاصی 24/7 از طریق چت و ایمیل\", \"service_icon\": \"icon-support\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `url_rewrites`
--

CREATE TABLE `url_rewrites` (
  `id` int UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint UNSIGNED NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request` mediumtext COLLATE utf8mb4_unicode_ci,
  `url` mediumtext COLLATE utf8mb4_unicode_ci,
  `referer` mediumtext COLLATE utf8mb4_unicode_ci,
  `languages` text COLLATE utf8mb4_unicode_ci,
  `useragent` text COLLATE utf8mb4_unicode_ci,
  `headers` text COLLATE utf8mb4_unicode_ci,
  `device` text COLLATE utf8mb4_unicode_ci,
  `platform` text COLLATE utf8mb4_unicode_ci,
  `browser` text COLLATE utf8mb4_unicode_ci,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitable_id` bigint UNSIGNED DEFAULT NULL,
  `visitor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitor_id` bigint UNSIGNED DEFAULT NULL,
  `channel_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `method`, `request`, `url`, `referer`, `languages`, `useragent`, `headers`, `device`, `platform`, `browser`, `ip`, `visitable_type`, `visitable_id`, `visitor_type`, `visitor_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'GET', '[]', 'http://bagisto.test', NULL, '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IjgxQ0c0SEo4OW1UYTRBOVU5aGt5YkE9PSIsInZhbHVlIjoiaHp3VldpZFRsVFlIREVGREVNRW5PSzN0RXN1bFpuNmxIWGxPblhEVWNabEphVVd3OU9IZ3ZtakxQQW5tcGdQVFY4WFZvL1RBVDA2Q2NBNGI4UHoybVBGSGdOZ2NTTjB4SzNGT1BERmdHWUNKanBZbDhlcSswZ1NrV3pqZ0tpWUsiLCJtYWMiOiJiZmIyNTEzYWI3YzhkNGU5MDc5ZjU1ZjExZDBkNmVjOTI3M2Y3YWY2NDVhYWRiY2ZiYzNkODg3ODkzYmM2MTBiIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IlVyckY0amlFc01CSkFvV2NWREJOK2c9PSIsInZhbHVlIjoiMUpNeDZRQjhYcTJDYTJDdE5udkQ0ZEtDMi9ma2pXNXY0SkdLZTkxbGk2UHAxMlFuVnlxNm4xaUFNZURNb3hIb0pkaUh2SktuREZrOGFhb1Z0eFl0Sk85REhTcEJRV05UdHdzNzZua20wYmNEWmNjOVJLd1dFbDZ4ei9kclI2OCsiLCJtYWMiOiIyZTQ4Mzg0NjM1MTlmZGU5ZjJiZjEyM2VmNTM5MTNiYTVmOTc5Mzk0OWZkYmJmN2Y3NWJmZDNkNDQ3OWNkNmQxIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2024-08-15 10:20:52', '2024-08-15 10:20:52'),
(2, 'GET', '[]', 'https://bagisto.test', NULL, '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6ImFUdXhUMzh0Ym9MYktSbDA0ZnBQL3c9PSIsInZhbHVlIjoiQjNlY3RvTkp5eldiRy9TR3RnZFB6eVpFYkt4SDFRaytQajN2ZStiTWJtWEpuODl6dGlhdXZIbnM0UGczYXJKOVg2OGI2V0VFUWI4MUhXOEptYXJoV0F1T2ZaTWtxU1ZUZkFRL1M2WGNmc2lDZG5mWUh1RU9EdlFJMHpOOTBIa1YiLCJtYWMiOiIwZDEzNzU5NzQzYTM2Yzk2MTVhZWRjMjg4MDFhMzU1ZjgxN2E1Nzc5YTIwZjJmODY1ODY0MzNmMmRhOGYxMzdmIiwidGFnIjoiIn0%3D; bagisto_session=rtfwwupbVvQPaphM3uBCGJFzvlQ3T3309Vzmh3fa\"],\"upgrade-insecure-requests\":[\"1\"],\"sec-fetch-dest\":[\"document\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-user\":[\"?1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2024-08-15 11:37:42', '2024-08-15 11:37:42'),
(3, 'GET', '[]', 'https://bagisto.test', 'https://bagisto.test/customer/login', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/customer\\/login\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6ImkvcDdVanNhYm0ra0I1bTJJVWtNMEE9PSIsInZhbHVlIjoianBmWkpadUFyZ0ZXTXN6emNrZVk3enBvdnA3cWR3Q2dJNXgzV3ZheFY2aHhJZVFXS01RR2lLSnpseTB0YzVpQjVjcVdQWW5VZTA1cDVrSlRCOXdmUFNWV2tDb09Bc2NpSE1ZeGV3UXBkbU1ONDZiZDBqZVo2clJ1WWVXTVQzdEYiLCJtYWMiOiIwNGNhYzY3ODhjNjI5MjE2MThkNmE1NWQyODY1NGRlMTMxYzE1NGFmYTJlYTNhYWI0MWM0MDFmZjA5MTJhN2UwIiwidGFnIjoiIn0%3D; bagisto_session=zzuXUk2oslnrb4F6dEY4523GAeepCLT1PiNPXIXs\"],\"upgrade-insecure-requests\":[\"1\"],\"sec-fetch-dest\":[\"document\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-user\":[\"?1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-15 11:38:23', '2024-08-15 11:38:23'),
(4, 'GET', '[]', 'https://bagisto.test/storage/theme/1/bl0tbEXY8MVeTA8why7aUMHzMlIJele1pRXgn1Rt.webp', 'https://bagisto.test/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6InNvMFMzclhCYUtDNUlKV2R2UlF2a1E9PSIsInZhbHVlIjoickt5OUxCU3VXZ0pKTGlJZDAxeDROakFlNXRMeGI2dnlhL1kzSmhKeFRHL0wrVG9jbjdFSXhXZGJMSFlGUVJWUDBEQjVqNHR3SjR3Qm45bHU2RTMzcGRIdEJGOGVlS2NLZytPbkJLWnR0ejgyK2pZRjY1UWJtemxUTitYSngxeWoiLCJtYWMiOiIwMmNmNGE4ZjAwNWVmNmM1MWYwOWJlNGQ4M2NjZDgyNzAzZGIyM2U1YzUyNTRlNTk1NzFkZDdlNDkxMTk0NDFjIiwidGFnIjoiIn0%3D; bagisto_session=HU4dKtBXvHK1uBDSrFMSYT9mxyD9C1vu7hdIqBEE\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-15 11:38:28', '2024-08-15 11:38:28'),
(5, 'GET', '[]', 'https://bagisto.test/storage/theme/1/9H2eQnXEqSh90WJTP7HAcOThbDTUVqkK1rXLjseP.webp', 'https://bagisto.test/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6InNvMFMzclhCYUtDNUlKV2R2UlF2a1E9PSIsInZhbHVlIjoickt5OUxCU3VXZ0pKTGlJZDAxeDROakFlNXRMeGI2dnlhL1kzSmhKeFRHL0wrVG9jbjdFSXhXZGJMSFlGUVJWUDBEQjVqNHR3SjR3Qm45bHU2RTMzcGRIdEJGOGVlS2NLZytPbkJLWnR0ejgyK2pZRjY1UWJtemxUTitYSngxeWoiLCJtYWMiOiIwMmNmNGE4ZjAwNWVmNmM1MWYwOWJlNGQ4M2NjZDgyNzAzZGIyM2U1YzUyNTRlNTk1NzFkZDdlNDkxMTk0NDFjIiwidGFnIjoiIn0%3D; bagisto_session=HU4dKtBXvHK1uBDSrFMSYT9mxyD9C1vu7hdIqBEE\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-15 11:38:28', '2024-08-15 11:38:28'),
(6, 'GET', '[]', 'https://bagisto.test/storage/theme/1/k77BinfM8RrxRb0MmWKSrGGm2qZe7hx0z3xvvUgv.webp', 'https://bagisto.test/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6InNvMFMzclhCYUtDNUlKV2R2UlF2a1E9PSIsInZhbHVlIjoickt5OUxCU3VXZ0pKTGlJZDAxeDROakFlNXRMeGI2dnlhL1kzSmhKeFRHL0wrVG9jbjdFSXhXZGJMSFlGUVJWUDBEQjVqNHR3SjR3Qm45bHU2RTMzcGRIdEJGOGVlS2NLZytPbkJLWnR0ejgyK2pZRjY1UWJtemxUTitYSngxeWoiLCJtYWMiOiIwMmNmNGE4ZjAwNWVmNmM1MWYwOWJlNGQ4M2NjZDgyNzAzZGIyM2U1YzUyNTRlNTk1NzFkZDdlNDkxMTk0NDFjIiwidGFnIjoiIn0%3D; bagisto_session=HU4dKtBXvHK1uBDSrFMSYT9mxyD9C1vu7hdIqBEE\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-15 11:38:28', '2024-08-15 11:38:28'),
(7, 'GET', '[]', 'https://bagisto.test/storage/theme/1/gW23ZoL1AxdtFyLnnQZ0QMd6XYoOhwFvlmIEIGbk.webp', 'https://bagisto.test/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6InNvMFMzclhCYUtDNUlKV2R2UlF2a1E9PSIsInZhbHVlIjoickt5OUxCU3VXZ0pKTGlJZDAxeDROakFlNXRMeGI2dnlhL1kzSmhKeFRHL0wrVG9jbjdFSXhXZGJMSFlGUVJWUDBEQjVqNHR3SjR3Qm45bHU2RTMzcGRIdEJGOGVlS2NLZytPbkJLWnR0ejgyK2pZRjY1UWJtemxUTitYSngxeWoiLCJtYWMiOiIwMmNmNGE4ZjAwNWVmNmM1MWYwOWJlNGQ4M2NjZDgyNzAzZGIyM2U1YzUyNTRlNTk1NzFkZDdlNDkxMTk0NDFjIiwidGFnIjoiIn0%3D; bagisto_session=HU4dKtBXvHK1uBDSrFMSYT9mxyD9C1vu7hdIqBEE\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-15 11:38:29', '2024-08-15 11:38:29'),
(8, 'GET', '[]', 'http://bagisto.test', NULL, '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=jv0Ev88p8tJFrreWuo0Hes3MN4nSd3FsB8xyz2tv\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-15 13:18:05', '2024-08-15 13:18:05'),
(9, 'GET', '[]', 'http://bagisto.test/storage/theme/5/A7FJ8FNY1qKnJbf7z3VFtzhUuGfs8Rudg8Tonzhb.webp', 'http://bagisto.test/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=JzdjBVuyoUvvP5yUJeLeXrO2OAWcj5v69hF45sZW\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-15 13:18:23', '2024-08-15 13:18:23'),
(10, 'GET', '[]', 'http://bagisto.test/storage/theme/5/W4hjhlpKX03xm3rd0EAvS004wNpnnfIa80WpaGCw.webp', 'http://bagisto.test/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=JzdjBVuyoUvvP5yUJeLeXrO2OAWcj5v69hF45sZW\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-15 13:18:23', '2024-08-15 13:18:23'),
(11, 'GET', '[]', 'http://bagisto.test/storage/theme/5/hg2wskpcI1Fc11ZjYqtOxI1gJdt89bvrCH6yun0n.webp', 'http://bagisto.test/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=JzdjBVuyoUvvP5yUJeLeXrO2OAWcj5v69hF45sZW\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-15 13:18:24', '2024-08-15 13:18:24'),
(12, 'GET', '[]', 'http://bagisto.test/storage/theme/5/r2sOUC4tj0XC7TVpOCXV4Tccls9MIcwfZ7aVhIGT.webp', 'http://bagisto.test/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=JzdjBVuyoUvvP5yUJeLeXrO2OAWcj5v69hF45sZW\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-15 13:18:24', '2024-08-15 13:18:24'),
(13, 'GET', '[]', 'http://bagisto.test/storage/theme/6/hYFPB6OZdHcSBsfFPCwmX4klG55H9ixWXqknsaws.webp', 'http://bagisto.test/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=JzdjBVuyoUvvP5yUJeLeXrO2OAWcj5v69hF45sZW\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-15 13:18:24', '2024-08-15 13:18:24'),
(14, 'GET', '[]', 'http://bagisto.test/storage/theme/8/6SRY6HUaOX6ak6ppwgB2hSTZiH0NLA3b8VsxlnD8.webp', 'http://bagisto.test/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=6bkH9cs3TM4jwFqesRiClmzI4SuDIUDPJwvMliE4\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-15 13:18:25', '2024-08-15 13:18:25'),
(15, 'GET', '[]', 'http://bagisto.test/storage/theme/8/qNGVenWFhOaOKVGFfxrCNpY30nVSmzaXWSYqYs0g.webp', 'http://bagisto.test/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=6bkH9cs3TM4jwFqesRiClmzI4SuDIUDPJwvMliE4\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-15 13:18:25', '2024-08-15 13:18:25'),
(16, 'GET', '[]', 'http://bagisto.test/storage/theme/10/9UhXOErqRbgfKyOM5tOprGiCXIhfRBjU2iaBSON9.webp', 'http://bagisto.test/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=AuR5rao77o7hnXHXLt2EHcZRZCirtFbJcUKRa1gd\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-15 13:18:26', '2024-08-15 13:18:26'),
(17, 'GET', '[]', 'http://bagisto.test/storage/theme/5/Dph4Y5tZKSLKlwvFkYVDeMvq29qjaUWSjSV0DCWp.webp', 'http://bagisto.test/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=PN2PcukpSXsm1JHn9I949F265Ox4RpmwTjUKWxYd\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-15 13:20:47', '2024-08-15 13:20:47'),
(18, 'GET', '[]', 'http://bagisto.test', NULL, '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=IhvDSCk8vjS4ozdBKPphwCIaB9cZ3GlaNVboTrJQ; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-16 02:55:29', '2024-08-16 02:55:29'),
(19, 'GET', '[]', 'http://bagisto.test/%D9%85%D8%AD%D8%B5%D9%88%D9%84-%D8%AA%D8%B3%D8%AA', 'http://bagisto.test/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=ZC3MQshecXbiNoCGM86ADCKaZqCZAtJAvjTfHiXW; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 1, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-16 03:20:14', '2024-08-16 03:20:14'),
(20, 'GET', '[]', 'http://bagisto.test/checkout/%D8%A2%DB%8C%E2%80%8C%D9%BE%DB%8C%20%D9%88%20%DB%8C%D8%A7%20%D9%85%D8%B1%DA%86%D9%86%D8%AA%20%D9%83%D8%AF%20%D9%BE%D8%B0%DB%8C%D8%B1%D9%86%D8%AF%D9%87%20%D8%B5%D8%AD%DB%8C%D8%AD%20%D9%86%DB%8C%D8%B3%D8%AA.', 'http://bagisto.test/checkout/onepage', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/bagisto.test\\/checkout\\/onepage\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=gTs60EGYnBKK2NohJQeR1prMPyLpUIwUsE5xLdgO; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-16 05:27:22', '2024-08-16 05:27:22'),
(21, 'GET', '[]', 'http://bagisto.test/checkout/storage/theme/1/bl0tbEXY8MVeTA8why7aUMHzMlIJele1pRXgn1Rt.webp', 'http://bagisto.test/checkout/%D8%A2%DB%8C%E2%80%8C%D9%BE%DB%8C%20%D9%88%20%DB%8C%D8%A7%20%D9%85%D8%B1%DA%86%D9%86%D8%AA%20%D9%83%D8%AF%20%D9%BE%D8%B0%DB%8C%D8%B1%D9%86%D8%AF%D9%87%20%D8%B5%D8%AD%DB%8C%D8%AD%20%D9%86%DB%8C%D8%B3%D8%AA.', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/bagisto.test\\/checkout\\/%D8%A2%DB%8C%E2%80%8C%D9%BE%DB%8C%20%D9%88%20%DB%8C%D8%A7%20%D9%85%D8%B1%DA%86%D9%86%D8%AA%20%D9%83%D8%AF%20%D9%BE%D8%B0%DB%8C%D8%B1%D9%86%D8%AF%D9%87%20%D8%B5%D8%AD%DB%8C%D8%AD%20%D9%86%DB%8C%D8%B3%D8%AA.\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=qtDQM6xwrVwKxpFKQw9Rh70ghUp2iuYwfcHMWNlI; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-16 05:27:29', '2024-08-16 05:27:29'),
(22, 'GET', '[]', 'http://bagisto.test/checkout/storage/theme/1/9H2eQnXEqSh90WJTP7HAcOThbDTUVqkK1rXLjseP.webp', 'http://bagisto.test/checkout/%D8%A2%DB%8C%E2%80%8C%D9%BE%DB%8C%20%D9%88%20%DB%8C%D8%A7%20%D9%85%D8%B1%DA%86%D9%86%D8%AA%20%D9%83%D8%AF%20%D9%BE%D8%B0%DB%8C%D8%B1%D9%86%D8%AF%D9%87%20%D8%B5%D8%AD%DB%8C%D8%AD%20%D9%86%DB%8C%D8%B3%D8%AA.', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/bagisto.test\\/checkout\\/%D8%A2%DB%8C%E2%80%8C%D9%BE%DB%8C%20%D9%88%20%DB%8C%D8%A7%20%D9%85%D8%B1%DA%86%D9%86%D8%AA%20%D9%83%D8%AF%20%D9%BE%D8%B0%DB%8C%D8%B1%D9%86%D8%AF%D9%87%20%D8%B5%D8%AD%DB%8C%D8%AD%20%D9%86%DB%8C%D8%B3%D8%AA.\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=qtDQM6xwrVwKxpFKQw9Rh70ghUp2iuYwfcHMWNlI; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-16 05:27:29', '2024-08-16 05:27:29'),
(23, 'GET', '[]', 'http://bagisto.test/checkout/storage/theme/1/k77BinfM8RrxRb0MmWKSrGGm2qZe7hx0z3xvvUgv.webp', 'http://bagisto.test/checkout/%D8%A2%DB%8C%E2%80%8C%D9%BE%DB%8C%20%D9%88%20%DB%8C%D8%A7%20%D9%85%D8%B1%DA%86%D9%86%D8%AA%20%D9%83%D8%AF%20%D9%BE%D8%B0%DB%8C%D8%B1%D9%86%D8%AF%D9%87%20%D8%B5%D8%AD%DB%8C%D8%AD%20%D9%86%DB%8C%D8%B3%D8%AA.', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/bagisto.test\\/checkout\\/%D8%A2%DB%8C%E2%80%8C%D9%BE%DB%8C%20%D9%88%20%DB%8C%D8%A7%20%D9%85%D8%B1%DA%86%D9%86%D8%AA%20%D9%83%D8%AF%20%D9%BE%D8%B0%DB%8C%D8%B1%D9%86%D8%AF%D9%87%20%D8%B5%D8%AD%DB%8C%D8%AD%20%D9%86%DB%8C%D8%B3%D8%AA.\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=qtDQM6xwrVwKxpFKQw9Rh70ghUp2iuYwfcHMWNlI; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-16 05:27:30', '2024-08-16 05:27:30'),
(24, 'GET', '[]', 'http://bagisto.test/checkout/storage/theme/1/gW23ZoL1AxdtFyLnnQZ0QMd6XYoOhwFvlmIEIGbk.webp', 'http://bagisto.test/checkout/%D8%A2%DB%8C%E2%80%8C%D9%BE%DB%8C%20%D9%88%20%DB%8C%D8%A7%20%D9%85%D8%B1%DA%86%D9%86%D8%AA%20%D9%83%D8%AF%20%D9%BE%D8%B0%DB%8C%D8%B1%D9%86%D8%AF%D9%87%20%D8%B5%D8%AD%DB%8C%D8%AD%20%D9%86%DB%8C%D8%B3%D8%AA.', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/bagisto.test\\/checkout\\/%D8%A2%DB%8C%E2%80%8C%D9%BE%DB%8C%20%D9%88%20%DB%8C%D8%A7%20%D9%85%D8%B1%DA%86%D9%86%D8%AA%20%D9%83%D8%AF%20%D9%BE%D8%B0%DB%8C%D8%B1%D9%86%D8%AF%D9%87%20%D8%B5%D8%AD%DB%8C%D8%AD%20%D9%86%DB%8C%D8%B3%D8%AA.\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=qtDQM6xwrVwKxpFKQw9Rh70ghUp2iuYwfcHMWNlI; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-16 05:27:30', '2024-08-16 05:27:30'),
(25, 'GET', '[]', 'http://bagisto.test/checkout/[object%20Object]', 'http://bagisto.test/checkout/onepage', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate\"],\"referer\":[\"http:\\/\\/bagisto.test\\/checkout\\/onepage\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=rHQEvEhGeCacUPxJeHR5LwGyxuNNdOqGi5UKNLWG; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y\"],\"upgrade-insecure-requests\":[\"1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-16 05:29:26', '2024-08-16 05:29:26'),
(26, 'GET', '[]', 'https://bagisto.test/checkout/[object%20Object]', 'https://bagisto.test/checkout/onepage', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/checkout\\/onepage\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=HbP7T6c1aCgKE0ZBOky9wIqB8Xv0QW4pnBI4vN73; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6ImJMVXljdVFMK3NFZDRzd1FldWJWTGc9PSIsInZhbHVlIjoiWGYxMmsvdHdkMFBYRWx5anlLaUxYeHJkOWhPTlRyZ05xV3ROVUJraWZMajU4dlVXbE42Tnp0SW5ZRHZtdzhvQ1pmKytkZkdqSE5VZlVweU8wbld2ejR0Qk5lUUs4YWVnWEtNZGNOR01JMWtoQ0IrZmhYVktxTG5XdlNReFFaVUsiLCJtYWMiOiJmNzdiYWIyMjJiN2UwOWIyMDAwMWY5ZTA4NjE5MDc0OGZhOWMwZDNjNWU1NWFhZDE5YmQ0MjU4Njc5MjAxYzNlIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"sec-fetch-dest\":[\"document\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-user\":[\"?1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-16 05:45:47', '2024-08-16 05:45:47'),
(27, 'GET', '[]', 'https://bagisto.test/checkout/storage/theme/1/bl0tbEXY8MVeTA8why7aUMHzMlIJele1pRXgn1Rt.webp', 'https://bagisto.test/checkout/[object%20Object]', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/checkout\\/[object%20Object]\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=lrUt5Cyq0ZFqxhiWbccscfLFHxgaaPz6mBMC39VF; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6IjJFQWFEQXFBRjEwSDZkem50TWZ3TFE9PSIsInZhbHVlIjoibm9KTXNhU1RNVlhjZUE2Wm9SM3RmZlgzNlY3cjI1RFp6QkJka0E0QU96NkcrYUFwSE5SV2RsbWlCL09ac3dyVVd0N045ZzEyMmpEZEZkYUQ3Mmt4TGdmaWJaeEJld1JFTWhtbE1iQ210SVhReW5Kb0lsOFN4SGVnaWFZL2ppbmgiLCJtYWMiOiJhODAyNDZmZWE4YmU2NzJmZWI2YWI1ZjgyZTg2ZmY4NDNkZWNlYWVjOTJkNTJlMDNhNTU4ODNmZWMzZDk4YjU4IiwidGFnIjoiIn0%3D\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-16 05:45:52', '2024-08-16 05:45:52'),
(28, 'GET', '[]', 'https://bagisto.test/checkout/storage/theme/1/k77BinfM8RrxRb0MmWKSrGGm2qZe7hx0z3xvvUgv.webp', 'https://bagisto.test/checkout/[object%20Object]', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/checkout\\/[object%20Object]\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=lrUt5Cyq0ZFqxhiWbccscfLFHxgaaPz6mBMC39VF; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6IjJFQWFEQXFBRjEwSDZkem50TWZ3TFE9PSIsInZhbHVlIjoibm9KTXNhU1RNVlhjZUE2Wm9SM3RmZlgzNlY3cjI1RFp6QkJka0E0QU96NkcrYUFwSE5SV2RsbWlCL09ac3dyVVd0N045ZzEyMmpEZEZkYUQ3Mmt4TGdmaWJaeEJld1JFTWhtbE1iQ210SVhReW5Kb0lsOFN4SGVnaWFZL2ppbmgiLCJtYWMiOiJhODAyNDZmZWE4YmU2NzJmZWI2YWI1ZjgyZTg2ZmY4NDNkZWNlYWVjOTJkNTJlMDNhNTU4ODNmZWMzZDk4YjU4IiwidGFnIjoiIn0%3D\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-16 05:45:52', '2024-08-16 05:45:52'),
(29, 'GET', '[]', 'https://bagisto.test/checkout/storage/theme/1/9H2eQnXEqSh90WJTP7HAcOThbDTUVqkK1rXLjseP.webp', 'https://bagisto.test/checkout/[object%20Object]', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/checkout\\/[object%20Object]\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=lrUt5Cyq0ZFqxhiWbccscfLFHxgaaPz6mBMC39VF; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6IjJFQWFEQXFBRjEwSDZkem50TWZ3TFE9PSIsInZhbHVlIjoibm9KTXNhU1RNVlhjZUE2Wm9SM3RmZlgzNlY3cjI1RFp6QkJka0E0QU96NkcrYUFwSE5SV2RsbWlCL09ac3dyVVd0N045ZzEyMmpEZEZkYUQ3Mmt4TGdmaWJaeEJld1JFTWhtbE1iQ210SVhReW5Kb0lsOFN4SGVnaWFZL2ppbmgiLCJtYWMiOiJhODAyNDZmZWE4YmU2NzJmZWI2YWI1ZjgyZTg2ZmY4NDNkZWNlYWVjOTJkNTJlMDNhNTU4ODNmZWMzZDk4YjU4IiwidGFnIjoiIn0%3D\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-16 05:45:52', '2024-08-16 05:45:52'),
(30, 'GET', '[]', 'https://bagisto.test/checkout/storage/theme/1/gW23ZoL1AxdtFyLnnQZ0QMd6XYoOhwFvlmIEIGbk.webp', 'https://bagisto.test/checkout/[object%20Object]', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/checkout\\/[object%20Object]\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=lrUt5Cyq0ZFqxhiWbccscfLFHxgaaPz6mBMC39VF; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6IjJFQWFEQXFBRjEwSDZkem50TWZ3TFE9PSIsInZhbHVlIjoibm9KTXNhU1RNVlhjZUE2Wm9SM3RmZlgzNlY3cjI1RFp6QkJka0E0QU96NkcrYUFwSE5SV2RsbWlCL09ac3dyVVd0N045ZzEyMmpEZEZkYUQ3Mmt4TGdmaWJaeEJld1JFTWhtbE1iQ210SVhReW5Kb0lsOFN4SGVnaWFZL2ppbmgiLCJtYWMiOiJhODAyNDZmZWE4YmU2NzJmZWI2YWI1ZjgyZTg2ZmY4NDNkZWNlYWVjOTJkNTJlMDNhNTU4ODNmZWMzZDk4YjU4IiwidGFnIjoiIn0%3D\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-16 05:45:53', '2024-08-16 05:45:53'),
(31, 'GET', '[]', 'https://bagisto.test/checkout/storage/theme/5/Dph4Y5tZKSLKlwvFkYVDeMvq29qjaUWSjSV0DCWp.webp', 'https://bagisto.test/checkout/[object%20Object]', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/checkout\\/[object%20Object]\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=shb5ZDkOaRdxrQF0hCZBO4OJjH8pHCba3nXGHjF7; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6ImNyR2dmT0FzVmhBVHk0cXFUNXk2Tmc9PSIsInZhbHVlIjoiNWhucGdmOVJTeUdWVzlCMHYzNmRvYmlKcmhwRExYOERwcUNsbVRGK1VHMWRFZ0dUOEhBcjFDNVlvQ2QyeVk0K05PSVU5Vm9KZVNCRHBNbTRRMWxDdTlBUkdFQ08zbmN1dHVpUXJ0cHpwSmZQWXA4VzZkYkJ0aDBiR0RDSmNXUW0iLCJtYWMiOiJhOTVlOTg0YWUwNGRjZDZkMTM2NTNkN2JiMzhkYmZhZjkxOTE4YjYyZDEwYTQzZmQzYWUwYTExNTk5MWRjZjVlIiwidGFnIjoiIn0%3D\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-16 06:20:50', '2024-08-16 06:20:50'),
(32, 'GET', '[]', 'https://bagisto.test/checkout/storage/theme/5/DYM20Go1DyUxPmJk3gBidSiY0w7zBhyrVRRxkFPM.webp', 'https://bagisto.test/checkout/[object%20Object]', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/checkout\\/[object%20Object]\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=shb5ZDkOaRdxrQF0hCZBO4OJjH8pHCba3nXGHjF7; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6ImNyR2dmT0FzVmhBVHk0cXFUNXk2Tmc9PSIsInZhbHVlIjoiNWhucGdmOVJTeUdWVzlCMHYzNmRvYmlKcmhwRExYOERwcUNsbVRGK1VHMWRFZ0dUOEhBcjFDNVlvQ2QyeVk0K05PSVU5Vm9KZVNCRHBNbTRRMWxDdTlBUkdFQ08zbmN1dHVpUXJ0cHpwSmZQWXA4VzZkYkJ0aDBiR0RDSmNXUW0iLCJtYWMiOiJhOTVlOTg0YWUwNGRjZDZkMTM2NTNkN2JiMzhkYmZhZjkxOTE4YjYyZDEwYTQzZmQzYWUwYTExNTk5MWRjZjVlIiwidGFnIjoiIn0%3D\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-16 06:20:51', '2024-08-16 06:20:51');
INSERT INTO `visits` (`id`, `method`, `request`, `url`, `referer`, `languages`, `useragent`, `headers`, `device`, `platform`, `browser`, `ip`, `visitable_type`, `visitable_id`, `visitor_type`, `visitor_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(33, 'GET', '[]', 'https://bagisto.test', 'https://bagisto.test/checkout/cart', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/checkout\\/cart\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=WjnunIvitHY2Ea03tp1cwoSZji1vJwizINweN0zE; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6Imd5M3o4SzhoUXI4OVpFK20rQTh0YUE9PSIsInZhbHVlIjoiRTlNa2RrNHZKbUR5TVk3Si9ndDcvbVBpb2phUmpWZGxoeEo2c0FxaVdsd2szV24ydmFkN0V3T1hLR1o0T2R0aldUUkFjTGltWFZWZDZwbC9kTDBLVVRlWXFDZ240cmlOYXBSaEZVbk9jVm1TVjV3Zmx0LzA4dG9teVZqWVZMaW0iLCJtYWMiOiI2Zjg1ODk2MzhkYmRkZDcwYzM1ZjFmZDk5Y2Q1NDlkMDE1N2QwZmQ5Njg1ZGNlZWEyMWE0YzBmNGU1Y2NmNWIxIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"sec-fetch-dest\":[\"document\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-user\":[\"?1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-16 07:14:02', '2024-08-16 07:14:02'),
(34, 'GET', '[]', 'https://bagisto.test/storage/theme/1/bl0tbEXY8MVeTA8why7aUMHzMlIJele1pRXgn1Rt.webp', 'https://bagisto.test/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=3cl9z1VqS7iAidEailsuVJEsgogHFsdzTIkRim1F; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6IlFUYXVSbCtNWVNYWUo4SVRKbmZnbVE9PSIsInZhbHVlIjoiWUxzbXdDSmVPTVZlc0tqY1NDUVNhN1l1b01Ubkl4eExaOUhQTytvaWRUd2hCUkNSejM0bFhtRUMwQ2preDVObHVncnE4QXI5Q3BxZHF6OHdGU05pQitIVGhGbXhBcGNLdjJzT0pVRHV2WTNST1A2eXNzV2plR2VIcy92QzR4Q0IiLCJtYWMiOiI3ZWU2ZDc1MmYxMGFhYTlhNzA5YWY2ODg0YzBlNmZjNjZjMDg2YWFjNmIxOGJjNTBjZTYyNjk5Y2EyYjBlNTE5IiwidGFnIjoiIn0%3D\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-16 07:14:07', '2024-08-16 07:14:07'),
(35, 'GET', '[]', 'https://bagisto.test/storage/theme/1/9H2eQnXEqSh90WJTP7HAcOThbDTUVqkK1rXLjseP.webp', 'https://bagisto.test/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=3cl9z1VqS7iAidEailsuVJEsgogHFsdzTIkRim1F; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6IlFUYXVSbCtNWVNYWUo4SVRKbmZnbVE9PSIsInZhbHVlIjoiWUxzbXdDSmVPTVZlc0tqY1NDUVNhN1l1b01Ubkl4eExaOUhQTytvaWRUd2hCUkNSejM0bFhtRUMwQ2preDVObHVncnE4QXI5Q3BxZHF6OHdGU05pQitIVGhGbXhBcGNLdjJzT0pVRHV2WTNST1A2eXNzV2plR2VIcy92QzR4Q0IiLCJtYWMiOiI3ZWU2ZDc1MmYxMGFhYTlhNzA5YWY2ODg0YzBlNmZjNjZjMDg2YWFjNmIxOGJjNTBjZTYyNjk5Y2EyYjBlNTE5IiwidGFnIjoiIn0%3D\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-16 07:14:07', '2024-08-16 07:14:07'),
(36, 'GET', '[]', 'https://bagisto.test/storage/theme/1/k77BinfM8RrxRb0MmWKSrGGm2qZe7hx0z3xvvUgv.webp', 'https://bagisto.test/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=3cl9z1VqS7iAidEailsuVJEsgogHFsdzTIkRim1F; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6IlFUYXVSbCtNWVNYWUo4SVRKbmZnbVE9PSIsInZhbHVlIjoiWUxzbXdDSmVPTVZlc0tqY1NDUVNhN1l1b01Ubkl4eExaOUhQTytvaWRUd2hCUkNSejM0bFhtRUMwQ2preDVObHVncnE4QXI5Q3BxZHF6OHdGU05pQitIVGhGbXhBcGNLdjJzT0pVRHV2WTNST1A2eXNzV2plR2VIcy92QzR4Q0IiLCJtYWMiOiI3ZWU2ZDc1MmYxMGFhYTlhNzA5YWY2ODg0YzBlNmZjNjZjMDg2YWFjNmIxOGJjNTBjZTYyNjk5Y2EyYjBlNTE5IiwidGFnIjoiIn0%3D\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-16 07:14:07', '2024-08-16 07:14:07'),
(37, 'GET', '[]', 'https://bagisto.test/storage/theme/1/gW23ZoL1AxdtFyLnnQZ0QMd6XYoOhwFvlmIEIGbk.webp', 'https://bagisto.test/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=3cl9z1VqS7iAidEailsuVJEsgogHFsdzTIkRim1F; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6IlFUYXVSbCtNWVNYWUo4SVRKbmZnbVE9PSIsInZhbHVlIjoiWUxzbXdDSmVPTVZlc0tqY1NDUVNhN1l1b01Ubkl4eExaOUhQTytvaWRUd2hCUkNSejM0bFhtRUMwQ2preDVObHVncnE4QXI5Q3BxZHF6OHdGU05pQitIVGhGbXhBcGNLdjJzT0pVRHV2WTNST1A2eXNzV2plR2VIcy92QzR4Q0IiLCJtYWMiOiI3ZWU2ZDc1MmYxMGFhYTlhNzA5YWY2ODg0YzBlNmZjNjZjMDg2YWFjNmIxOGJjNTBjZTYyNjk5Y2EyYjBlNTE5IiwidGFnIjoiIn0%3D\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-16 07:14:08', '2024-08-16 07:14:08'),
(38, 'GET', '[]', 'https://bagisto.test/%D9%85%D8%AD%D8%B5%D9%88%D9%84-%D8%AA%D8%B3%D8%AA', 'https://bagisto.test/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=7VocR3wqYoXNOFh80CAgRMZZfFjQXDg5jfiRbNot; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6IlNkSGVPM01KZzdkd3hmVlNhN09MNEE9PSIsInZhbHVlIjoiN1hQMUhVUHk0Ly92OVVFN01OL2pkSmwzSE9oRWhtMmVWSlpJOHRCYWl5L1QyU2RmRWdkdldpV056YnYrbkY2aVpEcUt0S0xxcy85aEsrZWV5Wk5kZ05zTTRyQURUVDUvMElOWERPOG1oYWFRT3plaVNtNW5JcEVERi8xUXBFdloiLCJtYWMiOiIyYjA1Njk1YWI4M2Y0ODQ4YmFlNDFiODgyZWU5NTM1MDJiYjg5MGI3YzVkYjMzZWY2NGRhZWFiZTVjNTEwOTUzIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"sec-fetch-dest\":[\"document\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-user\":[\"?1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 1, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-16 07:14:59', '2024-08-16 07:14:59'),
(39, 'GET', '[]', 'https://bagisto.test', 'https://bagisto.test/customer/account/orders', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/customer\\/account\\/orders\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=IWjfYlOHm3u4m2LiFBDZw1m21I3Bjxg2XvK1s7cp; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y\"],\"upgrade-insecure-requests\":[\"1\"],\"sec-fetch-dest\":[\"document\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-user\":[\"?1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2024-08-17 02:57:22', '2024-08-17 02:57:22'),
(40, 'GET', '[]', 'https://bagisto.test/storage/theme/1/bl0tbEXY8MVeTA8why7aUMHzMlIJele1pRXgn1Rt.webp', 'https://bagisto.test/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=Q1YctabKeUPjfXeySVjTgRvlvKgbbWZmk8FZ8aFc; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6Ijk4eGdSQWZMSGZBdG0xYmoxVTB3N3c9PSIsInZhbHVlIjoiRTJ6dEhoNGtxek40VDAwZGp4N3JJcDVFclRGUEN2blBpUTdRZTMzcWF4cHM2bnNKNy9uaVh6eXBQWVd0cXp6TWUranVwdmp5aFZsRWNEdVZldmVWSS9xUmQxYTdmQ0F5UmM1YUpNdUUvd2dyOTFCcFUyR3JiZS9tT1JsM1d6ZzAiLCJtYWMiOiIzMzUyY2Q4YTE5MTNiZjQyYWM4M2U3NmFiMWUwZTMxZTlkZWFmMjExZTg5NmIzZjZlYjhlNjRlMDdkYjA1ZTM4IiwidGFnIjoiIn0%3D\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2024-08-17 02:57:27', '2024-08-17 02:57:27'),
(41, 'GET', '[]', 'https://bagisto.test/storage/theme/1/9H2eQnXEqSh90WJTP7HAcOThbDTUVqkK1rXLjseP.webp', 'https://bagisto.test/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=Q1YctabKeUPjfXeySVjTgRvlvKgbbWZmk8FZ8aFc; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6Ijk4eGdSQWZMSGZBdG0xYmoxVTB3N3c9PSIsInZhbHVlIjoiRTJ6dEhoNGtxek40VDAwZGp4N3JJcDVFclRGUEN2blBpUTdRZTMzcWF4cHM2bnNKNy9uaVh6eXBQWVd0cXp6TWUranVwdmp5aFZsRWNEdVZldmVWSS9xUmQxYTdmQ0F5UmM1YUpNdUUvd2dyOTFCcFUyR3JiZS9tT1JsM1d6ZzAiLCJtYWMiOiIzMzUyY2Q4YTE5MTNiZjQyYWM4M2U3NmFiMWUwZTMxZTlkZWFmMjExZTg5NmIzZjZlYjhlNjRlMDdkYjA1ZTM4IiwidGFnIjoiIn0%3D\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2024-08-17 02:57:27', '2024-08-17 02:57:27'),
(42, 'GET', '[]', 'https://bagisto.test/storage/theme/1/k77BinfM8RrxRb0MmWKSrGGm2qZe7hx0z3xvvUgv.webp', 'https://bagisto.test/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=Q1YctabKeUPjfXeySVjTgRvlvKgbbWZmk8FZ8aFc; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6Ijk4eGdSQWZMSGZBdG0xYmoxVTB3N3c9PSIsInZhbHVlIjoiRTJ6dEhoNGtxek40VDAwZGp4N3JJcDVFclRGUEN2blBpUTdRZTMzcWF4cHM2bnNKNy9uaVh6eXBQWVd0cXp6TWUranVwdmp5aFZsRWNEdVZldmVWSS9xUmQxYTdmQ0F5UmM1YUpNdUUvd2dyOTFCcFUyR3JiZS9tT1JsM1d6ZzAiLCJtYWMiOiIzMzUyY2Q4YTE5MTNiZjQyYWM4M2U3NmFiMWUwZTMxZTlkZWFmMjExZTg5NmIzZjZlYjhlNjRlMDdkYjA1ZTM4IiwidGFnIjoiIn0%3D\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2024-08-17 02:57:27', '2024-08-17 02:57:27'),
(43, 'GET', '[]', 'https://bagisto.test/storage/theme/1/gW23ZoL1AxdtFyLnnQZ0QMd6XYoOhwFvlmIEIGbk.webp', 'https://bagisto.test/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=Q1YctabKeUPjfXeySVjTgRvlvKgbbWZmk8FZ8aFc; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6Ijk4eGdSQWZMSGZBdG0xYmoxVTB3N3c9PSIsInZhbHVlIjoiRTJ6dEhoNGtxek40VDAwZGp4N3JJcDVFclRGUEN2blBpUTdRZTMzcWF4cHM2bnNKNy9uaVh6eXBQWVd0cXp6TWUranVwdmp5aFZsRWNEdVZldmVWSS9xUmQxYTdmQ0F5UmM1YUpNdUUvd2dyOTFCcFUyR3JiZS9tT1JsM1d6ZzAiLCJtYWMiOiIzMzUyY2Q4YTE5MTNiZjQyYWM4M2U3NmFiMWUwZTMxZTlkZWFmMjExZTg5NmIzZjZlYjhlNjRlMDdkYjA1ZTM4IiwidGFnIjoiIn0%3D\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2024-08-17 02:57:28', '2024-08-17 02:57:28'),
(44, 'GET', '[]', 'https://bagisto.test', 'https://bagisto.test/customer/login', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/customer\\/login\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=7IZ8ImMmqhiacfWXw39LfQux6aPb4tfeCksAnCgd; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6InNGYitlTFFhVWlDV1J3UTk5R2xnelE9PSIsInZhbHVlIjoiNzF1NkZWOGFzbW5YY3ZYR0wvd0M1TTRzRjVrTVB1Nmh4M0xWaDRjZnJlUmY4aTI1MFJhL3VDZzk2M0VkaXhpd1NIMUc1YnJVNmRVMW5HNVZyb28xb0xaTmdsbC9kQUNBMEcwQXcxRFBIN0dOU2hWUEMyNisyY2pSc0VobTVWdlEiLCJtYWMiOiI1ZTZiNTg3Zjk1OTJiMzMyMjNjNTcwNjA0OWZjOWY3ZmM4NTVjOGMxMmFlMWZiNDRlMTE4MzM4NmJkODhhMjU3IiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"sec-fetch-dest\":[\"document\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-user\":[\"?1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-17 03:19:31', '2024-08-17 03:19:31'),
(45, 'GET', '[]', 'https://bagisto.test/storage/theme/1/bl0tbEXY8MVeTA8why7aUMHzMlIJele1pRXgn1Rt.webp', 'https://bagisto.test/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=lbHr3A9eYPkmLAJES1WzpQO60VDKcd4PXf8kUdXW; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6ImJFY1NEVWZzOHhqdnRPakNSM3AxWWc9PSIsInZhbHVlIjoibmo4VXlFakZ1ZTZBSTNFMmZoZUppbWM0NXdzQ1BYUDV5TzNLOGdOdjhFVzliWlNIRHRjaC85SnhQWTdBVkJWdGR0VE9jYkY4bnVEU2VTSHhkRCtjYkl4K1B0eDg4WmQzZjRBUFowVHBHQ0xQZ1FqUDZkRkY3dmJrYkhtWXFXUVoiLCJtYWMiOiI2YmQ3NDc0M2UyMjAxY2U5NWM1ZDlkZmNjOTY2ZGEzN2QxYmEwMzE4ZTJiNDEwMDZlMmIyM2NkZTZhNGVhZjFiIiwidGFnIjoiIn0%3D\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-17 03:19:37', '2024-08-17 03:19:37'),
(46, 'GET', '[]', 'https://bagisto.test/storage/theme/1/9H2eQnXEqSh90WJTP7HAcOThbDTUVqkK1rXLjseP.webp', 'https://bagisto.test/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=lbHr3A9eYPkmLAJES1WzpQO60VDKcd4PXf8kUdXW; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6ImJFY1NEVWZzOHhqdnRPakNSM3AxWWc9PSIsInZhbHVlIjoibmo4VXlFakZ1ZTZBSTNFMmZoZUppbWM0NXdzQ1BYUDV5TzNLOGdOdjhFVzliWlNIRHRjaC85SnhQWTdBVkJWdGR0VE9jYkY4bnVEU2VTSHhkRCtjYkl4K1B0eDg4WmQzZjRBUFowVHBHQ0xQZ1FqUDZkRkY3dmJrYkhtWXFXUVoiLCJtYWMiOiI2YmQ3NDc0M2UyMjAxY2U5NWM1ZDlkZmNjOTY2ZGEzN2QxYmEwMzE4ZTJiNDEwMDZlMmIyM2NkZTZhNGVhZjFiIiwidGFnIjoiIn0%3D\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-17 03:19:37', '2024-08-17 03:19:37'),
(47, 'GET', '[]', 'https://bagisto.test/storage/theme/1/k77BinfM8RrxRb0MmWKSrGGm2qZe7hx0z3xvvUgv.webp', 'https://bagisto.test/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=lbHr3A9eYPkmLAJES1WzpQO60VDKcd4PXf8kUdXW; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6ImJFY1NEVWZzOHhqdnRPakNSM3AxWWc9PSIsInZhbHVlIjoibmo4VXlFakZ1ZTZBSTNFMmZoZUppbWM0NXdzQ1BYUDV5TzNLOGdOdjhFVzliWlNIRHRjaC85SnhQWTdBVkJWdGR0VE9jYkY4bnVEU2VTSHhkRCtjYkl4K1B0eDg4WmQzZjRBUFowVHBHQ0xQZ1FqUDZkRkY3dmJrYkhtWXFXUVoiLCJtYWMiOiI2YmQ3NDc0M2UyMjAxY2U5NWM1ZDlkZmNjOTY2ZGEzN2QxYmEwMzE4ZTJiNDEwMDZlMmIyM2NkZTZhNGVhZjFiIiwidGFnIjoiIn0%3D\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-17 03:19:38', '2024-08-17 03:19:38'),
(48, 'GET', '[]', 'https://bagisto.test/storage/theme/1/gW23ZoL1AxdtFyLnnQZ0QMd6XYoOhwFvlmIEIGbk.webp', 'https://bagisto.test/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=lbHr3A9eYPkmLAJES1WzpQO60VDKcd4PXf8kUdXW; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6ImJFY1NEVWZzOHhqdnRPakNSM3AxWWc9PSIsInZhbHVlIjoibmo4VXlFakZ1ZTZBSTNFMmZoZUppbWM0NXdzQ1BYUDV5TzNLOGdOdjhFVzliWlNIRHRjaC85SnhQWTdBVkJWdGR0VE9jYkY4bnVEU2VTSHhkRCtjYkl4K1B0eDg4WmQzZjRBUFowVHBHQ0xQZ1FqUDZkRkY3dmJrYkhtWXFXUVoiLCJtYWMiOiI2YmQ3NDc0M2UyMjAxY2U5NWM1ZDlkZmNjOTY2ZGEzN2QxYmEwMzE4ZTJiNDEwMDZlMmIyM2NkZTZhNGVhZjFiIiwidGFnIjoiIn0%3D\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"same-origin\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-17 03:19:38', '2024-08-17 03:19:38'),
(49, 'GET', '[]', 'https://bagisto.test/%D9%85%D8%AD%D8%B5%D9%88%D9%84-%D8%AA%D8%B3%D8%AA', 'https://bagisto.test/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"bagisto.test\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,*\\/*;q=0.8\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"referer\":[\"https:\\/\\/bagisto.test\\/\"],\"connection\":[\"keep-alive\"],\"cookie\":[\"shop_session=eyJpdiI6IlFTdmR1azlTV1MrN01nRTBpQU0zVFE9PSIsInZhbHVlIjoiTTZaUHJOMW45bVZzTW82OHk4T3djM0ttMTFhVUFGc0lzZ0w2NTBYUkYyc1VjQmRGZTdzMWhJTUZYM0xXVUlnYnAyQUNYalFwekd3djN6SGIvQlM0c3B5QlBZZ1k5eWFhMEFDaE1hNzEvLyt3dExjbTcxOFFjSkhrcUwrQWp2OFIiLCJtYWMiOiJiMWY1Mjk0MTI2ZDg5YTAyMTc0ODRkNTcwNzYwNjIyNzdjMjczNmE1NmFjMDhjY2JiMGM5NDg5NWRjZDYwOGY2IiwidGFnIjoiIn0%3D; bagisto_session=yZWQklplBbEtk6JWKQgX9LlPIj58MRfC3IVBW5ni; laravel_session=gmH4TIZXD50IEt8ixFxhzMEdGUxsHs6nuaYkoD8y; XSRF-TOKEN=eyJpdiI6IklKTHNaeEhBbGhBUWlSM2VLSkx0S3c9PSIsInZhbHVlIjoieDEwTDNjUFRBcjlBYm1WWlRWM0FOcnZ1T1ZOd1lyK1dFRGNYWjlDVG0rQjdNalA1eTBhc1VPaEZNTlV3NytpOVZKWmVGbTZMZk13QkZUWERYcWJMU2JpY3Q3T1IzZGdKdGJ5bDZzcm04THdIYTlzOGxhMEdrZzRLZk9Gd1U3SVYiLCJtYWMiOiI5ZDA0MGE5ZmMyZWViZGM4Njc5ZTU5YTgxZmYzM2ZjNWM0NGJlODkwNTgzNjNmYmU4YWQ0ZTgyYmNkNWRlMWIzIiwidGFnIjoiIn0%3D\"],\"upgrade-insecure-requests\":[\"1\"],\"sec-fetch-dest\":[\"document\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-user\":[\"?1\"],\"priority\":[\"u=0, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 1, 'Webkul\\Customer\\Models\\Customer', 3, 1, '2024-08-17 04:00:52', '2024-08-17 04:00:52'),
(50, 'GET', '[]', 'http://localhost:8000/storage/locales/2FJhmizVLoWsFoqCIrM0WM1Hr8LlanbpQR99gGdl.png', 'http://bg.trtest.ir/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"localhost:8000\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"connection\":[\"keep-alive\"],\"referer\":[\"http:\\/\\/bg.trtest.ir\\/\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"cross-site\"],\"priority\":[\"u=5, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2024-08-17 08:32:34', '2024-08-17 08:32:34'),
(51, 'GET', '[]', 'http://localhost:8000/storage/product/1/piRUZVy7DHiCtaYAfioA6RMeUAXOqm1UOnqyK7yp.webp', 'http://bg.trtest.ir/', '[\"en-us\",\"en\"]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', '{\"host\":[\"localhost:8000\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko\\/20100101 Firefox\\/128.0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/png,image\\/svg+xml,image\\/*;q=0.8,*\\/*;q=0.5\"],\"accept-language\":[\"en-US,en;q=0.5\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"connection\":[\"keep-alive\"],\"referer\":[\"http:\\/\\/bg.trtest.ir\\/\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IkNrWnNrdytCYmNnQTduZ1lGOWF4N1E9PSIsInZhbHVlIjoiZDlEaGZMZDhBY2cxSWcvaE9zb3RxTWJyMHZ3K3JEOVRqeFlIcG8vT0poV1hSVHh1TU92cTZIdFprVUZtRDVjcXdjLzdmTjdPNjlDMG1OUXI4bnFBc3kwakMvdU9nT3kwbGVxUWdQaVpKRHZNYmRUSHdxL0d4RFpoVk01bmtNUW0iLCJtYWMiOiIyMWVkZWY0ZDBjYzZmY2NmZDVjMzZlMWFhMmRmN2JmYWQ0ZTExNjA2ZDBlZTdiMWZhYWY3NjkwOThhMDM3Nzk5IiwidGFnIjoiIn0%3D; bagisto_session=H2uIOEdGGQxiToFCwMY96nnjMRO1DldzizVnS7ts\"],\"sec-fetch-dest\":[\"image\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-site\":[\"cross-site\"],\"priority\":[\"u=4, i\"]}', '', 'Windows', 'Firefox', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2024-08-17 10:04:09', '2024-08-17 10:04:09');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int UNSIGNED NOT NULL,
  `channel_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `customer_id` int UNSIGNED NOT NULL,
  `item_options` json DEFAULT NULL,
  `moved_to_cart` date DEFAULT NULL,
  `shared` tinyint(1) DEFAULT NULL,
  `time_of_moving` date DEFAULT NULL,
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_items`
--

CREATE TABLE `wishlist_items` (
  `id` int UNSIGNED NOT NULL,
  `channel_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `customer_id` int UNSIGNED NOT NULL,
  `additional` json DEFAULT NULL,
  `moved_to_cart` date DEFAULT NULL,
  `shared` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_customer_id_foreign` (`customer_id`),
  ADD KEY `addresses_cart_id_foreign` (`cart_id`),
  ADD KEY `addresses_order_id_foreign` (`order_id`),
  ADD KEY `addresses_parent_address_id_foreign` (`parent_address_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_api_token_unique` (`api_token`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_code_unique` (`code`);

--
-- Indexes for table `attribute_families`
--
ALTER TABLE `attribute_families`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_groups`
--
ALTER TABLE `attribute_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_groups_attribute_family_id_name_unique` (`attribute_family_id`,`name`);

--
-- Indexes for table `attribute_group_mappings`
--
ALTER TABLE `attribute_group_mappings`
  ADD PRIMARY KEY (`attribute_id`,`attribute_group_id`),
  ADD KEY `attribute_group_mappings_attribute_group_id_foreign` (`attribute_group_id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_options_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `attribute_option_translations`
--
ALTER TABLE `attribute_option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_option_translations_attribute_option_id_locale_unique` (`attribute_option_id`,`locale`);

--
-- Indexes for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_translations_attribute_id_locale_unique` (`attribute_id`,`locale`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_customer_id_foreign` (`customer_id`),
  ADD KEY `cart_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_parent_id_foreign` (`parent_id`),
  ADD KEY `cart_items_product_id_foreign` (`product_id`),
  ADD KEY `cart_items_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_items_tax_category_id_foreign` (`tax_category_id`);

--
-- Indexes for table `cart_item_inventories`
--
ALTER TABLE `cart_item_inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_payment`
--
ALTER TABLE `cart_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_payment_cart_id_foreign` (`cart_id`);

--
-- Indexes for table `cart_rules`
--
ALTER TABLE `cart_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_rule_channels`
--
ALTER TABLE `cart_rule_channels`
  ADD PRIMARY KEY (`cart_rule_id`,`channel_id`),
  ADD KEY `cart_rule_channels_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `cart_rule_coupons`
--
ALTER TABLE `cart_rule_coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_rule_coupons_cart_rule_id_foreign` (`cart_rule_id`);

--
-- Indexes for table `cart_rule_coupon_usage`
--
ALTER TABLE `cart_rule_coupon_usage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_rule_coupon_usage_cart_rule_coupon_id_foreign` (`cart_rule_coupon_id`),
  ADD KEY `cart_rule_coupon_usage_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `cart_rule_customers`
--
ALTER TABLE `cart_rule_customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_rule_customers_cart_rule_id_foreign` (`cart_rule_id`),
  ADD KEY `cart_rule_customers_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `cart_rule_customer_groups`
--
ALTER TABLE `cart_rule_customer_groups`
  ADD PRIMARY KEY (`cart_rule_id`,`customer_group_id`),
  ADD KEY `cart_rule_customer_groups_customer_group_id_foreign` (`customer_group_id`);

--
-- Indexes for table `cart_rule_translations`
--
ALTER TABLE `cart_rule_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cart_rule_translations_cart_rule_id_locale_unique` (`cart_rule_id`,`locale`);

--
-- Indexes for table `cart_shipping_rates`
--
ALTER TABLE `cart_shipping_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_shipping_rates_cart_id_foreign` (`cart_id`);

--
-- Indexes for table `catalog_rules`
--
ALTER TABLE `catalog_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_rule_channels`
--
ALTER TABLE `catalog_rule_channels`
  ADD PRIMARY KEY (`catalog_rule_id`,`channel_id`),
  ADD KEY `catalog_rule_channels_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `catalog_rule_customer_groups`
--
ALTER TABLE `catalog_rule_customer_groups`
  ADD PRIMARY KEY (`catalog_rule_id`,`customer_group_id`),
  ADD KEY `catalog_rule_customer_groups_customer_group_id_foreign` (`customer_group_id`);

--
-- Indexes for table `catalog_rule_products`
--
ALTER TABLE `catalog_rule_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_rule_products_product_id_foreign` (`product_id`),
  ADD KEY `catalog_rule_products_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `catalog_rule_products_catalog_rule_id_foreign` (`catalog_rule_id`),
  ADD KEY `catalog_rule_products_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `catalog_rule_product_prices`
--
ALTER TABLE `catalog_rule_product_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_rule_product_prices_product_id_foreign` (`product_id`),
  ADD KEY `catalog_rule_product_prices_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `catalog_rule_product_prices_catalog_rule_id_foreign` (`catalog_rule_id`),
  ADD KEY `catalog_rule_product_prices_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `category_filterable_attributes`
--
ALTER TABLE `category_filterable_attributes`
  ADD KEY `category_filterable_attributes_category_id_foreign` (`category_id`),
  ADD KEY `category_filterable_attributes_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_slug_locale_unique` (`category_id`,`slug`,`locale`),
  ADD KEY `category_translations_locale_id_foreign` (`locale_id`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channels_root_category_id_foreign` (`root_category_id`),
  ADD KEY `channels_default_locale_id_foreign` (`default_locale_id`),
  ADD KEY `channels_base_currency_id_foreign` (`base_currency_id`);

--
-- Indexes for table `channel_currencies`
--
ALTER TABLE `channel_currencies`
  ADD PRIMARY KEY (`channel_id`,`currency_id`),
  ADD KEY `channel_currencies_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `channel_inventory_sources`
--
ALTER TABLE `channel_inventory_sources`
  ADD UNIQUE KEY `channel_inventory_sources_channel_id_inventory_source_id_unique` (`channel_id`,`inventory_source_id`),
  ADD KEY `channel_inventory_sources_inventory_source_id_foreign` (`inventory_source_id`);

--
-- Indexes for table `channel_locales`
--
ALTER TABLE `channel_locales`
  ADD PRIMARY KEY (`channel_id`,`locale_id`),
  ADD KEY `channel_locales_locale_id_foreign` (`locale_id`);

--
-- Indexes for table `channel_translations`
--
ALTER TABLE `channel_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `channel_translations_channel_id_locale_unique` (`channel_id`,`locale`),
  ADD KEY `channel_translations_locale_index` (`locale`);

--
-- Indexes for table `cms_pages`
--
ALTER TABLE `cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_page_channels`
--
ALTER TABLE `cms_page_channels`
  ADD UNIQUE KEY `cms_page_channels_cms_page_id_channel_id_unique` (`cms_page_id`,`channel_id`),
  ADD KEY `cms_page_channels_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `cms_page_translations`
--
ALTER TABLE `cms_page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_page_translations_cms_page_id_url_key_locale_unique` (`cms_page_id`,`url_key`,`locale`);

--
-- Indexes for table `compare_items`
--
ALTER TABLE `compare_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compare_items_product_id_foreign` (`product_id`),
  ADD KEY `compare_items_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `core_config`
--
ALTER TABLE `core_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_states`
--
ALTER TABLE `country_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_states_country_id_foreign` (`country_id`);

--
-- Indexes for table `country_state_translations`
--
ALTER TABLE `country_state_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_state_translations_country_state_id_foreign` (`country_state_id`);

--
-- Indexes for table `country_translations`
--
ALTER TABLE `country_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_translations_country_id_foreign` (`country_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_exchange_rates`
--
ALTER TABLE `currency_exchange_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currency_exchange_rates_target_currency_unique` (`target_currency`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`),
  ADD UNIQUE KEY `customers_api_token_unique` (`api_token`),
  ADD KEY `customers_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `customers_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_groups_code_unique` (`code`);

--
-- Indexes for table `customer_notes`
--
ALTER TABLE `customer_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_notes_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `customer_password_resets`
--
ALTER TABLE `customer_password_resets`
  ADD KEY `customer_password_resets_email_index` (`email`);

--
-- Indexes for table `customer_social_accounts`
--
ALTER TABLE `customer_social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_social_accounts_provider_id_unique` (`provider_id`),
  ADD KEY `customer_social_accounts_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `datagrid_saved_filters`
--
ALTER TABLE `datagrid_saved_filters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `datagrid_saved_filters_user_id_name_src_unique` (`user_id`,`name`,`src`);

--
-- Indexes for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD PRIMARY KEY (`id`),
  ADD KEY `downloadable_link_purchased_customer_id_foreign` (`customer_id`),
  ADD KEY `downloadable_link_purchased_order_id_foreign` (`order_id`),
  ADD KEY `downloadable_link_purchased_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_batches`
--
ALTER TABLE `import_batches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `import_batches_import_id_foreign` (`import_id`);

--
-- Indexes for table `inventory_sources`
--
ALTER TABLE `inventory_sources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inventory_sources_code_unique` (`code`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_order_id_foreign` (`order_id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_items_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locales`
--
ALTER TABLE `locales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `locales_code_unique` (`code`);

--
-- Indexes for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marketing_campaigns_channel_id_foreign` (`channel_id`),
  ADD KEY `marketing_campaigns_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `marketing_campaigns_marketing_template_id_foreign` (`marketing_template_id`),
  ADD KEY `marketing_campaigns_marketing_event_id_foreign` (`marketing_event_id`);

--
-- Indexes for table `marketing_events`
--
ALTER TABLE `marketing_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_templates`
--
ALTER TABLE `marketing_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_order_id_foreign` (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_increment_id_unique` (`increment_id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `order_comments`
--
ALTER TABLE `order_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_comments_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_parent_id_foreign` (`parent_id`),
  ADD KEY `order_items_tax_category_id_foreign` (`tax_category_id`);

--
-- Indexes for table `order_payment`
--
ALTER TABLE `order_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_payment_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `otp_tokens`
--
ALTER TABLE `otp_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `otp_tokens_receiver_unique` (`receiver`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_attribute_family_id_foreign` (`attribute_family_id`),
  ADD KEY `products_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chanel_locale_attribute_value_index_unique` (`channel`,`locale`,`attribute_id`,`product_id`),
  ADD UNIQUE KEY `product_attribute_values_unique_id_unique` (`unique_id`),
  ADD KEY `product_attribute_values_product_id_foreign` (`product_id`),
  ADD KEY `product_attribute_values_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `product_bundle_options`
--
ALTER TABLE `product_bundle_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_bundle_options_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_bundle_option_products`
--
ALTER TABLE `product_bundle_option_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bundle_option_products_product_id_bundle_option_id_unique` (`product_id`,`product_bundle_option_id`),
  ADD KEY `product_bundle_option_products_product_bundle_option_id_foreign` (`product_bundle_option_id`);

--
-- Indexes for table `product_bundle_option_translations`
--
ALTER TABLE `product_bundle_option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_bundle_option_translations_option_id_locale_unique` (`product_bundle_option_id`,`locale`),
  ADD UNIQUE KEY `bundle_option_translations_locale_label_bundle_option_id_unique` (`locale`,`label`,`product_bundle_option_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD UNIQUE KEY `product_categories_product_id_category_id_unique` (`product_id`,`category_id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_channels`
--
ALTER TABLE `product_channels`
  ADD UNIQUE KEY `product_channels_product_id_channel_id_unique` (`product_id`,`channel_id`),
  ADD KEY `product_channels_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `product_cross_sells`
--
ALTER TABLE `product_cross_sells`
  ADD UNIQUE KEY `product_cross_sells_parent_id_child_id_unique` (`parent_id`,`child_id`),
  ADD KEY `product_cross_sells_child_id_foreign` (`child_id`);

--
-- Indexes for table `product_customer_group_prices`
--
ALTER TABLE `product_customer_group_prices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_customer_group_prices_unique_id_unique` (`unique_id`),
  ADD KEY `product_customer_group_prices_product_id_foreign` (`product_id`),
  ADD KEY `product_customer_group_prices_customer_group_id_foreign` (`customer_group_id`);

--
-- Indexes for table `product_downloadable_links`
--
ALTER TABLE `product_downloadable_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_downloadable_links_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_downloadable_link_translations`
--
ALTER TABLE `product_downloadable_link_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_translations_link_id_foreign` (`product_downloadable_link_id`);

--
-- Indexes for table `product_downloadable_samples`
--
ALTER TABLE `product_downloadable_samples`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_downloadable_samples_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_downloadable_sample_translations`
--
ALTER TABLE `product_downloadable_sample_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sample_translations_sample_id_foreign` (`product_downloadable_sample_id`);

--
-- Indexes for table `product_flat`
--
ALTER TABLE `product_flat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_flat_unique_index` (`product_id`,`channel`,`locale`),
  ADD KEY `product_flat_attribute_family_id_foreign` (`attribute_family_id`),
  ADD KEY `product_flat_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `product_grouped_products`
--
ALTER TABLE `product_grouped_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_grouped_products_product_id_associated_product_id_unique` (`product_id`,`associated_product_id`),
  ADD KEY `product_grouped_products_associated_product_id_foreign` (`associated_product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_inventories`
--
ALTER TABLE `product_inventories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_source_vendor_index_unique` (`product_id`,`inventory_source_id`,`vendor_id`),
  ADD KEY `product_inventories_inventory_source_id_foreign` (`inventory_source_id`);

--
-- Indexes for table `product_inventory_indices`
--
ALTER TABLE `product_inventory_indices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_inventory_indices_product_id_channel_id_unique` (`product_id`,`channel_id`),
  ADD KEY `product_inventory_indices_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `product_ordered_inventories`
--
ALTER TABLE `product_ordered_inventories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_ordered_inventories_product_id_channel_id_unique` (`product_id`,`channel_id`),
  ADD KEY `product_ordered_inventories_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `product_price_indices`
--
ALTER TABLE `product_price_indices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `price_indices_product_id_customer_group_id_channel_id_unique` (`product_id`,`customer_group_id`,`channel_id`),
  ADD KEY `product_price_indices_channel_id_foreign` (`channel_id`),
  ADD KEY `product_price_indices_customer_group_id_foreign` (`customer_group_id`);

--
-- Indexes for table `product_relations`
--
ALTER TABLE `product_relations`
  ADD UNIQUE KEY `product_relations_parent_id_child_id_unique` (`parent_id`,`child_id`),
  ADD KEY `product_relations_child_id_foreign` (`child_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_review_attachments`
--
ALTER TABLE `product_review_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_review_images_review_id_foreign` (`review_id`);

--
-- Indexes for table `product_super_attributes`
--
ALTER TABLE `product_super_attributes`
  ADD UNIQUE KEY `product_super_attributes_product_id_attribute_id_unique` (`product_id`,`attribute_id`),
  ADD KEY `product_super_attributes_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `product_up_sells`
--
ALTER TABLE `product_up_sells`
  ADD UNIQUE KEY `product_up_sells_parent_id_child_id_unique` (`parent_id`,`child_id`),
  ADD KEY `product_up_sells_child_id_foreign` (`child_id`);

--
-- Indexes for table `product_videos`
--
ALTER TABLE `product_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_videos_product_id_foreign` (`product_id`);

--
-- Indexes for table `push_notifications`
--
ALTER TABLE `push_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `push_notification_translations`
--
ALTER TABLE `push_notification_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `push_notification_translations_locale_unique` (`push_notification_id`,`locale`,`channel`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refunds_order_id_foreign` (`order_id`);

--
-- Indexes for table `refund_items`
--
ALTER TABLE `refund_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refund_items_parent_id_foreign` (`parent_id`),
  ADD KEY `refund_items_order_item_id_foreign` (`order_item_id`),
  ADD KEY `refund_items_refund_id_foreign` (`refund_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_synonyms`
--
ALTER TABLE `search_synonyms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_terms`
--
ALTER TABLE `search_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `search_terms_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipments_order_id_foreign` (`order_id`),
  ADD KEY `shipments_inventory_source_id_foreign` (`inventory_source_id`);

--
-- Indexes for table `shipment_items`
--
ALTER TABLE `shipment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipment_items_shipment_id_foreign` (`shipment_id`);

--
-- Indexes for table `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers_list`
--
ALTER TABLE `subscribers_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscribers_list_customer_id_foreign` (`customer_id`),
  ADD KEY `subscribers_list_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `tax_categories`
--
ALTER TABLE `tax_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_categories_code_unique` (`code`);

--
-- Indexes for table `tax_categories_tax_rates`
--
ALTER TABLE `tax_categories_tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_map_index_unique` (`tax_category_id`,`tax_rate_id`),
  ADD KEY `tax_categories_tax_rates_tax_rate_id_foreign` (`tax_rate_id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_rates_identifier_unique` (`identifier`);

--
-- Indexes for table `theme_customizations`
--
ALTER TABLE `theme_customizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_customizations_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `theme_customization_translations`
--
ALTER TABLE `theme_customization_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_customization_translations_theme_customization_id_foreign` (`theme_customization_id`);

--
-- Indexes for table `url_rewrites`
--
ALTER TABLE `url_rewrites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visits_visitable_type_visitable_id_index` (`visitable_type`,`visitable_id`),
  ADD KEY `visits_visitor_type_visitor_id_index` (`visitor_type`,`visitor_id`),
  ADD KEY `visits_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlist_channel_id_foreign` (`channel_id`),
  ADD KEY `wishlist_product_id_foreign` (`product_id`),
  ADD KEY `wishlist_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlist_items_channel_id_foreign` (`channel_id`),
  ADD KEY `wishlist_items_product_id_foreign` (`product_id`),
  ADD KEY `wishlist_items_customer_id_foreign` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `attribute_families`
--
ALTER TABLE `attribute_families`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attribute_groups`
--
ALTER TABLE `attribute_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `attribute_option_translations`
--
ALTER TABLE `attribute_option_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart_item_inventories`
--
ALTER TABLE `cart_item_inventories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_payment`
--
ALTER TABLE `cart_payment`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `cart_rules`
--
ALTER TABLE `cart_rules`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_rule_coupons`
--
ALTER TABLE `cart_rule_coupons`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_rule_coupon_usage`
--
ALTER TABLE `cart_rule_coupon_usage`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_rule_customers`
--
ALTER TABLE `cart_rule_customers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_rule_translations`
--
ALTER TABLE `cart_rule_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_shipping_rates`
--
ALTER TABLE `cart_shipping_rates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `catalog_rules`
--
ALTER TABLE `catalog_rules`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catalog_rule_products`
--
ALTER TABLE `catalog_rule_products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catalog_rule_product_prices`
--
ALTER TABLE `catalog_rule_product_prices`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `channel_translations`
--
ALTER TABLE `channel_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cms_page_translations`
--
ALTER TABLE `cms_page_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `compare_items`
--
ALTER TABLE `compare_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_config`
--
ALTER TABLE `core_config`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `country_states`
--
ALTER TABLE `country_states`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=587;

--
-- AUTO_INCREMENT for table `country_state_translations`
--
ALTER TABLE `country_state_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country_translations`
--
ALTER TABLE `country_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currency_exchange_rates`
--
ALTER TABLE `currency_exchange_rates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_notes`
--
ALTER TABLE `customer_notes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_social_accounts`
--
ALTER TABLE `customer_social_accounts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datagrid_saved_filters`
--
ALTER TABLE `datagrid_saved_filters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `import_batches`
--
ALTER TABLE `import_batches`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_sources`
--
ALTER TABLE `inventory_sources`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locales`
--
ALTER TABLE `locales`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_events`
--
ALTER TABLE `marketing_events`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `marketing_templates`
--
ALTER TABLE `marketing_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_comments`
--
ALTER TABLE `order_comments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_payment`
--
ALTER TABLE `order_payment`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_transactions`
--
ALTER TABLE `order_transactions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otp_tokens`
--
ALTER TABLE `otp_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product_bundle_options`
--
ALTER TABLE `product_bundle_options`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_bundle_option_products`
--
ALTER TABLE `product_bundle_option_products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_bundle_option_translations`
--
ALTER TABLE `product_bundle_option_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_customer_group_prices`
--
ALTER TABLE `product_customer_group_prices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_downloadable_links`
--
ALTER TABLE `product_downloadable_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_downloadable_link_translations`
--
ALTER TABLE `product_downloadable_link_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_downloadable_samples`
--
ALTER TABLE `product_downloadable_samples`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_downloadable_sample_translations`
--
ALTER TABLE `product_downloadable_sample_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_flat`
--
ALTER TABLE `product_flat`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_grouped_products`
--
ALTER TABLE `product_grouped_products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_inventories`
--
ALTER TABLE `product_inventories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_inventory_indices`
--
ALTER TABLE `product_inventory_indices`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_ordered_inventories`
--
ALTER TABLE `product_ordered_inventories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_price_indices`
--
ALTER TABLE `product_price_indices`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_review_attachments`
--
ALTER TABLE `product_review_attachments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_videos`
--
ALTER TABLE `product_videos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `push_notifications`
--
ALTER TABLE `push_notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `push_notification_translations`
--
ALTER TABLE `push_notification_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_items`
--
ALTER TABLE `refund_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `search_synonyms`
--
ALTER TABLE `search_synonyms`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `search_terms`
--
ALTER TABLE `search_terms`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipment_items`
--
ALTER TABLE `shipment_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers_list`
--
ALTER TABLE `subscribers_list`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_categories`
--
ALTER TABLE `tax_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_categories_tax_rates`
--
ALTER TABLE `tax_categories_tax_rates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `theme_customizations`
--
ALTER TABLE `theme_customizations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `theme_customization_translations`
--
ALTER TABLE `theme_customization_translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `url_rewrites`
--
ALTER TABLE `url_rewrites`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_parent_address_id_foreign` FOREIGN KEY (`parent_address_id`) REFERENCES `addresses` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `attribute_groups`
--
ALTER TABLE `attribute_groups`
  ADD CONSTRAINT `attribute_groups_attribute_family_id_foreign` FOREIGN KEY (`attribute_family_id`) REFERENCES `attribute_families` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_group_mappings`
--
ALTER TABLE `attribute_group_mappings`
  ADD CONSTRAINT `attribute_group_mappings_attribute_group_id_foreign` FOREIGN KEY (`attribute_group_id`) REFERENCES `attribute_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_group_mappings_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD CONSTRAINT `attribute_options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_option_translations`
--
ALTER TABLE `attribute_option_translations`
  ADD CONSTRAINT `attribute_option_translations_attribute_option_id_foreign` FOREIGN KEY (`attribute_option_id`) REFERENCES `attribute_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD CONSTRAINT `attribute_translations_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `cart_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_tax_category_id_foreign` FOREIGN KEY (`tax_category_id`) REFERENCES `tax_categories` (`id`);

--
-- Constraints for table `cart_payment`
--
ALTER TABLE `cart_payment`
  ADD CONSTRAINT `cart_payment_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_channels`
--
ALTER TABLE `cart_rule_channels`
  ADD CONSTRAINT `cart_rule_channels_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_coupons`
--
ALTER TABLE `cart_rule_coupons`
  ADD CONSTRAINT `cart_rule_coupons_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_coupon_usage`
--
ALTER TABLE `cart_rule_coupon_usage`
  ADD CONSTRAINT `cart_rule_coupon_usage_cart_rule_coupon_id_foreign` FOREIGN KEY (`cart_rule_coupon_id`) REFERENCES `cart_rule_coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_coupon_usage_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_customers`
--
ALTER TABLE `cart_rule_customers`
  ADD CONSTRAINT `cart_rule_customers_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_customers_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_customer_groups`
--
ALTER TABLE `cart_rule_customer_groups`
  ADD CONSTRAINT `cart_rule_customer_groups_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_customer_groups_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_translations`
--
ALTER TABLE `cart_rule_translations`
  ADD CONSTRAINT `cart_rule_translations_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_shipping_rates`
--
ALTER TABLE `cart_shipping_rates`
  ADD CONSTRAINT `cart_shipping_rates_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_rule_channels`
--
ALTER TABLE `catalog_rule_channels`
  ADD CONSTRAINT `catalog_rule_channels_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_rule_customer_groups`
--
ALTER TABLE `catalog_rule_customer_groups`
  ADD CONSTRAINT `catalog_rule_customer_groups_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_customer_groups_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_rule_products`
--
ALTER TABLE `catalog_rule_products`
  ADD CONSTRAINT `catalog_rule_products_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_rule_product_prices`
--
ALTER TABLE `catalog_rule_product_prices`
  ADD CONSTRAINT `catalog_rule_product_prices_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_product_prices_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_product_prices_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_product_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_filterable_attributes`
--
ALTER TABLE `category_filterable_attributes`
  ADD CONSTRAINT `category_filterable_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_filterable_attributes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_translations_locale_id_foreign` FOREIGN KEY (`locale_id`) REFERENCES `locales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channels`
--
ALTER TABLE `channels`
  ADD CONSTRAINT `channels_base_currency_id_foreign` FOREIGN KEY (`base_currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `channels_default_locale_id_foreign` FOREIGN KEY (`default_locale_id`) REFERENCES `locales` (`id`),
  ADD CONSTRAINT `channels_root_category_id_foreign` FOREIGN KEY (`root_category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `channel_currencies`
--
ALTER TABLE `channel_currencies`
  ADD CONSTRAINT `channel_currencies_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_currencies_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channel_inventory_sources`
--
ALTER TABLE `channel_inventory_sources`
  ADD CONSTRAINT `channel_inventory_sources_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_inventory_sources_inventory_source_id_foreign` FOREIGN KEY (`inventory_source_id`) REFERENCES `inventory_sources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channel_locales`
--
ALTER TABLE `channel_locales`
  ADD CONSTRAINT `channel_locales_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_locales_locale_id_foreign` FOREIGN KEY (`locale_id`) REFERENCES `locales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channel_translations`
--
ALTER TABLE `channel_translations`
  ADD CONSTRAINT `channel_translations_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_page_channels`
--
ALTER TABLE `cms_page_channels`
  ADD CONSTRAINT `cms_page_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cms_page_channels_cms_page_id_foreign` FOREIGN KEY (`cms_page_id`) REFERENCES `cms_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_page_translations`
--
ALTER TABLE `cms_page_translations`
  ADD CONSTRAINT `cms_page_translations_cms_page_id_foreign` FOREIGN KEY (`cms_page_id`) REFERENCES `cms_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `compare_items`
--
ALTER TABLE `compare_items`
  ADD CONSTRAINT `compare_items_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compare_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `country_states`
--
ALTER TABLE `country_states`
  ADD CONSTRAINT `country_states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `country_state_translations`
--
ALTER TABLE `country_state_translations`
  ADD CONSTRAINT `country_state_translations_country_state_id_foreign` FOREIGN KEY (`country_state_id`) REFERENCES `country_states` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `country_translations`
--
ALTER TABLE `country_translations`
  ADD CONSTRAINT `country_translations_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `currency_exchange_rates`
--
ALTER TABLE `currency_exchange_rates`
  ADD CONSTRAINT `currency_exchange_rates_target_currency_foreign` FOREIGN KEY (`target_currency`) REFERENCES `currencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `customers_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `customer_notes`
--
ALTER TABLE `customer_notes`
  ADD CONSTRAINT `customer_notes_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_social_accounts`
--
ALTER TABLE `customer_social_accounts`
  ADD CONSTRAINT `customer_social_accounts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD CONSTRAINT `downloadable_link_purchased_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `downloadable_link_purchased_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `downloadable_link_purchased_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `import_batches`
--
ALTER TABLE `import_batches`
  ADD CONSTRAINT `import_batches_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `invoice_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  ADD CONSTRAINT `marketing_campaigns_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `marketing_campaigns_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `marketing_campaigns_marketing_event_id_foreign` FOREIGN KEY (`marketing_event_id`) REFERENCES `marketing_events` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `marketing_campaigns_marketing_template_id_foreign` FOREIGN KEY (`marketing_template_id`) REFERENCES `marketing_templates` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_comments`
--
ALTER TABLE `order_comments`
  ADD CONSTRAINT `order_comments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_tax_category_id_foreign` FOREIGN KEY (`tax_category_id`) REFERENCES `tax_categories` (`id`);

--
-- Constraints for table `order_payment`
--
ALTER TABLE `order_payment`
  ADD CONSTRAINT `order_payment_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD CONSTRAINT `order_transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_attribute_family_id_foreign` FOREIGN KEY (`attribute_family_id`) REFERENCES `attribute_families` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `products_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD CONSTRAINT `product_attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_bundle_options`
--
ALTER TABLE `product_bundle_options`
  ADD CONSTRAINT `product_bundle_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_bundle_option_products`
--
ALTER TABLE `product_bundle_option_products`
  ADD CONSTRAINT `product_bundle_option_products_product_bundle_option_id_foreign` FOREIGN KEY (`product_bundle_option_id`) REFERENCES `product_bundle_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_bundle_option_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_bundle_option_translations`
--
ALTER TABLE `product_bundle_option_translations`
  ADD CONSTRAINT `product_bundle_option_translations_option_id_foreign` FOREIGN KEY (`product_bundle_option_id`) REFERENCES `product_bundle_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_channels`
--
ALTER TABLE `product_channels`
  ADD CONSTRAINT `product_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_channels_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_cross_sells`
--
ALTER TABLE `product_cross_sells`
  ADD CONSTRAINT `product_cross_sells_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_cross_sells_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_customer_group_prices`
--
ALTER TABLE `product_customer_group_prices`
  ADD CONSTRAINT `product_customer_group_prices_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_customer_group_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_downloadable_links`
--
ALTER TABLE `product_downloadable_links`
  ADD CONSTRAINT `product_downloadable_links_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_downloadable_link_translations`
--
ALTER TABLE `product_downloadable_link_translations`
  ADD CONSTRAINT `link_translations_link_id_foreign` FOREIGN KEY (`product_downloadable_link_id`) REFERENCES `product_downloadable_links` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_downloadable_samples`
--
ALTER TABLE `product_downloadable_samples`
  ADD CONSTRAINT `product_downloadable_samples_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_downloadable_sample_translations`
--
ALTER TABLE `product_downloadable_sample_translations`
  ADD CONSTRAINT `sample_translations_sample_id_foreign` FOREIGN KEY (`product_downloadable_sample_id`) REFERENCES `product_downloadable_samples` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_flat`
--
ALTER TABLE `product_flat`
  ADD CONSTRAINT `product_flat_attribute_family_id_foreign` FOREIGN KEY (`attribute_family_id`) REFERENCES `attribute_families` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `product_flat_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `product_flat` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_flat_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_grouped_products`
--
ALTER TABLE `product_grouped_products`
  ADD CONSTRAINT `product_grouped_products_associated_product_id_foreign` FOREIGN KEY (`associated_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_grouped_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_inventories`
--
ALTER TABLE `product_inventories`
  ADD CONSTRAINT `product_inventories_inventory_source_id_foreign` FOREIGN KEY (`inventory_source_id`) REFERENCES `inventory_sources` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_inventory_indices`
--
ALTER TABLE `product_inventory_indices`
  ADD CONSTRAINT `product_inventory_indices_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_inventory_indices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_ordered_inventories`
--
ALTER TABLE `product_ordered_inventories`
  ADD CONSTRAINT `product_ordered_inventories_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_ordered_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_price_indices`
--
ALTER TABLE `product_price_indices`
  ADD CONSTRAINT `product_price_indices_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_price_indices_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_price_indices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_relations`
--
ALTER TABLE `product_relations`
  ADD CONSTRAINT `product_relations_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_relations_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_review_attachments`
--
ALTER TABLE `product_review_attachments`
  ADD CONSTRAINT `product_review_images_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `product_reviews` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_super_attributes`
--
ALTER TABLE `product_super_attributes`
  ADD CONSTRAINT `product_super_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `product_super_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_up_sells`
--
ALTER TABLE `product_up_sells`
  ADD CONSTRAINT `product_up_sells_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_up_sells_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_videos`
--
ALTER TABLE `product_videos`
  ADD CONSTRAINT `product_videos_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `push_notification_translations`
--
ALTER TABLE `push_notification_translations`
  ADD CONSTRAINT `push_notification_translations_push_notification_id_foreign` FOREIGN KEY (`push_notification_id`) REFERENCES `push_notifications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `refunds`
--
ALTER TABLE `refunds`
  ADD CONSTRAINT `refunds_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `refund_items`
--
ALTER TABLE `refund_items`
  ADD CONSTRAINT `refund_items_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refund_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `refund_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refund_items_refund_id_foreign` FOREIGN KEY (`refund_id`) REFERENCES `refunds` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `search_terms`
--
ALTER TABLE `search_terms`
  ADD CONSTRAINT `search_terms_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_inventory_source_id_foreign` FOREIGN KEY (`inventory_source_id`) REFERENCES `inventory_sources` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `shipments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipment_items`
--
ALTER TABLE `shipment_items`
  ADD CONSTRAINT `shipment_items_shipment_id_foreign` FOREIGN KEY (`shipment_id`) REFERENCES `shipments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscribers_list`
--
ALTER TABLE `subscribers_list`
  ADD CONSTRAINT `subscribers_list_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscribers_list_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tax_categories_tax_rates`
--
ALTER TABLE `tax_categories_tax_rates`
  ADD CONSTRAINT `tax_categories_tax_rates_tax_category_id_foreign` FOREIGN KEY (`tax_category_id`) REFERENCES `tax_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tax_categories_tax_rates_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `theme_customizations`
--
ALTER TABLE `theme_customizations`
  ADD CONSTRAINT `theme_customizations_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `theme_customization_translations`
--
ALTER TABLE `theme_customization_translations`
  ADD CONSTRAINT `theme_customization_translations_theme_customization_id_foreign` FOREIGN KEY (`theme_customization_id`) REFERENCES `theme_customizations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  ADD CONSTRAINT `wishlist_items_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_items_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
