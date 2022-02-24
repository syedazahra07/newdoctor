-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2022 at 12:44 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctorcaredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttable`
--

CREATE TABLE `appointmenttable` (
  `AppointmentID` int(11) NOT NULL,
  `DoctorID` int(11) DEFAULT NULL,
  `PatientsID` int(11) DEFAULT NULL,
  `EntryDate` varchar(50) DEFAULT NULL,
  `AppointmentTime` varchar(50) DEFAULT NULL,
  `AppointmentDate` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `PhoneNumbers` varchar(50) DEFAULT NULL,
  `Email_ids` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `citytable`
--

CREATE TABLE `citytable` (
  `CityID` int(11) NOT NULL,
  `CityName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecializationtable`
--

CREATE TABLE `doctorspecializationtable` (
  `SpecializationID` int(11) NOT NULL,
  `SpecializationName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctortable`
--

CREATE TABLE `doctortable` (
  `DoctorID` int(11) NOT NULL,
  `DoctorName` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Age` int(11) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Contact` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `DoctorAvailabilty` varchar(50) NOT NULL,
  `DoctorSpecializationID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patientstable`
--

CREATE TABLE `patientstable` (
  `PatientsID` int(11) NOT NULL,
  `PatientsName` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Age` varchar(50) NOT NULL,
  `Contact` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `NIC` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttable`
--
ALTER TABLE `appointmenttable`
  ADD PRIMARY KEY (`AppointmentID`),
  ADD KEY `DoctorID` (`DoctorID`),
  ADD KEY `PatientsID` (`PatientsID`);

--
-- Indexes for table `citytable`
--
ALTER TABLE `citytable`
  ADD PRIMARY KEY (`CityID`);

--
-- Indexes for table `doctorspecializationtable`
--
ALTER TABLE `doctorspecializationtable`
  ADD PRIMARY KEY (`SpecializationID`);

--
-- Indexes for table `doctortable`
--
ALTER TABLE `doctortable`
  ADD PRIMARY KEY (`DoctorID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `DoctorSpecializationID` (`DoctorSpecializationID`);

--
-- Indexes for table `patientstable`
--
ALTER TABLE `patientstable`
  ADD PRIMARY KEY (`PatientsID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttable`
--
ALTER TABLE `appointmenttable`
  MODIFY `AppointmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `citytable`
--
ALTER TABLE `citytable`
  MODIFY `CityID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctorspecializationtable`
--
ALTER TABLE `doctorspecializationtable`
  MODIFY `SpecializationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctortable`
--
ALTER TABLE `doctortable`
  MODIFY `DoctorID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patientstable`
--
ALTER TABLE `patientstable`
  MODIFY `PatientsID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointmenttable`
--
ALTER TABLE `appointmenttable`
  ADD CONSTRAINT `appointmenttable_ibfk_1` FOREIGN KEY (`DoctorID`) REFERENCES `doctortable` (`DoctorID`),
  ADD CONSTRAINT `appointmenttable_ibfk_2` FOREIGN KEY (`PatientsID`) REFERENCES `patientstable` (`PatientsID`);

--
-- Constraints for table `doctortable`
--
ALTER TABLE `doctortable`
  ADD CONSTRAINT `doctortable_ibfk_1` FOREIGN KEY (`DoctorSpecializationID`) REFERENCES `doctorspecializationtable` (`SpecializationID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
