-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 08, 2017 at 07:06 AM
-- Server version: 5.5.54-cll
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `izaapinn_handzforhire`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `user_id` int(11) NOT NULL,
  `address1` varchar(250) NOT NULL,
  `address2` varchar(250) NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `zipcode` varchar(150) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`user_id`, `address1`, `address2`, `city`, `state`, `zipcode`, `id`) VALUES
(14, 'he\'s', 'djdj', 'djdj', 'znxjd', 'kfkf', 1),
(21, 'sfrs', 'sfsf', 'sfs', 'sfsf', '123', 2),
(14, 'he\'s', 'djdj', 'djdj', 'znxjd', 'kfkf', 3),
(14, 'Test', 'test', 'chennai', 'tn', '23654', 4),
(14, 'Test', 'test', 'chennai', 'tn', '23654', 5),
(14, 'Test', 'test', 'chennai', 'tn', '23654', 6),
(21, 'fvbs', 'hbbs', 'vsbb', 'vbns', '666', 7),
(21, 'fff', 'ffg', 'fg', 'gh', '66', 8),
(21, 'sfsfsf', 'rfasr', 'sdfsdf', 'afaf', '123', 9),
(21, 'sfsfsf', 'rfasr', 'sdfsdf', 'afaf', '123', 10),
(21, 'sfsfsf', 'rfasr', 'sdfsdf', 'afaf', '123', 11),
(14, 'djdj', 'kdjd', 'djd', 'djdj', 'djdj', 12),
(38, 'dgg', 'cbh', 'dgy', 'fg', '455', 13),
(38, '123, Newry street', 'first main road', 'chennai', 'cuddalore', '2356', 14),
(38, 'thh', 'fhh', 'fg', 'fh', '5666', 15),
(40, 'gjh', 'thh', 'fh', 'gh', '8985', 16),
(21, 'sfsfsf', 'rfasr', 'sdfsdf', 'afaf', '123', 17),
(43, 'sttt1', 'sttt2', 'df', 'hddh', 'hdjd', 18),
(38, 'xgv', 'dgg', 'dvg', 'chh', '599', 19),
(38, 'gzhz', 'sghs', 'sz', 'ggs', '267', 20),
(38, 'hsjsj', 'shhz', 'ghz', 'hhx', '668', 21),
(49, 'zbzb', 'gzhz', 'zghz', 'hhz', '6667', 22),
(51, 'vab', 'vbs', 'vvz', 'hhx', '598', 23),
(54, 'Dh', 'Dh', 'jddj', 'kfkf', 'jddj', 24),
(21, 'sfsfsf', 'rfasr', 'sdfsdf', 'afaf', '123', 25),
(61, 'bas', 'karan', 'fg', 'gg', '93', 26),
(66, 'op', 'op', 'Gigi', 'ddhdh', 'dud', 27),
(65, 'fhju', 'fhj', 'dhju', 'fhh', '6656', 28),
(69, 'I have', 'I yv', 'mbu', 'mvj', '0', 29),
(70, 'dgg', 'dfg', 'dvg', 'fgh', '56', 30),
(70, 'fgt', 'fgg', 'fgg', 'fgg', '5896', 31),
(70, 'ggh', 'rhy', 'rgh', 'dgg', '8666', 32),
(70, 'uuuu', 'uuu', 'uuu', 'uuu', '6555', 33),
(81, 'asdf', 'asdf2', 'ct', 'st', '12', 34),
(70, 'fhhh', 'ghu', 'vhh', 'ghh', '5695', 35),
(70, 'fhj', 'rgu', 'hfg', 'ghh', '556', 36),
(83, 'fhhg', 'hht', 'ghy', 'fhu', '6', 37),
(84, 'rty', 'rt1', 'rt', 'gh', '23', 38),
(70, 'cv', 'gh', 'fg', 'dhh', '6', 39),
(99, 'yay', 'yay', 'tut', 'jgjh', 'mhm', 40);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `email`, `password`, `role`, `photo`, `is_active`, `created_date`, `updated_date`) VALUES
(1, 'Admin', 'Admin', 'admin@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 'assets/images/photo1.jpg', 1, '2017-05-16 07:09:43', '2017-05-15 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `api_logs`
--

CREATE TABLE `api_logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text NOT NULL,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `time` int(11) NOT NULL,
  `authorized` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `api_logs`
--

INSERT INTO `api_logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `authorized`) VALUES
(31, 'service/login', 'post', 'a:0:{}', '', '117.193.206.196', 1494579850, 1),
(32, 'service/login', 'post', 'a:4:{s:9:\"X-APP-KEY\";s:14:\"HandzForHire@~\";s:11:\"devicetoken\";s:40:\"sasfafwrwrsasfafwrwrsasfafwrwrsasfafwrwr\";s:8:\"username\";s:6:\"tester\";s:8:\"password\";s:9:\"aaaaaaaaa\";}', 'HandzForHire@~', '122.165.103.85', 1494492800, 1);

