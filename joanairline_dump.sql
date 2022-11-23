-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 02:43 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joanairline`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `airplanes`
--

CREATE TABLE `airplanes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum_rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `airplanes`
--

INSERT INTO `airplanes` (`id`, `company`, `numser`, `minimum_rating`, `created_at`, `updated_at`) VALUES
(1, 'Pluto Airways LTD', '7Y9RH0736', '3', '2022-11-14 18:30:54', '2022-11-14 18:30:54'),
(2, 'Pluto Airways LTD', '6T2JM5167', '3', '2022-11-14 18:30:54', '2022-11-14 18:30:54'),
(3, 'Ribbon Airline', '5I0SN1734', '2.8', '2022-11-14 18:30:54', '2022-11-14 18:30:54'),
(4, 'Airek Airline', '4V6TY8515', '2.3', '2022-11-14 18:30:54', '2022-11-14 18:30:54'),
(5, 'Ribbon Airline', '7L8DE4994', '3.1', '2022-11-14 18:30:54', '2022-11-14 18:30:54'),
(6, 'Airek Airline', '2T0PI9029', '2.3', '2022-11-14 18:30:54', '2022-11-14 18:30:54'),
(7, 'Ribbon Airline', '8N9MU8094', '2.4', '2022-11-14 18:30:54', '2022-11-14 18:30:54'),
(8, 'Ribbon Airline', '7B4EB1957', '2.9', '2022-11-14 18:30:54', '2022-11-14 18:30:54');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `passenger_id` bigint(20) UNSIGNED NOT NULL,
  `flight_ticket_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `passenger_id`, `flight_ticket_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'active', '2022-11-16 20:20:30', '2022-11-16 20:20:30'),
(2, 1, 2, 'active', '2022-11-16 20:20:58', '2022-11-16 20:20:58'),
(4, 3, 4, 'active', '2022-11-16 20:21:14', '2022-11-16 20:21:14'),
(5, 4, 6, 'active', '2022-11-16 20:21:28', '2022-11-16 20:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `crews`
--

CREATE TABLE `crews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL,
  `flight_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crews`
--

INSERT INTO `crews` (`id`, `staff_id`, `flight_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-11-15 19:15:22', '2022-11-15 19:15:22'),
(4, 13, 1, '2022-11-15 19:26:50', '2022-11-15 19:26:50'),
(5, 7, 1, '2022-11-15 19:26:50', '2022-11-15 19:26:50'),
(6, 4, 1, '2022-11-15 19:26:50', '2022-11-15 19:26:50'),
(8, 3, 1, '2022-11-15 19:26:58', '2022-11-15 19:26:58'),
(9, 2, 2, '2022-11-15 19:26:58', '2022-11-15 19:26:58'),
(10, 10, 2, '2022-11-15 19:26:58', '2022-11-15 19:26:58'),
(11, 5, 2, '2022-11-15 19:26:58', '2022-11-15 19:26:58'),
(12, 14, 2, '2022-11-15 19:26:58', '2022-11-15 19:26:58'),
(13, 12, 2, '2022-11-15 19:26:58', '2022-11-15 19:26:58'),
(15, 6, 3, '2022-11-15 19:27:05', '2022-11-15 19:27:05'),
(17, 15, 3, '2022-11-15 19:27:07', '2022-11-15 19:27:07'),
(19, 9, 3, '2022-11-15 19:27:08', '2022-11-15 19:27:08'),
(20, 11, 3, '2022-11-15 19:27:08', '2022-11-15 19:27:08');

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `airplane_id` bigint(20) UNSIGNED NOT NULL,
  `dept_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `arrival_time` timestamp NULL DEFAULT NULL,
  `origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `airplane_id`, `dept_time`, `arrival_time`, `origin`, `destination`, `type`, `status`, `created_at`) VALUES
