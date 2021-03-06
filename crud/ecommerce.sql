-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 16, 2022 at 06:09 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `phone`, `created_at`, `modified_at`) VALUES
(1, 'rohan', 'rohan77@gmail.com', '123456', '', '2021-12-20 11:02:42', '2021-12-20 11:02:42'),
(3, 'ozil', 'ozil10@gmail.com', '786123', '', '2021-12-20 11:02:42', '2021-12-20 11:02:42'),
(4, 'asd', 'dfg@gmail.com', '123', '', '2021-12-20 11:02:42', '2021-12-20 11:02:42'),
(5, 'newisti', 'ryan8@yahoo.com', '123456', '', '2021-12-20 11:09:04', '2021-12-20 11:09:29'),
(9, 'test edit and update', 'someone07@gmail.com', '123456', '01581251', '2022-01-02 02:40:08', '2022-01-02 02:53:32'),
(10, 'new', 'store@gmail.com', '456123', '0561621625', '2022-01-03 06:29:13', '2022-01-03 06:45:44');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promotional_message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `html_banner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_draft` tinyint(4) NOT NULL DEFAULT '0',
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `title`, `link`, `promotional_message`, `html_banner`, `is_draft`, `picture`, `created_at`, `modified_at`, `is_active`) VALUES
(14, 'sfs', 'sef', 'fgf', '', 0, 'custom-img4.jpg', '2021-12-20 10:54:42', '2022-01-04 04:56:40', 1),
(16, 'uyyi', 'uy.com', 'Editing Done', '', 0, 'custom-img2.jpg', '2021-12-20 10:54:42', '2022-01-04 04:56:49', 1),
(17, 'new', 's.ocm', 'jjja', '', 0, 'menu-shoes.png', '2021-12-20 10:54:42', '2021-12-20 10:54:42', 0),
(18, 'Title changed', 'new.com', 'image changed', '', 0, 'product1-700x850.jpg', '2021-12-20 10:54:42', '2021-12-20 10:54:42', 0),
(19, 'Isti GG', 'istisqr.com', 'hdhhdhd', '', 0, 'custom-img1.jpg', '2021-12-20 10:54:42', '2021-12-20 10:54:42', 0),
(20, 'test1', 'dsgfadf', 'fef', '', 0, 'custom-img3.jpg', '2021-12-20 11:00:34', '2021-12-20 12:51:09', 1),
(21, 'jhjhjh', 'dsfgf.com', 'Editing Donebbvbvcbb', '', 0, 'list.svg', '2021-12-20 12:11:19', '2021-12-20 12:11:47', 0),
(25, 'title changed', 'hshh', 'hsfh1', 'lkfdjgo', 0, NULL, '2022-01-02 11:02:13', '2022-01-02 11:02:28', 0),
(26, 'a', 'sarfan.com', 'Editing Done', 'hdhdhhd', 0, NULL, '2022-01-02 11:08:09', '2022-01-04 04:56:20', 0),
(27, 'Bitm PHP', 'sarfan.com', 'sum sum', 'new html', 0, 'IMG_1641100571_blog-img2-913x500.jpg', '2022-01-02 11:16:11', '2022-01-03 11:51:37', 1),
(28, 'gg', 'gg', 'gg', 'xd', 1, 'IMG_1641461745_blog-img1-913x500.jpg', '2022-01-06 03:35:45', '2022-01-06 15:35:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unite_price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `product_title`, `qty`, `picture`, `unite_price`, `total_price`) VALUES
(2, 1564, 'Computer', 2, NULL, 0, 0),
(4, 412, 'Shoes', 100, 'menu-shoes.png', 0, 0),
(7, 1234, 'Computer1', 5, 'b-logo1-130x50.png', 0, 0),
(8, 156, 'Just chair', 10, 'custom-img2.jpg', 0, 0),
(9, 156423, 'Computer', 12, 'product6-700x850.jpg', 0, 0),
(10, 123, 'chair', 50, 'product1-700x850.jpg', 500, 25000),
(11, 555, 'table', 10, 'menu-shoes.png', 500, 5000),
(13, 55, 'Unique Table', 5, 'IMG_1641115964_product2-700x850.jpg', 100, 500);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `link`, `created_at`, `modified_at`) VALUES
(3, 'sarfan', 'sarfan.com', '2021-12-20 11:10:27', '2021-12-20 11:10:27'),
(4, 'sumon', 'sumon.com', '2021-12-20 11:10:27', '2021-12-20 11:10:27'),
(5, 'Arfan', 'html.com', '2021-12-20 11:12:41', '2021-12-20 11:13:34'),
(7, 'Jamminam', 'jsj.com', '2022-01-02 03:41:05', '2022-01-02 03:41:14');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `comment`, `status`, `date`) VALUES
(2, 'sarfan', 'khan.safan027@gmail.com', 'Computer Science', '', 0, '2021-12-20'),
(4, 'sumon', 'sumon456@gmail.com', 'web deign', '', 0, '2021-12-20'),
(5, 'asasa', 'hiyat94186@ailiking.com', 'ffefe', 'fefe', 1, '2021-12-20'),
(6, 'new', 'sawaf12@gmail.com', 'jet', 'new', 1, '2021-12-20'),
(7, 'ff', 'gagan.agg5@gmail.com', 'efa', 'fefe', 1, '2021-12-10'),
(9, 'Mahmudur Rahman Sadril', 'mrsadril@gmail.com', 'EEE', 'new job', 1, '1999-03-11');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `qty`) VALUES
(1, 0, 118),
(2, 1564, 52156),
(3, 857, 633);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(10) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `created_at`, `modified_at`, `is_deleted`, `picture`, `is_active`) VALUES
(31, 'Test2', 0, '2021-12-20 09:49:49', '2021-12-20 10:11:31', 0, 'payment-2.png', 0),
(32, 'TestApproot', 0, '2021-12-20 09:49:49', '2021-12-20 10:11:31', 0, 'custom-img4.jpg', 0),
(33, 'lamp', 0, '2021-12-20 09:49:49', '2021-12-20 10:11:31', 0, 'product5-700x850.jpg', 0),
(35, 'Grandpa Rocking Chair', 3500, '2021-12-20 09:49:49', '2022-01-05 10:51:13', 0, 'IMG_1641356865_product12-700x850.jpg', 1),
(39, 'NITRAA LYDON DINING TABLE...', 2500, '2021-12-30 12:22:47', '2022-01-05 10:55:52', 0, 'IMG_1641357288_product5-700x850.jpg', 1),
(43, 'TABLE LAMP IN STEAM BEACH...', 1000, '2021-12-30 12:45:25', '2022-01-16 04:04:45', 0, 'IMG_1641356892_product24-700x850.jpg', 1),
(44, 'DECORNATION FLOATING WALL...', 450, '2022-01-02 04:05:44', '2022-01-05 10:52:33', 0, 'IMG_1641357200_product6-700x850.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `full_name`, `user_name`, `email`, `password`, `picture`, `phone_number`, `created_at`, `modified_at`, `is_deleted`) VALUES
(4, 'istiak sharif isti', 'Isti Bong chong', 'isti@gmail.com', '456123', 'IMG_1641465116_image2.jpg', '01561565641', '2022-01-06 16:31:56', '2022-01-06 04:31:56', 0),
(7, 'gg', 'gg', 'XD@gmail.com', '456123', 'IMG_1641467016_image1.jpg', '01514564556', '2022-01-06 05:03:36', '2022-01-06 17:03:36', 0),
(8, 'gggggg', 'ggggggggg', 'ryan8@yahoo.com', 'gggggg', 'IMG_1641704103_blog-img1-913x500.jpg', '55555555555', '2022-01-09 04:55:03', '2022-01-09 10:55:03', 0),
(9, 'ffffff', 'ffffffff', 'ryan8@yahoo.com', 'ffffffffff', 'IMG_1641704262_blog-img1-913x500.jpg', '555555555555', '2022-01-09 04:57:42', '2022-01-09 10:57:42', 0),
(10, 'Istiak', 'Istiak60', 'isti840@gmail.com', '123456', 'IMG_1641707264_menu-shoes.png', '0154954615', '2022-01-09 05:47:44', '2022-01-09 11:47:44', 0),
(11, 'Arfan A Khan', 'arfan07', 'alpha07@gmail.com', '123456', 'IMG_1641710963_newsletter-img.jpg', '123456', '2022-01-09 06:49:23', '2022-01-09 12:49:23', 0),
(12, 'same', 'sme', 'v@gmail.com', '123456', NULL, NULL, '2022-01-16 05:06:39', '2022-01-16 11:06:39', 0),
(13, 'moktar', 'moktar88', '88mhossain@gmail.com', '121212', NULL, NULL, '2022-01-16 05:16:23', '2022-01-16 11:16:23', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
