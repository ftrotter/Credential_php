-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 02, 2013 at 03:47 AM
-- Server version: 5.5.29
-- PHP Version: 5.4.6-1ubuntu1.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cred`
--

-- --------------------------------------------------------

--
-- Table structure for table `Addresss`
--

CREATE TABLE IF NOT EXISTS `Addresss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `line1` varchar(255) DEFAULT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `State_id` int(11) DEFAULT NULL,
  `County_id` int(11) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `Boards`
--

CREATE TABLE IF NOT EXISTS `Boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `Address_id` int(11) DEFAULT NULL,
  `Phone_id` int(11) DEFAULT NULL,
  `Fax_Phone_id` int(11) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `Boards`
--

INSERT INTO `Boards` (`id`, `name`, `Address_id`, `Phone_id`, `Fax_Phone_id`, `website`, `email`, `created_by_User_id`, `modified_by_User_id`, `created_at`, `updated_at`) VALUES
(1, 'American Board of Allergy & Immunology', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'American Board of Anesthesiology', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'American Board of Colon and Rectal Surgery', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'American Board of Dermatology', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'American Board of Emergency Medicine', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'American Board of Family Medicine', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'American Board of Internal Medicine', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'American Board of Medical Genetics', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'American Board of Multiple Specialties in Podiatry', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'American Board of Neurological Surgery', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'American Board of Nuclear Medicine', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'American Board of Obstetrics and Gynecology', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'American Board of Ophthalmology', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'American Board of Orthopaedic Surgery', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'American Board of Otolaryngology', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'American Board of Pathology', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'American Board of Pediatrics ', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'American Board of Physical Medicine and Rehabilitation', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'American Board of Plastic Surgery', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'American Board of Preventive Medicine', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'American Board of Psychiatry & Neurology', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'American Board of Radiology', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'American Board of Surgery', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'American Board of Thoracic Surgery', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'American Board of Urology', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'American Medical Association', 0, 0, 0, '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Carriers`
--

CREATE TABLE IF NOT EXISTS `Carriers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `Carriers`
--

INSERT INTO `Carriers` (`id`, `name`, `created_by_User_id`, `modified_by_User_id`, `created_at`, `updated_at`) VALUES
(1, 'Bravo Health', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Molina (medicaid)', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'XL Health', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Beech Street', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'CHC (STAR)', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Molina (CHIPS)', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Senior Patient Association', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'New Life Era', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Physicians'' ACO', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Wellcare', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Multi-Plan', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'CHC (CHIPS)', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Molina (STAR plus)', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'United American', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Universal Health Care', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'CHC', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Galaxy', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Prime', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Molina (Medicare Advantage)', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Molina (Star)', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Alavida', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Patient/Physician Cooperatives', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'A good Carrier', 0, 0, '0000-00-00 00:00:00', '2013-01-03 08:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `Countys`
--

CREATE TABLE IF NOT EXISTS `Countys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `CredentialOrganizations`
--

CREATE TABLE IF NOT EXISTS `CredentialOrganizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Documents`
--

CREATE TABLE IF NOT EXISTS `Documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) DEFAULT NULL,
  `DocumentType_id` int(11) DEFAULT NULL,
  `documentURL` varchar(255) DEFAULT NULL,
  `imageURL` varchar(255) DEFAULT NULL,
  `container` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `select_name` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `DocumentTypes`
--

CREATE TABLE IF NOT EXISTS `DocumentTypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `EducationInstitutions`
--