(1, 7, '2022-11-16 20:02:50', '2022-11-10 22:33:42', 'Lake Heavenview', 'Vonfort', 'connecting', 'inactive', '2022-11-10 22:33:42'),
(2, 3, '2022-11-13 21:33:42', '2022-11-13 21:33:42', 'West Crystal', 'East Mariahland', 'connecting', 'active', '2022-11-13 21:33:42'),
(3, 2, '2022-11-14 19:34:08', '2022-11-17 21:33:42', 'New Keely', 'Houstontown', 'non-stop', 'active', '2022-11-17 21:33:42'),
(4, 1, '2022-11-14 19:34:47', '2022-11-12 20:33:42', 'Port Hermann', 'Ziemefort', 'non-stop', 'active', '2022-11-12 20:33:42');

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('M','F') COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`id`, `phone`, `name`, `gender`, `surname`, `address`, `email`, `password`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1-743-203-4679', 'Austen', 'F', 'Stanton', '49247 Casper Trail Apt. 973\nSawaynstad, LA 54072-0206', 'elisa.waelchi@turcotte.biz', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, '2022-11-14 17:50:19', '2022-11-14 17:50:19'),
(3, '+1 (984) 435-6471', 'Cassandra', 'M', 'Murphy', '48511 Klein Prairie Suite 771\nHellerview, NV 35183-0258', 'forest55@yahoo.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, '2022-11-14 17:50:19', '2022-11-14 17:50:19'),
(4, '+1 (364) 424-4345', 'Karlee', 'F', 'Welch', '25454 Jast Forks Suite 155\nNorth Soledadview, FL 64029-0032', 'mosciski.kay@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, '2022-11-14 17:50:19', '2022-11-14 17:50:19'),
(5, '405-908-7958', 'Alyce', 'M', 'Gutkowski', '59388 Easton Overpass\nMarahaven, NJ 48508', 'lvandervort@upton.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, '2022-11-14 17:50:19', '2022-11-14 17:50:19'),
(6, '1-617-399-0191', 'Heloise', 'M', 'Conn', '71472 Homenick Gardens\nJarredhaven, NC 86749', 'raina02@tromp.info', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, '2022-11-14 17:50:19', '2022-11-14 17:50:19'),
(7, '(910) 705-3137', 'Dina', 'F', 'Hamill', '66616 Beahan Mill Apt. 816\nBednarview, FL 77778', 'bernadine.rempel@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, '2022-11-14 17:50:19', '2022-11-14 17:50:19'),
(8, '(678) 752-0623', 'Monica', 'F', 'Collins', '55533 Johann Shore\nPort Aubreyfort, ME 53104-6352', 'nschmidt@yahoo.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, '2022-11-14 17:50:19', '2022-11-14 17:50:19'),
(9, '(337) 459-1035', 'Miguel', 'M', 'Rippin', '8170 Lesch Squares Suite 228\nPort Saul, CA 42175-9014', 'jerde.berry@zemlak.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, '2022-11-14 17:50:19', '2022-11-14 17:50:19'),
(10, '(540) 397-1644', 'Margarett', 'F', 'Hessel', '36694 Clinton Islands\nRossieburgh, ID 14760-5279', 'lowe.gay@keeling.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, '2022-11-14 17:50:19', '2022-11-14 17:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empnum` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` double(8,2) DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `role`, `empnum`, `name`, `surname`, `address`, `phone`, `rating`, `salary`, `created_at`, `updated_at`) VALUES
(1, 'host', '99208848LS', 'Branson', 'Bradtke', '28140 Hauck Ranch Suite 624\nBruenstad, GA 72496', '+12159679991', 1.10, '3295', '2022-11-14 18:01:57', '2022-11-14 18:01:57'),
(2, 'host', '25891957YI', 'Darien', 'Koss', '494 Daniella Isle\nPort Heidi, WI 40532-3013', '615-533-8837', 4.00, '3035', '2022-11-14 18:01:57', '2022-11-14 18:01:57'),
(3, 'host', '32868853HM', 'Keegan', 'Terry', '3638 Herman Mission\nSouth Marilouside, IN 83008-8670', '+1 (504) 934-9985', 2.60, '3678', '2022-11-14 18:01:57', '2022-11-14 18:01:57'),
(4, 'host', '73096456NO', 'Tyreek', 'Schmeler', '1559 Doyle Parkway\nLake Reginald, TN 62428-0765', '1-786-280-9083', 2.60, '3638', '2022-11-14 18:01:57', '2022-11-14 18:01:57'),
(5, 'host', '54813165TC', 'Jody', 'Collins', '98908 Vada Cove Suite 322\nEast Alisonport, OH 07662-1231', '+1.607.977.2859', 2.50, '3440', '2022-11-14 18:01:57', '2022-11-14 18:01:57'),
(6, 'host', '85357135XP', 'Elizabeth', 'Goyette', '8927 Considine Drives Apt. 313\nPagacborough, CA 88281-9244', '+1-934-415-5997', 2.80, '3087', '2022-11-14 18:01:57', '2022-11-14 18:01:57'),
(7, 'host', '35588840MN', 'Kurtis', 'Weber', '504 Flatley Wall Suite 120\nNew Dovie, AR 22969-5195', '(770) 457-4571', 2.70, '3388', '2022-11-14 18:01:57', '2022-11-14 18:01:57'),
(8, 'pilot', '35826254MN', 'Vince', 'Pollich', '525 Funk Track\nSouth Ned, DC 17633', '781-609-5647', 2.70, '13484', '2022-11-14 18:01:57', '2022-11-14 18:01:57'),
(9, 'host', '48797671WX', 'Leon', 'Block', '83411 Garett Isle Apt. 440\nCatherinetown, MO 97535-9880', '+1-631-917-7919', 3.50, '3732', '2022-11-14 18:01:57', '2022-11-14 18:01:57'),
(10, 'pilot', '54035725BB', 'Justus', 'Hamill', '16828 Kunde Flat\nKirlinmouth, CO 39856-0013', '+1-602-404-0100', 0.80, '17600', '2022-11-14 18:01:57', '2022-11-14 18:01:57'),
(11, 'host', '90145514OP', 'Wilburn', 'Mann', '3801 Alia River\nEast Brendon, DE 95935-8919', '+1.520.697.3806', 4.70, '3346', '2022-11-14 18:01:57', '2022-11-14 18:01:57'),
(12, 'host', '50605744LS', 'Jamison', 'Emard', '470 Keaton Key Suite 506\nEast Constancehaven, MS 65518-1214', '1-551-934-1011', 2.00, '3378', '2022-11-14 18:01:57', '2022-11-14 18:01:57'),
(13, 'pilot', '84947587WD', 'Golda', 'Wiza', '1443 Collier View\nLake Elaina, ID 76997-0506', '+1-478-201-7644', 0.90, '17137', '2022-11-14 18:01:57', '2022-11-14 18:01:57'),
(14, 'host', '70212029LZ', 'Manuela', 'Casper', '50441 Reid Fork Apt. 369\nAngelinaberg, KY 95433-5437', '(630) 575-7474', 4.60, '3264', '2022-11-14 18:01:57', '2022-11-14 18:01:57'),
(15, 'host', '03053803HU', 'Tyree', 'Hartmann', '96550 Ankunding Greens\nMuellerport, NE 47821-6957', '618.284.0805', 1.70, '3457', '2022-11-14 18:01:57', '2022-11-14 18:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flight_id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `sit_no` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `flight_id`, `class`, `amount`, `sit_no`, `created_at`, `updated_at`) VALUES
(1, 1, 'First', 1200.00, 1, '2022-11-14 18:42:02', '2022-11-14 18:42:02'),
(2, 1, 'First', 1200.00, 2, '2022-11-14 18:42:02', '2022-11-14 18:42:02'),
(3, 1, 'First', 1200.00, 3, '2022-11-14 18:42:02', '2022-11-14 18:42:02'),
(4, 1, 'First', 1200.00, 4, '2022-11-14 18:42:02', '2022-11-14 18:42:02'),
(5, 1, 'First', 1200.00, 5, '2022-11-14 18:42:02', '2022-11-14 18:42:02'),
(6, 1, 'Economic', 900.00, 6, '2022-11-14 18:42:47', '2022-11-14 18:42:47'),
(7, 1, 'Economic', 900.00, 7, '2022-11-14 18:42:47', '2022-11-14 18:42:47'),
(8, 1, 'Economic', 900.00, 9, '2022-11-14 18:42:47', '2022-11-14 18:42:47'),
(9, 1, 'Economic', 900.00, 8, '2022-11-14 18:42:47', '2022-11-14 18:42:47'),
(10, 1, 'Economic', 900.00, 10, '2022-11-14 18:42:47', '2022-11-14 18:42:47'),
(21, 1, 'Business', 1100.00, 11, '2022-11-14 18:48:54', '2022-11-14 18:48:54'),
(22, 1, 'Business', 1100.00, 12, '2022-11-14 18:48:54', '2022-11-14 18:48:54'),
(23, 1, 'Business', 1100.00, 13, '2022-11-14 18:48:54', '2022-11-14 18:48:54'),
(24, 1, 'Business', 1100.00, 14, '2022-11-14 18:48:54', '2022-11-14 18:48:54'),
(25, 1, 'Business', 1100.00, 15, '2022-11-14 18:48:54', '2022-11-14 18:48:54'),
(26, 2, 'Business', 3000.00, 14, '2022-11-14 18:50:27', '2022-11-14 18:50:27'),
(27, 2, 'Business', 3000.00, 14, '2022-11-14 18:50:27', '2022-11-14 18:50:27'),
(28, 2, 'Business', 3000.00, 14, '2022-11-14 18:50:27', '2022-11-14 18:50:27'),
(29, 2, 'Business', 3000.00, 14, '2022-11-14 18:50:27', '2022-11-14 18:50:27'),
(30, 2, 'Economic', 1500.00, 15, '2022-11-14 18:50:54', '2022-11-14 18:50:54'),
(31, 2, 'Economic', 1500.00, 15, '2022-11-14 18:50:54', '2022-11-14 18:50:54'),
(32, 2, 'Economic', 1500.00, 15, '2022-11-14 18:50:54', '2022-11-14 18:50:54'),
(33, 2, 'Economic', 1500.00, 15, '2022-11-14 18:50:54', '2022-11-14 18:50:54'),
(34, 2, 'First', 4500.00, 16, '2022-11-14 18:51:13', '2022-11-14 18:51:13'),
(35, 2, 'First', 4500.00, 16, '2022-11-14 18:51:13', '2022-11-14 18:51:13'),
(36, 2, 'First', 4500.00, 16, '2022-11-14 18:51:13', '2022-11-14 18:51:13'),
(37, 2, 'First', 4500.00, 16, '2022-11-14 18:51:13', '2022-11-14 18:51:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `airplanes`
--
ALTER TABLE `airplanes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `airplanes_company_numser_unique` (`company`,`numser`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_passenger_id_foreign` (`passenger_id`),
  ADD KEY `bookings_flight_ticket_id_foreign` (`flight_ticket_id`);

--
-- Indexes for table `crews`
--
ALTER TABLE `crews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crews_staff_id_flight_id_unique` (`staff_id`,`flight_id`),
  ADD KEY `crews_flight_id_foreign` (`flight_id`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flights_airplane_id_foreign` (`airplane_id`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `passengers_email_unique` (`email`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_empnum_unique` (`empnum`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_flight_id_foreign` (`flight_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `airplanes`
--
ALTER TABLE `airplanes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crews`
--
ALTER TABLE `crews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `passengers`
--
ALTER TABLE `passengers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_flight_ticket_id_foreign` FOREIGN KEY (`flight_ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_passenger_id_foreign` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crews`
--
ALTER TABLE `crews`
  ADD CONSTRAINT `crews_flight_id_foreign` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crews_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `flights_airplane_id_foreign` FOREIGN KEY (`airplane_id`) REFERENCES `airplanes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_flight_id_foreign` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
