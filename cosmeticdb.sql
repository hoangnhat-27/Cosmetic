-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 15, 2022 lúc 06:17 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cosmeticdb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(4) NOT NULL,
  `receiverName` varchar(30) DEFAULT NULL,
  `phone` int(20) DEFAULT NULL,
  `deliveryDate` char(20) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `deliveryAddress` varchar(50) DEFAULT NULL,
  `paymentMethod` varchar(100) DEFAULT NULL,
  `user_Id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `receiverName`, `phone`, `deliveryDate`, `notes`, `total`, `status`, `deliveryAddress`, `paymentMethod`, `user_Id`) VALUES
(21, '1 thằng nào đó', 99874343, '28-05-2022', 'đóng hàng cho cẩn thận', 14.11, 'Success', 'bắc ninh', 'Payment by card', 7),
(22, 'test2', 1234567890, '28-05-2022', 'k gì cả', 18.73, 'Success', 'bắc ninh 2', 'Payment on delivery', 7),
(23, 'sds', 3434343, '28-05-2022', '434343', 14.11, 'Success', '3434343', 'Payment on delivery', 7),
(24, 'Nguyen minh quan', 2147483647, '29-05-2022', 'giao hang can than', 14.11, 'Success', 'bac ninh', 'Payment by card', 7),
(25, '323232', 323232, '15-06-2022', '323232', 14.11, 'Pending', '3232', 'Payment on delivery', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_details`
--

CREATE TABLE `bill_details` (
  `id` int(4) NOT NULL,
  `amount` int(20) DEFAULT NULL,
  `pro_Id` int(4) NOT NULL,
  `bill_Id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bill_details`
--

INSERT INTO `bill_details` (`id`, `amount`, `pro_Id`, `bill_Id`) VALUES
(20, 1, 1, 21),
(21, 1, 1, 22),
(22, 1, 16, 22),
(23, 1, 1, 23),
(24, 1, 1, 24),
(25, 1, 1, 25);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(4) NOT NULL,
  `user_Id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_Id`) VALUES