CREATE TABLE IF NOT EXISTS `EducationInstitutions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `Address_id` int(11) DEFAULT NULL,
  `Phone_id` int(11) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=115 ;

--
-- Dumping data for table `EducationInstitutions`
--

INSERT INTO `EducationInstitutions` (`id`, `code`, `name`, `url`, `Address_id`, `Phone_id`, `created_by_User_id`, `modified_by_User_id`, `created_at`, `updated_at`) VALUES
(1, 'UASM', 'University of Alabama School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'USACM', 'University of South Alabama College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'UACM', 'University of Arizona College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'KSM', 'Keck School of Medicine of the University of Southern California', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'LLSM', 'Loma Linda University School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'SUSM', 'Stanford University School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'UCD', 'University of California, Davis, School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'UCI', 'University of California, Irvine, College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'UCLA', 'David Geffen School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'UCSD', 'University of California, San Diego, School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'UCSF', 'University of California, San Francisco, School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'UCHS', 'University of Colorado Health Sciences Center School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'YUSM', 'Yale University School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'GWU', 'George Washington University School of Medicine and Health Sciences', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'GUSM', 'Georgetown University of School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'HUCM', 'Howard University College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'FSU', 'Florida State University College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'UFCM', 'University of Florida College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'UMSM', 'University of Miami School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'USFC', 'University of South Florida College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'EU', 'Emory University School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'MCGS', 'Medical College of Georgia School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'MUSM', 'Mercer University School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'MSM', 'Morehouse School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'JHUSM', 'John Hopkins University School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'USUH', 'Uniformed Services University of the Health Sciences', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'UMSM', 'University of Maryland School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'BUSM', 'Boston University School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'HSM', 'Harvard School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'TUSM', 'Tufts University School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'UMMS', 'University of Massachusetts Medical School', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'MSU', 'Michigan State University', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'UMMS', 'University of Michigan Medical School', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'WSU', 'Wayne State University', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'MMS', 'Mayo Medical School', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'UMMS', 'University of Minnesota Medical School- Twin Cities', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'UMDS', 'University of Minnesota - Duluth School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'UMSM', 'University of Mississippi School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'SUSM', 'St. Louis University School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'UMCSM', 'University of Missouri- Columbia School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'UMKC', 'University of Missouri- Kansas City School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'WUSL', 'Washington University in St. Louis School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'CUSM', 'Creighton University School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'UNCM', 'University of Nebraska College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'UNS', 'University of Nevada School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'DMS', 'Dartmouth Medical School', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'NMS', 'UMDNJ- New Jersey Medical School', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'RWJ', 'UMDNJ- Robert Wood Johnson Medical School', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'UNM', 'University of New Mexico School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'ABM', 'Albany College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'AEC', 'Albert Einstein College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'CCPS', 'Columbia College of Physicians and Surgeons', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'CU', 'Joan and Sanford I. Weill Medical College of Cornell University', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'MSS', 'Mount Sinai School of Medicine of New York University', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'NYM', 'New York Medical College', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'NYU', 'New York University School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'SUNYD', 'State University of New York Downstate Medical Center College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'SUNY', 'State University of New York Upstate Medical University', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'SBUHS', 'Stony Brook University Health Sciences Center School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'UB', 'University at Buffalo State University of New York School of Medicine and Biomedical Sciences', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'URSM', 'University of Rochester School of Medicine and Dentistry', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'DUSM', 'Duke University School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'BSECU', 'The Brody School of Medicine at East Carolina University', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'UNC', 'University of North Carolina at Chapel Hill School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'WFUSM', 'Wake Forest University School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'UND', 'University of North Dakota School of Medicine and Health Sciences', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'CWRU', 'Case Western Reserve University School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'MCO', 'Medical College of Ohio', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'NOU', 'Northeastern Ohio Universities College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'OSU', 'Ohio State University College of Medicine and Public Health', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'UCC', 'University of Cincinnati College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'WSU', 'Wright State University School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'UOC', 'University of Oklahoma College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'OHS', 'Oregon Health and Science University School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'JMC', 'Jefferson Medical College of Thomas Jefferson University', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'DUCM', 'Drexel University College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'PSUC', 'Pennsylvania State University College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'TUSM', 'Temple University School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'UPS', 'University of Pennsylvania Health System', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'UPSM', 'University of Pittsburgh School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'PSM', 'Ponce School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'UCD', 'Universidad Central Del Caribe School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'UPR', 'University of Puerto Rico School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'BMS', 'Brown Medical School', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'MUS', 'Medical University of South Carolina College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'USC', 'University of South Carolina School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'USD', 'University of South Dakota School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'ETSU', 'East Tennessee State University James H. Quillen College of Medcine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'MMC', 'Meharry Medical College School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'UTHSC', 'University of Tennessee Health Science Center College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'VUSM', 'Vanderbilt University School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'BCM', 'Baylor College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'TTU', 'Texas Tech University Health Sciences Center, School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'TAMU', 'The Texas A & M University System Health Science Center College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'UTMS', 'University of Texas Medical School at San Antonio', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'UTSMD', 'University of Texas Southwestern Medical Center at Dallas Southwestern Medical School', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'UTMB', 'University of Texas Medical Branch at Galveston', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'UTMS', 'University of Texas Medical School at Houston', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'UUS', 'University of Utah School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'UVC', 'The University of Vermont College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'EVMS', 'Eastern Virginia Medical School of the Medical College of Hampton Roads', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'VCU', 'University of Virginia School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'VCU', 'Virginia Commonwealth University School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'UWS', 'University of Washington School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'MMU', 'Joan C. Edwards School of Medicine at Marshall University', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'WVU', 'West Virginia University School of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'MCW', 'Medical College of Wisconsin', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'UWMS', 'University of Wisconsin Medical School', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, NULL, 'Hermann Hospital/MDAnderson Tumor Institute', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, NULL, 'Northwestern University Medical School', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, NULL, 'University of Illinois College of Medicine', '', 0, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `EducationLevels`
--

CREATE TABLE IF NOT EXISTS `EducationLevels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `EducationLevels`
--

