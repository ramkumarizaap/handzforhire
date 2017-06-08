-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2017 at 12:32 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `handzforhire`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address1` varchar(250) NOT NULL,
  `address2` varchar(250) NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `zipcode` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `is_active` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `email`, `password`, `role`, `is_active`, `created_date`, `updated_date`) VALUES
(1, 'Admin', 'Admin', 'admin@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 1, '2017-05-16 07:09:43', '2017-05-15 18:30:00');

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
(2, 1, 'fwfan', '43434', '44433443', 'edg3445345', 'Georgia', 1, 0, '2017-05-23 00:56:20', '0000-00-00 00:00:00'),
(3, 2, 'R', '123213', '12321', '4324', 'Florida', 0, 0, '2017-06-06 08:32:27', '0000-00-00 00:00:00');

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
  `address_card` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `zipcode` varchar(100) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `default_card` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit_card`
--

INSERT INTO `credit_card` (`id`, `name`, `card_number`, `card_type`, `exp_month`, `exp_year`, `cvv`, `address_card`, `city`, `state`, `zipcode`, `employer_id`, `default_card`, `created_date`, `updated_date`) VALUES
(1, 'Ram', '4111111111111112', 'Visa', '08', '2017', '123', '', '', '', '', 1, 0, '2017-05-22 06:25:55', '0000-00-00 00:00:00'),
(2, 'Kumar', '4000000000000000', 'Maestro', '02', '2033', '12321', '', '', '', '', 1, 0, '2017-05-22 07:30:07', '0000-00-00 00:00:00'),
(3, 'Prabhu', '4111204152144522', 'Amex', '12', '2019', '123', '', '', '', '', 2, 1, '2017-05-22 07:50:48', '0000-00-00 00:00:00');

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
(1, 'test@gmail.comn', 'Test', 'Test', '2017-06-02 07:58:22', '2017-06-02 04:28:22'),
(2, 'test@gmail.comnss#test@gmail.comn', 'sadad ad', 'Test', '2017-06-02 08:00:25', '2017-06-02 04:30:25'),
(3, 'ramkumar.izaap@gmail.com', 'Test Mail', 'Test Mail', '2017-06-06 01:02:59', '2017-06-05 19:02:59'),
(4, 'ramkumar.izaap@gmail.com', 'Test with Attachment', 'Test with Attachment', '2017-06-06 01:06:17', '2017-06-05 19:06:17');

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
(2, 'sadsad', 'Vendor', '2nd Main Road', 'CS', 'Scottsdale', 'AZ', '800051', 'test@gmail.com', 'test@gmail.com', '123456', 6, 'assets/images/avatar2.jpg', 1, '2017-05-18 01:49:01', '2017-05-17 22:19:01'),
(3, 'Test Vendor', 'Vendor', '40, Third Floor', 'Abraham Apt', 'Scottsdale', 'AZ', '82054', 'ramkumar.izaap@gmail.com', 'test@gmail.comn', '123456', 3, '', 1, '2017-05-19 07:48:00', '2017-06-05 19:02:20'),
(4, 'Test4545', 'days', '1601 Purdue Drive', 'CS', 'City', 'AZ', '800051', 'test4@gmail.com', 'fgujfgyuj', 'fvghjfghugf', 2, '', 1, '2017-05-19 08:28:19', '2017-05-19 04:59:26');

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
(2, 1, 'Need a Dog Walker', 6, 'Need a Dog Walker', '2017-05-19', '11:45:00', '11:45:00', '845', 'Daily', 'Chennai', '', 'No', 1, '2017-05-18 21:15:49', '2017-05-18 21:15:49'),
(3, 2, 'Need Pet Care', 12, 'Need Pet Care', '2017-05-19', '12:15:00', '12:15:00', '999', 'Monthly', 'SSD', '', 'Yes', 1, '2017-05-18 21:47:39', '2017-05-18 21:47:39');

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
(1, 'Painting (Interior / Exterior)', 'Active', '2017-05-18 04:34:56', '2017-05-18 01:48:43'),
(2, 'Moving Items', 'Active', '2017-05-18 05:18:58', '2017-05-18 01:48:58'),
(3, 'Heavy Lifting', 'Active', '2017-05-18 05:19:08', '2017-05-18 01:49:08'),
(4, 'Unpacking Boxes', 'Active', '2017-05-18 05:19:21', '2017-05-18 01:49:21'),
(5, 'Landscaping', 'Active', '2017-05-18 05:19:32', '2017-05-18 01:49:32'),
(6, 'Lawnmowing', 'Active', '2017-05-18 05:19:51', '2017-05-18 01:49:51'),
(7, 'Raking Leaves', 'Active', '2017-05-18 05:20:00', '2017-05-18 01:50:00'),
(8, 'Babysitting', 'Active', '2017-05-18 05:20:11', '2017-05-18 01:50:47'),
(9, 'Digging (trench/hole)', 'Active', '2017-05-18 05:20:43', '2017-05-18 01:50:43'),
(10, 'Assembling Furniture/Object', 'Active', '2017-05-18 05:21:21', '2017-05-18 01:51:21'),
(11, 'Dog Walking', 'Active', '2017-05-18 05:21:33', '2017-05-18 01:51:33'),
(12, 'Pet Care', 'Active', '2017-05-18 05:21:40', '2017-05-18 01:51:40'),
(13, 'Workout Partner/Coach', 'Active', '2017-05-18 05:21:55', '2017-05-18 01:51:55'),
(14, 'Server(s) for Dinner Party', 'Active', '2017-05-18 05:22:15', '2017-05-18 01:52:15'),
(15, 'Bartender for House Party', 'Active', '2017-05-18 05:22:34', '2017-05-18 01:52:34'),
(16, 'Shoveling Show', 'Active', '2017-05-18 05:22:48', '2017-05-18 01:52:48'),
(17, 'Apprentice for Skilled Laborer', 'Active', '2017-05-18 05:23:09', '2017-05-18 01:53:09'),
(18, 'Cleaning', 'Active', '2017-05-18 05:23:22', '2017-05-18 01:53:22'),
(19, 'Organizing', 'Active', '2017-05-18 05:23:31', '2017-05-18 01:53:31'),
(20, 'Food Shopping', 'Active', '2017-05-18 05:23:41', '2017-05-18 01:53:41'),
(21, 'Other', 'Active', '2017-05-18 05:23:47', '2017-05-18 01:53:47');

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
(1, 1, 'ramkumar.izaap@gmail.com', '1234', '12311', '2017-05-23 02:05:54', '2017-05-22 22:38:02'),
(2, 2, 'test@gmail.com', 'sdfsf', 'sfsd', '2017-06-06 08:33:39', '2017-06-06 02:58:18');

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
(1, 3, 2, 4, 'I m interested', '2017-05-20 01:19:04', '2017-05-20 00:56:59', '0000-00-00 00:00:00');

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
(1, 'Super Admin', '{"employers":"1","employees":"1","roles":"1","payment_history":"1","reports":"1","email":"1","jobs":"1","list":"1","posted":"1","category":"1","payment_methods":"1","card":"1","account":"1","paypal":"1"}', '{"create":"1","edit":"1","view":"1","delete":"1"}', 'Active', '2017-05-22 01:15:07', '2017-06-02 21:16:46'),
(5, 'Sub Admin', '{"employers":"1","employees":"1","jobs":"1","roles":"1"}', '{"create":"1","edit":"1","view":"1","delete":"1"}', 'Active', '2017-05-22 01:40:05', '2017-06-02 20:08:17'),
(6, 'Employers', '{"reports":"1","email":"1","jobs":"1","list":"1","posted":"1","payment_methods":"1","card":"1","account":"1","paypal":"1"}', '{"create":"1","edit":"1","view":"1","delete":"1"}', 'Active', '2017-05-22 01:40:25', '2017-06-03 02:11:20');

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
  `devicetoken` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
