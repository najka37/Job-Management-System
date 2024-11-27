-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2024 at 08:45 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(3) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `adminname`, `email`, `mypassword`, `created_at`) VALUES
(1, 'admin1@admin.com', 'admin1@admin.com', '$2y$10$H.Uyy4TJrg4g9twDXiTPme4DdSpJhaQlXnTLelTucZWlh4VLtRvR6', '2022-11-02 16:48:05'),
(2, 'admin2@admin.com', 'admin2@admin.com', '$2y$10$Jv9hlqQPcF0SSTlG3UPFYufLLhAHHfF8OG4flVYpAoyP6wdtYpLQK', '2022-11-02 19:22:33'),
(3, 'najka', 'najka@gmail.com', '$2y$10$D0wecv91RRS17tJjRuADT.0XBM/X9V5QLYw3NeE8wwYxQayg6yGVu', '2023-12-13 18:58:55'),
(4, 'karie', 'karie@gmail.com', '$2y$10$RXAXtDbs3BmhaFwTOu2s3OxZ2U0mFPJuz1YW13olPqDk4iV67YKjm', '2023-12-13 19:06:33'),
(5, 'Nasteho', 'nasta@gmail.com', '$2y$10$Hxo1nKQSmHBCK1NbbLtg8.TcmtP2.0/A80fAD3l955PwpSG0SKQl6', '2024-01-04 11:53:10'),
(6, 'Husein', 'zayn@gmail.com', '$2y$10$yF2RoNFT9z8M78V9bhkvWuFu2ox1w25TMwbdnFJFP77tMyCTWi83i', '2024-01-13 10:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'engineer', '2024-01-13 10:09:57'),
(5, 'Developer', '2023-12-13 18:59:31'),
(6, 'Freelancer', '2024-01-04 11:53:48'),
(8, 'Developement', '2024-01-13 10:10:45');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(3) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `job_region` varchar(200) NOT NULL,
  `job_type` varchar(200) NOT NULL,
  `vacancy` int(3) NOT NULL,
  `job_category` varchar(200) NOT NULL,
  `experience` varchar(200) NOT NULL,
  `salary` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `application_deadline` varchar(200) NOT NULL,
  `job_description` text NOT NULL,
  `responsibilities` text NOT NULL,
  `education_experience` text NOT NULL,
  `other_benifits` text NOT NULL,
  `company_email` varchar(200) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `company_id` int(3) NOT NULL,
  `company_image` varchar(200) NOT NULL,
  `status` int(3) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `job_title`, `job_region`, `job_type`, `vacancy`, `job_category`, `experience`, `salary`, `gender`, `application_deadline`, `job_description`, `responsibilities`, `education_experience`, `other_benifits`, `company_email`, `company_name`, `company_id`, `company_image`, `status`, `created_at`) VALUES
(1, 'web developer', 'San Francisco', 'Full Time', 5, 'development', '6-9 years', '$70k - $100k', 'Female', '11-11-2022', 'Authoritatively innovate turnkey metrics through premium information. Distinctively underwhelm maintainable convergence with cross-platform e-business. Synergistically monetize quality leadership skills whereas error-free mindshare. Objectively customize viral infomediaries whereas fully tested products. Uniquely facilitate technically sound innovation through fully researched content.\r\n', 'Authoritatively innovate turnkey metrics through premium information. Distinctively underwhelm maintainable convergence with cross-platform e-business. Synergistically monetize quality leadership skills whereas error-free mindshare. Objectively customize viral infomediaries whereas fully tested products. Uniquely facilitate technically sound innovation through fully researched content.\r\n', 'Authoritatively innovate turnkey metrics through premium information. Distinctively underwhelm maintainable convergence with cross-platform e-business. Synergistically monetize quality leadership skills whereas error-free mindshare. Objectively customize viral infomediaries whereas fully tested products. Uniquely facilitate technically sound innovation through fully researched content.\r\n', 'Authoritatively innovate turnkey metrics through premium information. Distinctively underwhelm maintainable convergence with cross-platform e-business. Synergistically monetize quality leadership skills whereas error-free mindshare. Objectively customize viral infomediaries whereas fully tested products. Uniquely facilitate technically sound innovation through fully researched content.\r\n', 'web.coding@gmail.com', 'web.coding', 7, 'web-coding.png', 1, '2022-11-03 17:06:00'),
(2, 'Developer in MyBank', 'Konfur galbed', 'Full Time', 5, 'Developer', '3-6 years', '$70k - $100k', 'Male', '01-02-2024', 'Shaqada waa sidaas iyo sidaas', 'Intass baa lagaa rabaa', 'Halkaas iyo sidaas baan wax usoo bartay', 'Sidaas baan ka faaidayaa', 'najka@gmail.com', 'nasta', 10, 'web-coding.png', 1, '2023-12-13 19:22:57'),
(3, 'HRM', 'Galmudug', 'Part Time', 3, 'development', '3-6 years', '$50k - $70k', 'Male', '10-02-2024', 'Shaqadini waa sidaas iyo sidaas', 'Siaas baa laga doonayaa', 'Master degree inuu heesto', 'In uu yahay qof masuul ah', 'uk@gmail.com', 'Ukaash', 13, 'web-coding.png', 1, '2024-01-03 22:01:34'),
(4, 'Saler', 'Galmudug', 'Part Time', 2, 'Developer', '1-3 years', '$50k - $70k', 'Female', '01-02-2024', 'Sahqadaas waa sidaas iyo sidaas', 'hchkkdvbdv', 'djjfjfjjvjvjvjfgdndfdnk c bjsjddnsdns', 'mdkdkdkvk kckdkdkd efjdfn', 'naima@gmail.com', 'Nacima', 14, 'web-coding.png', 1, '2024-01-13 09:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` int(3) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `cv` varchar(200) NOT NULL,
  `worker_id` int(3) NOT NULL,
  `job_id` int(3) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `company_id` int(3) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `username`, `email`, `cv`, `worker_id`, `job_id`, `job_title`, `company_id`, `create_at`) VALUES