INSERT INTO `EducationLevels` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'BSN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'MSN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Doctorate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Degree', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Internship', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Residency', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Fellowship', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Teaching Appointment', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `FormTest`
--

CREATE TABLE IF NOT EXISTS `FormTest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_date` datetime NOT NULL,
  `Address_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Genders`
--

CREATE TABLE IF NOT EXISTS `Genders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Genders`
--

INSERT INTO `Genders` (`id`, `name`, `created_by_User_id`, `modified_by_User_id`, `created_at`, `updated_at`) VALUES
(1, 'Male', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Female', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Other', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `laravel_migrations`
--

CREATE TABLE IF NOT EXISTS `laravel_migrations` (
  `bundle` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`bundle`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laravel_migrations`
--

INSERT INTO `laravel_migrations` (`bundle`, `name`, `batch`) VALUES
('myauth', '2012_12_16_165921_create_users', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Networks`
--

CREATE TABLE IF NOT EXISTS `Networks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `Networks`
--

INSERT INTO `Networks` (`id`, `name`, `created_by_User_id`, `modified_by_User_id`, `created_at`, `updated_at`) VALUES
(1, 'SEMNet', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'MidTownNet', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'UHPNet', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'HMINet', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Triangle', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Fondren', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Notes`
--

CREATE TABLE IF NOT EXISTS `Notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(255) DEFAULT NULL,
  `row_id` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Phones`
--

CREATE TABLE IF NOT EXISTS `Phones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `ProviderCarriers`
--

CREATE TABLE IF NOT EXISTS `ProviderCarriers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) DEFAULT NULL,
  `Carrier_id` int(11) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ProviderCarriers`
--

INSERT INTO `ProviderCarriers` (`id`, `Provider_id`, `Carrier_id`, `created_by_User_id`, `modified_by_User_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 0, '0000-00-00 00:00:00', '2013-01-03 08:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `ProviderCoverages`
--

CREATE TABLE IF NOT EXISTS `ProviderCoverages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) DEFAULT NULL,
  `is_self_insured` tinyint(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `ste_apt_etc` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `State_id` int(11) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `policy_number` int(11) DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `occurrence_limit` int(11) DEFAULT NULL,
  `aggregate_limit` int(11) DEFAULT NULL,
  `coverage` varchar(255) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ProviderCoverages`
--

INSERT INTO `ProviderCoverages` (`id`, `Provider_id`, `is_self_insured`, `name`, `street`, `ste_apt_etc`, `city`, `State_id`, `zip_code`, `phone`, `policy_number`, `effective_date`, `expiration_date`, `occurrence_limit`, `aggregate_limit`, `coverage`, `created_by_User_id`, `modified_by_User_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'coverage name', '1010 coverage street', '', 'houston', 44, 77003, 1231231234, 1111111, '2013-01-14 00:00:00', '2013-01-17 00:00:00', 1, 10, 'nice coverage', 0, 0, '0000-00-00 00:00:00', '2013-01-03 08:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `ProviderCredentials`
--

CREATE TABLE IF NOT EXISTS `ProviderCredentials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) DEFAULT NULL,
  `CredentialOrganization_id` int(11) DEFAULT NULL,
  `credential_date` datetime DEFAULT NULL,
  `recredential_date` datetime DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ProviderEducations`
--

CREATE TABLE IF NOT EXISTS `ProviderEducations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) DEFAULT NULL,
  `ProviderSpeciality_id` int(11) DEFAULT NULL,
  `attendance_period_start` datetime DEFAULT NULL,
  `attendance_period_end` datetime DEFAULT NULL,
  `EducationInstitution_id` int(11) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ProviderEducationsProviderEducations`
--

CREATE TABLE IF NOT EXISTS `ProviderEducationsProviderEducations` (
  `ProviderEducation_id` int(11) NOT NULL DEFAULT '0',
  `ProviderEducationsId` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`ProviderEducation_id`,`ProviderEducationsId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ProviderHospitals`
--

CREATE TABLE IF NOT EXISTS `ProviderHospitals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT NULL,
  `has_hospital_privaleges` tinyint(1) DEFAULT NULL,
  `Hospital_npi` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `ste_apt_etc` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `State_id` int(11) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `fax` int(11) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `is_unrestricted_privileges` tinyint(1) DEFAULT NULL,
  `privileges_type` varchar(255) DEFAULT NULL,
  `is_privileges_temp` tinyint(1) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ProviderLicenses`
--

CREATE TABLE IF NOT EXISTS `ProviderLicenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) DEFAULT NULL,
  `ProviderSpeciality_id` int(11) DEFAULT NULL,
  `license_number` varchar(255) DEFAULT NULL,
  `State_id` int(11) DEFAULT NULL,
  `issue_date` datetime DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ProviderNetworks`
--

CREATE TABLE IF NOT EXISTS `ProviderNetworks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) DEFAULT NULL,
  `Network_id` int(11) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ProviderReferences`
--

CREATE TABLE IF NOT EXISTS `ProviderReferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) DEFAULT NULL,
  `ReferenceNPI` int(11) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Providers`
--

CREATE TABLE IF NOT EXISTS `Providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProviderStatus_id` int(11) DEFAULT NULL,
  `select_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `suffix` varchar(255) DEFAULT NULL,
  `maiden_name` varchar(255) DEFAULT NULL,
  `source_name` varchar(255) DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `Birth_Address_id` int(11) DEFAULT NULL,
  `Gender_id` int(11) DEFAULT NULL,
  `is_pcp` smallint(1) DEFAULT NULL,
  `is_specialist` smallint(1) DEFAULT NULL,
  `Home_Phone_id` int(11) DEFAULT NULL,
  `Home_Address_id` int(11) DEFAULT NULL,
  `Corr_Phone_id` int(11) DEFAULT NULL,
  `Corr_Address_id` int(11) DEFAULT NULL,
  `Corr_Fax_Phone_id` int(11) DEFAULT NULL,
  `Corr_email` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `signature_date` datetime DEFAULT NULL,
  `dea_number` varchar(255) DEFAULT NULL,
  `dea_issue_date` datetime DEFAULT NULL,
  `dea_exp_date` datetime DEFAULT NULL,
  `dps_number` int(11) DEFAULT NULL,
  `dps_issue_date` datetime DEFAULT NULL,
  `dps_exp_date` datetime DEFAULT NULL,
  `upin` int(11) DEFAULT NULL,
  `npi` int(11) DEFAULT NULL,
  `pan` int(11) DEFAULT NULL,
  `provider_number` int(11) DEFAULT NULL,
  `group_npi` int(11) DEFAULT NULL,
  `medicare_number` int(11) DEFAULT NULL,
  `medicare_tpi_number` int(11) DEFAULT NULL,
  `ecfmg_number` int(11) DEFAULT NULL,
  `ecfmg_issue_date` datetime DEFAULT NULL,
  `social_security` int(11) NOT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Table structure for table `ProviderSpecialitys`
