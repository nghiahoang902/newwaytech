-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 06, 2023 lúc 05:41 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `beanmobile`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL,
  `json_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_super_admin` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_at` datetime DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT 1,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'M' COMMENT 'Giới tính M: nam',
  `birthday` date DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `function_id` bigint(20) UNSIGNED DEFAULT NULL,
  `degree_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `avatar`, `role`, `json_information`, `is_super_admin`, `status`, `remember_token`, `login_at`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `gender`, `birthday`, `phone`, `address`, `department_id`, `function_id`, `degree_id`, `user_type`) VALUES
(1, 'Thắng Nguyễn', 'huuthangb2k50@gmail.com', '$2y$10$YAZxnGGJPJfmHh.y1L0tv.eZfz9VvqbzH8EKQKx3q6S0FrlXgOUGS', '/themes/frontend/biz9/images/user.png', 1, NULL, 1, 'active', NULL, '2023-04-14 09:43:00', 1, 1, '2021-09-24 01:48:18', '2023-04-14 02:43:00', 'M', NULL, NULL, NULL, 1, NULL, NULL, 'public'),
(2, 'Admin', 'admin@gmail.com', '$2y$10$A2ZVxBeus6Xo9UcoHdrAKektpW94OFmGr.duSN3ePepBlidSboPNC', NULL, 1, NULL, 1, 'active', NULL, '2023-12-06 08:52:18', 1, 1, '2022-09-23 09:44:45', '2023-12-06 01:52:18', 'M', NULL, NULL, NULL, 1, NULL, NULL, 'public'),
(3, 'Nguyen Duong', 'duongnt04@gmail.com', '$2y$10$2pZ/j9fodiWd6w1GeeHh/..tWR7ycGS.9BF17VfNFG4Oh/FnuchGW', NULL, 1, NULL, 0, 'active', NULL, '2023-03-10 09:07:50', 1, 1, '2022-10-03 03:29:02', '2023-03-10 02:07:50', 'M', NULL, NULL, NULL, 1, NULL, NULL, 'public'),
(4, 'Linh Lê', 'linhle@gmail.com', '$2y$10$s72A27skdsUWrN2A7WD53.GER3nPrLoQvxFWlB3f6VEoARFHx5qPq', NULL, 2, NULL, 0, 'active', NULL, NULL, 1, 1, '2022-10-03 03:33:00', '2022-10-03 03:33:00', 'M', NULL, NULL, NULL, 2, NULL, NULL, 'public'),
(5, 'Hoàng Long', 'haduong@gmail.com', '$2y$10$UjF3ABKSt0uKl4w3fmQ2iO2rdIHItolkLKmKPi4nML4EF6Q/o0V4S', '/public/data/cms-image/huuthangb2k50/a7b75f828ce04da9a9e45cc8e67a2949%20(1).png', 1, NULL, 0, 'active', NULL, NULL, 1, 1, '2022-10-03 03:33:44', '2022-11-28 03:52:05', 'M', NULL, NULL, NULL, 2, NULL, NULL, 'public'),
(6, 'nghia', 'nghia@gmail.com', '$2y$10$0yaljGkHWsrRyRSQe7DqC.0XHdtw7E4nKah78DJdPNc4k/tIFIjda', '/public/upload/admin/aothunnam/anhdaungo_nhatphong.jpg', 1, NULL, 0, 'active', NULL, '2023-10-27 11:37:26', 1, 1, '2023-10-27 02:39:57', '2023-10-27 04:37:26', 'M', NULL, NULL, NULL, NULL, NULL, NULL, 'public');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_uses` int(11) DEFAULT NULL,
  `max_uses_user` int(11) DEFAULT NULL,
  `type` enum('percent','fixed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `discount_amount` double(10,2) DEFAULT NULL,
  `min_amount` double(10,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `starts_at` date DEFAULT NULL,
  `expires_at` date DEFAULT NULL,
  `admin_created_id` int(11) NOT NULL,
  `admin_updated_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `name`, `max_uses`, `max_uses_user`, `type`, `discount_amount`, `min_amount`, `status`, `starts_at`, `expires_at`, `admin_created_id`, `admin_updated_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(6, 'MGG-001', 'Mã giảm giá 001', 10, 2, 'fixed', 5000.00, 5000.00, 1, '2023-11-12', '2023-11-15', 2, 2, NULL, '2023-11-12 03:34:35', '2023-11-12 03:34:35'),
(7, 'MGG-002', 'Mã giảm giá 002', 5, 1, 'fixed', 1000.00, 1000.00, 1, '2023-11-13', '2023-11-19', 2, 2, NULL, '2023-11-13 03:18:48', '2023-11-13 03:18:48'),
(8, 'MGG-003', 'Mã giảm giá 003', 4, 3, 'percent', 10.00, 10000.00, 1, '2023-11-15', '2023-11-20', 2, 2, NULL, '2023-11-14 03:58:11', '2023-11-14 16:19:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupon_product`
--

CREATE TABLE `coupon_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_09_21_090133_create_admins_table', 1),
(5, '2021_09_29_090019_create_tb_options_table', 1),
(6, '2021_09_29_090048_create_tb_logs_table', 1),
(7, '2021_09_29_090107_create_tb_admin_menus_table', 1),
(8, '2021_09_29_090214_create_tb_modules_table', 1),
(9, '2021_09_29_090233_create_tb_module_functions_table', 1),
(10, '2021_09_29_090301_create_tb_roles_table', 1),
(11, '2021_09_29_090402_create_tb_menus_table', 1),
(12, '2021_09_29_090455_create_tb_blocks_table', 1),
(13, '2021_09_29_090509_create_tb_block_contents_table', 1),
(14, '2021_09_29_090709_create_tb_cms_taxonomys_table', 1),
(15, '2021_09_29_090743_create_tb_cms_posts_table', 1),
(16, '2021_10_09_013236_create_tb_pages_table', 1),
(17, '2021_10_26_210129_change_tb_users_table', 1),
(24, '2022_04_25_163138_create_tb_widgets_table', 3),
(25, '2022_04_25_163922_create_tb_components_table', 3),
(26, '2022_04_26_155008_create_tb_widget_configs_table', 4),
(27, '2022_04_26_155035_create_tb_component_configs_table', 4),
(28, '2022_06_02_102255_create_tb_bookings_table', 5),
(29, '2022_02_14_165457_create_tb_contacts_table', 6),
(30, '2022_02_14_170033_create_tb_orders_table', 6),
(31, '2022_02_14_170056_create_tb_order_details_table', 6),
(32, '2022_06_27_162451_create_tb_popups_table', 7),
(33, '2022_08_23_161159_create_tb_affiliates_table', 8),
(34, '2022_08_23_162428_create_tb_affiliates_table', 9),
(35, '2022_08_31_150106_add_column_posts', 10),
(36, '2022_08_31_152204_change_column_posts', 11),
(37, '2022_09_06_105720_change_column_posts_2', 12),
(38, '2022_09_10_103404_create_tb_post_comment_table', 13),
(39, '2022_09_13_095523_change_column_post_comment', 14),
(40, '2022_09_26_153846_created_table_tb_post_history', 15),
(41, '2022_10_07_150551_create_table_royalties', 15),
(42, '2022_10_14_164924_created_table_royalties', 16),
(43, '2022_10_14_165443_create_table_tb_royaltie', 17),
(44, '2022_10_14_175233_create_table_live_reporting', 18),
(45, '2022_10_14_175313_create_table_live_reporting_detail', 18),
(46, '2022_10_24_095513_create_table_online_exchange', 19),
(47, '2022_10_14_175233_create_table_experts', 20),
(48, '2022_10_24_100059_create_table_online_exchange_detail', 20),
(49, '2022_09_06_105720_create_table_resource', 21),
(50, '2022_11_24_141755_create_table_department', 22),
(51, '2022_11_24_141839_create_table_function', 22),
(52, '2022_11_24_141902_create_table_degree', 22),
(53, '2022_11_24_142303_change_column_table_admins', 22),
(54, '2022_11_24_170037_created_table_cms_document', 23),
(55, '2022_11_25_092548_create_table_message', 23),
(56, '2023_01_12_220328_create_table_products', 24),
(57, '2023_09_19_105854_create_user_table', 25),
(58, '2023_09_19_110234_create_tb_images', 26),
(59, '2023_11_06_152352_add_column_user_type_to_admin_table', 27),
(64, '2023_11_09_094108_create_coupons_table', 28),
(65, '2023_11_09_094218_create_coupon_product', 28),
(67, '2023_11_14_224732_add_column_discount_amount_to_tb_orders', 29);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_admin_menus`
--

CREATE TABLE `tb_admin_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `is_check` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'deactive',
  `toolbar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_admin_menus`
--

INSERT INTO `tb_admin_menus` (`id`, `parent_id`, `name`, `icon`, `url_link`, `iorder`, `status`, `is_check`, `toolbar`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(3, 10, 'Quản lý người dùng', 'fa fa-user-plus', 'admins', 3, 'active', 'deactive', 'deactive', 1, 2, '2021-09-30 00:38:46', '2023-09-25 10:41:19'),
(5, 10, 'Quản lý nhóm quyền', 'fa fa-users', 'roles', 4, 'active', 'deactive', 'active', 1, 2, '2021-09-30 02:57:11', '2023-09-25 10:38:10'),
(6, 10, 'Quản lý Menu Admin', 'fa fa-tasks', 'admin_menus', 5, 'active', 'deactive', 'deactive', 1, 1, '2021-09-30 14:41:45', '2022-03-02 12:26:32'),
(10, NULL, 'Quản lý hệ thống', 'fa fa-server', NULL, 99, 'active', 'deactive', 'deactive', 1, 1, '2021-10-01 10:10:06', '2022-03-02 12:35:52'),
(13, NULL, 'Quản lý cấu hình', 'fa fa-home', NULL, 98, 'active', 'deactive', 'deactive', 1, 1, '2021-10-02 03:26:41', '2022-03-02 12:35:45'),
(42, 13, 'Quản lý Menu Website', 'fa fa-bars', 'menus', NULL, 'active', 'deactive', 'deactive', 1, 2, '2022-03-02 11:19:53', '2023-04-28 05:04:05'),
(43, 10, 'Khai báo tham số hệ thống', 'fa fa-wrench', 'options', 99, 'active', 'deactive', 'deactive', 1, 2, '2022-03-02 11:20:20', '2023-11-03 07:39:39'),
(44, 13, 'Quản lý hình ảnh hệ thống', 'fa fa-picture-o', 'web_image', NULL, 'active', 'deactive', 'deactive', 1, 1, '2022-03-02 11:23:03', '2022-03-02 12:20:05'),
(45, 13, 'Quản lý thông tin Website', 'fa fa-globe', 'web_information', NULL, 'active', 'deactive', 'deactive', 1, 1, '2022-03-02 11:23:28', '2022-03-02 12:34:25'),
(46, 13, 'Quản lý liên kết MXH', 'fa fa-share-alt-square', 'web_social', NULL, 'active', 'deactive', 'deactive', 1, 1, '2022-03-02 11:23:43', '2022-03-02 12:43:26'),
(51, NULL, 'Quản lý tin', NULL, 'cms_posts', NULL, 'deactive', 'deactive', NULL, 1, 2, '2022-05-30 01:46:23', '2023-11-20 10:36:27'),
(52, 69, 'Quản lý danh mục / thể loại', 'fa fa-bars', 'cms_taxonomys', 1, 'active', 'deactive', NULL, 1, 1, '2022-05-30 01:46:51', '2023-01-17 07:19:30'),
(53, 51, 'Tin tức', 'fa fa-newspaper-o', 'cms_posts', 1, 'active', 'active', NULL, 1, 1, '2022-05-30 02:56:47', '2023-02-10 07:37:11'),
(55, 51, 'Tin giới thiệu', 'fa fa-twitch', 'introduction', 9, 'deactive', 'deactive', NULL, 1, 1, '2022-05-30 02:57:21', '2023-04-01 04:11:10'),
(58, 13, 'Quản lý mã nhúng CSS - JS', NULL, 'web_source', NULL, 'deactive', 'deactive', NULL, 1, 2, '2022-06-06 19:41:52', '2023-11-10 02:42:40'),
(66, 69, 'Bình luận', 'fa fa-comment', 'comment', 9, 'deactive', 'deactive', NULL, 1, 2, '2022-09-19 04:41:50', '2023-11-10 02:42:30'),
(67, 10, 'Quản lý độc giả', 'fa fa-users', 'users', NULL, 'deactive', 'deactive', NULL, 1, 1, '2022-10-07 04:45:16', '2022-10-28 10:35:37'),
(69, NULL, 'Sản phẩm - Danh mục', 'fa fa-cog', NULL, 1, 'active', 'deactive', NULL, 1, 1, '2022-10-11 07:40:32', '2023-02-10 07:36:50'),
(80, 69, 'Quản lý khối nội dung', 'fa fa-object-group', 'block_contents', 9, 'active', 'deactive', NULL, 1, 1, '2022-10-28 08:47:09', '2023-02-02 10:43:37'),
(84, 69, 'Quản lý sản phẩm', 'fa fa-bitbucket', 'cms_products', 1, 'active', 'active', NULL, 1, 2, '2023-01-12 15:24:15', '2023-11-20 10:39:26'),
(85, 10, 'Quản lý blocks', NULL, 'blocks', NULL, 'active', 'deactive', NULL, 1, 2, '2023-03-31 04:22:37', '2023-11-03 07:39:47'),
(86, 51, 'Đội ngũ bác sĩ', 'fa fa-user-plus', 'profile', NULL, 'deactive', 'deactive', NULL, 1, 2, '2023-03-31 09:35:30', '2023-06-03 04:31:30'),
(87, 51, 'Media', 'fa fa-file-video-o', 'cms_media', NULL, 'active', 'deactive', NULL, 2, 2, '2023-04-28 08:56:06', '2023-11-08 03:42:42'),
(88, 51, 'Đặt lịch', 'fa fa-calendar', 'contacts', NULL, 'deactive', 'deactive', NULL, 2, 2, '2023-05-05 03:13:32', '2023-06-03 04:31:18'),
(89, 69, 'Quản lý đơn hàng', NULL, 'order_products', NULL, 'deactive', 'deactive', NULL, 2, 2, '2023-05-29 04:59:31', '2023-11-20 10:36:52'),
(91, 51, 'Tin tức thế giới', NULL, 'albums', 1, 'active', 'deactive', NULL, 2, 2, '2023-09-17 15:15:06', '2023-09-17 15:15:06'),
(92, 69, 'quản lý hình ảnh', NULL, 'cms_images', NULL, 'deactive', 'deactive', NULL, 2, 2, '2023-09-19 03:34:39', '2023-11-10 03:04:59'),
(93, 69, 'Quản lý mã giảm giá', 'fa-solid fa-tags', 'coupons', NULL, 'deactive', 'deactive', NULL, 2, 2, '2023-11-10 02:19:58', '2023-11-20 10:36:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_blocks`
--

CREATE TABLE `tb_blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_config` tinyint(1) NOT NULL DEFAULT 1,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_blocks`
--

INSERT INTO `tb_blocks` (`id`, `name`, `description`, `block_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(30, 'Khối nội dung slide', NULL, 'slide', NULL, 1, 1, 'active', 1, 2, '2023-03-31 04:23:32', '2023-11-21 05:01:03'),
(31, 'Khối nội dung đầu trang', NULL, 'header', NULL, 1, NULL, 'active', 2, 2, '2023-04-28 01:33:50', '2023-04-28 01:40:58'),
(32, 'Khối nội dung dịch vụ nổi bật', NULL, 'service', NULL, 1, NULL, 'active', 2, 2, '2023-04-28 01:34:05', '2023-04-28 01:34:05'),
(33, 'Khối nội dung đội ngũ bác sĩ', NULL, 'doctor', NULL, 1, NULL, 'active', 2, 2, '2023-04-28 01:37:30', '2023-04-28 01:37:30'),
(34, 'Khối nội dung giới thiệu', NULL, 'introduce', NULL, 1, NULL, 'active', 2, 2, '2023-04-28 01:37:53', '2023-04-28 01:37:53'),
(35, 'Khối nội dung video', NULL, 'video', NULL, 1, NULL, 'active', 2, 2, '2023-04-28 01:39:14', '2023-04-28 01:39:14'),
(36, 'Khối nội dung tin tức nổi bật', NULL, 'hot-news', NULL, 1, NULL, 'active', 2, 2, '2023-04-28 01:39:36', '2023-04-28 01:40:17'),
(37, 'Khối nội dung tin tức mới nhất', NULL, 'latest-news', NULL, 1, NULL, 'active', 2, 2, '2023-04-28 01:40:11', '2023-04-28 01:40:11'),
(38, 'khối nội dung chân trang', NULL, 'footer', NULL, 1, NULL, 'active', 2, 2, '2023-04-28 01:40:51', '2023-04-28 01:40:51'),
(39, 'Khối nội dung giới thiệu', NULL, 'intro', NULL, 1, 2, 'active', 2, 2, '2023-11-21 05:00:52', '2023-11-21 05:00:52'),
(40, 'Khối nội dung lĩnh vực hoạt động', NULL, 'field', NULL, 1, 3, 'active', 2, 2, '2023-11-21 07:29:47', '2023-11-21 07:29:47'),
(41, 'Khối nội dung giải pháp cơ sở hạ tầng', NULL, 'infrastructure', NULL, 1, 4, 'active', 2, 2, '2023-11-21 07:41:59', '2023-11-21 07:41:59'),
(42, 'Khối nội dung lý do nên chọn', NULL, 'reasons', NULL, 1, 5, 'active', 2, 2, '2023-11-21 07:47:29', '2023-11-21 07:47:29'),
(43, 'Khối nội dung phản hồi khách hàng', NULL, 'feedback', NULL, 1, 6, 'active', 2, 2, '2023-11-21 07:59:51', '2023-11-21 07:59:51'),
(44, 'Khối nội dung cung cấp giải pháp', NULL, 'solution', NULL, 1, 7, 'active', 2, 2, '2023-11-28 08:47:27', '2023-11-28 08:47:27'),
(45, 'Khối nội dung đối tác', NULL, 'partner', NULL, 1, 8, 'active', 2, 2, '2023-12-01 08:37:50', '2023-12-01 08:37:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_block_contents`
--

CREATE TABLE `tb_block_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_link_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `link_iframe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_block_contents`
--

INSERT INTO `tb_block_contents` (`id`, `parent_id`, `title`, `brief`, `content`, `block_code`, `json_params`, `image`, `image_background`, `icon`, `url_link`, `url_link_title`, `position`, `system_code`, `iorder`, `status`, `link_iframe`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(109, NULL, 'SLIDE', 'Bao gồm các hình ảnh slide', NULL, 'slide', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', NULL, 1, 2, '2023-03-31 04:28:03', '2023-11-21 04:57:28'),
(110, 109, 'Ảnh slide 1', 'Hệ thống phần mềm quản lý chuyên nghiệp', '<ul><li><span style=\"color:hsl(0, 0%, 0%);font-family:Arial, Helvetica, sans-serif;\">Hỗ trợ kỹ thuật 24/7&nbsp;</span></li><li><span style=\"color:hsl(0, 0%, 0%);font-family:Arial, Helvetica, sans-serif;\">Tối ưu mã nguồn hệ thống&nbsp;</span></li><li><span style=\"color:hsl(0, 0%, 0%);font-family:Arial, Helvetica, sans-serif;\">Tương thích đa trình duyệt&nbsp;</span></li><li><span style=\"color:hsl(0, 0%, 0%);font-family:Arial, Helvetica, sans-serif;\">Sử dụng công nghệ mới nhất&nbsp;</span></li><li><span style=\"color:hsl(0, 0%, 0%);font-family:Arial, Helvetica, sans-serif;\">Đừng bỏ lỡ cơ hội của bạn!...&nbsp;</span></li></ul>', 'slide', NULL, '/public/upload/admin/6/banner-02.jpg', '/public/upload/admin/slider3.jpg', NULL, NULL, NULL, NULL, NULL, 1, 'active', NULL, 1, 2, '2023-03-31 04:31:21', '2023-12-04 07:12:20'),
(111, 109, 'Ảnh slide 2', 'Tối ưu giao diện Bootstrap mới nhất', '<ul><li><span style=\"color:hsl(0, 0%, 0%);font-family:Arial, Helvetica, sans-serif;\">Cấu trúc website chuẩn W3C</span></li><li><span style=\"color:hsl(0, 0%, 0%);font-family:Arial, Helvetica, sans-serif;\">Không giới hạn thay đổi Layout</span></li><li><span style=\"color:hsl(0, 0%, 0%);font-family:Arial, Helvetica, sans-serif;\">Tích hợp Google Maps&nbsp;</span></li><li><span style=\"color:hsl(0, 0%, 0%);font-family:Arial, Helvetica, sans-serif;\">Cấu hình người dùng linh hoạt&nbsp;</span></li><li><span style=\"color:hsl(0, 0%, 0%);font-family:Arial, Helvetica, sans-serif;\">And Much More...&nbsp;</span></li></ul>', 'slide', NULL, '/public/upload/admin/6/banner-01.jpg', '/public/upload/admin/slider2.jpg', NULL, NULL, NULL, NULL, NULL, 2, 'active', NULL, 1, 2, '2023-03-31 04:31:55', '2023-12-04 07:14:59'),
(112, 109, 'Ảnh slide 3', 'Giao diện thiết kế chuẩn HTML5', '<ul><li><span style=\"color:hsl(0, 0%, 0%);font-family:Arial, Helvetica, sans-serif;\">100% Responsive</span></li><li><span style=\"color:hsl(0, 0%, 0%);font-family:Arial, Helvetica, sans-serif;\">Xây dựng trên Bootstrap&nbsp;</span></li><li><span style=\"color:hsl(0, 0%, 0%);font-family:Arial, Helvetica, sans-serif;\">Tính năng đóng gói đầy đủ</span></li><li><span style=\"color:hsl(0, 0%, 0%);font-family:Arial, Helvetica, sans-serif;\">Dễ dàng tùy biến Customize</span></li><li><span style=\"color:hsl(0, 0%, 0%);font-family:Arial, Helvetica, sans-serif;\">Và nhiều hơn nữa...</span></li></ul>', 'slide', NULL, '/public/upload/admin/6/banner-03.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', NULL, 2, 2, '2023-11-21 04:57:18', '2023-12-04 07:17:17'),
(113, NULL, 'INTRO', 'Về chúng tôi', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);\">- Trở thành công ty có dịch vụ về phát triển ứng dụng CNTT &amp; TT được khách hàng tin tưởng, lựa chọn thông qua những trải nghiệm từ dịch vụ tốt, sản phẩm đa dạng, giá thành cạnh tranh, dịch vụ chuyên nghiệp và hoàn hảo, cùng các quy trình hướng tới sự phục vụ khách hàng tốt nhất.</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);\">- Trở thành một tổ chức mà người lao động muốn lựa chọn để làm việc, vì tại đây mỗi người lao động luôn được tạo điều kiện học tập và phát triển, phát huy hết khả năng và năng lực của mình.</span></p>', 'intro', NULL, '/public/upload/admin/5/Ph%C3%B9ng%20V%C4%83n%20Th%C3%A0nh.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', NULL, 2, 2, '2023-11-21 05:03:11', '2023-11-28 08:28:46'),
(114, 113, 'Sứ mệnh', 'Sứ mệnh của NEWWAY là phát triển các nền tảng, phần mềm và dịch vụ công nghệ thông tin để thay đổi ngành kinh tế và giúp khách hàng thực hiện công việc theo phương thức mới, năng suất và hiệu quả hơn nhằm thúc đẩy sự phát triển của đất nước và các quốc gia trên thế giới.', '<p><span style=\"background-color:rgb(250,250,250);color:rgb(102,102,102);\">Công ty Trách nhiệm hữu hạn Đầu tư, Phát triển ứng dụng công nghệ thông tin và truyền thông (NEWWAY), chúng tôi cung cấp các sản phẩm phần mềm và tích hợp hệ thống cho các nhà cung cấp dịch vụ mạng, các giải pháp chuyên dụng và các dịch vụ kỹ thuật cho ngành Viễn Thông, đồng thời là đơn vị cung cấp các giải pháp phục vụ cho công việc quản lý trong doanh nghiệp cũng như tư vấn thiết kế và phát triển Webiste.</span></p>', 'intro', NULL, '/public/upload/admin/7/portfolio-15.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', NULL, 2, 2, '2023-11-21 07:24:34', '2023-12-05 07:20:02'),
(115, 113, 'Giá trị cốt lõi', 'Luôn làm việc với tinh thần trách nhiệm cao, thực hiện đúng cam kết với khách hàng.\r\nCác nền tảng, sản phẩm và dịch vụ NEWWAY mang lại cho khách hàng đều có độ tin cậy cao, tin cậy trong giao dịch và chuyển giao tri thức, công nghệ.\r\nKhách hàng có thể dễ dàng tiếp cận và sử dụng nền tảng, sản phẩm, dịch vụ của NEWWAY bất cứ khi nào, bất cứ nơi nào. Đội ngũ tư vấn, hỗ trợ khách hàng của NEWWAY luôn sẵn sàng phục vụ 365 ngày/năm và 24 giờ/ngày.', '<p><span style=\"background-color:rgb(250,250,250);color:rgb(102,102,102);\">Con đường của NEWWAY là Công nghệ - Sản phẩm – Dịch vụ: từ những công nghệ ưu việt và hiện đại nhất tạo ra các sản phẩm mới mang tính đón đầu, phù hợp nhất với nhu cầu thị trường, từ đó cung cấp các dịch vụ tương ứng. Sản phẩm của NEWWAY độc đáo về tính năng, đặc thù theo từng lĩnh vực và đa dạng về công nghệ. Đây chính là mục tiêu dài hạn của NEWWAY để hướng đến mục tiêu đưa công nghệ thông tin đến đại chúng.</span></p>', 'intro', NULL, '/public/upload/admin/7/portfolio-16.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', NULL, 2, 2, '2023-11-21 07:25:09', '2023-12-05 07:20:27'),
(116, 113, 'Định hướng hiện tại', 'Định hướng hiện tại của NEWWAY là cung cấp các sản phẩm nâng cấp mở rộng cho thị trường truyền thống, triển khai các dự án về chia sẻ doanh thu với nhà mạng, cung cấp các giải pháp về dịch vụ nội dung cho các nhà khai thác di động (Content Provider)…, đầu tư nghiên cứu các sản phẩm giải pháp mới phục vụ lĩnh vực Giao thông vận tải, hàng hải, các dự án về công nghệ thông tin cho các tỉnh thành, chính phủ… Đồng thời NEWWAY tập trung nguồn lực để phát triển tốt mảng dịch vụ data, dịch vụ giá trị gia tăng, tạo sự phát triển bền vững', NULL, 'intro', NULL, '/public/upload/admin/7/portfolio-14.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', NULL, 2, 2, '2023-11-21 07:25:44', '2023-12-05 07:20:48'),
(117, NULL, 'FIELD', 'Giải pháp công nghê thông tin cho doanh nghiệp', '<p>Lĩnh vực hoạt động</p>', 'field', NULL, '/public/upload/admin/5/Ph%C3%B9ng%20V%C4%83n%20Th%C3%A0nh.png', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', NULL, 2, 2, '2023-11-21 07:31:09', '2023-11-29 03:03:58'),
(118, 117, 'Giải pháp Giáo dục thông minh', NULL, '<p><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);\">Newway hiện là đại lý tích hợp hệ thống của các hãng công nghệ thông tin hàng đầu thế giới.</span></p>', 'field', NULL, '/public/upload/admin/4/Gi%E1%BA%A3i%20ph%C3%A1p%20Gi%C3%A1o%20d%E1%BB%A5c%20th%C3%B4ng%20minh.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', NULL, 2, 2, '2023-11-21 07:34:42', '2023-11-21 07:34:42'),
(119, 117, 'Giải pháp cho hệ thống mạng', NULL, '<p><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);\">Chúng tôi cung cấp giải pháp xây dựng hệ thống hạ tâng mạng tối ưu nhất.</span></p>', 'field', NULL, '/public/upload/admin/4/Gi%E1%BA%A3i%20ph%C3%A1p%20cho%20h%E1%BB%87%20th%E1%BB%91ng%20m%E1%BA%A1ng.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', NULL, 2, 2, '2023-11-21 07:38:08', '2023-11-21 07:38:08'),
(120, 117, 'Giải pháp phần mềm cho doanh nghiệp', NULL, '<p><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);\">Newway hướng đến các giải pháp công nghệ thông minh, an toàn và tiết kiệm cho doanh nghiệp, đơn vị, tổ chức. Hãy gửi yêu cầu của bạn cho chúng tôi!</span></p>', 'field', NULL, '/public/upload/admin/4/Gi%E1%BA%A3i%20ph%C3%A1p%20ph%E1%BA%A7n%20m%E1%BB%81m%20cho%20doanh%20nghi%E1%BB%87p.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', NULL, 2, 2, '2023-11-21 07:39:57', '2023-11-21 07:39:57'),
(121, NULL, 'Giải pháp cơ sở hạ tầng', 'Newway được xây dựng bởi những chuyên gia hàng đầu trong lĩnh vực công nghệ thông tin và viễn thông. Chúng tôi luôn luôn cố gắng tạo dựng sản phẩm và dịch vụ mang những giá trị cốt lõi nhất với đội ngũ nhân viên và kỹ thuật viên chuyên nghiệp, sáng tạo.', NULL, 'infrastructure', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', NULL, 2, 2, '2023-11-21 07:43:02', '2023-12-05 02:08:01'),
(122, NULL, 'Tại sao nên chọn Newway', NULL, '<p><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);\">Chúng tôi cung cấp những dịch vụ hàng đầu về công nghệ thông tin và truyền thông.</span></p>', 'reasons', NULL, '/public/upload/admin/4/T%E1%BA%A1i%20sao%20n%C3%AAn%20ch%E1%BB%8Dn%20Newway.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 5, 'active', NULL, 2, 2, '2023-11-21 07:49:15', '2023-11-21 07:49:15'),
(123, 122, 'Cấu hình linh hoạt', NULL, '<p><span style=\"background-color:rgb(250,250,250);color:rgb(102,102,102);\">Định hướng hiện tại của NEWWAY là cung cấp các sản phẩm nâng cấp mở rộng cho thị trường truyền thống, triển khai các dự án về chia sẻ doanh thu với nhà mạng, cung cấp các giải pháp về dịch vụ nội dung cho các nhà khai thác di động (Content Provider)…, đầu tư nghiên cứu các sản phẩm giải pháp mới phục vụ lĩnh vực Giao thông vận tải, hàng hải, các dự án về công nghệ thông tin cho các tỉnh thành, chính phủ… Đồng thời NEWWAY tập trung nguồn lực để phát triển tốt mảng dịch vụ data, dịch vụ giá trị gia tăng, tạo sự phát triển bền vững</span></p>', 'reasons', NULL, '/public/upload/admin/4/C%E1%BA%A5u%20h%C3%ACnh%20linh%20ho%E1%BA%A1t.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', NULL, 2, 2, '2023-11-21 07:52:29', '2023-11-21 07:52:29'),
(124, 122, 'Dịch vụ hỗ trợ 24/7', NULL, '<p><span style=\"background-color:rgb(250,250,250);color:rgb(102,102,102);\">Định hướng hiện tại của NEWWAY là cung cấp các sản phẩm nâng cấp mở rộng cho thị trường truyền thống, triển khai các dự án về chia sẻ doanh thu với nhà mạng, cung cấp các giải pháp về dịch vụ nội dung cho các nhà khai thác di động (Content Provider)…, đầu tư nghiên cứu các sản phẩm giải pháp mới phục vụ lĩnh vực Giao thông vận tải, hàng hải, các dự án về công nghệ thông tin cho các tỉnh thành, chính phủ… Đồng thời NEWWAY tập trung nguồn lực để phát triển tốt mảng dịch vụ data, dịch vụ giá trị gia tăng, tạo sự phát triển bền vững</span></p>', 'reasons', NULL, '/public/upload/admin/4/D%E1%BB%8Bch%20v%E1%BB%A5%20h%E1%BB%97%20tr%E1%BB%A3%20247.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', NULL, 2, 2, '2023-11-21 07:54:33', '2023-11-21 07:54:33'),
(125, 122, '100% Responsive', NULL, '<p><span style=\"background-color:rgb(250,250,250);color:rgb(102,102,102);\">Định hướng hiện tại của NEWWAY là cung cấp các sản phẩm nâng cấp mở rộng cho thị trường truyền thống, triển khai các dự án về chia sẻ doanh thu với nhà mạng, cung cấp các giải pháp về dịch vụ nội dung cho các nhà khai thác di động (Content Provider)…, đầu tư nghiên cứu các sản phẩm giải pháp mới phục vụ lĩnh vực Giao thông vận tải, hàng hải, các dự án về công nghệ thông tin cho các tỉnh thành, chính phủ… Đồng thời NEWWAY tập trung nguồn lực để phát triển tốt mảng dịch vụ data, dịch vụ giá trị gia tăng, tạo sự phát triển bền vững</span></p>', 'reasons', NULL, '/public/upload/admin/4/100%25%20Responsive.png', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', NULL, 2, 2, '2023-11-21 07:55:41', '2023-11-21 07:55:41'),
(126, 122, 'Dễ dàng sử dụng', NULL, '<p><span style=\"background-color:rgb(250,250,250);color:rgb(102,102,102);\">Định hướng hiện tại của NEWWAY là cung cấp các sản phẩm nâng cấp mở rộng cho thị trường truyền thống, triển khai các dự án về chia sẻ doanh thu với nhà mạng, cung cấp các giải pháp về dịch vụ nội dung cho các nhà khai thác di động (Content Provider)…, đầu tư nghiên cứu các sản phẩm giải pháp mới phục vụ lĩnh vực Giao thông vận tải, hàng hải, các dự án về công nghệ thông tin cho các tỉnh thành, chính phủ… Đồng thời NEWWAY tập trung nguồn lực để phát triển tốt mảng dịch vụ data, dịch vụ giá trị gia tăng, tạo sự phát triển bền vững</span></p>', 'reasons', NULL, '/public/upload/admin/5/%C4%91eang.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', NULL, 2, 2, '2023-11-21 07:58:48', '2023-11-21 07:58:48'),
(127, NULL, 'feedback', 'Khách Hàng Của Chúng Tôi', NULL, 'feedback', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'active', NULL, 2, 2, '2023-11-21 08:00:58', '2023-11-29 02:48:38'),
(128, 127, 'Phần mềm quản lý', 'Phần mềm quản lý gara thật tuyệt vời, bài toán nghiệp vụ của chúng tôi đã được xử lý hoàn toàn tối ưu.', '<p>Phùng Văn Thành</p>', 'feedback', NULL, '/public/upload/admin/5/Ph%C3%B9ng%20V%C4%83n%20Th%C3%A0nh.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', NULL, 2, 2, '2023-11-21 08:04:16', '2023-11-28 09:21:45'),
(129, 127, 'Giải pháp mạng', 'Tôi rất hài lòng về giải pháp mà newway tư vấn. Hệ thống của chúng tôi chạy rất ổn định và tối ưu.', '<p>Vũ Văn Kiên</p>', 'feedback', NULL, '/public/upload/admin/5/vuvankien.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', NULL, 2, 2, '2023-11-21 08:06:01', '2023-11-28 09:22:08'),
(131, 113, 'Con đường đi tới thành công', '- Trở thành công ty có dịch vụ về phát triển ứng dụng CNTT & TT được khách hàng tin tưởng, lựa chọn thông qua những trải nghiệm từ dịch vụ tốt, sản phẩm đa dạng, giá thành cạnh tranh, dịch vụ chuyên nghiệp và hoàn hảo, cùng các quy trình hướng tới sự phục vụ khách hàng tốt nhất.\r\n- Trở thành một tổ chức mà người lao động muốn lựa chọn để làm việc, vì tại đây mỗi người lao động luôn được tạo điều kiện học tập và phát triển, phát huy hết khả năng và năng lực của mình.', NULL, 'intro', NULL, '/public/upload/admin/7/portfolio-13.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', NULL, 2, 2, '2023-11-28 07:51:10', '2023-12-05 07:21:10'),
(132, NULL, 'Chúng tôi cung cấp giải pháp công nghệ thông tin tối ưu nhất cho nhu cầu của bạn', 'Newway hướng đến các giải pháp công nghệ thông minh, an toàn và tiết kiệm cho doanh nghiệp, đơn vị, tổ chức. Hãy gửi yêu cầu hay ý tưởng của bạn cho chúng tôi!', NULL, 'solution', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'active', NULL, 2, 2, '2023-11-28 08:48:48', '2023-11-28 08:49:02'),
(133, NULL, 'PARTNER', 'Đối tác', NULL, 'partner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'active', NULL, 2, 2, '2023-12-01 08:39:02', '2023-12-01 08:39:22'),
(134, 133, 'partner1', NULL, NULL, 'partner', NULL, '/public/upload/admin/5/partner1.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', NULL, 2, 2, '2023-12-01 08:42:31', '2023-12-01 08:42:38'),
(135, 133, 'partner2', NULL, NULL, 'partner', NULL, '/public/upload/admin/5/partner2.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', NULL, 2, 2, '2023-12-01 08:43:05', '2023-12-01 08:43:05'),
(136, 133, 'partner3', NULL, NULL, 'partner', NULL, '/public/upload/admin/5/partner3.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', NULL, 2, 2, '2023-12-01 08:43:52', '2023-12-01 08:43:52'),
(137, 133, 'partner4', NULL, NULL, 'partner', NULL, '/public/upload/admin/5/partner4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', NULL, 2, 2, '2023-12-01 08:44:29', '2023-12-01 08:44:29'),
(138, 133, 'partner5', NULL, NULL, 'partner', NULL, '/public/upload/admin/5/partner5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 5, 'active', NULL, 2, 2, '2023-12-01 08:44:54', '2023-12-01 08:47:37'),
(139, 133, 'partner6', NULL, NULL, 'partner', NULL, '/public/upload/admin/6/partner6.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 6, 'active', NULL, 2, 2, '2023-12-01 08:45:47', '2023-12-01 08:45:47'),
(140, 133, 'partner7', NULL, NULL, 'partner', NULL, '/public/upload/admin/6/partner7.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 7, 'active', NULL, 2, 2, '2023-12-01 08:46:17', '2023-12-01 08:46:17'),
(141, 133, 'partner8', NULL, NULL, 'partner', NULL, '/public/upload/admin/6/partner8.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 8, 'active', NULL, 2, 2, '2023-12-01 08:46:47', '2023-12-01 08:46:47'),
(142, 133, 'partner9', NULL, NULL, 'partner', NULL, '/public/upload/admin/6/partner9.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 9, 'active', NULL, 2, 2, '2023-12-01 08:47:18', '2023-12-01 08:47:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_cms_posts`
--

CREATE TABLE `tb_cms_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'post',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting',
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_coppy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_part` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `torder` int(11) DEFAULT 1,
  `iorder` int(11) DEFAULT 1,
  `news_position` int(11) DEFAULT 0,
  `number_like` int(11) DEFAULT NULL,
  `number_comment` int(11) DEFAULT NULL,
  `number_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `number_download` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `nhuanbut` int(11) DEFAULT 0,
  `aproved_date` datetime DEFAULT current_timestamp(),
  `rating` double(18,2) DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cms_tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'open',
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT 'tài khoản người dùng',
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `iframe_video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_cms_posts`
--

INSERT INTO `tb_cms_posts` (`id`, `taxonomy_id`, `is_type`, `title`, `brief`, `content`, `json_params`, `image`, `image_thumb`, `status`, `author`, `url_coppy`, `url_part`, `torder`, `iorder`, `news_position`, `number_like`, `number_comment`, `number_view`, `number_download`, `nhuanbut`, `aproved_date`, `rating`, `category`, `cms_tag`, `relation`, `comment_status`, `seo_title`, `seo_keyword`, `seo_description`, `user_id`, `admin_updated_id`, `admin_created_id`, `created_at`, `updated_at`, `iframe_video`) VALUES
(695, 70, 'post', 'Đôi Nét Về Thông Tin Showroom Thế Giới Thời Trang Baby', 'Showrooom Thế Giới Thời Trang Baby là viên gạch đầu tiên trong chiến dịch phủ sóng thị trường bán lẻ, sau 3 năm hoạt động trong mảng bỏ sỉ quần áo trẻ em tại Việt Nam', '<p><span style=\"color:rgb(128,0,0);\">❖</span><span style=\"color:rgb(0,0,0);\"> Showrooom </span><a href=\"https://thegioithoitrangbaby.vn/\"><span style=\"color:rgb(0,51,102);\"><strong>Thế Giới Thời Trang Baby Tân Bình</strong></span></a><span style=\"color:rgb(0,0,0);\"> là viên gạch đầu tiên trong chiến dịch phủ sóng thị trường bán lẻ, sau 3 năm hoạt động trong mảng bỏ sỉ quần áo trẻ em tại Việt Nam. Với những gì đã đạt được trong lĩnh vực bán sỉ và niềm tin của hàng triệu khách hàng đã dành cho Thế Giới Thời Trang Baby. Hy vọng với sự ra đời mảng lẻ chúng tôi sẽ mang lại những lợi ích cao nhất dành cho khách hàng.</span></p><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2018/09/cua-hang-the-gioi-thoi-trang-baby.jpg\" alt=\"\" srcset=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2018/09/cua-hang-the-gioi-thoi-trang-baby.jpg 600w, https://thegioithoitrangbaby.vn/wp-content/uploads/2018/09/cua-hang-the-gioi-thoi-trang-baby-300x169.jpg 300w\" sizes=\"100vw\" width=\"600\"></figure><p style=\"text-align:center;\"><span style=\"color:rgb(0,0,0);\"><i>Một góc tại Showroom Thế Giới Thời Trang Baby Tân Bình</i></span></p><p>&nbsp;</p><p><span style=\"color:rgb(128,0,0);\">❖</span><span style=\"color:rgb(0,0,0);\"> Toạ lạc Showroom Thế Giới Thời Trang Baby nằm tại 126 Trần Văn Quang, P.10, Q.Tân Bình, TP Hồ Chí Minh. Đây là con đường cầu nối giữa 2 tuyến đường trung tâm nhất của quận Tân Bình đó là Âu Cơ và Lạc Long Quân.</span></p><p><span style=\"color:rgb(128,0,0);\">❖</span><span style=\"color:rgb(0,0,0);\"> Showroom Thế Giới Thời Trang Baby có tổng diện tích hơn 100m2, được thiết kế theo phong cách hiện đại đạt chuẩn châu Âu nhằm tạo ra không gian thực nhất giúp cho Quý khách hàng có thể dễ dàng chiêm ngưỡng và lựa chọn cho mình những bộ quần áo đẹp nhất dành cho bé yêu nhà mình.</span></p><p><span style=\"color:rgb(128,0,0);\">❖</span><span style=\"color:rgb(0,0,0);\"> Bên trong Showroom Thế Giới Thời Trang Baby sẽ được trưng bày gần 1000 mẫu mã sản phẩm các loại từ </span><a href=\"https://thegioithoitrangbaby.vn/danh-muc/quan-ao-so-sinh/\"><span style=\"color:rgb(0,51,102);\"><strong>quần áo sơ sinh</strong></span></a><span style=\"color:rgb(0,0,0);\"> (3-6 tháng tuổi) cho đến những mẫu quần áo thời trang dành cho bé từ (1 đến 13 tuổi), cùng với đó là hàng trăm mẫu phụ kiện cực xinh để phối cùng với trang phục cho bé.</span></p><p>&nbsp;</p><blockquote><p><span style=\"color:rgb(0,0,0);\"><i><strong>Thông tin về Công ty Thế Giới Thời Trang Baby</strong></i></span></p><p><span style=\"color:rgb(255,0,0);\"><i>❁</i></span><span style=\"color:rgb(0,0,0);\"><i> Thế Giới thời Trang Baby được thành lập vào 12 tháng 7 năm 2016. Tuy có “tuổi đời” non trẻ nhưng hiện nay đã có hàng triệu trẻ em Việt Nam đang sở hữu những mẫu </i></span><a href=\"https://thegioithoitrangbaby.com/\"><span style=\"color:rgb(0,51,102);\"><i><strong>quần áo trẻ em</strong></i></span></a><span style=\"color:rgb(0,0,0);\"><i>&nbsp;chất lượng từ Thế Giới Thời Trang Baby.</i></span></p><p><span style=\"color:rgb(255,0,0);\"><i>❁</i></span><span style=\"color:rgb(0,0,0);\"><i> Không chỉ là nơi được những khách hàng buôn sỉ, đại lý shop, đại lý bán hàng online,…tin dùng để lấy sỉ. Chúng tôi cũng đang nổi lực để xây dựng và phát triển chuỗi hệ thống cửa hàng quần áo trẻ em AN TOÀN dành cho trẻ em Việt Nam.</i></span></p><p><span style=\"color:rgb(255,0,0);\"><i>❁</i></span><span style=\"color:rgb(0,0,0);\"><i> Hiện tại, chúng tôi đang cung cấp hơn 5 ngàn sản phẩm <strong>AN TOÀN</strong>,<strong> TIỆN ÍCH</strong>, được chứng nhận an toàn cho cho trẻ em, không chỉ giúp bé yêu đẹp mà còn khỏe mạnh.</i></span></p><p><span style=\"color:rgb(255,0,0);\"><i>❁</i></span><span style=\"color:rgb(0,0,0);\"><i> Thế Giới Thời Trang Baby mong muốn sẽ trở thành người bạn đồng hành đáng tin cậy của hàng triệu bà mẹ trẻ năng động trên khắp Việt Nam.</i></span></p><p style=\"text-align:right;\"><span style=\"color:rgb(0,0,0);\"><i>Thế Giới Thời Trang Baby – Nơi Thiên Thần Tỏa Sáng</i></span></p></blockquote>', NULL, 'https://thegioithoitrangbaby.vn/wp-content/uploads/2018/09/cua-hang-the-gioi-thoi-trang-baby.jpg', NULL, 'active', NULL, NULL, 'doi-net-ve-thong-tin-showroom-the-gioi-thoi-trang-baby', 1, 1, 0, NULL, NULL, '24', '0', 0, '2023-05-11 16:10:11', NULL, NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, 2, 2, '2023-05-11 09:10:11', '2023-11-13 02:19:56', NULL),
(696, 70, 'post', 'Phương Thức Thanh Toán Và Cách Thức Vận Chuyển Khi Mua Hàng', 'Quý khách hàng mua sản phẩm tại Thế Giới Thời Trang Baby, có thể dễ dàng thanh toán bằng nhiều hình thức khác nhau và đảm bảo thời gian vận chuyển tối ưu nhất dành cho khách hàng.', '<h3><span style=\"color:rgb(0,0,0);\"><strong>Phương thức thanh toán:</strong></span></h3><p><span style=\"color:rgb(0,0,0);\">? Thanh toán trực tiếp: Khi Quý hàng mua tại Showroom có thể thanh toán trực tiếp bằng tiền mặc hoặc thẻ tín dụng.</span></p><p><span style=\"color:rgb(0,0,0);\">? Thanh toán COD: Với những kháhc hàng ở xa mua Online có thể áp dụng chế độ thanh toán COD, chúng tôi sẽ giao hàng và nhận thanh toán khi Quý khách kiểm tra hàng xong.</span></p><p><span style=\"color:rgb(0,0,0);\">? Thánh toán qua hình thức chuyển khoản: Đối với những khách hàng mua hàng Online, thì có thể chuyển khoản qua tài khoản ngân hàng của chúng tôi.</span></p><h3><span style=\"color:rgb(0,0,0);\"><strong>&nbsp;Cách thức vận chuyển:</strong></span></h3><p><span style=\"color:rgb(0,0,0);\">&nbsp;Tất cả các khách hàng khi đặt hàng sẽ được vận chuyển đến tận nhà thông qua hình thức liên kết với các đơn vị giao hàng lớn hiện nay như Bưu điện, ViettelPost, Giaohangnhanh, Giaohangtietkiem,…</span></p><p><span style=\"color:rgb(0,0,0);\">&nbsp;Còn đối với những khách sỉ ở tỉnh, thì chúng tôi sẽ miễn phí vận chuyển hàng đến chành xe gần nhất của Quý khách.</span></p>', NULL, '/public/upload/admin/7-ly-do-nen-chon-the-gioi-thoi-trang-baby-300x168.jpg', NULL, 'active', NULL, NULL, 'phuong-thuc-thanh-toan-va-cach-thuc-van-chuyen-khi-mua-hang', 1, 1, 0, NULL, NULL, '20', '0', 0, '2023-05-11 16:11:55', NULL, NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, 2, 2, '2023-05-11 09:11:55', '2023-11-13 02:20:00', NULL),
(697, 70, 'post', '5 Cách Phối Phụ Kiện Cùng Đầm Maxi Cho Bé Gái', 'Mỗi khi đi du lịch cùng với gia đình, nhất là khi đi du lịch tại các vùng biển thì sự lựa chọn đầu tiên của các bà mẹ dành cho con gái chính là những chiếc đầm maxi dịu dàng và thướt tha.', '<p>&nbsp;</p><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-ph%E1%BB%A5-kien.jpg\" alt=\"\" srcset=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phụ-kien.jpg 721w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phụ-kien-300x238.jpg 300w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phụ-kien-600x475.jpg 600w\" sizes=\"100vw\" width=\"600\"></figure><p style=\"text-align:center;\"><br><i>Đầm Maxi cho bé gái trang phục không thể thiếu trong mùa hè</i></p><p style=\"text-align:justify;\">Việc phối những phụ kiện thời trang với đầm maxi cho bé gái sao cho hợp thời trang và bắt kịp xu hướng không phải là việc mà ai cũng có thể làm được. Tuy nhiên điều đó sẽ trở nên dễ dàng hơn nếu bạn biết và tận dụng những cách sau đây, thì việc phối những món phụ kiện với đầm maxi cho bé gái không còn là điều khó khăn nữa.</p><h2><strong>5 Cách Phối Phụ Kiện Cùng Đầm Maxi Cho Bé Gái</strong></h2><h3><strong>1.Đôi giày sadal</strong></h3><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phu-kien.jpg\" alt=\"\" srcset=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phu-kien.jpg 800w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phu-kien-150x150.jpg 150w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phu-kien-300x300.jpg 300w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phu-kien-768x768.jpg 768w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phu-kien-600x600.jpg 600w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phu-kien-100x100.jpg 100w\" sizes=\"100vw\" width=\"500\"></figure><p style=\"text-align:center;\"><br><i>Giày Sadal </i><a href=\"https://thegioithoitrangbaby.vn/danh-muc/phu-kien-cho-be/\"><span style=\"color:rgb(0,51,102);\"><i><strong>phụ kiện cho bé</strong></i></span></a><i> mang đến sự tinh tế</i></p><p>✥ Giày sadal luôn thể hiện sự năng động và hòa nhã của người mặc được biệt những đôi giày sadal là món phụ kiện rất phù hợp với những chiếc đầm maxi mà hầu hết mọi người ai cũng lựa chọn.</p><h4><strong>Với những chiếc đầm maxi ngắn.</strong></h4><p>✥ Những đôi giày sadal dây chiến binh hoặc có đế cao sẽ rất phù với những chiếc đầm maxi ngắn, bởi những loại giày này sẽ tôn lên được vẻ đẹp các tính và thời trang cho bé gái của bạn.</p><p>✥ Tuy nhiên thì bạn đừng nên chọn những đôi giày quá cao hay quá nhiều gây sẽ khiến bé trông già hơn so với độ tuổi và đặc biệt còn rất nguy hiểm cho bé.<br>Với những chiếc đầm maxi dài</p><h4><strong>Với những chiếc đầm maxi dài</strong></h4><p>✥ Những chiếc đầm maxi dài sẽ vô cùng phù hợp với những đôi giày sadal đế bằng, có quai ngang hoặc quai kẹp , sẽ giúp có một vẻ đẹp diệu dàng và trong sáng.</p><p>✥ Các mẹ nên chọn những đôi giày không quá cầu kì và có những chi tiết đơn giản dễ mang khi mang vào bé cảm thấy thoải mái.</p><h3><strong>2. Mũ rộng vành</strong></h3><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phu-kien-5.jpg\" alt=\"\" srcset=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phu-kien-5.jpg 550w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phu-kien-5-300x218.jpg 300w\" sizes=\"100vw\" width=\"550\"></figure><p style=\"text-align:center;\"><br>Chiếc mũ này là phụ kiện ăn ý với những chiếc váy maxi</p><p>✥ Mũ rộng vành sẽ là sự kết hợp vô cùng tuyệt vời với đầm maxi cho bé gái, không chỉ giúp bé hạn chế được những tia nắng tiếp xúc vào da mà còn giúp chiếc đầm trở nên thời trang và phong cách hơn.</p><p>✥ Các mẹ có thể chọn kiểu dáng của chiếc mũ tùy theo ý thích của mình. Tùy vào hình dáng cơ thể của bé và độ dài của chiếc đầm mà các mẹ chọn lựa sao cho thật phù hợp</p><p>✥ Nếu bé có khuôn mặt và thân hình nhỏ nhắn thì bạn đừng nên chọn những chiếc mũ quá rộng, điều này rất dễ gây vướng víu và khó chịu cho bé, bên cạnh có tổng thể bộ trang phục lại không được hài hòa.</p><p>✥Ngược lại nếu bé có khuôn mặt tròn trịa, mũm mĩm thì bạn nên chọn những chiếc có vành rộng,sẽ giúp khuôn mặt của bé trở nên thon thả hơn.</p><p>✥Vậy nên các mẹ nhớ cân nhắc hình dáng của bé trước khi chọn cho bé một chiếc mũ rộng vành nhé. Nếu làm tốt việc này thì bé của bạn sẽ có một vẻ đẹp vừa yêu kiều vừa tao nhã &nbsp;với chiếc mũ đấy.</p><h3><strong>3 Kính mát</strong></h3><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phu-kien-4.jpg\" alt=\"\" srcset=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phu-kien-4.jpg 640w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phu-kien-4-150x150.jpg 150w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phu-kien-4-300x300.jpg 300w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phu-kien-4-600x600.jpg 600w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phu-kien-4-100x100.jpg 100w\" sizes=\"100vw\" width=\"500\"></figure><p style=\"text-align:center;\"><i>Kính mát và đầm maxi cũng là cặp đôi hoàn hảo</i></p><p>✥ Kính mát và đầm maxi là cặp đôi hoàn hảo giúp bé thành quý cô đáng yêu và đầy thu hút.</p><p>✥ Chiếc mắt kính còn có tác dụng che bớt những tia nắng mặt trời tiếp xúc vào mắt của bé làm ảnh hưởng tới thị lực của Bé.</p><p>✥ Với những cô bé thì bạn nên chọn gọng mảnh có phần mắt gọn gàng và màu sắc nhẹ nhàng sẽ rất phù hợp và sang trọng.</p><p>✥ Nếu chiếc đầm maxi của bé là màu trắng thì bạn có thể phối với những đôi kính mát tùy màu mà bạn thích.</p><p>✥ Còn đối với những chiếc váy maxi có nhiều màu sắc thì bạn nên chọn cặp kính màu đen hoặc những màu sao cho phù hợp với chiếc váy.</p><h3><strong>4.Vòng cổ</strong></h3><p>✥ Một chiếc vòng cổ sẽ giúp bé gái của bạn che bớt đi khuyết điểm bờ vai và tạo cảm giác mãnh mai cho đôi vai của bé.</p><p>✥ Những chiếc vòng cổ đơn giản, với kích thước nhỏ và mỏng sẽ giúp bé gái của bạn có một vẻ ngoài dịu dàng và đầm thấm</p><p>✥ Còn những chiếc vòng cổ to, cầu&nbsp;kì và nhiều chi tiết sẽ giúp bé có một vẻ ngoài cá tính, năng động và có phần tinh anh.</p><p>✥ Tùy vào có tính và sở thích của mỗi bé mà các mẹ cân nhắc để lựa chọn một vòng cổ phù hợp cho bé của mình nhé.</p><h3><strong>5.Vòng tay</strong></h3><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phu-kien-8.jpg\" alt=\"\" srcset=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phu-kien-8.jpg 730w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phu-kien-8-300x222.jpg 300w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phu-kien-8-600x445.jpg 600w\" sizes=\"100vw\" width=\"600\"></figure><p style=\"text-align:center;\"><br><i>Vòng đeo tay sẽ giúp bé trở nên thu hút hơn</i></p><p>✥Vòng tay không thể không nhắc đến trong bài viết của ngày hôm nay, vì những chiếc vòng tay luôn là sự lựa chọn hàng đầu bởi tính đa dạng và lại phù hợp với mọi hoàn cảnh.</p><h4><strong>Với những chiếc </strong><a href=\"https://thegioithoitrangbaby.vn/danh-muc/dam-be-gai/\"><strong>đầm bé gái</strong></a><strong> có tông màu lạnh và đơn điệu</strong></h4><p>✥ Nếu bạn chọn cho bé một chiếc đầm đơn giản và màu sắc không mấy nổi bật mà bạn lại muốn chiếc váy được nổi bật hơn thì những chiếc vòng tay có màu sắc tương phản với màu váy, thiết kế cầu kì và rực rỡ sẽ giúp con của bạn trông nổi bật và thời trang hơn.</p>', NULL, 'https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/cach-ket-hop-phu-kien-2-1024x576.jpg', NULL, 'active', NULL, NULL, '5-cach-phoi-phu-kien-cung-dam-maxi-cho-be-gai', 1, 1, 0, NULL, NULL, '0', '0', 0, '2023-05-11 16:12:46', NULL, NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, 2, 2, '2023-05-11 09:12:46', '2023-05-11 09:12:57', NULL),
(698, 70, 'post', 'Top 3 Đầm Phụ Dâu Bé Gái Đẹp Ngất Ngay Trong Ngày Cưới', 'Bạn đang tìm một bộ trang phục cho cô bé phụ dâu của mình? Bạn đang băn khoăn không biết phải lựa chọn trang phục như thế nào? Chọn những chiếc đầm như thế nào vừa phù hợp vừa thời trang?', '<p>Lựa chọn đầm phụ dâu cho bé gái phải cần cân nhắc rất nhiều yếu tố để làm sao cho bé gái của bạn thật xinh xắn và đáng yêu. Nhưng bên cạnh đó cũng phải cho bé gái cảm thấy thật thoải mái và dễ chịu để các bé có thể, thể hiện được vai trò phù dâu của mình trong ngày cưới. Sau đây là&nbsp;Top 3 <a href=\"https://thegioithoitrangbaby.vn/top-3-dam-phu-dau-be-gai-dep-ngat-ngay-trong-ngay-cuoi/\"><span style=\"color:rgb(0,51,102);\"><strong>Đầm Phụ Dâu Bé Gái</strong></span></a> Đẹp Nhất mà các mẹ cần tham khảo để lựa chọn trang phục phù hợp cho bé gái của mình.</p><h3><strong>1 Đầm Bé Gái Thời Trang DA37</strong></h3><p>✥ Đây là chiếc đầm vô cùng phù hợp với mọi hoàn cảnh tuy nhiên còn rất phù hợp để làm phụ dâu trong nữa đấy.</p><p>✥ Có thể nói <a href=\"https://thegioithoitrangbaby.vn/danh-muc/dam-be-gai/\"><span style=\"color:rgb(0,51,102);\"><strong>Đầm Bé Gái</strong></span></a> Thời Trang DA37 là một tuyệt tác vô cùng hoàn hảo cả về kiểu dáng và chất lượng. Là một ứng viên xứng đáng cho vị trí top 3 đầm phụ dâu bé gái đẹp nhất.</p><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2018/09/dam-be-gai-thoi-trang-da37-e.jpg\" alt=\"\" srcset=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2018/09/dam-be-gai-thoi-trang-da37-e.jpg 700w, https://thegioithoitrangbaby.vn/wp-content/uploads/2018/09/dam-be-gai-thoi-trang-da37-e-247x300.jpg 247w, https://thegioithoitrangbaby.vn/wp-content/uploads/2018/09/dam-be-gai-thoi-trang-da37-e-600x729.jpg 600w\" sizes=\"100vw\" width=\"412\"></figure><p style=\"text-align:center;\"><br><i>Đầm Bé Gái Thời Trang DA37</i></p><h4><strong>Điểm nổi bật ở chất liệu Đầm Bé Gái Thời Trang DA37</strong></h4><p>✥Đầm Bé Gái Thời Trang DA37 được làm từ chất liệu ren, một chất liệu đại diện cho sự sang trọng và quý phái.</p><p>✥Với chất liệu ren này bé của bạn sẽ trở nên vô cùng dịu dàng và thướt tha lại còn rất duyên dáng với vai trò phụ dâu trong ngày cưới.</p><p>✥Bên cạnh đó chiếc đầm còn được phủ lớp vải cotton bên bên trong đây là loại vô cùng thoáng mát và thấm hút mồ cực tốt giúp bé tự tin thể tốt vai trò của mình.</p><p>✥Các đường chỉ may của Đầm Bé Gái Thời Trang DA37 rất chắc chắn nên việc chiếc váy đột nhiên bị bung chỉ, &nbsp;là điều các mẹ không cần phải lo lắng.<br>Cách thiết kế tao nhã nhưng đầy lôi cuốn.</p><h4><strong>Đầm Bé Gái Thời Trang DA37 là một thiết kế đơn giản nhưng lôi cuốn</strong></h4><h4><strong>✥ Tuy đây là một thiết kế đơn giản nhưng lại khiến cho người khác phải nhìn đi nhìn lại nhiều lần.</strong></h4><p>✥Màu trắng xám của chiếc đầm thể hiện sự tinh khôi và thuần khiết, khi khoát lên người bé của bạn sẽ mang một vẻ đẹp vô cùng trong sáng và tinh anh.</p><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2018/09/dam-be-gai-thoi-trang-da37-f.jpg\" alt=\"\" srcset=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2018/09/dam-be-gai-thoi-trang-da37-f.jpg 800w, https://thegioithoitrangbaby.vn/wp-content/uploads/2018/09/dam-be-gai-thoi-trang-da37-f-150x150.jpg 150w, https://thegioithoitrangbaby.vn/wp-content/uploads/2018/09/dam-be-gai-thoi-trang-da37-f-300x300.jpg 300w, https://thegioithoitrangbaby.vn/wp-content/uploads/2018/09/dam-be-gai-thoi-trang-da37-f-768x768.jpg 768w, https://thegioithoitrangbaby.vn/wp-content/uploads/2018/09/dam-be-gai-thoi-trang-da37-f-600x600.jpg 600w, https://thegioithoitrangbaby.vn/wp-content/uploads/2018/09/dam-be-gai-thoi-trang-da37-f-100x100.jpg 100w\" sizes=\"100vw\" width=\"500\"></figure><p style=\"text-align:center;\"><br><i>Đầm Bé Gái Thời Trang DA37</i></p><p>✥Với những chi tiết hình hoa được thêu nổi trên chiếc đầm đã làm cho chiếc đầm càng trở nên lộng lẫy nhưng lại không quá cầu kì.</p><p>✥ Bên cạnh đó Đầm Bé Gái Thời Trang DA37 còn được nhấn eo một cách kĩ lưỡng tạo độ phồng cho chiếc váy, khi bé của bạn di chuyển sẽ tạo cảm giác rất thước tha và uyển chuyển.</p><p>✥Những điều tinh tế đó sẽ giúp cho bé gái của bạn trở thành một nàng thơ thật sự khi khoác lên mình chiếc Đầm Bé Gái Thời Trang DA37. Vậy thì tại sao các mẹ lại không lựa chọn chiếc đầm này cho bé gái của mình nhỉ!</p><h3><strong>2.Đầm Hoa Dây Bé Gái DA101</strong></h3><p>✥Đây là một chiếc đầm không thể không nhắc đến trong top 3 đầm phụ dâu bé gái đẹp nhất của ngày hôm nay.</p><p>✥Không nhất thiết trang phục phụ dâu phải là màu trắng, chúng ta có thể chọn những màu khác miễn là phù hợp với buổi tiệc.</p><p>✥ Với Đầm Hoa Dây Bé Gái DA101 màu hồng này ắc hẳn đây &nbsp;là một lựa chọn thú vị giúp cho bé gái thật sự tỏa sáng với vai trò là phụ dâu đấy.</p><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-hoa-day-be-gai-DA101-4.jpg\" alt=\"\" srcset=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-hoa-day-be-gai-DA101-4.jpg 800w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-hoa-day-be-gai-DA101-4-150x150.jpg 150w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-hoa-day-be-gai-DA101-4-300x300.jpg 300w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-hoa-day-be-gai-DA101-4-768x768.jpg 768w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-hoa-day-be-gai-DA101-4-600x600.jpg 600w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-hoa-day-be-gai-DA101-4-100x100.jpg 100w\" sizes=\"100vw\" width=\"500\"></figure><p style=\"text-align:center;\"><br><i>Đầm Hoa Dây Bé Gái DA101</i></p><h4><strong>Điểm thú vị của chiếc</strong></h4><p>✥Chất vải Đầm Hoa Dây Bé Gái DA101 được sử chất liệu mỏng nhẹ đảm bảo thoáng mát, mềm mại và tuyệt đối an toàn cho làn da nhạy cảm của bé.</p><p>✥ Chất liệu ren cũng là chất liệu được lựa chọn nhiều nhất bởi sự quý phái và sang trọng mà nó mang lại.</p><p>✥ phần thân váy được tinh tế xếp ly nhiều nếp bắt từ eo kéo dài đến hết chân váy tạo nên một tầng vải xếp lớp lớp chồng nhau có bồng bềnh, nhẹ nhàng.</p><p>✥ Để tạo sự thông thoáng tuyệt đối cho bé của bạn, chiếc đầm Đầm Hoa Dây Bé Gái DA101 chọn thiết kế cổ tròn và tay sát nách giúp bé luôn có thể dễ dàng thể hiện tốt vai trò là phụ dâu của mình.</p><h4><strong>Vẻ đẹp đến từ các chi tiết</strong></h4><p>✥ Điểm nhấn và cũng là yếu tố đặc biệt nhất của chiếc đầm này chính là những chi tiết hoa rơi thoắt ẩn thoắt hiện được đặc lồng ghép giữa các lớp váy, tạo nên cảm giác vô cùng huyền ảo.</p><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-hoa-day-be-gai-DA101-5.jpg\" alt=\"\" srcset=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-hoa-day-be-gai-DA101-5.jpg 800w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-hoa-day-be-gai-DA101-5-150x150.jpg 150w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-hoa-day-be-gai-DA101-5-300x300.jpg 300w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-hoa-day-be-gai-DA101-5-768x768.jpg 768w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-hoa-day-be-gai-DA101-5-600x600.jpg 600w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-hoa-day-be-gai-DA101-5-100x100.jpg 100w\" sizes=\"100vw\" width=\"500\"></figure><p style=\"text-align:center;\"><i>Đầm Hoa Dây Bé Gái DA101</i></p><p>✥Các chi tiết hoa vô cùng phù hợp với ngày cưới bởi nó là đại diện cho sự hạnh phúc và bình an.</p><p>✥ Thử tưởng với thông điệp và chiếc đầm này mang lại thì cô dâu,chú rể nào mà không thích chứ, bé của bạn sẽ rất được chú ý cho mà xem.</p><p>✥ Chi tiết ruy băng được gắn sau eo của Đầm Hoa Dây Bé Gái DA101, vừa tạo điểm nhấn cho mặt sau, vừa giúp các mẹ có thể co dãn váy sao cho vừa vặn với bé nhất.</p><p>✥ Đây chắc chắn sẽ là gợi ý vô cùng tốt dành cho các bé và xứng đáng là Top 3 Đầm Phụ Dâu Bé Gái Đẹp Nhất đúng không nào!</p><h3><strong>3.Đầm Dạ Tiệc Sang Trọng DA69</strong></h3><p>✥Đầm Dạ Tiệc Sang Trọng DA69- nghe tên có vẻ như chiếc đầm này chỉ thích hợp cho những buổi tiệc. Không phải thế mà đây sẽ lựa chọn hoàn hảo nhất cho buổi tiệc cưới với vai trò là phụ dâu đấy.</p><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/01/dam-da-hoi-be-gai-da69.jpg\" alt=\"\" srcset=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/01/dam-da-hoi-be-gai-da69.jpg 1052w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/01/dam-da-hoi-be-gai-da69-150x150.jpg 150w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/01/dam-da-hoi-be-gai-da69-300x300.jpg 300w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/01/dam-da-hoi-be-gai-da69-768x768.jpg 768w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/01/dam-da-hoi-be-gai-da69-1024x1024.jpg 1024w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/01/dam-da-hoi-be-gai-da69-600x600.jpg 600w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/01/dam-da-hoi-be-gai-da69-100x100.jpg 100w\" sizes=\"100vw\" width=\"500\"></figure><p style=\"text-align:center;\"><br><i>Đầm Dạ Tiệc Sang Trọng DA69</i></p><h4><strong>Điểm thú vị từ chất liệu</strong></h4><p>Chiếc váy có tông màu trắng được Lấy ý tưởng thiết kế từ váy công chúa và pha lẫn chút sự thơ ngây và trong sáng như một thiên thần.</p><p>Vì thế mà khi mặc lên người chiếc đầm này bé của bạn sẽ trông rất nổi bật giữa buổi lễ bởi vẻ đẹp thuần khiết mà nó mang lại.</p><p>Đầm Dạ Tiệc Sang Trọng DA69- được làm từ vải ren một chất liệu thoáng mát vô cùng phù hợp với thời tiết nóng ẩm của nước ta.Với chất liệu này thì bé sẽ vô cùng thoải mái và dễ dịu trong các buổi tiệc cưới ngoài trời hay trong cả trong nhà.</p><h4><strong>Vẻ đẹp đến từ cách thiết kế</strong></h4><p>✥ Đầm Dạ Tiệc Sang Trọng DA69 còn được cổ tròn cùng tay sát nách tạo cho bé một hình ảnh vô cùng sang trọng và quý phái.Bên cạnh đó còn vô cùng thoải mái, dễ chịu, không bị gò bó, bé có thể tự tin làm tốt trách nhiệm của mình.</p><p style=\"text-align:center;\">&nbsp;</p><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/01/dam-da-hoi-be-gai-da69-e.jpg\" alt=\"\" srcset=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/01/dam-da-hoi-be-gai-da69-e.jpg 1000w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/01/dam-da-hoi-be-gai-da69-e-150x150.jpg 150w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/01/dam-da-hoi-be-gai-da69-e-300x300.jpg 300w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/01/dam-da-hoi-be-gai-da69-e-768x768.jpg 768w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/01/dam-da-hoi-be-gai-da69-e-600x600.jpg 600w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/01/dam-da-hoi-be-gai-da69-e-100x100.jpg 100w\" sizes=\"100vw\" width=\"500\"></figure><p style=\"text-align:center;\"><br><i>Đầm Dạ Tiệc Sang Trọng DA69</i></p><p>✥ Điểm nhấn quan trọng là phần chiết eo được điểm phối bằng ruy băng bản to kết nổi bật sẽ càng làm tăng thêm phần đáng yêu cho cô công chúa nhỏ của bạn.</p><p>✥Đặc biệt nhất là phần eo được tô điểm thêm họa tiết hoa nổi bật làm điểm nhấn cho cả chiếc đầm giúp bé của bạn càng trở nên xinh đẹp như một nàng công chúa trong truyện cổ tích.</p><p>✥Tất cả những điều trên đã tạo nên một tuyệt tác vô cùng hoàn hảo. Thế mới nói Đầm Dạ Tiệc Sang Trọng DA69 là một lựa chọn vô cùng phù hợp cho bé gái của bạn trong buổi tiệc cưới với vai trò là phụ dâu.</p>', NULL, 'https://thegioithoitrangbaby.vn/wp-content/uploads/2019/01/dam-da-hoi-be-gai-da69.jpg', NULL, 'active', NULL, NULL, 'top-3-dam-phu-dau-be-gai-dep-ngat-ngay-trong-ngay-cuoi', 1, 1, 0, NULL, NULL, '1', '0', 0, '2023-05-11 16:13:37', NULL, NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, 2, 2, '2023-05-11 09:13:37', '2023-05-12 01:42:31', NULL),
(699, 70, 'post', 'Top 3 Mẫu Đầm Voan Cho Bé Gái Đẹp Nhất', 'Những chiếc đầm luôn đóng vai trò rất quan trọng trong việc tôn lên vẻ đẹp của các bé . Các mẫu đầm được làm từ các chất liệu khác nhau, như lụa, cotton, đũi,..,', '<h3><strong>1.Đầm Nơ Eo Phối Voan DA104</strong></h3><p><span style=\"color:rgb(255,0,255);\">✥</span> Đầm Nơ Eo Phối Voan DA104 là mẫu đầm voan cho bé gái vô cùng xinh xắn mà <a href=\"https://thegioithoitrangbaby.vn/\"><span style=\"color:rgb(0,51,102);\"><strong>Thế Giới Thời Trang Baby</strong></span></a> muốn gửi tới các gia đình.</p><p><span style=\"color:rgb(255,0,255);\">✥</span> Chắc chắn chiếc đầm Đầm Nơ Eo Phối Voan DA104 &nbsp;sẽ là là một gợi ý vô cùng phù hợp dành cho các bé gái của bạn đây</p><figure class=\"image image-style-align-center\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-no-eo-phoi-voan-DA104-1.jpg\" alt=\"\" srcset=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-no-eo-phoi-voan-DA104-1.jpg 750w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-no-eo-phoi-voan-DA104-1-150x150.jpg 150w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-no-eo-phoi-voan-DA104-1-300x300.jpg 300w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-no-eo-phoi-voan-DA104-1-600x600.jpg 600w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-no-eo-phoi-voan-DA104-1-100x100.jpg 100w\" sizes=\"100vw\" width=\"500\"></figure><p style=\"text-align:center;\"><br><i>Đầm Nơ Eo Phối Voan DA104</i></p><p><span style=\"color:rgb(255,0,255);\">✥</span> Đầm Nơ Eo Phối Voan DA104-là một thiết kế hài hòa và đầy tinh tế giữa chất lượng và kiểu dáng.</p><p><span style=\"color:rgb(255,0,255);\">✥</span> Bên cạnh đó chiếc đầm có rất nhiều size, phù hợp với mỗi lứa tuổi để cho các mẹ tha hồ mà lựa chọn kích cỡ phù hợp cho con em của mình.</p><p><span style=\"color:rgb(255,0,255);\">✥</span> &nbsp;Với chất liệu vải voan thích hợp cho thời tiết nóng ẩm của nước ta. Giúp các bé sẽ không bị đổ quá nhiều mồ hôi khi tham gia các hoạt động ngoài trời.</p><p><span style=\"color:rgb(255,0,255);\">✥</span> &nbsp;Đầm Nơ Eo Phối Voan DA104-có màu sắc trắng và họa tiết hình hoa làm chủ đạo phù hợp với mọi màu da của các bé.</p><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-no-eo-phoi-voan-DA104-4.jpg\" alt=\"\" srcset=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-no-eo-phoi-voan-DA104-4.jpg 750w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-no-eo-phoi-voan-DA104-4-150x150.jpg 150w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-no-eo-phoi-voan-DA104-4-300x300.jpg 300w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-no-eo-phoi-voan-DA104-4-600x600.jpg 600w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-no-eo-phoi-voan-DA104-4-100x100.jpg 100w\" sizes=\"100vw\" width=\"500\"></figure><p style=\"text-align:center;\"><br><i>Đầm Nơ Eo Phối Voan DA104</i></p><p><span style=\"color:rgb(255,0,255);\">✥</span> Trên chiếc đầm còn tô điểm thêm chiếc nơ xanh đen xinh xắn làm điểm nhấn cho chiếc đầm giúp bé có một phong cách thời trang, thời thượng hơn.</p><p><span style=\"color:rgb(255,0,255);\">✥</span>&nbsp;Thêm chân váy được thiết kế xếp ly thêm viền xanh bên dưới tạo cảm giác bồng bềnh và sang trọng. Bé của bạn sẽ đáng yêu và xinh xắn vô cùng. Vậy nên&nbsp;Đầm Nơ Eo Phối Voan DA104 rất xứng đáng nằm trong vị trí top 3 mẫu đầm voan đẹp nhất cho bé gái.</p><h3><strong>2.Váy Voan Mỏng Thêu Dứa Nổi DA96</strong></h3><p><span style=\"color:rgb(255,0,255);\">✥</span> Váy Voan Mỏng Thêu Dứa Nổi DA96 sản phẩm được thiết kế cự kỳ thu hút, tông màu sang trọng, chất voan mềm mịn.</p><p><span style=\"color:rgb(255,0,255);\">✥</span>&nbsp;Đây là một sản phẩm mà các bà mẹ sẽ rất thích phú và vô cùng phù hợp cho các bé gái của bạn đấy.</p><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/vay-voan-mong-theu-dua-noi-DA96.jpg\" alt=\"\" srcset=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/vay-voan-mong-theu-dua-noi-DA96.jpg 600w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/vay-voan-mong-theu-dua-noi-DA96-150x150.jpg 150w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/vay-voan-mong-theu-dua-noi-DA96-300x300.jpg 300w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/vay-voan-mong-theu-dua-noi-DA96-100x100.jpg 100w\" sizes=\"100vw\" width=\"500\"></figure><p style=\"text-align:center;\"><br><i>Sản phẩm Váy Voan Mỏng Thêu Dứa Nổi DA96</i></p><h4><strong>Điểm đặc biệt của chiếc áo là gì?</strong></h4><p><span style=\"color:rgb(255,0,0);\">♦</span> Váy Voan Mỏng Thêu Dứa Nổi DA96 có chất liệu voan mỏng, thoáng mát, thấm mồ hôi cực kì tốt, giúp các bé thoải mái vui chơi, hay đi tham dự những buổi tiệc tùng mà không có cảm giác khó chịu.</p><p><span style=\"color:rgb(255,0,0);\">♦</span> Màu hồng &nbsp;phấn nhẹ nhàng của chiếc là màu mà đa số các bé gái đều yêu thích, vì thế bé gái của bạn sẽ rất hạnh phúc khi được mẹ tặng cho chiếc đầm này cho mà xem.</p><p><span style=\"color:rgb(255,0,0);\">♦</span> Bên cạnh đó màu hồng còn làm nổi bật lên tông da của bé giúp bé trở nên tỏa sáng hơn khi mặc chiếc váy này.</p><p><span style=\"color:rgb(255,0,0);\">♦</span> Váy Voan Mỏng Thêu Dứa Nổi DA96 còn có những họa tiết dễ thương cùng với những cái nơ được tính trên áo một cách tinh tế &nbsp;giúp các bé trông thật thời trang và năng động.</p><p><span style=\"color:rgb(255,0,0);\">♦</span> Điểm cộng của chiếc váy là tôn lên sự dịu dàng của các đem đến sự hài lòng cho các bà mẹ, và là sự lựa chọn đáng tin cậy dành cho các gia đình.</p><p><span style=\"color:rgb(255,0,0);\">♦</span> Sự giản dị của Váy Voan Mỏng Thêu Dứa Nổi DA96 đã mang đến sự nhã nhặn không cầu kỳ rất thích hợp đi chơi, du lịch ngay cả các bữa tiệc.</p><h3><strong>3.Đầm Bé Gái Tay Cải Kẻ Phối Voan DA105</strong></h3><p><span style=\"color:rgb(255,0,255);\">✥</span> Đầm Bé Gái Tay Cải Kẻ Phối Voan DA105 là sản phẩm và Thế Giới Thời Trang Baby muốn gửi đến các mẹ yêu.</p><p><span style=\"color:rgb(255,0,255);\">✥</span> Đầm Bé Gái Tay Cải Kẻ Phối Voan DA105 là sản phẩm vừa hợp thời trang, vừa hợp túi tiền mà chất lượng lại vô cùng tuyệt&nbsp;vời.</p><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-be-gai-tay-cai-ke-phoi-voan-DA105-1.jpg\" alt=\"\" srcset=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-be-gai-tay-cai-ke-phoi-voan-DA105-1.jpg 1280w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-be-gai-tay-cai-ke-phoi-voan-DA105-1-150x150.jpg 150w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-be-gai-tay-cai-ke-phoi-voan-DA105-1-300x300.jpg 300w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-be-gai-tay-cai-ke-phoi-voan-DA105-1-768x768.jpg 768w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-be-gai-tay-cai-ke-phoi-voan-DA105-1-1024x1024.jpg 1024w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-be-gai-tay-cai-ke-phoi-voan-DA105-1-600x600.jpg 600w, https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/dam-be-gai-tay-cai-ke-phoi-voan-DA105-1-100x100.jpg 100w\" sizes=\"100vw\" width=\"500\"></figure><p style=\"text-align:center;\"><br><a href=\"https://thegioithoitrangbaby.vn/danh-muc/dam-be-gai/\"><span style=\"color:rgb(0,51,102);\"><i><strong>Đầm Bé Gái</strong></i></span></a><i> Tay Cải Kẻ Phối Voan DA105</i></p><p><span style=\"color:rgb(255,0,255);\">✥</span> Với thiết kế đơn giản, nhẹ nhàng cùng chất liệu voan mịn màng ở chân váy đảm bảo sẽ mang đến cho các bé nhà bạn một tinh thần thoải mái, mát mẻ trong những chuyến du lịch hè nóng bức.</p><p><span style=\"color:rgb(255,0,255);\">✥</span> Phần trên thân áo được thiết kế vô cùng đơn giản nhưng không kém phần năng động, đáng yêu cho các bé gái.</p>', NULL, 'https://thegioithoitrangbaby.vn/wp-content/uploads/2019/04/vay-voan-mong-theu-dua-noi-DA96.jpg', NULL, 'active', NULL, NULL, 'top-3-mau-dam-voan-cho-be-gai-dep-nhat', 1, 1, 0, NULL, NULL, '20', '0', 0, '2023-05-11 16:39:14', NULL, NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, 2, 2, '2023-05-11 09:39:14', '2023-06-03 04:29:37', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_cms_taxonomys`
--

CREATE TABLE `tb_cms_taxonomys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_part` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_featured` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `hienthi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `news_position` int(4) DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `number_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_cms_taxonomys`
--

INSERT INTO `tb_cms_taxonomys` (`id`, `taxonomy`, `parent_id`, `title`, `url_part`, `brief`, `content`, `json_params`, `is_featured`, `iorder`, `hienthi`, `status`, `news_position`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `number_view`) VALUES
(70, 'tin-tuc', NULL, 'Tin tức', 'tin-tuc', NULL, NULL, '{\"image\":null,\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '0', NULL, ';;', 'delete', NULL, 2, 2, '2023-04-28 07:03:49', '2023-11-20 09:59:12', NULL),
(102, 'san-pham', NULL, 'Khuyến Mãi Tháng 5', 'khuyen-mai-thang-5', NULL, NULL, '{\"image\":\"\\/public\\/upload\\/admin\\/quan-ao-be-trai-dep.jpg\",\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '0', 1, ';;', 'delete', 0, 2, 2, '2023-05-10 02:21:28', '2023-11-20 09:59:21', NULL),
(103, 'san-pham', NULL, 'Quần Áo Bé Trai', 'quan-ao-be-trai', NULL, '<h2 style=\"text-align:center;\"><span style=\"color:rgb(40,40,40);\"><strong>Hút Mắt Thời Trang Bé Trai | Quần Áo Bé Trai | Đồ Bé Trai Đẹp Rạng Ngời</strong></span></h2><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2018/11/quan-ao-be-trai-sanh-dieu-dep-thegioithoitrangbabyvn.png\" alt=\"\"></figure><p><span style=\"color:rgb(40,40,40);\">Đứa bé trai chào đời, niềm vui của cha mẹ , niềm hân hoan của cả dòng họ…..rằng rồi đây sẽ có người nối dõi…..một niềm tin, niềm vui sướng nhen nhóm từ thuở ấy. Rồi những năm tháng sơ sinh, quấy khóc, nuôi con khổ cực từ thuở lọt lòng cho tới lúc lớn. Rồi cũng đến những ngày Tết, ngày giỗ, ba mẹ lại phải lo chuyện ăn mặc, quần áo cho bé trai của mình. Mặc sao cho đẹp, cho trở nên sành điệu.</span></p><h3><strong>Tại sao nên lựa chọn quần áo bé trai sành điệu tại Thế Giới Thời Trang Baby?</strong></h3><p><span style=\"color:rgb(0,132,167);\">✫</span><span style=\"color:rgb(40,40,40);\"> Và không đâu hết, cửa hàng Thế Giới Thời Trang Baby chúng tôi ngoài quần áo bé trai nói chung còn bán rất nhiều loại </span><a href=\"https://thegioithoitrangbaby.vn/danh-muc/quan-ao-be-trai/\"><span style=\"color:rgb(0,51,102);\"><strong>quần áo bé trai sành điệu</strong></span></a><span style=\"color:rgb(40,40,40);\"> khác. Với những bộ cánh ấy, con bạn sẽ được biến hóa…..Không còn là cậu bé lấm lem, hôi sữa, nước mắt nước mũi lòng thòng nữa….mà sẽ là một cậu bé tươm tất, thơm tho, sáng sủa….mà đến bạn cũng không nhận ra…..</span></p><p><span style=\"color:rgb(0,132,167);\">✫</span><span style=\"color:rgb(40,40,40);\"> Chỉ cần đến với cửa hàng thời trang bé trai sành điệu của chúng tôi. Nhưng nếu bạn thiên về kiểu người truyền thống, thích đằm thắm, nhẹ nhàng,….không màu mè, mà vẫn đẹp….Chúng tôi cũng không ngại.</span></p>', '{\"image\":\"\\/public\\/upload\\/admin\\/quan-ao-be-trai-dep.jpg\",\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 'active', 2, ';;', 'delete', 1, 2, 2, '2023-05-10 02:22:14', '2023-11-21 03:32:14', NULL),
(104, 'san-pham', NULL, 'Quần Áo Bé Gái', 'quan-ao-be-gai', NULL, '<h2 style=\"text-align:center;\"><span style=\"color:rgb(0,0,0);\"><strong>1000+ Mẫu Thời Trang Bé Gái | Quần Áo Bé Gái | Đồ Cho Bé Gái Đẹp Giá Rẻ</strong></span></h2><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2018/11/quan-ao-be-gai-de-thuong-thegioithoitrangbabyvn.jpg\" alt=\"\"></figure><p><span style=\"color:rgb(0,0,0);\">Năm cũ sắp qua, năm mới lại về…và còn Tết nữa chứ…Cuộc sống tuy bộn bề, mệt mỏi và áp lực, xin các mẹ đừng quên khoảng thời gian cuối năm này nhé. Chẳng lẽ cứ để con gái yêu của mình lấm lem mãi sao. Ngắm nhìn con tỏa sáng trong bộ </span><a href=\"https://thegioithoitrangbaby.vn/danh-muc/quan-ao-be-gai/\"><span style=\"color:rgb(0,51,102);\"><strong>quần áo bé gái</strong></span></a><span style=\"color:rgb(0,0,0);\"> đẹp mình chọn, vui chơi cùng bạn bè cũng là một niềm hạnh phúc của cha mẹ đấy. Những tia nắng sớm mai kia cũng không thể làm bé yêu của bạn tỏa sáng được…</span></p><h3><span style=\"color:rgb(0,0,0);\"><strong>Làm sao để con yêu tỏa sáng với những bộ đồ quần áo bé gái dễ thương nhất?</strong></span></h3><p><span style=\"color:rgb(0,0,0);\">Bạn muốn tìm được những bộ đồ cho bé gái dễ thương của mình chứ ? Hãy đến với </span><a href=\"https://thegioithoitrangbaby.vn/\"><span style=\"color:rgb(0,51,102);\"><strong>Thế Giới Thời Trang Baby</strong></span></a><span style=\"color:rgb(0,0,0);\">. Với đầy đủ và ngập tràn nhiều loại quần áo cho bé gái, bạn sẽ như được sống lại thời thơ ấu của mình. Đừng để bé phải thiệt thòi nhé…Cửa hàng chúng tôi chuyên bán </span><a href=\"https://thegioithoitrangbaby.com/danh-muc/quan-ao-be-gai\"><span style=\"color:rgb(0,0,0);\"><strong>thời trang bé gái</strong></span></a><span style=\"color:rgb(0,0,0);\"> đẹp giá rẻ…Hàng ẩu, chúng tôi trả lại tiền. Với nguồn hàng cần quen biết, giá cả ở chỗ chúng tôi sẽ thoải mái hơn. Thích hợp nếu bạn là người thường cân nhắc trong chi tiêu, hay vừa trải qua một năm làm ăn không tốt lắm.</span></p><p><span style=\"color:rgb(0,0,0);\">Chúng tôi vẫn có những bộ quần áo cho bé gái giá rẻ nhưng không hề sứt mẻ. Đặc biệt hơn, cửa hàng chúng tôi cũng thường xuyên có những sự kiện khuyến mãi, giảm giá cho các mẹ đấy. Nhanh tay, không lại bay mất. Con chần chờ gì mà không đến ngay với Thế Giới Thời Trang Baby của chúng tôi ngay !!!</span></p>', '{\"image\":\"\\/public\\/upload\\/admin\\/quan-ao-be-gai-dep.jpg\",\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 'deactive', 3, ';;', 'delete', 1, 2, 2, '2023-05-10 02:23:11', '2023-11-21 03:31:51', NULL),
(105, 'san-pham', NULL, 'Quần Áo Sơ Sinh', 'quan-ao-so-sinh', NULL, '<h2 style=\"text-align:center;\"><strong>Đồ Sơ Sinh Cho Bé Trọn Gói | Quần Áo Trẻ Sơ Sinh Cao Cấp Đẹp &amp; Giá Rẻ</strong></h2><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2018/11/do-so-sinh-quan-ao-tre-so-sinh.jpg\" alt=\"\"></figure><p><span style=\"color:rgb(0,0,0);\">Em bé chào đời, biết bao vấn đề phát sinh. Những tháng đầu, bé đái ị suốt ngày, tùy vào điều kiện về kinh tế, thời gian và phương pháp mà mỗi mẹ chọn cho mình từng loại tã cho con của mình. Mà khi các mẹ đã mệt mọi với việc thay tã, giặt bỉm cho bé suốt ngày. Lại còn việc mặc </span><a href=\"https://thegioithoitrangbaby.vn/danh-muc/quan-ao-so-sinh/\"><span style=\"color:rgb(0,51,102);\"><strong>quần áo trẻ sơ sinh</strong></span></a><span style=\"color:rgb(0,0,0);\"> đẹp cho con của mình nữa thì lại làm cho các mẹ đau đầu…hãy đến với thế giới thời trang của chúng tôi.</span></p><h3><span style=\"color:rgb(0,0,0);\"><strong>Để mẹ không còn phải bận tâm cho quần áo sơ sinh với đứa con đầu lòng của mình nữa…</strong></span></h3><p><span style=\"color:rgb(0,0,0);\">Quần áo sơ sinh (hay đồ sơ sinh cho bé) ở Thế Giới Thời Trang Baby làm từ những loại vải cotton đã được lựa chọn kỹ từ các cánh đồng tạo cảm giác mềm mại, dễ chịu, không kích ứng với làn da non nớt của bé. Ở chúng tôi có rất nhiều quần áo trẻ sơ sinh đẹp giá rẻ với đủ loại từ những loại quần ngắn mặc chung với bỉm tới những bộ body chip hoặc body toàn thân với nhiều họa tiết đơn giản mà dễ thương thuận tiện cho mẹ mỗi khi muốn ẵm bé ra ngoài.</span></p><p><span style=\"color:rgb(0,0,0);\">Còn nếu các mẹ muốn mua cho bé những loại đồ sơ sinh cho bé trọn gói cao cấp, thì chúng tôi cũng vẫn có thể làm vừa lòng các mẹ, </span><a href=\"https://thegioithoitrangbaby.vn/\"><span style=\"color:rgb(0,51,102);\"><strong>Thế Giới Thời Trang Baby</strong></span></a><span style=\"color:rgb(0,0,0);\"> mà. Với những loại quần áo sơ sinh cao cấp, như là các loại quần áo trẻ em sơ sinh Hàn Quốc hay Nhật Bản. Hàng ngoại nhưng giá cả cũng phải chăng. Ngoài ra, bên chúng tôi còn có những bộ body dài, giữ ấm tốt cho bé vào những mùa lạnh cuối năm. Vì vậy, còn chờ gì nữa mà hãy liên hệ ngay với Thế Giới Thời Trang Baby của chúng tôi.</span></p>', '{\"image\":\"\\/public\\/upload\\/admin\\/quan-ao-so-sinh-570x420.jpg\",\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 'deactive', 4, ';;', 'delete', 1, 2, 2, '2023-05-10 02:24:09', '2023-11-21 03:31:28', NULL),
(106, 'san-pham', NULL, 'Phụ Kiện Cho Bé', 'phu-kien-cho-be', NULL, '<h2 style=\"text-align:center;\"><span style=\"color:rgb(0,0,0);\"><strong>Săn Tìm Các Mẫu Phụ Kiện Cho Bé Đẹp Nhật Hiện Nay</strong></span></h2><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2018/11/phu-kien-cho-be-thegioi-thoitrangbabyvn.jpg\" alt=\"\"></figure><p><span style=\"color:rgb(0,0,0);\">Xin chào các mẹ, khi bé con nhỏ hoặc chưa định hình được cái đẹp, phải ăn mặc như thế nào thì chính các mẹ chính là người tạo ra diện mạo bên ngoài cho bé yêu của mình. Một bộ quần áo đẹp tất nhiên sẽ giúp cho bé thêm đẹp. Nhưng nếu có thêm những món </span><a href=\"https://thegioithoitrangbaby.vn/danh-muc/phu-kien-cho-be/\"><span style=\"color:rgb(0,51,102);\"><strong>phụ kiện cho bé</strong></span></a><span style=\"color:rgb(0,0,0);\">, cục cưng của bạn sẽ trở nên nổi bật hơn với những điểm nhấn tuy nhỏ nhưng hiệu quả thật to.</span></p><h3><span style=\"color:rgb(0,0,0);\"><strong>Tìm đâu những món phụ kiện cho bé độc, đẹp tạo nên dấu ấn cho con yêu của bạn?</strong></span></h3><p><span style=\"color:rgb(0,0,0);\">Hãy đến ngay với Thế Giới Thời Trang Baby, các mẹ sẽ hài lòng. Với một Thế Giới phụ kiện bé trai lẫn bé gái, chúng tôi sẽ mang đến cho các mẹ nhiều sự lựa chọn nhất có thể. Từ những con thú nhồi bông như gấu Teddy, Hello Kitty, Nhím Hồng,….đến những bộ nơ, băng đô dành cho phụ kiện bé gái màu sắc cho các mẹ chọn để phối đồ cho con yêu của mình.</span></p><p><span style=\"color:rgb(0,0,0);\">Nếu bé yêu của các mẹ đang trong tuổi tập đi, hãy tham khảo những loại giày tập đi ngộ nghĩnh, sắc màu của chúng tôi. Với những đôi giày đáng yêu, bé của các mẹ sẽ hứng thú tập đi hơn đấy. Con chần chờ gì nữa, muốn bé tỏa sáng nổi bật, hãy ghé ngay </span><a href=\"https://thegioithoitrangbaby.vn/\"><span style=\"color:rgb(0,51,102);\"><strong>Thế Giới Thời Trang Baby</strong></span></a><span style=\"color:rgb(0,0,0);\"> của chúng tôi.</span></p>', '{\"image\":\"\\/public\\/upload\\/admin\\/quan-ao-be-gai-dep.jpg\",\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 'deactive', 5, ';;', 'delete', 1, 2, 2, '2023-05-10 02:25:22', '2023-11-21 03:31:21', NULL),
(107, 'san-pham', NULL, 'Hàng Mới Về', 'hang-moi-ve', NULL, '<h2 style=\"text-align:center;\"><span style=\"color:rgb(0,0,0);\"><strong>BST Quần Áo Trẻ Em Xuất Khẩu Cao Cấp Đẹp Giá Rẻ Nhất</strong></span></h2><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2018/11/quan-ao-tre-em-thegioithoitrangbabyvn.jpg\" alt=\"\"></figure><p><span style=\"color:rgb(0,0,0);\">Bé yêu của các mẹ đã bắt đầu lớn rồi. Những bộ quần áo bé mặc bấy lâu nay đã sờn cũ, úa màu, hay đã bị giãn…Các mẹ cần mua quần áo trẻ em mới cho bé nhưng những shop quần áo quen thuộc lại không có loại mà mẹ cần, hoặc đơn giản là bạn muốn thử tìm </span><a href=\"https://thegioithoitrangbaby.vn/danh-muc/quan-ao-tre-em-moi/\"><span style=\"color:rgb(0,51,102);\"><strong>quần áo trẻ em đẹp</strong></span></a><span style=\"color:rgb(0,0,0);\"> tại một cửa hàng mới. Vậy thì các mẹ đã đến đúng nơi rồi đấy.</span></p><h3><span style=\"color:rgb(0,0,0);\"><strong>Thế Giới Thời Trang Baby® – Hệ thống quần áo trẻ em chất nhất Sài Gòn</strong></span></h3><p><span style=\"color:rgb(0,0,0);\">Đến với cửa hàng chúng tôi, các mẹ sẽ được đắm mình trong Thế Giới quần áo trẻ em đẹp với đa dạng các loại, mẫu mã từ những món đồ bộ mặc ở nhà cho đến những mẫu áo dài cách tân, quân Jean rách gối cho các bé mỗi dịp dạo phố, đi lễ, ăn tiệc.</span></p><p><span style=\"color:rgb(0,0,0);\">Như đã giới thiệu bên trên, bên chúng tôi có từ những bộ quần áo trẻ em giá rẻ nhưng chất lượng không hề bị sứt mẻ nếu như các mẹ muốn tiết kiệm chút ít để mua tã sữa cho con….Đến những bộ quần áo trẻ em cao cấp, dành cho những buổi tiệc sang trọng, lễ cưới, hay những dịp hiếm có trong năm.</span></p><p><span style=\"color:rgb(0,0,0);\">Đặc biệt hơn, bên chúng tôi còn có hàng quần áo trẻ em xuất khẩu. Với chất lượng như mơ, trong khi giá thì mỏng như tờ, đáp ứng nhu cầu của các mẹ chuộng hàng vnxk. Vì vậy, hãy đến với cửa hàng </span><a href=\"https://thegioithoitrangbaby.vn/\"><span style=\"color:rgb(0,51,102);\"><strong>Thế Giới Thời Trang Baby</strong></span></a><span style=\"color:rgb(0,0,0);\"> của chúng tôi ngay hôm nay nhá !</span></p>', '{\"image\":\"\\/public\\/upload\\/admin\\/quan-ao-be-trai-dep.jpg\",\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '0', 6, ';;', 'delete', 0, 2, 2, '2023-05-10 02:26:09', '2023-11-21 03:31:15', NULL),
(108, 'san-pham', 103, 'Áo Sơ Mi Bé Trai', 'ao-so-mi-be-trai', NULL, '<h2 style=\"text-align:center;\"><span style=\"color:rgb(0,0,0);\"><strong>Sôi Sục Với Các Mẫu Áo Sơ Mi Bé Trai Xuất Khẩu Đẹp Mới Nhất</strong></span></h2><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2018/11/ao-so-mi-be-trai-xuat-khau-thegioithoitrangbabyvn.png\" alt=\"\"></figure><p><span style=\"color:rgb(0,0,0);\">Những dịp cuối tuần, đi chơi, lễ hay Tết, có bao giờ các mẹ nghĩ tới áo sơ mi cho bé trai yêu của mình không. Trải qua những thăng trầm của lịch sử, chiếc áo sơ mi giờ đây đã là biểu tượng của sự lịch sự…sang trọng…”Đi đám cưới mà mặc áo ba lỗ à” hay “Mày mặc áo thun mà đi phỏng vấn, nhà tuyển dụng nhìn thấy là rớt rồi”…Vì vậy, áo sơ mi thường là sự lựa chọn cho các quý ông trong mỗi dịp quan trọng. Nhưng đấy là khi họ đã lớn. Còn lúc họ còn nhỏ thì có </span><a href=\"https://thegioithoitrangbaby.vn/danh-muc/ao-so-mi-be-trai/\"><span style=\"color:rgb(0,51,102);\"><strong>áo sơ mi bé trai</strong></span></a><span style=\"color:rgb(0,0,0);\"> hay không ?</span></p><h3><span style=\"color:rgb(0,0,0);\"><strong>Làm sao để tìm được những chiếc áo sơ mi bé trai đẹp nhất TP. Hồ Chí Minh ?</strong></span></h3><p><span style=\"color:rgb(0,0,0);\">Đến với </span><a href=\"https://thegioithoitrangbaby.vn/\"><span style=\"color:rgb(0,51,102);\"><strong>Thế Giới Thời Trang Baby</strong></span></a><span style=\"color:rgb(0,0,0);\">, các mẹ sẽ tìm được những chiếc áo sơ mi phù hợp cho con trai yêu của mình trong các dịp lễ Tết, cưới hỏi. Chúng tôi cam kết hàng ở Thế Giới là những chiếc áo sơ mi bé trai xuất khẩu với chất lượng như hàng nhập. Áo sơ mi bé trai ngoài dùng để mặc còn có thể dùng làm phụ kiện áo khoác lúc phối đồ, rất sành điệu và đẹp đấy nhá. Còn nếu các mẹ muốn có một bộ vừa quần vừa áo sơ mi cho bé trai đẹp,…các mẹ đã chọn đúng chỗ rồi đấy.</span></p>', '{\"image\":\"\\/public\\/upload\\/admin\\/quan-ao-be-trai-dep.jpg\",\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '0', 1, ';;', 'delete', 1, 2, 2, '2023-05-10 02:26:44', '2023-11-21 03:32:14', NULL),
(109, 'san-pham', 103, 'Áo Thun Bé Trai', 'ao-thun-be-trai', NULL, '<h2 style=\"text-align:center;\"><strong>Áo Phông Bé | Áo Thun Bé Trai Xuất Khẩu Đẹp &amp; Giá Rẻ</strong></h2><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2018/11/ao-thun-be-trai-xuat-khai-dep-thegioithoitrangbabyvn.jpg\" alt=\"\"></figure><p><span style=\"color:rgb(0,0,0);\">Mùa mưa đã qua, để lại những đợt nắng đã nóng nay còn nóng hơn. Cộng với việc các bé trai hay chơi đùa, chạy nhảy làm bạn thấy mệt mỏi khi quần áo con trai yêu bạn mặc cứ hay hư, rách mỗi lần đi chơi về. Vì vậy, các mẹ nên chọn cho con yêu của mình các loại </span><a href=\"https://thegioithoitrangbaby.vn/danh-muc/ao-thun-be-trai/\"><span style=\"color:rgb(0,51,102);\"><strong>áo thun bé trai</strong></span></a><span style=\"color:rgb(0,0,0);\"> phù hợp nhất.</span></p><h3><span style=\"color:rgb(0,0,0);\"><strong>Biết tìm đâu những địa điểm mua áo thun bé trai đẹp nhất Sài Gòn ?</strong></span></h3><p><span style=\"color:rgb(0,0,0);\">Hãy đến ngay với Thế Giới Thời Trang Baby của chúng tôi. Với những chiếc áo thun bé trai xuất khẩu được may từ những sợi cotton bền và tốt nhất được chắt chiu kỹ trên cánh đồng.</span></p><p><span style=\"color:rgb(0,0,0);\">Theo cách nói của người Ấn Độ, bất cứ điều gì xảy ra thì đó là điều nên xảy ra. Lẽ ra những chiếc áo thun bé trai (áo phông bé trai) này đã được xuất khẩu nhưng vì một lí do tình cờ nào đó nên chúng có thể đến được tay của các mẹ đấy. Và tất nhiên vẫn là hàng xịn nhé. Xịn như vua nhưng giá không hề chua. Những chiếc áo thun bé trai giá rẻ của chúng tôi với khả năng hút ẩm tối đa sẵn sàng để thử thách qua những đợt vui chơi, chạy nhảy của các bé trai. Sẵn sàng để đối phó với những đợt nắng nóng sắp tới. Với độ co giãn tốt nhất, dù bé có mau lớn, những chiếc áo phông cho bé trai của chúng tôi cũng giúp bé mặc được lâu hơn.</span></p><p><span style=\"color:rgb(0,0,0);\">Còn nếu các mẹ hay bé muốn một cái áo để diện cho những ngay lễ, cuối tuần…ngày Tết thì chúng tôi cũng không ngần ngại. Với những chiếc áo thun bé trai đẹp với nhiều kích cỡ, nhiều nguồn hàng khác nhau từ VNXK tới hàng Quảng Châu, các mẹ sẽ ngập tràn trong </span><a href=\"https://thegioithoitrangbaby.vn/\"><span style=\"color:rgb(0,51,102);\"><strong>Thế Giới Thời Trang Baby</strong></span></a><span style=\"color:rgb(0,0,0);\"> của chúng tôi. Nào còn chờ gì nữa!</span></p>', '{\"image\":\"\\/public\\/upload\\/admin\\/quan-ao-be-trai-dep.jpg\",\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '0', 2, ';;', 'delete', 1, 2, 2, '2023-05-10 02:27:11', '2023-11-21 03:32:14', NULL),
(110, 'san-pham', 103, 'Áo Khoác Bé Trai', 'ao-khoac-be-trai', NULL, '<h2 style=\"text-align:center;\"><span style=\"color:rgb(0,0,0);\"><strong>Ngất Ngây Với 100+ Áo Khoác Bé Trai Xuất Khẩu (VNXK) Cực Đẹp</strong></span></h2><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2018/11/ao-khoac-be-trai-vnxk-dep-thegioithoitrangbabyvn.png\" alt=\"\"></figure><p><span style=\"color:rgb(0,0,0);\">Chiếc áo khoác phương đã theo chân người phương Tây cập bến nước Đại Việt vào thế kỉ 19. Đến nay, áo khoác đã trở thành một món đồ phổ biến hàng ngày của mọi người. Tùy vào thời tiết từng miền, mà chiếc áo khoác có độ dày mỏng khác nhau tùy vào mục đích che mưa hay che nắng. Ví như </span><a href=\"https://thegioithoitrangbaby.vn/danh-muc/ao-khoac-be-trai/\"><span style=\"color:rgb(0,51,102);\"><strong>áo khoác bé trai tphcm</strong></span></a><span style=\"color:rgb(0,0,0);\"> sẽ chủ yếu là chống gió, chống nắng nên thường được gọi là áo gió.</span></p><p><span style=\"color:rgb(0,0,0);\">Vào những dịp cuối năm, trời se lạnh, mà chiếc áo khoác của con bạn thì đã cũ. Vì vậy việc sắm một cái áo khoác cho bé trai của bạn là điều cần thiết bây giờ.</span></p><h3><span style=\"color:rgb(0,0,0);\"><strong>Làm thế nào để tìm mua được một chiếc áo khoác bé trai vừa tốt vừa đẹp tại TP. HCM ?</strong></span></h3><p><span style=\"color:rgb(0,0,0);\">Cửa hàng </span><a href=\"https://thegioithoitrangbaby.vn/\"><span style=\"color:rgb(0,51,102);\"><strong>Thế Giới Thời Trang Baby</strong></span></a><span style=\"color:rgb(0,0,0);\"> của chúng tôi sẽ giúp các mẹ có nhiều lựa chọn hơn. Chúng tôi có cả hàng áo khoác bé trai vnxk, hàng ngoại giá nội, nhưng số lượng có hạn thôi nhé. Chiếc áo khoác vào tay các nhà thiết kế ngoài công dụng giữ ấm, chống nắng nay đã trở nên góc cạnh, tinh tế, chi tiết hoa văn hơn. Bên những chiếc áo khoác bé trai xuất khẩu, chúng tôi còn mang đến những chiếc áo khoác bé trai đẹp, sành điệu các bé trai hóa quý ông trong các dịp lễ Tết. Hãy đến ngày với cửa hàng chúng tôi để được tận mắt ngắm nhìn thế giới áo khoác bé trai tốt nhất TP. HCM.</span></p>', '{\"image\":\"\\/public\\/upload\\/admin\\/quan-ao-be-trai-dep.jpg\",\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '0', 3, ';;', 'delete', 1, 2, 2, '2023-05-10 02:29:28', '2023-11-21 03:32:14', NULL),
(111, 'san-pham', 104, 'Áo Sơ Mi Bé Gái', 'ao-so-mi-be-gai', NULL, '<h2 style=\"text-align:center;\"><span style=\"color:rgb(0,0,0);\"><strong>Các Mẫu Áo Sơ Mi Cho Bé Gái Đẹp Làm Xao Xuyến Các Bà Mẹ</strong></span></h2><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2018/11/ao-so-mi-be-gai-dep-nhat-thegioithoitrangbabyvn.png\" alt=\"\"></figure><p><span style=\"color:rgb(0,0,0);\">Với các bé gái, tất nhiên là các mẹ sẽ thường cho các bé mặc váy, mặc đầm…Nhưng nếu một ngày thức dậy, các mẹ đã thấy chán ngán khi cứ phải lặp đi lặp lại hết váy rồi lại đến đầm, muốn đổi gió cho cho con gái yêu nhưng cũng thực chất là cho chính mình thì hãy tham khảo ngay danh mục </span><a href=\"https://thegioithoitrangbaby.vn/danh-muc/ao-so-mi-be-gai/\"><span style=\"color:rgb(0,51,102);\"><strong>áo sơ mi bé gái</strong></span></a><span style=\"color:rgb(0,0,0);\"> của chúng tôi.</span></p><h3><span style=\"color:rgb(0,0,0);\"><strong>Áo sơ mi bé gái đẹp cho con yêu của bạn, tại sao không ?</strong></span></h3><p><span style=\"color:rgb(0,0,0);\">Đâu phải chỉ có bé trai mặc áo sơ mi mới hợp. Chiếc áo sơ mi nam vốn cứng và dày vào tay các nhà thiết kế với chút biến hóa, rung chuyển đã khiến nó trở nên mỏng, mềm mại và uyển chuyển nữ tính hơn. Ngoài ra, với những tông màu sắc nhẹ cùng họa tiết trang trí phong phú càng giúp cho chiếc áo sơ mi cho bé gái thêm đẹp, dịu dàng hơn.</span></p><p><span style=\"color:rgb(0,0,0);\">Thế Giới áo sơ mi bé gái chúng tôi có rất nhiều kiểu dáng thiết kế từ kẻ sọc ca-rô, kiểu cà-vạt…tới hoa lá cành, thoải mái cho các mẹ lựa chọn. Như đoạn nhạc nào cũng cần có đoạn cao trào, như bức tranh nào cũng có trọng tâm, điểm nhấn. Các mẹ hãy cùng đến </span><a href=\"https://thegioithoitrangbaby.vn/\"><span style=\"color:rgb(0,51,102);\"><strong>Thế Giới Thời Trang Baby</strong></span></a><span style=\"color:rgb(0,0,0);\"> khám phá những chiếc áo sơ mi bé gái đẹp của chúng tôi để tạo điểm nhấn cho con gái yêu của mình nhé !</span></p>', '{\"image\":\"\\/public\\/upload\\/admin\\/quan-ao-be-gai-dep.jpg\",\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '0', 1, ';;', 'delete', 0, 2, 2, '2023-05-10 02:29:53', '2023-11-21 03:31:51', NULL),
(112, 'san-pham', 104, 'Áo Thun Bé Gái', 'ao-thun-be-gai', NULL, '<h2 style=\"text-align:center;\"><span style=\"color:rgb(0,0,0);\"><strong>Mỏi Mắt Ngắm Áo Phông Bé Gái | Áo Thun Bé Gái Xuất Khẩu&nbsp; Đẹp Mê Ly</strong></span></h2><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2018/11/ao-thun-be-gai-dep-thegioithoitrangbabyvn.png\" alt=\"\"></figure><p><span style=\"color:rgb(0,0,0);\">Nếu các mẹ đang cùng bé trải qua những ngày nắng oi bức nóng nực thì với chiếc váy hay những chiếc áo dày sẽ khiến cho con bạn mệt mỏi vì bị nóng bức. Vì thế, các mẹ hãy nghĩ ngay đến chiếc áo thun. Những chiếc </span><a href=\"https://thegioithoitrangbaby.vn/danh-muc/ao-thun-be-gai/\"><span style=\"color:rgb(0,51,102);\"><strong>áo thun bé gái</strong></span></a><span style=\"color:rgb(0,0,0);\"> vốn nhỏ gọn, mỏng, hút ẩm, thoáng mát chính là phương án tốt nhất cho bé gái yêu của bạn vào những ngày nắng nóng.</span></p><h3><span style=\"color:rgb(0,0,0);\"><strong>Áo thun cho bé gái năng động trong ngày nắng nóng, tại sao không ?</strong></span></h3><p><span style=\"color:rgb(0,0,0);\">Hoặc nếu con gái yêu của bạn năng động, thích vui đùa, chạy nhảy với bao trẻ khác trong xóm, thì chiếc áo thun cho bé gái (hay áo phông cho bé gái) lại là một lựa chọn cực kỳ hợp lý cho các mẹ trong trường hợp này. Với phần lớn chất liệu làm từ sợi cotton, chiếc áo phông bé gái ở chỗ chúng tôi có độ hút ẩm tốt, co giãn vừa phải, bé sẽ thoải mái vận động mà không cảm thấy vướng víu gì.</span></p><p><span style=\"color:rgb(0,0,0);\">Còn nếu các mẹ muốn sắm cho bé gái yêu của những chiếc áo thun để ra ngoài đi chơi, đi dự tiệc thì cửa hàng chúng tôi cũng có những loại áo thun bé gái xuất khẩu hàng công ty, số lượng thì có hạn nhưng chất lượng thì vô cùng. Với nhiều màu sắc và hoa tiết trang trí phong phú, các mẹ tha hồ lựa chọn. Hãy ghé ngay trang </span><a href=\"https://thegioithoitrangbaby.vn/\"><span style=\"color:rgb(0,51,102);\"><strong>Thế Giới Thời Trang Baby</strong></span></a><span style=\"color:rgb(0,0,0);\">, chúng tôi sẽ hóa thiên thần con gái yêu của các bạn !</span></p>', '{\"image\":\"\\/public\\/upload\\/admin\\/quan-ao-be-gai-dep.jpg\",\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '0', 2, ';;', 'delete', 0, 2, 2, '2023-05-10 02:30:18', '2023-11-21 03:31:51', NULL),
(113, 'san-pham', 104, 'Đầm Bé Gái', 'dam-be-gai', NULL, '<h2 style=\"text-align:center;\"><span style=\"color:rgb(0,0,0);\"><strong>Đầm Bé Gái Cao Cấp | Váy Bé Gái Đẹp &amp; Giá Rẻ Nhất Thị Trường</strong></span></h2><figure class=\"image\"><img src=\"https://thegioithoitrangbaby.vn/wp-content/uploads/2018/11/dam-be-gai-dep-gia-re-thegioithoitrangbabyvn.png\" alt=\"\"></figure><p><span style=\"color:rgb(0,0,0);\">Xin chào các mẹ, cuộc sống của các mẹ và bé gái yêu của mình không chỉ có ở nhà. Cuối tuần, các dịp lễ Tết mẹ và bé vẫn ra ngoài, đi chơi hay đi dự tiệc. Những lúc như vậy, những bộ đầm bé gái (hay váy bé gái) là rất cần thiết, chẳng lẽ các mẹ vẫn để bé gái yêu của mình ra ra ngoài với những bộ quần áo đã cũ, lấm lem, úa màu như thường ngày sao ? Hãy để con gái yêu của mình tỏa sáng trong những mẫu </span><a href=\"https://thegioithoitrangbaby.vn/danh-muc/dam-be-gai/\"><span style=\"color:rgb(0,51,102);\"><strong>đầm bé gái đẹp</strong></span></a><span style=\"color:rgb(0,0,0);\"> nhất ở cửa hàng chúng tôi nhé.</span></p><h3><span style=\"color:rgb(0,0,0);\"><strong>Đầm bé gái (váy bé gái) giúp con yêu của mẹ tỏa sáng trong bữa tiệc</strong></span></h3><p><span style=\"color:rgb(0,0,0);\">Đến với Thế Giới Thời Trang Baby đầm bé gái cao cấp của chúng tôi, với nhiều loại thiết kế, mẫu mã đa dạng từ Đông sang Tây đáp ứng mọi nhu cầu của các mẹ. Với những loại váy bé gái đẹp, hàng ngoại giá nội, những bộ đầm của chúng tôi sẽ hóa thiên nga bé gái của bạn trong bữa tiệc hay trong những buổi đi chơi dã ngoại.</span></p><p><span style=\"color:rgb(0,0,0);\">Còn nếu các mẹ muốn những loại váy, đầm nhẹ hơn, chúng tôi cũng không ngần ngại. Chúng tôi cung cấp các loại đầm bé gái giá rẻ (váy bé gái giá rẻ), giúp các mẹ tiết kiệm tiền hơn cho những mua sắm khác của mình, hàng rẻ những không hề tẻ nhạt nhé. Nào, xin mời đến với cửa hàng </span><a href=\"https://thegioithoitrangbaby.vn/\"><span style=\"color:rgb(0,51,102);\"><strong>Thế Giới Thời Trang Baby</strong></span></a><span style=\"color:rgb(0,0,0);\"> của chúng tôi !</span></p>', '{\"image\":\"\\/public\\/upload\\/admin\\/quan-ao-be-gai-dep.jpg\",\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '0', 3, ';;', 'delete', 0, 2, 2, '2023-05-10 02:30:47', '2023-11-21 03:31:51', NULL),
(114, 'tin-tuc', NULL, 'Tin tức thế giới', 'tin-tuc-the-gioi', NULL, NULL, '{\"image\":null,\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 'active', 2, ';;', 'delete', 1, 2, 2, '2023-09-17 15:12:56', '2023-11-20 08:21:15', NULL),
(115, 'san-pham', NULL, 'quần áo db', 'quan-ao-db', NULL, '<p>abcd</p>', '{\"image\":\"\\/public\\/upload\\/admin\\/aothunnam\\/anhdaungo_nhatphong.jpg\",\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 'active', 1, ';;', 'delete', 1, 2, 2, '2023-11-15 09:04:23', '2023-11-15 10:27:32', NULL),
(116, 'thiet-bi', NULL, 'Thiết Bị', 'thiet-bi', NULL, NULL, '{\"image\":null,\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 'active', 1, ';;', 'active', 0, 2, 2, '2023-11-20 08:21:45', '2023-11-20 08:22:04', NULL),
(117, 'phan-mem', NULL, 'Phần Mềm', 'phan-mem', NULL, NULL, '{\"image\":null,\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 'active', 1, ';;', 'active', NULL, 2, 2, '2023-11-20 08:23:22', '2023-11-20 08:23:44', NULL),
(118, 'phan-mem', 117, 'Phần mềm quản lý', 'phan-mem-quan-ly', NULL, NULL, '{\"image\":null,\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 'active', 1, ';;', 'active', 0, 2, 2, '2023-11-20 08:25:03', '2023-11-20 08:25:03', NULL),
(119, 'phan-mem', 117, 'Thiết kế website', 'thiet-ke-website', NULL, NULL, '{\"image\":null,\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 'active', 2, ';;', 'active', 0, 2, 2, '2023-11-20 08:25:28', '2023-11-20 08:25:28', NULL),
(120, 'giai-phap', NULL, 'Giải Pháp', 'giai-phap', NULL, NULL, '{\"image\":null,\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 'active', 1, ';;', 'active', 0, 2, 2, '2023-11-20 08:25:58', '2023-11-20 08:25:58', NULL),
(121, 'giai-phap', 120, 'Giải pháp mạng', 'giai-phap-mang', NULL, NULL, '{\"image\":null,\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 'active', 1, ';;', 'active', 0, 2, 2, '2023-11-20 08:26:38', '2023-11-20 08:26:38', NULL),
(122, 'giai-phap', 120, 'Giải pháp Giáo dục thông minh', 'giai-phap-giao-duc-thong-minh', NULL, NULL, '{\"image\":null,\"image_background\":null,\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 'active', 2, ';;', 'active', 0, 2, 2, '2023-11-20 08:27:05', '2023-11-20 08:27:05', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_components`
--

CREATE TABLE `tb_components` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `component_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_components`
--

INSERT INTO `tb_components` (`id`, `component_code`, `parent_id`, `title`, `brief`, `content`, `json_params`, `image`, `image_background`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'menu', NULL, 'Main menu', NULL, NULL, '{\"menu_id\":\"24\"}', NULL, NULL, 1, 'active', 1, 1, '2022-05-04 01:23:05', '2022-08-23 04:01:35'),
(2, 'banner_image', NULL, 'Adv banner', NULL, NULL, NULL, '/data/cms-image/banner/no-banner.jpg', NULL, 2, 'active', 1, 1, '2022-05-04 03:25:30', '2022-05-04 03:25:30'),
(3, 'menu', NULL, 'Primary sidebar', 'Primary sidebar section', NULL, '{\"menu_id\":\"33\"}', NULL, NULL, 3, 'active', 1, 1, '2022-05-19 00:24:44', '2022-05-19 18:38:15'),
(4, 'custom', NULL, 'Footer content', NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2022-05-19 08:21:27', '2022-05-19 08:21:27'),
(5, NULL, 2, 'Right banner 1', 'Description to this banner', NULL, '{\"url_link\":\"#\",\"url_link_title\":\"Show now\",\"target\":\"_self\"}', '/data/cms-image/meta-logo-favicon.png', NULL, 5, 'delete', 1, 1, '2022-05-19 21:24:40', '2022-05-19 23:23:36'),
(6, NULL, 2, 'Right banner 1', 'Description to this banner', NULL, '{\"url_link\":\"#\",\"url_link_title\":\"Show now\",\"target\":\"_self\"}', '/data/cms-image/meta-logo-favicon.png', NULL, 1, 'active', 1, 1, '2022-05-19 21:27:07', '2022-05-19 21:27:07'),
(7, NULL, 2, 'Right banner 2', NULL, NULL, '{\"url_link\":\"#\",\"url_link_title\":\"View more\",\"target\":\"_self\"}', '/data/banner/architektura-5.jpg', NULL, 2, 'active', 1, 1, '2022-05-19 23:25:03', '2022-05-19 23:25:03'),
(8, NULL, 2, 'Right banner 3', NULL, NULL, '{\"url_link\":null,\"url_link_title\":null,\"target\":\"_self\"}', '/data/banner/ewx_cslxkaio8su.jpg', NULL, 3, 'active', 1, 1, '2022-05-19 23:27:24', '2022-05-19 23:27:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_component_configs`
--

CREATE TABLE `tb_component_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_config` tinyint(1) NOT NULL DEFAULT 1,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_component_configs`
--

INSERT INTO `tb_component_configs` (`id`, `name`, `description`, `component_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Menu', NULL, 'menu', NULL, 1, 1, 'active', 1, 1, '2022-04-26 02:53:00', '2022-04-26 02:53:00'),
(2, 'Custom', NULL, 'custom', NULL, 1, 2, 'active', 1, 1, '2022-04-26 02:53:17', '2022-04-26 02:53:17'),
(3, 'Banner / Image', NULL, 'banner_image', NULL, 1, 3, 'active', 1, 1, '2022-04-26 02:53:50', '2022-04-26 02:53:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_contacts`
--

CREATE TABLE `tb_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'contact',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_experts`
--

CREATE TABLE `tb_experts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên chuyên gia',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Mô tả',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Ảnh đại diện',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_experts`
--

INSERT INTO `tb_experts` (`id`, `title`, `description`, `image`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(3, 'Vũ Văn Kiên', 'CEO: Công ty TNHH Phần mềm', '/data/avatar/logo.png', 1, 1, '2022-10-24 07:06:54', '2022-10-24 07:06:54'),
(4, 'Nguyễn Trường Giang', 'Chuyên gia tâm lý', '/data/avatar/DSC08910-567-crop-200-112.jpg', 1, 1, '2022-10-24 07:41:57', '2022-10-24 07:41:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_function`
--

CREATE TABLE `tb_function` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_images`
--

CREATE TABLE `tb_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_images`
--

INSERT INTO `tb_images` (`id`, `title`, `image`, `description`, `created_at`, `updated_at`) VALUES
(5, 'Xiaomi', '/public/upload/admin/aothunnam/bietkhucchonhau.jpg', 'Sản phẩm hot', '2023-09-25 07:05:54', '2023-09-25 07:05:54'),
(6, 'iphone15promax', '/public/upload/admin/aothunnam/ao-thun-chu-he-xam-AT40.jpg', 'ccccccccccccccccccc', '2023-09-25 10:18:15', '2023-09-25 10:18:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_logs`
--

CREATE TABLE `tb_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `url_referer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `params` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logged_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_menus`
--

CREATE TABLE `tb_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_menus`
--

INSERT INTO `tb_menus` (`id`, `parent_id`, `name`, `description`, `url_link`, `menu_type`, `system_code`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(45, NULL, 'Menu chính', NULL, NULL, 'header', NULL, NULL, 1, 'active', 2, 2, '2023-04-28 07:16:29', '2023-04-28 07:16:29'),
(46, 45, 'Trang chủ', NULL, '/', NULL, NULL, '{\"icon\":null,\"target\":\"_self\"}', 1, 'active', 2, 2, '2023-04-28 07:16:46', '2023-04-28 07:27:44'),
(60, 45, 'Giới thiệu', NULL, '/gioi-thieu', NULL, NULL, '{\"icon\":null,\"target\":\"_self\"}', 2, 'active', 2, 2, '2023-11-24 08:12:10', '2023-11-24 08:12:10'),
(61, 45, 'Thiết bị', NULL, '/thiet-bi/thiet-bi.html', NULL, NULL, '{\"icon\":null,\"target\":\"_self\"}', 3, 'active', 2, 2, '2023-11-24 08:13:08', '2023-11-24 08:13:08'),
(62, 45, 'Phần mềm', NULL, '/phan-mem/phan-mem.html', NULL, NULL, '{\"icon\":null,\"target\":\"_self\"}', 4, 'active', 2, 2, '2023-11-24 08:13:36', '2023-11-24 08:13:36'),
(63, 45, 'Giải pháp', NULL, '/giai-phap/giai-phap.html', NULL, NULL, '{\"icon\":null,\"target\":\"_self\"}', 5, 'active', 2, 2, '2023-11-24 08:14:15', '2023-11-24 08:14:15'),
(64, 45, 'Liên hệ', NULL, '/lien-he', NULL, NULL, '{\"icon\":null,\"target\":\"_self\"}', 6, 'active', 2, 2, '2023-11-24 08:14:32', '2023-11-24 08:14:32'),
(65, 62, 'Phần mềm quản lý', NULL, '/phan-mem/phan-mem-quan-ly.html', NULL, NULL, '{\"icon\":null,\"target\":\"_self\"}', 1, 'active', 2, 2, '2023-11-28 02:31:19', '2023-11-28 02:31:19'),
(66, 62, 'Thiết kế website', NULL, '/phan-mem/thiet-ke-website.html', NULL, NULL, '{\"icon\":null,\"target\":\"_self\"}', 2, 'active', 2, 2, '2023-11-28 02:31:40', '2023-11-28 02:31:40'),
(67, 63, 'Giải pháp mạng', NULL, '/giai-phap/giai-phap-mang.html', NULL, NULL, '{\"icon\":null,\"target\":\"_self\"}', 1, 'active', 2, 2, '2023-11-28 02:31:56', '2023-11-28 02:31:56'),
(68, 63, 'Giải pháp Giáo dục thông minh', NULL, '/giai-phap/giai-phap-giao-duc-thong-minh.html', NULL, NULL, '{\"icon\":null,\"target\":\"_self\"}', 2, 'active', 2, 2, '2023-11-28 02:32:25', '2023-11-28 02:32:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_modules`
--

CREATE TABLE `tb_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_modules`
--

INSERT INTO `tb_modules` (`id`, `module_code`, `name`, `description`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'users', 'Quản lý người dùng', 'Chức năng quản lý người dùng hệ thống website ngoài', 1, 'active', 1, 1, '2021-10-01 05:35:15', '2021-10-01 06:43:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_module_functions`
--

CREATE TABLE `tb_module_functions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `function_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_module_functions`
--

INSERT INTO `tb_module_functions` (`id`, `module_id`, `function_code`, `name`, `description`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'users.index', 'Xem danh sách', 'Xem danh sách người dùng', 1, 'active', 1, 1, '2021-10-01 09:26:47', '2021-10-01 09:26:47'),
(2, 1, 'users.create', 'Thêm mới', NULL, 2, 'active', 1, 1, '2021-10-01 09:29:02', '2021-10-01 11:42:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_online_exchange`
--

CREATE TABLE `tb_online_exchange` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_part` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brief` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `member` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Thành viên viết bài',
  `manage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Người duyệt',
  `experts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Chuyên gia',
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_online_exchange`
--

INSERT INTO `tb_online_exchange` (`id`, `taxonomy_id`, `title`, `url_part`, `image`, `image_thumb`, `brief`, `content`, `start_date`, `end_date`, `member`, `manage`, `experts`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 39, 'Giao lưu với các chuyên gia hàng đầu', 'giao-luu-voi-cac-chuyen-gia-hang-dau', NULL, NULL, 'Giao lưu với các chuyên gia hàng đầu', '<p>Giao lưu với các chuyên gia hàng đầu</p>', '2022-10-24 14:36:00', '2022-10-25 20:42:00', ',1,2,', ',4,5,', ',3,4,', '{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 'active', 1, 1, '2022-10-24 07:36:49', '2022-10-25 01:51:36'),
(2, 39, 'Giao lưu trực tuyến: \"Sẵn sàng Kỳ thi tốt nghiệp THPT năm 2022\"', 'giao-luu-truc-tuyen-san-sang-ky-thi-tot-nghiep-thpt-nam-2022', 'https://photo-cms-giaoducthoidai.zadn.vn/w820/Uploaded/2022/rgtzzn/2022-06-06/san-sang-ky-thi-01.jpg', NULL, '“Sẵn sàng Kỳ thi tốt nghiệp THPT năm 2022” là chủ đề giao lưu trực tuyến trên báo Giáo dục và Thời đại điện tử diễn ra từ 9h30 - 10h30 thứ Ba ngày 7/6.', '<p>Chương trình giao lưu có sự tham gia của 2 khách mời:</p><p><strong>Ông Phùng Quốc Lập, Phó Giám đốc Sở Giáo dục và Đào tạo tỉnh Phú Thọ;</strong></p><p><strong>Thầy Lâm Đức Thành, Hiệu trưởng Trường THPT Bùi Hữu Nghĩa (quận Bình Thuỷ, TP Cần Thơ).</strong></p><p>Kỳ thi tốt nghiệp THPT năm 2022 được tổ chức vào các ngày 7,8/7 và cơ bản giữ ổn định như năm 2021. Theo đó, Bộ Giáo dục và Đào tạo chỉ đạo chung; các tỉnh/thành phố trực thuộc Trung ương chủ trì toàn bộ công tác tổ chức thi tại địa phương bảo đảm an toàn, nghiêm túc, chất lượng. Điểm mới căn bản năm nay là việc tổ chức đăng ký dự thi trực tuyến cho các học sinh lớp 12 năm học 2021-2022.</p><p>Hiện nay, công tác chuẩn bị cho Kỳ thi được triển khai tích cực. Bộ Giáo dục và Đào tạo đã ban hành Hướng dẫn tổ chức Kỳ thi. Ban Chỉ đạo cấp quốc gia và Ban Chỉ đạo cấp tỉnh/thành Kỳ thi tốt nghiệp THPT năm 2022 đã được thành lập. Thủ tướng Chính phủ cũng đã ban hành Chỉ thị tăng cường chỉ đạo, phối hợp tổ chức Kỳ thi tốt nghiệp THPT và tuyển sinh đại học, giáo dục nghề nghiệp năm 2022.</p><p>Trên cơ sở những kinh nghiệm đã đạt được trong việc tổ chức Kỳ thi tốt nghiệp THPT năm 2021 trong bối cảnh dịch Covid-19 diễn biến phức tạp, Bộ Giáo dục và Đào tạo đã ban hành phương án tổ chức thi tốt nghiệp THPT năm 2022 cho các học sinh bị ảnh hưởng bởi dịch Covid-19.</p><p>Theo đó, thí sinh thuộc diện F0 có giấy xác nhận do cơ quan có thẩm quyền cấp sẽ được xét đặc cách tốt nghiệp THPT. Trường hợp có nguyện vọng tham dự Kỳ thi, các thí sinh này phải nộp đơn xin dự thi, cam kết tuân thủ các quy định phòng chống, dịch Covid-19, được cha, mẹ hoặc người giám hộ ký xác nhận đồng ý. Các thí sinh này được Hội đồng thi bố trí dự thi tại các phòng thi riêng đáp ứng yêu cầu về phòng, chống dịch Covid-19.</p><p>Thời điểm này, công tác chuẩn bị cho Kỳ thi đang được các địa phương, cơ sở giáo dục chuẩn bị tích cực, với phương châm không để bị động trong mọi tình huống. Các khách mời tham gia giao lưu sẽ chia sẻ những thông tin đáng chú ý xung quanh công tác này.</p><p>Để giao lưu cùng các khách mời, độc giả có thể gửi câu hỏi tới khách mời tại đây, hoặc qua email của Báo Giáo dục và Thời đại: gdtddientu@gmail.com hoặc tương tác qua Fanpage của Báo.</p>', '2022-10-25 08:57:00', '2022-11-30 08:57:00', ',1,2,', ',4,5,', '', '{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 'active', 1, 1, '2022-10-25 01:58:28', '2022-11-09 04:39:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_online_exchange_detail`
--

CREATE TABLE `tb_online_exchange_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exchange_id` bigint(20) UNSIGNED DEFAULT NULL,
  `experts_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL COMMENT 'Trả lời bình luận',
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tác giả câu hỏi',
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_online_exchange_detail`
--

INSERT INTO `tb_online_exchange_detail` (`id`, `exchange_id`, `experts_id`, `parent_id`, `author`, `content`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 'Phùng Văn Hà', 'Bình luận giao lưu trực tuyến', 'active', 1, 1, '2022-10-24 08:09:14', '2022-10-24 08:09:14'),
(2, 1, 3, 1, NULL, '<p>Đang bình luận….</p>', 'active', 1, 1, '2022-10-24 10:23:30', '2022-10-25 02:55:44'),
(3, 1, 4, 1, NULL, '<p>Tôi đồng ý quan điểm với ông Vũ Văn Kiên</p>', 'active', 1, 1, '2022-10-24 11:03:10', '2022-10-25 02:55:36'),
(4, 1, NULL, NULL, 'Văn Thanh', 'Công tác phối hợp trong tổ chức thi tốt nghiệp THPT năm 2022 tại Phú Thọ được triển khai như thế nào?', 'active', NULL, NULL, '2022-10-25 03:01:00', '2022-10-25 03:09:48'),
(5, 1, 4, 4, NULL, '<p>Trước hết, Sở GD&amp;ĐT xây dựng văn bản phối hợp với các sở, ban, ngành, đoàn thể liên quan và ủy ban nhân dân các huyện, thành, thị triển khai những nội dung liên quan đến tổ chức Kỳ thi; đặc biệt quan tâm đến nội dung đảm bảo an ninh, trật tự, an toàn giao thông, vệ sinh, an toàn thực phẩm, phòng, chống dịch bệnh và xây dựng phương án trong tình huống mưa, bão, lũ, lụt, thời tiết bất thường xảy ra,...</p><p>Sở GD&amp;ĐT đồng thời có văn bản phối hợp Công an tỉnh rà soát, xây dựng phương án đảm bảo an toàn, an ninh; phối hợp cử lực lượng tham gia các khâu tổ chức Kỳ thi. Cùng với đó, phối hợp với trường Đại học Hùng Vương kiểm tra, rà soát, chuẩn bị cơ sở vật chất, trang thiết bị và các điều kiện phục vụ các khâu tổ chức Kỳ thi.</p>', 'active', 1, 1, '2022-10-25 08:19:35', '2022-10-25 08:19:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_options`
--

CREATE TABLE `tb_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_system_param` tinyint(1) DEFAULT 1,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_options`
--

INSERT INTO `tb_options` (`id`, `option_name`, `option_value`, `description`, `is_system_param`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(2, 'information', '{\"site_name\":\"NEWWAYTECH\",\"hotline\":\"0912.568.999\",\"phone\":\"0912.568.999\",\"email\":\"infor@newwaytech.vn\",\"address\":\"S\\u1ed1 82, Ng\\u00f5 116, Ph\\u1ed1 Nh\\u00e2n H\\u00f2a, Ph\\u01b0\\u1eddng Nh\\u00e2n Ch\\u00ednh, Qu\\u1eadn Thanh Xu\\u00e2n, TP H\\u00e0 N\\u1ed9i\",\"brief\":\"GI\\u1ea2I PH\\u00c1P C\\u00d4NG NGH\\u1ec6 TH\\u00d4NG TIN NEWWAYTECH\",\"copyright\":\"B\\u1ea3n quy\\u1ec1n \\u00a9\",\"seo_title\":\"GI\\u1ea2I PH\\u00c1P C\\u00d4NG NGH\\u1ec6 TH\\u00d4NG TIN NEWWAYTECH\",\"seo_keyword\":null,\"seo_description\":\"C\\u00f4ng ty TNHH \\u0111\\u1ea7u t\\u01b0 ph\\u00e1t tri\\u1ec3n \\u1ee9ng d\\u1ee5ng C\\u00f4ng Ngh\\u1ec7 Th\\u00f4ng Tin & Truy\\u1ec1n Th\\u00f4ng\",\"contacts\":\"https:\\/\\/newwaytech.vn\\/\"}', 'Các dữ liệu cấu trúc liên quan đến thông tin liên hệ của hệ thống website', 1, 1, 2, '2021-10-01 22:06:00', '2023-12-04 03:41:01'),
(5, 'image', '{\"logo_header\":\"\\/public\\/upload\\/admin\\/5\\/Ph%E1%BA%A7n%20m%E1%BB%81m%20d%E1%BA%A1y%20h%E1%BB%8Dc%20Exsoft%20EX400.jpg\",\"logo_footer\":\"\\/public\\/upload\\/admin\\/6\\/footer_bg.png\",\"favicon\":\"\\/public\\/upload\\/admin\\/5\\/Ph%E1%BA%A7n%20m%E1%BB%81m%20d%E1%BA%A1y%20h%E1%BB%8Dc%20Exsoft%20EX400.jpg\",\"seo_og_image\":\"\\/public\\/upload\\/admin\\/5\\/Ph%E1%BA%A7n%20m%E1%BB%81m%20d%E1%BA%A1y%20h%E1%BB%8Dc%20Exsoft%20EX400.jpg\"}', 'Danh sách các hình ảnh cấu hình trên hệ thống tại các vị trí', 1, 1, 2, '2021-10-11 02:22:56', '2023-12-04 03:35:10'),
(6, 'social', '{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/@nghiahoang9201\",\"zalo\":\"https:\\/\\/zalo.me\\/\",\"messenger\":\"https:\\/\\/www.facebook.com\\/\"}', 'Danh sách các Social network của hệ thống', 1, 1, 2, '2022-02-14 03:35:40', '2023-12-04 01:47:38'),
(7, 'page', '{\r\n\"frontend.home\":  1\r\n}', NULL, 1, 1, 2, '2022-05-26 04:03:52', '2023-11-07 02:56:58'),
(8, 'source_code', '{\"css\":null,\"javascript\":null,\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3109.5914043665716!2d105.8276159664243!3d21.002854330161327!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac7dc5bab827%3A0xc076d880a1dc5828!2zQuG7h25oIHZp4buHbiDEkOG6oWkgaOG7jWMgWSBIw6AgTuG7mWk!5e0!3m2!1svi!2s!4v1683169690480!5m2!1svi!2s\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"fanpage\":null}', NULL, 1, 1, 2, '2022-06-06 19:24:11', '2023-11-07 02:57:11'),
(9, 'thong_tin_san_pham', '[\r\n\"áo\":\"áo tắm\",\r\n\"quần\":\"quần short\",\r\n\"dép\":\"dép tổ ong\"\r\n]', 'Thông tin sản phẩm', 1, 2, 2, '2023-11-07 02:52:38', '2023-11-07 02:52:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_orders`
--

CREATE TABLE `tb_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'product',
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total` double(10,2) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_orders`
--

INSERT INTO `tb_orders` (`id`, `is_type`, `customer_id`, `name`, `email`, `phone`, `address`, `customer_note`, `admin_note`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `total`, `discount`) VALUES
(1, 'product', NULL, 'Tung', 'Tungẻt', 'Tung2ewrasdtyuk', 'rthjgvetrh', 'reTGRZhxyju', NULL, NULL, 'new', NULL, NULL, '2023-06-03 01:52:31', '2023-06-03 01:52:31', NULL, NULL),
(2, 'product', NULL, 'Test3t4ar', 'Test', 'Test', 'rưqrqEGRZ', 'ẻt', NULL, NULL, 'new', NULL, NULL, '2023-06-03 01:54:29', '2023-06-03 01:54:29', NULL, NULL),
(3, 'product', NULL, 'Test', 'Test', 'Test', 'Số 1, Tôn Thất Tùng, Đống Đa, Hà Nội', NULL, NULL, NULL, 'new', NULL, NULL, '2023-06-03 01:56:16', '2023-06-03 01:56:16', NULL, NULL),
(4, 'product', NULL, 'Test', 'Test', 'Test', NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2023-06-03 01:57:02', '2023-06-03 01:57:02', NULL, NULL),
(5, 'product', NULL, 'Test', 'Test', 'Test', NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2023-06-03 01:57:57', '2023-06-03 01:57:57', NULL, NULL),
(7, 'product', NULL, 'Tung456456', 'Tung', 'e2retyuetwe5y563', 'QEhtr', 'rztdhgj', NULL, NULL, 'new', NULL, NULL, '2023-06-03 02:44:39', '2023-06-03 02:44:39', NULL, NULL),
(8, 'product', NULL, 'Liênetr', 'Liên', 'Liên', '4F28 XRC, Unnamed Road, Thanh Mỹ, Sơn Tây, Hà Nội, Việt Nam', 'qeargftdhfng', NULL, NULL, 'new', NULL, NULL, '2023-06-03 02:53:08', '2023-06-03 02:53:08', NULL, NULL),
(9, 'product', NULL, 'Trường', 'Trường', 'Trường', 'retyuio', 'srdtf', NULL, NULL, 'new', NULL, NULL, '2023-06-03 02:55:50', '2023-06-03 02:55:50', NULL, NULL),
(10, 'product', NULL, 'Quản', 'Quản', 'Quản', 'ưedfsb', '', NULL, NULL, 'new', NULL, NULL, '2023-06-03 02:58:27', '2023-06-03 02:58:27', NULL, NULL),
(11, 'product', NULL, 'Trườngretryui', 'Trường', 'Trường', 'Yên Bình, Thạch Thất, Hà Nội', 'tyuki', NULL, NULL, 'new', NULL, NULL, '2023-06-03 03:01:15', '2023-06-03 03:01:15', NULL, NULL),
(12, 'product', NULL, 'Quản', 'Quản', 'Quản', '4F28 XRC, Unnamed Road, Thanh Mỹ, Sơn Tây, Hà Nội, Việt Nam', 'etryu', NULL, NULL, 'new', NULL, NULL, '2023-06-03 03:02:42', '2023-06-03 03:02:42', NULL, NULL),
(13, 'product', NULL, 'Nhânưqrewtry', 'Nhân', 'Nhân', 'sgrdhtf', 'qeagrstdfh', NULL, NULL, 'new', NULL, NULL, '2023-06-03 03:04:37', '2023-06-03 03:04:37', NULL, NULL),
(14, 'product', NULL, 'Nguyễn Hữu123', 'Nguyễn Hữu', 'Nguyễn Hữu6986', 'Yên Bình, Thạch Thất, Hà Nội', 'fxhgchvjbn', NULL, NULL, 'new', NULL, NULL, '2023-06-03 03:07:16', '2023-06-03 03:07:16', NULL, NULL),
(15, 'product', NULL, 'Nhân', 'Nhân', 'Nhân', 'qeaFszgrthg', '', NULL, NULL, 'new', NULL, NULL, '2023-06-03 03:10:34', '2023-06-03 03:10:34', NULL, NULL),
(16, 'product', NULL, 'nghia', 'nghia@gmail.com', '12345678', 'hanoi', 'ko có', NULL, NULL, 'processing', NULL, 2, '2023-11-06 09:57:06', '2023-11-06 09:57:51', NULL, NULL),
(17, 'product', NULL, 'nghia', 'admin@gmail.com', '12345678', '12345', '12345', NULL, NULL, 'cancel', NULL, 2, '2023-11-07 03:28:31', '2023-11-07 03:28:47', NULL, NULL),
(18, 'product', NULL, 'nghia', 'nghia@gmail.com', '123456789', 'hanoi', 'test', NULL, NULL, 'new', NULL, NULL, '2023-11-14 08:06:03', '2023-11-14 08:06:03', NULL, NULL),
(19, 'product', NULL, 'nghia', 'admin@gmail.com', '12345678', 'hanoi', 'hanoi', NULL, NULL, 'new', NULL, NULL, '2023-11-14 08:14:10', '2023-11-14 08:14:10', NULL, NULL),
(20, 'product', NULL, 'nghia', 'admin@gmail.com', '12345678', 'hanoi', 'hanoi', NULL, NULL, 'new', NULL, NULL, '2023-11-14 08:14:31', '2023-11-14 08:14:31', NULL, NULL),
(21, 'product', NULL, 'nghia', 'nghia@gmail.com', '12345678', 'hanoi', 'hanoi', NULL, NULL, 'new', NULL, NULL, '2023-11-14 08:14:53', '2023-11-14 08:14:53', NULL, NULL),
(22, 'product', NULL, 'nghia', 'nghia123@gmail.com', '12345678', 'đa', 'đa', NULL, NULL, 'new', NULL, NULL, '2023-11-14 08:16:16', '2023-11-14 08:16:16', NULL, NULL),
(23, 'product', NULL, 'nghia', 'nghia@gmail.com', '12345678', 'hanoi', 'hanoi', NULL, NULL, 'new', NULL, NULL, '2023-11-14 08:17:00', '2023-11-14 08:17:00', NULL, NULL),
(24, 'product', NULL, 'nghia', 'nghia@gmail.com', '1234567', 'abc', 'abc', NULL, NULL, 'new', NULL, NULL, '2023-11-14 16:19:31', '2023-11-14 16:19:31', 144000.00, 16000.00),
(25, 'product', NULL, 'nghia', 'nghia@gmail.com', '12345678', 'abc', 'abc', NULL, NULL, 'new', NULL, NULL, '2023-11-15 08:04:40', '2023-11-15 08:04:40', 315000.00, 5000.00),
(26, 'product', NULL, 'nghia', 'nghia@gmail.com', '12345678', 'abc', 'abc', NULL, NULL, 'new', NULL, NULL, '2023-11-15 08:06:40', '2023-11-15 08:06:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_order_details`
--

CREATE TABLE `tb_order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double(20,2) DEFAULT NULL,
  `discount` double(20,2) DEFAULT NULL,
  `customer_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_order_details`
--

INSERT INTO `tb_order_details` (`id`, `order_id`, `item_id`, `quantity`, `price`, `discount`, `customer_note`, `admin_note`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(10, 8, 21, 3, 160000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 9, 21, 2, 160000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 10, 21, 1, 160000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 10, 20, 1, 89000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 11, 21, 2, 160000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 12, 21, 1, 160000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 1, 21, 1, 160000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 2, 21, 2, 160000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 3, 20, 2, 89000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 4, 20, 2, 89000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 5, 20, 2, 89000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 7, 20, 1, 89000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 8, 21, 2, 160000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 9, 21, 3, 160000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 10, 20, 1, 89000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 11, 21, 1, 160000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 12, 20, 1, 89000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 13, 20, 1, 89000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 14, 21, 2, 160000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 15, 21, 1, 160000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 16, 21, 2, 160000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 17, 20, 20, 89000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 24, 21, 1, 160000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 26, 21, 2, 160000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_pages`
--

CREATE TABLE `tb_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_pages`
--

INSERT INTO `tb_pages` (`id`, `name`, `title`, `keyword`, `description`, `content`, `route_name`, `alias`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', NULL, 'Keyword for Home Category Page', 'Description for Home Category Page', 'Content for Home Category Page', 'frontend.home', 'trang-chu', '{\"og_image\":\"\\/data\\/cms-image\\/demo\\/3.jpg\",\"template\":\"home.primary\",\"block_content\":[\"75\",\"74\",\"19\",\"79\",\"80\",\"81\",\"82\",\"83\",\"84\",\"85\",\"93\"]}', 1, 'active', 1, 1, '2022-03-23 02:35:33', '2022-06-06 21:04:55'),
(3, 'Bài viết', NULL, NULL, NULL, NULL, 'frontend.cms.post_category', 'bai-viet', '{\"template\":\"post.category.default\",\"block_content\":[\"75\",\"94\",\"93\"]}', 2, 'active', 1, 1, '2022-06-02 04:20:50', '2022-06-02 04:27:43'),
(4, 'Chi tiết bài viết', NULL, NULL, NULL, NULL, 'frontend.cms.post', 'chi-tiet-bai-viet', '{\"template\":\"post.default\",\"block_content\":[\"75\",\"94\",\"93\"]}', 3, 'active', 1, 1, '2022-06-02 19:52:10', '2022-06-02 19:52:21'),
(5, 'Gói dịch vụ', NULL, NULL, NULL, NULL, 'frontend.cms.service_category', 'dich-vu', '{\"template\":\"service.category.default\",\"block_content\":[\"75\",\"94\",\"93\"]}', 4, 'delete', 1, 1, '2022-06-02 20:48:58', '2022-10-26 07:33:50'),
(6, 'Chi tiết dịch vụ', NULL, NULL, NULL, NULL, 'frontend.cms.service', 'chi-tiet-dich-vu', '{\"template\":\"service.default\",\"block_content\":[\"75\",\"94\",\"93\"]}', 5, 'delete', 1, 1, '2022-06-02 20:50:17', '2022-10-26 07:33:05'),
(7, 'Chuyên khoa', 'Chuyên khoa', NULL, NULL, NULL, 'frontend.cms.department', 'chuyen-khoa', '{\"og_image\":null,\"template\":\"department.default\",\"block_content\":[\"75\",\"94\",\"93\"]}', 6, 'delete', 1, 1, '2022-06-02 21:55:21', '2022-10-26 07:33:02'),
(8, 'Tìm kiếm tin tức', 'Tìm kiếm tin tức', NULL, NULL, NULL, 'frontend.cms.post', 'search', '{\"og_image\":null,\"template\":\"post.default\"}', 7, 'active', 1, 1, '2022-06-03 00:37:09', '2022-09-24 04:09:34'),
(9, 'Thông tin cá nhân', NULL, NULL, NULL, NULL, 'frontend.cms.user', 'profile', '{\"og_image\":null,\"template\":\"doctor.detail\"}', 8, 'active', 1, 1, '2022-06-03 00:37:30', '2022-09-10 04:06:17'),
(10, 'Thư viện', NULL, NULL, NULL, NULL, 'frontend.cms.resource_category', 'thu-vien', '{\"template\":\"resource.category.default\",\"block_content\":[\"75\",\"94\",\"93\"]}', 9, 'delete', 1, 1, '2022-06-03 01:26:47', '2022-10-26 07:32:49'),
(11, 'Chi tiết video', NULL, NULL, NULL, NULL, 'frontend.cms.resource', 'chi-tiet-video', '{\"template\":\"resource.default\",\"block_content\":[\"75\",\"94\",\"93\"]}', 10, 'delete', 1, 1, '2022-06-03 01:27:09', '2022-10-26 07:32:43'),
(13, 'Liên hệ', 'Liên hệ với chúng tôi', NULL, NULL, NULL, 'frontend.contact', 'lien-he', '{\"og_image\":null,\"template\":\"contact.default\",\"block_content\":[\"75\",\"94\",\"93\"]}', 11, 'active', 1, 1, '2022-06-07 00:35:49', '2022-06-07 01:10:18'),
(14, 'Sản phẩm', NULL, NULL, NULL, NULL, 'frontend.cms.product_category', 'san-pham', '{\"og_image\":null,\"template\":\"product.category.default\",\"block_content\":[\"75\",\"94\",\"93\"]}', 12, 'delete', 1, 1, '2022-06-10 02:26:56', '2022-10-26 07:32:39'),
(15, 'Chi tiết sản phẩm', NULL, NULL, NULL, NULL, 'frontend.cms.product', 'chi-tiet-san-pham', '{\"og_image\":null,\"template\":\"product.default\",\"block_content\":[\"75\",\"94\",\"93\"]}', 13, 'delete', 1, 1, '2022-06-10 02:27:42', '2022-10-26 07:32:36'),
(16, 'Giỏ hàng', 'Giỏ hàng', NULL, NULL, NULL, 'frontend.order.cart', 'gio-hang', '{\"og_image\":null,\"template\":\"cart.default\",\"block_content\":[\"75\",\"94\",\"93\"]}', 14, 'delete', 1, 1, '2022-06-16 20:53:32', '2022-10-26 07:32:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_post_comment`
--

CREATE TABLE `tb_post_comment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `member_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1 COMMENT '1: chờ duyệt',
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_post_document`
--

CREATE TABLE `tb_post_document` (
  `id` bigint(22) NOT NULL,
  `post_id` bigint(22) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_post_history`
--

CREATE TABLE `tb_post_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `taxonomy_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'post',
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_coppy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_part` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `torder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_like` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nhuanbut` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aproved_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_count` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cms_tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_aproved` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_post_image`
--

CREATE TABLE `tb_post_image` (
  `id` bigint(22) NOT NULL,
  `post_id` bigint(22) DEFAULT NULL,
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_post_image`
--

INSERT INTO `tb_post_image` (`id`, `post_id`, `link_image`, `created_at`, `updated_at`, `status`) VALUES
(23, 21, '/public/upload/admin/aothunnam/bo-be-trai-khung-long-ao-ke-B80-6.jpg', '2023-11-14 16:24:29', '2023-11-14 16:24:29', 'active'),
(24, 21, '/public/upload/admin/aothunnam/bo-be-trai-khung-long-ao-ke-B80-7-768x768.jpg', '2023-11-14 16:24:29', '2023-11-14 16:24:29', 'active'),
(25, 21, '/public/upload/admin/aothunnam/bo-be-trai-khung-long-ao-ke-B80-8-768x576.jpg', '2023-11-14 16:24:29', '2023-11-14 16:24:29', 'active'),
(26, 20, '/public/upload/admin/aothunnam/ao-thun-chu-he-xam-AT40.jpg', '2023-11-14 16:24:43', '2023-11-14 16:24:43', 'active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_products`
--

CREATE TABLE `tb_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `giakm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mô tả',
  `chitiet` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nội dung',
  `diemban` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Điểm bán',
  `giayto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Giấy tờ sản phẩm',
  `hienthi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Vị trí hiển thị sản phẩm',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT 0 COMMENT 'Lượt xem',
  `iorder` int(11) DEFAULT NULL,
  `tinhtrang` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `soluong` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `soluongconlai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_products`
--

INSERT INTO `tb_products` (`id`, `taxonomy_id`, `title`, `alias`, `gia`, `giakm`, `mota`, `chitiet`, `diemban`, `giayto`, `hienthi`, `image`, `image_thumb`, `view`, `iorder`, `tinhtrang`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `admin_created_id`, `admin_updated_id`, `json_params`, `created_at`, `updated_at`, `soluong`, `soluongconlai`) VALUES
(22, 116, 'Máy chấm công RONALD JACK RJ1200', 'may-cham-cong-ronald-jack-rj1200', NULL, NULL, NULL, '<p>- &nbsp;Màn hình: 2.8 \"TFT<br>- &nbsp;TÍCH HỢP PIN LƯU ĐIỆN<br>- &nbsp;Công suất vân tay: 1200 dấu vân tay + 1200 thẻ cảm ứng<br>- &nbsp;Mỗi người có thể khai báo 10 dấu vân tay<br>- &nbsp;Dung lượng bộ nhớ: 88.000 lần giao dịch<br>- &nbsp;Lấy và xem dữ liệu qua internet<br>- &nbsp;Tích hợp âm thanh và password bảo vệ máy<br>- &nbsp;Có thể hẹn giờ mở / tắt máy =&gt; An toàn và tiết kiệm điện<br>- &nbsp;Dữ liệu lưu trong máy không bị mất khi xãy ra cúp điện.</p>', NULL, NULL, ';;', '/public/upload/admin/M%C3%A1y%20ch%E1%BA%A5m%20c%C3%B4ng%20RONALD%20JACK%20RJ1200.png', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 08:47:31', '2023-11-20 08:47:31', NULL, NULL),
(23, 116, 'MÀN HÌNH TƯƠNG TÁC NEWLINE TRUTOUCH VN', 'man-hinh-tuong-tac-newline-trutouch-vn', NULL, NULL, NULL, '<p>Màn hình tương tác Newline TRUTOUCH VN Series có công nghệ IR touch được nâng cấp, phản ứng nhanh hơn để mang đến cho bạn trải nghiệm viết trực quan và mượt mà nhất có thể tưởng tượng. Màn hình đa chức năng này là giải pháp hoàn hảo cho các phòng hội thảo hoặc các lớp học giáo dục đại học muốn giao tiếp tốt hơn và cộng tác dễ dàng hơn</p><p>Công nghệ cảm ứng hồng ngoại tiên tiến cho phép cảm ứng nhạy cho trải nghiệm viết mượt mà.</p><p>Góc nhìn tối đa 178 ° cho phép bạn nhìn rõ màn hình bất kể bạn ngồi ở đâu trong phòng.</p><p style=\"text-align:center;\">&nbsp;</p><p>Cá nhân hóa màn hình bắt đầu của bạn bằng cách chọn hình nền, logo và các phím tắt yêu thích của bạn.</p><p>Công nghệ liên kết quang làm giảm đáng kể sự phản xạ và thị sai để mang lại trải nghiệm hình ảnh tốt nhất có thể. Màn hình cảm ứng đa điểm chính xác và nhạy. &nbsp;Với tối đa 20 điểm cảm ứng, có được trải nghiệm cảm ứng đa điểm có độ phản hồi cao, không bị lag trên dòng VN. Nó cho phép nhóm của bạn làm việc và viết cùng một lúc mà không có bất kỳ giới hạn nào.</p>', NULL, NULL, ';;', '/public/upload/admin/M%C3%80N%20H%C3%8CNH%20T%C6%AF%C6%A0NG%20T%C3%81C%20NEWLINE%20TRUTOUCH%20VN.jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 08:49:58', '2023-11-20 08:51:19', NULL, NULL),
(24, 116, 'Aver SVC500', 'aver-svc500', NULL, NULL, NULL, '<p>Đặc tính kỹ thuật:</p><p>- Tích hợp sẵn 6 điểm cầu</p><p>- Có khả năng mở rộng lên đến 16 điểm cầu bằng cách mua license</p><p>- Tích hợp sẵn Skype for Business</p><p>- 2-megapixel CMOS sensor</p><p>- 18X total zoom</p>', NULL, NULL, ';;', '/public/upload/admin/Aver%20SVC500.png', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 08:52:17', '2023-11-20 08:52:17', NULL, NULL),
(25, 116, 'Aver EVC900', 'aver-evc900', NULL, NULL, NULL, '<p><strong>Aver EVC900</strong></p><p>Đặc tính kỹ thuật:</p><p>- Tích hợp sẵn 10 điểm cầu</p><p>- Có thể sử dụng với Skype for Business bằng cách mua thêm license</p><p>- 2-megapixel CMOS sensor</p><p>- 16X optical zoom</p>', NULL, NULL, ';;', '/public/upload/admin/Aver%20EVC900.png', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 08:53:07', '2023-11-20 08:53:24', NULL, NULL),
(26, 116, 'Aver EVC300', 'aver-evc300', NULL, NULL, NULL, '<p>Aver EVC300</p><p>Đặc tính kỹ thuật:&nbsp;</p><p>- Tích hợp sẵn 4 điểm cầu</p><p>- Mở rộng lên đến 10 điểm cầu bằng cách mua license</p><p>- Có thể sử dụng với Skype for Business bằng cách mua thêm license</p><p>- 2-megapixel CMOS sensor</p><p>- 16X optical zoom</p><p>- ±100° pan; ±25° tilt</p>', NULL, NULL, ';;', '/public/upload/admin/Aver%20EVC300.png', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 08:54:05', '2023-11-20 08:54:05', NULL, NULL),
(27, 116, 'CAMERA AVER VISION F50-8M', 'camera-aver-vision-f50-8m', NULL, NULL, NULL, '<p>Công Nghệ cảm biến : 1/3.2” CMOS color</p><p>Đầu ra độ phân giải : Full HD1080p (1920 x 1080)</p><p>Tổng số điểm ảnh : 8M pixels</p><p>Khả năng zom : Tổng số zoom 200X</p><p>(10X AVerZoom™&nbsp; + 1.25X AVerZoomTM + 16X zoom kỹ thuật số)</p><p>Tốc độ ghi hình : 30 hình/giây</p><p>Vùng thu hình : 330 x 248 mm</p><p>Bộ nhớ trong : lưu trữ 80 hình ảnh</p><p>Cổng kết nối : HDMI in/out&nbsp;; VGA in/out&nbsp;; Audio out&nbsp;; Mic in&nbsp;; mini USB 2.0&nbsp;; USB 2.0</p><p>Bộ nhớ ngoài : Thẻ nhớ SD tối đa 32Gb,</p><p>USB tối đa 64Gb</p><p>Ưu điểm: Phím Zoom thiết kế theo kiểm núm xoay,</p><p>&nbsp;dễ dàng sử dụng, độ nét cao,tự động lấy nét&nbsp;</p>', NULL, NULL, ';;', '/public/upload/admin/CAMERA%20AVER%20VISION%20F50-8M.jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 08:56:31', '2023-11-20 08:56:31', NULL, NULL),
(28, 116, 'CAMERA AVER VISION F17 – 8M', 'camera-aver-vision-f17-–-8m', NULL, NULL, NULL, '<p>Công Nghệ cảm biến : 1/3.2” CMOS color</p><p>Đầu ra độ phân giải : Full HD1080p (1920 x 1080)</p><p>Tổng số điểm ảnh : 8M pixels</p><p>Khả năng zom : Tổng số zoom 27.2X</p><p>(1.7X AVerZoom™ + 16X zoom kỹ thuật số)</p><p>Tốc độ ghi hình : 30 hình/giây</p><p>Vùng thu hình : Lớn hơn khổ A3</p><p>Bộ nhớ trong : lưu trữ 80 hình ảnh</p><p>Cổng kết nối : VGA in/out&nbsp;; HDMI in/out; Composite; mini USB 2.0 (kết nối với máy tính); Audio out; USB 2.0</p><p>Bộ nhớ ngoài : Thẻ nhớ SD tối đa 32Gb,</p><p>Ưu điểm: Phím Zoom thiết kế theo kiểm núm xoay,</p><p>&nbsp;dễ dàng sử dụng, độ nét cao,tự động lấy nét</p>', NULL, NULL, ';;', '/public/upload/admin/CAMERA%20AVER%20VISION%20F17%20%E2%80%93%208M.jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 08:57:20', '2023-11-20 08:57:20', NULL, NULL),
(29, 116, 'CAMERA AVER VISION U50', 'camera-aver-vision-u50', NULL, NULL, NULL, '<p>Trình chiếu đơn giản, gọn nhẹ, trực tiếp thông qua máy tính</p><p>Công Nghệ cảm biến : 1/ 4.5’’ CMOS color</p><p>Đầu ra độ phân giải : Full HD1080p (1920 x 1080)</p><p>Tổng số điểm ảnh : 5M pixels</p><p>Khả năng zom : KTS 8X</p><p>Tốc độ ghi hình : 30 hình/giây</p><p>Lấy nét : Tự động / bằng tay</p><p>Trọng lượng : 1,5kg</p><p>Cổng kết nối : 02 mini USB, 02 USB</p><p>Chức năng ghi âm : có</p>', NULL, NULL, ';;', '/public/upload/admin/CAMERA%20AVER%20VISION%20U50.jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 08:58:06', '2023-11-20 08:58:06', NULL, NULL),
(30, 116, 'Máy chiếu LS500WHP LED 3,500 Lumen WXGA dành cho doanh nghiệp và giáo dục. Giá bán Liên hệ', 'may-chieu-ls500whp-led-3-500-lumen-wxga-danh-cho-doanh-nghiep-va-giao-duc-gia-ban-lien-he', NULL, NULL, NULL, '<ul><li>Công nghệ LED thế hệ thứ 3 với tuổi thọ 30.000 giờ</li><li>Độ sáng 3,500 ANSI Lumens cho độ sáng cao trong bất kì môi trường</li><li>Tắt/mở máy ngay lập tức chỉ bằng một nút bấm&nbsp;</li><li>Hỗ trợ công nghệ trình chiếu 360° linh hoạt</li><li>Cập nhật phần mềm tiện lợi thông qua đầu cắm USB</li></ul><p>&nbsp;</p>', NULL, NULL, ';;', '/public/upload/admin/M%C3%A1y%20chi%E1%BA%BFu%20LS500WHP%20LED%203%2C500%20Lumen%20WXGA%20d%C3%A0nh%20cho%20doanh%20nghi%E1%BB%87p%20v%C3%A0%20gi%C3%A1o%20d%E1%BB%A5c_%20Gi%C3%A1%20b%C3%A1n%20Li%C3%AAn%20h%E1%BB%87.jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:03:55', '2023-11-20 09:03:55', NULL, NULL),
(31, 116, 'Thiết bị âm thanh di động Hylex PA350E. Giá bán 18.500.000đ', 'thiet-bi-am-thanh-di-dong-hylex-pa350e-gia-ban-18-500-000d', NULL, NULL, NULL, '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">HYLEX PA350E là mẫu âm thanh di động thông minh cho công suất 350W , kết nối không dây với các thiết bị qua Bluetooth (phát Audio, 2 Mic không dây với khả năng thu nhận tín hiệu đến 90m, kết nối mở rộng với Micro (có dây) / Guitar, phát âm thanh trực tiếp từ thẻ nhớ / USB / FM Radio / RCA in….</span></p><p><span style=\"color:rgb(51,51,51);\">Hylex PA Series dãy sản phẩm đa dạng cho công suất từ 350W đến 800W, kết nối thông minh với máy tính, điện thoại hay máy tính bảng qua Bluetooth, 2 Mic không dây với khả năng thu nhận tín hiệu đến 90m, Loa di động Hylex PA Serie có khả năng đọc thẻ nhớ, USB với tắt cả các file Audio hay Video…</span></p><p style=\"text-align:justify;\">HYLEX PA350E là mẫu âm thanh di động thông minh cho công suất 350W , kết nối không dây với các thiết bị qua Bluetooth (phát Audio, 2 Mic không dây với khả năng thu nhận tín hiệu đến 90m, kết nối mở rộng với Micro (có dây) / Guitar, phát âm thanh trực tiếp từ thẻ nhớ / USB / FM Radio / RCA in….</p><p style=\"text-align:justify;\">Ngoài ra loa Hylex còn có thể kết hợp với Tivi – màn hình tương tác Aikyo, để thành giải pháp nghe nhìn cao cấp cho mỗi lớp học đa năng, thông minh hiện nay.</p><p style=\"text-align:justify;\">– Dễ dàng kết nối với Điện thoại, máy tính xách tay, máy tính bảng qua Bluetooth.</p><p style=\"text-align:justify;\">– 2 Mic không dây giải tần UHF cho phép kết nối với loa ở khoảng cách đến 50m. – Microphone không dây UHF, có khả năng điều chỉnh tần số</p><p style=\"text-align:justify;\">– Công nghệ DSP cải thiện chất lượng âm thanh</p><p style=\"text-align:justify;\">– Sản phẩm dùng cho lớp học, trường học, hoạt động dã ngoại ngoài trời, du lịch…</p><p style=\"text-align:justify;\">Loa Hylex PA Series là sản phẩm trong danh mục thiết bị tối thiểu, thiết bị dùng chung cho khối K12, theo thông tư 37, 38, 39 của Bộ GD&amp;ĐT, là sản phẩm hữu dụng trong mỗi lớp học hiện nay với quy mô từ 5 đến hàng trăm học viên. HYLEX là thương hiệu Việt Nam, Sản xuất tại Việt Nam theo tiêu chuẩn Quốc tế ISO 9001; ISO 14001; ISO4500, ISO 27001,…và Quy trình kiểm soát Kaizen, 5S – Nhật Bản với các sản phẩm chủ đạo là: Âm thanh hội nghị, âm thanh lớp học, Amply…</p>', NULL, NULL, ';;', '/public/upload/admin/1/Thi%E1%BA%BFt%20b%E1%BB%8B%20%C3%A2m%20thanh%20di%20%C4%91%E1%BB%99ng%20Hylex%20PA350E_%20Gi%C3%A1%20b%C3%A1n%2018_500_000%C4%91.png', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:10:54', '2023-11-20 09:10:54', NULL, NULL),
(32, 116, 'Máy chiếu Vivitek H1188 (CHIẾU PHIM CHUYÊN NGHIỆP 3D FULL HD)', 'may-chieu-vivitek-h1188-chieu-phim-chuyen-nghiep-3d-full-hd', NULL, NULL, NULL, '<p>Cường độ sáng: 2000 Ansi Lumens</p><p>Độ tương phản: 50000:1<br>Độ phân giải thực: Full HD 1080p (1920 x 1080)</p><p>Số màu hiển thị: 1,07 tỷ màu</p><p>Chỉnh vuông hỉnh: ± 40 độ (dọc)</p><p>Trọng lượng: 2.7 kg</p><p>Cổng kết nối: VGA-In (15pin D-Sub), HDMI v1.4 (x2),</p><p>Component (YpbPr RCA x 3), S-Video, Composite</p><p>Video, Audio-In (RCA), Audio-In (Mini-Jack), Audio-</p><p>Out (Mini-Jack), 12v Trigger, Trigger Port Type,RS-232, 3D-Sync Out, USB type A for Display(Frame display) and JPG reader</p><p>Công nghệ hình ảnh VividMotion</p><p>Chức năng: Trình chiếu 3D &amp; HD; Lenshirt</p><p>Tuổi thọ bóng đèn: 3,500/5,000 Hours</p>', NULL, NULL, ';;', '/public/upload/admin/1/M%C3%A1y%20chi%E1%BA%BFu%20Vivitek%20H1188%20(CHI%E1%BA%BEU%20PHIM%20CHUY%C3%8AN%20NGHI%E1%BB%86P%203D%20FULL%20HD).png', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:11:50', '2023-11-20 09:12:13', NULL, NULL),
(33, 116, 'Máy chiếu Vivitek H1185HD', 'may-chieu-vivitek-h1185hd', NULL, NULL, NULL, '<p>Cường độ sáng: 2500 Ansi Lumens</p><p>Độ tương phản: 50000:1<br>Độ phân giải thực: Full HD 1080p (1920 x 1080)</p><p>Số màu hiển thị: 1,07 tỷ màu</p><p>Chỉnh vuông hỉnh: ± 40 độ (dọc)</p><p>Trọng lượng: 2.7 kg</p><p>Cổng kết nối:HDMI x 2; VGA in x 1; S-video; Composite Video; Audio in/out; 3D – Syns out; USB power; Mini USB</p><p>Chức năng: Trình chiếu 3D &amp; Full HD</p><p>Tuổi thọ bóng đèn: 3,500/5,000 Hours (Normal/Eco Mode), 190W/160W</p>', NULL, NULL, ';;', '/public/upload/admin/1/M%C3%A1y%20chi%E1%BA%BFu%20Vivitek%20H1185HD.jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:13:26', '2023-11-20 09:13:26', NULL, NULL),
(34, 116, 'Máy chiếu Vivitek D756USTi', 'may-chieu-vivitek-d756usti', NULL, NULL, NULL, '<p>Cường độ sáng: 3300 Ansi Lumens</p><p>Độ phân giải: WXGA(1280 x800)</p><p>Độ tương phản: 10.000:1</p><p>Số màu hiển thị: 1,07 tỷ màu</p><p>Độ phân giải nén: 1600x1200 Pixels (WUXGA)</p><p>Tuổi thọ bóng đèn : 3,000/4,000 Hours ,280W/245W</p><p>Chỉnh vuông hình theo chiều dọc: ± 1.7 độ (dọc)</p><p>Chức Năng: Trình chiếu 3D, Tương Tác Thông Minh;</p><p>Option tương tác bằng tay</p><p>Cổng kết nối :VGA-In (15pin D-Sub), HDMI,</p><p>, S-Video, Composite Video, Audio-In (RCA), Audio-In (Mini-Jack), VGA-Out(15pin D-Sub), Audio-Out (Mini-Jack), RJ45, 12v Trigger, Trigger Port Type, RS-232</p>', NULL, NULL, ';;', '/public/upload/admin/1/M%C3%A1y%20chi%E1%BA%BFu%20Vivitek%20D756USTi.png', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:15:56', '2023-11-20 09:15:56', NULL, NULL),
(35, 116, 'Vivitek D755WTIR MÁY CHIẾU TƯƠNG TÁC', 'vivitek-d755wtir-may-chieu-tuong-tac', NULL, NULL, NULL, '<p>Cường độ sáng: 3200 Ansi Lumens</p><p>Độ phân giải: WXGA(1280 x800)</p><p>Độ tương phản: 10.000:1</p><p>Số màu hiển thị: 1,07 tỷ màu</p><p>Độ phân giải nén: 1600x1200 Pixels (WUXGA)</p><p>Tuổi thọ bóng đèn : 3,000/4,000 Hours, 280W/245W</p><p>Chỉnh vuông hình theo chiều dọc: ± 40 độ (dọc)</p><p>Chức Năng: Trình chiếu 3D; <strong>Máy chiếu tương tác</strong></p><p>Cổng kết nối :VGA-In (15pin D-Sub), HDMI, Display</p><p>Port, S-Video, Composite Video, Audio-In (RCA),</p><p>Audio-In (Mini-Jack),VGA-Out (15pin D-Sub), Audio</p><p>-Out (Mini-Jack), RJ45, 12v Trigger, Trigger Port Type,RS-232</p>', NULL, NULL, ';;', '/public/upload/admin/1/Vivitek%20D755WTIR%20M%C3%81Y%20CHI%E1%BA%BEU%20T%C6%AF%C6%A0NG%20T%C3%81C.png', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:18:00', '2023-11-20 09:18:00', NULL, NULL),
(36, 116, 'Máy chiếu Vivitek BX565', 'may-chieu-vivitek-bx565', NULL, NULL, NULL, '<p>Cường độ sáng: 4000 Ansi Lumens</p><p>Độ phân giải: XGA (1024 x 768)</p><p>Độ tương phản: 30.000:1</p><p>Số màu hiển thị: 1,07 tỷ màu</p><p>Độ phân giải nén: 1600x1200 Pixels (WUXGA)</p><p>Khoảng cách chiếu: 0,9-10m ( 23”-256” )</p><p>Tuổi thọ bóng đèn : 10.000 giờ</p><p>Chỉnh vuông hình theo chiều dọc: ± 40 độ (dọc)</p><p>Chức Năng: Trình chiếu 3D</p><p>Cổng kết nối :HDMI x 2; VGA in x 2; VGA out x 1; S-video; Composite; Audio; RS232; Mini USB</p>', NULL, NULL, ';;', '/public/upload/admin/1/M%C3%A1y%20chi%E1%BA%BFu%20Vivitek%20BX565.jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:19:07', '2023-11-20 09:19:07', NULL, NULL),
(37, 116, 'Máy chiếu Vivitek BS564', 'may-chieu-vivitek-bs564', NULL, NULL, NULL, '<p>Cường độ sáng: 4000 Ansi Lumens</p><p>Độ phân giải: SVGA (800&nbsp; x 600)</p><p>Độ tương phản: 30.000:1</p><p>Số màu hiển thị: 1,07 tỷ màu</p><p>Độ phân giải nén: 1600x1200 Pixels (WUXGA)</p><p>Khoảng cách chiếu: 0,9-10m ( 23”-256” )</p><p>Tuổi thọ bóng đèn : 10.000 giờ</p><p>Chỉnh vuông hình theo chiều dọc: ± 40 độ (dọc)</p><p>Chức Năng: Trình chiếu 3D</p><p>Cổng kết nối :HDMI x 2; VGA in x 2; VGA out x 1; S-video; Composite; Audio; RS232; Mini USB</p>', NULL, NULL, ';;', '/public/upload/admin/1/M%C3%A1y%20chi%E1%BA%BFu%20Vivitek%20BS564.jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:20:04', '2023-11-20 09:20:04', NULL, NULL),
(38, 116, 'Máy chiếu Vivitek DS262', 'may-chieu-vivitek-ds262', NULL, NULL, NULL, '<p>Cường độ sáng: 3500 Ansi Lumens</p><p>Độ phân giải: SVGA (800&nbsp; x 600)</p><p>Độ tương phản: 15.000:1</p><p>Số màu hiển thị: 1,07 tỷ màu</p><p>Độ phân giải nén: 1600x1200 Pixels (WUXGA)</p><p>Khoảng cách chiếu: 0,9-10m ( 23”-256” )</p><p>Tuổi thọ bóng đèn : 10.000 giờ</p><p>Chỉnh vuông hình theo chiều dọc: ± 40 độ (dọc)</p><p>Chức Năng: Trình chiếu 3D</p><p>Cổng kết nối :HDMI x 2; VGA in x 2; VGA out x 1; S-video; Composite; Audio; RS232; Mini USB</p>', NULL, NULL, ';;', '/public/upload/admin/1/M%C3%A1y%20chi%E1%BA%BFu%20Vivitek%20DS262.png', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:20:55', '2023-11-20 09:20:55', NULL, NULL),
(39, 116, 'Máy chiếu Vivitek DX881ST (Máy chiếu gần)', 'may-chieu-vivitek-dx881st-may-chieu-gan', NULL, NULL, NULL, '<p>Cường độ sáng: 3300 Ansi Lumens</p><p>Độ phân giải: XGA (1024 x 768)</p><p>Độ tương phản: 15.000:1</p><p>Số màu hiển thị: 1,07 tỷ màu</p><p>Độ phân giải nén: UXGA (1600 x 1200)</p><p>Khoảng cách chiếu: 0.5 to 4m ( 41” to 328”)</p><p>Tuổi thọ bóng đèn : 4,500 / 6,000 Hours, 190W/160W</p><p>Chỉnh vuông hình theo chiều dọc: ± 40 độ (dọc)</p><p>Chức Năng: Trình chiếu 3D</p><p>Cổng kết nối :HDMVGA-In (15pin D-Sub), HDMI,</p><p>S-Video, Composite Video, Audio-In (RCA), Audio-In (Mini-Jack), VGA-Out (15pin D-Sub), Audio-Out (Mini-Jack), RJ45, RS-232</p>', NULL, NULL, ';;', '/public/upload/admin/1/M%C3%A1y%20chi%E1%BA%BFu%20Vivitek%20DX881ST%20(M%C3%A1y%20chi%E1%BA%BFu%20g%E1%BA%A7n).png', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:22:15', '2023-11-20 09:22:15', NULL, NULL),
(40, 116, 'Máy chiếu Vivitek Qumi Q3 Plus', 'may-chieu-vivitek-qumi-q3-plus', NULL, NULL, NULL, '<p>Công nghệ LED</p><p>Cường độ chiếu sáng: 500 Ansi Lumens</p><p>Độ tương phản: 5.000:1</p><p>Độ phân giải cao : WXGA (1280 x 800)</p><p>Độ phân giải nén: UXGA (1600 x 1200)</p><p>Tuổi thọ bóng đèn : 30,000 Hours</p><p>Cổng kết nối : HDMI/MHL ,Universal I/O (24-Pin Connector for VGA/Component Input), AV Mini-Jack, Mini-Jack</p><p>Audio-Out, USB (Type A)</p><p>Điều chỉnh góc nghiêng và chỉnh vuông hình : ± 40 độ Khoảng cách chiếu: 0.8 - 3mm ( 29\"-107\" )</p><p>Pin lưu điện 4-6 tiếng</p>', NULL, NULL, ';;', '/public/upload/admin/1/M%C3%A1y%20chi%E1%BA%BFu%20Vivitek%20Qumi%20Q3%20Plus.png', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:23:36', '2023-11-20 09:23:36', NULL, NULL),
(41, 116, 'MÁY CHIẾU VIEWSONIC LASER LS820', 'may-chieu-viewsonic-laser-ls820', NULL, NULL, NULL, '<p>Công nghệ : Laser DLP</p><p>Cường độ sáng:&nbsp; 4500 Ansi Lumens</p><p>Độ phân giải thực:&nbsp; Full HD (1920x1080)</p><p>Độ tương phản:&nbsp; 100 000:1</p><p>Độ phóng to hình ảnh: 70-150 inch (0.37 - 0.8m)</p><p>Zoom: Zoom cố định, lấy nét kỹ thuật số</p><p>Bóng đèn:&nbsp; 390W UHE, tuổi thọ 15,000 / 20,000 hours (Normal / Eco-mode)</p><p>Chỉnh lệch hình: +/-30</p><p>Cổng kết nối:&nbsp; HDMI (v1.4 with audio) (x1);&nbsp; HDMI 1.4/MHL 2.0 (x1); Audio Input (mini jack) (x1); Audio L/R (RCA x 2 Composite) (x1); Video (RCA) (x1); S-video(Mini DIN 4 pin) (x1); Component (RCAx3) (x1); 3D sync (IR3D) (x1); RGB Output: 15-pin mini D-Sub (x1); Audio Ouput (mini jack) (x1); 12 V Trigger (x1); USB 5V2A (micro USB cable on Dongle); USB A 5V2A; RJ45; RS232; USB (Type mini B) 5V2A</p>', NULL, NULL, ';;', '/public/upload/admin/2/M%C3%81Y%20CHI%E1%BA%BEU%20VIEWSONIC%20LASER%20LS820.jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:24:33', '2023-11-20 09:24:33', NULL, NULL),
(42, 116, 'MÁY CHIẾU VIEWSONIC PG800HD (MC HỘI TRƯỜNG)', 'may-chieu-viewsonic-pg800hd-mc-hoi-truong', NULL, NULL, NULL, '<p>Công nghệ: DLP&nbsp;</p><p>Cường độ sáng:&nbsp; 5000 Ansi Lumens</p><p>Độ phân giải thực:&nbsp; Full HD (1920 x 1080)</p><p>Độ tương phản:&nbsp; 50.000:1</p><p>Độ phóng to hình ảnh: 30 - 300 inch (0.9m – 11.3m)</p><p>Zoom: 1.3X</p><p>Lens Shift: Có</p><p>Bóng đèn:&nbsp; 370W UHE, tuổi thọ 2500 giờ</p><p>Chỉnh lệch hình: +/-40&nbsp;</p><p>Cổng kết nối: Cổng kết nối vào: HDMI 1.4 in x2; VGA in x2; Video x1; S-Video x1; Audio in x2; Audio RCA(L/R) x1</p><p>Cổng kết nối ra: VGA out x1; Audio out x1</p><p>Cổng điều khiển: Mini type B ;USB type A x1; 12V Trigger x1; 3D Vesa x1; RS232; LAN RJ45(cho phép điều khiển, TẮT máy chiếu thông qua mạng LAN)</p>', NULL, NULL, ';;', '/public/upload/admin/2/M%C3%81Y%20CHI%E1%BA%BEU%20VIEWSONIC%20PG800HD%20(MC%20H%E1%BB%98I%20TR%C6%AF%E1%BB%9CNG).jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:25:27', '2023-11-20 09:25:27', NULL, NULL),
(43, 116, 'MÁY CHIẾU VIEWSONIC PG800X', 'may-chieu-viewsonic-pg800x', NULL, NULL, NULL, '<p>Công nghệ: DLP&nbsp;</p><p>Cường độ sáng:&nbsp; 5000 Ansi Lumens</p><p>Độ phân giải thực:&nbsp; XGA (1024 x 768)</p><p>Độ tương phản:&nbsp; 5000:1</p><p>Độ phóng to hình ảnh: 30 - 300 inch (0.9m – 11.3m)</p><p>Zoom: 1.3X</p><p>Lens Shift: Có</p><p>Bóng đèn:&nbsp; 370W UHE, tuổi thọ 2500 giờ</p><p>Chỉnh lệch hình: +/-40&nbsp;</p><p>Cổng kết nối: HDMI 1.4 in x2; VGA in x2; Video x1; S-Video x1; Audio in(3.5) x2; Audio RCA(L/R) x1; 3D Vesa x1</p><p>Cổng kết nối ra: VGA out x1; USB type A (5V/2A) x1 ; Audio out( 3.5) x1</p><p>Cổng điều khiển: Mini type B; 12V Trigger x1; RS232; LAN RJ45(cho phép điều khiển, TẮT máy chiếu thông qua mạng LAN).</p>', NULL, NULL, ';;', '/public/upload/admin/2/M%C3%81Y%20CHI%E1%BA%BEU%20VIEWSONIC%20PG800HD%20(MC%20H%E1%BB%98I%20TR%C6%AF%E1%BB%9CNG).jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:43:29', '2023-11-20 09:43:29', NULL, NULL),
(44, 116, 'MÁY CHIẾU VIEWSONIC PX747-4K (Máy chiếu 4K)', 'may-chieu-viewsonic-px747-4k-may-chieu-4k', NULL, NULL, NULL, '<p>Công nghệ: DLP</p><p>Cường độ sáng: 3500 Ansi Lumens</p><p>Độ phân giải thực: 4K (3840 x 2160)</p><p>Độ tương phản: 12000:1</p><p>Độ phóng to hình ảnh: 30 - 300 inch (0.87m - 10.5m)</p><p>Bóng đèn: 190W UHE, tuổi thọ 15000 giờ</p><p>Chỉnh lệch hình: +/-40&nbsp;</p><p>Cổng kết nối: 02 HDMI; 01VGA in/01 VGA out/RS232/</p><p>Audio/USB mini/12V Trigger/USB Type A&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', NULL, NULL, ';;', '/public/upload/admin/2/M%C3%81Y%20CHI%E1%BA%BEU%20VIEWSONIC%20PX747-4K%20(M%C3%A1y%20chi%E1%BA%BFu%204K).png', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:44:17', '2023-11-20 09:44:17', NULL, NULL),
(45, 116, 'MÁY CHIẾU VIEWSONIC PX700HD', 'may-chieu-viewsonic-px700hd', NULL, NULL, NULL, '<p>Công nghệ: DLP</p><p>Cường độ sáng: 3500 Ansi Lumens</p><p>Độ phân giải thực: Full HD(1920x1080)</p><p>Độ tương phản: 22000:1</p><p>Độ phóng to hình ảnh: 30 - 300 inch (0.87m - 10.5m)</p><p>Bóng đèn: 210W UHE, tuổi thọ 15000 giờ</p><p>Chỉnh lệch hình: +/-40&nbsp;</p><p>Cổng kết nối: HDMI/VGA/Audio/Video/RS232/USB mini&nbsp;&nbsp;</p>', NULL, NULL, ';;', '/public/upload/admin/2/M%C3%81Y%20CHI%E1%BA%BEU%20VIEWSONIC%20PX747-4K%20(M%C3%A1y%20chi%E1%BA%BFu%204K).png', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:45:00', '2023-11-20 09:45:00', NULL, NULL),
(46, 116, 'MÁY CHIẾU VIEWSONIC PA503W', 'may-chieu-viewsonic-pa503w', NULL, NULL, NULL, '<p>Công nghệ: DLP</p><p>Cường độ sáng: 3600 Ansi Lumens</p><p>Độ phân giải thực: WXGA(1280x800)</p><p>Độ tương phản: 22000:1</p><p>Độ phóng to hình ảnh: 30 - 300 inch (0.87m - 10.5m)</p><p>Bóng đèn: 190W UHE, tuổi thọ 15000 giờ</p><p>Chỉnh lệch hình: +/-40&nbsp;</p><p>Cổng kết nối:01Video/HDMI/02VGA in/01 VGA out/RS232/Audio/USB mini&nbsp; &nbsp; &nbsp;</p>', NULL, NULL, ';;', '/public/upload/admin/2/M%C3%81Y%20CHI%E1%BA%BEU%20VIEWSONIC%20PA503W.jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:46:05', '2023-11-20 09:46:05', NULL, NULL),
(47, 116, 'MÁY CHIẾU VIEWSONIC PS501X (Máy chiếu gần)', 'may-chieu-viewsonic-ps501x-may-chieu-gan', NULL, NULL, NULL, '<p>Công nghệ: DLP (Máy chiếu gần)</p><p>Cường độ sáng: 3500 Ansi Lumens</p><p>Độ phân giải thực: XGA (1024 x 768)</p><p>Độ tương phản: 22000:1</p><p>Độ phóng to hình ảnh: 30 - 300 inch (0.87m - 10.5m)</p><p>Bóng đèn: 190W UHE, tuổi thọ 15000 giờ</p><p>Chỉnh lệch hình: +/-40</p><p>Cổng kết nối: 01 HDMI; 01Video/02VGA in/01 VGA out/RS232/</p><p>Audio/USB mini&nbsp; &nbsp;</p>', NULL, NULL, ';;', '/public/upload/admin/2/M%C3%81Y%20CHI%E1%BA%BEU%20VIEWSONIC%20PS501X%20(M%C3%A1y%20chi%E1%BA%BFu%20g%E1%BA%A7n).png', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:47:10', '2023-11-20 09:47:10', NULL, NULL),
(48, 116, 'MÁY CHIẾU VIEWSONIC M1', 'may-chieu-viewsonic-m1', NULL, NULL, NULL, '<p><strong>Công nghệ: LED DLP</strong></p><p>Cường độ sáng: 250 Ansi Lumens</p><p>Độ phân giải thực: 480 x 854</p><p>Độ tương phản: 120.000:1</p><p>Độ phóng to hình ảnh: 24 - 100 inch )</p><p>Bóng đèn: tuổi thọ 30000 giờ</p><p>Chỉnh vuông hình: Tự động theo chiều dọc</p><p>Loa: Harman Kardon 3w x 2</p><p>Pin lưu điện 4 tiếng</p><p>Chân đế thông minh xoay 360 độ</p><p>Cổng kết nối:01HDMI; 01 USB type C; 01 USB type A; &nbsp;SD card</p>', NULL, NULL, ';;', '/public/upload/admin/2/M%C3%81Y%20CHI%E1%BA%BEU%20VIEWSONIC%20M1.jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:48:04', '2023-11-20 09:48:04', NULL, NULL),
(49, 116, 'MÁY CHIẾU VIEWSONIC PA502XP', 'may-chieu-viewsonic-pa502xp', NULL, NULL, NULL, '<p>Công nghệ: DLP</p><p>Cường độ sáng: <strong>3500 </strong>Ansi Lumens</p><p>Độ phân giải thực: XGA(1024x768)</p><p>Độ tương phản: <strong>22000:1</strong></p><p>Công nghệ xử lý màu sắc: SuperColor</p><p>Độ phóng to hình ảnh: 30 - 300 inch (0.87m-10.5m)</p><p>Bóng đèn: 190W UHE, tuổi thọ 15000 giờ</p><p>Chỉnh lệch hình: +/-40</p><p>Cổng kết nối: 01HDMI/01VGA in /RS232/Video/USB mini/USB type A (power).</p><p>Máy chiếu tương thích với công nghệ trình chiếu 3D mượt mà.</p><p>Tính năng Quich Power Off cho phép người dùng tắt máy và rút nguồn ngay, không cần chờ thời gian làm mát&nbsp;</p>', NULL, NULL, ';;', '/public/upload/admin/2/M%C3%81Y%20CHI%E1%BA%BEU%20VIEWSONIC%20PA502XP.jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:49:51', '2023-11-20 09:49:51', NULL, NULL),
(50, 116, 'MÁY CHIẾU VIEWSONIC PA502SP', 'may-chieu-viewsonic-pa502sp', NULL, NULL, NULL, '<p>Công nghệ: DLP</p><p>Cường độ sáng: 3500 Ansi Lumens</p><p>Độ phân giải thực: S-VGA (800x600)</p><p>Độ tương phản: 22000:1</p><p>Công nghệ xử lý màu sắc: SuperColor</p><p>Độ phóng to hình ảnh: 30 - 300 inch (0.87m-10.5m)</p><p>Bóng đèn: 190W UHE, tuổi thọ 15.000 giờ</p><p>Chỉnh lệch hình: +/-40</p><p>Cổng kết nối:01HDMI/01VGA in /RS232/Video/USB mini/USB type A (power)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>Máy chiếu tương thích với công nghệ trình chiếu 3D mượt mà.</p><p>Tính năng Quich Power Off cho phép người dùng tắt máy và rút nguồn ngay, không cần chờ thời gian làm mát</p>', NULL, NULL, ';;', '/public/upload/admin/2/M%C3%81Y%20CHI%E1%BA%BEU%20VIEWSONIC%20PA502XP.jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:51:03', '2023-11-20 09:51:03', NULL, NULL),
(51, 116, 'Sạc dự phòng', 'sac-du-phong', NULL, NULL, NULL, '<p>1.Brand: Kedi\r\n</p><p>2.Capacity:10000mah\r\n</p><p>3.Type Battery: Polymer Lithium-Ion Battery &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n</p><p>4.Marterial:PLASTIC\r\n</p><p>5.Size:135*73*18.6mm &nbsp; &nbsp;&nbsp;</p><p>\r\n6.weight:350g &nbsp; &nbsp; &nbsp;&nbsp;</p><p>\r\n7.Input:5V/2.1A &nbsp;;5V/750MA &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>\r\n8.Output:5V/1A;5V/1A</p>', NULL, NULL, ';;', '/public/upload/admin/2/S%E1%BA%A1c%20d%E1%BB%B1%20ph%C3%B2ng.png', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-20 09:51:44', '2023-11-20 09:54:29', NULL, NULL),
(52, 118, 'Phần mềm quản lý ngân sách', 'phan-mem-quan-ly-ngan-sach', NULL, NULL, 'Phần mềm Quản lý kế hoạch là một hệ thống thông tin trực tuyến phục vụ công tác lập kế hoạch, báo cáo kế hoạch và điều hành kế hoạch phù hợp cho nhiều mô hình đơn vị, tổ chức khác nhau như: các đơn vị sự nghiệp, các trường đại học, tổ chức giáo dục, các sở, ban ngành…', '<p>Phần mềm Quản lý kế hoạch là một hệ thống thông tin trực tuyến phục vụ công tác lập kế hoạch, báo cáo kế hoạch và điều hành kế hoạch phù hợp cho nhiều mô hình đơn vị, tổ chức khác nhau như: các đơn vị sự nghiệp, các trường đại học, tổ chức giáo dục, các sở, ban ngành…</p><p>Là phần mềm theo dõi thực hiện chỉ tiêu kế hoạch ngân sách&nbsp;n Phần mềm Quản lý kế hoạch là một hệ thống thông tin trực tuyến phục vụ công tác lập kế hoạch, báo cáo kế hoạch và điều hành kế hoạch phù hợp cho nhiều mô hình đơn vị, tổ chức khác nhau như: các đơn vị sự nghiệp, các trường đại học, tổ chức giáo dục, các sở, ban ngành…<br><strong>MỘT SỐ CHỨC NĂNG CHÍNH CỦA HỆ THỐNG</strong></p><p>- Quản lý các chỉ tiêu, nhóm chỉ tiêu, năm kế hoạch một cách linh hoạt thuận lợi.<br>- &nbsp;Cung cấp các chức năng giúp cho các đơn vị có thể thực hiện báo cáo tình hình thực hiện theo từng quý một cách trực tuyến.<br>- &nbsp;Cung cấp các bảng báo cáo chi tiết, tổng hợp giúp cho lãnh đạo đơn vị có được các số liệu cập nhật mới nhất về tình hình thực hiện kế hoạch từ đó có thể đưa ra các &nbsp;quyết định điều hành được chính xác và nhanh chóng.</p>', NULL, NULL, ';;', '/public/upload/admin/2/Ph%E1%BA%A7n%20m%E1%BB%81m%20qu%E1%BA%A3n%20l%C3%BD%20ng%C3%A2n%20s%C3%A1ch.jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-21 03:43:12', '2023-12-01 09:56:26', NULL, NULL),
(53, 118, 'Phần mềm quản lý đào tạo', 'phan-mem-quan-ly-dao-tao', NULL, NULL, 'Phần mềm triển khai trên nền web, cho phép quản lý mọi lúc, mọi nơi. Giao diện sử dụng đơn giản, tiện dụng. Quản lý khoa học tiết kiệm thời gian và chi phí.', '<h2><strong>Phần mềm quản lý đào tạo</strong></h2><p>Phần mềm triển khai trên nền web, cho phép quản lý mọi lúc, mọi nơi. Giao diện sử dụng đơn giản, tiện dụng. Quản lý khoa học tiết kiệm thời gian và chi phí.</p><p>Phần mềm quản lý đào tạo của Newway được phát triển nhằm đáp cung cấp giải pháp về quản lý, tổ chức đào tạo đại học, sau đại học của các đơn vị đào tạo. Phần mềm có khả năng đáp ứng nhu cầu đào tạo theo cả niên chế và tín chỉ.</p><figure class=\"table\"><table><tbody><tr><td><p><strong>Bao gồm các chức năng chính:</strong></p><p>- Quản lý chương trình đào tạo</p><p>- Quản lý giáo viên</p><p>- Quản lý học sinh, sinh viên</p><p>- Quản lý ký túc xá</p><p>- Quản lý học vụ</p><p>- Quản lý khen thưởng</p><p>- Quản lý học phí</p><p>- Theo dõi giảng dạy</p><p>- Tổ chức thi&nbsp;</p><p>- Quản lý điểm</p><p>- Quản lý lịch học và thời khóa biểu</p></td><td><p><strong>Sản phẩm của chúng tôi</strong></p><p>&nbsp;</p><p>Hệ Thống Quản Lý Giáo Dục Chuyên Nghiệp bao gồm những module quản lý hệ<br>thống đào tạo cho trường Đại học, Cao Đẳng, Trung cấp và cao đẳng nghề, các module<br>được thiết kế thực hiện từng chức năng riêng biệt từ khâu tuyển sinh, đóng học phí<br>đến theo dõi quá trình học tập của học sinh tại trường.<br> Hệ thống được phân quyền linh hoạt, mỗi cá nhân sử dụng tùy theo chức trách nhiệm<br>vụ chỉ được thực hiện chính xác công việc được yêu cầu trên hệ thống, giúp nhà Quản<br>trị quản lý thống nhất hệ thống phân quyền nhân sự của đơn vị mình. Các chức năng<br>hỗ trợ, tìm kiếm, thống kê … giúp khai thác dữ liệu một cách hiệu quả. Hệ thống được<br>đồng bộ khoa học tạo môi trường liên kết nghiệp vụ giữa các phòng ban; đơn vị đào<br>tạo, tiết kiệm thời gian và chi phí luân chuyển văn bản hành chánh. Dữ liệu tập trung<br>giúp nhà quản lý có thể kiểm tra bất cứ thời điểm nào một cách chính xác và thuận<br>tiện.</p></td></tr></tbody></table></figure>', NULL, NULL, ';;', '/public/upload/admin/2/Ph%E1%BA%A7n%20m%E1%BB%81m%20qu%E1%BA%A3n%20l%C3%BD%20%C4%91%C3%A0o%20t%E1%BA%A1o.png', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-21 03:45:39', '2023-11-21 03:45:39', NULL, NULL),
(54, 118, 'Hệ thống Quản lý Gara Ô tô', 'he-thong-quan-ly-gara-o-to', NULL, NULL, 'Phần mềm quản lý gara ô tô của Newway được thiết kế để triển khai trên nền tảng điện toán đám mây, cho phép Người quản lý garage oto có thể theo dõi và điều hành được hoạt động kinh doanh của đơn vị mình mọi lúc, mọi nơi qua internet.', '<h2><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>Hệ thống Quản lý Gara Ô tô</strong></span></h2><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">&nbsp;* Phần mềm quản lý gara ô tô của Newway được thiết kế để triển khai trên nền tảng điện toán đám mây, cho phép Người quản lý garage oto có thể theo dõi và điều hành được hoạt động kinh doanh của đơn vị mình mọi lúc, mọi nơi qua internet.</span></p><p>&nbsp;</p><p><span class=\"text-big\" style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>Giao diện hiển thị thân thiện trên tất cả các loại thiết bị đầu cuối như PC, Laptop, Tablet, Mobile</strong></span></p><ul><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Phần mềm được xây dựng dựa trên kết quả khảo sát nghiệp vụ quản lý của nhiều Gara trên địa bàn Hà nội và một số tỉnh thành lân cận.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Bạn không cần phải đầu tư hạ tầng thiết bị, không cần phải mua phần mềm, chỉ với chi phí nhỏ hàng tháng bạn đã có thể sử dụng một công cụ quản lý toàn diện các hoạt động trong Garage của bạn. Ngay cả khách hàng của bạn cũng có thể sử dụng phần mềm để kiểm tra lịch sử sửa chữa tại Gara</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Bạn có thể trải nghiệm miễn phí bằng cách đăng ký với chúng tôi qua website này hoặc qua Email, điện thoại.</span></li></ul><h2><span class=\"text-tiny\" style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>Tính năng</strong></span></h2><ul><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quản lý thông tin Gara</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quản lý nhân viên</span><ul><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quản lý thông tin nhân viên</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quản lý các đơn vị bộ phận</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quản lý thời gian nhân viên</span></li></ul></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quản lý kho vật tư</span><ul><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quản lý danh mục vật tư</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Cập nhật thông tin vật tư</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quản lý nhật kho</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quản lý nhà cung cấp</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Kiểm kê vật tư</span></li></ul></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quản lý khách hàng</span><ul><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quản lý thông tin khách hàng</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Chăm sóc khách hàng</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quản lý công nợ</span></li></ul></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quản lý sửa chữa</span><ul><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Tiếp nhận xe vào gara</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quản lý thông tin xe</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quản lý danh sách xe</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Lập lệnh khám</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Lập đơn hàng sửa chữa</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Điều phối và quản lý nhân viên sửa chữa</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Lịch sử sửa chữa</span></li></ul></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Báo cáo thống kê</span><ul><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Báo cáo xuất nhập vật tư</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Báo cáo doanh thu tổng hợp, chi tiét</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Báo cáo tồn kho</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Báo cáo công nợ</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Báo cáo nhân công</span></li></ul></li></ul>', NULL, NULL, ';;', '/public/upload/admin/3/H%E1%BB%87%20th%E1%BB%91ng%20Qu%E1%BA%A3n%20l%C3%BD%20Gara%20%C3%94%20t%C3%B4.png', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-21 03:51:47', '2023-11-21 03:51:47', NULL, NULL),
(55, 118, 'Quản lý công văn, lịch làm việc', 'quan-ly-cong-van-lich-lam-viec', NULL, NULL, 'Quản lý công văn tài liệu của bạn một cách khoa học. Hệ thống cho phép bạn tùy biến nghiệp vụ quản lý của cơ sở mình. Tích hợp tính năng quản lý công việc cơ quan, công việc cá nhân và cho phép nhắc việc qua tin nhắn.', '<p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>Quản lý công văn tài liệu của bạn một cách khoa học. Hệ thống cho phép bạn tùy biến nghiệp vụ quản lý của cơ sở mình. Tích hợp tính năng quản lý công việc cơ quan, công việc cá nhân và cho phép nhắc việc qua tin nhắn.</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>1.</strong>&nbsp;Là một giải pháp phần mềm dùng trao đổi thông tin, điều hành tác nghiệp và quản lý công văn, văn bản, hồ sơ công việc trên mạng máy tính. Phần mềm được thiết kế với giao diện Website hoàn toàn tiếng Việt nên rất thân thiện với người sử dụng. Tiêu chí của Phần mềm là đưa đến cho người sử dụng phần lớn những tiện ích của mạng máy tính nhưng với một cách tiếp cận tự nhiên nhất, giúp người sử dụng dần có một tác phong làm việc hiện đại, hiệu quả, dễ dàng tiếp cận với các ứng dụng công nghệ thông tin hơn.</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>2.</strong>&nbsp;Thay đổi cách phân phối công văn và cách giao việc truyền thống bằng một giải pháp hiện đại: Từ máy tính của mình, văn thư cập nhật và phân phối công văn đến các bộ phận. Lãnh đạo các bộ phận xem xét công văn và phân chia công việc đến các nhân viên. Tìm kiếm tổng hợp công văn một cách nhanh chóng theo loại, nhóm, dự án, cơ quan ban hành…</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>3.</strong>&nbsp;Chuẩn hoá thông tin, chuẩn hoá quy trình làm việc chuyên nghiệp nhằm giảm thiểu thời gian và tiết kiệm chi phí trong quá trình hoạt động sản xuất, kinh doanh. Ngoài những khoản chi phí về giấy tờ và thời gian tiết kiệm được cho tổ chức có thể định lượng được bằng con số, một tài sản vô hình rất có giá trị được xác định thông qua quá trình khai thác. Đó chính là tài sản thông tin sẵn sàng cho mọi thành viên trong tổ chức khai thác một cách dễ dàng và tiện lợi phục vụ cho quá trình ra quyết định một cách nhanh chóng, chính xác.</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>4.</strong>&nbsp;Xây dựng doanh nghiệp đuợc tổ chức chuyên nghiệp: Thống nhất và tin học hoá các quy trình hoạt động, lưu trữ, trao đổi, tìm kiếm, xử lý thông tin nhằm nâng cao chất lượng và hiệu quả công việc. Tạo môi trường trao đổi ý kiến, thảo luận, chia sẻ thông tin rộng rãi, nhanh chóng, đầy đủ, kịp thời góp phần rất tích cực trong việc phát triển văn hóa doanh nghiệp. Mọi người sẽ giao tiếp với nhau, hiểu biết, gần gũi nhau hơn.</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>5.</strong>&nbsp;Đối với các đơn vị hành chính, việc ứng dụng phần mềm Cloud Office đã thay đổi được tư duy làm việc theo kiểu thủ công sang việc ứng dụng công nghệ thông tin trong công tác quản lý, điều hành của từng cán bộ công chức từ đó nâng cao năng lực của cán bộ công chức, từng bước hiện đại hóa công tác văn phòng dần dần tiến tới thực hiện quản lý theo ISO điện tử và đây cũng chính là thực hiện chủ trương công nghiệp hóa. Hơn nữa việc ứng dụng Cloud Office là một nhân tố tích cực cho việc xây dựng Chính phủ điện tử.</span></p><p><span style=\"color:rgb(35,141,180);font-family:Arial, Helvetica, sans-serif;\"><strong>Việc ứng dụng hiệu quả Cloud Office sẽ giúp các cơ quan, tổ chức, doanh nghiệp:</strong></span></p><ul><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Tạo một văn phòng ảo, kết nối các văn phòng và tạo một kênh truyền thông nội bộ giúp truyền thông nhanh và thuận tiện hơn.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Tin học hóa hệ thống thông tin quản lý và điều hành cộng tác.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Tăng năng suất và hiệu quả lao động, giúp giảm chi phí hoạt động và quản lý.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Lưu trữ và tổ chức thông tin khoa học, tạo khả năng khai thác kho dữ liệu dùng chung và tạo lập tài sản cho tổ chức, chia sẻ tài nguyên tốt hơn và giảm rủi ro mất mát thông tin.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Hỗ trợ theo dõi tình trạng xử lý công việc, dự án và có thông tin đầy đủ để kịp thời khi ra quyết định.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Cung cấp các công cụ chuẩn hoá thông tin, văn bản, tài liệu, biểu mẫu. Là công cụ điều hành trực tuyến và làm việc từ xa.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Là môi trường để các thành viên chia sẻ tri thức với nhau.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Xây dựng một nét văn hoá mới, giúp bỏ đi thói quen làm việc trên các phương tiện thủ công, xây dựng một môi trường làm việc chuyên nghiệp và ưu việt hơn.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Tiết kiệm thời gian và chi phí.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Giảm bớt thời gian tìm kiếm thời gian tìm kiếm thông tin.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Giảm bới thời gian quản lý và điều hành.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Giảm bớt thời gian đào tạo nhân viên mới.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Giảm bớt thời gian hướng dẫn các quy trình tác nghiệp lặp đi lặp lại.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Giảm bới chi phí in ấn và giấy tờ.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Giảm bớt chi phí đầu tư cho nhiều phần mềm đơn lẻ.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Chi phí đầu tư cho nhiều phần mềm đơn lẻ.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Giảm chi phí về nguồn lực</span></li></ul><p><span style=\"color:rgb(255,0,0);font-family:Arial, Helvetica, sans-serif;\"><strong>Phần mềm đang được triển khai cho các đơn vị khách hàng với chi phí : 1.500.000 / 1 User</strong></span></p>', NULL, NULL, ';;', '/public/upload/admin/3/Qu%E1%BA%A3n%20l%C3%BD%20c%C3%B4ng%20v%C4%83n%2C%20l%E1%BB%8Bch%20l%C3%A0m%20vi%E1%BB%87c.jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-21 03:54:25', '2023-11-21 03:54:25', NULL, NULL),
(56, 118, 'Giải pháp quản lý đội xe trên thiết bị di dộng', 'giai-phap-quan-ly-doi-xe-tren-thiet-bi-di-dong', NULL, NULL, 'Thông qua phần mềm quản lý thông minh trên điện thoại di động hoặc máy tính bảng, sẽ giúp tổ chức/doanh nghiệp quản lý và phân công đội xe chuyên nghiệp và tiết kiệm chi phí quản lý, cập nhật tình trạng hàng hóa vận chuyển, tính công lái xe. Với việc triển khai những modun và khả năng mở rộng theo yêu cầu, hệ thống sẽ tăng cường tính năng cho việc tích hợp quản lý hệ thống với các phần mềm quản lý khác.', '<p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Thông qua phần mềm quản lý thông minh trên điện thoại di động hoặc máy tính bảng, sẽ giúp tổ chức/doanh nghiệp quản lý và phân công đội xe chuyên nghiệp và tiết kiệm chi phí quản lý, cập nhật tình trạng hàng hóa vận chuyển, tính công lái xe. Với việc triển khai những modun và khả năng mở rộng theo yêu cầu, hệ thống sẽ tăng cường tính năng cho việc tích hợp quản lý hệ thống với các phần mềm quản lý khác.</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tính năng chính</strong></span></p><ul><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quản lý thông tin lịch chạy xe, điểm xuất phát, điểm trả hàng, vị trí cần nhận hàng, bản đồ dẫn đường.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Chức năng định vị, giám sát vị trí xe và các trạng thái do tài xế checkin/checkout</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Dự tính các loại phí như: phí vận chuyển, tính tiền công lái xe</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Báo cáo trạng thái đơn vận, đã giao hàng hoặc chưa giao hàng, xe còn trống hay xe đã đủ tải, chủ hàng hóa, xin trợ giúp khi trục trặc trên đường.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Gửi thông tin báo cho tài xế mà không cần kết nối với hệ thống tổng đài... giúp doanh nghiệp giảm chi phí thuê tổng đài, chi phí điện thoại, SMS...</span></li></ul><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cách thức triển khai</strong></span></p><ul><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Bước 1: khảo sát yêu cầu của tổ chức/ doanh nghiệp.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Bước 2: đề xuất giải pháp tổng thể cho tổ chức/ doanh nghiệp duyệt.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Bước 3: cập nhật lại yêu cầu của tổ chức/ doanh nghiệp (nếu có)</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Bước 4: lên kế hoạch triển khai (theo mô hình cung cấp trọn giải pháp hoặc mô hình cloud doanh nghiệp đăng ký người dùng và tài khoản quản trị).</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Bước 5: đàm phán hợp đồng cung cấp giải pháp, thực hiện tạm ứng/ đặt cọc.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Bước 6: triển khai, cài đặt phần mềm, phần cứng (nếu theo hướng mua trọn giải pháp).</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Bước 7: bàn giao và đào tạo cho cán bộ quản lý, quản trị hệ thống.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Bước 8: thanh toán hợp đồng.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Bước 9: bảo trì, bảo dưỡng định kỳ, hỗ trợ online theo yêu cầu.</span></li></ul>', NULL, NULL, ';;', '/public/upload/admin/3/Gi%E1%BA%A3i%20ph%C3%A1p%20qu%E1%BA%A3n%20l%C3%BD%20%C4%91%E1%BB%99i%20xe%20tr%C3%AAn%20thi%E1%BA%BFt%20b%E1%BB%8B%20di%20d%E1%BB%99ng.png', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-21 03:56:55', '2023-11-21 03:56:55', NULL, NULL);
INSERT INTO `tb_products` (`id`, `taxonomy_id`, `title`, `alias`, `gia`, `giakm`, `mota`, `chitiet`, `diemban`, `giayto`, `hienthi`, `image`, `image_thumb`, `view`, `iorder`, `tinhtrang`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `admin_created_id`, `admin_updated_id`, `json_params`, `created_at`, `updated_at`, `soluong`, `soluongconlai`) VALUES
(57, 119, 'Website doanh nghiệp', 'website-doanh-nghiep', NULL, NULL, 'Khi đặt vấn đề thiết kế website cho doanh nghiệp của bạn, thường bạn hay lúng túng không biết bắt đầu từ đâu. Hàng loạt câu hỏi đặt ra trong đầu bạn: Các đối thủ cạnh tranh có website như thế nào? Website của họ có đẹp không, hữu ích không? Họ làm thế nào để thu hút khách hàng? Và website của Công ty mình sẽ có những tác dụng gì?...', '<p>&nbsp;</p><p>Khi đặt vấn đề thiết kế website cho doanh nghiệp của bạn, thường bạn hay lúng túng không biết bắt đầu từ đâu. Hàng loạt câu hỏi đặt ra trong đầu bạn: Các đối thủ cạnh tranh có website như thế nào? Website của họ có đẹp không, hữu ích không? Họ làm thế nào để thu hút khách hàng? Và website của Công ty mình sẽ có những tác dụng gì?...</p><p style=\"text-align:justify;\">Bạn đừng lo lắng. Băn khoăn của bạn là rất phổ biến. Bạn hãy tham khảo ý kiến tư vấn của chúng tôi dưới đây. Các vấn đề sẽ được làm sáng tỏ.<br><br><strong>A - MỘT WEBSITE DOANH NGHIỆP SẼ CÓ TÍNH NĂNG CƠ BẢN NÀO?</strong><br><br>Điều đó còn phụ thuộc vào việc Công ty bạn hoạt động sản xuất kinh doanh trong lĩnh vực nào; nhưng cơ bản website Công ty bạn cần có các Module sau đây (mỗi module sẽ thực hiện đảm trách một tính năng nào đó của website).<br><br>Sau khi website được Gamma NT thiết kế và xây dựng xong, bạn có thể điều khiển, tùy biến, cập nhật nội dung các module thông qua trình:&nbsp;<strong>Content Manager – Trình Quản lý nội dung.</strong><br><br>Theo thời gian, Website của bạn có lượng thông tin nhiều, đa dạng, được chia thành nhiều loại tin (văn bản, bảng biểu, hình ảnh, video clip, âm thanh…). Thông tin được tổ chức phân chia theo nhiều nhóm, nhiều cấp. Số nhóm, số cấp được chia là không hạn chế, việc phân nhóm do người dùng tự tổ chức sao cho phù hợp với đặc thù của Công ty mình.<br><br><strong>Trình Quản lý nội dung</strong>&nbsp;sẽ giúp bạn thực hiện các công việc sau đây:<br><br><strong>1. Tính năng cập nhật thông tin (News – Tin tức):</strong><br><br>Cho phép bạn cập nhật, thay đổi, sửa, xóa thông tin. Thông tin được tổ chức theo cấu trúc mà bạn và người quản trị nội dung phải có kế hoạch thiết kế và tổ chức. Điều này là rất quan trọng, để đảm bảo thông tin bạn đưa lên website mạch lạc, đúng ý đồ mục tiêu của bạn.<br><br>Mức độ phân cấp và các nhóm News có thể tùy biến theo yêu cầu và ý định của người nhập liệu.<br><br><strong>2. Tính năng quản lý sản phẩm (Cataloge/Shopping Card):</strong><br><br>Trường hợp Công ty của bạn kinh doanh nhiều loại sản phẩm, bạn phải giới thiệu sản phẩm đó càng trực quan càng tốt. Không có công cụ nào hữu hiệu bằng việc bạn đưa thông tin của sản phẩm lên website, với các mô tả chi tiết, cụ thể, trực quan hơn bằng hình ảnh và video clip.<br><br>Nếu Website cần quản lý các sản phẩm với số lượng nhiều. Sản phẩm được tổ chức phân chia không hạn chế thành nhiều nhóm, nhiều cấp.<br><br><strong>3. Tính năng Quản lý đơn hàng:</strong><br><br>Thống kê các đơn hàng; Tổng hợp Doanh thu có được từ các đơn hàng trên website của công ty; Cập nhật các đơn hàng mới; Xem xét chi tiết và chỉnh sửa một số các đơn hàng như: giá cả, phương thức, thời điểm thanh toán,… Tính năng này cho một hình dung tuyệt vời về hoạt động của Công ty bạn hàng ngày, hàng tuần, hàng tháng…<br><br><strong>4. Tính năng Quản lý khách hàng:</strong><br><br>Quản lý các thông tin giao dịch của khách hàng: Thông tin khách hàng,đơn hàng, số lượng hàng hóa bán ra. Quản lý chi tiết hàng hóa và công nợ của khách hàng theo các tiêu thức quản trị tùy chọn. Bạn sẽ có các thống kê và phân loại ra được ai là khách hàng tiềm năng đem lại doanh số cho Công ty của bạn.<br><br><strong>5. Tính năng Quản lý Dự án:</strong>&nbsp;Nếu Công ty bạn có nhiều dự án, tính năng này sẽ hứu ích đối với bạn.<br><br>Quản lý các tài nguyên của các dự án: nguồn lực thực hiện dự án, các tài sản công ty phục vụ dự án,…<br><br>Quản lý công việc dự án, Tiến độ dự án: theo dõi tiến độ thực các công việc dự án.<br><br><strong>6. Thư viện điện tử - Tài liệu tải về:</strong><br><br>Được thiết kế như một thư viện lưu trữ tất cả các hồ sơ tài liệu của Doanh nghiệp như:&nbsp; văn bản pháp quy, công văn, hồ sơ dự án, hợp đồng, tài liệu kỹ thuật và các loại tài liệu khác…&nbsp; cho phép người sử dụng tra cứu phục vụ cho công việc; Giúp người dùng có thể đọc trực tiếp trên website hoặc download về.<br><br>Việc truy cập thư viện có thể được phân quyền với 1 số đối tượng như sau:<br><br>- Thư viện cho khách hàng: các tài liệu kỹ thuật, cataloge sản phẩm…<br>- Thư viện cho nội bộ: các tài liệu tham khảo nội bộ, tùy bộ phận chuyên môn được tiếp cận loại tài liệu nào.<br>- Quyền truy cập của lãnh đạo quản lý: cao nhất, có thể truy cập kiểm tra bất cứ tài liệu nào.<br><br>Ngoài ra các tính năng cơ bản sau thường được tích hợp trong website của bạn:<br><br><strong>7. Tính năng Quản lý các tư liệu hình ảnh, âm thanh</strong><br><br><strong>8. Tính năng Quản lý các tư liệu video clip</strong><br><br><strong>9. Tính năng phản hồi thông tin từ độc giả</strong><br><br><strong>10. Sơ đồ website (Sitemap)</strong><br><br>Và các tính năng khác theo yêu cầu…</p><figure class=\"image\"><img src=\"/public/upload/admin/3/sitemap-la-gi-01-1024x867.jpg\" alt=\"\"></figure><p>&nbsp;</p><p><strong>B - CÁC TIỆN ÍCH HỖ TRỢ WEBSITE</strong><br><br><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);font-family:Arial, Helvetica, sans-serif;\">Các tiện ích hỗ trợ là không bắt buộc, tùy theo nhu cầu của bạn để nhà thiết kế và lập trình của Gamma NT có thể đưa tính năng này lên website của bạn:</span><br><br><strong>1. Thống kê (Statitics):</strong><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);font-family:Arial, Helvetica, sans-serif;\">&nbsp;Tiện ích cho phép theo dõi hoạt động của Website, thống kê báo cáo thời gian, địa điểm, số lượt khách hàng truy cập trên website, từ khoá tìm kiếm, hiệu quả các đường link…</span><br><br><strong>2. Liên kết (Weblink):&nbsp;</strong><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);font-family:Arial, Helvetica, sans-serif;\">Cho phép đặt liên kết đến các website khác theo các tiêu chí khác nhau: Lĩnh vực hoat động, quan hệ, đối tác, khách hàng… Mục đích trao đổi, tạo nhiều liên kết từ website đến các trang web khác và ngược lại.</span><br><br><strong>3. Tìm kiếm (Search):&nbsp;</strong><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);font-family:Arial, Helvetica, sans-serif;\">Công cụ tra cứu nhanh các thông tin trên website, giúp khách hàng giảm thiểu thời gian truy cập. Có thể tìm kiếm theo nhiều tiêu chí.</span><br><br><strong>4. Thông tin liên hệ (Form Contact):&nbsp;</strong><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);font-family:Arial, Helvetica, sans-serif;\">Form Liên hệ động cho phép tuỳ biến đáp úng mọi yêu từ phía khách hàng. Khách hàng có thể liên hệ, giao dịch trực tiếp với Công ty thông qua Form liên hệ. Các thông tin liên hệ được website lưu lại dưới dạng Cơ sở dữ liệu phục vụ cho việc chăm sóc và theo dói khách hàng.</span><br><br><strong>5. Thư điện tử (Webmail):&nbsp;</strong><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);font-family:Arial, Helvetica, sans-serif;\">Chức năng check và gửi mail trực tiếp trên trang Website của bạn. Công cụ tiện ích đặc biệt phù hợp với các Doanh nhân thường xuyên phài đi công tác xa.</span><br><br><strong>6. Bình chọn (Voting):&nbsp;</strong><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);font-family:Arial, Helvetica, sans-serif;\">Cho phép thu thập thông tin đánh giá, bình chọn trực tuyến các Sản phẩm, dịch vụ từ phía khách hàng, độc giả; chức năng thông kê báo cáo, là công cụ đắc lực của người Quản lý đánh giá, ra quyết định… trong thời đại bùng nổ thông tin hiện nay.</span><br><br><strong>7. Download:&nbsp;</strong><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);font-family:Arial, Helvetica, sans-serif;\">Công cụ hỗ trợ khách hàng hữu hiệu cho phép Download và upload các tiện ích, support khách hàng như: Báo giá, tài liệu chuyên môn, các file .dat, MP3 cùng các phần mềm tiện ích khác.</span><br><br><strong>8. FAQ - Hỏi đáp, Tư vấn:</strong><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);font-family:Arial, Helvetica, sans-serif;\">&nbsp;Giải đáp, trao đổi tất cả những thắc mắc, đưa những ý kiến hay về mặt kỹ thuật hay của Công ty lên trang Web,…điều này có thể làm sinh động thêm trang Web, thông qua đó có thể tư vấn, hỗ trợ kỹ thuật cho khách hàng, các đơn vị thành viên, giảm thiểu các chi phí chăm sóc và hỗ trợ khách hàng.</span><br><br><strong>C. CÁC TÍNH NĂNG THAM KHẢO</strong><br><br><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);font-family:Arial, Helvetica, sans-serif;\">Ngoài ra, để tăng tính tiện dụng, các chuyên gia Gamma NT sẽ tăng cường một số tính năng tham khảo tiện dụng, để bạn có thêm thông tin hàng ngày mà không mất nhiều thời gian cho việc tìm hiểu:</span><br><br><strong>1. Bảng giá chứng khoán:&nbsp;</strong><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);font-family:Arial, Helvetica, sans-serif;\">Nếu Công ty bạn lên sàn, đây là tính năng bắt buộc. Trên website của bạn, bạn có thể biết việc giao dịch mã chứng khoán của Công ty bạn và các Công ty khác liên quan như đối thủ cạnh tranh và các đơn vị cùng ngành, cùng lĩnh vực.</span><br><br><strong>2. Dự báo thời tiết</strong><br><br><strong>3. Giá vàng và ngoại tệ</strong><br><br><strong>4. Chỉ dẫn địa lý vị trí:&nbsp;</strong><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);font-family:Arial, Helvetica, sans-serif;\">Trụ sở và các chi nhánh của Công ty trên bản đồ của Google.</span><br><br><strong>5. Lịch Âm dương:</strong><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);font-family:Arial, Helvetica, sans-serif;\">&nbsp;Như một góc tâm linh, nhắc nhở bạn chọn ngày giờ tốt để ra quyết định đi lại, ký hợp đồng…</span><br><br><strong>6. Hỗ trợ trực tuyến:</strong><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);font-family:Arial, Helvetica, sans-serif;\">&nbsp;Link tới Yahoo Messinger, Skype, Facebook… nơi có các tư vấn trực tuyến của Công ty bạn đang sẵn sàng hỗ trợ khách hàng.</span><br><br><strong>7. Chia sẻ với mạng xã hội:&nbsp;</strong><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);font-family:Arial, Helvetica, sans-serif;\">Facebook, Twitter, Viber…</span><br><br><span style=\"background-color:rgb(255,255,255);color:rgb(102,102,102);font-family:Arial, Helvetica, sans-serif;\">Tất nhiên một website thông thường không cần phải đòi hỏi tất cả các tính năng này, chúng tôi sẽ giúp bạn chọn lựa và thiết kế các Module riêng phù hợp với yêu cầu và mô hình Doanh nghiệp bạn.</span></p>', NULL, NULL, ';;', '/public/upload/admin/3/Website%20doanh%20nghi%E1%BB%87p.jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-21 04:05:11', '2023-12-01 04:31:48', NULL, NULL),
(58, 119, 'Website thương mại điện tử', 'website-thuong-mai-dien-tu', NULL, NULL, 'Website thương mại điện tử được xây dựng giúp cho doanh nghiệp kinh doanh và mở rộng thị trường qua internet', '<p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Website thương mại điện tử được xây dựng giúp cho doanh nghiệp kinh doanh và mở rộng thị trường qua internet</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Website&nbsp;thương mại điện tử&nbsp;được xây dựng giúp cho doanh nghiệp kinh doanh và mở rộng thị trường qua internet, Những chức năng được đề nghị dưới đây gồm đủ các chức năng của một cửa hàng trực tuyến như: Sản phẩm, Giỏ hàng, Mua hàng, Thanh toán trực tuyến, Quản lý đơn hàng.&nbsp;Với những chức năng được xây dựng, doanh nghiệp có khả năng quản trị nội dung website như ý muốn. Không những thế với hệ thống mã nguồn tối ưu, thân thiện với công cụ tìm kiếm giúp cho công ty được biết đến nhiều hơn qua&nbsp;Google, Yahoo, Bing...</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Dưới đây là chức năng chúng tôi đề nghị (Doanh nghiệp có thể đề nghị thêm hoặc bớt các chức năng này)</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>1.Trang chủ theo yêu cầu</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quý khách có thể yêu cầu chúng tôi thiết kế trang chủ theo yêu cầu, bao gồm các sản phẩm mới, tin mới, giới thiệu công ty ...&nbsp; Làm banner flash theo yêu cầu.</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>2. Chức năng soạn thảo nội dung web</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Chức năng tương tự Microsoft Word cho phép người quản lý soạn thảo trang web, in đậm, nghiêng,font chữ, chèn bảng, ảnh flash, file, video , dán liên kết đến website khác...</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>3. Chức năng các trang giới thiệu</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Tạo các trang giới thiệu, tuyển dụng , download , thông báo... không giới hạn.</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>4.&nbsp;&nbsp;Chức năng dịch vụ</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Thêm mới không hạn chế, sửa chữa, tìm kiếm , sắp xếp, tạo danh mục không hạn chế số cấp , upload ảnh đại diện , đưa vào các thông tin như giá cả, bảo hành ...</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>5. Chức năng tin tức</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Thêm mới không hạn chế, sửa chữa, tìm kiếm , sắp xếp, tạo danh mục không hạn chế số cấp , upload ảnh đại diện, upload ảnh minh họa , đưa vào các thông tin như ngày&nbsp;đăng&nbsp;tác giả, các tin liên quan...</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>6. Chức năng sản phẩm</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Thêm mới không hạn chế, sửa chữa, tìm kiếm , sắp xếp,&nbsp;tạo danh mục không hạn chế số cấp ( Loại sản phẩm 1, loại sản phẩm 2 ...)&nbsp;, upload ảnh đại diện, upload ảnh minh họa , đưa vào các thông tin như giá cả, bảo hành, tình trạng kho ...</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>7. Chức năng tìm kiếm sản phầm</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Tìm kiếm đơn giản là tìm theo tên, theo dòng sản phẩm</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Tìm kiếm nâng cao kết hợp nhiều điều kiện như tên sản phẩm, khoảng giá trị, chức năng, nhà sản xuất, …</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>8. Chức năng giỏ hàng</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Khách hàng có thể chọn mua sản phẩm để cho vào giỏ, có thể bỏ bớt sản phẩm hoặc là hủy tất cả các sản phẩm đã có trong giỏ.</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Hệ thống tự động tính tiền cho khách</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>9.&nbsp;Chức năng đặt hàng</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Khách hàng có thể đặt những mặt hàng đã cho vào giỏ&nbsp; qua mạng, thông tin đặt hàng bao gồm: Họ tên, địa chỉ, điện thoại, email, địa chỉ giao hàng, thông tin các sản phẩm, tổng giá trị và có thể in đơn hàng nếu cần.</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Khi đặt hàng thì đơn hàng được xử lý như sau:</span></p><ul><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Thông tin đặt hàng sẽ được gửi email cho người quản trị.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Đơn đặt hàng được lưu trên hệ thống, Người quản trị sẽ xử lý đơn đặt hàng của khách hàng khi đăng nhập vào quyền quản trị web.</span></li><li><span style=\"font-family:Arial, Helvetica, sans-serif;\">Khi khách hàng đặt hàng thông tin đặt hàng sẽ đồng thời được gửi cho khách hàng và người quản trị website.</span></li></ul><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>10.&nbsp;Chức năng thanh toán trực tuyến</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Để tiện cho khách hàng hệ thống sẽ đưa ra nhiều hình thức thanh toán</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Khách hàng&nbsp;có thể thanh toán bằng chuyển khoản&nbsp;vào tài khoản ngân hàng bên bán. Khi nhận được tiền sẽ giao hàng.</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Khách hàng&nbsp;thanh toán bằng tiền mặt khi giao hàng.</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Khách hàng&nbsp;thanh toán bằng ví điện&nbsp;tử như: Paypal, nganluong.vn, mobivi.vn, baokim.vn (để thanh toán bằng ví điện tử thì khách hàng phải có toài khoản ví, khách hàng nạp tiền vào đó và mua hàng bằng tiền đó)</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Thanh toán&nbsp;trực tiếp bằng thẻ tín dụng, thẻ ghi nợ nội địa&nbsp;dùng cổng thanh toán Onepay Giá trị của đơn hàng được khách hàng thanh toán trực tiếp qua mạng bằng cách sử dụng các loại thẻ mang nhãn hiệu visa, matercard, thẻ ATM của ĐôngA bank, vietcombank,..</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>11.&nbsp;Chức năng đăng ký thành viên</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Đăng ký thành viên mới để được sử dụng đầy đủ tính năng của website và nhận được các ưu đãi khác như nhận thông tin khuyến mãi, giảm giá khi mua hàng…</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>12.&nbsp;Chức năng dành cho thành viên&nbsp;</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Nhận thông báo khi có khuyến mãi</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Xem danh sách các mặt hàng đã đặt</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Chỉnh sửa thông tin cá nhân</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Mua hàng</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Gửi yêu cầu cho quản trị</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Bình chọn sản phẩm</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>13. Chức năng Form liên hệ</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Tự động gửi thư vào hòm thư quản lý khi khách hàng nhập nội dung vào form và gửi&nbsp;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>&nbsp;14. Chức năng hỗ trợ trực tuyến</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Trả lời khách hàng ghé thăm website trực tuyến qua yahoo messenger, skype ...&nbsp;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>15. Chức năng thăm dò ý kiến</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Tạo các nội dung thăm dò ý kiến như thăm dò chất lượng dịch vụ, sản phẩm ...</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>16. Chức năng quản lý quảng cáo, banner, liên kết website</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quản lý quảng cáo, banner ảnh hoặc flash, trao đổi liên kết, dán liên kết tới các website khác&nbsp;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>17. Chức năng thống kê lượt xem, đếm số người đang truy cập</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Thống kê số lượt xem của các trang , lượt xem sản phẩm , lượt khách ghé thăm, số người đang xem, lượt xem trong ngày, trong tháng, trong năm, tổng số lượt ghé thăm.</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>18. Chức năng thời tiết, tỷ giá , giá vàng</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Tự động lấy tỷ giá , thời tiết, giá vàng từ các trang web nguồn, cung cấp thông tin chính xác cho người xem. &nbsp;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>19. Quản lý từ khóa tìm kiềm google</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Được đăng ký vào các bộ máy tìm kiếm như google, yahoo, ping, msm</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Người quản lý nhập từ khóa tìm kiếm cần thiết cho website, thay đổi các thẻ tìm kiếm, tiêu đề website, tăng thứ hạng cho website</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>20.&nbsp;Chức năng backup website</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Backup cơ sở dữ liệu website thông qua 1 nút bấm,download, khôi phục khi có sự cố , loại bỏ hoàn toàn rủi ro như hỏng máy chủ, hacker tấn công...</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>21. Chức năng quản lý nội dung website</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Cho phép quản trị toàn bộ nội dung thông tin website như: Giới thiệu, sản phẩm, dịch vụ, tin tức, tuyển dụng, liên hệ…</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>22.&nbsp;Chức năng quản lý thành viên</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Xem danh sách thành viên, thiết lập quyền sử dụng, xóa thành viên vi phạm</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>23.&nbsp;Các Chức năng quản lý bán hàng trực tuyến</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Cập nhật thông tin hàng hoá trực tuyến nhanh chóng, thuận tiện và dễ dàng:</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quản lý mua hàng trực tuyến (Online Shopping)</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quản lý các đơn đặt hàng trực tuyến (Order Management System)</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quản lý, lưu trữ và báo cáo các thông tin về đặt hàng và trạng thái của đơn hàng: đã giao hàng chưa, đã thanh toán chưa..</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Lưu trữ, thống kê các hoạt động gắn với các khách hàng của doanh nghiệp. Mọi hoạt động gắn với khách hàng và đơn hàng đều có thể thực hiện</span></p>', NULL, NULL, ';;', '/public/upload/admin/3/Website%20th%C6%B0%C6%A1ng%20m%E1%BA%A1i%20%C4%91i%E1%BB%87n%20t%E1%BB%AD.png', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-21 04:06:27', '2023-11-21 04:06:27', NULL, NULL),
(59, 119, 'Cổng thông tin điện tử', 'cong-thong-tin-dien-tu', NULL, NULL, 'NPortal là giải pháp công nghệ cổng thông tin tích hợp được NewWay xây dựng đặc biệt dành cho các cơ quan, tổ chức và doanh nghiệp có nhu cầu phát triển hệ thống thông tin tích hợp trên môi trường web nhằm thực hiện các giao dịch trực tuyến, cung cấp thông tin, giao tiếp, quản lý và điều hành tác nghiệp', '<p>NPortal là giải pháp công nghệ cổng thông tin tích hợp được NewWay xây dựng đặc biệt dành cho các cơ quan, tổ chức và doanh nghiệp có nhu cầu phát triển hệ thống thông tin tích hợp trên môi trường web nhằm thực hiện các giao dịch trực tuyến, cung cấp thông tin, giao tiếp, quản lý và điều hành tác nghiệp</p><p style=\"text-align:justify;\"><strong>GPortal&nbsp;</strong>là giải pháp công nghệ cổng thông tin tích hợp được <strong>Newway </strong>xây dựng đặc biệt dành cho các cơ quan, tổ chức và doanh nghiệp có nhu cầu phát triển hệ thống thông tin tích hợp trên môi trường web nhằm thực hiện các giao dịch trực tuyến, cung cấp thông tin, giao tiếp, quản lý và điều hành tác nghiệp …</p><p style=\"text-align:justify;\"><strong>Công nghệ xây dựng:</strong></p><ul><li style=\"text-align:justify;\">Hệ điều hành: Linux hoặc windows<br>» Hệ thống có thể chạy tốt cả trên Linux và Windows<br>» Hệ điều hành Linux: hệ điều hành với độ bảo mật cao, chạy trên nền công nghệ Load Balancing đáp ứng được số lượng truy cập lớn.</li><li style=\"text-align:justify;\">Webserver: IIS hoặc Apache</li><li style=\"text-align:justify;\">Ngôn ngữ lập trình: PHP</li><li style=\"text-align:justify;\">Hệ quản trị cơ sở dữ liệu: Mysql</li></ul><p style=\"text-align:justify;\"><strong>Các tính năng ưu việt của cổng thông tin</strong></p><ul><li style=\"text-align:justify;\">Tính hợp các công nghệ hiện đại: RSS, Ajax, Webservice, XML, XHML, hỗ trợ SEO (URL thân thiện; Đẩy từ khóa vào Title và các thẻ Keywords, Description, …), …;</li><li style=\"text-align:justify;\">Mở và mềm dẻo: Modules chức năng, dễ dàng tuỳ biến và nâng cấp;</li><li style=\"text-align:justify;\">Bảo toàn đầu tư lâu dài: Nhiều website Portal khác nhau chạy trên cùng 1 hệ CSDL và nền tảng công nghệ duy nhất;</li><li style=\"text-align:justify;\">Tương thích nhiều loại trình duyệt: Firefox, Internet Explorer… và các thiết bị di động: Smart phone, Pocket PC, Palm...</li><li style=\"text-align:justify;\">Hỗ trợ đa ngôn ngữ: Việt, Anh, Pháp, Trung, Nhật, Hàn Quốc… theo chuẩn Unicode;</li><li style=\"text-align:justify;\">Tích hợp hệ thống quản trị nội dung (CMS) mạnh, tạo môi trường làm việc cộng tác (work-flow) trên nền các Module chức năng; cho phép xuất bản nội dung theo các chuẩn công nghệ phổ biến: XML, RSS...</li><li style=\"text-align:justify;\">Dễ dàng thay đổi giao diện;</li><li style=\"text-align:justify;\">Cơ chế phân quyền tới từng module và theo nhóm người dùng;</li><li style=\"text-align:justify;\">Tích hợp chặt chẽ với các hệ thống thông tin khác: Mail Server, Intranet Portal… cho phép truy xuất tài nguyên mạng nội bộ và làm việc từ xa thông qua Internet;</li><li style=\"text-align:justify;\">Tương thích công nghệ Web Service nên dễ dàng tích hợp các ứng dụng khác không cùng công nghệ &amp; nền tảng kỹ thuật;</li><li style=\"text-align:justify;\">Bảo mật cao, cung cấp nhiều chế độ đăng nhập, hỗ trợ Open LDAP; khả năng đăng nhập một lần (Single Sign On) trên toàn hệ thống;</li><li style=\"text-align:justify;\">Đảm bảo an ninh, phòng chống hiệu quả các kỹ thuật tấn công qua mạng phổ biến: Injection, DoS, DDoS…</li></ul><p style=\"text-align:justify;\"><strong>Ngoài ra hệ thống cho phép xây dựng các tính năng, ứng dụng và dịch vụ đa dạng trên nền công nghệ GPortal:</strong></p><ul><li style=\"text-align:justify;\">Các ứng dụng, dịch vụ hành chính</li><li style=\"text-align:justify;\">Các ứng dụng, dịch vụ cộng tác: thư điện tử, diễn đàn, chat, calendar, survey, gửi tin nhắn SMS, …</li><li style=\"text-align:justify;\">Các ứng dụng, dịch vụ tiện ích:&nbsp;<br>» Cấu trúc website (Site Map)&nbsp;<br>» Các câu hỏi thường gặp (FAQ)&nbsp;<br>» Liên kết website (Web Links)&nbsp;<br>» Góp ý phản hồi (Feedback)&nbsp;<br>» Quản lý quảng cáo (Advertisement Management)&nbsp;<br>» Thư viện ảnh (Image Gallery)&nbsp;<br>» Thư viện đa phương tiện (Multimedia Library)&nbsp;<br>» Thống kê truy cập (Hit Counter)&nbsp;<br>» Thông tin thời tiết (Weather)&nbsp;<br>» Thông tin tỷ giá (Currency)&nbsp;<br>» Giá vàng (Gold)&nbsp;<br>» Hỗ trợ trực tuyến (Online support)</li><li style=\"text-align:justify;\">Và nhiều ứng dụng, dịch vụ, tiện ích theo yêu cầu khác;</li></ul>', NULL, NULL, ';;', '/public/upload/admin/3/C%E1%BB%95ng%20th%C3%B4ng%20tin%20%C4%91i%E1%BB%87n%20t%E1%BB%AD.png', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-21 04:07:35', '2023-11-21 04:07:35', NULL, NULL),
(60, 121, 'Tư vấn và Thiết kế hệ thống mạng', 'tu-van-va-thiet-ke-he-thong-mang', NULL, NULL, NULL, '<p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Với các chuyên gia có nhiều kinh nghiệm, chúng tôi cung cấp dịch vụ tư vấn, thiết kế và triển khai hệ thống mạng có tính tối ưu cao.</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Dịch vụ bao gồm:</span></p><ul><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Dịch vụ tư vấn thiết kế, thi công mạng nội bộ (LAN)</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Dịch vụ tư vấn thiết kế, thi công mạng diện rộng (WAN)</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Dịch vụ tư vấn thiết kế, thi công mạng Internet / Intranet</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Dịch vụ tư vấn thiết kế, thi công trung tâm tích hợp dữ liệu</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Dịch vụ tư vấn thiết kế, thi công các lớp bảo mật cho hệ thống mạng</span></li></ul><p style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>Lợi ích của Khách hàng:</strong></span></p><ul><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Tiết kiệm thời gian và chi phí, công sức khi phải tự mình thiết kế hoặc phải thu thiết kế riêng biệt cho từng phần của toàn bộ mô hình hệ thống</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Với tư cách là một đơn vị hoạt động trong lĩnh vực CNTT, chúng tôi có những quan hệ và cũng là đối tác trực tiếp với nhiều nhà phân phối của các hãng CNTT nổi tiếng của thế giới, chúng tôi có thể tích hợp các công nghệ tiên tiến và phù hợp nhất cho hệ thống của Quý khách hàng.</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quý khách hàng sẽ được hỗ trợ tư vấn chuyên nghiệp bởi đội ngũ các chuyên viên có kinh nghiệm tư vấn và thiết kế dự án, hệ thống thông tin.</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Quý khách hàng không những được tư vấn các giải pháp và mô hình hê%3ḅ thống đáp ứng với các nhu cầu hiện tại, chúng tôi còn hỗ trợ tư vấn cho Quý khách hàng khi có nhu cầu mở rộng hệ thống trong tương lai.</span></li></ul><p style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>Quy trình triển khai dịch vụ của chúng tôi như sau:</strong></span></p><h3 style=\"text-align:justify;\"><span class=\"text-tiny\" style=\"font-family:Arial, Helvetica, sans-serif;\">I. KHẢO SÁT &amp; THIẾT KẾ HỆ THỐNG</span></h3><p style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">1. Khảo sát &amp; ghi nhận thông tin khách hàng</span></p><ul><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Mục đích sử dụng của khách hàng và yêu cầu sử dụng thiết bị</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Khảo sát mặt bằng, kết cấu toà nhà và vị trí lắp đặt thiết bị</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Điều kiện thi công và chất lượng vật liệu thi công (cable, ống, nẹp….) Các điều kiện có thể ảnh hưởng đến hệ thống (điện, môi trường…)</span></li></ul><p style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">2. Thiết kế chi tiết</span></p><ul><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Vẽ kỹ thuật chi tiết hệ thống loại thiết bị được dùng (biểu giá, tính năng kỹ thuật, thời hạn bảo hành) bao gồm: Sơ đồ logic, sơ đồ lắp đặt…</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Số lượng vật tư và các linh kiện đi kèm</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Thời gian thi công</span></li></ul><h3 style=\"text-align:justify;\"><span class=\"text-tiny\" style=\"font-family:Arial, Helvetica, sans-serif;\">II. LẮP ĐẶT HỆ THỐNG</span></h3><p style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">1. Thi công hệ thống cáp mạng</span></p><ul><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Triển khai thiết bị dẫn (ống nhựa, nẹp, dây dẫn …)</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Triển khai hệ thống cáp mạng theo đúng sơ đồ thiết kế</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Đánh dấu dây cáp và kết nối vào bộ tập trung (Swich, Router, Firewall…)</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Gắn máy tính vào hệ thống mạng</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Gắn các thiết bị ngoại vi vào hệ thống mạng</span></li></ul><p style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">2. Cài đặt hệ thống mạng</span></p><ul><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Phân chia nhóm người dùng theo VLAN (chia hê%3ḅ thống ra thành các mạng con)</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Cấu hình Router, các giao thức định tuyến, load-balancing…</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Cấu hình tường lửa, tạo DMZ cho server</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Cài đặt hệ điều hành cho server</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Cài đặt giao thức và các dịch vụ mạng</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Tạo nhóm người dùng</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Thiết lập tài khoản của người dùng</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Phân quyền người dùng</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Cài đặt chương trình ứng dụng mạng</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Cài đăt giao thức các máy con</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Tạo tài khoản máy con</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Chia sẻ tài nguyên máy con</span></li></ul><h3 style=\"text-align:justify;\"><span class=\"text-tiny\" style=\"font-family:Arial, Helvetica, sans-serif;\">III. CHUYỂN GIAO HỆ THỐNG</span></h3><p style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">1. Nghiệm thu hệ thống và chuyển giao</span></p><ul><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Kiểm tra sự tương thích và tính ổn định của hệ thống</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Nghiệm thu hệ thống chuyển giao hồ sơ thiết bị (phiếu bảo hành, hoá đơn thanh toán…)</span></li><li style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">Chuyển giao hợp đồng thiết kế và lắp đặt, sơ đồ mạng</span></li></ul><p style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\">2. Hướng dẫn sử dụng hệ thống và đào tạo nhân sự.</span></p>', NULL, NULL, ';;', '/public/upload/admin/6/mang-lan-la-gi.jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-21 04:10:44', '2023-12-03 15:58:56', NULL, NULL);
INSERT INTO `tb_products` (`id`, `taxonomy_id`, `title`, `alias`, `gia`, `giakm`, `mota`, `chitiet`, `diemban`, `giayto`, `hienthi`, `image`, `image_thumb`, `view`, `iorder`, `tinhtrang`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `admin_created_id`, `admin_updated_id`, `json_params`, `created_at`, `updated_at`, `soluong`, `soluongconlai`) VALUES
(61, 122, 'Phần mềm dạy học Exsoft EX400', 'phan-mem-day-hoc-exsoft-ex400', NULL, NULL, 'Phần mềm Exsoft dùng trong hệ thống phòng học ngoại ngữ model EX400 dùng cho giáo viên', '<figure class=\"table\"><table><tbody><tr><td><p style=\"text-align:center;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>1</strong></span></p></td><td><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>Phần mềm Exsoft dùng trong hệ thống phòng học ngoại ngữ model EX400 dùng cho giáo viên</strong></span></td></tr><tr><td><p style=\"text-align:center;\">&nbsp;</p></td><td><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Phần mềm sẽ hỗ trợ soản thảo và giảng dạy bài giảng soạn trước do giáo viên biên soạn theo giáo trình.</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Quản lý lớp học và dạy học trực tiếp thông qua hệ thống truyền tải âm thanh, tài liệu từ giáo viên đến học viên.</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>Chức năng phần mềm:</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Phát màn hình (screen broadcast): Giáo viên có thể chia sẻ nội dung trên màn hình máy tính của mình tới toàn bộ học viên trong lớp học, đồng thời khoá tất cả máy tính học viên lại không để học viên có thể thoát ra khi giáo viên đang chia sẻ;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Phát giọng nói (Voice broadcast): Giáo viên có thể phát giọng nói của mình thông qua micro tới toàn bộ học viên;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Cuộc gọi riêng (Intercom): Giáo viên có thế nói chuyện với học viên bất kỳ mà các bạn còn lại không nghe được nội dung;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Học sinh phát biểu (Student speak): Giáo cho phép học viên bất kỳ phát biểu tới cả lớp;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Giám sát màn hình (Monitor): Giáo viên có thể xem nội dung hiển thị trên màn hình của bất kỳ học viên nào, có thể điều khiển trực tiếp máy tính của học viên, phát sóng nội dung của học viên tới cả lớp;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Demo học viên (Student demo): Giáo viên lựa chọn học viên bất kỳ để phát nội dung hình ảnh tới cả lớp đồng thời có thể điều khiển được máy tính của học viên đó;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Xoá học viên giơ tay (Dis call): Tất cả các học viên dơ tay giáo viên có thể xoá thông báo bằng một thao tác;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Đặt lại (All reset): Tất cả các thao tác giáo viên đang tương tác với học viên như: Giám sát màn hình, phát sóng âm thanh, phát sóng màn hình, demo học viên… đều có thể được giáo viên xoá bằng một thao tác;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>Chế độ xem</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Giao diện chính: Xem lớp học tại chế độ chính bao ngồm màn hình học viên, tên học viên, ảnh đại diện, vị trí ngồi của học viên;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Trạng thái học viên: Xem thông tin của học viên khi kết nối với giáo viên như: đia chỉ IP, tên máy tính, tên đăng nhập phần mềm, vị trí chỗ ngồi của học viên…;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Kiểm soát học viên: Giáo viên có thể kiểm soát học viên với các mục: Ứng dụng, USB, dĩa CD. Giáo viên cài đặt các ứng dụng được phép hoặc không được phép sử dụng tới học viên, cài đặt khi học viên kết nối USB có thể đọc, hoăc không thể đọc USB, cài đặt cho phép hoặc không cho phép đọc đĩa CD;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Ghi âm học viên: Giáo viên có thể ghi âm toàn bộ nội dung học viên với 1 thao tác đơn giản, bản ghi âm sẽ được lưu tại máy tính của&nbsp; giáo viên, giáo viên có thể lấy làm tư liệu dạy học;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Ghi hình học viên: Giáo viên có thể ghi lại toàn bộ nội dung hình ảnh và âm thanh máy tính của học viên và lưu lại tại máy tính của mình;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Tệp đã gửi: Tại đây giáo viên có thể kiểm soát hoạt động chia sẻ tệp tin của cả lớp, giá viên có thể xem được các tệp tin mà học viên chủ động gửi cho mình, và xem nội dung của các tệp đó;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Chuyển văn bản sang âm thanh (TTS): Chức năng chuyển văn bản thành giọng nói (Hoạt động với tiếng Anh): Giáo viên có thể nhập hoặc chép 1 đoạn văn bản vào ô chống, sau đó giáo viên có thể phát nội dung văn bản đó bằng âm thanh với tuỳ chọn tốc độ, giọng nam hoặc nữ, giáo viên có thể phát sóng trực tiếp tới học viên hoặc lưu lại để dùng sau dưới dạng tệp âm thanh;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Trắc nghiệm nhanh: Công cụ trắc nghiệm nhanh giúp giáo viên đưa ra một câu hỏi trắc nghiệm hoặc một khảo sát tới cả lớp với các đáp án để học viên có thể lựa chọn 1 cách nhanh chóng;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Chế độ tạo nhóm: Giáo viên có thể vào các hoạt động nhóm, chia lớp thành nhiều nhóm với số lượng từ 2 đến 8 học viên, giáo viên có thể lưa chọn học viên theo nhóm hoặc để phần mềm tự động phân chia học viên theo nhóm một cách tự động với số học viên trên 2 nhóm do giáo viên đặt;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Xem điểm lớp học: Đây là điểm số khi giáo viên có những câu hỏi trong buổi học mà những học viên tham gia phát biểu hoặc trả lời câu hỏi của giáo viên, dựa vào đây giao viên có thể tổng kết nhanh học viên nào là người xây dựng bài nhiều hay ít để có thế đánh giá được buổi học;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Thêm trang web: Giáo viên có thể thêm các links trang web đề học viên có thể truy cập vào tham khảo;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Cài đặt giao diện học viên: Giáo viên có thể tuỳ chọn hiển thị giao diện học viên như: hiển thị địa chỉ IP, tên máy tính, tên mặc định, tên hệ thống, hiển thị ảnh đại diện, hiển thị màn hình học viên, hiển thị dòng kẻ, cài đặt vị trí học viên;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Ghi âm toàn thời gian: Giáo viên ghi âm toàn bộ lớp học và toàn bộ thời gian với nội dung được lưu trên máy tính của giáo viên;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Điều khiển âm lượng Mic và loa: Giáo viên có thể trực tiếp điều khiển mic và loa của mình trong phần mềm mà không cần phải thoát ra ngoài hệ điều hành;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Ghi âm hai đường: Ghi âm lớp học chia làm 2 tệp với giáo viên và học viên riêng biệt;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>Chức năng kiểm soát lớp học</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Điều khiển từ xa: Giáo viên có thể Điều khiển từ xa: Khởi động, tắt, khởi động lại máy tính của học viên, ngoài ra giáo viên có thể tắt ứng dụng trên máy tính của học viên và xoá học viên ra khỏi lớp học;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Điểm danh lớp học: Chức năng điểm danh lớp học này giáo viên có thể lấy danh sách học viên từ tệp excel hoặc để học viên tự khai nội dung, ngoài ra giáo viên có lựa chọn các loại điểm danh khác nhau: Điềm danh bằng tài khoản được giáo viên cấp, điểm danh băng ID và ảnh chụp khuôn mặt, đểm danh với học viên tự điền thông tin;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Bắt đầu buổi học: Chức năng bắt đầu buổi học khi giáo viên kích hoạt chức năng này phần mềm tự động bật máy tính của học viên sau đó tự động điểm danh học viên sau khi hoàn thành điểm danh phần mềm tự động chia sẻ màn hình của giáo viên;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Kết thúc buổi học: Khi buổi học kết thúc giáo viên có thể chọn tinh năng này khi tính năng này kích hoạt giáo viên có 2 lựa chọn là đổi lớp học hoặc là tắt toàn bộ máy tính của học viên;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Ghi màn hình giáo viên: Giáo viên có thể tự ghi hình lại màn hình của mình: Với chức năng này giáo viên hoàn toàn lưu lại nội dung của buổi học để làm tài liệu cho các buổi học tiếp theo</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>Công cụ trợ lý</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Quản lý danh sách học viên: Giáo viên có thể quản lý sanh sách lớp học, nhập xuất danh sách lớp bằng file excel;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Danh sách học viên: Giáo viên quản lý danh sách học viên của lớp học, có thể thêm sửa xoá, nhập xuất dữ liệu bằng file excel, có thể cài đặt ID và Pass cho học viên, sau đó có thể gửi tới học viên để học viên có thể đăng nhập vào lớp;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Tin nhắn: Đây là mục nhận và gửi tin nhắn của giáo viên tới cất các học viên trong cả lớp tại đây giáo viên có thể gửi cho cá nhân, nhóm hoặc cả lớp bằng các tuỳ chọn của mình. Ngoài ra giáo viên có thể xem được lịch sử kết nối của học viên và câu hỏi của học viên gửi cho mình;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Trắc nghiệm: Đây là tính năng giúp giáo viên đưa ra một câu trắc nghiệm nhanh tới cả lớp nhằm khảo sát tới cả lớp mà giáo viên nhận được kết quả nhanh chóng;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Hiển thị tên học viên: Đây là tính năng được liên kết với danh sách học viên khi học viên kết nối vào lớp học bằng tài khoản tên của học viên sẽ được giao viên nhìn thấy một cách trực quan;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Kích thước tên học viên: Hiểu thị kích thước icon của học viên theo 3 kích cỡ: Lớn, vừa, nhỏ;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Kiểm tra thiết bị: Giáo viên có thể để học viên kiểm tra lại tai nghe và micro của mình có hoạt động tốt hay không;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Lịch sử đánh giá: Khi sử dụng chức năng đánh giá (Evaluation) tất cả nội dung và điểm số của học viên sẽ lưu lại, tại đây giáo viên có thể kiểm tra và đánh giá chất lượng học tập và học chọn ra sinh nào suất sắc nhất trong lớp học;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>Quản lý tài liệu</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Gửi tệp: Giáo viên có thể gửi cho cả lớp bất kỳ tệp tin nào ví dụ: Bài tập về nhà, bài kiểm tra, tài liệu office, file pdf, âm thanh, hình ảnh…</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Thu tệp: Giáo viên thu thập các tệp mà giáo viên đã gửi cho học viên, giáo viên có thể chọn các dịnh dạng file cần lấy, có thể chọn xoá file sau khi lấy về;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>Tự học</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Chế độ tự học: Khi kích hoạt tính năng này học viên có thể tự do mở các tài liệu có trên máy tính của mình hoặc giáo viên gửi;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Thư viện trực tuyến: Giáo viên có thể tổng hợp các tài liệu của mình để gửi tới học viên, tất cả học viên có thể vào để lấy tài liệu đó;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>Giảng dạy</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Đánh giá nhanh (Evaluation): Cho phép giáo viên thực hiện một số đánh giá hữu ích và hấp dẫn đối với học viên. Đánh giá có thể được trả lời từ 1 học viên hoặc 1 nhóm. Các dạng Evaluation: multiple choice, true or false, subjective answer, fastest answer, writing, and voice. Học sinh có thể nhấp văn bản, viết vẽ, ghi âm giọng nói, quay video hoặc chụp ảnh để trả lời các câu hỏi. Giáo viên có thể kiểm tra câu trả lời của học viên, so sánh câu trả lời, phát nội dung cho cả lớp và cho phép học viên khác nhận xét vào câu trả lời;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Chọn học viên: Giáo viên sẽ chọn 1 học viên hoặc 1 nhóm một cách ngẫu nhiên, để có thể mời học viên phát biểu, hoặc demo trước cả lớp;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Phát lên màn hình nhóm: Giáo viên có thể điều khiển nội dung hiển thị của màn hình của các nhóm: hiển thị nội dung của giáo viên hoặc học viên lên màn hình nhóm;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Giám sát màn hình: Cho phép giáo viên theo dõi màn hình và camera của học viên. Giáo viên có thể theo dõi tối đa 36 học viên cùng một lúc. Giáo viên có thể điều khiển máy tính của học viên ở ba chế độ: Shared, monitoring, and remote control. Giáo viên có thể phát sóng màn hình học viên đã chọn tới cả lớp. Giáo viên sẽ sử dụng một số tính năng: annotation, quiet, save a snapshot, and open evaluation functions;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Sutdent Self dubbing: Học viên có thể tự lồng tiếng cho 1 đoạn video và phát lại với nội dung đã lồng tiếng;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Giáo viên di động: Giáo viên có thể sử dụng máy tính bảng để điều khiển lớp học</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>Kiểm tra đánh giá</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- <i><strong>Kiểm tra giấy</strong></i></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">+ Test: Chức năng kiểm giấy với 10 dạng câu hỏi;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">+ Đúng/ Sai;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">+ Câu hỏi mở;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">+ Trắc nghiệm;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">+ Điền vào chỗ trống;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">+ Chọn vị trí sai;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">+ Nối các câu phù hợp;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">+ Chọn câu trả lời trên ảnh;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">+ Dịch sang tiếng anh;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">+ Nối ảnh;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">+ Sắp xếp thứ tự;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">+ Giáo viên có thể thiết lập thời gian cho bài kiểm tra;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">+ Giáo viên có thể thiết lập số điểm cho từng câu hỏi;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">+ Khi học viên làm bài kiểm tra, phần mềm cập nhật học viên đang làm bài theo thời gian thực và kết quả đúng hay sai;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">+ Sau khi kết thúc bài kiểm tra phần mềm tự động chấm điểm cho các câu đã có điểm;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">+ Giáo viên có thể chú thích lên bài kiểm tra của học viên khi chấm;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">+ Gửi trả lại kết quả bài kiểm tra cho học viên;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">+ Tính năng đánh giá kết quả kiểm tra của học viên dựa trên bài kiểm tra hoặc trong quá trình học;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">+ Kết quả bài kiểm tra theo từng câu. Bài kiểm tra hiển thị Tên Lớp, Tên Giáo viên, Tên Bài kiểm tra, Tên Học viên;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><i><strong>- Trắc nghiệm nhanh</strong></i></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">+ Chức năng trắc nghiệm nhanh với tính năng tạo câu hỏi đúng/sai, cấu hỏi trắc nghiệm nhiều lựa chọn, thống kê câu trả lời của học viên, tự động chuyển đổi tỉ lệ câu trả lời;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>Đào tạo ngoại ngữ</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Đọc chính tả với giáo viên: Học viên có thể thực hành đọc chính tả hoặc gõ đoạn hội thoại do giáo viên yêu cầu và gửi tới giáo viên. Thời gian đọc, viết chính tả được giáo viên kiển soát. Giáo viên có thể điều khiển: the subtitle, add some noise, change the volume, change the play speed and change the repeat time. Giáo viên có thể xem câu trả lời của học viên so với câu trả lời chính xác. Câu trả lời sai sẽ được đánh dấu màu đỏ;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Đào tạo phát âm cùng giáo viên: Cho phép học viên luyện nói theo video từ giáo viên. Giáo viên có thể cài đặt học sinh phải nói cùng lúc trong khi video đang phát hoặc sau khi video kết thúc mỗi câu. Giáo viên có thể điều khiển: the subtitle, add some noise, change the volume, change speed, change the repeat time, add bookmarks and tags. Chức năng ghi âm có thể được kích hoạt,&nbsp; học sinh có thể nghe bản ghi âm của chính mình với 4 chế độ phát lại;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Reading: Cho phép giáo viên chuyển văn bản thành giọng nói với 2 lựa chọn giọng đọc nam và nữ, Giáo viên có thể điều khiển play, stop, broadcast, speed, sever MP3</span></p></td></tr><tr><td><p style=\"text-align:center;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>2</strong></span></p></td><td><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>Phần mềm Exsoft dùng cho hệ thống phòng học ngoại ngữ model EX400 dùng cho học viên</strong></span></td></tr><tr><td><p style=\"text-align:center;\">&nbsp;</p></td><td><p><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>Phần mềm cài đặt trên máy học viên với những tính năng sau:</strong></span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Class resoures: Kho tài liệu chia sẻ của lớp học cho phép học sinh tải về hoặc tải lên;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Class recording: Cho phép ghi âm thanh của lớp học về máy tính của mình;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Class homework: Cho phép học viên làm và nộp bài tập về nhà mà giáo viên giao;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Student Statistics: Biểu đồ của học viên giúp học viên giám sát được thành tích của mình trong lớp học;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Chia sẻ màn hình: Cho phép học viên chia sẻ màn hình của mình tới giáo viên và lớp học;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Live: Cho phép học viên chia sẻ nội dung từ camera của mình tới giáo viên và lớp học;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Gửi file: Cho phép học viên có thể gửi file video, hình ảnh, tài liệu … tới giáo viên;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Dictation: Học viên có thể thực hành học chính tả hoặc gõ đoạn hội thoại với file video của mình. Câu trả lời sai sẽ được đánh dấu màu đỏ;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Oral Training: Cho phép học viên luyện nói với nội dung trên máy học viên. Chức năng ghi âm có thể được kích hoạt, học sinh có thể nghe bản ghi âm của chính mình với 4 chế độ phát lại;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- On Demand: Cho phép học viên có thể xem tài liệu từ máy tính của giáo viên chia sẻ;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Movie dubbing: Cho phép học viên luyện tập nói với file video;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- File nhận từ giáo viên: Mở thư mục tài liệu giáo viên gửi tới;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Tin nhắn: Xem và gửi tin nhắn tới giáo viên;</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">- Dọn dẹp: Dọn dẹp tài liệu rác sau khi kết thúc lớp học để thiết bị học viên luôn ổn định</span></p></td></tr><tr><td><p style=\"text-align:center;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>3</strong></span></p></td><td><span style=\"font-family:Arial, Helvetica, sans-serif;\"><strong>Tai nghe có khung chụp qua đầu, model EX668, nhãn hiệu EXSOFT</strong></span></td></tr><tr><td><p style=\"text-align:center;\">&nbsp;</p></td><td><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Tai nghe kỹ thuật số, Tần số đáp ứng: 125~8000Hz, Độ nhạy ≥ 108Db</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Tần số đáp ứng của mic:&nbsp; 250~8000Hz</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Tỷ lệ méo tiếng:&nbsp; ＜2％</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Độ nhạy ＞-55dB</span></p><p><span style=\"font-family:Arial, Helvetica, sans-serif;\">Trọng lượng: 0.25 kg</span></p></td></tr></tbody></table></figure>', NULL, NULL, ';;', '/public/upload/admin/3/Ph%E1%BA%A7n%20m%E1%BB%81m%20d%E1%BA%A1y%20h%E1%BB%8Dc%20Exsoft%20EX400.jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-21 04:13:10', '2023-11-21 04:13:10', NULL, NULL),
(62, 122, 'Mobile Exchange-ME', 'mobile-exchange-me', NULL, NULL, 'Hệ thống được xây dựng là một trung tâm nội dung quảng cáo, nơi khách hàng có thể xem video, nghe quảng cáo, để được hưởng các hình thức khuyến mại khác nhau.', '<p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Hệ thống được xây dựng là một trung tâm nội dung quảng cáo, nơi khách hàng có thể xem video, nghe quảng cáo, để được hưởng các hình thức khuyến mại khác nhau.</span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Hệ thống được xây dựng là một trung tâm nội dung quảng cáo, nơi khách hàng có thể xem video, nghe quảng cáo, để được hưởng các hình thức khuyến mại khác nhau. Có hai hình thức để khách hàng tiếp cận với các nôi dung quảng cáo.Khách hàng có thể tiến hành xem video thông qua một app được cài trên máy điện thoại di động.Khách hàng cũng có thể dùng điện thoại để gọi điện tới đầu số dịch vụ miễn phí để nghe đoạn quảng cáo được hệ thống lựa chọn. Hệ thống cần có khả năng khuyến cáo video phù hợp cho khách hàng dựa trên các thông tin liên quan như sở thích, độ tuổi, giới tính, thói quen, … Sau khi xem video khách hàng sẽ đươc khuyến mại số phút gọi, tin nhắn tùy theo các hình thức khuyến mại của nhà mạng. Ngoài hình thức khuyến mại của nhà mạng, hệ thống có bổ xung thêm hình thức quay thưởng may mắn theo tuần, tháng, hoặc theo chu kỳ của sản phẩm với phần thưởng là các hiện vật sản phẩm đăng quảng cáo.</span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Yêu cầu kiên quyết là hệ thống phải tương tác được với facebook, để phát tán người cài app và xem video, chia sẻ content quảng cáo.</span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\"><strong>I. Portal quản lý nội dung:</strong></span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">1. User: có hai loại user sử dụng Portal này. Một là user truy cập để cập nhật video quảng cáo, các thông tin đính kèm với quảng cáo này sẽ được mổ tả chi tiết tại phần sau. Hai là user quản trị portal.</span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">2. Chức năng với người dùng upload quảng cáo:</span></p><ul><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Upload content lên hệ thống: Hệ thống cho phép người dùng upload các video quảng cáo theo từng file, theo nhiều file, theo thư mục. Các thông tin đi kèm với mỗi lần upload dữ liệu: thể loại, tên nhãn hàng, nhà sản xuất của sản phẩm quảng cáo, …</span></li><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Sửa thông tin video đã được cập nhật bởi user.</span></li><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Xóa video đã được cập nhật bởi user, tính năng này lên xem xét thêm có cân thiết không?</span></li><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Xem content đã được cập nhật lên hệ thống.</span></li><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Chức năng xem báo cáo thống kê:</span></li><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Thông kê số lượng video đã được xem theo ngày, tuần tháng</span></li><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Thống kê số video và số lượng xem, số lượng trả lời đúng câu hỏi, số lượng trả lời sai, số lượng không trả lời.</span></li><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Thống kê loại handset(ios, android, windowphone, … ) theo ngày tuần tháng.</span></li><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Thống kê video, loại os, ngày trong tuần.</span></li><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Chức năng đổi password</span></li></ul><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">3. Chức năng với người duyệt nội dung content.</span></p><ul><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Mỗi khi có content mới được cập nhật lên hệ thống, hệ thống sẽ notify bằng email về mail list các user duyệt nội dung thông báo có content mới.</span></li><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Hệ thống cho phép người duyệt tìm kiếm các content cần duyệt theo các tiêu chí sau: từ ngày, đến ngày, tên video, thể loại, tên sản phẩm (nhãn hàng), nhà sản xuất sản phẩm, cp hoặc user đã cập nhật lên hệ thống. Hệ thống liệt kê các video thỏa mãn yêu cầu các thông tin hiển thị gồm: Tên, thể loại, cp name đã cập nhật, ngày cập nhật. Người dung có thể nhân vào video để thực hiện play video đó luôn trên trang web, click duyệt hoặc từ chối.</span></li></ul><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">4. Chức năng quản trị hệ thống</span></p><ul><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Tạo, sửa, xoa thông tin user.</span></li><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Xem báo cáo thống kê gồm các thống kế giống như phần người dùng upload. Bổ xung thêm báo cáo số lượng video được xem theo người dùng(cp) upload lên hệ thống và theo ngày (h trong ngày), tuần(ngày trong tuần), tháng(ngày trong tháng).&nbsp;</span></li></ul><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\"><strong>II. Hệ thống core dịch vụ:</strong></span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">1. Các nội dung video cần được phần chia trên nhiều server dịch vụ khác nhau, có khả năng share tải cho nhau theo cơ chế dự phòng 1.n với từng video.</span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">2. Các server nội dung cần cài đặt trên các máy ảo để tận dụng tối đa năng lực của phần cứng.</span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">3. Hệ thống cần có cơ chế để chống spam và hack khuyến mại:</span></p><ul><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Mỗi thuê bao tại một thời điểm chỉ có thể xem một video.</span></li><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Bộ thông tin sau cần là duy nhất trong 30 ngày, thời gian này có thể config được.</span></li><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Số thuê bao (ID, …)</span></li><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Video</span></li><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Question.</span></li><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Link để xem video cần có thời gian hết hạn và không thể thực hiện tải lại hoặc xem lại video theo đường link đó từ trình duyệt. Mỗi link tải video chỉ có ý nghĩa một lần sau khi đã được xem.</span></li></ul><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">4. Ghi nhận câu trả lời của khách hàng sau mỗi video, xác thực, cộng khuyến mại cho khách hàng theo luật định. Gửi request cập nhật khuyến mại lên hệ thống IN nếu cần thiết.</span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">5. Nếu hệ thống không hỗ trợ miễn phí cuộc gọi trên IN. Hệ thống cần nhận cuộc gọi khách hàng tới đầu số dịch vụ (1886 xyz) xyz là số thuê bao muốn gọi. Xác thực số thuê bao xyz là số được phép thực hiện cuộc gọi qua hệ thống. Thực hiện gọi ra cho số xyz, kết nối hai cuộc gọi với nhau, giám sát số phút gọi mà khách hàng được free, thực hiện ngắt kết nối và thống bao trước 15 s bằng âm xyz.</span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">6. Hệ thống cần có khả năng phân tích thói quen thuê bao xử dụng để có khả năng gợi ý các video gần với sở thích của khách hàng nhất.</span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">7. Hệ thống cần có biểu đồ phân bố trên lãnh thổ việt nam</span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">&nbsp;</span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\"><strong>III. Phần chức năng client</strong></span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">1. Hệ thống phải hỗ trợ các os (Android, iOS, WP, Blackbery)</span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">2. Chức năng config cài đặt hệ thống:</span></p><ul><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Chức năng cài đăt này cần cho phép khách hàng cài đặt các thông tin sau: giới tính, tuổi,</span></li></ul><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">3. Chức năng video:</span></p><ul><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Lựa chọn video muốn xem</span></li><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Xem video</span></li><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Trả lời câu hỏi liên quan đến video</span></li><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Có thêm các tab tiện ích khác: link sang các site wap, web nghe nhạc, đọc báo (sử dụng component webview để hiện thị trực tiếp thay vì phải mở trình duyệt)</span></li></ul><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">4. Gửi sms miễn phí giữa các thành viên của hệ thống (10SMS/ngày), có khả năng tương tác với danh bạ của hệ thống.</span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">5. Có tính năng mời người khác download app, nếu mời thành công sẽ có chế độ ưu đãi (cộng điểm, thêm miễn phí tin nhắn...)</span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">6. Hiển thị list contacts ngay trên app, để khi tương tác call, hoặc send SMS cho tiện với người dùng</span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">7. Client cần có chức năng cho phép truy cập vị trí location của thuê bao xem video, cần được phép confirm từ thuê bao.</span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">8. Chức năng cho phép người dùng quản trị và duyệt nội dung từ smartphone.</span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\"><strong>IV. Quay thưởng may mắn:</strong></span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">1. Mỗi thuê bao xem video hoặc giới thiệu người khác dùng dịch vụ, giới thiệu người thiệu thuê bao khác xem video, sẽ được cộng một 5 điểm vào quỹ điểm của mỗi thuê bao với mỗi lời mời thành công. Hàng tuần, hàng tháng hệ thống sẽ chọn ra 100 người có số điểm cao nhất đêm quay lầy 10 giải mỗi giải là một phần thưởng(thẻ cào hoặc sản phẩm của nhà quảng cáo).</span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">2. Mỗi nhãn hàng quảng cáo có thể theo đợt hoặc theo các event bất kỳ có thể tiến hành quay thưởng trên các thuê bao đã giới thiệu share video cho các thuê bao khác (lớn hơn 30 thuê bao trong contact, hoặc trong friend list của facebook) sẽ tiến hành quay 10 giải thưởng mỗi giải thưởng là một đơn hàng nhỏ ví dụ: 1 thùng coca cola, thùng mì tôm, …</span></p><p><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\"><strong>3.&nbsp;Một số cơ chế chống spam để cộng điểm:</strong></span></p><ul><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Một account chỉ được xem tối đa 100 video một ngày (tương đương: 25 phút gọi nội mạng miễn phí hoặc tương đương xx tin nhắn nội mạng)</span></li><li><span style=\"color:black;font-family:Arial, Helvetica, sans-serif;\">Share banner thì có thể nhiều lần trong ngày, số điểm này chỉ được cộng vào tài khoản của khách hang khi thuê bao nhận được banner xác nhận phản hồi lên hệ thống</span></li></ul>', NULL, NULL, ';;', '/public/upload/admin/3/Mobile%20Exchange-ME.jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-21 04:27:31', '2023-11-21 04:27:31', NULL, NULL);
INSERT INTO `tb_products` (`id`, `taxonomy_id`, `title`, `alias`, `gia`, `giakm`, `mota`, `chitiet`, `diemban`, `giayto`, `hienthi`, `image`, `image_thumb`, `view`, `iorder`, `tinhtrang`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `admin_created_id`, `admin_updated_id`, `json_params`, `created_at`, `updated_at`, `soluong`, `soluongconlai`) VALUES
(63, 122, 'SMS tự động bằng GSM modem', 'sms-tu-dong-bang-gsm-modem', NULL, NULL, 'Chúng tôi cung cấp hệ thống nhắn tin tự động qua GSM với khả năng quản lý và gửi nhiều tin nhắn đồng thời giúp cho việc tiếp thị, hỗ trợ và chăn sóc khách hàng trở nên đơn giản và hiệu quả', '<p>Chúng tôi cung cấp hệ thống nhắn tin tự động qua GSM với khả năng quản lý và gửi nhiều tin nhắn đồng thời giúp cho việc tiếp thị, hỗ trợ và chăn sóc khách hàng trở nên đơn giản và hiệu quả</p><p>Đối với mỗi doanh nghiệp việc chăm sóc khách hàng, trao đổi thông tin nội bộ và quan hệ cộng đồng (PR) đóng vai trò vô cùng quan trọng. Sử dụng&nbsp;Hệ thống nhắn tin SMS tự động&nbsp;bằng GSM modem, thông tin sẽ được trao đổi thông suốt giúp mọi hoạt động của doanh nghiệp hiệu quả hơn. Quan hệ cộng đồng và chăm sóc khách hàng tốt sẽ nâng cao thương hiệu và giúp hình ảnh của doanh nghiệp có vị thế hơn trong lòng khách hàng.</p><figure class=\"image\"><img src=\"data:image/png;base64,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\"></figure><p style=\"text-align:center;\">&nbsp;</p><p style=\"text-align:center;\"><strong>Mô hình hoạt động của hệ thống gửi tin nhắn SMS tự động bằng GSM modem</strong></p><p style=\"text-align:center;\">&nbsp;</p><p>Doanh nghiệp cần có các công cụ trợ giúp để có thể chăm sóc đến từng khách hàng và giải pháp nhắn tin SMS qua GSM modem sẽ là trợ thủ đắc lực. Ví dụ: gửi lời chúc mừng sinh nhật, gửi thông tin hàng mới về, v.v.., giúp cho mối quan hệ của doanh nghiệp và khách hàng ngày càng gắn bó, tạo sự tin tưởng và nâng cao uy tín của doanh nghiệp.</p><p>Với một doanh nghiệp có số lượng nhân viên lớn và các chi nhánh đặt ở nhiều nơi thì việc cung cấp thông tin đến toàn thể nhân viên cùng một lúc sẽ gặp rất nhiều khó khăn và tốn nhiều thời gian.</p><p>Ngoài ra, việc quản lý thông tin có đảm bảo đến tận tay khách hàng hay nhân viên không cũng là một bài toán lớn với nhiều doanh nghiệp.</p><p>Chúng tôi cung cấp hệ thống nhắn tin SMS bằng GSM modem với khả năng quản lý và gửi tin nhắn tự động giúp cho việc tiếp thị, chăm sóc và hỗ trợ khách hàng trở nên dễ dàng và đơn giản hơn. Doanh nghiệp có thể gửi một hay nhiều nội dung tin nhắn SMS đến một danh sách khách hàng xác định trước. Hệ thống nhắn tin tự động bằng GSM modem không những giúp doanh nghiệp chăm sóc khách hàng tận tụy hơn, mà còn giúp việc quản lý cũng như phát triển các chiến dịch tele marketing qua tin nhắn SMS với chi phí thấp nhất.</p><p>&nbsp;</p><p>Gửi tin nhắn là kênh quảng bá thông tin có mức độ tiếp cận rất cao, khách hàng không thể bỏ qua hay xóa tin nhắn SMS khỏi điện thoại&nbsp; di động của mình khi chưa đọc. Vì vậy chúng tôi mang đến cho doanh nghiệp thêm một giải pháp đế chọn lựa nhằm quảng bá hình ảnh cũng như thương hiệu đến toàn thể khách hàng một cách hiệu quả nhất.</p><p>&nbsp;</p><p>Với chu trình hoàn toàn tự động và khả năng gửi đi hơn 1.000 tin nhắn trong một giờ, hệ thống nhắn tin bằng GSM modem giúp bạn tiết kiệm được rất nhiều thời gian để làm những công việc khác. Hơn nữa, hệ thống có thể họat động liên tục 24/24 mà không hề mệt mỏi. Trên thực tế, tốc độ gửi tin nhắn SMS phụ thuộc vào công nghệ mạng di động, thời điểm gửi tin (cao điểm hay thấp điểm), và chính sách của từng nhà mạng (giới hạn tốc độ, số lượng tin nhắn trong một ngày,..).&nbsp;</p><p>&nbsp;</p><p>Để triển khai hệ thống nhắn tin SMS sử dụng&nbsp;GSM modem&nbsp;bạn cần:</p><p>+ 01&nbsp;PC / Laptop&nbsp;có cổng COM / USB</p><p>+ 01&nbsp;GSM&nbsp;modem&nbsp;kèm theo các phụ kiện (nguồn, cáp nối cổng COM / USB, ăng ten)</p><p>+ 01&nbsp;SIM&nbsp;cho mạng GSM: VinaPhone, MobiFone, hoặc Viettel.</p><p>+&nbsp;Phần mềm&nbsp;gửi / nhận tin nhắn tự động.</p><p>Chi phí cho mỗi tin nhắn gửi đi từ GSM modem được quy định bởi nhà cung cấp dịch vụ, giống như khi gửi từ điện thoại di động.</p><p>Các loại modem GSM chúng tôi cung cấp bao gồm:</p><figure class=\"table\"><table><tbody><tr><td><p style=\"text-align:center;\"><span style=\"color:black;\">Sản phẩm</span></p></td><td><p style=\"text-align:center;\"><span style=\"color:black;\">Ảnh</span></p></td><td><p style=\"text-align:center;\"><span style=\"color:black;\">Tính năng kỹ thuật</span></p></td><td><span style=\"color:black;\">Giá (VNĐ)</span></td></tr><tr><td><p style=\"text-align:center;\"><a href=\"http://www.tru-e.vn/vien-thong/gsm-modem/194-gsm-modem-sam-intercel-\"><span style=\"color:black;\">GSM modem</span></a></p><p style=\"text-align:center;\"><a href=\"http://www.tru-e.vn/vien-thong/gsm-modem/194-gsm-modem-sam-intercel-\"><span style=\"color:black;\">SAM Intercel</span></a></p></td><td><figure class=\"image\"><img src=\"data:image/jpeg;base64,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7dQa+fPix/wQ+/bX0OO7ttJfR763hkVrOaOaWK4k2sCCY2jKKeOm8j3Nf04zadYzjE1qjfVazb/wH4V1IYudIhb/AICK0jXqR6l+0mfyY+Jf2L/20Phjpyy+N/2fvEhZXMfmadapfM/JwxW1aQgEDPIGM47ivPfEMniHwVqzeH/Geh3+j36qrPY6rZyW8wUgEEpIobBBB6cgg1/XVrn7Ofw11tWFxoUPzf8ATMV574x/4J/fB/xRFJFN4etWWRSrK0Q+YEcg1p9al1RSrW6H8qMXilHUESj8Gq5a+IkznzM/jX9CvxU/4IE/sf8AjiG8U/BHw/BJeSNJcXGm6elrM7s24sZYdj7ieSd2Tk56mvm/4q/8GyXwbvHjk8C6t4m8PrCcsum6sZvO68MbtZj37EdPrmo4mPVGnto+Z+R1lrW/nf8A8B3V9af8Eq9SaL4067donmbfCMwWPdjcxubYKvQ4JJA/Gu++IH/Bud8d/Dl1PP4G+MAmhVT9ntdU0IsxbtuljlUY9xGfpX0N/wAEsv8AgkN8YfgZ49m8afGTVLO4upIxBHa6armFYvMV8szqpZiyrxgAbepzxU68XHQHUhyvU/RT9hb4Qf8ACEfD+HUtRizdXX72aRlwWduSfzNfQVZfhHQoPD2hQabAgURxgcVqVwnKFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFNaNHGGQH8KdRQBWn0jTLn/XWUbf8BpLfRtLtG3W9lGv+6tWqKADpwKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA//2Q==\"></figure></td><td><p style=\"text-align:center;\"><span style=\"color:black;\">GSM: 900/1800 MHz</span></p><p style=\"text-align:center;\"><span style=\"color:black;\">Kích thước: 79*52*24 mm</span></p><p style=\"text-align:center;\"><span style=\"color:black;\">Trọng lượng: ~40 g</span></p><p style=\"text-align:center;\"><span style=\"color:black;\">Giao tiếp: RS232 (COM)</span></p><p style=\"text-align:center;\"><span style=\"color:black;\">GPRS: Class 10 (40 kbps upload / 80 kbps download)</span></p><p style=\"text-align:center;\"><span style=\"color:black;\">Xuất xứ:Australia</span></p></td><td><span style=\"color:black;\">4.180.000</span></td></tr><tr><td><p style=\"text-align:center;\"><a href=\"http://www.tru-e.vn/vien-thong/gsm-modem/193-gsm-modem-g2403r-g2403u\"><span style=\"color:black;\">GSM modem</span></a></p><p style=\"text-align:center;\"><a href=\"http://www.tru-e.vn/vien-thong/gsm-modem/193-gsm-modem-g2403r-g2403u\"><span style=\"color:black;\">G2403-U / G2403-R</span></a></p></td><td><figure class=\"image\"><img src=\"data:image/jpeg;base64,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\"></figure></td><td><p style=\"text-align:center;\"><span style=\"color:black;\">GSM: 900/1800 MHz</span></p><p style=\"text-align:center;\"><span style=\"color:black;\">Kích thước: 77*54*25 mm</span></p><p style=\"text-align:center;\"><span style=\"color:black;\">Trọng lượng: ~100 g</span></p><p style=\"text-align:center;\"><span style=\"color:black;\">Giao tiếp: RS232 (COM)</span></p><p style=\"text-align:center;\"><span style=\"color:black;\">GPRS: Class 8 (20 kbps upload / 80 kbps download)</span></p><p style=\"text-align:center;\"><span style=\"color:black;\">Xuất xứ: China</span></p></td><td><span style=\"color:black;\">2.870.000</span></td></tr></tbody></table></figure><p>&nbsp;</p><p>Phần mềm quản lý nhắn tin SMS tự động:&nbsp;1.000.000 VNĐ</p><p>Các chức năng của phần mềm bao gồm:</p><p>- Quản lý tài khoản người dùng</p><p>- Cấu hình hệ thống gửi nhận tin nhắn</p><p>- Cho phép gắn nhiều GSM modem và cân bằng tải giữa các modem</p><p>- Cho phép định nghĩa modem nhận hoặc gửi, hay cả hai</p><p>- Cho phép chọn cổng COM, tốc độ, chức năng báo cáo từng modem</p><p>- Chức năng quản lý gửi và nhận tin nhắn</p><p>- Thông báo trạng thái gửi tin.Thống kê các số điện thoại, ngày, giờ, nội dung tin đã gửi được, chưa gửi được, bị xóa,...</p><p>- Quản lý danh bạ điện thoại</p><p>- Chức năng gửi hàng loạt cho phép lấy thông tin từ danh bạ hoặc file Excel.</p><p>&nbsp;</p>', NULL, NULL, ';;', '/public/upload/admin/3/SMS%20t%E1%BB%B1%20%C4%91%E1%BB%99ng%20b%E1%BA%B1ng%20GSM%20modem.jpg', NULL, 0, NULL, 1, 1, NULL, NULL, NULL, 2, 2, NULL, '2023-11-21 04:47:22', '2023-11-21 04:47:22', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_roles`
--

CREATE TABLE `tb_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_access` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_roles`
--

INSERT INTO `tb_roles` (`id`, `name`, `description`, `json_access`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Quyền quản trị hệ thống', 'Dành cho nhân viên thiết kế và cập nhật nội dung', '{\"menu_id\":[\"51\",\"87\",\"86\",\"53\",\"69\",\"52\",\"80\",\"13\",\"58\",\"46\",\"45\",\"44\",\"10\",\"85\",\"3\",\"5\",\"6\",\"43\"]}', 1, 'active', 1, 2, '2021-10-02 03:59:48', '2023-04-28 09:19:46'),
(2, 'Quản trị nội dung', 'Quyền dành cho người quản trị hệ thống', '{\"menu_id\":[\"51\",\"53\",\"55\",\"69\",\"84\",\"52\",\"80\",\"13\",\"58\",\"46\",\"45\",\"44\",\"10\"]}', 2, 'active', 1, 1, '2021-10-02 04:28:09', '2023-02-11 04:25:54'),
(3, 'Phóng viên - Cộng tác viên', 'Phóng viên', '{\"menu_id\":[\"51\",\"84\",\"53\",\"55\"]}', 3, 'active', 1, 1, '2022-10-26 07:41:22', '2023-02-02 10:44:46'),
(4, 'Phóng viên cấp cao', NULL, '{\"menu_id\":[\"51\",\"56\",\"53\",\"70\",\"71\",\"72\",\"73\",\"74\",\"78\",\"79\",\"69\",\"75\",\"76\",\"77\",\"52\",\"66\",\"55\"]}', 4, 'active', 1, 1, '2022-10-26 08:04:29', '2022-10-26 08:04:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_royaltie`
--

CREATE TABLE `tb_royaltie` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_user_role`
--

CREATE TABLE `tb_user_role` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `json_action` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` int(11) NOT NULL,
  `admin_updated_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_user_role`
--

INSERT INTO `tb_user_role` (`id`, `role_id`, `json_action`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"51\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"87\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"86\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"53\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"69\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"52\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"80\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"13\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"58\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"46\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"45\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"44\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"10\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"85\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"3\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"5\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"6\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"43\":[\"index\",\"create\",\"update\",\"delete\",\"show\"]}', 1, 2, '2022-10-19 08:36:53', '2023-04-28 09:19:46'),
(2, 2, '{\"51\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"53\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"55\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"69\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"84\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"52\":[\"index\",\"create\",\"delete\",\"show\"],\"80\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"13\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"58\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"46\":[\"index\",\"create\",\"delete\",\"show\"],\"45\":[\"index\",\"create\",\"delete\",\"show\"],\"44\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"10\":[\"index\",\"create\",\"update\",\"delete\",\"show\"]}', 1, 1, '2022-10-19 08:37:38', '2023-02-11 04:25:54'),
(3, 3, '{\"51\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"84\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"53\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"55\":[\"index\",\"create\",\"update\",\"delete\",\"show\"]}', 1, 1, '2022-10-26 08:00:01', '2023-02-02 10:44:46'),
(4, 4, '{\"51\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"56\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"53\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"70\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"71\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"72\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"73\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"74\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"78\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"79\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"69\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"75\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"76\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"77\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"52\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"66\":[\"index\",\"create\",\"update\",\"delete\",\"show\"],\"55\":[\"index\",\"create\",\"update\",\"delete\",\"show\"]}', 1, 1, '2022-10-26 08:04:29', '2022-10-26 08:04:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_views`
--

CREATE TABLE `tb_views` (
  `id` int(11) NOT NULL,
  `ngay` int(11) NOT NULL,
  `mobile` int(11) NOT NULL,
  `web` int(11) NOT NULL,
  `toantrang` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_views`
--

INSERT INTO `tb_views` (`id`, `ngay`, `mobile`, `web`, `toantrang`, `created_at`, `updated_at`) VALUES
(2, 1621184400, 14, 70, 84, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(3, 1621270800, 70, 162, 232, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(4, 1621357200, 69, 247, 316, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(5, 1621443600, 218, 551, 769, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(6, 1621530000, 141, 667, 808, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(7, 1621616400, 80, 387, 467, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(8, 1621702800, 31, 44, 75, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(9, 1621789200, 109, 357, 466, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(10, 1621875600, 20, 234, 254, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(11, 1621962000, 67, 158, 225, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(12, 1622048400, 24, 28, 52, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(13, 1622134800, 14, 88, 102, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(14, 1622221200, 7, 18, 25, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(15, 1622307600, 3, 1, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(16, 1622394000, 0, 80, 80, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(17, 1622480400, 16, 145, 161, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(18, 1622566800, 5, 178, 183, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(19, 1622653200, 17, 46, 63, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(20, 1622739600, 65, 174, 239, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(21, 1622826000, 3, 65, 68, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(22, 1622912400, 0, 13, 13, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(23, 1622998800, 71, 242, 313, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(24, 1623085200, 72, 205, 277, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(25, 1623171600, 6, 54, 60, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(26, 1623258000, 2, 37, 39, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(27, 1623430800, 0, 44, 44, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(28, 1623517200, 0, 9, 9, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(29, 1623603600, 1, 32, 33, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(30, 1623690000, 1, 6, 7, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(31, 1623776400, 3, 8, 11, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(32, 1623862800, 0, 27, 27, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(33, 1623949200, 2, 2, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(34, 1624035600, 2, 1, 3, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(35, 1624122000, 1, 1, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(36, 1624294800, 1, 1, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(37, 1624381200, 1, 0, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(38, 1624554000, 0, 3, 3, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(39, 1624813200, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(40, 1624899600, 0, 3, 3, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(41, 1625331600, 3, 0, 3, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(42, 1625418000, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(43, 1625504400, 1, 0, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(44, 1625590800, 2, 2, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(45, 1625677200, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(46, 1625763600, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(47, 1625850000, 0, 5, 5, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(48, 1625850000, 0, 5, 5, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(49, 1626022800, 2, 0, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(50, 1626109200, 3, 27, 30, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(51, 1626195600, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(52, 1626368400, 1, 0, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(53, 1626541200, 0, 5, 5, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(54, 1626800400, 0, 8, 8, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(55, 1626886800, 1, 0, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(56, 1626973200, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(57, 1627059600, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(58, 1627146000, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(59, 1627232400, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(60, 1627318800, 0, 3, 3, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(61, 1627578000, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(62, 1627664400, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(63, 1627750800, 0, 5, 5, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(64, 1627750800, 0, 5, 5, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(65, 1627837200, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(66, 1627923600, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(67, 1628010000, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(68, 1628096400, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(69, 1628182800, 0, 5, 5, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(70, 1628442000, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(71, 1628528400, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(72, 1629219600, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(73, 1629824400, 0, 3, 3, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(74, 1629997200, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(75, 1630083600, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(76, 1630342800, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(77, 1630429200, 0, 3, 3, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(78, 1630688400, 0, 9, 9, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(79, 1630774800, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(80, 1631034000, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(81, 1631293200, 0, 3, 3, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(82, 1631379600, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(83, 1631466000, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(84, 1631638800, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(85, 1631811600, 6, 4, 10, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(86, 1631811600, 6, 4, 10, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(87, 1631811600, 6, 4, 10, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(88, 1632070800, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(89, 1632070800, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(90, 1632157200, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(91, 1632243600, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(92, 1632330000, 0, 5, 5, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(93, 1632416400, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(94, 1632502800, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(95, 1632589200, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(96, 1632675600, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(97, 1632762000, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(98, 1633021200, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(99, 1633107600, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(100, 1633194000, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(101, 1633280400, 0, 3, 3, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(102, 1633366800, 0, 5, 5, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(103, 1633453200, 1, 1, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(104, 1633539600, 0, 5, 5, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(105, 1633626000, 0, 5, 5, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(106, 1633712400, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(107, 1633885200, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(108, 1633971600, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(109, 1634144400, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(110, 1634230800, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(111, 1634403600, 0, 6, 6, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(112, 1634749200, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(113, 1634922000, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(114, 1635008400, 0, 5, 5, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(115, 1635181200, 0, 9, 9, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(116, 1635267600, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(117, 1635526800, 0, 10, 10, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(118, 1635613200, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(119, 1635699600, 0, 5, 5, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(120, 1635786000, 0, 17, 17, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(121, 1635872400, 0, 9, 9, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(122, 1635958800, 0, 7, 7, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(123, 1636218000, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(124, 1636304400, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(125, 1636390800, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(126, 1636736400, 0, 10, 10, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(127, 1636822800, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(128, 1636909200, 0, 10, 10, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(129, 1636995600, 5, 11, 16, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(130, 1637082000, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(131, 1637168400, 0, 5, 5, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(132, 1637254800, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(133, 1637514000, 0, 20, 20, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(134, 1637600400, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(135, 1637686800, 0, 9, 9, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(136, 1637773200, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(137, 1637859600, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(138, 1637946000, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(139, 1638032400, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(140, 1638118800, 0, 3, 3, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(141, 1638205200, 0, 11, 11, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(142, 1638291600, 0, 24, 24, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(143, 1638378000, 8, 9, 17, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(144, 1638464400, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(145, 1638550800, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(146, 1638637200, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(147, 1638723600, 0, 11, 11, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(148, 1638810000, 0, 3, 3, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(149, 1639328400, 0, 5, 5, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(150, 1639414800, 0, 22, 22, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(151, 1639501200, 0, 5, 5, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(152, 1639674000, 0, 3, 3, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(153, 1640106000, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(154, 1640192400, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(155, 1640278800, 0, 11, 11, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(156, 1640365200, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(157, 1640451600, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(158, 1640538000, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(159, 1640624400, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(160, 1640710800, 6, 2, 8, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(161, 1640797200, 9, 0, 9, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(162, 1640883600, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(163, 1640970000, 0, 3, 3, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(164, 1641056400, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(165, 1641142800, 0, 3, 3, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(166, 1641488400, 0, 3, 3, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(167, 1641574800, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(168, 1641661200, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(169, 1641747600, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(170, 1641920400, 0, 3, 3, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(171, 1642006800, 0, 11, 11, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(172, 1642093200, 0, 6, 6, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(173, 1642179600, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(174, 1642266000, 3, 7, 10, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(175, 1642352400, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(176, 1642438800, 0, 6, 6, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(177, 1642611600, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(178, 1642698000, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(179, 1642784400, 0, 5, 5, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(180, 1642870800, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(181, 1642957200, 0, 15, 15, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(182, 1643130000, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(183, 1643216400, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(184, 1643475600, 0, 13, 13, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(185, 1643562000, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(186, 1643648400, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(187, 1643734800, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(188, 1643821200, 7, 4, 11, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(189, 1643994000, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(190, 1644080400, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(191, 1644166800, 0, 5, 5, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(192, 1644253200, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(193, 1644339600, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(194, 1644512400, 2, 0, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(195, 1644598800, 2, 0, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(196, 1644685200, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(197, 1644771600, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(198, 1644858000, 0, 13, 13, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(199, 1644944400, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(200, 1645030800, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(201, 1645117200, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(202, 1645203600, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(203, 1645376400, 0, 6, 6, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(204, 1645462800, 0, 8, 8, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(205, 1645549200, 3, 0, 3, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(206, 1645635600, 2, 0, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(207, 1645894800, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(208, 1645981200, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(209, 1646067600, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(210, 1646154000, 0, 3, 3, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(211, 1646240400, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(212, 1646326800, 0, 3, 3, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(213, 1646499600, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(214, 1646586000, 0, 3, 3, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(215, 1646672400, 0, 9, 9, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(216, 1646758800, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(217, 1646845200, 0, 3, 3, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(218, 1647190800, 0, 4, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(219, 1647277200, 4, 0, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(220, 1647450000, 5, 8, 13, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(221, 1647536400, 3, 2, 5, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(222, 1647622800, 2, 2, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(223, 1647795600, 3, 58, 61, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(224, 1647882000, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(225, 1647968400, 0, 12, 12, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(226, 1648054800, 0, 12, 12, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(227, 1648141200, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(228, 1648227600, 0, 1, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(229, 1648400400, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(230, 1648486800, 8, 113, 121, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(231, 1648573200, 20, 78, 98, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(232, 1648659600, 35, 45, 80, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(233, 1648746000, 7, 19, 26, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(234, 1649005200, 11, 29, 40, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(235, 1649178000, 11, 8, 19, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(236, 1649264400, 0, 6, 6, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(237, 1649350800, 3, 1, 4, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(238, 1649523600, 0, 2, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(239, 1649610000, 1, 0, 1, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(240, 1649782800, 0, 26, 26, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(241, 1649869200, 0, 29, 29, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(242, 1649955600, 2, 0, 2, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(243, 1650042000, 4, 1, 5, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(244, 1650301200, 13, 47, 60, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(245, 1650387600, 0, 8, 8, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(246, 1650474000, 8, 4, 12, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(247, 1650560400, 2, 5, 7, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(248, 1650819600, 1, 44, 45, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(249, 1650906000, 25, 19, 44, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(250, 1650992400, 32, 99, 131, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(251, 1651078800, 27, 44, 71, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(252, 1651165200, 15, 32, 47, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(253, 1651251600, 7, 32, 39, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(254, 1651338000, 18, 112, 130, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(255, 1651424400, 11, 128, 139, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(256, 1651510800, 21, 2, 23, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(257, 1651597200, 11, 19, 30, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(258, 1651683600, 4, 62, 66, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(259, 1651770000, 13, 31, 44, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(260, 1651856400, 3, 3, 6, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(261, 1651942800, 1, 15, 16, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(262, 1652029200, 8, 9, 17, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(263, 1652115600, 142, 108, 250, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(264, 1652202000, 355, 262, 617, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(265, 1652288400, 693, 566, 1259, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(266, 1652374800, 1775, 1327, 3102, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(267, 1652461200, 739, 264, 1003, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(268, 1652547600, 125, 64, 189, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(269, 1652634000, 109, 233, 342, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(270, 1652720400, 1446, 1457, 2903, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(271, 1652806800, 721, 699, 1418, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(272, 1652893200, 133, 191, 324, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(273, 1652979600, 217, 300, 516, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(274, 1653066000, 76, 36, 112, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(275, 1653152400, 13, 45, 58, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(276, 1653238800, 113, 285, 398, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(277, 1653325200, 102, 183, 285, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(278, 1653411600, 72, 116, 188, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(279, 1653498000, 1390, 1764, 3152, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(280, 1653584400, 2875, 4141, 7007, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(281, 1653670800, 2723, 4177, 6896, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(282, 1653757200, 2700, 3648, 6345, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(283, 1653843600, 1366, 1871, 3237, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(284, 1653930000, 514, 230, 744, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(285, 1654016400, 283, 179, 462, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(286, 1654102800, 236, 89, 324, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(287, 1654189200, 205, 265, 470, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(288, 1654275600, 209, 426, 635, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(289, 1654362000, 96, 90, 186, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(290, 1654448400, 145, 424, 569, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(291, 1654534800, 242, 292, 534, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(292, 1654621200, 48, 160, 208, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(293, 1654707600, 65, 187, 252, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(294, 1654794000, 57, 77, 134, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(295, 1654880400, 113, 205, 318, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(296, 1654966800, 80, 92, 172, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(297, 1655053200, 169, 278, 447, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(298, 1655139600, 132, 169, 301, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(299, 1655226000, 265, 332, 597, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(300, 1655312400, 292, 273, 565, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(301, 1655398800, 173, 154, 327, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(302, 1655485200, 115, 106, 221, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(303, 1655571600, 61, 46, 107, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(304, 1655658000, 59, 86, 145, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(305, 1655744400, 36, 51, 87, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(306, 1655830800, 37, 39, 76, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(307, 1655917200, 52, 89, 141, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(308, 1656003600, 60, 73, 133, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(309, 1656090000, 91, 140, 231, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(310, 1656176400, 46, 38, 84, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(311, 1656262800, 98, 203, 301, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(312, 1656349200, 201, 141, 342, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(313, 1656435600, 173, 235, 408, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(314, 1656522000, 141, 228, 369, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(315, 1656608400, 256, 310, 566, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(316, 1656694800, 328, 242, 570, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(317, 1656781200, 270, 145, 415, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(318, 1656867600, 131, 104, 235, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(319, 1656954000, 263, 152, 415, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(320, 1657040400, 527, 228, 755, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(321, 1657126800, 258, 92, 350, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(322, 1657213200, 170, 137, 307, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(323, 1657299600, 128, 80, 208, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(324, 1657386000, 99, 49, 148, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(325, 1657472400, 438, 159, 597, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(326, 1657558800, 108, 96, 204, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(327, 1657645200, 60, 102, 162, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(328, 1657731600, 212, 172, 384, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(329, 1657818000, 96, 101, 197, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(330, 1657904400, 98, 79, 177, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(331, 1657990800, 62, 78, 140, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(332, 1658077200, 70, 112, 182, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(333, 1658163600, 88, 50, 138, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(334, 1658250000, 144, 84, 228, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(335, 1658336400, 327, 148, 475, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(336, 1658422800, 92, 101, 193, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(337, 1658509200, 51, 67, 118, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(338, 1658595600, 61, 107, 168, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(339, 1658682000, 44, 95, 139, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(340, 1658768400, 52, 69, 121, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(341, 1658854800, 59, 80, 139, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(342, 1658941200, 68, 114, 182, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(343, 1659027600, 57, 177, 234, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(344, 1659114000, 56, 81, 137, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(345, 1659200400, 74, 79, 153, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(346, 1659286800, 403, 146, 549, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(347, 1659373200, 124, 108, 232, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(348, 1659459600, 73, 95, 168, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(349, 1659546000, 48, 82, 130, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(350, 1659632400, 48, 60, 108, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(351, 1659718800, 56, 107, 163, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(352, 1659805200, 49, 78, 127, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(353, 1659891600, 84, 107, 191, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(354, 1659978000, 43, 74, 117, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(355, 1660064400, 37, 55, 92, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(356, 1660150800, 149, 99, 248, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(357, 1660237200, 60, 56, 116, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(358, 1660323600, 38, 113, 151, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(359, 1660410000, 69, 72, 141, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(360, 1660496400, 81, 103, 184, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(361, 1660582800, 68, 92, 160, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(362, 1660669200, 49, 68, 117, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(363, 1660755600, 51, 91, 142, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(364, 1660842000, 62, 105, 167, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(365, 1660928400, 55, 83, 138, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(366, 1661014800, 43, 81, 124, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(367, 1661101200, 50, 135, 185, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(368, 1661187600, 65, 237, 302, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(369, 1661274000, 49, 111, 160, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(370, 1661360400, 37, 68, 105, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(371, 1661446800, 62, 99, 161, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(372, 1661533200, 60, 112, 172, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(373, 1661619600, 67, 83, 150, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(374, 1661706000, 64, 100, 164, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(375, 1661792400, 47, 182, 229, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(376, 1661878800, 55, 145, 200, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(377, 1661965200, 37, 67, 104, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(378, 1662051600, 52, 55, 107, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(379, 1662138000, 33, 74, 107, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(380, 1662224400, 45, 109, 154, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(381, 1662310800, 49, 161, 210, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(382, 1662397200, 39, 120, 159, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(383, 1662483600, 33, 157, 190, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(384, 1662570000, 72, 88, 160, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(385, 1662656400, 85, 76, 161, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(386, 1662742800, 47, 85, 132, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(387, 1662829200, 64, 67, 131, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(388, 1662915600, 73, 88, 161, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(389, 1663002000, 46, 78, 124, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(390, 1663088400, 55, 100, 155, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(391, 1663174800, 52, 62, 114, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(392, 1663261200, 70, 59, 129, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(393, 1663347600, 63, 38, 101, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(394, 1663434000, 58, 45, 103, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(395, 1663520400, 71, 68, 139, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(396, 1663606800, 35, 68, 103, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(397, 1663693200, 6, 126, 132, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(398, 1663779600, 9, 37, 46, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(399, 1663866000, 34, 68, 102, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(400, 1663952400, 76, 61, 137, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(401, 1664038800, 44, 74, 118, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(402, 1664125200, 40, 103, 143, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(403, 1664211600, 47, 91, 138, '2022-09-28 10:43:52', '2022-09-28 10:43:52'),
(404, 1664298000, 4, 575, 579, '2022-09-28 10:43:52', '2022-09-28 18:35:42'),
(405, 1664384400, 0, 32, 32, '2022-09-29 09:50:15', '2022-09-29 17:45:36'),
(406, 1666890000, 20, 29, 49, '2022-10-28 15:54:29', '2022-10-28 15:58:50'),
(407, 1667149200, 0, 1, 1, '2022-10-31 08:43:08', '2022-10-31 08:43:08'),
(408, 1669222800, 0, 11, 11, '2022-11-24 09:18:36', '2022-11-24 11:38:22'),
(409, 1669222800, 0, 1, 1, '2022-11-24 09:18:36', '2022-11-24 09:18:36'),
(410, 1669309200, 0, 3, 3, '2022-11-25 09:19:51', '2022-11-25 11:20:44'),
(411, 1669568400, 0, 2, 2, '2022-11-28 08:45:08', '2022-11-28 10:48:50'),
(412, 1669654800, 0, 1, 1, '2022-11-29 08:55:10', '2022-11-29 08:55:10'),
(413, 1670173200, 0, 23, 23, '2022-12-05 17:32:21', '2022-12-05 18:20:23'),
(414, 1670346000, 0, 1, 1, '2022-12-07 09:15:09', '2022-12-07 09:15:09'),
(415, 1673456400, 0, 2, 2, '2023-01-12 21:35:00', '2023-01-12 21:41:45'),
(416, 1673802000, 0, 23, 23, '2023-01-16 17:40:55', '2023-01-16 22:57:53'),
(417, 1673888400, 0, 30, 30, '2023-01-17 14:26:51', '2023-01-17 15:22:47'),
(418, 1680714000, 0, 1, 1, '2023-04-06 08:57:55', '2023-04-06 08:57:55'),
(419, 1683046800, 0, 1, 1, '2023-05-03 08:33:15', '2023-05-03 08:33:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_widgets`
--

CREATE TABLE `tb_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_widgets`
--

INSERT INTO `tb_widgets` (`id`, `widget_code`, `title`, `brief`, `json_params`, `image`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'header', 'Header Style 1', 'Header 1 brief content', '{\"layout\":null,\"style\":null,\"component\":[\"1\",\"2\"]}', NULL, 10, 'active', 1, 1, '2022-05-04 07:59:07', '2022-05-10 00:29:20'),
(2, 'footer', 'Footer Style 1', NULL, '{\"layout\":null,\"style\":null,\"component\":[\"2\",\"1\"]}', NULL, 20, 'active', 1, 1, '2022-05-10 00:29:03', '2022-05-10 00:29:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_widget_configs`
--

CREATE TABLE `tb_widget_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `widget_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_config` tinyint(1) NOT NULL DEFAULT 1,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_widget_configs`
--

INSERT INTO `tb_widget_configs` (`id`, `name`, `description`, `widget_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Header', NULL, 'header', NULL, 1, 1, 'active', 1, 1, '2022-04-26 02:40:39', '2022-08-23 04:02:09'),
(2, 'Footer', NULL, 'footer', NULL, 1, 2, 'active', 1, 1, '2022-04-26 02:42:09', '2022-04-26 02:42:09'),
(3, 'Left Sidebar', NULL, 'left_sidebar', NULL, 1, 3, 'active', 1, 1, '2022-04-26 02:42:46', '2022-04-26 02:42:46'),
(4, 'Right Sidebar', NULL, 'right_sidebar', NULL, 1, 4, 'active', 1, 1, '2022-04-26 02:43:02', '2022-04-26 02:43:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `is_super_user` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_view_info` int(11) NOT NULL DEFAULT 0,
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `json_profiles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `user_type`, `email_verified`, `email_verification_code`, `status`, `is_super_user`, `avatar`, `birthday`, `sex`, `phone`, `count_view_info`, `country_id`, `city_id`, `district_id`, `json_params`, `json_profiles`, `admin_updated_id`) VALUES
(1, 'Thành Phùng', 'thangnh@gmail.com', 'thangnh', NULL, '$2y$10$T7U7Yj45WwVHYs2i./Qs.OCmQbLqlVvTzDRd3Szm5oQ5exjNLK8xG', NULL, NULL, '2022-09-16 03:12:43', NULL, 0, NULL, 'active', 0, '/member/hinhanh1/1663297963.jpg', '1999-09-14', '0', '0969584998', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Hữu Thắng', 'huuthangb2k50@gmail.com', 'huuthangb2k50', NULL, '$2y$10$0yaljGkHWsrRyRSQe7DqC.0XHdtw7E4nKah78DJdPNc4k/tIFIjda', NULL, '2022-09-28 04:26:26', '2022-09-28 04:32:34', NULL, 0, NULL, 'active', 0, '/member/hinhanh2/1664339554.png', '2000-09-12', '0', '102381234', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'nghia', 'nghia@gmail.com', NULL, NULL, '$2y$10$0yaljGkHWsrRyRSQe7DqC.0XHdtw7E4nKah78DJdPNc4k/tIFIjda', NULL, '2023-11-06 02:15:38', '2023-11-06 02:15:38', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'nghia1', 'nghia1@gmail.com', 'nghia1', NULL, '$2y$10$dQKARCeqMYjwo3FFmp8AEuRPLTcTaWJWNJx3mLch8U9GkeWJRyYCW', NULL, '2023-11-06 03:31:45', '2023-11-06 03:31:45', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'giang123@gmail.com', 'cc@gmail.com', 'giang123@gmail.com', NULL, '$2y$10$wbSV.5kHP8q9l25FxJmBpuM6I1snT.kbHI1UA8Gzn/8jo9Vz9ErnG', NULL, '2023-11-06 04:34:18', '2023-11-06 04:34:18', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'nghia123', 'nghia123@gmail.com', 'nghia123', NULL, '$2y$10$jBqSZM4ykEHuldDKMHirKeKogC0OGlXj12RsQyymwBfYudVvNwsdC', NULL, '2023-11-06 09:18:10', '2023-11-06 09:18:10', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'nghia1234', 'nghia1234@gmail.com', 'nghia1234', NULL, '$2y$10$Eo.4AT6WsgfliIapTJ1imOPkA/PbWt1ED9Yo92EVR/IMSZM4OFXqO', NULL, '2023-11-06 09:24:00', '2023-11-06 09:24:00', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admins_department_id_foreign` (`department_id`),
  ADD KEY `admins_function_id_foreign` (`function_id`),
  ADD KEY `admins_degree_id_foreign` (`degree_id`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Chỉ mục cho bảng `coupon_product`
--
ALTER TABLE `coupon_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_product_coupon_id_foreign` (`coupon_id`),
  ADD KEY `coupon_product_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Chỉ mục cho bảng `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_admin_menus_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_admin_menus_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_blocks`
--
ALTER TABLE `tb_blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_blocks_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_blocks_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_cms_posts_taxonomy_id_foreign` (`taxonomy_id`),
  ADD KEY `tb_cms_posts_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_cms_posts_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_cms_taxonomys_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_cms_taxonomys_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_components`
--
ALTER TABLE `tb_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_components_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_components_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_component_configs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_component_configs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_contacts`
--
ALTER TABLE `tb_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_contacts_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_contacts_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_experts`
--
ALTER TABLE `tb_experts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_experts_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_experts_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_function`
--
ALTER TABLE `tb_function`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_function_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_function_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_images`
--
ALTER TABLE `tb_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_logs`
--
ALTER TABLE `tb_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_logs_user_created_id_foreign` (`user_created_id`),
  ADD KEY `tb_logs_admin_created_id_foreign` (`admin_created_id`);

--
-- Chỉ mục cho bảng `tb_menus`
--
ALTER TABLE `tb_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_menus_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_menus_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_modules`
--
ALTER TABLE `tb_modules`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_online_exchange`
--
ALTER TABLE `tb_online_exchange`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_online_exchange_taxonomy_id_foreign` (`taxonomy_id`),
  ADD KEY `tb_online_exchange_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_online_exchange_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_online_exchange_detail`
--
ALTER TABLE `tb_online_exchange_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_online_exchange_detail_exchange_id_foreign` (`exchange_id`),
  ADD KEY `tb_online_exchange_detail_experts_id_foreign` (`experts_id`),
  ADD KEY `tb_online_exchange_detail_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_online_exchange_detail_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_options`
--
ALTER TABLE `tb_options`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_orders`
--
ALTER TABLE `tb_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_orders_customer_id_foreign` (`customer_id`),
  ADD KEY `tb_orders_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_orders_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_order_details`
--
ALTER TABLE `tb_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_order_details_order_id_foreign` (`order_id`),
  ADD KEY `tb_order_details_item_id_foreign` (`item_id`),
  ADD KEY `tb_order_details_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_order_details_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_pages`
--
ALTER TABLE `tb_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_pages_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_pages_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_post_comment`
--
ALTER TABLE `tb_post_comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_post_document`
--
ALTER TABLE `tb_post_document`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_post_history`
--
ALTER TABLE `tb_post_history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_post_image`
--
ALTER TABLE `tb_post_image`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_products`
--
ALTER TABLE `tb_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_products_taxonomy_id_foreign` (`taxonomy_id`),
  ADD KEY `tb_products_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_products_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_roles_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_roles_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_royaltie`
--
ALTER TABLE `tb_royaltie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_royaltie_post_id_foreign` (`post_id`),
  ADD KEY `tb_royaltie_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_royaltie_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_user_role`
--
ALTER TABLE `tb_user_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_views`
--
ALTER TABLE `tb_views`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_widgets`
--
ALTER TABLE `tb_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_widgets_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_widgets_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_widget_configs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_widget_configs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `coupon_product`
--
ALTER TABLE `coupon_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT cho bảng `tb_blocks`
--
ALTER TABLE `tb_blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT cho bảng `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700;

--
-- AUTO_INCREMENT cho bảng `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT cho bảng `tb_components`
--
ALTER TABLE `tb_components`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tb_contacts`
--
ALTER TABLE `tb_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tb_experts`
--
ALTER TABLE `tb_experts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tb_function`
--
ALTER TABLE `tb_function`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tb_images`
--
ALTER TABLE `tb_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tb_logs`
--
ALTER TABLE `tb_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tb_menus`
--
ALTER TABLE `tb_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `tb_modules`
--
ALTER TABLE `tb_modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tb_online_exchange`
--
ALTER TABLE `tb_online_exchange`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tb_online_exchange_detail`
--
ALTER TABLE `tb_online_exchange_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tb_options`
--
ALTER TABLE `tb_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tb_orders`
--
ALTER TABLE `tb_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `tb_order_details`
--
ALTER TABLE `tb_order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `tb_pages`
--
ALTER TABLE `tb_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tb_post_comment`
--
ALTER TABLE `tb_post_comment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tb_post_document`
--
ALTER TABLE `tb_post_document`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tb_post_history`
--
ALTER TABLE `tb_post_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tb_post_image`
--
ALTER TABLE `tb_post_image`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `tb_products`
--
ALTER TABLE `tb_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `tb_roles`
--
ALTER TABLE `tb_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tb_royaltie`
--
ALTER TABLE `tb_royaltie`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tb_user_role`
--
ALTER TABLE `tb_user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tb_views`
--
ALTER TABLE `tb_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_degree_id_foreign` FOREIGN KEY (`degree_id`) REFERENCES `tb_degree` (`id`),
  ADD CONSTRAINT `admins_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `tb_department` (`id`),
  ADD CONSTRAINT `admins_function_id_foreign` FOREIGN KEY (`function_id`) REFERENCES `tb_function` (`id`);

--
-- Các ràng buộc cho bảng `coupon_product`
--
ALTER TABLE `coupon_product`
  ADD CONSTRAINT `coupon_product_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `tb_products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tb_experts`
--
ALTER TABLE `tb_experts`
  ADD CONSTRAINT `tb_experts_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_experts_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_function`
--
ALTER TABLE `tb_function`
  ADD CONSTRAINT `tb_function_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_function_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_online_exchange`
--
ALTER TABLE `tb_online_exchange`
  ADD CONSTRAINT `tb_online_exchange_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_online_exchange_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_online_exchange_taxonomy_id_foreign` FOREIGN KEY (`taxonomy_id`) REFERENCES `tb_cms_taxonomys` (`id`);

--
-- Các ràng buộc cho bảng `tb_online_exchange_detail`
--
ALTER TABLE `tb_online_exchange_detail`
  ADD CONSTRAINT `tb_online_exchange_detail_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_online_exchange_detail_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_online_exchange_detail_exchange_id_foreign` FOREIGN KEY (`exchange_id`) REFERENCES `tb_online_exchange` (`id`),
  ADD CONSTRAINT `tb_online_exchange_detail_experts_id_foreign` FOREIGN KEY (`experts_id`) REFERENCES `tb_experts` (`id`);

--
-- Các ràng buộc cho bảng `tb_products`
--
ALTER TABLE `tb_products`
  ADD CONSTRAINT `tb_products_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_products_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_products_taxonomy_id_foreign` FOREIGN KEY (`taxonomy_id`) REFERENCES `tb_cms_taxonomys` (`id`);

--
-- Các ràng buộc cho bảng `tb_royaltie`
--
ALTER TABLE `tb_royaltie`
  ADD CONSTRAINT `tb_royaltie_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_royaltie_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_royaltie_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `tb_cms_media` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
