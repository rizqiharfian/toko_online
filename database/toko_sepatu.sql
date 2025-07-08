-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2022 at 08:49 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_sepatu`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('a31jba826hvj7mqgqv7fkuvpqd51lb92', '::1', 1649541870, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393534313736373b),
('p803hhv66vmk3k3b8gftb36e4fu23dar', '::1', 1649542356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393534323335353b),
('u5gtp5qugq45cj7a4d4q9ags7dvlq88l', '::1', 1649542891, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393534323830383b),
('4vhm2a10l6haqardpb7coqscoj92bfi1', '::1', 1649545248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393534353033363b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2264303736613638646330373162353034346432616430373064383333393133373264373636386635653261343233626131656132656261613763343638323630363766356463636239356538316561653733616236353531343934353537373763356331623637303739636265386562613163303333323032386363313939325839304c4a456b45493675326831767559554e584a6c4559626164696c636250516f322f2b4b5055334d36536e6a7946784930763036436468326c372f764a30783449634839473134377663347172786d6a6748387164396677304b66625a4550475051756439755033553669625345363074586d7561597861756956504367223b),
('fvg8q8r8efp21vsq5mq6hm4dmdl3p56e', '::1', 1649545719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393534353434393b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2264303736613638646330373162353034346432616430373064383333393133373264373636386635653261343233626131656132656261613763343638323630363766356463636239356538316561653733616236353531343934353537373763356331623637303739636265386562613163303333323032386363313939325839304c4a456b45493675326831767559554e584a6c4559626164696c636250516f322f2b4b5055334d36536e6a7946784930763036436468326c372f764a30783449634839473134377663347172786d6a6748387164396677304b66625a4550475051756439755033553669625345363074586d7561597861756956504367223b656469745f70726f647563745f666c6173687c733a32373a2250726f64756b20626572686173696c206469706572626172756921223b5f5f63695f766172737c613a313a7b733a31383a22656469745f70726f647563745f666c617368223b733a333a226f6c64223b7d),
('5scs979fkovb1n7ahq6csecl0k05kca1', '::1', 1649545725, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393534353532393b),
('gvh8i59po5pab63iotd162le3rt657up', '::1', 1649546117, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393534353833353b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2264303736613638646330373162353034346432616430373064383333393133373264373636386635653261343233626131656132656261613763343638323630363766356463636239356538316561653733616236353531343934353537373763356331623637303739636265386562613163303333323032386363313939325839304c4a456b45493675326831767559554e584a6c4559626164696c636250516f322f2b4b5055334d36536e6a7946784930763036436468326c372f764a30783449634839473134377663347172786d6a6748387164396677304b66625a4550475051756439755033553669625345363074586d7561597861756956504367223b656469745f70726f647563745f666c6173687c733a32373a2250726f64756b20626572686173696c206469706572626172756921223b5f5f63695f766172737c613a313a7b733a31383a22656469745f70726f647563745f666c617368223b733a333a226f6c64223b7d),
('ei4aurkomkfctfb5b9513ktq0q5bf8ov', '::1', 1649546123, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393534353835323b),
('fjrtrf4t6ne5774jft5cq9d2e296n2n9', '::1', 1649546331, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393534363134363b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a2264303736613638646330373162353034346432616430373064383333393133373264373636386635653261343233626131656132656261613763343638323630363766356463636239356538316561653733616236353531343934353537373763356331623637303739636265386562613163303333323032386363313939325839304c4a456b45493675326831767559554e584a6c4559626164696c636250516f322f2b4b5055334d36536e6a7946784930763036436468326c372f764a30783449634839473134377663347172786d6a6748387164396677304b66625a4550475051756439755033553669625345363074586d7561597861756956504367223b656469745f70726f647563745f666c6173687c733a32373a2250726f64756b20626572686173696c206469706572626172756921223b5f5f63695f766172737c613a313a7b733a31383a22656469745f70726f647563745f666c617368223b733a333a226f6c64223b7d),
('r9ccegttehbr6l9ho0mr9e7rmbdlcm5s', '::1', 1649546480, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393534363237393b),
('hnihlfscd685fm99rdp9p39nq43c82vm', '::1', 1649547048, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393534363734393b),
('hfl6lj5v4vapfrkhivnhq73skc6ccn8b', '::1', 1649547398, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393534373130373b7265646972656374696f6e7c733a38383a226148523063446f764c327876593246736147397a644339306232747658334e6c6347463064533970626d526c65433577614841765933567a644739745a584976634746356257567564484d76593239755a6d6c7962513d3d223b),
('n1vpgj7v7q73vns7chpletu9jocvb2as', '::1', 1649547785, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393534373438353b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a223234363535323361343235643262613234373638306233636536383830393037353937313065396234383133393836373561383965646266323834326138613562303039666437623938643764313731613965643764323332633063663434333737396332623738386237393064343166386563653933303264326439353838503654724a334d466b3630674468534e315535457072746b5077432b533466434b382f6d7257526b3359626f4945624f66366346496c7a3856573032735866704164594b2b6e5438504832546e6f6f63362f714b784c70526a584b63384167324e66786c446d6f35774668414e3778552f705a493438584f476b6d753652326c223b),
('voisi01berb7cm4mtv9ss5raf9r7rmnp', '::1', 1649547868, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393534373738393b7265646972656374696f6e7c4e3b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a223234363535323361343235643262613234373638306233636536383830393037353937313065396234383133393836373561383965646266323834326138613562303039666437623938643764313731613965643764323332633063663434333737396332623738386237393064343166386563653933303264326439353838503654724a334d466b3630674468534e315535457072746b5077432b533466434b382f6d7257526b3359626f4945624f66366346496c7a3856573032735866704164594b2b6e5438504832546e6f6f63362f714b784c70526a584b63384167324e66786c446d6f35774668414e3778552f705a493438584f476b6d753652326c223b),
('ufva7i9cl34t8ir9r9c5k0ki87rj41dr', '::1', 1649548095, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393534373934383b7265646972656374696f6e7c733a38383a226148523063446f764c327876593246736147397a644339306232747658334e6c6347463064533970626d526c65433577614841765933567a644739745a584976634746356257567564484d76593239755a6d6c7962513d3d223b5f5f4143544956455f53455353494f4e5f444154417c733a3235363a223334623535636636373762663332633963393330396162646430323162643633666337333166643462623639353231666166393633393164306466366438363131353033316633383036656463336365643434326333303335353734636236633732343731353035306535626162343735326537653337326333633532353133337a2b375069676b7831327964497976334435326f2f6749454a3269676134396b613777774e7a584b576b764a793341385469784c43444365492b6569437a44567267774d4165323544657a30506142323850704b5764646264436944736e48746e4532613337465a413046316d54455537387a36666e6448672f6478454c68223b),
('f16aga5jsimrrdjc2hbg9q8qd7k4098u', '::1', 1649556678, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393535363636393b);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `subject` varchar(128) DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `message` mediumtext NOT NULL,
  `contact_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `reply_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `parent_id`, `name`, `subject`, `email`, `message`, `contact_date`, `status`, `reply_at`) VALUES
(1, NULL, 'Agung Tri Saputra', 'Pengiriman kok lama?', 'martinms.za@gmail.com', 'pengiriman pesanan saya kok lama ya', '2020-03-29 07:40:13', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(32) NOT NULL,
  `credit` decimal(8,2) NOT NULL,
  `start_date` date NOT NULL,
  `expired_date` date NOT NULL,
  `is_active` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `credit`, `start_date`, `expired_date`, `is_active`) VALUES
(1, '#DiRumahAja', 'DIRUMAHAJA19', '5000.00', '2020-03-27', '2020-04-03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `phone_number` varchar(32) DEFAULT NULL,
  `address` varchar(191) NOT NULL,
  `profile_picture` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `name`, `phone_number`, `address`, `profile_picture`) VALUES
(7, 8, 'Pembeli1', '087741130522', 'Jln. Merdeka Barat- Jakarta Indonesia', NULL),
(8, 10, 'Pembeli2', '087741160520', 'Jln. Merdeka Barat- Jakarta Indonesia', NULL),
(9, 11, 'Pembeli4', '0870000000', 'Jln.Merdeka Barat - Jakarta', NULL),
(10, 12, 'revan', '081287702224', 'Bekasi', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `order_number` varchar(16) NOT NULL,
  `order_status` enum('1','2','3','4','5') DEFAULT '1',
  `order_date` datetime NOT NULL,
  `total_price` decimal(8,2) DEFAULT NULL,
  `total_items` int(10) DEFAULT NULL,
  `payment_method` int(11) DEFAULT '1',
  `delivery_data` text,
  `delivered_date` datetime DEFAULT NULL,
  `finish_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `coupon_id`, `order_number`, `order_status`, `order_date`, `total_price`, `total_items`, `payment_method`, `delivery_data`, `delivered_date`, `finish_date`) VALUES