--

CREATE TABLE IF NOT EXISTS `ProviderSpecialitys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT NULL,
  `Speciality_id` int(11) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `Board_id` int(11) DEFAULT NULL,
  `initial_cert_date` datetime DEFAULT NULL,
  `recertification_date` datetime DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `hmo` tinyint(1) DEFAULT NULL,
  `ppo` tinyint(1) DEFAULT NULL,
  `pos` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ProviderSpecialitys`
--

INSERT INTO `ProviderSpecialitys` (`id`, `Provider_id`, `is_primary`, `Speciality_id`, `created_by_User_id`, `modified_by_User_id`, `Board_id`, `initial_cert_date`, `recertification_date`, `expiration_date`, `hmo`, `ppo`, `pos`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 1, 0, 0, 1, '2013-01-15 00:00:00', '2013-01-15 00:00:00', '2013-01-14 00:00:00', 0, 0, 0, '2013-01-08 00:00:00', '2013-01-03 09:02:20'),
(2, 1, 0, 1, 0, 0, 1, '2013-01-08 00:00:00', '2013-01-07 00:00:00', '2013-01-06 00:00:00', 0, NULL, 0, '2013-01-08 00:00:00', '2013-01-03 09:04:31');

-- --------------------------------------------------------

--
-- Table structure for table `ProvidersProviderSpecialitys`
--

