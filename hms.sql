-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2024 at 10:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '04-03-2024 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'ENT', 1, 1, 500, '2024-05-30', '9:15 AM', '2024-05-15 03:42:11', 1, 0, '2024-09-23 06:00:55'),
(2, 'Endocrinologists', 2, 2, 800, '2024-05-31', '2:45 PM', '2024-05-16 09:08:54', 1, 1, NULL),
(3, 'Obstetrics and Gynecology', 0, 1, 1200, '2024-09-19', '9:30 PM', '2024-09-11 17:22:39', 1, 1, NULL),
(4, 'Orthopedics', 5, 1, 1200, '2024-09-25', '11:30 AM', '2024-09-11 17:25:24', 0, 1, '2024-09-25 10:16:33'),
(5, 'Orthopedics', 5, 1, 1200, '2024-09-25', '11:30 AM', '2024-09-11 17:30:50', 0, 1, '2024-09-25 10:16:37'),
(6, 'Orthopedics', 5, 1, 1200, '2024-10-08', '7:30 PM', '2024-09-11 17:31:32', 1, 1, NULL),
(7, 'Internal Medicine', 6, 1, 1500, '2024-09-19', '9:45 AM', '2024-09-11 17:32:56', 1, 1, NULL),
(8, 'Internal Medicine', 6, 1, 1500, '2024-10-01 ', '9:45 PM', '2024-09-11 17:56:53', 1, 1, NULL),
(9, 'Orthopedics', 5, 1, 1200, '2024-09-25', '8:30 AM', '2024-09-11 17:58:11', 1, 1, NULL),
(10, 'Orthopedics', 5, 1, 1200, '2024-09-25', '8:30 AM', '2024-09-11 18:02:40', 1, 1, NULL),
(11, 'Orthopedics', 5, 1, 1200, '2024-09-19', '8:15 AM', '2024-09-11 18:03:15', 1, 1, NULL),
(12, 'Internal Medicine', 6, 1, 1500, '2024-09-24', '9:00 AM', '2024-09-23 05:59:19', 1, 1, NULL),
(13, 'Internal Medicine', 6, 1, 1500, '2024-09-26', '6:30 PM', '2024-09-24 15:52:43', 1, 1, NULL),
(14, 'Orthopedics', 5, 1, 1200, '2027-02-02', '2:15 PM', '2024-09-25 10:11:00', 1, 1, NULL),
(15, 'Orthopedics', 5, 1, 1200, '2027-02-02', '2:15 PM', '2024-09-25 10:14:32', 1, 1, NULL),
(16, 'Internal Medicine', 6, 1, 1500, '2024-09-25', '12:15 PM', '2024-09-25 10:15:31', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'ENT', 'Anuj kumar', 'A 123 XYZ Apartment Raj Nagar Ext Ghaziabad', '500', 142536250, 'anujk123@test.com', 'f925916e2754e5e03f75dd58a5733251', '2024-04-10 18:16:52', '2024-05-14 09:26:17'),
(2, 'Endocrinologists', 'Charu Dua', 'X 1212 ABC Apartment Laxmi Nagar New Delhi ', '800', 1231231230, 'charudua12@test.com', 'f925916e2754e5e03f75dd58a5733251', '2024-04-11 01:06:41', '2024-05-14 09:26:28'),
(4, 'Pediatrics', 'Priyanka Sinha', 'A 123 Xyz Aparmtnent Ghaziabad', '700', 74561235, 'p12@t.com', 'f925916e2754e5e03f75dd58a5733251', '2024-05-16 09:12:23', NULL),
(5, 'Orthopedics', 'Vipin Tayagi', 'Yasho Hospital New Delhi', '1200', 95214563210, 'vpint123@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-05-16 09:13:11', NULL),
(6, 'Internal Medicine', 'Dr Romil', 'Max Hospital Vaishali  GZB', '1500', 8563214751, 'drromil12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-05-16 09:14:11', NULL),
(7, 'Obstetrics and Gynecology', 'Bhavya rathore', 'Shop 12 Indira Puram Ghaziabad', '800', 745621330, 'bhawya12@tt.com', 'f925916e2754e5e03f75dd58a5733251', '2024-05-16 09:15:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-05-16 05:19:33', NULL, 1),
(2, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-05-16 09:01:03', '16-05-2024 02:37:32 PM', 1),
(3, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2024-09-06 13:13:01', NULL, 0),
(4, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-06 13:15:07', NULL, 1),
(5, NULL, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-09 18:57:55', NULL, 0),
(6, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-09 18:58:38', NULL, 1),
(7, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-09 19:05:33', NULL, 1),
(8, NULL, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-09 20:24:04', NULL, 0),
(9, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-09 20:24:10', NULL, 1),
(10, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-11 16:47:31', NULL, 1),
(11, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-11 16:50:33', NULL, 1),
(12, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2024-09-11 17:00:26', NULL, 0),
(13, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-11 17:07:20', NULL, 1),
(14, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-11 17:08:22', NULL, 1),
(15, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-14 18:03:29', NULL, 1),
(16, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-20 17:41:25', NULL, 1),
(17, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-22 17:22:17', NULL, 1),
(18, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-23 05:59:34', NULL, 1),
(19, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-24 15:53:46', NULL, 1),
(20, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-24 16:49:28', '24-09-2024 10:21:51 PM', 1),
(21, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-24 16:54:10', NULL, 1),
(22, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-25 10:12:12', NULL, 1),
(23, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-25 10:15:43', NULL, 1),
(24, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-29 23:51:11', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Orthopedics', '2024-04-09 18:09:46', '2024-05-14 09:26:47'),
(2, 'Internal Medicine', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(3, 'Obstetrics and Gynecology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(4, 'Dermatology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(5, 'Pediatrics', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(6, 'Radiology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(7, 'General Surgery', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(8, 'Ophthalmology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(9, 'Anesthesia', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(10, 'Pathology', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(11, 'ENT', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(12, 'Dental Care', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(13, 'Dermatologists', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(14, 'Endocrinologists', '2024-04-09 18:09:46', '2024-05-14 09:26:56'),
(15, 'Neurologists', '2024-04-09 18:09:46', '2024-05-14 09:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'Anuj kumar', 'anujk30@test.com', 1425362514, 'This is for testing purposes.   This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.', '2024-04-20 16:52:03', 'oumar', '2024-09-23 06:10:33', 1),
(2, 'Anuj kumar', 'ak@gmail.com', 1111122233, 'This is for testing', '2024-04-23 13:13:41', 'Contact the patient', '2024-04-27 13:13:57', 1),
(3, 'oumar', 'oumarabakarhamid', 7654555666, 'hgt oume tttttt gg', '2024-08-21 14:52:11', NULL, NULL, NULL),
(4, 'oumar', 'oumarabakarhamid@gmail.com', 5677777, 'rtyui', '2024-08-21 14:54:06', NULL, NULL, NULL),
(5, 'oumar', 'oumarabakarhamid@gmail.com', 7654555666, 'eddyusdwyttweygeyu eded', '2024-09-05 11:14:57', NULL, NULL, NULL),
(6, 'issa', 'issaaabakarrrrrhamid@gmail.com', 5677777, 'issa hnf', '2024-09-06 13:18:34', NULL, NULL, NULL),
(7, 'jean pierre', 'kwijpeter01@gmail.com', 785520535, 'Is the service of dental avai', '2024-09-11 17:05:25', 'yes of courses ', '2024-09-12 10:43:25', 1),
(8, 'yusfi', 'kwijpeter01@gmail.com', 785520535, 'iuytrdyfghjljv', '2024-09-22 17:26:24', 'oudd sdgg', '2024-09-22 17:27:25', 1),
(9, 'jean pierre', 'kwijpeter01@gmail.com', 785520535, 'uyju gh', '2024-09-24 15:47:45', 'oumar ggg', '2024-09-24 15:48:55', 1),
(10, 'idriss', 'kwijpeter01@gmail.com', 785520535, 'testing ', '2024-09-24 16:39:49', 'sa3', '2024-09-24 16:42:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(1, 2, '80/120', '110', '85', '97', 'Dolo,\r\nLevocit 5mg', '2024-05-16 09:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
(1, 'aboutus', 'About Us', '<ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.313em; margin-left: 1.655em;\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(255,=\"\" 246,=\"\" 246);\"=\"\"><li style=\"text-align: left;\"><font color=\"#000000\">The Hospital Management System (HMS) is designed for Any Hospital to replace their existing manual, paper based system. The new system is to control the following information; patient information, room availability, staff and operating room schedules, and patient invoices. These services are to be provided in an efficient, cost effective manner, with the goal of reducing the time and resources currently required for such tasks.</font></li><li style=\"text-align: left;\"><font color=\"#000000\">A significant part of the operation of any hospital involves the acquisition, management and timely retrieval of great volumes of information. This information typically involves; patient personal information and medical history, staff information, room and ward scheduling, staff scheduling, operating theater scheduling and various facilities waiting lists. All of this information must be managed in an efficient and cost wise fashion so that an institution\'s resources may be effectively utilized HMS will automate the management of the hospital making it more efficient and error free. It aims at standardizing data, consolidating data ensuring data integrity and reducing inconsistencies.&nbsp;</font></li></ul>', NULL, NULL, '2020-05-20 07:21:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Rahul Singyh', 452463210, 'rahul12@gmail.com', 'male', 'NA', 32, 'Fever, Cold', '2024-05-16 05:23:35', NULL),
(2, 1, 'Amit', 4545454545, 'amitk@gmail.com', 'male', 'NA', 45, 'Fever', '2024-05-16 09:01:26', NULL),
(3, 1, 'oumar', 444444, 'ouma33r@gmail.com', 'male', '45rrf', 23, 'efdf', '2024-09-11 16:52:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-05-15 03:41:48', NULL, 1),
(2, 2, 'amitk@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-16 09:08:06', '16-05-2024 02:41:06 PM', 1),
(3, NULL, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-08-20 19:26:24', NULL, 0),
(4, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-08-20 19:27:09', NULL, 1),
(5, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-08-21 14:54:20', NULL, 1),
(6, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-04 19:27:23', NULL, 1),
(7, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-06 13:11:53', NULL, 1),
(8, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-06 13:15:23', NULL, 1),
(9, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-07 23:22:16', NULL, 1),
(10, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-09 18:57:13', NULL, 1),
(11, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-09 19:04:07', NULL, 0),
(12, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-09 19:04:15', NULL, 1),
(13, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-09 19:04:59', NULL, 1),
(14, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-09 20:18:27', NULL, 1),
(15, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-11 16:47:14', NULL, 0),
(16, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-11 16:47:21', NULL, 0),
(17, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-11 16:55:01', NULL, 0),
(18, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-11 16:55:09', NULL, 0),
(19, NULL, 'ajohndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-11 16:58:12', NULL, 0),
(20, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-11 17:08:56', NULL, 0),
(21, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-11 17:11:33', NULL, 1),
(22, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-12 06:34:20', NULL, 0),
(23, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-12 06:34:25', NULL, 1),
(24, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-13 11:29:57', NULL, 0),
(25, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-13 11:30:08', NULL, 1),
(26, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-14 18:01:50', NULL, 1),
(27, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-20 17:39:10', NULL, 1),
(28, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-22 17:23:00', NULL, 1),
(29, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-23 05:57:22', NULL, 0),
(30, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-23 05:57:30', NULL, 1),
(31, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-24 15:42:15', NULL, 0),
(32, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-24 15:42:22', NULL, 1),
(33, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-24 15:52:04', NULL, 1),
(34, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-24 16:52:03', '24-09-2024 10:23:42 PM', 1),
(35, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-24 16:53:52', NULL, 0),
(36, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-09-25 10:09:00', NULL, 0),
(37, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-25 10:09:10', NULL, 1),
(38, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-25 10:15:11', NULL, 1),
(39, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-09-29 23:50:50', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'John Doe', 'A 123 ABC Apartment GZB 201017', 'Ghaziabad', 'male', 'johndoe12@test.com', 'f925916e2754e5e03f75dd58a5733251', '2024-04-20 12:13:56', '2024-05-14 09:28:15'),
(2, 'Amit kumar', 'new Delhi india', 'New Delhi', 'male', 'amitk@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-04-21 13:15:32', '2024-05-14 09:28:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PatientID` (`PatientID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `userlog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD CONSTRAINT `doctorslog_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD CONSTRAINT `tblmedicalhistory_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `tblpatient` (`ID`);

--
-- Constraints for table `userlog`
--
ALTER TABLE `userlog`
  ADD CONSTRAINT `userlog_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