(93, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_details`
--

CREATE TABLE `cart_details` (
  `id` int(4) NOT NULL,
  `pro_Id` int(4) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cart_Id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart_details`
--

INSERT INTO `cart_details` (`id`, `pro_Id`, `quantity`, `cart_Id`) VALUES
(44, 1, 1, 93);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(4) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `fatherCateId` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `fatherCateId`) VALUES
(1, 'Lip', NULL),
(2, 'Skin Creams', NULL),
(3, 'Body Care', NULL),
(4, 'Eye', NULL),
(5, 'Face', NULL),
(6, 'Hair Care', NULL),
(7, 'American Lipsticks', 1),
(8, 'Canadian Lipsticks', 1),
(9, 'Korean Lipsticks', 1),
(10, 'Vietnamese Lipsticks', 1),
(11, 'Chinese Lipsticks', 1),
(12, 'Laos Lipsticks', 1),
(13, 'England Lipsticks', 1),
(14, 'Japanese Lipsticks', 1),
(15, 'Lip Gloss', 1),
(16, 'Lip Balm', 1),
(17, 'Liquid Lipsticks', 1),
(18, 'Lip Stain', 1),
(19, 'Lip Liner', 1),
(20, 'Lip Plumper', 1),
(21, 'Lip Sets', 1),
(22, 'Lip Care', 1),
(23, 'American Creams', 2),
(24, 'Korean Creams', 2),
(25, 'Laos Creams', 2),
(26, 'Chinese Creams', 2),
(27, 'Japanese Creams', 2),
(28, 'Vietnamese Creams', 2),
(29, 'Cambodian Creams', 2),
(30, 'Russian Creams', 2),
(31, 'Ukraine Creams', 2),
(32, 'Australian Creams', 2),
(33, 'German Creams', 2),
(34, 'Dry Skin Creams', 2),
(35, 'Combination Creams', 2),
(36, 'Sensitive Skin Creams', 2),
(37, 'Mature-looking Skin Creams', 2),
(38, 'Oily Skin Creams', 2),
(39, 'Body Sunscreen', 2),
(40, 'French Creams', 2),
(41, 'Spanish Creams', 2),
(42, 'Serums', 2),
(43, 'Wrinkled Skin', 3),
(44, 'Body wash', 3),
(45, 'Baby skin', 3),
(46, 'Body Lotion', 3),
(47, 'American Body Skin', 3),
(48, 'England Body Skin', 3),
(49, 'Vietnamese Body Skin', 3),
(50, 'Chinese Body Skin', 3),
(51, 'Japanese Body Skin', 3),
(52, 'Russian Body Skin', 3),
(53, 'Spanish Body Skin', 3),
(54, 'Laos Body Skin', 3),
(55, 'Canadian Body Skin', 3),
(56, 'German Body Skin', 3),
(57, 'Body Sunscreen', 3),
(58, 'Other Body Skin', 3),
(59, 'Body Care Routine', 3),
(60, 'Body Recover', 3),
(61, 'Eye Palettes', 4),
(62, 'American Mascara', 4),
(63, 'Russian Mascara', 4),
(64, 'Vietnamese Mascara', 4),
(65, 'Chinese Mascara', 4),
(66, 'Korean Mascara', 4),
(67, 'Japanese Mascara', 4),
(68, 'Laos Eyeliner', 4),
(69, 'Cambodian Eyeliner', 4),
(70, 'German Eyeliner', 4),
(71, 'American Eyeliner', 4),
(72, 'Eyebrow', 4),
(73, 'Eyelashes', 4),
(74, 'Eyeshadow', 4),
(75, 'Eyelash Serums', 4),
(76, 'Eyebrow Serums', 4),
(77, 'Eye Primer', 4),
(78, 'Eye Sets', 4),
(79, 'Eye Collections', 4),
(80, 'American Face Sunscreen', 5),
(81, 'Face Brushes', 5),
(82, 'Chinese Face Sunscreen', 5),
(83, 'Vietnamese Face Sunscreen', 5),
(84, 'Korean Face Sunscreen', 5),
(85, 'Russian Face Sunscreen', 5),
(86, 'Laos Face Sunscreen', 5),
(87, 'Japanese Face Sunscreen', 5),
(88, 'American Face Creams', 5),
(89, 'Chinese Face Creams', 5),
(90, 'Vietnamese Face Creams', 5),
(91, 'Spanish Face Creams', 5),
(92, 'Laos Face Creams', 5),
(93, 'Foundation', 5),
(94, 'Tinted Moisturizer', 5),
(95, 'Concealer', 5),
(96, 'Face Primer', 5),
(97, 'Setting Spray & Powder', 5),
(98, 'Highlighter', 5),
(99, 'Contour', 5),
(100, 'Color Correct', 5),
(101, 'Face Sets', 5),
(102, 'Face Collections', 5),
(103, 'Face Skin', 5),
(104, 'Styling Creams', 6),
(105, 'Dry Shampoo', 6),
(106, 'Hair Primers', 6),
(107, 'Hair Spray', 6),
(108, 'Hair Masks', 6),
(109, 'Leave-in Conditioner', 6),
(110, 'Hair Oil', 6),
(111, 'Hair Serums', 6),
(112, 'Scalp Treatments', 6),
(113, 'Hair Supplements', 6),
(114, 'Hair Thinning', 6),
(115, 'Damaged Hair', 6),
(116, 'Dryness', 6),
(117, 'Frizz', 6),
(118, 'Scalp Care', 6),
(119, 'Volume', 6),
(120, 'Color Care', 6),
(121, 'Hair Loss', 6),
(122, 'Heat Protectants', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(4) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `cmtDate` char(30) DEFAULT NULL,
  `updateAt` char(30) DEFAULT NULL,
  `user_Id` int(4) NOT NULL,
  `pro_Id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `content`, `cmtDate`, `updateAt`, `user_Id`, `pro_Id`) VALUES
(13, 'dfdfdfd', '22-05-2022', NULL, 6, 1),
(14, 'dfdfd', '22-05-2022', NULL, 7, 1),
(15, 'fdfd', '22-05-2022', '28-05-2022 17:56:42', 7, 1),
(18, 'fgfgf', '22-05-2022', NULL, 7, 18),
(19, 'fgfgf', '23-05-2022', NULL, 7, 2),
(22, 'cgdfgfgf', '24-05-2022 02:02:42', NULL, 7, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(4) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `name`, `address`) VALUES
(1, 'PCI ST QUENTIN', 'ZAC CHAUSSEE ROMAINE RUE MARCEL PUAUL ST QUENTIN 02100 France'),
(2, 'SCHWAN STABILO COSMETICS GMBH & CO.', 'SCHWANWEG 1 HEROLDSBERG GERMANY'),
(3, 'JIA HSING ENTERPRISE CO., LTD.', 'NO.17 FU-GON RD., FU SHIN SHUEN CHANGHUA TAIWAN'),
(4, 'THE BODY SHOP INTERNATIONAL PLC', 'WATERSMEAD BUSINESS PARK LITTLEHAMPTON, WS BN176LS GB Northern Europe'),
(5, 'ANISA COSMETIC APPLICATORS', '18 STREET YANGLIUQING XIQING DISTRICT TIANJIN ,300380,CN Eastern Asia'),
(6, 'CLARINS', 'AVENUE DE LA VILLE IDEALE POLE JULES VERNE GLISY, 80440 FRANCE'),
(7, 'LOREAL LUXE ENL', '106 RUE DANTON LEVALLOIS PERRET 92691 FR Western Europe'),
(8, 'KAO GERMANY GMBH', 'PFUNGSTAEDTER STR. 92-100 DARMSTADT GERMANY Western Europe'),
(9, 'COTY GENEVA SA VERSOIX', 'CHEMIN DE LA PAPTERIE 1 VERSOIX 1290 CH Western Europe'),
(10, 'CHROMAVIS SPA', 'VIA FRANCESCO SFORZA 19 MILANO 20122 IT Southern Europe Italy'),
(11, 'A PACK PERSONAL CARE SDN.BHD', 'NO.1, JALAN SC 6 PUSAT PERINDUSTRIAN SUNGAI CHUA KAJANG 43000'),
(12, 'A TASK SDN. BHD.', 'NO. 17, LORONG NAGASARI 22, TAMAN NAGASARI, 13600 PERAI'),
(13, 'ACHIMA SKINCARE SDN. BHD.', 'NO. 73, JALAN TAMING 6, TAMAN TAMING JAYA, SERI KEMBANGAN 43300'),
(14, 'ADA COSMETICS INTERNATIONAL SDN. BHD.', 'NO. 12A, JALAN VILLA 3, ANGGERIK VILLA KAJANG 43000'),
(15, 'ATIKA BEAUTY MANUFACTURING SDN. BHD.', 'LOT 152, JALAN PERMATA 1, ARAB MALAYSIAN INDUSTRIAL PARK NILAI 71800');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(4) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `promotion` float DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `size` char(5) DEFAULT NULL,
  `amount` int(20) DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createAt` char(30) DEFAULT NULL,
  `updateAt` char(30) DEFAULT NULL,
  `manu_Id` int(4) NOT NULL,
  `cate_Id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `promotion`, `description`, `size`, `amount`, `image`, `createAt`, `updateAt`, `manu_Id`, `cate_Id`) VALUES
(1, 'Hydrating Soft Matte Lipstick', 17, 0.17, '<div>\r\n      <p>\r\n        <span><strong style=\"font-weight:600\">What it is</strong>:&nbsp;</span>A medium-coverage,\r\n            hydrating lipstick with a high-shine, balm-like texture that\r\n            conditions and moisturizes the lips.\r\n      </p>\r\n      <p>\r\n        <span><strong style=\"font-weight:600\">Skin Types</strong>:&nbsp;</span>Normal, Dry,\r\n        Combination, and Oily\r\n      </p>\r\n      <p>\r\n        <span><strong style=\"font-weight:600\">Skincare Concerns</strong>:&nbsp;</span>Fine\r\n        Lines/Wrinkles, Dryness, and Dullness\r\n      </p>\r\n        <p><span style=\"font-weight:600\">Formulation:&nbsp; </span>Gel</p>\r\n      </p>\r\n      <p>\r\n        <span><strong style=\"font-weight:600\">Highlighted Ingredients</strong>:&nbsp;</span>Berry Mix Complex™: Rich in vitamin C and antioxidants.\r\n        - Moisture Wrap™ technology: Locks in moisture for long-lasting\r\n        hydration.\r\n        Lines/Wrinkles, Dryness, and Dullness\r\n      </p>\r\n      <p>\r\n        <span><strong style=\"font-weight:600\">Ingredient Callouts</strong>:&nbsp;</span>Free of\r\n        parabens and phthalates.\r\n      </p>\r\n      <p>\r\n        <span><strong style=\"font-weight:600\">What Else You Need to Know</strong>:&nbsp;</span>LANEIGE Lip Sleeping Mask is a special intensive-care mask for lips.\r\n        With exclusive Moisture Wrap™ Technology and nourishing Berry Mix\r\n        Complex™, this hydrating lip mask delivers intense moisture and\r\n        antioxidants while you sleep.<br/>\r\n        <span>-Gently wipe off excess in the morning as needed.</span>\r\n      </p>\r\n      <p>\r\n        <span><strong style=\"font-weight:600\">Suggested Usage</strong>:&nbsp;</span>-Apply generously to the lips in the evening and leave on\r\n        overnight.\r\n      </p>\r\n    </div>', 'Small', 253116, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237468/cosmetic/products/Product1_1.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237468/cosmetic/products/Product1_2.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237468/cosmetic/products/Product1_3.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237468/cosmetic/products/Product1_4.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237468/cosmetic/products/Product1_5.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237468/cosmetic/products/Product1_6.webp\"]', '2-05-2022 10:51:37', '21-05-2022 17:56:57', 1, 7),
(2, 'Cream Lip Stain Liquid Lipstick', 15, 0, '{}', 'Small', 342122, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237468/cosmetic/products/Product2_1.webp\"]', '2-05-2022 10:51:37', NULL, 2, 7),
(3, 'Matte & Satin Velvet Lipstick', 6, 0.15, '{}', 'Big', 123314, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237461/cosmetic/products/Product3_1.webp\"]', '2-05-2022 10:51:37', NULL, 3, 7),
(4, 'HHK700 Lipstick', 15, 0.19, '{}', 'Big', 142310, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237461/cosmetic/products/Product4_1.webp\"]', '2-05-2022 10:51:37', NULL, 4, 7),
(5, 'AV450 Lipstick', 14, 0.1, '{}', 'Small', 635311, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237461/cosmetic/products/Product5_1.webp\"]', '2-05-2022 10:51:37', NULL, 5, 7),
(6, 'Dior Addict Refillable Shine Lipstick', 34, 0.3, '{}', 'Small', 312353, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237462/cosmetic/products/Product6_1.webp\"]', '2-05-2022 10:51:37', NULL, 6, 7),
(7, 'Stunna Lip Paint Longwear Fluid Lip Color', 15, 0.2, '{}', 'Small', 541219, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237462/cosmetic/products/Product7_1.webp\"]', '2-05-2022 10:51:37', NULL, 7, 7),
(8, 'The Slim Velvet Radical Matte Lipstick', 50, 0.15, '{}', 'Small', 432461, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237463/cosmetic/products/Product8_1.webp\"]', '2-05-2022 10:51:37', NULL, 8, 7),
(9, 'Power Bullet Matte Lipstick', 21, 0.15, '{}', 'Big', 124431, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237463/cosmetic/products/Product9_1.webp\"]', '2-05-2022 10:51:37', NULL, 9, 7),
(10, 'K.I.S.S.I.N.G Lipstick', 5, 0.16, '{}', 'Big', 98456, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237463/cosmetic/products/Product9_1.webp\"]', '2-05-2022 10:51:37', NULL, 10, 7),
(11, 'MatteTrance™ Lipstick', 6, 0.13, '{}', 'Small', 35252, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237464/cosmetic/products/Product11_1.webp\"]', '2-05-2022 10:51:37', NULL, 11, 7),
(12, 'Le Rouge Sheer Velvet Matte Lipstick', 34, 0.16, '{}', 'Big', 51342, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237465/cosmetic/products/Product12_1.webp\"]', '2-05-2022 10:51:37', NULL, 12, 7),
(13, 'Lip Power Long Lasting Satin Lipstick', 15, 0.21, '{}', 'Big', 542432, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237465/cosmetic/products/Product13_1.webp\"]', '2-05-2022 10:51:37', NULL, 13, 7),
(14, 'Fenty Icon The Fill Semi-Matte Refillable Lipstick', 5, 0.2, '{}', 'Big', 514314, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237465/cosmetic/products/Product14_1.webp\"]', '2-05-2022 10:51:37', NULL, 14, 7),
(15, 'Lip Color Matte Lipstick', 14, 0.12, '{}', 'Small', 61231, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237466/cosmetic/products/Product15_1.webp\"]', '2-05-2022 10:51:37', NULL, 15, 7),
(16, 'Slip Shine Sheer Shiny Lipstick', 7, 0.34, '{}', 'Small', 122122, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237466/cosmetic/products/Product16_1.webp\"]', '2-05-2022 10:51:37', NULL, 1, 7),
(17, 'Too Femme Heart Core Lipstick', 6, 0.12, '{}', 'Big', 532432, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237466/cosmetic/products/Product17_1.webp\"]', '2-05-2022 10:51:37', NULL, 2, 7),
(18, 'Rosso Valentino Refillable Lipstick', 15, 0.5, '{}', 'Small', 32421, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237467/cosmetic/products/Product18_1.webp\"]', '2-05-2022 10:51:37', NULL, 3, 7),
(19, 'Studded Kiss Crème Lipstick', 5, 0.2, '{}', 'Big', 43131, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237467/cosmetic/products/Product19_1.webp\"]', '2-05-2022 10:51:37', NULL, 4, 7),
(20, 'Ultra Suede™️ Cozy Lip Creme', 5, 0.15, '{}', 'Big', 543342, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653237467/cosmetic/products/Product20_1.webp\"]', '2-05-2022 10:51:37', NULL, 5, 7),
(21, 'Color Block High Impact Lipstick', 15, 0.16, '{}', 'Big', 13141, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653353764/cosmetic/productsFake/all_2.jpg.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653353766/cosmetic/productsFake/all_3.jpg.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653353930/cosmetic/productsFake/product23_1.jpg.webp\"]', '2-05-2022 10:51:37', '24-05-2022 07:58:51', 6, 7),
(22, 'Rouge Pur Couture Satin Lipstick Collection', 13, 0.5, '{}', 'Big', 54233, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653353764/cosmetic/productsFake/all_2.jpg.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653353766/cosmetic/productsFake/all_3.jpg.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653353898/cosmetic/productsFake/product22_1.jpg.webp\"]', '2-05-2022 10:51:37', '24-05-2022 07:58:19', 7, 7),
(23, 'Lip Power Long Lasting Satin Lipstick', 34, 0.12, '<div>\r\n      <p>\r\n        <span><strong style=\"font-weight:600\">What it is</strong>:&nbsp;</span>A medium-coverage,\r\n            hydrating lipstick with a high-shine, balm-like texture that\r\n            conditions and moisturizes the lips.\r\n      </p>\r\n      <p>\r\n        <span><strong style=\"font-weight:600\">Skin Types</strong>:&nbsp;</span>Normal, Dry,\r\n        Combination, and Oily\r\n      </p>\r\n      <p>\r\n        <span><strong style=\"font-weight:600\">Skincare Concerns</strong>:&nbsp;</span>Fine\r\n        Lines/Wrinkles, Dryness, and Dullness\r\n      </p>\r\n        <span><strong style=\"font-weight:600\">Formulation</strong>:&nbsp;</span>Gel\r\n      </p>\r\n      <p>\r\n        <span><strong style=\"font-weight:600\">Highlighted Ingredients</strong>:&nbsp;</span>Berry Mix Complex™: Rich in vitamin C and antioxidants.\r\n        - Moisture Wrap™ technology: Locks in moisture for long-lasting\r\n        hydration.\r\n        Lines/Wrinkles, Dryness, and Dullness\r\n      </p>\r\n      <p>\r\n        <span><strong style=\"font-weight:600\">Ingredient Callouts</strong>:&nbsp;</span>Free of\r\n        parabens and phthalates.\r\n      </p>\r\n      <p>\r\n        <span><strong style=\"font-weight:600\">What Else You Need to Know</strong>:&nbsp;</span>LANEIGE Lip Sleeping Mask is a special intensive-care mask for lips.\r\n        With exclusive Moisture Wrap™ Technology and nourishing Berry Mix\r\n        Complex™, this hydrating lip mask delivers intense moisture and\r\n        antioxidants while you sleep.<br/>\r\n        <span>-Gently wipe off excess in the morning as needed.</span>\r\n      </p>\r\n      <p>\r\n        <span><strong style=\"font-weight:600\">Suggested Usage</strong>:&nbsp;</span>-Apply generously to the lips in the evening and leave on\r\n        overnight.\r\n      </p>\r\n    </div>', 'Big', 23131, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653353764/cosmetic/productsFake/all_2.jpg.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653353766/cosmetic/productsFake/all_3.jpg.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653353768/cosmetic/productsFake/product21_1.jpg.webp\"]', '2-05-2022 10:51:37', '24-05-2022 07:56:09', 8, 7),
(24, 'Velvet Matte Lipstick Pencil', 15, 0.5, '{}', 'Small', 23424, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653353764/cosmetic/productsFake/all_2.jpg.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653353766/cosmetic/productsFake/all_3.jpg.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653353954/cosmetic/productsFake/product24_1.jpg.webp\"]', '2-05-2022 10:51:37', '24-05-2022 07:59:15', 9, 7),
(25, 'Color Block High Impact Lipstick', 14, 0.25, '<div>\n      <p>\n        <span><strong style=\"font-weight:600\">What it is</strong>:&nbsp;</span>A medium-coverage,\n            hydrating lipstick with a high-shine, balm-like texture that\n            conditions and moisturizes the lips.\n      </p>\n      <p>\n        <span><strong style=\"font-weight:600\">Skin Types</strong>:&nbsp;</span>Normal, Dry,\n        Combination, and Oily\n      </p>\n      <p>\n        <span><strong style=\"font-weight:600\">Skincare Concerns</strong>:&nbsp;</span>Fine\n        Lines/Wrinkles, Dryness, and Dullness\n      </p>\n        <span><strong style=\"font-weight:600\">Formulation</strong>:&nbsp;</span>Gel\n      </p>\n      <p>\n        <span><strong style=\"font-weight:600\">Highlighted Ingredients</strong>:&nbsp;</span>Berry Mix Complex™: Rich in vitamin C and antioxidants.\n        - Moisture Wrap™ technology: Locks in moisture for long-lasting\n        hydration.\n        Lines/Wrinkles, Dryness, and Dullness\n      </p>\n      <p>\n        <span><strong style=\"font-weight:600\">Ingredient Callouts</strong>:&nbsp;</span>Free of\n        parabens and phthalates.\n      </p>\n      <p>\n        <span><strong style=\"font-weight:600\">What Else You Need to Know</strong>:&nbsp;</span>LANEIGE Lip Sleeping Mask is a special intensive-care mask for lips.\n        With exclusive Moisture Wrap™ Technology and nourishing Berry Mix\n        Complex™, this hydrating lip mask delivers intense moisture and\n        antioxidants while you sleep.<br/>\n        <span>-Gently wipe off excess in the morning as needed.</span>\n      </p>\n      <p>\n        <span><strong style=\"font-weight:600\">Suggested Usage</strong>:&nbsp;</span>-Apply generously to the lips in the evening and leave on\n        overnight.\n      </p>\n    </div>', 'Small', 524312, '[]', '2-05-2022 10:51:37', '25-05-2022 15:17:18', 10, 7),
(26, 'Le Marc Lip Crème Lipstick', 6, 0.3, '{}', 'Small', 41234, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653353764/cosmetic/productsFake/all_2.jpg.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653353766/cosmetic/productsFake/all_3.jpg.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653354302/cosmetic/productsFake/product26_1.jpg.webp\"]', '2-05-2022 10:51:37', '24-05-2022 08:05:04', 11, 7),
(27, 'Matte & Satin Velvet Lipstick', 6, 0.15, '{}', 'Small', 154323, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653353764/cosmetic/productsFake/all_2.jpg.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653353766/cosmetic/productsFake/all_3.jpg.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653354321/cosmetic/productsFake/product27_1.jpg.webp\"]', '2-05-2022 10:51:37', '24-05-2022 08:05:22', 3, 7),
(28, 'HHK700 Lipstick', 15, 0.19, '{}', 'Small', 142313, '', '2-05-2022 10:51:37', NULL, 4, 7),
(29, 'AV450 Lipstick', 14, 0.1, '{}', 'Big', 635312, '', '2-05-2022 10:51:37', NULL, 5, 7),
(30, 'Dior Addict Refillable Shine Lipstick', 34, 0.3, '{}', 'Big', 312353, '', '2-05-2022 10:51:37', NULL, 6, 7),
(31, 'Stunna Lip Paint Longwear Fluid Lip Color', 15, 0.2, '{}', 'Small', 541221, '', '2-05-2022 10:51:37', NULL, 7, 7),
(32, 'The Slim Velvet Radical Matte Lipstick', 50, 0.15, '{}', 'Small', 432461, '', '2-05-2022 10:51:37', NULL, 8, 7),
(33, 'Power Bullet Matte Lipstick', 21, 0.15, '{}', 'Big', 124431, '', '2-05-2022 10:51:37', NULL, 9, 7),
(34, 'K.I.S.S.I.N.G Lipstick', 5, 0.16, '{}', 'Big', 98456, '', '2-05-2022 10:51:37', NULL, 10, 7),
(35, 'MatteTrance™ Lipstick', 6, 0.13, '{}', 'Small', 35252, '', '2-05-2022 10:51:37', NULL, 11, 7),
(36, 'Le Rouge Sheer Velvet Matte Lipstick', 34, 0.16, '{}', 'Small', 51342, '', '2-05-2022 10:51:37', NULL, 12, 7),
(37, 'Lip Power Long Lasting Satin Lipstick', 15, 0.21, '{}', 'Big', 542432, '', '2-05-2022 10:51:37', NULL, 13, 7),
(38, 'Fenty Icon The Fill Semi-Matte Refillable Lipstick', 5, 0.2, '{}', 'Small', 514314, '', '2-05-2022 10:51:37', NULL, 14, 7),
(39, 'Lip Color Matte Lipstick', 14, 0.12, '{}', 'Small', 61231, '', '2-05-2022 10:51:37', NULL, 15, 7),
(40, 'Slip Shine Sheer Shiny Lipstick', 7, 0.34, '{}', 'Big', 122124, '', '2-05-2022 10:51:37', NULL, 1, 7),
(41, 'Too Femme Heart Core Lipstick', 6, 0.12, '{}', 'Big', 532432, '', '2-05-2022 10:51:37', NULL, 2, 7),
(42, 'Rosso Valentino Refillable Lipstick', 15, 0.5, '{}', 'Small', 32421, '', '2-05-2022 10:51:37', NULL, 3, 7),
(43, 'Studded Kiss Crème Lipstick', 5, 0.2, '{}', 'Big', 43131, '', '2-05-2022 10:51:37', NULL, 4, 7),
(44, 'Ultra Suede™️ Cozy Lip Creme', 5, 0.15, '{}', 'Small', 543342, '', '2-05-2022 10:51:37', NULL, 5, 7),
(45, 'Color Block High Impact Lipstick', 15, 0.16, '{}', 'Big', 13141, '', '2-05-2022 10:51:37', NULL, 6, 7),
(46, 'Rouge Pur Couture Satin Lipstick Collection', 13, 0.5, '{}', 'Big', 54233, '', '2-05-2022 10:51:37', NULL, 7, 7),
(47, 'Lip Power Long Lasting Satin Lipstick', 34, 0.12, '{}', 'Small', 23131, '', '2-05-2022 10:51:37', NULL, 8, 7),
(48, 'Velvet Matte Lipstick Pencil', 15, 0.5, '{}', 'Big', 23424, '', '2-05-2022 10:51:37', NULL, 9, 7),
(49, 'Color Block High Impact Lipstick', 14, 0.25, '{}', 'Big', 524312, '', '2-05-2022 10:51:37', NULL, 10, 7),
(50, 'Le Marc Lip Crème Lipstick', 6, 0.3, '{}', 'Small', 41234, '', '2-05-2022 10:51:37', NULL, 11, 7),
(51, 'Superfood Air-Whip Moisturizer with Hyaluronic Aci', 20.5, 0.2, '<div>\r\n      <p>\r\n        <span style=\"font-weight: bold\">What it is:</span>A limited-edition,\r\n        lavender-scented version of the cult-favorite water sleeping mask that\r\n        delivers intense hydration while you sleep.\r\n      </p>\r\n      <p>\r\n        <span style=\"font-weight: bold\">Skin Types:</span>Normal, Dry,\r\n        Combination, and Oily\r\n      </p>\r\n      <p>\r\n        <span style=\"font-weight: bold\">Skincare Concerns:</span>Dryness, Fine\r\n        Lines and Wrinkles, Dullness and Uneven Texture\r\n      </p>\r\n      <p><span style=\"font-weight: bold\">Formulation:</span>Gel</p>\r\n      <p>\r\n        <span style=\"font-weight: bold\">Highlighted Ingredients:</span>\r\n        Hyaluronic Acid: Imparts hydration for a softer, more plumped look.\r\n      </p>\r\n      <p>\r\n        <span style=\"font-weight: bold\">Ingredient Callouts:</span>Free of\r\n        parabens, phthalates, and mineral oil.\r\n      </p>\r\n      <p>\r\n        <span style=\"font-weight: bold\">What Else You Need to Know:</span>Become\r\n        an overnight sensation with this famous sleeping mask. The unique\r\n        formula features Hydro Ionized Mineral Water™, which floods skin with\r\n        moisture, while hunza apricot and evening primrose extracts help\r\n        brighten and purify. While it’s working, enjoying LANEIGE\'s exclusive\r\n        Sleepscent™ to help impart a restful sleep so you can wake up looking\r\n        refreshed.\r\n      </p>\r\n      <p>\r\n        <span style=\"font-weight: bold\">Suggested Usage:</span><br /><span\r\n          >-Warm up in between hands and breathe in soothing lavender\r\n          scent.</span\r\n        ><br /><span\r\n          >-Apply evenly across face as the last step of your PM routine,\r\n          following your moisturizer.</span\r\n        ><br /><span>-Leave on overnight and rinse off in the morning.</span>\r\n        <br /><span>-Use once or twice a week.</span>\r\n      </p>\r\n    </div>', 'Small', 123413, '[\"https://res.cloudinary.com/nhat-clouds/image/upload/v1653351732/cosmetic/creamProducts/CreamPro1_1.jpg.webp\",\"https://res.cloudinary.com/nhat-clouds/image/upload/v1653351734/cosmetic/creamProducts/CreamPro1_2.jpg.webp\",\"https://res.cloudinary.com/nhat-clouds/image/upload/v1653351736/cosmetic/creamProducts/CreamPro1_3.jpg.webp\",\"https://res.cloudinary.com/nhat-clouds/image/upload/v1653351738/cosmetic/creamProducts/CreamPro1_4.jpg.webp\",\"https://res.cloudinary.com/nhat-clouds/image/upload/v1653351740/cosmetic/creamProducts/CreamPro1_5.jpg.webp\",\"https://res.cloudinary.com/nhat-clouds/image/upload/v1653351742/cosmetic/creamProducts/CreamPro1_6.jpg.webp\"]', '24-05-2022 07:33:32', NULL, 2, 23),
(52, 'Lip Sleeping Mask with Hyaluronic Acid and Vitamin', 25.6, 0.3, '<div>\r\n      <p>\r\n        <span style=\"font-weight: bold\">What it is:</span>A leave-on lip mask\r\n        that delivers intense moisture and antioxidants while you sleep with its\r\n        Moisture Wrap™ technology and Berry Mix Complex™ formula.\r\n      </p>\r\n      <p>\r\n        <span style=\"font-weight: bold\">Skin Types:</span>Normal, Dry,\r\n        Combination, and Oily\r\n      </p>\r\n      <p>\r\n        <span style=\"font-weight: bold\">Skincare Concerns:</span>Fine\r\n        Lines/Wrinkles, Dryness, and Dullness\r\n      </p>\r\n      <p><span style=\"font-weight: bold\">Formulation:</span>Gel</p>\r\n      <p>\r\n        <span style=\"font-weight: bold\">Highlighted Ingredients:</span><br />\r\n        Berry Mix Complex™: Rich in vitamin C and antioxidants.<br />\r\n        - Moisture Wrap™ technology: Locks in moisture for long-lasting\r\n        hydration.\r\n      </p>\r\n      <p>\r\n        <span style=\"font-weight: bold\">Ingredient Callouts:</span>Free of\r\n        parabens and phthalates.\r\n      </p>\r\n      <p>\r\n        <span style=\"font-weight: bold\">What Else You Need to Know:</span>\r\n        LANEIGE Lip Sleeping Mask is a special intensive-care mask for lips.\r\n        With exclusive Moisture Wrap™ Technology and nourishing Berry Mix\r\n        Complex™, this hydrating lip mask delivers intense moisture and\r\n        antioxidants while you sleep.\r\n      </p>\r\n      <p>\r\n        <span style=\"font-weight: bold\">Suggested Usage:</span><br /><span\r\n          >-Apply generously to the lips in the evening and leave on\r\n          overnight.</span\r\n        ><br /><span>-Gently wipe off excess in the morning as needed.</span>\r\n      </p>\r\n    </div>', 'Big', 153264, '[\"https://res.cloudinary.com/nhat-clouds/image/upload/v1653352737/cosmetic/creamProducts/CreamPro2_1.jpg.webp\",\"https://res.cloudinary.com/nhat-clouds/image/upload/v1653352738/cosmetic/creamProducts/CreamPro2_2.jpg.webp\",\"https://res.cloudinary.com/nhat-clouds/image/upload/v1653352740/cosmetic/creamProducts/CreamPro2_3.jpg.webp\"]', '24-05-2022 07:39:01', NULL, 4, 23),
(53, 'Watermelon + AHA Glow Sleeping Cream', 15.3, 0.25, '', 'Small', 25112, '[\"https://res.cloudinary.com/nhat-clouds/image/upload/v1653353292/cosmetic/creamProducts/CreamPro3_1.jpg.webp\",\"https://res.cloudinary.com/nhat-clouds/image/upload/v1653353294/cosmetic/creamProducts/CreamPro3_2.jpg.webp\",\"https://res.cloudinary.com/nhat-clouds/image/upload/v1653353296/cosmetic/creamProducts/CreamPro3_3.jpg.webp\"]', '24-05-2022 07:48:18', NULL, 7, 23),
(54, 'HC5001', 16.5, 0.15, '<div>\n      <p>\n        <span><strong style=\"font-weight:600\">What it is</strong>:&nbsp;</span>A medium-coverage,\n            hydrating lipstick with a high-shine, balm-like texture that\n            conditions and moisturizes the lips.\n      </p>\n      <p>\n        <span><strong style=\"font-weight:600\">Skin Types</strong>:&nbsp;</span>Normal, Dry,\n        Combination, and Oily\n      </p>\n      <p>\n        <span><strong style=\"font-weight:600\">Skincare Concerns</strong>:&nbsp;</span>Fine\n        Lines/Wrinkles, Dryness, and Dullness\n      </p>\n        <span><strong style=\"font-weight:600\">Formulation</strong>:&nbsp;</span>Gel\n      </p>\n      <p>\n        <span><strong style=\"font-weight:600\">Highlighted Ingredients</strong>:&nbsp;</span>Berry Mix Complex™: Rich in vitamin C and antioxidants.\n        - Moisture Wrap™ technology: Locks in moisture for long-lasting\n        hydration.\n        Lines/Wrinkles, Dryness, and Dullness\n      </p>\n      <p>\n        <span><strong style=\"font-weight:600\">Ingredient Callouts</strong>:&nbsp;</span>Free of\n        parabens and phthalates.\n      </p>\n      <p>\n        <span><strong style=\"font-weight:600\">What Else You Need to Know</strong>:&nbsp;</span>LANEIGE Lip Sleeping Mask is a special intensive-care mask for lips.\n        With exclusive Moisture Wrap™ Technology and nourishing Berry Mix\n        Complex™, this hydrating lip mask delivers intense moisture and\n        antioxidants while you sleep.<br/>\n        <span>-Gently wipe off excess in the morning as needed.</span>\n      </p>\n      <p>\n        <span><strong style=\"font-weight:600\">Suggested Usage</strong>:&nbsp;</span>-Apply generously to the lips in the evening and leave on\n        overnight.\n      </p>\n    </div>', 'Small', 312321, '[\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653303056/cosmetic/products/Product1_1.jpg.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653303057/cosmetic/products/Product1_2.jpg.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653303059/cosmetic/products/Product1_3.jpg.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653303061/cosmetic/products/Product1_4.jpg.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653303063/cosmetic/products/Product1_5.jpg.webp\",\"https://res.cloudinary.com/cosmeticv1/image/upload/v1653303065/cosmetic/products/Product1_6.jpg.webp\"]', '25-05-2022 15:14:12', NULL, 1, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `star_rating`
--

CREATE TABLE `star_rating` (
  `id` int(4) NOT NULL,
  `pro_Id` int(4) NOT NULL,
  `user_Id` int(4) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `bill_details_Id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `star_rating`
--

INSERT INTO `star_rating` (`id`, `pro_Id`, `user_Id`, `rating`, `bill_details_Id`) VALUES
(20, 1, 7, 4, 21),
(21, 16, 7, 5, 22),
(22, 1, 7, 5, 24);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(4) NOT NULL,
  `userName` char(50) DEFAULT NULL,
  `displayName` varchar(50) DEFAULT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `phoneNumber` int(20) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `avatar` char(100) DEFAULT NULL,
  `role` varchar(10) DEFAULT 'user',
  `createAt` char(20) DEFAULT NULL,
  `updateAt` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `userName`, `displayName`, `password`, `email`, `sex`, `phoneNumber`, `address`, `age`, `avatar`, `role`, `createAt`, `updateAt`) VALUES
