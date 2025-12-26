-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 26, 2025 at 04:13 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realtime_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `department` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `name`, `department`, `position`, `salary`, `hire_date`, `email`, `phone`) VALUES
(1, 'EMP001', 'Hanif Mustofa', 'Polindra', 'Student', 50000000.00, '2004-01-11', 'hanifindramayou@gmail.com', '0859109723643'),
(2, 'EMP002', 'Tita', 'Polindra', 'Student', 50000000.00, '2005-11-23', 'inititaa23@gmail.com', '082262226238'),
(3, 'EMP003', 'Linggar Sulis Yanti', 'Polindra', 'Student', 50000000.00, '2024-01-01', 'linggarsulisyanti@gmail.com', '083156683740'),
(4, 'EMP004', 'Budi Santoso', 'IT', 'Software Developer', 8500000.00, '2022-01-15', 'budi@company.com', '081234567890'),
(5, 'EMP005', 'Siti Rahayu', 'HR', 'HR Manager', 12000000.00, '2021-03-10', 'siti@company.com', '082345678901'),
(6, 'EMP006', 'Ahmad Fauzi', 'Finance', 'Accountant', 7500000.00, '2023-05-20', 'ahmad@gmail.com', '083456789012'),
(7, 'EMP007', 'Dewi Anggraini', 'Marketing', 'Marketing Specialist', 9000000.00, '2022-08-05', 'dewi@company.com', '084567890123'),
(8, 'EMP008', 'Rudi Hartono', 'Operations', 'Operations Manager', 11000000.00, '2020-11-30', 'rudi@company.com', '085678901234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`),
  ADD KEY `idx_employee_id` (`employee_id`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `idx_department` (`department`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
