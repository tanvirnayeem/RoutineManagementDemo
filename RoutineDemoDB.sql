-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2016 at 01:19 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demoroutine`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE `assigned_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `assigned_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `class_assigned`
--

CREATE TABLE `class_assigned` (
  `id` int(10) UNSIGNED NOT NULL,
  `day_id` int(10) UNSIGNED NOT NULL,
  `course_taken_id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `start_time_id` int(10) UNSIGNED NOT NULL,
  `end_time_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_assigned`
--

INSERT INTO `class_assigned` (`id`, `day_id`, `course_taken_id`, `room_id`, `start_time_id`, `end_time_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 2, 2, 5, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 2, 1, 1, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 2, 1, 5, 3, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `class_room`
--

CREATE TABLE `class_room` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `room_tag` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_room`
--

INSERT INTO `class_room` (`id`, `room_no`, `room_tag`, `created_at`, `updated_at`) VALUES
(1, 'Gallery-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Gallery-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '329', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '303', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '304', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `course_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `credit` float(8,2) NOT NULL,
  `course_tag` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_code`, `course_title`, `credit`, `course_tag`, `created_at`, `updated_at`) VALUES
(1, 'CSE-300', 'Project', 2.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'CSE-329', 'Computer Architecture', 3.00, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'CSE-331', 'Software Engineering', 3.00, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'CSE-332', 'Software Engineering Lab', 2.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'CSE-361', 'Networking', 3.00, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'CSE-362', 'Networking Lab', 2.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'CSE-373', 'Computer Graphics & Image Processing', 3.00, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'CSE-374', 'Computer Graphics & Image Processing Lab', 2.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'CSE-375', 'Technical Writing', 2.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'CSE-200', 'Project', 1.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'CSE-233', 'Object Oriented Programming', 3.00, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'CSE-234', 'Object Oriented Programming Lab', 3.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'CSE-239', 'Numerical Analysis', 2.00, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'CSE-240', 'Numerical Analysis Lab', 2.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'CSE-243', 'Theory of Computation & Concrete Mathematics', 3.00, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `course_taken`
--

CREATE TABLE `course_taken` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `instructor_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course_taken`
--

INSERT INTO `course_taken` (`id`, `course_id`, `instructor_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 4, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 5, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 6, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 7, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 8, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 9, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `day`
--

CREATE TABLE `day` (
  `id` int(10) UNSIGNED NOT NULL,
  `day_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `day`
--

INSERT INTO `day` (`id`, `day_name`, `created_at`, `updated_at`) VALUES
(1, 'SUNDAY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'MONDAY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'TUESDAY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'WEDNESDAY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'THURSDAY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'FRIDAY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'SATURDAY', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `id` int(10) UNSIGNED NOT NULL,
  `instructor_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instructor_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`id`, `instructor_name`, `instructor_code`, `created_at`, `updated_at`) VALUES
(1, 'MSI', 'MSI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'HAC', 'HAC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'AAM', 'AAM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'MZI', 'MZI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'SNM', 'SNM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'MSC', 'MSC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'MJI', 'MJI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'BPC', 'BPC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'MRS', 'MRS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'MER', 'MER', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'MR', 'MR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'SS', 'SS', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_04_06_114424_create_users_table', 1),
('2015_04_06_114604_entrust_setup_tables', 1),
('2015_04_06_203104_create_password_reminders_table', 1),
('2016_04_07_183421_create_table_course', 1),
('2016_04_07_184024_create_table_instructor', 1),
('2016_04_07_184204_create_table_courseTaken', 1),
('2016_04_07_185535_create_table_day', 1),
('2016_04_07_185829_create_table_class_room', 1),
('2016_04_07_190043_create_table_time', 1),
('2016_04_07_190417_create_table_class_assigned', 1),
('2016_04_09_100157_create_routine_table', 2),
('2016_04_09_101037_create_routine_table', 3),
('2016_04_09_101146_create_routine_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reminders`
--

CREATE TABLE `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'read', 'Read', '2016-04-08 02:58:24', '2016-04-08 02:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2016-04-08 02:58:24', '2016-04-08 02:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE `routine` (
  `id` int(10) UNSIGNED NOT NULL,
  `day` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `am8` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `am9` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `am10` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `am11` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pm12` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pm1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pm2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pm3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pm4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `routine`
--

INSERT INTO `routine` (`id`, `day`, `am8`, `am9`, `am10`, `am11`, `pm12`, `pm1`, `pm2`, `pm3`, `pm4`, `created_at`, `updated_at`) VALUES
(1, 'SUNDAY', 'CSE-300MSI', 'CSE-300MSI', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2016-04-09 05:18:25');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `id` int(10) UNSIGNED NOT NULL,
  `time_name` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`id`, `time_name`, `created_at`, `updated_at`) VALUES
(1, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'routinecse', '$2y$10$qeFrPwPTvFgITJzTwvcDPOxFzf7ioQYCTQvWSw62XQrtvz2GN79Hm', NULL, '2016-04-08 02:58:24', '2016-04-08 02:58:24'),
(3, 'routinedemo', '1234', 'YlZY4dojE5swug9q7lvFYO5Mcs5njXOtOYqiJHyAuEag9Ninndl6cwhr7zdR', '2016-04-04 07:40:39', '2016-04-06 00:19:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_roles_user_id_foreign` (`user_id`),
  ADD KEY `assigned_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `class_assigned`
--
ALTER TABLE `class_assigned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_assigned_day_id_index` (`day_id`),
  ADD KEY `class_assigned_course_taken_id_index` (`course_taken_id`),
  ADD KEY `class_assigned_room_id_index` (`room_id`),
  ADD KEY `class_assigned_start_time_id_index` (`start_time_id`),
  ADD KEY `class_assigned_end_time_id_index` (`end_time_id`);

--
-- Indexes for table `class_room`
--
ALTER TABLE `class_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_taken`
--
ALTER TABLE `course_taken`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_taken_course_id_index` (`course_id`),
  ADD KEY `course_taken_instructor_id_index` (`instructor_id`);

--
-- Indexes for table `day`
--
ALTER TABLE `day`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reminders`
--
ALTER TABLE `password_reminders`
  ADD KEY `password_reminders_email_index` (`email`),
  ADD KEY `password_reminders_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `class_assigned`
--
ALTER TABLE `class_assigned`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `class_room`
--
ALTER TABLE `class_room`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `course_taken`
--
ALTER TABLE `course_taken`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `day`
--
ALTER TABLE `day`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `assigned_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `class_assigned`
--
ALTER TABLE `class_assigned`
  ADD CONSTRAINT `class_assigned_course_taken_id_foreign` FOREIGN KEY (`course_taken_id`) REFERENCES `course_taken` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_assigned_day_id_foreign` FOREIGN KEY (`day_id`) REFERENCES `day` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_assigned_end_time_id_foreign` FOREIGN KEY (`end_time_id`) REFERENCES `time` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_assigned_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `class_room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_assigned_start_time_id_foreign` FOREIGN KEY (`start_time_id`) REFERENCES `time` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_taken`
--
ALTER TABLE `course_taken`
  ADD CONSTRAINT `course_taken_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_taken_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