(2, 'Nguyen Hai Quan', 'Quan Nguyen', '123456789', 'haiquan321@gmail.com', 'Male', 987654321, '321 Bac Ninh', 21, NULL, 'user', '07/04/2022', NULL),
(6, 'aaaaaaaaaa', 'nguyen hai quan', '$2y$10$pfiuBPuYh4rIt3Gw4cUD9.9MI2mRG6SWKt0qvaT9/zmxv1f490S.C', 'quan50@gmail.com', 'male', 1212119, '21212121212', 8, 'https://res.cloudinary.com/cosmeticv1/image/upload/v1652702834/cosmetic/avatar/avatar7.jpg.jpg', 'user', '22-05-2022', NULL),
(7, 'dfdfdfdfdfd', 'Nguyen Hai Quan', '$2y$10$9NEWNN1.7ZTAW8xoi5WfpupB1/qG7Ddp4hAaQB1On3HiqSbTf.A2O', 'quan60@gmail.com', 'male', 3232, 'bac ninh', 12, 'https://res.cloudinary.com/cosmeticv1/image/upload/v1653218158/cosmetic/avatar/avatar60.jpg.jpg', 'user', '22-05-2022', NULL),
(9, 'admin', 'Nguyễn Văn  Trung', '$2y$10$DHSNo95sYcsAFxMV1uh8j.Ky6cZzJTr6SQUbOvpTyY5GqTWj7cUTe', 'admin@gmail.com', 'male', 98945307, 'Kinh Bắc, thành phố Bắc Ninh, tỉnh Bắc Ninh', 11, NULL, 'admin', '04-06-2022 22:04:36', NULL),
(10, '21212121', '12121 2121', '$2y$10$wmUUxNduwlJw0pqlnzDcFueKMYDwcNrnBkERgKS1jp2o6yIgH9FqO', 'quan70@gmail.com', 'female', 123232, '343434343', 13, NULL, 'user', '15-06-2022 22:42:52', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `User_Id` (`user_Id`) USING BTREE;

--
-- Chỉ mục cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Pro_id` (`pro_Id`) USING BTREE,
  ADD KEY `Bill_Id` (`bill_Id`) USING BTREE;

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_Id` (`user_Id`);

--
-- Chỉ mục cho bảng `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_Id` (`cart_Id`),
  ADD KEY `pro_Id` (`pro_Id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fatherCateId` (`fatherCateId`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `User_Id` (`user_Id`) USING BTREE,
  ADD KEY `Pro_Id` (`pro_Id`) USING BTREE;

--
-- Chỉ mục cho bảng `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Manu_Id` (`manu_Id`) USING BTREE,
  ADD KEY `Cate_Id` (`cate_Id`) USING BTREE;

--
-- Chỉ mục cho bảng `star_rating`
--
ALTER TABLE `star_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_Id` (`pro_Id`),
  ADD KEY `user_Id` (`user_Id`),
  ADD KEY `bill_details_Id` (`bill_details_Id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT cho bảng `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `star_rating`
--
ALTER TABLE `star_rating`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`user_Id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  ADD CONSTRAINT `bill_details_ibfk_1` FOREIGN KEY (`bill_Id`) REFERENCES `bills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bill_details_ibfk_2` FOREIGN KEY (`pro_Id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_Id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `cart_details`
--
ALTER TABLE `cart_details`
  ADD CONSTRAINT `cart_details_ibfk_1` FOREIGN KEY (`cart_Id`) REFERENCES `cart` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_details_ibfk_2` FOREIGN KEY (`pro_Id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_Id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`pro_Id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`manu_Id`) REFERENCES `manufacturers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`cate_Id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `star_rating`
--
ALTER TABLE `star_rating`
  ADD CONSTRAINT `star_rating_ibfk_1` FOREIGN KEY (`pro_Id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `star_rating_ibfk_2` FOREIGN KEY (`user_Id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `star_rating_ibfk_3` FOREIGN KEY (`bill_details_Id`) REFERENCES `bill_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
