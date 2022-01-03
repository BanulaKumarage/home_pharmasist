-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2022 at 05:32 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homepharmasist`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicationtable`
--

CREATE TABLE `applicationtable` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pharmacy_name` varchar(255) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `delivery_supported` tinyint(1) NOT NULL DEFAULT 0,
  `documents` varchar(255) NOT NULL,
  `application_status` varchar(255) NOT NULL DEFAULT 'pending',
  `acc_created` tinyint(1) NOT NULL DEFAULT 0,
  `address` varchar(255) NOT NULL,
  `contact_no` varchar(30) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applicationtable`
--

INSERT INTO `applicationtable` (`id`, `email`, `pharmacy_name`, `latitude`, `longitude`, `delivery_supported`, `documents`, `application_status`, `acc_created`, `address`, `contact_no`, `deleted`) VALUES
(1, 'newpharmacy123@gmail.com', 'New Pharmacy', 7.4818, 80.3609, 1, 'uploads/Evidence01.txt', 'approved', 1, '12\\2,Kandy road,Kurunegala', '012-1212123', 0),
(2, 'jayapharm99@gmail.com', 'Jaya Pharmacy', 6.03575, 80.2384, 0, 'uploads/Evidence02.docx', 'declined', 0, 'No.9,Akuressa Rd,Galle', '012-1212124', 0),
(3, 'lankapharmacy00@gmail.com', 'Lanka Pharmacy', 6.88842, 81.3439, 1, 'uploads/Evidence03.txt', 'approved', 1, 'No.7,Colombo Rd,Monaragala', '012-1212178', 0),
(4, 'unitedpharm23@yahoo.com', 'United Pharmacy', 6.98862, 81.0574, 1, 'uploads/Evidence04.txt', 'approved', 0, 'No.23,Bandarawela Rd,Badulla', '012-1911913', 0),
(5, 'lankapharmacy66@gmail.com', 'Lanka Pharmacy', 7.16491, 80.5694, 0, 'uploads/Evidence05.txt', 'pending', 0, 'No.78,Kandy Rd,Gampola', '099-1212998', 0),
(6, 'citypharmacy404@gmail.com', ' City Pharmacy', 7.33816, 80.9989, 1, 'uploads/Evidence06.txt', 'pending', 0, 'No.22,Badulla Rd,Mahiyanganaya', '099-1212001', 0),
(7, 'asiri@gmil.com', 'Asiri Pharmacy', 1.23, 80, 1, 'uploads/Evidence07.txt', 'approved', 1, 'no 12, Colombo', '011 - 1234333', 0);

-- --------------------------------------------------------

--
-- Table structure for table `itemtable`
--

CREATE TABLE `itemtable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `quantity_unit` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price_per_unit_quantity` float NOT NULL,
  `prescription_needed` tinyint(1) NOT NULL,
  `pharmacy_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itemtable`
--