(12, 8, NULL, 'IUK26102018329', '2', '2020-10-26 07:09:37', '18000.00', 1, 1, '{\"customer\":{\"name\":\"Pembeli1\",\"phone_number\":\"087741130522\",\"address\":\"Jln. Merdeka Barat- Jakarta Indonesia\"},\"note\":\"\\u30a2\\u30ea\\u30d5\\u3055\\u3093\\r\\n\\r\\n28\\u65e5\\u3067\\u3057\\u305f\\u3089\\u30a4\\u30f3\\u30c9\\u30cd\\u30b7\\u30a2\\u6642\\u9593\\u306713\\u6642\\uff5e14\\u6642\\u306a\\u3089\\r\\n\\u30df\\u30fc\\u30c6\\u30a3\\u30f3\\u30b0\\u3067\\u304d\\u307e\\u3059\\u3002\\r\\n28\\u65e5\\u306b\\u30b7\\u30e3\\u30ea\\u3055\\u3093\\u30fb\\u30b5\\u30d2\\u30c9\\u3055\\u3093\\u306f\\u5927\\u4e08\\u592b\\u3067\\u3059\\u304b\\uff1f\\r\\n\\r\\n\\u576a\\u4e95\\r\\n\"}', NULL, NULL),
(13, 10, NULL, 'PNL261020110401', '2', '2020-10-26 07:16:25', '30000.00', 1, 1, '{\"customer\":{\"name\":\"Pembeli2\",\"phone_number\":\"087741160520\",\"address\":\"Jln. Merdeka Barat- Jakarta Indonesia\"},\"note\":\"Segera Dikrim Ya Admin\"}', NULL, NULL),
(14, 11, NULL, 'ASV261020111546', '3', '2020-10-26 08:37:53', '60000.00', 1, 1, '{\"customer\":{\"name\":\"Pembeli4\",\"phone_number\":\"0870000000\",\"address\":\"Jln.Merdeka Barat - Jakarta\"},\"note\":\"Tolong Dikirim Sesuai Pesanan ya Ka..\"}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `order_qty` int(10) NOT NULL,
  `order_price` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `product_id`, `order_qty`, `order_price`) VALUES