(10, 'job.seeker', 'job.seeker@yahoo.ocm', '', 8, 1, 'web developer', 7, '2022-11-03 17:13:36'),
(11, 'najka', 'najka@gmail.com', '', 9, 2, 'Developer in MyBank', 10, '2023-12-14 06:43:19'),
(12, 'karim', 'karim@gmail.com', '', 15, 3, 'HRM', 13, '2024-01-13 10:05:05'),
(13, 'karim', 'karim@gmail.com', '', 15, 3, 'HRM', 13, '2024-01-13 10:12:54');

-- --------------------------------------------------------

--
-- Table structure for table `saved_jobs`
--

CREATE TABLE `saved_jobs` (
  `id` int(3) NOT NULL,
  `job_id` int(3) NOT NULL,
  `worker_id` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saved_jobs`
--

INSERT INTO `saved_jobs` (`id`, `job_id`, `worker_id`, `created_at`) VALUES
(12, 3, 15, '2024-01-13 10:04:33');

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(3) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `keyword`, `created_at`) VALUES
(1, 'web developer', '2022-11-01 15:36:03'),
(2, 'web designer', '2022-11-01 16:48:25'),
(3, 'web designer', '2022-11-01 16:49:22'),
(4, 'game desinger', '2022-11-01 16:50:18'),
(5, 'web developer', '2022-11-03 17:15:27'),
(6, 'worker', '2023-12-13 09:22:39'),
(7, 'worker', '2023-12-13 09:58:52'),
(8, 'worker', '2023-12-13 17:58:50'),
(9, 'worker', '2024-01-04 11:56:43'),
(10, 'Developer in MyBank', '2024-01-04 12:01:22'),
(11, 'Developer in MyBank', '2024-01-04 12:01:49'),
(12, 'Developer in MyBank', '2024-01-13 09:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `cv` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `bio` varchar(500) DEFAULT NULL,
  `facebook` varchar(200) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `linkedin` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `mypassword`, `img`, `type`, `cv`, `title`, `bio`, `facebook`, `twitter`, `linkedin`, `created_at`) VALUES
(7, 'web.coding', 'web.coding@gmail.com', '$2y$10$YwY4ovQDJxdo.IP6Ed8vFufeNDxxdDJRVcc1FmED2FY0k.YAzBi52', 'web-coding.png', 'Company', NULL, 'NULL', 'Objectively network long-term high-impact vortals without end-to-end schemas. Rapidiously underwhelm scalable platforms vis-a-vis integrated models. Professionally myocardinate 2.0 outsourcing for resource-leveling manufactured products. ', '', '', '', '2022-11-03 17:04:14'),
(8, 'job.seeker', 'job.seeker@yahoo.ocm', '$2y$10$sQJJjg2HOnqg/uk9l53Fy.YjqcnXuZrWW/BrTNTycEh6aqz1q2KhG', 'wp5670175.jpg', 'Worker', 'Mohamed_Hassan_Resume.pdf', '', 'Objectively unleash multidisciplinary portals whereas wireless catalysts for change. Completely productivate user friendly ROI whereas 2.0 ', '', '', '', '2022-11-03 17:10:28'),
(9, 'najka', 'najka@gmail.com', '$2y$10$2s1FM5vzwmlaS9/OLAMTIeFAiyS.mfTxrprtcJVrm5.JYS5a7VsKq', '4.jpeg', 'Worker', 'Teesaro2.pdf', 'Creator', 'Excellence is my motto', 'najka', 'fahad', 'fahad', '2023-12-13 09:21:22'),
(10, 'nasta', 'nasta@gmail.com', '$2y$10$TJfIZuwfG/Yk/94K6s8aSeTUp4b/wkE48rGCmcbTcwtj7ZBZivz1y', 'web-coding.png', 'Company', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 19:18:58'),
(11, 'Fahad', 'fahad@gmail.com', '$2y$10$KUfmwgUMndoiQUEM9Oq50OQ5v5WhyYdH1sAxbaQ8nrb6lWH56NMQa', '7.JPG', 'Company', 'NULL', 'NULL', 'Magaceyga waa fahad', 'fahad', 'fahad', 'fahad', '2023-12-15 11:22:05'),
(12, 'adil', 'adil@gmail.com', '$2y$10$AIbm7tudFrSWa8NcppEJ5OJrnjdHywVXcwASjNGcRtYtkXwpRWNI6', 'web-coding.png', 'Company', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-17 07:23:51'),
(13, 'Ukaash', 'uk@gmail.com', '$2y$10$1fdG5.fqrKEzPGGbqm3/qujoHtE6Edjo5ZXeBOvMW76c922zQ.j2u', 'web-coding.png', 'Company', NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-03 21:57:05'),
(14, 'Nacima', 'naima@gmail.com', '$2y$10$lJWh8sc5JKfRhKhh2Wrxiu62ZE94Spyc.dXjyeCA.WJyDLkZH2A5a', 'najka.jpg', 'Company', 'NULL', 'NULL', 'Naima is a good girl', '', '', '', '2024-01-13 09:40:52'),
(15, 'karim', 'karim@gmail.com', '$2y$10$ssIiwir71/emQE7UwKtQ2eUNk34Egr3ptnl/iOsRkAolkAU5U3Li.', 'ruweydo.jpg', 'Worker', 'Najka Resume.pdf', 'Freelancer', 'Karim is hero', 'najka', 'najka', 'fahad', '2024-01-13 09:55:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
