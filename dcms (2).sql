-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2024 at 06:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dcms`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `Appointment_ID` int(50) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Age` varchar(100) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Date_of_birth` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Contact` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Appointment_date` varchar(100) NOT NULL,
  `Appointment_time` varchar(100) NOT NULL,
  `treatment` varchar(100) NOT NULL,
  `dentist` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Appointment_ID`, `First_Name`, `Last_Name`, `Age`, `Gender`, `Date_of_birth`, `Address`, `Contact`, `Email`, `Appointment_date`, `Appointment_time`, `treatment`, `dentist`, `Status`) VALUES
(9, 'regie', 'barcelon', '18', 'M', '08-15-2005', 'brgy12', '09887654321', 'reg@gmail.com', '12-12-2024', '10:30 am', 'WHITENING', 'DR. Jessa Marie Bebita', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_admin`
--

CREATE TABLE `appointment_admin` (
  `no` int(255) NOT NULL,
  `all_patient` int(50) NOT NULL,
  `total_app_today` int(255) NOT NULL,
  `pending` varchar(255) NOT NULL,
  `revenue_today` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Datee` date NOT NULL,
  `Time` time(6) NOT NULL,
  `RECEIPT NUMBER` int(50) NOT NULL,
  `No` int(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `treatment` varchar(50) NOT NULL,
  `Amount` int(50) NOT NULL,
  `Payment Method` varchar(50) NOT NULL,
  `Amount Paid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_admin`
--

CREATE TABLE `dashboard_admin` (
  `id_no` int(11) NOT NULL,
  `Tota_lpatient` int(11) NOT NULL,
  `ttl_app_today` int(11) NOT NULL,
  `pending_app` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `Patientid` int(50) NOT NULL,
  `petya` date NOT NULL,
  `Patient` varchar(50) NOT NULL,
  `Treatmentt` varchar(50) NOT NULL,
  `Dentist` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Remarks` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loginpage`
--

CREATE TABLE `loginpage` (
  `id` int(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `PrescriptionID` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Patient Name` varchar(50) NOT NULL,
  `Age` int(50) NOT NULL,
  `Dentist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `ID` int(50) NOT NULL,
  `First Name` varchar(50) NOT NULL,
  `Last Name` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Retype Pass` varchar(50) NOT NULL,
  `databirth` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`ID`, `First Name`, `Last Name`, `Username`, `Email`, `Password`, `Retype Pass`, `databirth`, `Address`) VALUES
(21, 'jessa marie', 'bebita', 'sajirima', 'jessamarie@gmail.com', 'qwerty', 'qwerty', '11,07,2026', 'cogunan'),
(22, 'regie', 'barce', 'reg', 'reg@gmail.com', '12345', '12345', '08,15,2005', 'brgy12');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `PatientID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Treatment` varchar(50) NOT NULL,
  `Schedule` varchar(50) NOT NULL,
  `Status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`Appointment_ID`);

--
-- Indexes for table `appointment_admin`
--
ALTER TABLE `appointment_admin`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`Datee`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`Patientid`);

--
-- Indexes for table `loginpage`
--
ALTER TABLE `loginpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`PrescriptionID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`PatientID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `Appointment_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `appointment_admin`
--
ALTER TABLE `appointment_admin`
  MODIFY `no` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `Patientid` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loginpage`
--
ALTER TABLE `loginpage`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `PatientID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;