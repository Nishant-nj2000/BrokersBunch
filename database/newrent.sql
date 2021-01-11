-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2018 at 11:23 AM
-- Server version: 5.7.14
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newrent`
--

-- --------------------------------------------------------

--
-- Table structure for table `cmps`
--


CREATE TABLE `cmps` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `cmp` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmps`
--

INSERT INTO `cmps` (`id`, `name`, `cmp`, `username`, `fullname`) VALUES
(1, 'f', 'f', 'admin', 'Mahantesh Kumbar');

-- --------------------------------------------------------

--
-- Table structure for table `room_rental_registrations`
--

CREATE TABLE `room_rental_registrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternat_mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `landmark` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plot_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rooms` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accommodation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_for_sharing` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacant` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_rental_registrations`
--

INSERT INTO `room_rental_registrations` (`id`, `fullname`, `mobile`, `alternat_mobile`, `email`, `country`, `state`, `city`, `landmark`, `rent`, `sale`, `deposit`, `plot_number`, `rooms`, `address`, `accommodation`, `description`, `image`, `open_for_sharing`, `other`, `vacant`, `created_at`, `updated_at`, `user_id`) VALUES
(13, 'Rakesh Gupta', '8869498466', '', 'rakeshgupta@gmail.com', 'India', 'Gujarat', 'Ahmedabad', 'Nehru Bridge', '3', '12', '3', '78 nh', '2bhk', 'Yash Aqua Vijay Cross road', '4', 'Nice Property', 'uploads/ten1.jpg', NULL, 'zx', 0, '2018-02-16 12:21:43', '2018-02-16 12:21:43', 1),
(14, 'Praveen Mehta', '2345676997', '', 'praveen_m@gmail.com', 'India', 'Gujarat', 'Rajkot', '', '1232', '12', '33333', '78 nh', '1bhk', 'port road ', '', 'Must See Property', 'uploads/ten2.jpg', NULL, NULL, 1, '2018-03-09 05:06:43', '2018-03-09 05:06:43', 2),
(15, 'Maneesh Singhania', '8864795231', '', 'maneesh_s@gmail.com', 'India', 'Gujarat', 'Gandhinagar', 'Infocity', '1232', '12666', '33333', '78 nh', '1bhk', '78 Kalp Colony', 'wifi,pridge', 'Good to see', 'uploads/ten3.jpg', NULL, NULL, 1, '2018-04-04 11:19:09', '2018-04-04 11:19:09', 3);

-- --------------------------------------------------------

--
-- Table structure for table `room_rental_registrations_apartment`
--

CREATE TABLE `room_rental_registrations_apartment` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternat_mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `landmark` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deposit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plot_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ap_number_of_plats` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rooms` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purpose` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `own` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accommodation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_for_sharing` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacant` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_rental_registrations_apartment`
--

INSERT INTO `room_rental_registrations_apartment` (`id`, `fullname`, `mobile`, `alternat_mobile`, `email`, `country`, `state`, `city`, `landmark`, `rent`, `deposit`, `plot_number`, `apartment_name`, `ap_number_of_plats`, `rooms`, `floor`, `purpose`, `own`, `area`, `address`, `accommodation`, `description`, `image`, `open_for_sharing`, `other`, `vacant`, `created_at`, `updated_at`, `user_id`) VALUES
(3, 'Devendra Kumar', '2345676567', '', 'devendra_k@gmail.com', 'India', 'Gujarat', 'Jamnagar', 'Iskon Tower', '1212', '22222', '78 nh', 'Mant Apartment', '101', '2bhk', '2nd', 'Residential', 'rented', '1sqr feet', 'port road bgm', 'wifi', 'Full furnished apartment with great hygiene', 'uploads/Apartment 1.jpg', NULL, NULL, 1, '2018-04-04 11:20:56', '2018-04-04 11:20:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `role` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`,`country`, `state`,`city`, `mobile`, `username`, `email`, `password`, `created_at`, `updated_at`, `role`, `status`) VALUES
(1, 'ADMIN','India','Gujarat','Ahmedabad', '9879879787', 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', NULL, NULL, 'admin', 1),
(2, 'Mahantesh Kumar', 'India','Gujarat','Gandhinagar', '5645654565', 'manu', 'mant1@gmail.com', '9aee390f19345028f03bb16c588550e1', '2018-02-08 06:53:53', '2018-02-08 06:53:53', 'user', 1),
(3, 'Robert','India','Gujarat','Rajkot', '1234567890', 'abcde', 'abc@gmail.com', 'ab56b4d92b40713acc5af89985d4b786', '2020-01-04 16:20:56', '2020-01-04 16:20:56', 'user', 1);


-- ---------------------------------------------------------



--
-- Table structure for table `broker`
--

CREATE TABLE `broker` (
  `id` int(10) UNSIGNED NOT NULL ,
`area_id` int(10) UNSIGNED NOT NULL,
`country` varchar(10) NOT NULL,
`state` varchar(10) NOT NULL,
`city` varchar(20) NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
`certificate_img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
`registration_no` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
`role` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'broker',
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Dumping data for table `broker`
--

INSERT INTO `broker` (`id`, `area_id`,`country`, `state`, `city`, `fullname`, `mobile`, `username`, `email`, `password`, `certificate_img`,`registration_no`, `created_at`, `updated_at`, `role`, `status`) VALUES
(1, 1, 'India','Gujarat', 'Ahmedabad', 'Manish', '9521681348', 'broker', 'broker1@broker.com', 'e99a18c428cb38d5f260853678922e03', 'NULL' , 'G10000000012',' 2019-12-15 14:22:57 ', '2019-12-15 14:22:57', 'broker', 1);

INSERT INTO `broker` (`id`, `area_id`,`country`, `state`, `city`, `fullname`, `mobile`, `username`, `email`, `password`, `certificate_img`,`registration_no`, `created_at`, `updated_at`, `role`, `status`) VALUES
(2, 2, 'India','Gujarat', 'Rajkot', 'Yash', '9511515458', 'broker2', 'broker2@broker.com', 'e99a18c428cb38d5f260853678922e03', 'NULL' , 'G10000000016',' 2019-10-10 10:20:59 ', '2019-10-10 14:22:57', 'broker', 1);

INSERT INTO `broker` (`id`, `area_id`,`country`, `state`, `city`, `fullname`, `mobile`, `username`, `email`, `password`, `certificate_img`,`registration_no`, `created_at`, `updated_at`, `role`, `status`) VALUES
(3, 3, 'India','Gujarat', 'Gandhinagar', 'Rakesh', '9528981348', 'broker3', 'broker3@broker.com', 'e99a18c428cb38d5f260853678922e03', 'NULL' , 'G10000000019',' 2020-09-9 9:20:40', '2019-09-11 14:22:57', 'broker', 1);

-- ---------------------------------------------------------



--
-- Table structure for table `appt`
--

CREATE TABLE `appt` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adate`text NOT NULL ,
  `atime` text NOT NULL ,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL

) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Dumping data for table `appt`
--

INSERT INTO `appt` (`id`, `username`, `phone`, `email`, `adate`, `atime`) VALUES
(1, 'Neeraj', '9541264468', 'client1@client.com', ' 2020-2-15', '14:22 pm ');

INSERT INTO `appt` (`id`, `username`, `phone`, `email`, `adate`, `atime`) VALUES
(2, 'Prince', '9521265544', 'client2@client.com', ' 2020-1-10', '06:20 pm ');


INSERT INTO `appt` (`id`, `username`, `phone`, `email`, `adate`, `atime`) VALUES
(3, 'abcde', '9845545544', 'client3@client.com', ' 2020-3-12', '10:00 am ');

-- -------------------------------------------------------






--
-- Indexes for dumped tables
--

--
-- Indexes for table `cmps`
--
ALTER TABLE `cmps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_rental_registrations`
--
ALTER TABLE `room_rental_registrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_rental_registrations_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `room_rental_registrations_email_unique` (`email`);

--
-- Indexes for table `room_rental_registrations_apartment`
--
ALTER TABLE `room_rental_registrations_apartment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `users_username_unique` (`username`);



--
-- Indexes for table `broker`
--

ALTER TABLE `broker`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `broker_email_unique` (`email`),
  ADD UNIQUE KEY `broker_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `broker_username_unique` (`username`),
  ADD UNIQUE KEY `broker_area_id_unique` (`area_id`);



--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cmps`
--
ALTER TABLE `cmps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `room_rental_registrations`
--
ALTER TABLE `room_rental_registrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `room_rental_registrations_apartment`
--
ALTER TABLE `room_rental_registrations_apartment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


--
-- AUTO_INCREMENT for table `broker`
--

ALTER TABLE `broker`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