INSERT INTO `itemtable` (`id`, `name`, `code`, `quantity_unit`, `quantity`, `price_per_unit_quantity`, `prescription_needed`, `pharmacy_id`, `status`) VALUES
(1, 'KLODIC', 'R3475M', 'TABLETS', 1350, 1000, 1, 1, 0),
(2, 'SILOCIN 4', 'NP1403M', 'CAPSULES', 1200, 16, 1, 1, 0),
(3, 'SITALO  100', 'NP3863M', 'FILM COA', 920, 120, 1, 1, 0),
(4, 'PANADOL', 'NP3383M', 'CARDS', 539, 20, 0, 2, 0),
(5, 'SAMAHAN', 'R3214M', 'PACKET', 770, 15, 0, 1, 0),
(6, 'SUSTAGEN', 'NP2239M', 'TIN', 50, 2300, 0, 1, 0),
(7, 'URIMAX 0.4 mg', 'R2406M', 'TABLETS', 390, 8.5, 1, 3, 0),
(8, 'GEFTIWEL 250', 'NP2043M', 'TABLETS', 589, 4.75, 1, 1, 0),
(9, 'PANADOL', 'NP3383M', 'BOTTLE', 539, 20, 0, 1, 0),
(10, 'Paracitamol', 'pa123', '12', 1000, 10, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mediatortable`
--

CREATE TABLE `mediatortable` (
  `id` int(11) NOT NULL,
  `sender_username` varchar(255) NOT NULL,
  `receiver_username` varchar(255) NOT NULL,
  `message_type` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `message_ref_id` int(255) NOT NULL,
  `is_read` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mediatortable`
--

INSERT INTO `mediatortable` (`id`, `sender_username`, `receiver_username`, `message_type`, `subject`, `message`, `message_ref_id`, `is_read`) VALUES
(2, 'banula', 'New Pharmacy', 'text', 'qwe', 'wer', 0, 1),
(3, 'superuser01', 'New Pharmacy', 'text', 'hi', 'hello', 0, 1),
(4, 'banula', 'Lanka Pharmacy', 'text', 'Lanka', 'Lanka Pembara Lanka', 0, 0),
(6, 'superuser01', 'ron', 'text', 'dear', 'me', 0, 0),
(8, 'banula', 'Asiri Pharmacy', 'text', 'hi', 'hello', 0, 0),
(9, 'superuser01', 'dakshina', 'text', 'my', 'hello', 0, 1),
(10, 'banula', 'Lanka Pharmacy', 'text', 'dear', 'wer', 0, 0),
(11, 'superuser01', 'piumini', 'text', 'hi', 'me', 0, 0),
(12, 'dakshina', 'Lanka Pharmacy', 'text', 'Lanka', 'opakddnaewgfbgjwbe,bwe,fb', 0, 0),
(13, 'banula', 'superuser01', 'text', 'qwe', 'qdfrgegsersgee', 0, 1),
(15, 'New Pharmacy', 'superuser01', 'text', 'hi', 'ascfrgthyjukmi,l.l,mn bvcxz', 0, 0),
(16, 'New Pharmacy', 'superuser01', 'text', 'hi', 'ascfrgthyjukmi,l.l,mn bvcxz', 0, 0),
(17, 'New Pharmacy', 'superuser01', 'text', 'hi', 'ascfrgthyjukmi,l.l,mn bvcxz', 0, 0),
(18, 'New Pharmacy', 'superuser01', 'text', 'hi', 'ascfrgthyjukmi,l.l,mn bvcxz', 0, 0),
(19, 'New Pharmacy', 'superuser01', 'text', '', '', 0, 0),
(20, 'New Pharmacy', 'superuser01', 'text', '', '', 0, 0),
(21, 'New Pharmacy', 'superuser01', 'text', '', '', 0, 0),
(22, 'New Pharmacy', 'superuser01', 'text', '', '', 0, 1),
(23, 'New Pharmacy', 'superuser01', 'text', '', '', 0, 0),
(24, 'New Pharmacy', 'superuser01', 'text', '', '', 0, 0),
(25, 'New Pharmacy', 'superuser01', 'text', '', '', 0, 0),
(26, 'New Pharmacy', 'superuser01', 'text', '', '', 0, 0),
(27, 'New Pharmacy', 'superuser01', 'text', 'dear', 'qwsdefhgjhjkjll;//.l,mnbvcxzxcvcbvnhbmjn,kml.;&#039;/.l,kmjhngbfvdcxscxfvbgvnvhmj,k.l;m', 0, 0),
(28, 'superuser01', 'banula', 'text', 'qwe', 'esrdgtfhygjukiol;polkjhngbfvdcsx', 0, 1),
(29, 'dakshina', 'superuser01', 'text', 'my', '', 0, 0),
(30, 'banula', 'superuser01', 'text', 'qwe', 'ddd', 0, 0),
(31, 'New Pharmacy', 'ron', 'prefilled form', 'Pre-Filled Form Recieved', 'Pre-Filled Form was sent by &quot; New Pharmacy &quot; for the prescription you sent.', 9, 0),
(32, 'New Pharmacy', 'ron', 'prefilled form', 'Pre-Filled Form Recieved', 'Pre-Filled Form was sent by &quot; New Pharmacy &quot; for the prescription you sent.', 10, 0),
(33, 'New Pharmacy', 'dakshina', 'prefilled form', 'Pre-Filled Form Recieved', 'Pre-Filled Form was sent by &quot; New Pharmacy &quot; for the prescription you sent.', 11, 0),
(34, 'New Pharmacy', 'hiruna', 'prefilled form', 'Pre-Filled Form Recieved', 'Pre-Filled Form was sent by &quot; New Pharmacy &quot; for the prescription you sent.', 12, 0),
(35, 'New Pharmacy', 'dakshina', 'prefilled form', 'Pre-Filled Form Recieved', 'Pre-Filled Form was sent by &quot; New Pharmacy &quot; for the prescription you sent.', 13, 0),
(36, 'New Pharmacy', 'hiruna', 'prefilled form', 'Pre-Filled Form Recieved', 'Pre-Filled Form was sent by &quot; New Pharmacy &quot; for the prescription you sent.', 14, 0),
(37, 'New Pharmacy', 'banula', 'prefilled form', 'Pre-Filled Form Recieved', 'Pre-Filled Form was sent by &quot; New Pharmacy &quot; for the prescription you sent.', 15, 1),
(38, 'New Pharmacy', 'banula', 'prefilled form', 'Pre-Filled Form Recieved', 'Pre-Filled Form was sent by &quot; New Pharmacy &quot; for the prescription you sent.', 16, 1),
(39, 'New Pharmacy', 'dakshina', 'prefilled form', 'Pre-Filled Form Recieved', 'Pre-Filled Form was sent by &quot;New Pharmacy&quot; for the prescription you sent.', 3, 0),
(40, 'New Pharmacy', 'banula', 'prefilled form', 'Pre-Filled Form Recieved', 'Pre-Filled Form created and sent by &quot;New Pharmacy&quot; as for your request', 17, 0),
(41, 'New Pharmacy', 'dakshina', 'order', 'Order Status Updated', 'The Order you made at &quot;New Pharmacy&quot; has changed the status of your order. The status of your order is &quot;preparing&quot;.', 2, 0),
(42, 'New Pharmacy', 'banula', 'order', 'Order Status Updated', 'The Order you made at &quot;New Pharmacy&quot; has changed the status of your order. The status of your order is &quot;preparing&quot;.', 3, 0),
(43, 'New Pharmacy', 'banula', 'order', 'Order Status Updated', 'The Order you made at &quot;New Pharmacy&quot; has changed the status of your order. The status of your order is &quot;shipped&quot;.', 5, 0),
(44, 'New Pharmacy', 'banula', 'order', 'Order Status Updated', 'The Order you made at &quot;New Pharmacy&quot; has changed the status of your order. The status of your order is &quot;delivered&quot;.', 7, 0),
(45, 'New Pharmacy', 'banula', 'order', 'Order Status Updated', 'The Order you made at &quot;New Pharmacy&quot; has changed the status of your order. The status of your order is &quot;shipped&quot;.', 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `offertable`
--

CREATE TABLE `offertable` (
  `id` int(11) NOT NULL,
  `pharmacy_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `isexpired` tinyint(1) NOT NULL,
  `bannerdocument` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offertable`
--

INSERT INTO `offertable` (`id`, `pharmacy_id`, `name`, `description`, `start_date`, `end_date`, `status`, `isexpired`, `bannerdocument`) VALUES
(6, 1, 'Offer1', 'Offer1', '2022-01-07', '2022-01-28', 0, 1, 'uploads/Screenshot 2021-12-30 105924.jpg'),
(7, 1, 'Offer2', 'Offer2', '2022-01-18', '2022-01-11', 0, 0, 'uploads/graphic clr settings.jpg'),
(8, 1, 'Offer3', 'Offer3', '2022-01-03', '2022-01-20', 0, 0, 'uploads/settings4.jpg'),
(9, 1, 'Offer4', 'Offer4', '2022-01-05', '2022-01-18', 0, 0, 'uploads/settings3.jpg'),
(10, 1, 'Offer07', 'Offer7', '2022-01-04', '2022-01-27', 0, 0, 'uploads/Agent_Viper_Half.png'),
(11, 1, 'Offer9', 'hgmhm', '2022-01-03', '2022-01-20', 0, 0, 'uploads/viper3.jpg'),
(12, 1, 'Offer10', 'Offer10', '2021-12-31', '2022-01-04', 1, 0, 'uploads/valhalla 4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ordertable`
--

CREATE TABLE `ordertable` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `pharmacy_id` int(11) NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile_number` varchar(255) NOT NULL,
  `no_of_items` varchar(255) NOT NULL,
  `items` varchar(255) NOT NULL,
  `unit_prices` varchar(255) NOT NULL,
  `quantities` varchar(255) NOT NULL,
  `prescription` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `closed` tinyint(4) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordertable`
--

INSERT INTO `ordertable` (`id`, `customer_id`, `pharmacy_id`, `receiver_name`, `address`, `mobile_number`, `no_of_items`, `items`, `unit_prices`, `quantities`, `prescription`, `total`, `status`, `closed`, `deleted`) VALUES
(1, 2, 1, 'Piumini Kaveesha', '37, Seeradunna, Mawathagama', '0719884636', '3', '1,2,3', '1000,16,120', '2,3,4', '', 4324, 'delivered', 0, 0),
(2, 3, 1, 'Kaveesha Piumini', 'SLT,Badulla', '0719884636', '4', '4,5,6,2', '234,456,23,4', '2,3,4,7', 'uploads/prescriptions/Screenshot_20211022-142945.png', 3454, 'preparing', 0, 0),
(3, 2, 1, 'Banula Kumarage', 'Airport Rd,Anuradapura', '071-1266278', '1', '9', '20', '12', '', 240, 'preparing', 0, 0),
(4, 2, 2, 'Banula', 'Airport Rd,Anuradapura', '071-1266278', '1', '4', '20', '1', '', 20, 'new', 0, 0),
(5, 2, 1, 'Banula Kumarage', 'Airport Rd,Anuradapura', '071-1266278', '1', '9', '20', '12', '', 2768, 'shipped', 0, 0),
(6, 2, 1, 'Banula Kumarage', 'Airport Rd,Anuradapura', '071-1266278', '2', '9,6', '20,2300', '12,1', '', 2540, 'new', 0, 0),
(7, 2, 1, 'Banula Kumarage', 'Airport Rd,Anuradapura', '071-1266278', '2', '9,5', '20,15', '12,2', '', 270, 'delivered', 0, 0),
(8, 2, 1, 'Banula Kumarage', 'Airport Rd,Anuradapura', '071-1266278', '2', '9,5', '20,15', '12,123', '', 2085, 'new', 0, 0),
(9, 2, 1, 'paniya', 'Airport Rd,Anuradapura', '071-1266278', '4', '9,1,5,6', '20,1000,15,2300', '12,2,12,1', 'uploads/prescriptions/CS2062.pdf', 4720, 'shipped', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacytable`
--

CREATE TABLE `pharmacytable` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `License_no` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `delivery_supported` tinyint(1) NOT NULL,
  `is_closed` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pharmacytable`
--

INSERT INTO `pharmacytable` (`id`, `username`, `password`, `name`, `License_no`, `address`, `contact_number`, `email`, `latitude`, `longitude`, `delivery_supported`, `is_closed`) VALUES
(1, 'New Pharmacy', '$2y$10$SUkO0oGEyWXL7CPHyIH4V.mfXEpxSUJJGif6qbtn64OUtNVdfn/rO', 'New Pharmacy', '1234E', '12\\2,Kandy road,Kurunegala', '012-1212123', 'newpharmacy123@gmail.com', 7.4818, 80.3609, 1, 0),
(2, 'Lanka Pharmacy', '$2y$10$i6uod78BtGhd.qZvN5nO/./wwBbn/6C42HRCNOC6xkXejax.IDU4W', 'Lanka Pharmacy', 'abcd', 'No.7,Colombo Rd,Monaragala', '012-1212178', 'lankapharmacy00@gmail.com', 6.88842, 81.3439, 1, 0),
(3, 'Asiri Pharmacy', '$2y$10$AEjqDR8/oItigkSIXBRutOYNq89mmUiZcl9DGGJrNUH6p.f2LEeZG', 'Asiri Pharmacy', '12345', 'no 12, Colombo', '011 - 1234333', 'asiri@gmil.com', 1.23, 80, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `prefilledformtable`
--

CREATE TABLE `prefilledformtable` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `pharmacy_id` int(11) NOT NULL,
  `no_of_all_item` int(255) DEFAULT NULL,
  `no_of_items` varchar(255) DEFAULT NULL,
  `itemIds` varchar(255) DEFAULT NULL,
  `quantities` varchar(255) DEFAULT NULL,
  `prescription` varchar(255) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `form_sent` tinyint(1) DEFAULT 0,
  `seen` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prefilledformtable`
--

INSERT INTO `prefilledformtable` (`id`, `customer_id`, `pharmacy_id`, `no_of_all_item`, `no_of_items`, `itemIds`, `quantities`, `prescription`, `deleted`, `form_sent`, `seen`) VALUES
(1, 2, 1, 3, '2', '9,5,6', '1,12,19000', 'uploads/prescriptions/DESIGNDOC.txt', 0, 0, 1),
(2, 2, 1, 2, '1', '9,asd', '12,No Such Item', 'uploads/prescriptions/Screenshot_20211022-142945.png', 0, 1, 1),
(4, 2, 3, 0, NULL, NULL, NULL, 'uploads/prescriptions/ip config.txt', 0, 0, 0),
(5, 2, 1, 0, '2', '9,1', '12,2', 'uploads/prescriptions/CS2062.pdf', 0, 1, 1),
(6, 2, 3, 0, NULL, NULL, NULL, 'uploads/prescriptions/190331A_2.jpg', 0, 0, 0),
(7, 2, 1, 0, '1', '9', '1', 'uploads/prescriptions/Evidence01(3).txt', 1, 1, 1),
(12, 5, 1, 1, '1', '6', '1', '', 0, 1, 0),
(13, 3, 1, 1, '1', '9', '1', '', 0, 1, 0),
(14, 5, 1, 1, '1', '6', '3', '', 0, 1, 0),
(15, 2, 1, 1, '0', 'abc', 'No Such Item', '', 0, 1, 1),
(16, 2, 1, 1, '1', '9', '1', '', 0, 1, 1),
(17, 2, 1, 5, '3', '9,6,1,abc,asd', '12,1,-,No Such Item,No Such Item', '', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nic` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'customer',
  `nearbypharmacies` varchar(500) NOT NULL,
  `is_closed` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `username`, `password`, `name`, `nic`, `address`, `mobile_number`, `email`, `longitude`, `latitude`, `role`, `nearbypharmacies`, `is_closed`) VALUES
(1, 'superuser01', '$2y$10$f1JH1D67Vai7q/IMgMWDjO9VwhCyyZDv30TxmjZ.vecm/CODAZHpW', 'Super Admin', '199900000000', 'no.1,Colomo 01,Sri Lanka', '012-0000000', 'superadmin01@gmail.com', 6.9378, 79.8437, 'super_admin', '1,2,3', 0),
(2, 'banula', '$2y$10$xWVGeKlw4pC4TmtXp4J86e457.sqnVd.hzfJXTbqo3.ir30kYjgiu', 'Banula Kumarage', '993530328V', 'Airport Rd,Anuradapura', '071-1266278', 'banulakumarage@gmail.com', 80.4239, 8.31559, 'customer', '1,2,3', 0),
(3, 'dakshina', '$2y$10$F/dex3eX4np3lc7j522TmuYJCjTJZd50gx3EKAw04ex0JVQdq4R1C', 'Dakshina Ranmal', '199933012565', 'no.1,Gunanandapura,Talawakelle', '070-3806687', 'dakshinaranmal1999@gmail.com', 79.8939, 6.8719, 'customer', '1,2,3', 0),
(4, 'piumini', '$2y$10$/CS2A85.SPE40w5wNGLPaO9LPA2ctY71pj424ukxCHUEcdY2ClSHy', 'Piumini Kaveesha', '199974905080', 'no.2,Kandy Rd,Kurunegala', '071-4290810', 'piumini95kaveesha@gmail.com', 80.4448, 7.41605, 'customer', '1,2,3', 0),
(5, 'hiruna', '$2y$10$s11uElEwGwXaEh/SHa/xeOgYFW4HACXV9ZJhrc.XxVy4GfmpfDa4i', 'Hiruna Hansaka', '990861552V', 'No.6,Nadun Uyana,Matara', '076-2675516', 'hirunahans@gmail.com', 80.5763, 5.94935, 'customer', '2,1,3', 0),
(6, 'harry', '$2y$10$72fmKgPheRYhNB9LFn2z/urzUkoY/ZD2ShRJr5xhMYbe/Fb6Q547a', 'Harry', '12345', 'UOM', '12345', 'harry@gmail.com', 80, 1.23, 'customer', '3,2,1', 0),
(7, 'ron', '$2y$10$l4/Dt8MHNsQUIzdFjbFkQOd.dXhEj.X7ZKbNIz6UC3pnavBC5WT7K', 'Ron', '2345', 'UOM', '12345', 'ron@gmail.com', 81, 6.8, 'customer', '2,1,3', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicationtable`
--
ALTER TABLE `applicationtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itemtable`
--
ALTER TABLE `itemtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mediatortable`
--
ALTER TABLE `mediatortable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offertable`
--
ALTER TABLE `offertable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertable`
--
ALTER TABLE `ordertable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacytable`
--
ALTER TABLE `pharmacytable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prefilledformtable`
--
ALTER TABLE `prefilledformtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicationtable`
--
ALTER TABLE `applicationtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `itemtable`
--
ALTER TABLE `itemtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mediatortable`
--
ALTER TABLE `mediatortable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `offertable`
--
ALTER TABLE `offertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ordertable`
--
ALTER TABLE `ordertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pharmacytable`
--
ALTER TABLE `pharmacytable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prefilledformtable`
--
ALTER TABLE `prefilledformtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
