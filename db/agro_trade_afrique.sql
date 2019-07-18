-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2019 at 12:06 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agro_trade_afrique`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin_role` enum('Super Admin','Admin','','') NOT NULL,
  `status` enum('Active','Inactive','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `lname`, `phone`, `email`, `username`, `password`, `admin_role`, `status`) VALUES
(1, 'Ferd', 'Eke', '08035868983', 'g@gmail.com', 'ferazi', 'sonofgod', 'Super Admin', 'Active'),
(3, 'ferd', 'eke', '111', 'e@gmail.com', 'elrazi', '123', 'Admin', 'Active'),
(4, 'aa', 'bb', '222', 'a@gmail.com', 'kopi', '222', 'Admin', 'Active'),
(5, 'aa', 'bb', '123', 'bb@gmail.com', 'abb', '555', 'Admin', 'Active'),
(7, 'xx', 'yy', '777', 'y@gmail.com', 'xy', '7777', 'Admin', 'Active'),
(10, 'xx', 'yy', '777', 'aza@gmail.com', 'don', '444', 'Admin', 'Active'),
(11, 'John', 'Wick', '773663', 'wick@gmail.com', 'wicked', '123', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `agroproduct`
--

CREATE TABLE `agroproduct` (
  `id` bigint(20) NOT NULL,
  `title` varchar(55) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `producer` varchar(255) DEFAULT NULL,
  `list_price` float NOT NULL,
  `our_price` float NOT NULL,
  `description` text,
  `shipping_weight` float NOT NULL,
  `shipping_weightUnit` varchar(255) DEFAULT NULL,
  `in_stock_number` int(11) DEFAULT NULL,
  `image_filename` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `publication_date` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive','Disabled','') NOT NULL,
  `origin` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agroproduct`
--

INSERT INTO `agroproduct` (`id`, `title`, `category`, `producer`, `list_price`, `our_price`, `description`, `shipping_weight`, `shipping_weightUnit`, `in_stock_number`, `image_filename`, `publisher`, `publication_date`, `status`, `origin`) VALUES
(2, 'cassava', 'Tubers', 'sunghai farms', 500, 300, '                                                            cassava good for energy                                                \r\n                                                ', 10, 'Kilogram', 10000, 'oranges.jpg', 'cobek', '2019-06-18', 'Active', 'Australia'),
(3, 'cassava', '', 'sunghai farms', 500, 300, 'cassava good for energy                                                ', 10, 'Kilogram', 10000, NULL, 'cobek', '2019-06-18', 'Inactive', ''),
(4, 'cassava', 'Tubers', 'sunghai farms', 500, 300, '                                                            cassava good for energy                                                \r\n                                                ', 10, 'Kilogram', 10000, 'apples.jpg', 'cobek', '2019-06-18', 'Active', 'Australia'),
(5, 'cassava', '', 'sunghai farms', 500, 300, 'cassava good for energy                                                ', 10, 'Kilogram', 10000, NULL, 'cobek', '2019-06-18', '', ''),
(6, 'cassava', '', 'sunghai farms', 500, 300, 'cassava good for energy                                                ', 10, 'Kilogram', 10000, NULL, 'cobek', '2019-06-18', '', ''),
(7, 'cassava', '', 'sunghai farms', 500, 300, 'cassava good for energy                                                ', 10, 'Kilogram', 10000, NULL, 'cobek', '2019-06-18', '', ''),
(8, 'cassava', '', 'sunghai farms', 500, 300, 'cassava good for energy                                                ', 10, 'Kilogram', 10000, NULL, 'cobek', '2019-06-18', '', ''),
(11, 'Apples', 'Fruits', 'Elnino Stores', 10000, 7000, 'Apples are good for the eyes                                                ', 10, 'Kilogram', 10000, NULL, 'Elnino Stores', '2019-07-11', 'Active', 'Australia'),
(12, 'oranges', 'Fruits', 'Elnino Stores', 5000, 3000, 'oranges are good for the body                                                ', 5, 'Kilogram', 10000, 'oranges.jpg', 'Elnino Stores', '2019-07-11', 'Active', 'Argentina'),
(13, 'Grapes', 'Fruits', 'Elnino Stores', 15000, 10000, 'lovely grapes                                                ', 5, 'Kilogram', 0, 'pGrapes.jpg', 'Elnino Stores', '2019-07-11', 'Active', 'Nigeria'),
(14, 'Apples', 'Tubers', 'Ontario Stores', 10000, 7000, 'Apples made in Ontario are really of high quality with the best agro processing methods used                                                ', 10, 'Kilogram', 300000, 'apples.jpg', 'Ontario Stores', '2019-07-12', 'Active', 'Argentina'),
(15, 'berries', 'Fruits', 'sunghai farms', 1000, 700, 'berries are good for your eyes                                                ', 5, 'Kilogram', 20000, 'pGrapes.jpg', 'sunghai farms', '2019-07-15', 'Active', 'Argentina'),
(16, 'paw paw', 'Fruits', 'niit farms', 500, 300, 'paw paw is good for the eys                                                ', 2, 'Kilogram', 3000, 'barley.jpg', 'niit darms', '2019-07-15', 'Active', 'Australia');

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `id` bigint(20) NOT NULL,
  `customer_cartId` varchar(30) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` double(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_item`
--

INSERT INTO `cart_item` (`id`, `customer_cartId`, `product_id`, `quantity`) VALUES
(1, '16963301241129993', 1, 10.00),
(2, '16963301241129993', 9, 22.00),
(3, '17368907430798029', 2, 10.00),
(4, '17368907430798029', 9, 22.00),
(5, '17368907430798029', 5, 10.00),
(6, '17517313879547283', 11, 10.00),
(7, '17539170425764523', 2, 10.00),
(8, '17851936888603163', 13, 5.00),
(9, '17857872463650663', 12, 5.00),
(10, '17857872463650663', 13, 5.00),
(11, '18162722135263818', 8, 10.00),
(12, '18162722135263818', 4, 10.00),
(13, '18162722135263818', 5, 25.00),
(14, '18162722135263818', 5, 10.00),
(15, '18162722135263818', 5, 10.00),
(16, '18294772562695079', 14, 10.00),
(17, '18294772562695079', 13, 5.00),
(18, '18294772562695079', 13, 5.00),
(19, '18300644705824633', 14, 10.00),
(20, '18300644705824633', 13, 5.00),
(21, '183321422466939011', 13, 5.00),
(22, '183321422466939011', 14, 10.00),
(23, '183533533295277211', 12, 5.00),
(24, '183565049507549011', 14, 10.00),
(25, '18361255486931403', 12, 5.00),
(26, '183648599200698511', 13, 5.00),
(27, '18367570976096083', 13, 5.00),
(28, '18367570976096083', 4, 10.00),
(29, '995395224184693', 2, 10.00),
(30, '995456124790683', 2, 10.00),
(31, '996103789482283', 14, 10.00),
(32, '1008397774434683', 14, 10.00),
(33, '1008397774434683', 13, 5.00),
(34, '1008397774434683', 13, 5.00),
(35, '1008397774434683', 13, 5.00),
(36, '1008397774434683', 13, 5.00),
(37, '1395984835982691', 13, 5.00),
(38, '1395984835982691', 4, 10.00),
(39, '1415286327601091', 2, 10.00),
(40, '1423767084623933', 5, 10.00),
(41, '1423767084623933', 4, 10.00),
(42, '1423767084623933', 15, 5.00),
(43, '1457659088441053', 14, 10.00),
(44, '1460139335695523', 4, 10.00),
(45, '1465911397894223', 4, 10.00),
(46, '1472481356118613', 14, 10.00),
(47, '1474484061077123', 4, 10.00),
(48, '1478025680194063', 4, 10.00),
(49, '1486076571739633', 14, 10.00),
(50, '1487987825328183', 4, 10.00),
(51, '1547640997552823', 4, 10.00),
(52, '1547640997552823', 2, 10.00),
(53, '2132920514440213', 4, 10.00),
(54, '35444121144182112', 14, 10.00),
(55, '35444121144182112', 12, 5.00);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` varchar(50) NOT NULL,
  `order_date` date DEFAULT NULL,
  `order_status` varchar(20) DEFAULT NULL,
  `order_total` double DEFAULT NULL,
  `shipping_method` varchar(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_date`, `order_status`, `order_total`, `shipping_method`, `user_id`) VALUES
('1395984835982691', '2019-07-15', 'PENDING', 54590, 'groundShipping', 1),
('1415286327601091', '2019-07-15', 'PENDING', 3090, 'groundShipping', 1),
('1423767084623933', '2019-07-15', 'PENDING', 9785, 'groundShipping', 3),
('1478025680194063', '2019-07-15', 'PENDING', 3090, 'groundShipping', 3),
('1487987825328183', '2019-07-15', 'PENDING', 3090, 'groundShipping', 3),
('1547640997552823', '2019-07-15', 'PENDING', 6180, 'groundShipping', 3),
('16940978721146433', '2019-07-10', 'PENDING', 3090, 'groundShipping', 3),
('16963301241129993', '2019-07-10', 'PENDING', 4223, 'groundShipping', 3),
('17368907430798029', '2019-07-11', 'PENDING', 7313, 'groundShipping', 9),
('17857872463650663', '2019-07-11', 'PENDING', 66950, 'premiumShipping', 3),
('18300644705824633', '2019-07-12', 'PENDING', 123600, 'groundShipping', 3),
('183321422466939011', '2019-07-12', 'PENDING', 123600, 'premiumShipping', 11),
('183533533295277211', '2019-07-12', 'PENDING', 15450, 'groundShipping', 11),
('183565049507549011', '2019-07-12', 'PENDING', 72100, 'groundShipping', 11),
('18361255486931403', '2019-07-12', 'PENDING', 15450, 'groundShipping', 3),
('183648599200698511', '2019-07-12', 'PENDING', 51500, 'groundShipping', 11),
('18367570976096083', '2019-07-12', 'PENDING', 51500, 'groundShipping', 3),
('35444121144182112', '2019-07-17', 'PENDING', 87550, 'groundShipping', 12);

-- --------------------------------------------------------

--
-- Table structure for table `order_billingaddr`
--

CREATE TABLE `order_billingaddr` (
  `id` bigint(20) NOT NULL,
  `order_id` varchar(30) DEFAULT NULL,
  `billing_address_name` varchar(30) DEFAULT NULL,
  `billing_address_street1` varchar(150) DEFAULT NULL,
  `billing_address_street2` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(30) DEFAULT NULL,
  `billing_address_country` varchar(30) DEFAULT NULL,
  `billing_address_zipcode` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_billingaddr`
--

INSERT INTO `order_billingaddr` (`id`, `order_id`, `billing_address_name`, `billing_address_street1`, `billing_address_street2`, `billing_address_city`, `billing_address_country`, `billing_address_zipcode`) VALUES
(1, NULL, 'eke', 'wuse 1', 'wuse 2', 'abuja', 'Please Select an Option', '900288'),
(2, '16963301241129993', 'eke ferdinand', 'sunnyvale', 'sun city', 'abuja', 'NIGERIA', '900288'),
(3, '17368907430798029', 'Donal Trump', 'Washington', 'trump tower', 'Washington', 'USA', '100382'),
(4, '17857872463650663', 'elen carter', 'jarkata', 'nice', 'nice', 'USA', '120387'),
(5, '18300644705824633', 'donald', 'portharcourt', 'rumumasi', 'portharcourt', 'NIGERIA', '200922'),
(6, '183321422466939011', 'Awazi Abashi', 'wuse 2', 'garki', 'abuja', 'NIGERIA', '900288'),
(7, '183533533295277211', 'Awazi Abashi', 'wuse 2', 'garki', 'abuja', 'NIGERIA', '900288'),
(8, '183565049507549011', 'Awazi Abashi', 'wuse 2', 'garki', 'abuja', 'NIGERIA', '900288'),
(9, '18361255486931403', 'Awazi Abashi', 'wuse 2', 'garki', 'abuja', 'NIGERIA', '900288'),
(10, '183648599200698511', 'Awazi Abashi', 'wuse 2', 'garki', 'abuja', 'NIGERIA', '900288'),
(11, '18367570976096083', 'Awazi Abashi', 'wuse 2', 'garki', 'abuja', 'NIGERIA', '900288'),
(12, '1395984835982691', 'Ferd Eke', 'wuse 2', 'wus1', 'abuja', 'NIGERIA', '900288'),
(13, '1415286327601091', 'eke ferdinand', 'wuse 1', 'wuse 2', 'abuja', 'NIGERIA', '900288'),
(14, '1423767084623933', 'eke ferdinand', 'wuse 1', 'wuse 2', 'abuja', 'NIGERIA', '900288'),
(15, '1478025680194063', 'eke', 'wuse 1', 'wuse 2', 'abuja', 'NIGERIA', '900288'),
(16, '1487987825328183', 'eke', 'wuse 1', 'wuse 2', 'abuja', 'NIGERIA', '900288'),
(17, '1547640997552823', 'eke ferdinand', 'wuse 1', 'wuse 2', 'abuja', 'NIGERIA', '900288'),
(18, '35444121144182112', 'Ndidi Eke', 'citec estate gwarimpa', 'marrakesh str. wuse 2', 'abuja', 'NIGERIA', '900288');

-- --------------------------------------------------------

--
-- Table structure for table `order_payment`
--

CREATE TABLE `order_payment` (
  `id` bigint(20) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `holder_name` varchar(30) DEFAULT NULL,
  `card_number` varchar(30) DEFAULT NULL,
  `expiry_month` int(11) NOT NULL,
  `expiry_year` int(11) NOT NULL,
  `cvc` int(11) NOT NULL,
  `order_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_payment`
--

INSERT INTO `order_payment` (`id`, `type`, `holder_name`, `card_number`, `expiry_month`, `expiry_year`, `cvc`, `order_id`) VALUES
(1, 'eke', 'eke', '12122', 11, 20, 123, NULL),
(2, 'Donal Trump', 'Donal Trump', '782277136691837', 11, 20, 348, '17368907430798029'),
(3, 'elen carter', 'elen carter', '16638849363', 9, 20, 534, '17857872463650663'),
(4, 'donald', 'donald', '23554682', 9, 21, 674, '18300644705824633'),
(5, 'Awazi Abashi', 'Awazi Abashi', '5537738', 7, 20, 846, '183321422466939011'),
(6, 'Awazi Abashi', 'Awazi Abashi', '66488383', 11, 20, 754, '183533533295277211'),
(7, 'Awazi Abashi', 'Awazi Abashi', '77366482', 10, 20, 638, '183565049507549011'),
(8, 'Awazi Abashi', 'Awazi Abashi', '1662883', 9, 20, 759, '18361255486931403'),
(9, 'Awazi Abashi', 'Awazi Abashi', '77635532', 10, 20, 756, '183648599200698511'),
(10, 'Awazi Abashi', 'Awazi Abashi', '774662', 10, 20, 758, '18367570976096083'),
(11, 'Ferd Eke', 'Ferd Eke', '74792984', 10, 21, 747, '1395984835982691'),
(12, 'eke ferdinand', 'eke ferdinand', '77366482', 9, 21, 789, '1415286327601091'),
(13, 'eke ferdinand', 'eke ferdinand', '4774649', 7, 20, 664, '1423767084623933'),
(14, 'eke', 'eke', '38838', 1, 21, 763, '1478025680194063'),
(15, 'eke', 'eke', '23344', 1, 21, 764, '1487987825328183'),
(16, 'eke ferdinand', 'eke ferdinand', '2887333', 9, 20, 645, '1547640997552823'),
(17, 'Ndid Eke', 'Ndid Eke', '66257749927473', 10, 21, 693, '35444121144182112');

-- --------------------------------------------------------

--
-- Table structure for table `order_shippingaddr`
--

CREATE TABLE `order_shippingaddr` (
  `id` bigint(20) NOT NULL,
  `order_id` varchar(30) DEFAULT NULL,
  `shipping_address_name` varchar(255) DEFAULT NULL,
  `shipping_address_street1` varchar(150) DEFAULT NULL,
  `shipping_address_street2` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(30) DEFAULT NULL,
  `shipping_address_country` varchar(30) DEFAULT NULL,
  `shipping_address_zipcode` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_shippingaddr`
--

INSERT INTO `order_shippingaddr` (`id`, `order_id`, `shipping_address_name`, `shipping_address_street1`, `shipping_address_street2`, `shipping_address_city`, `shipping_address_country`, `shipping_address_zipcode`) VALUES
(1, '16940978721146433', 'eke', 'wuse1', 'wuse2', 'abuja', 'USA', '900288'),
(2, '17368907430798029', 'Donal Trumpp', 'white house', 'trump tower', 'washington', 'USA', '100382'),
(3, '17857872463650663', 'elen carter', 'jarkata', 'nice', 'nice', 'USA', '120387'),
(4, '18300644705824633', 'donald', 'portharcourt', 'rumumasi', 'portharcourt', 'USA', '200922'),
(5, '183321422466939011', 'Awazi Abashi', 'wuse 2', 'garki', 'abuja', 'USA', '900288'),
(6, '183533533295277211', 'Awazi Abashi', 'wuse 2', 'garki', 'abuja', 'USA', '900288'),
(7, '183565049507549011', 'Awazi Abashi', 'wuse 2', 'garki', 'abuja', 'USA', '900288'),
(8, '18361255486931403', 'Awazi Abashi', 'wuse 2', 'garki', 'abuja', 'USA', '900288'),
(9, '183648599200698511', 'Awazi Abashi', 'wuse 2', 'garki', 'abuja', 'USA', '900288'),
(10, '18367570976096083', 'Awazi Abashi', 'wuse 2', 'garki', 'abuja', 'USA', '900288'),
(11, '1395984835982691', 'Ferd Eke', 'wuse 2', 'wuse1', 'abuja', 'USA', '900288'),
(12, '1415286327601091', 'eke ferdinand', 'wuse1', 'wuse2', 'abuja', 'USA', '900288'),
(13, '1423767084623933', 'eke ferdinand', 'wuse1', 'wuse2', 'abuja', 'USA', '900288'),
(14, '1478025680194063', 'eke', 'wuse1', 'wuse2', 'abuja', 'USA', '900288'),
(15, '1487987825328183', 'eke', 'wuse1', 'wuse2', 'abuja', 'USA', '900288'),
(16, '1547640997552823', 'eke ferdinand', 'wuse1', 'wuse2', 'abuja', 'USA', '900288'),
(17, '35444121144182112', 'Ndidi Eke', 'citec estate gwarimpa', 'marrakesh str. wuse 2', 'abuja', 'NIGERIA', '900288');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` varchar(30) NOT NULL,
  `customer_id` bigint(11) NOT NULL,
  `status` enum('ACTIVE','ABANDONED','CHECKEDOUT') NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopping_cart`
--

INSERT INTO `shopping_cart` (`id`, `customer_id`, `status`, `created`) VALUES
('1008397774434683', 3, 'ACTIVE', '2019-07-14'),
('1395984835982691', 1, 'ACTIVE', '2019-07-15'),
('1415286327601091', 1, 'ACTIVE', '2019-07-15'),
('1423767084623933', 3, 'ACTIVE', '2019-07-15'),
('1457659088441053', 3, 'ACTIVE', '2019-07-15'),
('1460139335695523', 3, 'ACTIVE', '2019-07-15'),
('1465911397894223', 3, 'ACTIVE', '2019-07-15'),
('1472481356118613', 3, 'ACTIVE', '2019-07-15'),
('1474484061077123', 3, 'ACTIVE', '2019-07-15'),
('1478025680194063', 3, 'ACTIVE', '2019-07-15'),
('1486076571739633', 3, 'ACTIVE', '2019-07-15'),
('1487987825328183', 3, 'ACTIVE', '2019-07-15'),
('1547640997552823', 3, 'ACTIVE', '2019-07-15'),
('16963301241129993', 3, 'ACTIVE', '2019-07-10'),
('17368907430798029', 9, 'ACTIVE', '2019-07-11'),
('17517313879547283', 3, 'ACTIVE', '2019-07-11'),
('17539170425764523', 3, 'ACTIVE', '2019-07-11'),
('17851936888603163', 3, 'ACTIVE', '2019-07-11'),
('17857872463650663', 3, 'ACTIVE', '2019-07-11'),
('18162722135263818', 8, 'ACTIVE', '2019-07-12'),
('18294772562695079', 9, 'ACTIVE', '2019-07-12'),
('18300644705824633', 3, 'ACTIVE', '2019-07-12'),
('183321422466939011', 11, 'ACTIVE', '2019-07-12'),
('183533533295277211', 11, 'ACTIVE', '2019-07-12'),
('183565049507549011', 11, 'ACTIVE', '2019-07-12'),
('18361255486931403', 3, 'ACTIVE', '2019-07-12'),
('183648599200698511', 11, 'ACTIVE', '2019-07-12'),
('18367570976096083', 3, 'ACTIVE', '2019-07-12'),
('2132920514440213', 3, 'ACTIVE', '2019-07-15'),
('35444121144182112', 12, 'ACTIVE', '2019-07-17'),
('995395224184693', 3, 'ACTIVE', '2019-07-14'),
('995456124790683', 3, 'ACTIVE', '2019-07-14'),
('996103789482283', 3, 'ACTIVE', '2019-07-14');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `role` enum('User','Affiliate') NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `phone`, `email`, `username`, `password`, `role`, `status`) VALUES
(1, 'Ferd', 'Eke', '08035868983', 'eke@gmail.com', 'Ferd_Eke', '1234', 'User', 'Active'),
(2, 'ee', 'ff', '999', 'ee@gmail.com', 'efe', '123', 'User', 'Active'),
(3, 'xx', 'yy', '777', 'xy@gmail.com', 'xy', '123', 'User', 'Active'),
(8, 'aa', 'bb', '222', 'ab@gmail.com', 'ab', '123', 'User', 'Active'),
(9, 'Donald', 'Trump', '19002345', 'dona@gmail.com', 'donatus', '777', 'User', 'Active'),
(11, 'awa', 'abashi', '08035868983', 'awa@gmail.com', 'awa', 'awazi', 'User', 'Active'),
(12, 'Ndidi', 'Eke', '07034155901', 'ndi@gmail.com', 'ndi', 'sonofGod', 'User', 'Active'),
(20, 'Eke', 'Immaculata', '07069736686', 'eby@gmail.com', 'ebere', '123456', 'User', 'Active'),
(24, 'Eke', 'Benadeth', '08030850933', 'bena@gmail.com', 'nnukwu', 'bena', 'User', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `user_billing`
--

CREATE TABLE `user_billing` (
  `id` bigint(20) NOT NULL,
  `user_billing_city` varchar(30) DEFAULT NULL,
  `user_billing_country` varchar(30) DEFAULT NULL,
  `user_billing_name` varchar(50) DEFAULT NULL,
  `user_billing_state` varchar(30) DEFAULT NULL,
  `user_billing_street1` varchar(150) DEFAULT NULL,
  `user_billing_street2` varchar(150) DEFAULT NULL,
  `user_billing_zipcode` varchar(50) DEFAULT NULL,
  `user_payment_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_payment`
--

CREATE TABLE `user_payment` (
  `id` bigint(20) NOT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `bank_AcctName` varchar(50) DEFAULT NULL,
  `bank_AcctNumber` varchar(50) NOT NULL,
  `swift_code` int(15) NOT NULL,
  `bank_CountryLocation` bit(50) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_shipping`
--

CREATE TABLE `user_shipping` (
  `id` bigint(20) NOT NULL,
  `user_shipping_city` varchar(50) DEFAULT NULL,
  `user_shipping_country` varchar(50) DEFAULT NULL,
  `user_shipping_default` bit(1) NOT NULL,
  `user_shipping_name` varchar(60) DEFAULT NULL,
  `user_shipping_state` varchar(50) DEFAULT NULL,
  `user_shipping_street1` varchar(150) DEFAULT NULL,
  `user_shipping_street2` varchar(150) DEFAULT NULL,
  `user_shipping_zipcode` varchar(30) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `agroproduct`
--
ALTER TABLE `agroproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_UserID` (`user_id`);

--
-- Indexes for table `order_billingaddr`
--
ALTER TABLE `order_billingaddr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_payment`
--
ALTER TABLE `order_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_shippingaddr`
--
ALTER TABLE `order_shippingaddr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_billing`
--
ALTER TABLE `user_billing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_UserPay` (`user_payment_id`);

--
-- Indexes for table `user_payment`
--
ALTER TABLE `user_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_userPayment` (`user_id`);

--
-- Indexes for table `user_shipping`
--
ALTER TABLE `user_shipping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_userShipmnt` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `agroproduct`
--
ALTER TABLE `agroproduct`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `order_billingaddr`
--
ALTER TABLE `order_billingaddr`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_payment`
--
ALTER TABLE `order_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_shippingaddr`
--
ALTER TABLE `order_shippingaddr`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_billing`
--
ALTER TABLE `user_billing`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_payment`
--
ALTER TABLE `user_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_shipping`
--
ALTER TABLE `user_shipping`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_UserID` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD CONSTRAINT `shopping_cart_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user_billing`
--
ALTER TABLE `user_billing`
  ADD CONSTRAINT `FK_UserPay` FOREIGN KEY (`user_payment_id`) REFERENCES `user_payment` (`id`);

--
-- Constraints for table `user_payment`
--
ALTER TABLE `user_payment`
  ADD CONSTRAINT `FK_userPayment` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user_shipping`
--
ALTER TABLE `user_shipping`
  ADD CONSTRAINT `FK_userShipmnt` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