(3, 4, 2, 1, '31000.00'),
(4, 4, 8, 13, '20000.00'),
(5, 5, 2, 1, '31000.00'),
(6, 5, 13, 12, '20000.00'),
(7, 6, 9, 10, '35000.00'),
(8, 7, 10, 1, '12000.00'),
(9, 7, 9, 1, '35000.00'),
(10, 7, 2, 1, '31000.00'),
(11, 8, 9, 1, '35000.00'),
(12, 8, 1, 5, '65000.00'),
(14, 12, 2, 1, '13000.00'),
(15, 13, 5, 3, '10000.00'),
(16, 14, 1, 3, '20000.00');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `payment_price` decimal(8,2) DEFAULT NULL,
  `payment_date` datetime NOT NULL,
  `picture_name` varchar(191) DEFAULT NULL,
  `payment_status` enum('1','2','3') DEFAULT '1',
  `confirmed_date` datetime DEFAULT NULL,
  `payment_data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_price`, `payment_date`, `picture_name`, `payment_status`, `confirmed_date`, `payment_data`) VALUES
(6, 12, '40000.00', '2020-10-26 07:13:04', 'Tak_berjudul31_20201026111339.jpg', '1', NULL, '{\"transfer_to\":\"mandiri\",\"source\":{\"bank\":\"Mandiri\",\"name\":\"Pembeli1\",\"number\":\"0987654321\"}}'),
(7, 13, '30000.00', '2020-10-26 07:16:59', 'Tak_berjudul31_20201026111236.jpg', '1', NULL, '{\"transfer_to\":\"bca\",\"source\":{\"bank\":\"BCA\",\"name\":\"Pembeli2\",\"number\":\"1122334455\"}}'),
(8, 14, '60000.00', '2020-10-26 08:38:26', 'Bukti_Transfer.jpg', '2', NULL, '{\"transfer_to\":\"mandiri\",\"source\":{\"bank\":\"Mandiri\",\"name\":\"Pembeli4\",\"number\":\"123456789\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `category_id` int(10) DEFAULT NULL,
  `sku` varchar(32) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `picture_name` varchar(191) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `current_discount` decimal(8,2) DEFAULT '0.00',
  `stock` int(10) NOT NULL,
  `product_unit` varchar(32) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT '1',
  `add_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sku`, `name`, `description`, `picture_name`, `price`, `current_discount`, `stock`, `product_unit`, `is_available`, `add_date`) VALUES