CREATE TABLE IF NOT EXISTS `ProvidersProviderSpecialitys` (
  `ProviderSpeciality_id` int(11) NOT NULL DEFAULT '0',
  `Provider_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`ProviderSpeciality_id`,`Provider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ProviderStatuss`
--

CREATE TABLE IF NOT EXISTS `ProviderStatuss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ProviderStatuss`
--

INSERT INTO `ProviderStatuss` (`id`, `name`, `created_by_User_id`, `modified_by_User_id`, `created_at`, `updated_at`) VALUES
(1, 'Pending', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Provisional', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Active', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Inactive', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rows`
--

CREATE TABLE IF NOT EXISTS `rows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notused` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Specialitys`
--

CREATE TABLE IF NOT EXISTS `Specialitys` (
  `id` int(11) NOT NULL DEFAULT '0',
  `specialty_abbreviation` varchar(255) DEFAULT NULL,
  `specialty_name` varchar(255) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Specialitys`
--

INSERT INTO `Specialitys` (`id`, `specialty_abbreviation`, `specialty_name`, `created_by_User_id`, `modified_by_User_id`, `created_at`, `updated_at`) VALUES
(1, 'ADD', 'Addiction Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'AD', 'Administrative Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'ADM', 'Adolescent Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'AEM', 'Aerospace Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'AL', 'Allergy', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'ALM', 'Allergy & Immunology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'AMB', 'Ambulance', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'AN', 'Anesthesiology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'AU', 'Audiology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'BA', 'Bariatrics', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'BE', 'Behavioral Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'BL', 'Blood Banking', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'BBK', 'Blood Banking/Transfusion Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'BR', 'Broncho - Esophagology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'C', 'Cardiology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'CB', 'Cardiology - Diagnostic', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'CC', 'Cardiology - Invasive', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'CD', 'Cardiovascular Diseases', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'CDP', 'Chemical Dependency', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'CH', 'Chiropractor', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'CAL', 'Clinic - Allergy', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'CCD', 'Clinic - Chemical Dependency', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'CDE', 'Clinic - Dental', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'CDG', 'Clinic - Diagnostic', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'CDY', 'Clinic - Dialysis', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'CFP', 'Clinic - Family Practice', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'CMA', 'Clinic - Magnetic Resonance Imaging', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'CMG', 'Clinic - Mammography', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'CMH', 'Clinic - Mental Health', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'CMR', 'Clinic - Minor Emergency', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'CMS', 'Clinic - Multi Specialty', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'CNE', 'Clinic - Nephrology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'CNM', 'Clinic - Nuclear Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'COS', 'Clinic - Outpatient Surgery', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'CPA', 'Clinic - Pain Management', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'CPH', 'Clinic - Physical Rehabilitation', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'CPT', 'Clinic - Physical Therapy', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'CPV', 'Clinic - Primary Care', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'CPY', 'Clinic - Psychology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'CRD', 'Clinic - Radiology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'CSM', 'Clinic - Sports Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'CUS', 'Clinic - Ultrasound', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'CUT', 'Clinic - Urgent Care', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'CSW', 'Clinical Social Work', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'CSY', 'Counseling - Marriage & Family', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'CT', 'Critical Care', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'CY', 'Cytology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'DEL', 'Dental', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'DEM', 'Dermatology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'DMI', 'Dermatology/Immunology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'DMP', 'Dermatology/Pathology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'DI', 'Diabetes', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'DIN', 'Diabetes/Endocrinology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'DLY', 'Dialysis', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'DME', 'Durable Medical Equipment', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'ECH', 'Echocardiogram', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'ELM', 'Electromyography', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'ELP', 'Electrophysiology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'EM', 'Emergency Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'EMT', 'Emergency Medicine - Trauma', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'EN', 'Endocrinology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'ENM', 'Endocrinology - Metabolism', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'ENR', 'Endocrinology - Reproductive', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'EQI', 'Equipment - Infusion', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'FP', 'Family Practice', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'FPO', 'Family Practice with Obstetrics', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'FR', 'Forensic Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'GE', 'Gastroenterology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'GP', 'General Practice', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'GPO', 'General Practice with Obstetrics', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'GPR', 'General Preventive Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'GQ', 'Genetics', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'GR', 'Geriatric Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'GY', 'Gynecology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'GYI', 'Gynecology/Infertility', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'GYO', 'Gynecology/Oncology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'GYU', 'Gynecology/Urology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'HE', 'Hematology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'HEO', 'Hematology/Oncology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'HEP', 'Hepatology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'HH', 'Home Health', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'HHF', 'Home Health - Fetal Monitoring', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'HHI', 'Home Health - IV Theraphy', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'HHR', 'Home Health - Respiratory Therapy', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'HOC', 'Hospice', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'HCD', 'Hospital - Chemical Dependency', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'HDY', 'Hospital - Day', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'HMS', 'Hospital - Medical/Surgery', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'HPA', 'Hospital - Psychiatric Acute', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'HPD', 'Hospital - Psychiatric Day', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'HPR', 'Hospital - Psychiatric Residential', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'HSP', 'Hospitalist', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'HY', 'Hypnosis', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'I', 'Immunology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'IDL', 'Immunology - Diagnostic Laboratory', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'IDS', 'Infectious Diseases', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'IF', 'Infertility', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'IKM', 'Intensive Care Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'IM', 'Internal Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'LA', 'Laboratory', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'LAR', 'Laryngology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'LM', 'Legal Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'LSW', 'Licensed Clinical Social Work', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'MFC', 'Marriage & Family Counselor', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'MFM', 'Maternal/Fetal Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'MM', 'Medical Microbiology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'MY', 'Myology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'NEP', 'Neonatal/Perinatal Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'NET', 'Neonatology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'NOD', 'Neoplastic Diseases', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'NP', 'Nephrology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'NR', 'Neurology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'NRC', 'Neurology - Child', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'NRO', 'Neurology - Ophthalmology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'NA', 'Neuropathology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'NPS', 'Neuropsychology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'NER', 'Neuroradiology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'NUC', 'Nuclear Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'NUE', 'Nurse-Midwife', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'NUH', 'Nursing Home', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'NUR', 'Nutrition', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'OB', 'Obstetrics', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'OBG', 'Obstetrics & Gynecology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'OBH', 'Obstetrics - High Risk Pregnancy', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'OCL', 'Occular Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'OCM', 'Occupational Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'OL', 'Oculoplastic', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'ON', 'Oncology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'ONG', 'Oncology - Gynecological', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'ONM', 'Oncology - Medical', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'ONS', 'Oncology - Surgical', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'OP', 'Ophthalmology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'OPS', 'Optical Shop', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'OPT', 'Optometry', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'OR', 'Orthopedics', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'ORM', 'Orthopedics/Sports Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'OS', 'Osteopathic Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'OT', 'Otolaryngology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'OTG', 'Otology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'OTN', 'Otology - Neurological', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'OTR', 'Otorhinolaryngology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'PA', 'Pacemaker Analysis', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'PAI', 'Pain Management', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'PC', 'Pathology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'PCA', 'Pathology - Anatomic', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'PCB', 'Pathology - Blood Bank', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'PCC', 'Pathology - Chemical', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'PCD', 'Pathology - Clinical', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'PCE', 'Pathology - Cytopathology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'PCF', 'Pathology - Forensic', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'PCH', 'Pathology - Hematology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'PCI', 'Pathology - Immunology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'PCN', 'Pathology - Neurological', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'PCR', 'Pathology - Radioisotopic', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'PD', 'Pediatrics', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'PAL', 'Pediatrics Allergy', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'PAM', 'Pediatrics Allergy/Immunology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'PAN', 'Pediatrics Anesthesiology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'PDC', 'Pediatrics Cardiology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'PCV', 'Pediatrics Cardiovascular Diseases', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'PCT', 'Pediatrics Critical Care', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'PDE', 'Pediatrics Dermatology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'PDI', 'Pediatrics Diabetes', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'PEN', 'Pediatrics Endocrinology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'PGE', 'Pediatrics Gastroenterology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'PGN', 'Pediatrics Genetics', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'PHE', 'Pediatrics Hematology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'PHO', 'Pediatrics Hematology/Oncology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'PDI', 'Pediatrics Infectious Disease', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'PMR', 'Pediatrics Mental Retardation/Autism', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'PNA', 'Pediatrics Neonatology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'PNP', 'Pediatrics Nephrology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'PNR', 'Pediatrics Neurology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'PON', 'Pediatrics Oncology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'POP', 'Pediatrics Opthamology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'POR', 'Pediatrics Orthopedics', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'POT', 'Pediatrics Otolaryngology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'PPC', 'Pediatrics Pathology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'PPS', 'Pediatrics Psychiatry', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'PPT', 'Pediatrics Psychology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'PPU', 'Pediatrics Pulmonary Disease', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'PRD', 'Pediatrics Radiology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'PRH', 'Pediatrics Rheumatology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'PSC', 'Pediatrics Surgery - Cardiovascular', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'PSG', 'Pediatrics Surgery - General', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'PSN', 'Pediatrics Surgery - Neurological', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'PSO', 'Pediatrics Surgery - Orthopedic', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'PSP', 'Pediatrics Surgery - Plastic', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'PST', 'Pediatrics Surgery - Thoracic', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'PUL', 'Pediatric Urology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'PE', 'Perinatology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'PHA', 'Pharmacology - Clinical', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'PHC', 'Pharmacy', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'PHG', 'Phlebologist', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'PHH', 'Physiatry', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'PHM', 'Physical Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'PHR', 'Physical Medicine/Rehabilitation', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'PHT', 'Physical Therapy', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'PN', 'Pneumocardiogram', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'PO', 'Podiatry', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'PR', 'Proctology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'PRO', 'Prosthesis', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'PRT', 'Prosthesis - Breast', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'PS', 'Psychiatry', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'YAC', 'Psychiatry - Addictionology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'YAD', 'Psychiatry - Adolescent', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'YAL', 'Psychiatry - Adult', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'YCH', 'Psychiatry - Child', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'YGR', 'Psychiatry - Geriatric', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'PSY', 'Psychoanalysis', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'PT', 'Psychology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'TAD', 'Psychology - Adolescent', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'TAL', 'Psychology - Adult', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'TCH', 'Psychology - Child', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'TCL', 'Psychology - Clinical', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'TCO', 'Psychology - Counseling', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'TGR', 'Psychology - Geriatric', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'TNU', 'Psychology - Neurological', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'PTS', 'Psychosomatic Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'PTT', 'Psychotherapy', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'PUB', 'Public Health', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'PUD', 'Pulmonary Disease', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'PUM', 'Pulmonary Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'PUR', 'Pulmonary Rehabilitation', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'RA', 'Radiation Therapy', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'RAO', 'Radiation/Oncology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'RD', 'Radiology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'RDD', 'Radiology - Diagnostic', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'RDN', 'Radiology - Nuclear', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'RDO', 'Radiology - Oncology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'RDU', 'Radiology - Ultrasonography', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'REC', 'Recreational Therapy', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'REH', 'Rehabilitation Therapy', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'RES', 'Respiratory Diseases', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'RET', 'Respiratory Therapy', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'RH', 'Rheumatology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'RI', 'Rhinology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'SSK', 'Skilled Nursing Facility', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'SSW', 'Social Work', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'SSP', 'Speech Pathology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'SST', 'Speech Therapy', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'SSU', 'Sports Medicine', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'SBO', 'Surgery - Abdominal', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'SBR', 'Surgery - Breast', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'SBT', 'Surgery - Burn Treatment', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'SCA', 'Surgery - Cardiovascular', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 'SCC', 'Surgery - Cardiovascular/Thoracic', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 'SCH', 'Surgery - Chemical', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 'SCL', 'Surgery - Colon/Rectal', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 'SCM', 'Surgery - Cosmetic', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 'SFT', 'Surgery - Foot', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 'SGN', 'Surgery - General', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 'SGY', 'Surgery - Gynecological', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 'SGZ', 'Surgery - Gynecological/Oncology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 'SHA', 'Surgery - Hand', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 'SHF', 'Surgery - Hand/Foot', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 'SHN', 'Surgery - Head/Neck', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 'SMX', 'Surgery - Maxillofacial', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 'SNU', 'Surgery - Neurological', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 'SOC', 'Surgery - Oncology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 'SOL', 'Surgery - Oral', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 'SOM', 'Surgery - Oral/Maxillofacial', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 'SOP', 'Surgery - Organ Transplant', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 'SOR', 'Surgery - Orthopedic', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 'SOB', 'Surgery - Orthopedic/Back', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 'SOH', 'Surgery - Orthopedic/Hand', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 'SOI', 'Surgery - Orthopedic/Hip', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 'SOK', 'Surgery - Orthopedic/Knee', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 'SPL', 'Surgery - Plastic', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 'SPF', 'Surgery - Plastic/Facial', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 'SPO', 'Surgery - Plastic/Ophthalmic', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 'SPR', 'Surgery - Plastic/Reconstructive', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 'STH', 'Surgery - Thoracic', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 'STC', 'Surgery - Thoracic/Cardiovascular', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 'STR', 'Surgery - Trauma', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 'SUR', 'Surgery - Urological', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 'SVA', 'Surgery - Vascular', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 'TM', 'Tomography', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 'TR', 'Transitional Care Facility', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 'ULS', 'Ultrasound', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 'UR', 'Urology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 'WR', 'Weight Management', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 'XRY', 'X-Ray Facility', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 'NA', 'Not Applicable', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 'IC', 'Interventional Cardiology', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 'ANP', 'Adult Nurse Practitioner', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 'FNP', 'Family nurse Practitioner', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `States`
--

CREATE TABLE IF NOT EXISTS `States` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `state_abbr` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `States`
--

INSERT INTO `States` (`id`, `name`, `state_abbr`, `created_at`, `updated_at`) VALUES
(1, 'Alabama', 'AL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Alaska', 'AK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Arizona', 'AZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Arkansas', 'AR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'California', 'CA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Colorado', 'CO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Connecticut', 'CT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Delaware', 'DE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'District of Columbia', 'DC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Florida', 'FL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Georgia', 'GA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Hawaii', 'HI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Idaho', 'ID', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Illinois', 'IL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Indiana', 'IN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Iowa', 'IA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Kansas', 'KS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Kentucky', 'KY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Louisiana', 'LA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Maine', 'ME', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Maryland', 'MD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Massachusetts', 'MA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Michigan', 'MI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Minnesota', 'MN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Mississippi', 'MS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Missouri', 'MO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Montana', 'MT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Nebraska', 'NE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Nevada', 'NV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'New Hampshire', 'NH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'New Jersey', 'NJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'New Mexico', 'NM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'New York', 'NY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'North Carolina', 'NC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'North Dakota', 'ND', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Ohio', 'OH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Oklahoma', 'OK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Oregon', 'OR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Pennsylvania', 'PA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Rhode Island', 'RI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'South Carolina', 'SC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'South Dakota', 'SD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Tennessee', 'TN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Texas', 'TX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Utah', 'UT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Vermont', 'VT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Virginia', 'VA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Washington', 'WA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'West Virginia', 'WV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Wisconsin', 'WI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Wyoming', 'WY', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `TagLinks`
--

CREATE TABLE IF NOT EXISTS `TagLinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(255) DEFAULT NULL,
  `row_id` int(11) DEFAULT NULL,
  `Tag_id` int(11) DEFAULT NULL,
  `User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Tags`
--

CREATE TABLE IF NOT EXISTS `Tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `taxonomys`
--

CREATE TABLE IF NOT EXISTS `taxonomys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notused` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Tests`
--

CREATE TABLE IF NOT EXISTS `Tests` (
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `description` text,
  `somenumber` int(11) DEFAULT NULL,
  `somefloat` float DEFAULT NULL,
  `normaltrue` tinyint(1) DEFAULT NULL,
  `confusingtrue` tinyint(1) DEFAULT NULL,
  `ok_date` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