-- --------------------------------------------------------

--
-- Table structure for table `checking_account`
--

CREATE TABLE `checking_account` (
  `id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `routing_number` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `license_number` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `default_account` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checking_account`
--

INSERT INTO `checking_account` (`id`, `employer_id`, `name`, `routing_number`, `account_number`, `license_number`, `state`, `default_account`, `status`, `created_date`, `updated_date`) VALUES
(2, 1, 'fwfan', '43434', '44433443', 'edg3445345', 'Georgia', 1, 0, '2017-05-23 06:26:20', '0000-00-00 00:00:00'),
(3, 2, 'R', '123213', '12321', '4324', 'Florida', 0, 0, '2017-06-06 14:02:27', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `credit_card`
--

CREATE TABLE `credit_card` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `card_type` enum('Visa','Mastercard','Maestro','Discover','Amex') NOT NULL,
  `exp_month` varchar(255) NOT NULL,
  `exp_year` varchar(255) NOT NULL,
  `cvv` varchar(255) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `default_card` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit_card`
--

INSERT INTO `credit_card` (`id`, `name`, `card_number`, `card_type`, `exp_month`, `exp_year`, `cvv`, `employer_id`, `default_card`, `created_date`, `updated_date`) VALUES
(1, 'Ram', '4111111111111112', 'Visa', '08', '2017', '123', 1, 0, '2017-05-22 11:55:55', '0000-00-00 00:00:00'),
(2, 'Kumar', '4000000000000000', 'Maestro', '02', '2033', '12321', 1, 0, '2017-05-22 13:00:07', '0000-00-00 00:00:00'),
(3, 'Prabhu', '4111204152144522', 'Amex', '12', '2019', '123', 2, 1, '2017-05-22 13:20:48', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `email_notifications`
--

CREATE TABLE `email_notifications` (
  `id` int(11) NOT NULL,
  `employees` text NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_notifications`
--

INSERT INTO `email_notifications` (`id`, `employees`, `subject`, `message`, `created_date`, `updated_date`) VALUES
(1, 'test@gmail.comn', 'Test', 'Test', '2017-06-02 13:28:22', '2017-06-02 09:58:22'),
(2, 'test@gmail.comnss#test@gmail.comn', 'sadad ad', 'Test', '2017-06-02 13:30:25', '2017-06-02 10:00:25'),
(3, 'ramkumar.izaap@gmail.com', 'Test Mail', 'Test Mail', '2017-06-06 06:32:59', '2017-06-06 00:32:59'),
(4, 'ramkumar.izaap@gmail.com', 'Test with Attachment', 'Test with Attachment', '2017-06-06 06:36:17', '2017-06-06 00:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `employers`
--

CREATE TABLE `employers` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`id`, `firstname`, `lastname`, `address_1`, `address_2`, `city`, `state`, `zipcode`, `email`, `username`, `password`, `role`, `photo`, `is_active`, `created_date`, `updated_date`) VALUES
(2, 'sadsad', 'Vendor', '2nd Main Road', 'CS', 'Scottsdale', 'AZ', '800051', 'test@gmail.com', 'test@gmail.com', '123456', 6, 'assets/images/avatar2.jpg', 1, '2017-05-18 07:19:01', '2017-05-18 03:49:01'),
(3, 'Test Vendor', 'Vendor', '40, Third Floor', 'Abraham Apt', 'Scottsdale', 'AZ', '82054', 'ramkumar.izaap@gmail.com', 'test@gmail.comn', '123456', 3, '', 1, '2017-05-19 13:18:00', '2017-06-06 00:32:20'),
(4, 'Test4545', 'days', '1601 Purdue Drive', 'CS', 'City', 'AZ', '800051', 'test4@gmail.com', 'fgujfgyuj', 'fvghjfghugf', 2, '', 1, '2017-05-19 13:58:19', '2017-05-19 10:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `job_name` varchar(255) NOT NULL,
  `job_category` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `job_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `amount` varchar(255) NOT NULL,
  `recurring` enum('Lump Sum','Hourly Wage','Daily','Weekly','Bi-Weekly','Monthly') NOT NULL,
  `address` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `address_include` enum('Yes','No') NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `employer_id`, `job_name`, `job_category`, `description`, `job_date`, `start_time`, `end_time`, `amount`, `recurring`, `address`, `logo`, `address_include`, `status`, `created_date`, `updated_date`) VALUES
(2, 1, 'Need a Dog Walker', 6, 'Need a Dog Walker', '2017-05-19', '11:45:00', '11:45:00', '845', 'Daily', 'Chennai', '', 'No', 1, '2017-05-19 02:45:49', '2017-05-19 02:45:49'),
(3, 2, 'Need Pet Care', 12, 'Need Pet Care', '2017-05-19', '12:15:00', '12:15:00', '999', 'Monthly', 'SSD', '', 'Yes', 1, '2017-05-19 03:17:39', '2017-05-19 03:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `job_category`
--

CREATE TABLE `job_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('Active','Not Active') NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_category`
--

INSERT INTO `job_category` (`id`, `name`, `status`, `created_date`, `updated_date`) VALUES
(1, 'Painting (Interior / Exterior)', 'Active', '2017-05-18 10:04:56', '2017-05-18 07:18:43'),
(2, 'Moving Items', 'Active', '2017-05-18 10:48:58', '2017-05-18 07:18:58'),
(3, 'Heavy Lifting', 'Active', '2017-05-18 10:49:08', '2017-05-18 07:19:08'),
(4, 'Unpacking Boxes', 'Active', '2017-05-18 10:49:21', '2017-05-18 07:19:21'),
(5, 'Landscaping', 'Active', '2017-05-18 10:49:32', '2017-05-18 07:19:32'),
(6, 'Lawnmowing', 'Active', '2017-05-18 10:49:51', '2017-05-18 07:19:51'),
(7, 'Raking Leaves', 'Active', '2017-05-18 10:50:00', '2017-05-18 07:20:00'),
(8, 'Babysitting', 'Active', '2017-05-18 10:50:11', '2017-05-18 07:20:47'),
(9, 'Digging (trench/hole)', 'Active', '2017-05-18 10:50:43', '2017-05-18 07:20:43'),
(10, 'Assembling Furniture/Object', 'Active', '2017-05-18 10:51:21', '2017-05-18 07:21:21'),
(11, 'Dog Walking', 'Active', '2017-05-18 10:51:33', '2017-05-18 07:21:33'),
(12, 'Pet Care', 'Active', '2017-05-18 10:51:40', '2017-05-18 07:21:40'),
(13, 'Workout Partner/Coach', 'Active', '2017-05-18 10:51:55', '2017-05-18 07:21:55'),
(14, 'Server(s) for Dinner Party', 'Active', '2017-05-18 10:52:15', '2017-05-18 07:22:15'),
(15, 'Bartender for House Party', 'Active', '2017-05-18 10:52:34', '2017-05-18 07:22:34'),
(16, 'Shoveling Show', 'Active', '2017-05-18 10:52:48', '2017-05-18 07:22:48'),
(17, 'Apprentice for Skilled Laborer', 'Active', '2017-05-18 10:53:09', '2017-05-18 07:23:09'),
(18, 'Cleaning', 'Active', '2017-05-18 10:53:22', '2017-05-18 07:23:22'),
(19, 'Organizing', 'Active', '2017-05-18 10:53:31', '2017-05-18 07:23:31'),
(20, 'Food Shopping', 'Active', '2017-05-18 10:53:41', '2017-05-18 07:23:41'),
(21, 'Other', 'Active', '2017-05-18 10:53:47', '2017-05-18 07:23:47');

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `custom_key` tinyint(4) NOT NULL DEFAULT '0',
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `key`, `level`, `ignore_limits`, `custom_key`, `date_created`) VALUES
(134, 'HandzForHire@~', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_history`
--

CREATE TABLE `payment_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `tnx_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paypal`
--

CREATE TABLE `paypal` (
  `id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `api_signature` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paypal`
--

INSERT INTO `paypal` (`id`, `employer_id`, `email_id`, `api_key`, `api_signature`, `created_date`, `updated_date`) VALUES
(1, 1, 'ramkumar.izaap@gmail.com', '1234', '12311', '2017-05-23 07:35:54', '2017-05-23 04:08:02'),
(2, 2, 'test@gmail.com', 'sdfsf', 'sfsd', '2017-06-06 14:03:39', '2017-06-06 08:28:18');

-- --------------------------------------------------------

--
-- Table structure for table `posted_jobs`
--

CREATE TABLE `posted_jobs` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `job_creator_id` int(11) NOT NULL,
  `comments` text NOT NULL,
  `job_posted_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posted_jobs`
--

INSERT INTO `posted_jobs` (`id`, `employee_id`, `job_id`, `job_creator_id`, `comments`, `job_posted_on`, `created_date`, `updated_date`) VALUES
(1, 3, 2, 4, 'I m interested', '2017-05-20 06:49:04', '2017-05-20 06:26:59', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `menu_id` varchar(255) NOT NULL,
  `action_id` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`, `menu_id`, `action_id`, `status`, `created_date`, `updated_date`) VALUES
(1, 'Super Admin', '{\"employers\":\"1\",\"employees\":\"1\",\"roles\":\"1\",\"payment_history\":\"1\",\"reports\":\"1\",\"email\":\"1\",\"jobs\":\"1\",\"list\":\"1\",\"posted\":\"1\",\"category\":\"1\",\"payment_methods\":\"1\",\"card\":\"1\",\"account\":\"1\",\"paypal\":\"1\"}', '{\"create\":\"1\",\"edit\":\"1\",\"view\":\"1\",\"delete\":\"1\"}', 'Active', '2017-05-22 06:45:07', '2017-06-03 02:46:46'),
(5, 'Sub Admin', '{\"employers\":\"1\",\"employees\":\"1\",\"jobs\":\"1\",\"roles\":\"1\"}', '{\"create\":\"1\",\"edit\":\"1\",\"view\":\"1\",\"delete\":\"1\"}', 'Active', '2017-05-22 07:10:05', '2017-06-03 01:38:17'),
(6, 'Employers', '{\"reports\":\"1\",\"email\":\"1\",\"jobs\":\"1\",\"list\":\"1\",\"posted\":\"1\",\"payment_methods\":\"1\",\"card\":\"1\",\"account\":\"1\",\"paypal\":\"1\"}', '{\"create\":\"1\",\"edit\":\"1\",\"view\":\"1\",\"delete\":\"1\"}', 'Active', '2017-05-22 07:10:25', '2017-06-03 07:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(250) NOT NULL,
  `state` varchar(150) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `usertype` varchar(100) NOT NULL,
  `devicetoken` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `address`, `city`, `state`, `zipcode`, `usertype`, `devicetoken`) VALUES
(10, 'vidhya1', 'f41b67257ad6ac78a0eb81b7330aba52', 'izaaptech123@gmail.com', 'izaap', 'tech', 'test', 'chennai', 'tamilnadu', 600004, 'employer', 'sasfafwrwrsasfafwrwrsasfafwrwrsasfafwrwr'),
(12, 'ge1', 'c8710011868bf44b12a59eabc043cbc8', 'izaapt123@gmail.com', 'izaap', 'tech', 'address', 'chennai', 'tamilnadu', 600004, 'employer', '548A1F92148D57A9C2D8831BC805F0A58589FD7D34795ECD7F3BF7EE7C8699F8'),
(13, 'geee', 'c8710011868bf44b12a59eabc043cbc8', 'izaapte123@gmail.com', 'izaap', 'tech', 'address', 'chennai', 'tamilnadu', 600004, 'employer', '548A1F92148D57A9C2D8831BC805F0A58589FD7D34795ECD7F3BF7EE7C8699F8'),
(14, 'xxx', '578044f1afe92bf3153b475b1516e084', 'h@gmail.com', 'izaapp', 'techh', 'addresss', 'chennaii', 'tamilnaduu', 6000044, 'employer', '548A1F92148D57A9C2D8831BC805F0A58589FD7D34795ECD7F3BF7EE7C8699F8'),
(15, 'ddfdfdf', '8aca73488dbc1701cbd95ea922f1edb5', 'email@gmail.com', 'sdds', 'dssd', 'sdsd', 'dd', 'sdds', 0, 'employer', 'sasfafwrwrsasfafwrwrsasfafwrwrsasfafwrwr'),
(16, 'ada', '8c8d357b5e872bbacd45197626bd5759', 'adad@gmail.com', 'adad', 'adfad', 'adad', 'adad', 'adad', 0, 'employer', 'kjadkjassfsfsfsfsfsfsfs'),
(17, 'knkni9', '7b59442734a0c1f4242ee1785627ea58', 'kbkbib in', 'ubub6v', 'inn7n8', 'ininu', 'uvuv ', 'kin7', 0, 'employer', ''),
(18, '8th j', '9f83bfcd856b205039be5805a6d49192', 'ibh', 'I ini', 'knib', 'gh u', '6g7h', '8h8j', 0, 'employer', ''),
(19, 'in8n', '479c92f80a9bee6e03d14eb0f7576ece', '7h7h', 'uvv5', 'kninv', 'oh', '6g6b', 'ib7b7b', 0, 'employer', ''),
(20, 'ghyy', 'c51d2b8b90dc1eb9fff456d6a28655ca', 'izaapizaap@gmail.com', 'tgh', 'fgg', 'rghtg', 'fg', 'tg', 66, 'employer', ''),
(21, 'bas', '62ee749a177f5f5be20061a3a6f9b1c4', 'bask@gmail.com', 'fhh', 'dgg', 'eggrgg', 'rfg', 'fhh', 586, 'employer', 'Handz'),
(22, 'thy', 'c51d2b8b90dc1eb9fff456d6a28655ca', 'baskaranko@gmail.com', 'fh', 'fhh', 'fhythh', 'thh', 'ghh', 66, 'employer', ''),
(23, 'ttyy', 'c51d2b8b90dc1eb9fff456d6a28655ca', 'anu@gmail.com', 'ghh', 'rgy', 'ryyrgg', 'dgg', 'fgh', 556, 'employer', ''),
(24, 'fhhg', 'c51d2b8b90dc1eb9fff456d6a28655ca', 'sekar@gmail.com', 'xvg', 'fg', 'rgfg', 'fg', 'fg', 56, 'employer', ''),
(25, 'fhf', '7f58341b9dceb1f1edca80dae10b92bc', 'kamal@gmail.com', 'dfg', 'fg', 'fgfv', 'dv', 'fg', 56, 'employer', ''),
(26, 'fggr', '72f0795636327a3da4e871ff9db95f4f', 'babu@gmail.com', 'ggf', 'fvg', 'dvvdgg', 'fvh', 'cb', 566, 'employer', ''),
(27, 'hshz', '78486fcfc9d3a8ee177a21468591aca3', 'begam@gmail.com', 'ghs', 'ghz', 'ghhsghhs', 'fghs', 'ghhs', 646, 'employer', ''),
(28, 'ghg', '16d7a4fca7442dda3ad93c9a726597e4', 'test@gmail.com', 'chg', 'fg', 'fgfg', 'fg', 'gg', 55, 'employer', ''),
(29, 'fggf', 'daedf1c5ab09fbad097591bdbdcf8cce', 'ccc@gmail.com', 'cg', 'fv', 'fhhfg', 'fg', 'cg', 56, 'employer', ''),
(30, 'rgg', '35a196b0238016a73c2ae86e7ea4b6c8', 'tester@gmail.com', 'cb', 'fg', 'dfdf', 'fg', 'fg', 56, 'employer', ''),
(31, 'fhh', '6bce0fd553bb13e83ce3b3bc221a8abd', 'city@gmail.com', 'fg', 'vh', 'vhhfvh', 'fg', 'gv', 56, 'employer', ''),
(32, 'igih', '19b19ffc30caef1c9376cd2982992a59', 'kgig', 'kib', '8h7hbub', 'ig6g', 'ugy', 'ihi', 0, 'employer', ''),
(33, 'hhc', 'd467ef9e16a751f376bbf1b476380b91', 'n h', 'just joined ', 'hcyv', 'bxgx', 'yc ', 'h', 0, 'employer', ''),
(34, 'giy', 'c91bf36985f473722698df0b8aef2c45', '66g', 'bkb', 'gi', 'f5f', 'yryr', 'kg', 0, 'employer', ''),
(35, 'adas', '8c8d357b5e872bbacd45197626bd5759', 'adadd@gmail.com', 'adad', 'adfad', 'adad', 'adad', 'adad', 0, 'employer', 'kjadkjassfsfsfsfsfsfsfs'),
(36, 'anitha', '7b05bcf2b85df8a46d3e36a04f42e4d9', 'anitha@gmail.com', 'fg', 'fg', 'cggfg', 'fg', 'fh', 586, 'employer', ''),
(37, 'zzz', '925544d7f90cd3663531546f080bbed8', 'gh@gmail.com', 'a', 'b', 'st1st2', 'CHjj', 'ten', 344, 'employer', '548A1F92148D57A9C2D8831BC805F0A58589FD7D34795ECD7F3BF7EE7C8699F8'),
(38, 'rakesh', 'd5aeaeac3298f65f326e835fa2ed5450', 'rakesh@gmail.com', 'fhh', 'fuu', 'rghtyu', 'fhh', 'fgh', 166, 'employer', 'Handz'),
(39, 'hh', '6f14261cbf2cb500be8053a66b144e1c', 'hh@gmail.com', 'ugg', 'ff', 'chfyfuf', 'yduf', 'yf', 765, 'employer', ''),
(40, 'hire', 'cfd13acc2f36e65786769c2f5fe5e598', 'hgc@gmail.com', 'ugg', 'ff', 'chfyfuf', 'yduf', 'yf', 765, 'employer', 'Handz'),
(41, 'izaap', 'c51d2b8b90dc1eb9fff456d6a28655ca', 'iza@gmail.com', 'gsgs', 'sd', 'ssss', 'sd', 'dd', 5, 'employer', 'Handz'),
(42, 'bas', '25d55ad283aa400af464c76d713c07ad', 'bas@gmail.com', 'bas', 'k', 'errty', 'yu', 'tu', 23, 'employer', ''),
(43, 'alli', '75a752aeff947caf08ed7cd2edb0664f', 'oi@gmail.com', 'kkk', 'lll', 'st1st2', 'c', 's', 0, 'employer', '9D397ADAA50A019AE1C3571CE9C89DF4DFED193EA9192C96D938064AD39DFFEF'),
(44, 'adass', '8c8d357b5e872bbacd45197626bd5759', 'adaddd@gmail.com', 'adad', 'adfad', 'adad', 'adad', 'adad', 0, 'employer', 'dev'),
(45, 'ani', '7b05bcf2b85df8a46d3e36a04f42e4d9', 'ani@gmail.com', 'anitha', 'stella', 'first main roadNewry street', 'chennai', 'thj', 259865, 'employer', ''),
(46, 'newtest', 'c51d2b8b90dc1eb9fff456d6a28655ca', 'newtest@gmail.com', 'abhhgh', 'fhg', 'thhhfhh', 'thh', 'tj', 566, 'employer', ''),
(47, 'dora', 'b3b2169c7ac2b13e59350cfd5b883aca', 'dora@gmail.com', 'fgh', 'rht', '3ttI ty', 'rgy', 'fyy', 556, 'employer', ''),
(48, 'add', 'c51d2b8b90dc1eb9fff456d6a28655ca', 'add@gmail.com', 'fhy', 'tg', 'fhrg', 'ef', 'ty', 55, 'employer', ''),
(49, 'saral', 'dbb316c6c77a96f94ac6ac6c3429819b', 'saral@gmail.com', 'fh', 'rhy', 'thufhh', 'rhh', 'thu', 66, 'employer', 'Handz'),
(50, 'asma', '6f3678ea67af0bde962acb06a1cfc0b4', 'asma@gmail.com', 'fhh', 'fgh', 'fhhghh', 'fh', 'gj', 66, 'employer', ''),
(51, 'siva', 'e7437361370f7b5d982c04170454c0b0', 'sivaa@gmail.com', 'sgsh', 'ss', 'sdsd', 'dd', 'dd', 58, 'employer', ''),
(52, 'punitha', 'e89a25b1d89cbe63a0cfbf5523ea489f', 'punitha@gmail.com', 'dg', 'fgh', 'cggfgg', 'fgg', 'fg', 53, 'employer', ''),
(53, 'jack', '925544d7f90cd3663531546f080bbed8', 'jack@gmail.com', 'jack', 'hd', 'hdjdJFK', 'JFK', 'Dudu', 0, 'employer', 'D13D4BF751B0C7C64D475E88529C1E0267A369F63B4E0DB374FAD80FD209636E'),
(54, 'yyy', '552e6a97297c53e592208cf97fbb3b60', 'a7@gmail.com', 'yyy', 'djdj', 'kfkfjddj', 'djdj', 'djd', 0, 'employer', '8929215CA3B713E32E9514CDCA92B323EB1007F3A4FE1F0CBC5C9B95D85EDB87'),
(55, 'handz', 'a1f6e9b06bb51962af89f65c003696d0', 'handz@gmail.com', 'handz', 'h', 'hafgfgh', 'dgg', 'fgh', 556, 'employer', 'Handz'),
(56, 'gmgm', '208103fbeae9317d70a4fb90d0bdbee7', 'gmgm@gmail.com', 'fzhjx', 'hhhd', 'dhhxghhd', 'ghhd', 'ghd', 568, 'employer', 'Handz'),
(57, 'herrigel3', '6391fa77317d356984468a44a7071654', 'herrigel3@gmail.com', 'Jay', 'Herrigel', '539 Southern Oak Drive,', 'Ponte Vedra', 'FL', 32081, 'employer', 'A2C1D094FED1C20354FB31643F88B2E7592FED2C7E0BAA75ACD9D9EC9DA6C1CB'),
(58, 'bas', '25d55ad283aa400af464c76d713c07ad', 'baskar@gmail.com', 'bas', 'k', 'asfgasfgd', 'jk', 'nj', 12, 'employer', 'Handz'),
(59, 'adasss', '8c8d357b5e872bbacd45197626bd5759', 'addadd@gmail.com', 'adad', 'adfad', 'adad', 'adad', 'adad', 0, 'employer', 'kjadkjassfsfsfsfsfsfsfs'),
(60, 'ahamed', '51c105b808b4eac377fb97d7e9845251', 'ahamed@gmail.com', 'fhh', 'rhy', '3yy', 'rhh', 'rhh', 456, 'employer', ''),
(61, 'bask', '25d55ad283aa400af464c76d713c07ad', 'bas1234@gmail.com', 'vjj', 'ub7', 'guugib7', 'uf', 'jb', 23, 'employer', 'Handz'),
(62, 'gum', 'c51d2b8b90dc1eb9fff456d6a28655ca', 'gum@gmail.com', 'fhh', 'fhh', 'thh', 'rhh', 'fhh', 1566, 'employer', ''),
(63, 'sivan', '962f0a9e48452adb78e670bf7eabebf9', 'sivaan@gmail.com', 'fgy', 'ry5', 'rgh', 'rhy', 'rgg', 66, 'employer', ''),
(64, 'rosy', '5c967b958b1993032a02c006919fd1ab', 'rosy@gmail.com', 'tgh', 'fgh', 'fgg', 'fhh', 'rhh', 55, 'employer', ''),
(65, 'rose', '5c967b958b1993032a02c006919fd1ab', 'rosee@gmail.com', 'tgh', 'fgh', 'fgg', 'fhh', 'rhh', 55, 'employer', 'Handz'),
(66, 'aaa', '552e6a97297c53e592208cf97fbb3b60', 'fff@gmail.com', 'iii', 'iii', 'DuduDudu', 'Dudu', 'iffy', 5885, 'employer', 'AD497497BB63EADF619B746B2ACF1EDA5C52B39308055588458CE16A9AAC6F7D'),
(67, 'yyy', '552e6a97297c53e592208cf97fbb3b60', 'rrr@gmail.com', 'kkk', 'kkk', 'dgdyet', 'every', 'her', 0, 'employer', 'AD6F5D69A8059E638F5933D9B8E108E3CE5D3BBF50023E9682F8AB8EA3A519E1'),
(68, 'adas', '8c8d357b5e872bbacd45197626bd5759', 'adadddd@gmail.com', 'adad', 'adfad', 'adad', 'adad', 'adad', 0, 'employer', 'kjadkjassfsfsfsfsfsfsfs'),
(69, 'baskii', '25d55ad283aa400af464c76d713c07ad', 'basuu@gmail.com', 'ty', 'yt', 'ty', 'u', 'i', 12, 'employer', 'Handz'),
(70, 'abisha', '6274be8b952f917f7d0db77318de8a41', 'abisha@gmail.com', 'thh', 'thu', 'rghfgh', 'rgg', 'tgy', 666, 'employer', 'Handz'),
(71, 'fhh', 'a724fe728a2b49d3f41a0c2120eb7780', 'haris@gmail.com', 'hft', 'ght', 'tg', 'tg', 'gh', 85, 'employer', ''),
(72, 'vijay', '25d55ad283aa400af464c76d713c07ad', 'based@gmail.com', 'bas', 'k', 'Big streetBig street 2', 'Give', 'gh', 23, 'employer', 'Handz'),
(73, 'tt', '4da6edb16dad7148938ac3463edacd62', 'tt@gmail.com', 'tt', 'tt', 'diI\'d', 'kfkf', 'kfkf', 0, 'employer', '66947D4B2506D40AA7646FF3469BACD9A562E4E523981C2CA56DF033271BB696'),
(74, 'qqqq', 'beee47d70a7fc4c0c2cd2b517cc4b134', 'qqqq@gmail.com', 'qqqq', 'qqqq', 'hddhdjdj', 'djdj', 'his', 0, 'employer', '66947D4B2506D40AA7646FF3469BACD9A562E4E523981C2CA56DF033271BB696'),
(75, 'www', 'beee47d70a7fc4c0c2cd2b517cc4b134', 'www@gmail.com', 'www', 'www', 'djdjhdjd', 'kfkf', 'jddj', 0, 'employer', 'F1610ABE58950E5DDE4C44B7B868CBCD39933E827D3081328993226D530F32F8'),
(76, 'bas123', '25d55ad283aa400af464c76d713c07ad', 'basking@gmail.com', 'bas', 'ki', 'welcome', 'ft', 'ty', 23, 'employer', ''),
(77, 'bask', '25d55ad283aa400af464c76d713c07ad', 'badboy2@gmail.com', 'bas', 'karan', 'abcefg', 'ct', 'st', 123, 'employer', ''),
(78, 'baski', '25d55ad283aa400af464c76d713c07ad', 'baskarank.mca@gmail.com', 'bas', 'k', 'wewelcome', 'fg', 'st', 12, 'employer', ''),
(79, 'bask', '25d55ad283aa400af464c76d713c07ad', 'badboy@gmail.com', 'bas', 'kar', 'wewelcome', 'ab', 'cd', 12, 'employer', ''),
(80, 'baskk', '25d55ad283aa400af464c76d713c07ad', 'badboy23@gmail.com', 'bas', 'k', 'abcd', 'ef', 'gh', 12, 'employer', ''),
(81, 'abcd', '25d55ad283aa400af464c76d713c07ad', 'abcd@gmail.com', 'ab', 'ty', 'rttyu', 'yu', 'yun', 23, 'employer', ''),
(82, 'ghi', '5d98c80d61a1b4020a4c62bf5732d396', 'ghi@gmail.com', 'ty', 'fg', 'fh', 'fh', 'fh', 66, 'employer', ''),
(83, 'yet', '25d55ad283aa400af464c76d713c07ad', 'yett@gmail.com', 'fhj', 'fg', 'fgh', 'gu', 'ry', 563, 'employer', ''),
(84, 'baski', '25d55ad283aa400af464c76d713c07ad', 'basically2@gmail.com', 'bas', 'k', 'asdf', 'ct', 'st', 23, 'employer', 'Handz'),
(85, 'tttt', '4da6edb16dad7148938ac3463edacd62', 'tttt@gmail.com', 'tttt', 'ft', 'do fgg', 'gg', 'gh', 53, 'employer', ''),
(86, 'tttt', '4da6edb16dad7148938ac3463edacd62', 'tttt@gmail.com', 'tttt', 'ft', 'do fgg', 'gg', 'gh', 53, 'employer', ''),
(87, 'tttt', '4da6edb16dad7148938ac3463edacd62', 'tttt@gmail.com', 'tttt', 'ft', 'do fgg', 'gg', 'gh', 53, 'employer', ''),
(88, 'ghgfgg', '25d55ad283aa400af464c76d713c07ad', 'izaapiza@gmail.com', 'fv', 'gh', 'gt', 'fg', 'tg', 56, 'employer', ''),
(89, 'abi', '3a5461b198c19355522afe56f96267f1', 'abibu@gmail.com', 'dg', 'dg', 'fg', 'fg', 'gh', 556, 'employer', ''),
(90, 'ajith', '5bb50d4b2dec2e55982cafed5241b3ab', 'ajith@gmail.com', 'dgh', 'dh', 'dg', 'b', 'fh', 53, 'employer', ''),
(91, 'sugu', '01ec7f29d06f3babbc308090d61b5de0', 'sugu@gmail.com', 'dg', 'dg', 'dg', 'cv', 'fg', 85, 'employer', ''),
(92, 'thabu', '1de9bcfc34d57d274c0ef8b9a828d915', 'thabu@gmail.com', 'ff', 'dg', 'fg', 'dg', 'fg', 8, 'employer', ''),
(93, 'appu', 'a27f65211ea0f99b9fe56f8c5d57cd2a', 'appu@gmail.com', 'dg', 'dg', 'rg', 'fg', 'fh', 555, 'employer', ''),
(94, 'fghrr', '25d55ad283aa400af464c76d713c07ad', 'absara@gmail.com', 'dg', 'dg', 'fg', 'cb', 'fh', 88, 'employer', ''),
(95, 'fhj', '25d55ad283aa400af464c76d713c07ad', 'thabora@gmail.com', 'fh', 'fg', 'gg', 'fg', 'gh', 66, 'employer', ''),
(96, 'sarah', 'c41202d9a007c59a5bf17c34c144a61c', 'sarah@gmail.com', 'afh', 'xg', 'dgfg', 'g', 'fh', 85, 'employer', ''),
(97, 'a', '552e6a97297c53e592208cf97fbb3b60', 'a@gmail.com', 'djd', 'djd', 'hdjddjd', 'djd', 'djdj', 0, 'employer', 'F1610ABE58950E5DDE4C44B7B868CBCD39933E827D3081328993226D530F32F8'),
(98, 's', '925544d7f90cd3663531546f080bbed8', 's@gmail.com', 'herh', 'dhdh', 'dd', 'd', 'g', 0, 'employer', 'F1610ABE58950E5DDE4C44B7B868CBCD39933E827D3081328993226D530F32F8'),
(99, 'r', '552e6a97297c53e592208cf97fbb3b60', 'r@gmail.com', 'try', 'rte', 'Ureythe', 'Utd', 'he', 0, 'employer', '0ED4E2A641483FBBB4FA3E143DC18E605E0C9E875BCAF0BDF7712BE9B8FDA4CD'),
(100, 'Jay Herrigel', 'aee432839ca3dbb79ca8d44338a33d2f', 'jhherrigel@yahoo.com', 'Jay', 'Herrigel', '539 Southern Oak Drive', 'Ponte Vedra', 'FL', 32081, 'employer', 'B61B25087D593364A608E2B3B1E97A9D7D75B37B37F73282501552D734B1D03A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_logs`
--
ALTER TABLE `api_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checking_account`
--
ALTER TABLE `checking_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_card`
--
ALTER TABLE `credit_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_notifications`
--
ALTER TABLE `email_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_category`
--
ALTER TABLE `job_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_history`
--
ALTER TABLE `payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypal`
--
ALTER TABLE `paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posted_jobs`
--
ALTER TABLE `posted_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
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
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `api_logs`
--
ALTER TABLE `api_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `checking_account`
--
ALTER TABLE `checking_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `credit_card`
--
ALTER TABLE `credit_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `email_notifications`
--
ALTER TABLE `email_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `employers`
--
ALTER TABLE `employers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `job_category`
--
ALTER TABLE `job_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT for table `payment_history`
--
ALTER TABLE `payment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `paypal`
--
ALTER TABLE `paypal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posted_jobs`
--
ALTER TABLE `posted_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
