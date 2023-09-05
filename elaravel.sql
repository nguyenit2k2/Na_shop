-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 04, 2021 lúc 08:18 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `elaravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id_admin_roles` int(11) NOT NULL,
  `admin_admin_id` int(10) UNSIGNED NOT NULL,
  `roles_id_roles` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin_roles`
--

INSERT INTO `admin_roles` (`id_admin_roles`, `admin_admin_id`, `roles_id_roles`) VALUES
(30, 8, 3),
(49, 3, 3),
(50, 3, 1),
(53, 1, 2),
(54, 1, 3),
(55, 1, 1),
(56, 2, 2),
(57, 2, 3),
(58, 2, 1),
(60, 4, 2),
(61, 4, 3),
(62, 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_account`
--

CREATE TABLE `tbl_account` (
  `acc_id` int(10) UNSIGNED NOT NULL,
  `account` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `product_id` int(2) NOT NULL,
  `status` int(1) NOT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `time_buy` datetime DEFAULT current_timestamp(),
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_account`
--

INSERT INTO `tbl_account` (`acc_id`, `account`, `password`, `product_id`, `status`, `customer_id`, `time_buy`, `product_name`) VALUES
(1, 'ghjkss', 'hoangnguyen123', 9, 1, NULL, '2021-12-02 20:49:18', NULL),
(3, '1ghhshhs', 'hoangnguyen123', 10, 1, NULL, '2021-12-02 20:49:18', NULL),
(4, 'abcgsg', 'hoangnguyen123', 25, 1, NULL, '2021-12-02 20:49:18', NULL),
(5, 'rtghnmh', 'hoangnguyen123', 6, 0, 18, '2021-12-03 17:14:20', 'PUBG PC'),
(6, 'qwertyui', 'jyshhshsh120', 8, 1, NULL, '2021-12-02 20:49:18', NULL),
(7, 'hoangnguyenz123', 'hoangnguyen1234', 13, 0, 18, '2021-12-03 18:56:50', 'Kiếm thế'),
(8, 'hoanggg12', 'hoan123', 6, 0, 18, '2021-12-03 18:56:50', 'PUBG PC'),
(9, 'hoang123pl', 'hjkhj', 6, 1, NULL, '2021-12-03 14:23:03', NULL),
(10, '21club33', 'hoangrt123', 6, 1, NULL, '2021-12-03 14:01:02', NULL),
(11, 'sql12', '4755995s', 24, 0, 18, '2021-12-03 18:56:50', 'Grand Theft Auto V - GTA V'),
(14, 'ageofempires1', 'hoangnguyen1', 7, 1, NULL, '2021-12-02 20:49:18', NULL),
(18, 'ageofempires3', 'hoangnguyen2', 7, 1, NULL, '2021-12-02 20:49:18', NULL),
(19, 'ageofempires4', 'hoangnguyen2', 7, 1, NULL, '2021-12-02 20:49:18', NULL),
(20, 'ageofempires5', 'hoangnguyen2', 7, 1, NULL, '2021-12-02 20:49:18', NULL),
(23, 'raft2', 'hoangnguyenx1', 8, 1, NULL, '2021-12-02 20:49:18', NULL),
(25, 'Battlefield1', 'hoangnguyenx11', 9, 1, NULL, '2021-12-02 20:49:18', NULL),
(26, 'Battlefield12', 'hoangnguyenx11', 9, 1, NULL, '2021-12-02 20:49:18', NULL),
(27, 'Battlefield2', 'hoangnguyenx11', 9, 1, NULL, '2021-12-02 20:49:18', NULL),
(28, 'Battlefield5', 'hoangnguyenx11', 9, 1, NULL, '2021-12-02 20:49:18', NULL),
(29, 'ageofempires2', 'hoangnguyx1', 7, 1, NULL, '2021-12-02 20:49:18', NULL),
(31, 'gow23', 'gow14', 10, 1, NULL, '2021-12-02 20:49:18', NULL),
(32, 'killingfootahhs', 'treemonkey12', 11, 1, NULL, '2021-12-02 20:49:18', NULL),
(33, 'killingfootgtwa', 'class215', 11, 1, NULL, '2021-12-02 20:49:18', NULL),
(34, 'kill23gtwa', 'clre215', 11, 1, NULL, '2021-12-02 20:49:18', NULL),
(35, 'kilwertgtwa', 'claswe5', 11, 1, NULL, '2021-12-02 20:49:18', NULL),
(36, 'kill12ootgtwa', 'clopus5', 11, 1, NULL, '2021-12-02 20:49:18', NULL),
(37, 'hoangx12nguyen123', 'yhshshhiyq11', 12, 1, NULL, '2021-12-02 20:49:18', NULL),
(38, 'treelemon12', 'hnshhhsa1123', 12, 1, NULL, '2021-12-02 20:49:18', NULL),
(39, '785422refs', 'hytshhshs', 12, 1, NULL, '2021-12-02 20:49:18', NULL),
(40, 'Nguyenajhsa12w', 'hoangngyenx12', 12, 1, NULL, '2021-12-02 20:49:18', NULL),
(41, 'hoangnguyens32', 'hoangnguyenxz12', 12, 1, NULL, '2021-12-02 20:49:18', NULL),
(42, 'kiemthez12', 'kiemthef12', 13, 0, 18, '2021-12-03 18:56:50', 'Kiếm thế'),
(43, '75kiempro', 'kiem75vip', 13, 1, NULL, '2021-12-02 20:49:18', NULL),
(44, 'alpha12', 'alpha8pro', 14, 1, NULL, '2021-12-02 20:49:18', NULL),
(45, 'alr43club', '21club32', 14, 1, NULL, '2021-12-02 20:49:18', NULL),
(46, 'nguyenvk213u123', '478abs15t', 14, 1, NULL, '2021-12-02 20:49:18', NULL),
(47, 'thyshhshsh', 'hoangnguyenz165re', 14, 1, NULL, '2021-12-02 20:49:18', NULL),
(48, 'pooltoboy1607', '74poiku', 14, 1, NULL, '2021-12-02 20:49:18', NULL),
(49, '74senverday', 'killingtree', 15, 1, NULL, '2021-12-02 20:49:18', NULL),
(50, 'polyterwas', 'poltyhsbsgwas14', 15, 1, NULL, '2021-12-02 20:49:18', NULL),
(51, 'fireoffree', 'faifaivip12', 16, 1, NULL, '2021-12-02 20:49:18', NULL),
(52, 'mixxi12eer', 'mixi12was', 17, 1, NULL, '2021-12-02 20:49:18', NULL),
(53, 'xikuyshh12', 'hdtree7652', 17, 1, NULL, '2021-12-02 20:49:18', NULL),
(54, 'pricetotime', 'paytotimeotd', 17, 1, NULL, '2021-12-02 20:49:18', NULL),
(55, 'callmepro12', 'some12retstic', 17, 1, NULL, '2021-12-02 20:49:18', NULL),
(56, 'timeismoney', 'gooderte12', 17, 1, NULL, '2021-12-02 20:49:18', NULL),
(57, '78refthshsh', '7401qwe36', 17, 1, NULL, '2021-12-02 20:49:18', NULL),
(58, 'cracktowin', 'caracklomve', 17, 1, NULL, '2021-12-02 20:49:18', NULL),
(59, 'trghshsh', 'hoangderdtej', 18, 1, NULL, '2021-12-02 20:49:18', NULL),
(60, '75prolife', 'porlifejs14', 18, 1, NULL, '2021-12-02 20:49:18', NULL),
(61, '42lorhuw', '4536', 18, 1, NULL, '2021-12-02 20:49:18', NULL),
(62, '09157726', 'ytehsnjsjg', 18, 1, NULL, '2021-12-02 20:49:18', NULL),
(63, 'firewhite13', 'firewhitecisk', 18, 1, NULL, '2021-12-02 20:49:18', NULL),
(64, 'dead123hshn', 'haiaihshah', 19, 1, NULL, '2021-12-02 20:49:18', NULL),
(65, 'dssa13n', 'haiais23ah', 19, 1, NULL, '2021-12-02 20:49:18', NULL),
(66, 'd13rt2hn', 'hai43h', 19, 1, NULL, '2021-12-02 20:49:18', NULL),
(67, '4ty123hshn', 'haigfrah', 19, 1, NULL, '2021-12-02 20:49:18', NULL),
(68, 'deferehn', 'haicafh', 19, 1, NULL, '2021-12-02 20:49:18', NULL),
(69, 'cao123n', 'hst23ah', 20, 1, NULL, '2021-12-02 20:49:18', NULL),
(70, 'sert3n', 'hghrss123', 20, 1, NULL, '2021-12-02 20:49:18', NULL),
(71, 'gaf3n', 'haiare2h', 20, 1, NULL, '2021-12-02 20:49:18', NULL),
(72, 'ca3rew3n', 'hsetujah', 21, 1, NULL, '2021-12-02 20:49:18', NULL),
(73, 'sferss3n', 'hgcaf3', 21, 1, NULL, '2021-12-02 20:49:18', NULL),
(74, 'frbdsssn', 'hedw134h', 21, 1, NULL, '2021-12-02 20:49:18', NULL),
(75, 'c96358523n', 'aetvipolh', 21, 1, NULL, '2021-12-02 20:49:18', NULL),
(76, 'c7552n', 'hsasah', 21, 1, NULL, '2021-12-02 20:49:18', NULL),
(77, 'cao78414n', 'numbsgsgh', 21, 1, NULL, '2021-12-02 20:49:18', NULL),
(78, 'cayhgqa21n', 'hscrackh', 21, 1, NULL, '2021-12-02 20:49:18', NULL),
(79, '25trfesss', 'hhellopsq', 21, 1, NULL, '2021-12-02 20:49:18', NULL),
(80, 'ca3sawn', 'hsw21jah', 22, 1, NULL, '2021-12-02 20:49:18', NULL),
(81, 'sferrern', 'h1263', 22, 1, NULL, '2021-12-02 20:49:18', NULL),
(82, 'sewwfessn', 'hedw1234h', 22, 1, NULL, '2021-12-02 20:49:18', NULL),
(83, 'c1223n', 'aetvip3lh', 22, 1, NULL, '2021-12-02 20:49:18', NULL),
(84, 'c755retge', 'hsas213h', 22, 1, NULL, '2021-12-02 20:49:18', NULL),
(85, 'cao7cloudn', 'n8964sgsgh', 22, 1, NULL, '2021-12-02 20:49:18', NULL),
(86, 'casawa121n', 'hsssckh', 22, 1, NULL, '2021-12-02 20:49:18', NULL),
(87, 'regd11esss', 'hheqqopsq', 22, 1, NULL, '2021-12-02 20:49:18', NULL),
(88, '1sa7852n', '1ew21jah', 24, 1, NULL, '2021-12-02 20:49:18', NULL),
(89, 'sfgtaern', 'gta263', 24, 1, NULL, '2021-12-02 20:49:18', NULL),
(90, 'sgta12sn', 'gta234h', 24, 1, NULL, '2021-12-02 20:49:18', NULL),
(92, 'cgta12retge', 'hsagta223h', 24, 1, NULL, '2021-12-02 20:49:18', NULL),
(93, 'caogtaaaudn', 'n896gtah', 24, 1, NULL, '2021-12-02 20:49:18', NULL),
(94, 'cgtaa12341n', 'hsgta1123h', 24, 1, NULL, '2021-12-02 20:49:18', NULL),
(95, 'regta125asss', 'hhgtapsq', 24, 1, NULL, '2021-12-02 20:49:18', NULL),
(96, 'recafagtass', 'hhgtap1', 24, 1, NULL, '2021-12-02 20:49:18', NULL),
(97, 'fornirni52n', '1ernijah', 23, 1, NULL, '2021-12-02 20:49:18', NULL),
(98, 'sfrnirnirn', 'grnirni63', 23, 1, NULL, '2021-12-02 20:49:18', NULL),
(99, 'sgrnirni2srnin', 'grnita2rni34h', 23, 1, NULL, '2021-12-02 20:49:18', NULL),
(100, 'cgtrniaa3n', 'aernia3lh', 23, 1, NULL, '2021-12-02 20:49:18', NULL),
(101, 'forniraft52n', '1er14trwah', 25, 1, NULL, '2021-12-02 20:49:18', NULL),
(102, 'ffnguyenff', 'hoangnguyen12345', 6, 1, NULL, '2021-12-03 14:25:30', NULL),
(103, 'nsgnsnshsh', 'hiaishisahins', 15, 1, NULL, '2021-12-02 23:31:13', NULL),
(104, 'cgtaaaa3n', 'aetgta3lh', 24, 1, NULL, '2021-12-02 23:33:31', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'hoangnguyen123@gmail.com', 'hoangnguyen123', 'Nguyen', '0932023991', NULL, NULL),
(2, '1', '1', '1', '1', NULL, NULL),
(4, 'hhhjkyhgv@gmail.com', '759652852', 'huoasjjs', '785296', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_slug`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'Tencent', 'Tencent', 'Tencent là hãng game lớn nhất Trung Quốc', 0, NULL, NULL),
(2, 'Nintendo', 'Nintendo', 'Nintendo là hãng game nổi tiếng thế giới', 0, NULL, NULL),
(3, 'Microsoft', 'Microsoft', 'Microsoft là công ty phát hàng game lâu đời và nổi tiếng', 0, NULL, NULL),
(4, 'Steam', 'Steam', 'Steam là kho game bản quyền lớn nhất hiện nay', 0, NULL, NULL),
(5, 'Samsung', 'Samsung', 'Samsung là một hãng game lớn ở Hàn Quốc', 0, NULL, NULL),
(6, 'Game-Loft', 'Game-Loft', 'Hãng game lâu đời và uy tín', 0, NULL, NULL),
(7, 'VNG', 'VNG', 'Nhà phát hành game số 1 Việt Nam', 0, NULL, NULL),
(8, 'Vina GAME', 'Vina Game', 'Kho game di dộng Việt Nam', 0, NULL, NULL),
(9, 'Garena', 'Garena', 'Nhà phát hành các tựa game nổi tiếng như LMHT, FO4,...', 0, NULL, NULL),
(10, 'Origin', 'origin', 'Game bản quyền Origin', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_card`
--

CREATE TABLE `tbl_card` (
  `money` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_card`
--

INSERT INTO `tbl_card` (`money`, `extra`, `total`) VALUES
('20000', '2000', 22000),
('50000', '5000', 55000),
('10000', '1000', 11000),
('100000', '10000', 110000),
('200000', '20000', 220000),
('500000', '50000', 550000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_card_name`
--

CREATE TABLE `tbl_card_name` (
  `card_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_card_name`
--

INSERT INTO `tbl_card_name` (`card_name`) VALUES
('Mobiphone'),
('Viettel'),
('Vinaphone');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_quantity` int(10) DEFAULT NULL,
  `product_price` int(10) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `order_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`product_name`, `product_quantity`, `product_price`, `product_id`, `id`, `order_id`) VALUES
('PUBG PC', 1, 500000, 6, 106, 239),
('PUBG PC', 1, 500000, 6, 107, 241),
('PUBG PC', 1, 500000, 6, 108, 242),
('Kiếm thế', 2, 110000, 13, 109, 242),
('Grand Theft Auto V - GTA V', 1, 500000, 24, 110, 242);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_category_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `meta_keywords`, `category_name`, `slug_category_product`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Game Hành Động,game hanh dong,hanh dong', 'Game Hành Động', 'hanh-dong', 'Game Hành Động', 0, NULL, NULL),
(2, 'Game Chiến Thuật,chien thuat', 'Game Chiến Thuật', 'chien-thuat', 'Game chiến thuật', 0, NULL, NULL),
(3, 'Game Trên Steam, steam', 'Game Steam', 'game-steam', 'Game Steam', 0, NULL, NULL),
(4, 'Game Phiêu Lưu, phieu luu, mao hiem', 'Game Phiêu Lưu', 'phieu-luu', 'Game Phiêu Lưu', 0, NULL, NULL),
(5, 'Game Giải Đố,trí tuệ,giai do,tri tue', 'Game Giải Đố', 'giai-do', 'Game Giải Đố', 0, NULL, NULL),
(6, 'Game Mô Phỏng, mo phong', 'Game Mô Phỏng', 'mo-phong', 'Game Mô Phỏng', 0, NULL, NULL),
(7, 'Game Nhập Vai', 'Game Nhập Vai', 'nhap-vai', 'Game Nhập Vai', 0, NULL, NULL),
(8, 'Game Bắn Súng', 'Game Bắn Súng', 'ban-sung', 'Game Bắn Súng', 0, NULL, NULL),
(9, 'Game Kinh Dị,kinh di', 'Game Kinh Dị', 'kinh-di', 'Game Kinh Dị', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `time` datetime NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `customer_id`, `product_id`, `comment`, `time`, `customer_name`) VALUES
(6, 18, 6, 'hshs', '2021-11-29 14:11:44', 'Hoang Nguyen'),
(7, 18, 6, 'Game hay mà', '2021-11-29 16:14:26', 'Hoang Nguyen'),
(8, 18, 6, 'âsasasas', '2021-11-29 23:19:53', 'Hoang Nguyen'),
(9, 18, 13, 'Game hay quá <3', '2021-11-30 15:16:16', 'Hoang Nguyen'),
(10, 222, 9, 'game dở ẹc. éo mua', '2021-11-30 18:58:56', 'Phượng'),
(11, 18, 17, 'Game này hay quá phải tải mới được', '2021-12-01 00:03:31', 'Hoang Nguyen'),
(12, 18, 17, 'Tôi thấy PUBG PC vẫn hay hơn nhỉ !', '2021-12-01 00:03:53', 'Hoang Nguyen');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `money` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `money`) VALUES
(8, 'Hoang Nguyen', 'vhn.report@gmail.com', '123', '0963768642', 0),
(9, 'Hoang Nguyen', 'sahshahsa@gmail.com', '456', '096555', 0),
(10, 'Hoang Nguyen', 'vhn.re1port@gmail.com', '789', '89955', 0),
(13, 'sáas', 'hoangnguyen@sss', 'sbtc', '2595995', 0),
(17, 'Hoang Nguyen', 'vhn.report1@gmail.com', 'realmadrid', '1121212', 55000),
(18, 'Hoang Nguyen', '21cber@gmail.com', 'hoangnguyen123', '12345', 873148000),
(20, 'Hoang Nguyen', 'vhn.repor2t@gmail.com', 'quit', '589631', 0),
(21, 'Hoang Nguyen', 'nguyenvku@gmail.com', 'hoangnguyen123', '123', 0),
(22, 'Hoang Nguyen', 'voly123@gmail.com', '78632852', '0158966644', 0),
(36, 'nguyendeptrai', 'vhn.reps22t@gmail.com', 'passwor', '0145322994', 0),
(41, 'nguyendeptrai', 'vhn.ser22t@gmail.com', 'password', '01452994', 0),
(221, '1', '1', '1', '1', 11000),
(222, 'Phượng', 'vobichphuong@gmail.com', '123456789', '0750158796', 1000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_total` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `order_total`, `time`) VALUES
(241, 18, 500000, '2021-12-03 17:14:20'),
(242, 18, 1220000, '2021-12-03 18:56:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sold` int(11) DEFAULT NULL,
  `product_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `brand_id` int(11) UNSIGNED NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_quantity`, `product_sold`, `product_slug`, `category_id`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`, `product_type`) VALUES
(6, 'PUBG PC', '3', 10, 'pubg-pc', 8, 1, '<p>&nbsp;</p>\r\n\r\n<p>Pubg PC</p>', '<p>Sau một năm đầy biến động, cuối c&ugrave;ng PlayerUnknown&rsquo;s Battlegrounds đ&atilde; dần trở lại s&acirc;n chơi khi cuối năm 2018 họ đ&atilde; thu h&uacute;t được số lượng đ&ocirc;ng đảo người chơi.</p>\r\n\r\n<p><img alt=\"\" src=\"https://divineshop.vn/image/ckeditor/image-20200831153516-1.jpeg\" /></p>\r\n\r\n<p>Đối với c&aacute;c tựa game bắn s&uacute;ng kh&aacute;c, người chơi c&oacute; thể d&ugrave;ng tiền để trang bị cho m&igrave;nh những vũ kh&iacute; ưng &yacute; nhất. Nhưng đối với game Pubg, tất cả người chơi đều c&oacute; khởi đầu từ hai b&agrave;n tay trắng, n&ecirc;n cơ hội chiến thắng l&agrave; tương đương nhau. Đ&acirc;y l&agrave; điểm kh&aacute;c biệt đầu ti&ecirc;n tạo n&ecirc;n hứng th&uacute; cho người do t&iacute;nh cạnh tranh sinh tồn quyết liệt trong suốt trận đấu. Muốn chiến thắng trong tr&ograve; chơi, đồng nghĩa với việc bạn phải l&agrave; người chiến thắng cuối c&ugrave;ng trong trận đấu. Người chơi phải chiến đấu với 99 người c&ugrave;ng chơi kh&aacute;c trong c&ugrave;ng một trận đấu tr&ecirc;n đảo hoang. Do c&oacute; khởi điểm l&agrave; như nhau n&ecirc;n người chơi phải tận dụng tất cả c&aacute;c kĩ năng chiến đấu, v&agrave; chiến lược chơi ph&ugrave; hợp. Lưu &yacute; l&agrave; bạn lu&ocirc;n phải đề cao cảnh gi&aacute;c mọi l&uacute;c mọi nơi v&igrave; trong trận chiến sẽ kh&ocirc;ng c&oacute; bất k&igrave; đồng minh n&agrave;o. T&iacute;nh năng person versus person (pvp) của game n&agrave;y cũng l&agrave; điểm thu h&uacute;t đối với người chơi. Với t&iacute;nh năng n&agrave;y, bạn lu&ocirc;n phải theo s&aacute;t nh&acirc;n vật của m&igrave;nh, kh&ocirc;ng để cho nh&acirc;n vật tự lực c&aacute;nh sinh trong trận đấu. Người chơi lu&ocirc;n trong tư thế sẵn s&agrave;ng chiến đấu v&agrave; chấp nhận thua cuộc, v&igrave; đ&acirc;y l&agrave; điều kh&ocirc;ng thể tr&aacute;nh khỏi trong một trận đấu.</p>\r\n\r\n<p><img alt=\"\" src=\"https://divineshop.vn/image/ckeditor/image-20200831153516-2.jpeg\" /></p>', '500000', 'pubg.png', 0, NULL, NULL, 0),
(7, 'Age of Empires IV', '5', 2, 'age-of-empires-iv', 5, 6, '<p>Age of Empires IV</p>', '<h3>Một trong những tr&ograve; chơi chiến lược thời gian thực được y&ecirc;u th&iacute;ch nhất đ&atilde; trở lại vinh quang với Age of Empires IV, đưa bạn v&agrave;o trung t&acirc;m của những trận chiến lịch sử ho&agrave;nh tr&aacute;ng đ&atilde; định h&igrave;nh thế giới.</h3>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/4f5db625-ba0e-4748-9110-a1963cbb0673\" width=\"460\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '230000', 'Age of Empires IV.png', 0, NULL, NULL, 1),
(8, 'Raft', '2', 2, 'raft', 7, 6, '<p>Raft</p>', '<h3>nothing</h3>', '135000', 'raft.jpg', 0, NULL, NULL, 2),
(9, 'Battlefield 2 - Origin', '5', NULL, 'battlefield-2-origin', 6, 10, '<p>Battlefield 2 - Origin</p>', '<p>Battlefield 2 - Origin</p>', '450000', 'battle-field.png', 0, NULL, NULL, 1),
(10, 'God of war', '2', NULL, 'god-of-war', 4, 10, '<p>God of war</p>', '<p>&nbsp;Kratos trả th&ugrave; c&aacute;c Vị thần tr&ecirc;n đỉnh Olympus nhiều năm sau lưng, Kratos giờ đ&acirc;y sống như một người đ&agrave;n &ocirc;ng trong vương quốc của c&aacute;c vị thần Bắc &Acirc;u v&agrave; qu&aacute;i vật.&nbsp;Ch&iacute;nh trong thế giới khắc nghiệt, kh&ocirc;ng khoan nhượng n&agrave;y, anh ta phải chiến đấu để tồn tại&hellip; v&agrave; dạy con trai m&igrave;nh l&agrave;m điều tương tự.</p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/cc3497d4-1a4c-4659-8c8a-a2ce3655f813\" width=\"460\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/05696a90-86d5-4ae1-b34f-40bbdf61518b\" width=\"460\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '125000', 'god-of-war.png', 0, NULL, NULL, 2),
(11, 'Killing Floor 2', '5', NULL, 'killing-floor-2', 9, 4, '<p>Killing Floor 2</p>', '<p>Hợp t&aacute;c 6 người chơi Zed giết chết t&igrave;nh trạng hỗn loạn.&nbsp;V&agrave; b&acirc;y giờ, chế độ Sinh tồn so với 12 người chơi cũng vậy - b&acirc;y giờ bạn c&oacute; thể L&Agrave; Zeds!</p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/b3d6d13b-97d0-405b-8ee1-29fedabb16f9\" width=\"460\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '250000', 'Killing floor2.jpg', 0, NULL, NULL, 1),
(12, 'BIGFOOT', '5', NULL, 'bigfoot', 7, 4, '<p>BIGFOOT</p>', '<p>Bạn l&agrave; một thợ săn Bigfoot với một sứ mệnh quan trọng: chấm dứt những tin đồn một lần v&agrave; m&atilde;i m&atilde;i v&agrave; chứng minh với bản th&acirc;n rằng Bigfoot kh&ocirc;ng chỉ l&agrave; một huyền thoại hay một ph&aacute;t minh của tr&iacute; &oacute;c ...</p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/6d25a738-210c-4b38-a9f0-adad66ca27a6\" width=\"460\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '100000', 'spotlight_image_english.jpg', 0, NULL, NULL, 0),
(13, 'Kiếm thế', '1', NULL, 'kiem-the', 6, 7, '<p>Kiếm Thế</p>', '<p>Kiếm Thế l&agrave; tr&ograve; chơi điện tử trực tuyến thứ s&aacute;u của d&ograve;ng game V&otilde; Hiệp v&agrave; l&agrave; sản phẩm thứ mười hai của nh&agrave; sản xuất KingSoft.</p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/055b2b5a-057d-4efe-b5ab-4b6d423c5ed4\" width=\"1200\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '110000', 'kiem-the.png', 0, NULL, NULL, 0),
(14, 'Alpha 8', '5', NULL, 'alpha-8', 1, 1, '<p>Alpha 8</p>', '<h5>Asphalt 8: Airborne l&agrave; một tr&ograve; chơi điện tử thể loại đua xe, được ph&aacute;t triển v&agrave; ph&aacute;t h&agrave;nh bởi Gameloft, l&agrave; một phi&ecirc;n bản trong series Asphalt. Tr&ograve; chơi được ra mắt v&agrave;o ng&agrave;y 22 th&aacute;ng 8 năm 2013 cho iOS v&agrave; Android, ng&agrave;y 13 th&aacute;ng 11 cho Windows 8 v&agrave; Windows Phone 8, v&agrave; ng&agrave;y 15 th&aacute;ng 1 năm 2014 cho BlackBerry 10.</h5>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/026506f8-80bb-4518-bba7-55608c883673\" width=\"575\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '200000', 'alpha8.png', 0, NULL, NULL, 0),
(15, 'Seven Years War 2+', '3', NULL, 'seven-years-war-2', 4, 5, '<p>Seven Years War 2+</p>', '<h5><a href=\"https://www.google.com/search?rlz=1C1GCEA_enVN968VN968&amp;sxsrf=AOaemvLDxM6B73-4PzAI6YfFJpJeAg_3Hg:1634886855706&amp;q=seven+years+war+2+nha%CC%80+xu%C3%A2%CC%81t+ba%CC%89n&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yEtKrywp11LJTrbSTy5L10_Ozy0oLUktii_LTEnNT0_MTbUqKE3KySzOSC1axKpanFqWmqdQmZpYVKxQnlikYKSQl5F4pkGhovTwojONJQpJiWc68wDRaAOjXAAAAA&amp;sa=X&amp;ved=2ahUKEwiEhJSSvN3zAhWWBt4KHaGfD7oQ6BMoAHoECAcQAg\">Nhà xu&acirc;́t bản</a>:&nbsp;<a href=\"https://www.google.com/search?rlz=1C1GCEA_enVN968VN968&amp;sxsrf=AOaemvLDxM6B73-4PzAI6YfFJpJeAg_3Hg:1634886855706&amp;q=Samsung+Electronics&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yEtKrywpV-IEsQ3z8swttVSyk630k8vS9ZPzcwtKS1KL4ssyU1Lz0xNzU60KSpNyMoszUosWsQoHJ-YWl-alK7jmpCaXFOXnZSYX72BlBACvJ-maWAAAAA&amp;sa=X&amp;ved=2ahUKEwiEhJSSvN3zAhWWBt4KHaGfD7oQmxMoAXoECAcQAw\">Samsung Electronics</a></h5>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/d72a1e8c-a425-497d-b1b4-65f8f15595af\" width=\"352\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '150000', 'Seven Years War 2+.jpg', 0, NULL, NULL, 2),
(16, 'The Lengend Of Zalda', '1', NULL, 'the-lengend-of-zalda', 7, 2, '<p>The Lengend Of Zalda</p>', '<h5>The Legend of Zelda: Breath of the Wild l&agrave; tr&ograve; chơi thuộc thể loại h&agrave;nh động kh&aacute;m ph&aacute; được ph&aacute;t triển v&agrave; ph&aacute;t h&agrave;nh bởi Nintendo. Tr&ograve; chơi l&agrave; một phần của series The Legend of Zelda, được ph&aacute;t h&agrave;nh tr&ecirc;n hệ m&aacute;y Nintendo Switch v&agrave; Wii U v&agrave;o ng&agrave;y 3 th&aacute;ng 3 năm 2017</h5>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/6f123baa-451b-4c22-85dc-f31e5d73cb1f\" width=\"1920\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '300000', 'zalda.webp', 0, NULL, NULL, 0),
(17, 'Call of Duty', '7', NULL, 'call-of-duty', 8, 1, '<p>Call of Duty</p>', '<h5>CALL OF DUTY&reg; ch&iacute;nh thức được thiết kế d&agrave;nh ri&ecirc;ng cho điện thoại di động.&nbsp;Chơi c&aacute;c bản đồ v&agrave; chế độ nhiều người chơi mang t&iacute;nh biểu tượng mọi l&uacute;c, mọi nơi.&nbsp;Chiến trường Battle Royale 100 người chơi?&nbsp;Deathmatch đội 5v5 nhanh ch&oacute;ng?&nbsp;Sniper vs sniper battle?&nbsp;CALL OF DUTY&reg;: MOBILE miễn ph&iacute; để chơi của Activision: MOBILE c&oacute; tất cả.</h5>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/afa0cc15-6805-4172-92ba-59b28e3aceb1\" width=\"1920\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '295000', 'callofduty2nd.png', 0, NULL, NULL, 0),
(18, 'Minecraft', '5', NULL, 'minecraft', 7, 3, '<p>Minecraft</p>', '<h5>Kh&aacute;m ph&aacute; thế giới v&ocirc; tận v&agrave; x&acirc;y dựng mọi thứ từ những ng&ocirc;i nh&agrave; đơn giản nhất đến những l&acirc;u đ&agrave;i lớn nhất.&nbsp;Chơi ở chế độ s&aacute;ng tạo với t&agrave;i nguy&ecirc;n kh&ocirc;ng giới hạn hoặc khai th&aacute;c s&acirc;u v&agrave;o thế giới trong chế độ sinh tồn, chế tạo vũ kh&iacute; v&agrave; &aacute;o gi&aacute;p để chống lại đ&aacute;m đ&ocirc;ng nguy hiểm.&nbsp;Tạo, kh&aacute;m ph&aacute; v&agrave; tồn tại một m&igrave;nh hoặc với bạn b&egrave; tr&ecirc;n thiết bị di động hoặc Windows 10.</h5>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/5b874820-5726-427b-b038-be6f83c896fc\" width=\"1400\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '50000', '11307x4B5WLoVoIUtdewG4uJ_YuDRTwBxQy0qP8ylgazLLc01PBxbsFG1pGOWmqhZsxnNkrU3GXbdXIowBAstzlrhtQ4LCI4.jpg', 0, NULL, NULL, 1),
(19, 'Dead by Daylight', '5', NULL, 'dead-by-daylight', 9, 10, '<p>Dead by Daylight</p>', '<h5>Dead by Daylight l&agrave; một tr&ograve; chơi kinh dị nhiều người chơi (4vs1), trong đ&oacute; một người chơi sẽ nhập vai v&agrave;o Kẻ giết người man rợ, v&agrave; bốn người chơi c&ograve;n lại đ&oacute;ng vai Người sống s&oacute;t, cố gắng tho&aacute;t khỏi Kẻ giết người v&agrave; tr&aacute;nh bị bắt v&agrave; bị giết.</h5>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/f9087361-6821-49ea-9c54-0ca90b2f1cb6\" width=\"460\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '60000', 'weekend-deal.jpg', 0, NULL, NULL, 1),
(20, 'Battlefield 4 - Origin', '3', NULL, 'battlefield-4-origin', 8, 10, '<p>Battlefield 4 - Origin</p>', '<h5>Game&nbsp;Battlefield 4 tr&ecirc;n Origin</h5>\r\n\r\n<p>Với 14 chế độ chơi kh&aacute;c nhau,&nbsp;<strong>Battlefield 4&nbsp;</strong>xứng đ&aacute;ng l&agrave; một trong những tựa game FPS đa dạng nhất về mặt n&agrave;y. Từ những chế độ chơi truyền thống của c&aacute;c game FPS như Deathmatch (đấu đơn), Capture the Flag (cướp cờ), đến những thứ đ&atilde; l&agrave;m n&ecirc;n t&ecirc;n tuổi của Battlefield như Conquest (chiếm cứ điểm), Rush (đặt bom tổng đ&agrave;i th&ocirc;ng tin di động M-COM giữa b&ecirc;n c&ocirc;ng v&agrave; thủ).</p>\r\n\r\n<p>V&agrave; cả những chế độ chơi mới như Obliteration (hai đội gi&agrave;nh nhau quả bom để ph&aacute; hủy M-COM) hay Chainlink (chiếm cứ điểm theo thứ tự liền mạch), người chơi c&oacute; thể dễ d&agrave;ng t&igrave;m cho m&igrave;nh một trận đấu ph&ugrave; hợp với sở th&iacute;ch, cũng như khả năng của m&igrave;nh.</p>\r\n\r\n<p>Nếu bạn muốn đua cấp nhanh ch&oacute;ng, hoặc th&iacute;ch những pha đấu s&uacute;ng dồn dập, hay chỉ đơn giản l&agrave;&hellip; kh&ocirc;ng giỏi điều khiển cơ giới: Team Deathmatch (đấu đội), Domination (chiếm v&agrave; giữ c&aacute;c cờ) sẽ l&agrave; lựa chọn th&iacute;ch hợp. C&ograve;n muốn kh&aacute;m ph&aacute; những chế độ mới th&igrave; kh&ocirc;ng thể bỏ qua Obliteration (hai đội gi&agrave;nh nhau bom để ph&aacute; hủy M-COM) hay Chainlink (chiếm cứ điểm theo thứ tự liền mạch).</p>\r\n\r\n<p>V&agrave; nếu muốn một trận&nbsp;<strong>Battlefield 4&nbsp;</strong>&ldquo;ho&agrave;nh t&aacute; tr&agrave;ng&rdquo; tr&ecirc;n PC hay c&aacute;c console thế hệ mới (Xbox One, PS4) với số lượng người chơi tối đa l&agrave; 64, hai chế độ: Conquest Large (chiếm cứ điểm m&agrave;n to) v&agrave; Carrier Assault Large (đ&aacute;nh chiến hạm m&agrave;n to), sẽ đảm bảo mang đến cho bạn một trải nghiệm Battlefield ho&agrave;n chỉnh nhất! <img src=\"https://lh5.googleusercontent.com/iLZ67-GRVY8ATLvmV-6Q-ZJ17JECp8YKAibPAb85ayexDTEdi49zyyC1RRvqEa11coT0wPv9wUg4hZY25lbHJM0bY6M9aUAoG2hY7oH0G7SCWakvDtpeoxVoc5NIqcf70tUZb4_1\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/dded5595-6630-4325-a8f7-dbc35a0b7bf6\" width=\"500\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '350000', 'bf4.png', 0, NULL, NULL, 0),
(21, 'FIFA 18', '8', NULL, 'fifa-18', 1, 8, '<p>FIFA 18</p>', '<p>Game b&oacute;ng đ&aacute; FIFA 18&nbsp;</p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/5b1ff851-79cb-42cb-9468-685142bcb05e\" width=\"460\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '700000', 'FF18.png', 0, NULL, NULL, 1),
(22, 'Among us', '8', NULL, 'among-us', 7, 4, '<p>Game among us tr&ecirc;n Steam</p>', '<p>M&aacute;y PS4 slim mega pack h&agrave;ng ch&iacute;nh h&atilde;ng Sony Việt Nam. Bảo h&agrave;nh h&atilde;ng 01 năm. Miễn ph&iacute; lắp đặt n&ocirc;i th&agrave;nh H&agrave; nội. Ship COD to&agrave;n quốc. Hỗ trợ trả g&oacute;p l&atilde;i xuất 0%</p>\r\n\r\n<p>Bộ sản phẩm gồm :</p>\r\n\r\n<p>- 01 bộ m&aacute;y PS4 slim ổ cứng 1T đời mới nhất cuh 2218 ( đ&atilde; c&oacute; 01 tay theo m&aacute;y )</p>\r\n\r\n<p>- 03 đĩa game mới nguy&ecirc;n seal: God of war 4, Horizon complete edition v&agrave; GTA 5</p>\r\n\r\n<p>KH&Ocirc;NG LẤY QU&Agrave; TẶNG VUI L&Ograve;NG INBOX SHOP HOẶC GỌI HOTLINE 0936011022</p>\r\n\r\n<p><img alt=\"Máy PS4 slim mega pack hàng chính hãng Sony Việt Nam\" src=\"https://bucket.nhanh.vn/store/24046/psCT/20191126/18323327/ps4_slim_mega_pack_.jpg\" /></p>', '50000', 'among us.jpg', 0, NULL, NULL, 2),
(23, 'Fortify', '4', NULL, 'fortify', 5, 4, '<p>Fortify tr&ecirc;n Steam</p>', '<p>Fortify tr&ecirc;n Steam</p>', '29000', 'fortify.jpg', 0, NULL, NULL, 2),
(24, 'Grand Theft Auto V - GTA V', '9', NULL, 'gta-v', 7, 10, '<p>Game GTA-V tr&ecirc;n steam1</p>', '<p>Game GTA-V tr&ecirc;n steam</p>\r\n\r\n<p>&nbsp;</p>', '500000', 'gta-v.jpg', 0, NULL, NULL, 0),
(25, 'Raft2', '2', NULL, 'raft2', 4, 9, '<p>test</p>', '<p>test</p>', '350000', 'similar116.jpg', 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_recharge`
--

CREATE TABLE `tbl_recharge` (
  `card_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(10) NOT NULL,
  `part_id` int(10) NOT NULL,
  `seri` varchar(255) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_recharge`
--

INSERT INTO `tbl_recharge` (`card_name`, `total`, `part_id`, `seri`, `pin`, `customer_id`, `time`) VALUES
('Viettel', 550000, 1, '7529652', '5285285', 18, '2021-11-03 04:35:16'),
('Viettel', 220000, 24, '8529631', '69641222', 18, '2021-11-06 03:10:34'),
('Viettel', 110000, 26, '85296323', '96396312', 18, '2021-11-06 03:14:37'),
('Mobiphone', 110000, 29, '852963222', '555111233', 18, '2021-11-10 03:01:32'),
('Viettel', 220000, 30, '78485285', '8528528', 18, '2021-11-10 03:23:23'),
('Mobiphone', 22000, 31, '78952855', '85964596', 18, '2021-11-12 06:08:52'),
('Mobiphone', 550000, 32, '85296312222', '78963528563', 18, '2021-11-27 02:06:52'),
('Viettel', 22000, 33, '15222336', '4596895', 18, '2021-11-28 14:35:40'),
('Viettel', 22000, 34, '2343123', '885445622', 17, '2021-11-29 15:09:03'),
('Mobiphone', 22000, 35, '1237552599', '7523965256', 17, '2021-11-29 15:09:45'),
('Mobiphone', 11000, 37, '752852852', '8524756652', 17, '2021-11-29 15:19:20'),
('Mobiphone', 11000, 38, '123456221', '21313', 18, '2021-11-29 18:44:30'),
('Viettel', 22000, 39, '78484854', '4878524', 18, '2021-11-30 08:16:32'),
('Mobiphone', 550000, 40, '468421136646', '4556646125', 222, '2021-11-30 11:57:17'),
('Viettel', 550000, 41, '85296744', '696412288', 222, '2021-11-30 12:21:35'),
('Mobiphone', 11000, 42, '852963', '696412', 222, '2021-11-30 12:21:55'),
('Vinaphone', 220000, 43, '10192829', '19209282', 18, '2021-11-30 12:36:21'),
('Mobiphone', 11000, 44, '965778522', '141225547', 221, '2021-11-30 15:08:48'),
('Vinaphone', 55000, 45, '7845654545', '454878652', 18, '2021-12-03 13:56:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `id_roles` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_roles`
--

INSERT INTO `tbl_roles` (`id_roles`, `name`) VALUES
(1, 'admin'),
(2, 'author'),
(3, 'user');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_name` varchar(255) NOT NULL,
  `slider_status` int(11) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_name`, `slider_status`, `slider_image`, `slider_desc`) VALUES
(15, 'GTA', 1, '91869474.jpg', '12'),
(16, 'PUBG', 1, '6b79e3c030a803cd6b4544e82c45d50e25.jpg', '123'),
(19, '887', 1, 'hinh-nen-game-doc-dao_06101610886.jpg', '56'),
(20, '745', 1, 'anh-nen-game-cho-may-tinh_06101292071.jpg', '556'),
(21, 'lol', 1, 'lol57.jpg', '552'),
(22, '456', 1, 'IDOLTV-hinh-nen-game-fortnite-may-tinh-full-hd-91828845.jpg', '68+');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_social`
--

CREATE TABLE `tbl_social` (
  `user_id` int(11) NOT NULL,
  `provider_user_id` varchar(100) NOT NULL,
  `provider` varchar(100) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_social`
--

INSERT INTO `tbl_social` (`user_id`, `provider_user_id`, `provider`, `user`) VALUES
(6, '221605442317143', 'facebook', 6),
(13, '111257400060277532733', 'GOOGLE', 12),
(14, '111264198467826812391', 'GOOGLE', 2),
(15, '108162077516942840028', 'GOOGLE', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id_admin_roles`);

--
-- Chỉ mục cho bảng `tbl_account`
--
ALTER TABLE `tbl_account`
  ADD PRIMARY KEY (`acc_id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_card_name`
--
ALTER TABLE `tbl_card_name`
  ADD PRIMARY KEY (`card_name`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_email` (`customer_email`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_recharge`
--
ALTER TABLE `tbl_recharge`
  ADD PRIMARY KEY (`part_id`),
  ADD UNIQUE KEY `seri` (`seri`),
  ADD UNIQUE KEY `pin` (`pin`);

--
-- Chỉ mục cho bảng `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`id_roles`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Chỉ mục cho bảng `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id_admin_roles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `tbl_account`
--
ALTER TABLE `tbl_account`
  MODIFY `acc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `tbl_recharge`
--
ALTER TABLE `tbl_recharge`
  MODIFY `part_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `id_roles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