(10, 9, 'AMXA410449', 'ADIDAS META 7', NULL, '2a67abde98b4f77f18b1086ca0a57adf.jpg', '400000.00', '0.00', 10, 'PASANG', 1, '2022-04-10 01:04:09'),
(11, 9, 'AR1A320511', 'ADIDAS ROSE 1', NULL, 'SEPATU_2.jpg', '300000.00', '0.00', 20, 'PASANG', 1, '2022-04-10 01:05:11'),
(12, 9, 'AF9A320618', 'ADIDAS FURTOIS 99', NULL, 'b1fa65aae63c789de3707f37e6ea56791.jpg', '350000.00', '0.00', 20, 'PASANG', 1, '2022-04-10 01:06:58'),
(13, 2, 'NRN2100061', 'NIKE RASTY', NULL, 'NIKE_4.png', '250000.00', '0.00', 100, 'PASANG', 1, '2022-04-10 01:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(10) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `name`) VALUES
(2, 'NIKE'),
(9, 'ADIDAS');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `review_text` mediumtext NOT NULL,
  `review_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `order_id`, `title`, `review_text`, `review_date`, `status`) VALUES
(2, 7, 6, 'Sangat puas', 'Pengiriman cepat dan sayur segar', '2020-03-30 08:31:31', 1),
(3, 7, 5, 'Buah segar', 'Buah segar dan kualitasnya sangat bagus', '2020-03-30 08:33:10', 1),
(4, 8, 12, 'Toko Buah Segar', 'Sangat Puas Dengan Pelaynan dan Produknya Segar Semua', '2020-10-26 07:13:38', 1),
(5, 10, 13, 'Toko Buah Segar', 'Pesanan Dikrim Tepat Waktu dan Kualitas Segar Segar', '2020-10-26 07:17:35', 1),
(6, 11, 14, 'Toko Buah Segar', 'Sangat Puas Dengan Pelayanan Adminnya', '2020-10-26 08:38:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) NOT NULL,
  `role_name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) NOT NULL,
  `key` varchar(32) NOT NULL,
  `content` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `content`) VALUES
(1, 'current_theme_name', 'vegefoods'),
(2, 'store_name', 'Premium Shoes Store'),
(3, 'store_phone_number', ''),
(4, 'store_email', ''),
(5, 'store_tagline', 'Belanja Buah Segar Segar 24 Jam'),
(6, 'store_logo', 'Logo.png'),
(7, 'max_product_image_size', '20000'),
(8, 'store_description', 'Belanja buah segar dengan murah, mudah dan cepat'),
(9, 'store_address', ''),
(10, 'min_shop_to_free_shipping_cost', '20000'),
(11, 'shipping_cost', '5000'),
(12, 'payment_banks', '{\"mandiri\":{\"bank\":\"Mandiri\",\"number\":\"1234567890\",\"name\":\"Premium Shoes Store\"},\"bca\":{\"bank\":\"BCA\",\"number\":\"0987654321\",\"name\":\"Premium Shoes Store\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_picture` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(10) DEFAULT '0',
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `username`, `password`, `profile_picture`, `role_id`, `register_date`) VALUES
(7, 'Revan Ali', 'admintokobuah@gmail.com', NULL, 'admin', '$2y$10$bOEcDKnmkPiGPX9hN3nT6uNZPSgBDC8pssLaUTGMQ4ZCRPn2ueUHa', '0919f092a8487492631bc84b592a4b0a_icon-wajah1.png', 1, '2020-03-29 08:14:30'),
(8, NULL, 'pembeli@gmail.com', NULL, 'user1', '$2y$10$chkZ5TH8JoBetrJYsujw9eHTSgnp1iLG492o99duNcoYGIVGYP8Lu', NULL, 2, '2020-10-26 06:58:43'),
(10, NULL, 'pembeli2@gmail.com', NULL, 'user2', '$2y$10$BxWbJrsGG.grhKvrNQ6XvOU5lTPARmLOo58Rwuws1kFlze3r4YR1.', NULL, 2, '2020-10-26 07:15:59'),
(11, NULL, 'pembeli4@gmail.com', NULL, 'user4', '$2y$10$P25c7AP7HzotHYvRCvi8XukFH/wKW/IR0uBbOM9pPBKAif8WrR.Iu', NULL, 2, '2020-10-26 08:37:06'),
(12, NULL, 'roko@gmail.com', NULL, 'revan', '$2y$10$XZgGVjLwNWEZDSr3uGyRgOYbCasZCBHFmu60/psm09kE/vWb6rO6S', NULL, 2, '2022-04-10 01:45:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_contacts_contacts` (`parent_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_customers_users` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_orders_users` (`user_id`),
  ADD KEY `FK_orders_coupons` (`coupon_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_products_product_category` (`category_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_reviews_users` (`user_id`),
  ADD KEY `FK_reviews_orders` (`order_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `FK_contacts_contacts` FOREIGN KEY (`parent_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `FK_customers_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_orders_coupons` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_orders_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `FK_payments_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
