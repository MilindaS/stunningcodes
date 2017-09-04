-- phpMyAdmin SQL Dump
-- version 4.5.0-dev
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 25, 2016 at 03:43 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.37-1+deprecated+dontuse+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customs`
--

-- --------------------------------------------------------

--
-- Table structure for table `airport_roster_files`
--

CREATE TABLE IF NOT EXISTS `airport_roster_files` (
`id` INT(20) NOT NULL,
`date` DATETIME NOT NULL,
`title` VARCHAR(200) NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appraiser_transfer_files`
--

CREATE TABLE IF NOT EXISTS `appraiser_transfer_files` (
`id` INT(11) NOT NULL,
`date` DATETIME NOT NULL,
`title` VARCHAR(200) NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asc_transfer_files`
--

CREATE TABLE IF NOT EXISTS `asc_transfer_files` (
`id` INT(11) NOT NULL,
`date` DATETIME NOT NULL,
`title` VARCHAR(200) NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_activities`
--

CREATE TABLE IF NOT EXISTS `auth_activities` (
`id` INT(10) NOT NULL,
`activity_desc` VARCHAR(200) NOT NULL,
`status` INT(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_activities`
--

INSERT INTO `auth_activities` (`id`, `activity_desc`, `status`) VALUES
(1, 'Can Publish Departmental Orders', 1),
(2, 'Can Publish Nomenclature Committee Decisions', 1),
(3, 'Can Publish Valuation Committee Decisions', 1),
(4, 'Can Publish DC Meeting Decisions', 1),
(5, 'Can Publish Warehouse Rosters', 1),
(6, 'Can Publish Airport Rosters', 1),
(7, 'Can Publish RCT Rosters SO', 1),
(8, 'Can Publish RCT Rosters Appraiser', 1),
(9, 'Can Publish Import Rosters', 1),
(10, 'Can Publish Export Rosters', 1),
(11, 'Can Publish DC Transfers', 1),
(12, 'Can Publish DDC Transfers', 1),
(13, 'Can Publish SC Transfers', 1),
(14, 'Can Publish Appraiser Transfers', 1),
(15, 'Can Publish ASC & DSC Transfers', 1),
(16, 'Can Publish Foreign Training Programs', 1),
(17, 'Can Publish Local Training Programs', 1),
(18, 'Can Publish Motor Vehicle Publications', 1),
(19, 'Can Publish Bio Diversity Publications', 1),
(20, 'Can Publish Legal Unit Publications', 1),
(32, 'Can Publish Commodity Classification Unit Publications', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bpuuploads`
--

CREATE TABLE IF NOT EXISTS `bpuuploads` (
`id` INT(20) NOT NULL,
`date` DATETIME NOT NULL,
`title` VARCHAR(200) NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ccuuploads`
--

CREATE TABLE IF NOT EXISTS `ccuuploads` (
`id` INT(20) NOT NULL,
`date` DATETIME NOT NULL,
`title` VARCHAR(200) NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dcmds_files`
--

CREATE TABLE IF NOT EXISTS `dcmds_files` (
`id` INT(20) NOT NULL,
`date` DATETIME NOT NULL,
`title` VARCHAR(200) NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dc_transfer_files`
--

CREATE TABLE IF NOT EXISTS `dc_transfer_files` (
`id` INT(20) NOT NULL,
`date` DATETIME NOT NULL,
`title` VARCHAR(200) NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ddc_transfer_files`
--

CREATE TABLE IF NOT EXISTS `ddc_transfer_files` (
`id` INT(20) NOT NULL,
`date` DATETIME NOT NULL,
`title` VARCHAR(200) NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE IF NOT EXISTS `designations` (
`id` INT(11) NOT NULL,
`name` VARCHAR(200) NOT NULL,
`abbr` VARCHAR(200) NOT NULL,
`status` INT(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `abbr`, `status`) VALUES
(1, 'Director General of Customs', 'DGC', 1),
(2, 'Additional Director General of Customs', 'ADGC', 1),
(3, 'Director of Customs', 'DC', 1),
(4, 'Deputy Director of Customs', 'DDC', 1),
(5, 'Superintendent of Customs', 'SC', 1),
(6, 'Deputy Superintendent of Customs', 'DSC', 1),
(7, 'Assistant Superintendent of Customs', 'ASC', 1),
(9, 'Inspector of Customs', 'IC', 1);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE IF NOT EXISTS `divisions` (
`id` INT(11) NOT NULL,
`name` VARCHAR(200) NOT NULL,
`abbr` VARCHAR(200) NOT NULL,
`status` INT(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `abbr`, `status`) VALUES
(1, 'Information and Communication Technology Directorate', 'ICT', 1),
(2, 'Policy Planning and Research Directorate', 'PP&R', 1),
(3, 'Declaration Directorate', 'Declaration', 1),
(4, 'Human Resource Management Directorate', 'HRM', 1),
(5, 'Human Resource Development Directorate', 'HRD', 1),
(6, 'Cargo Examination Directorate', 'CED', 1),
(7, 'Appeals Directorate', 'Appeals', 1),
(8, 'Central Intelligence Directorate', 'CIU', 1),
(9, 'Central Investigation Burau', 'CIB', 1),
(10, 'Central Valuation Directorate', 'Valuation', 1),
(11, 'Employee Services Directorate', 'ESD', 1),
(12, 'Export Directorate', 'XPT', 1),
(13, 'Industries and Services Directorate', 'ISD', 1),
(14, 'Legal Affairs Directorate', 'LAD', 1),
(15, 'Passenger Services Directorate', 'PSD', 1),
(16, 'Post Clearance Audit', 'PCA', 1),
(17, 'Motor Vehicle', 'MV', 1),
(18, 'Bio Diversity Protection Unit', 'BPU', 1),
(19, 'Commodity Classification Unit', 'CCU', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dopl_files`
--

CREATE TABLE IF NOT EXISTS `dopl_files` (
`id` INT(20) NOT NULL,
`date` VARCHAR(200) NOT NULL,
`title` VARCHAR(200) NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
`no` VARCHAR(200) NOT NULL,
`branch` VARCHAR(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dopl_files`
--

INSERT INTO `dopl_files` (`id`, `date`, `title`, `url`, `date_modified`, `no`, `branch`) VALUES
(1, '24.06.1981', 'D.oo of New series Establishment of the Policy Planning Division', 'DOPL1.pdf', '2016-04-26 10:18:49', '1', 'PP&R'),
(2, '09.09.1981', 'Smelling of liquor. Whilst on duty', 'DOPL2.pdf', '2016-04-26 10:18:50', '2', 'Admin Gen 1'),
(3, '07.08.1981', 'Air Cargo Export from Katunayake', 'DOPL3.pdf', '2016-04-26 10:18:50', '3', 'Exp. 1'),
(4, '23.10.1981', 'Leave entries', 'DOPL4.pdf', '2016-04-26 10:18:50', '4', 'Gen.2(Admin.)'),
(5, '28.10.1981', 'Air Cargo Terminal clearance procedure Katunayake', 'DOPL5.pdf', '2016-04-26 10:18:50', '5', 'Air Cargo - 1'),
(6, '17.11.1981', 'Operating instructions regarding Duty Free Complex', 'DOPL6.pdf', '2016-04-26 10:18:50', '6', 'Bond - 1'),
(7, '30.11.1981', 'Value for duty (measures to Govt. under valuation', 'DOPL7.pdf', '2016-04-26 10:18:50', '7', 'Val - 27'),
(8, '19.01.1982', 'Release of Official information to the press or the public', 'DOPL8.pdf', '2016-04-26 10:18:50', '8', 'Gen - 03'),
(9, '02.04.1982', 'Examination of Import container cargo', 'DOPL9.pdf', '2016-04-26 10:18:50', '9', 'Imp -1'),
(10, '06.05.1982', 'Delays in Furnishing replies to letters', 'DOPL10.pdf', '2016-04-26 10:18:50', '10', 'Admin.'),
(11, '13.05.1982', 'Import of radio telecommunication equipments.', 'DOPL11.pdf', '2016-04-26 10:18:50', '11', 'Imp. - 2'),
(12, '14.05.1982', 'Processing of Import entries', 'DOPL12.pdf', '2016-04-26 10:18:50', '12', 'Imp - 3'),
(13, '27.05.1982', 'Staff  Officers on overtime duty', 'DOPL13.pdf', '2016-04-26 10:18:50', '13', 'Gen'),
(14, '17.06.1982', 'Opening and closing of warehouse', 'DOPL14.pdf', '2016-04-26 10:18:50', '14', 'Admin.'),
(15, '23.06.1982', 'Importation of live animals, poultry live plants, etc.', 'DOPL15.pdf', '2016-04-26 10:18:50', '15', 'Imp. - 4'),
(16, '25.06.1982', 'Processing of Air Cargo (Import) bill entry', 'DOPL16.pdf', '2016-04-26 10:18:50', '16', 'Imp - 5'),
(17, '25.07.0982', 'Draft circular passengers baggage', 'DOPL17.pdf', '2016-04-26 10:18:50', '17', 'Bo'),
(18, '07.07.1982', 'Rate of Exchange ? withdrawn', 'DOPL18.pdf', '2016-04-26 10:18:50', '18', 'Bond - 2'),
(19, '20.07.1982', 'GCEC Enterprises outside FTZ. Import & Export   of entries', 'DOPL19.pdf', '2016-04-26 10:18:50', '19', 'GECE'),
(20, '26.07.1982', 'Absenteeism among customs rostered for duty outside the general hours of attendance.', 'DOPL20.pdf', '2016-04-26 10:18:50', '20', 'Gen 4'),
(21, '26.07.1982', 'Remuneration of customs office for serving outside the general hours of attendance.', 'DOPL21.pdf', '2016-04-26 10:18:50', '21', 'Gen 5'),
(22, '26.09.1982', 'Operation of bonded store by M/s. Mast Industries Inc., USA', 'DOPL22.pdf', '2016-04-26 10:18:50', '22', 'Bonds'),
(23, '.09.1982', 'Clearance of GCEC Cargo', 'DOPL23.pdf', '2016-04-26 10:18:50', '23', 'GCEC'),
(24, '29.09.1982', 'Operating instructions regarding DFSC', 'DOPL24.pdf', '2016-04-26 10:18:50', '24', 'DFSC'),
(25, '06.10.1982', 'Processing of Air Cargo entries import', 'DOPL25.pdf', '2016-04-26 10:18:50', '25', 'Imp - 6'),
(26, '29.10.1982', 'Operating instruction Trico Maritime Bonded warehouse for unaccompanied passengers? Baggage and gifts.', 'DOPL26.pdf', '2016-04-26 10:18:50', '26', 'Bond 4'),
(27, '22.11.1982', 'Export of ready made garments', 'DOPL27.pdf', '2016-04-26 10:18:50', '27', 'Export'),
(28, '05.01.1983', 'Removing goods from bonded warehouse at Katunayake', 'DOPL28.pdf', '2016-04-26 10:18:50', '28', 'Bond - 6'),
(29, '18.01.1983', 'Procedure at container freight station relating Export Cargo', 'DOPL29.pdf', '2016-04-26 10:18:50', '29', 'Exp.-3'),
(30, '24.01.1983', 'Import duty on sugar', 'DOPL30.pdf', '2016-04-26 10:18:50', '30', 'Appr -1'),
(31, '07.02.1983', 'Pannel examination of F.C.L. Cargo shippers? warehouse', 'DOPL31.pdf', '2016-04-26 10:18:50', '31', 'Exp. 4'),
(32, '09.02.1983', 'Minimum values', 'DOPL32.pdf', '2016-04-26 10:18:50', '32', 'Val 2'),
(33, '14.03.1983', 'Admission of goods under preferential import Tariff rates.', 'DOPL33.pdf', '2016-04-26 10:18:50', '33', 'App.'),
(34, '04.04.1983', 'Examination of passengers? Baggage containing goods in commercial quantities', 'DOPL34.pdf', '2016-04-26 10:18:50', '34', 'BOI'),
(35, '28.06.1983', 'Examination of Import Cont. Cargo', 'DOPL35.pdf', '2016-04-26 10:18:50', '35', 'Imp. 7'),
(36, '01.06.1983', 'Levy of duty on trade sample', 'DOPL36.pdf', '2016-04-26 10:18:50', '36', 'Air Cargo 02'),
(37, '07.08.1983', 'Delivery of cargo sent for relief work', 'DOPL37.pdf', '2016-04-26 10:18:50', '37', '(App) Imp'),
(38, '09.08.1983', 'Government and project cargo brought in by expatriate passengers.', 'DOPL38.pdf', '2016-04-26 10:18:50', '38', 'Imp. 8'),
(39, '08.11.1983', 'Import duty and T.T. on imports all government Dept. and Corporation', 'DOPL39.pdf', '2016-04-26 10:18:50', '39', 'IMP 9'),
(40, '24.01.1984', 'Furnishing of addresses vide PL 92 also of 25.08.96', 'DOPL40.pdf', '2016-04-26 10:18:50', '40', 'Adm.'),
(41, '13.02.1984', 'Signing and dating of official and statement', 'DOPL41.pdf', '2016-04-26 10:18:50', '41', 'Gen 7 Adm.'),
(42, '07.02.1984', 'Rostered overtime duty', 'DOPL42.pdf', '2016-04-26 10:18:50', '42', '(Gen8) Adm.'),
(43, '23.03.1984', 'Screening of entries in the scrutiny', 'DOPL43.pdf', '2016-04-26 10:18:51', '43', 'Gen 9'),
(44, '14.04.1983', 'Containerized cargo new provisions added PL 19/IPZx ? PL 23/IPZX, PL 25A', 'DOPL44.pdf', '2016-04-26 10:18:51', '44', 'IPZ 3'),
(45, '11.04.1984', 'Clearance of gift parcels', 'DOPL45.pdf', '2016-04-26 10:18:51', '45', 'Imp 10'),
(46, '06.04.1984', 'Customs sale', 'DOPL46.pdf', '2016-04-26 10:18:51', '46', 'Gen 10'),
(47, '11.07.1984', 'Reporting for duty by Minor Employees', 'DOPL47.pdf', '2016-04-26 10:18:51', '47', 'Gen'),
(48, '11.07.1984', 'Receiving letters by Heads of Branches', 'DOPL48.pdf', '2016-04-26 10:18:51', '48', 'Adm.'),
(49, '17.07.1984', 'Recovery of duty on Baggage accompanied or not issue of receipts', 'DOPL49.pdf', '2016-04-26 10:18:51', '49', 'BO 2'),
(50, '27.07.1984', 'Officers going abroad on training/seminars', 'DOPL50.pdf', '2016-04-26 10:18:51', '50', 'Gen 11'),
(51, '17.07.1984', 'Certified copies of bills of Entry.', 'DOPL51.pdf', '2016-04-26 10:18:51', '51', 'Val 3'),
(52, '3/24/1900', 'Seismic option', 'DOPL52.pdf', '2016-04-26 10:18:51', '52', 'Appg'),
(53, '18.10.84', 'Use of ATA Camet Transparency  Importation. and Temporary exertion.', 'DOPL53.pdf', '2016-04-26 10:18:51', '53', 'PP&R Gen.'),
(54, '18.10.1984', 'Transport of goods from Air Cargo to Trico Bond', 'DOPL54.pdf', '2016-04-26 10:18:51', '54', 'Air Cargo'),
(55, '01.11.1984', 'Release of Radio Communication Equip.', 'DOPL55.pdf', '2016-04-26 10:18:51', '55', 'App.'),
(56, '20.12.1984', 'Implementation of  the new slab rates in respect of passengers baggage.', 'DOPL56.pdf', '2016-04-26 10:18:51', '56', 'BO3'),
(57, '20.12.1984', 'Regulations framed by the Ministry of Finance & Planning for Duty Free clearance of machinery under the Tariff Exemption item.', 'DOPL57.pdf', '2016-04-26 10:18:51', '57', 'Imp.11'),
(58, '27.03.1985', 'Maximum quantities to be granted to passengers as Baggage including purchases at the Duty Free shop', 'DOPL58.pdf', '2016-04-26 10:18:51', '58', 'BO'),
(59, '17.04.1985', 'Impartation of packing material such as straw of rice, wheat etc.', 'DOPL59.pdf', '2016-04-26 10:18:51', '59', 'I & I'),
(60, '24.06.1985', 'Security at the Colombo International Airport, Katunayake.', 'DOPL60.pdf', '2016-04-26 10:18:51', '60', '(Gen) Admin'),
(61, '.06.1985', 'Absence without leave', 'DOPL61.pdf', '2016-04-26 10:18:51', '61', 'Adm 14'),
(62, '.08.1985', 'Imports from Thaiwan, Bangkok & Singapore', 'DOPL62.pdf', '2016-04-26 10:18:51', '62', 'Imp 13'),
(63, '20.08.1985', 'Security at CAK.', 'DOPL63.pdf', '2016-04-26 10:18:51', '63', 'Adm.'),
(64, '06.09.1985', 'Roastered overtime duty of S/O and Sub-collectors.', 'DOPL64.pdf', '2016-04-26 10:18:51', '64', 'Adm.'),
(65, '09.09.1985', 'Approval of leave of Staff ? Officers', 'DOPL65.pdf', '2016-04-26 10:18:51', '65', 'Adm.'),
(66, '11.09.1985', 'Pannel Exam of Garment (amendment) CBD/489 Exports C&D copy of the exports entries', 'DOPL66.pdf', '2016-04-26 10:18:51', '66', 'Bonds'),
(67, '06.09.1985', 'Manufacture in Bond Veyangoda Tex.. Mills processing of imported textiles for exports & supply to industri       for use in the manufacture of garments', 'DOPL67.pdf', '2016-04-26 10:18:51', '67', 'Bonds'),
(68, '02.09.1985', 'Transbipment of refer cargo', 'DOPL68.pdf', '2016-04-26 10:18:51', '68', 'Air Cargo'),
(69, '25.09.1985', 'Absence from overtime duties', 'DOPL69.pdf', '2016-04-26 10:18:51', '69', 'Adm(Gen)'),
(70, '09.10.1985', 'Ship chandling', 'DOPL70.pdf', '2016-04-26 10:18:51', '70', 'Bond 8'),
(71, '21.12.1985', 'New rates of overtime chargers 24.11.1982', 'DOPL71.pdf', '2016-04-26 10:18:51', '71', 'Imp 14'),
(72, '06.12.1985', 'Quantity of sarees, sarongs, garments and textile fabric permitted accompanied or unaccompanied baggage.', 'DOPL72.pdf', '2016-04-26 10:18:51', '72', 'BO'),
(73, '21.02.1986', 'Approval of DCC for Raids on residences, shops and other establishments under C.O.', 'DOPL73.pdf', '2016-04-26 10:18:51', '73', 'P&P'),
(74, ' ', 'D.F.S.C.', 'DOPL74.pdf', '2016-04-26 10:18:51', '74', 'Bonds'),
(75, '11.03.1986', 'Manufacture in Bond scheme for the garment industry.', 'DOPL75.pdf', '2016-04-26 10:18:51', '75', 'Bonds'),
(76, '06.05.1986', 'Audit queries', 'DOPL76.pdf', '2016-04-26 10:18:51', '76', 'Acct.'),
(77, ' ', 'Rostered overtime duty.', 'DOPL77.pdf', '2016-04-26 10:18:51', '77', 'Adm.'),
(78, '12.05.1986', 'Port security', 'DOPL78.pdf', '2016-04-26 10:18:51', '78', 'Adm.'),
(79, '21.05.1986', 'Import of grey fabric', 'DOPL79.pdf', '2016-04-26 10:18:51', '79', 'Bonds'),
(80, '11.11.1986', 'Bank pledge stores.', 'DOPL80.pdf', '2016-04-26 10:18:51', '80', 'Bond'),
(81, '27.03.1985', 'Manufacture in Bond for he garments industry instructions relating to clearance and delivery of goods to and from Bonds.', 'DOPL81.pdf', '2016-04-26 10:18:51', '81', 'Bond 6'),
(82, '20.11.1985', 'Stock books and record to be maintained at the manufacture in Bond. Warehouse/factories under section 69 of the C.O. (Chap. 235)', 'DOPL82.pdf', '2016-04-26 10:18:51', '82', 'Bond 11'),
(83, '14.03.1985', 'Manufacture in Bond scheme for the garments industry and delivery of bonded cargo and exports of furnished', 'DOPL83.pdf', '2016-04-26 10:18:52', '83', 'Bond 12'),
(84, '28.12.1984', 'Operating instruction for  manufacture of garments in bond for exports.', 'DOPL84.pdf', '2016-04-26 10:18:52', '84', 'Bond 13'),
(85, '15.05.1985', 'Security for Duty manufacture in Bond for the garment industry.', 'DOPL85.pdf', '2016-04-26 10:18:52', '85', 'Bond 14'),
(86, '21.07.1986', 'Procedure to be followed in respect of Narcotics Detections at the Colombo Airport, Katunayake.', 'DOPL86.pdf', '2016-04-26 10:18:52', '86', 'Bo/Narc.'),
(87, '.04.1985', 'Use of local fabrics for manufacture of garments.', 'DOPL87.pdf', '2016-04-26 10:18:52', '87', 'Bond 15'),
(88, ' ', 'Important points to be compiled with at panel examinations.', 'DOPL88.pdf', '2016-04-26 10:18:52', '88', 'Bond 16'),
(89, '.07.1985', 'Sample garments', 'DOPL89.pdf', '2016-04-26 10:18:52', '89', 'Bond 17'),
(90, '03.08.1985', 'Export documents', 'DOPL90.pdf', '2016-04-26 10:18:52', '90', 'Bond 18'),
(91, '25.02.1986', 'Extraction of samples -  Bonded material', 'DOPL91.pdf', '2016-04-26 10:18:52', '91', 'Bond 19'),
(92, '25.08.1986', 'Furnishing of addresses', 'DOPL92.pdf', '2016-04-26 10:18:52', '92', 'Adm.'),
(93, '03.10.1986', 'Panel examination report', 'DOPL93.pdf', '2016-04-26 10:18:52', '93', 'P&P'),
(94, ' ', 'Panel examination', 'DOPL94.pdf', '2016-04-26 10:18:52', '94', 'Bond'),
(95, '20.11.1986', 'Procedure regarding the examination of import (FCL) containers.', 'DOPL95.pdf', '2016-04-26 10:18:52', '95', 'PIN'),
(96, '20.01.1987', 'Operating instructions amended to PL 84', 'DOPL96.pdf', '2016-04-26 10:18:52', '96', 'Bonds'),
(97, '31.03.1987', 'Bonding of textiles and textile components and export of garments manufactured in Bond', 'DOPL97.pdf', '2016-04-26 10:18:52', '97', 'Bond'),
(98, '31.03.1987', '- do -', 'DOPL98.pdf', '2016-04-26 10:18:52', '98', 'Bond'),
(99, '12.05.1987', 'Proceeding to be followed in import were  delivery of Import cargo.', 'DOPL99.pdf', '2016-04-26 10:18:52', '99', 'Imports'),
(100, '12.05.1987', 'Closing of Blue book at Air Cargo Terminal, Katunayake.', 'DOPL100.pdf', '2016-04-26 10:18:52', '100', 'Air Cargo'),
(101, '21.05.1987', 'Publicat5ion of a Customs news magazine', 'DOPL101.pdf', '2016-04-26 10:18:52', '101', 'Gen'),
(102, '26.05.1987', 'Examination of Import FCL', 'DOPL102.pdf', '2016-04-26 10:18:52', '102', 'Int'),
(103, '22.06.1987', 'Participation of panel examination', 'DOPL103.pdf', '2016-04-26 10:18:52', '103', 'Exports'),
(104, '23.07.1987', 'Veyangoda Textile mill', 'DOPL104.pdf', '2016-04-26 10:18:52', '104', 'Bond'),
(105, '11.08.1987', 'Importation of 100% synthatic fabric', 'DOPL105.pdf', '2016-04-26 10:18:52', '105', 'Bond'),
(106, '01.09.1987', 'Operation of a bonded W/H in Sri Lanka by M/s. Mast Ind. Inc. USA.', 'DOPL106.pdf', '2016-04-26 10:18:52', '106', 'Bond'),
(107, '01.09.1987', 'Panel examination at Imported export cargo', 'DOPL107.pdf', '2016-04-26 10:18:52', '107', 'Gen'),
(108, '18.09.1987', 'Examination of  FCL containers consigned to GCEC registered enterprises located at the Biyagama Export processing Zone.', 'DOPL108.pdf', '2016-04-26 10:18:52', '108', 'IZPH'),
(109, '02.10.1987', 'Minutes, Reports and endorsements official documents.', 'DOPL109.pdf', '2016-04-26 10:18:52', '109', 'Gen 17'),
(110, '13.10.1987', 'Use of quarry sheets and orders given on CCC Nomenclature classifications', 'DOPL110.pdf', '2016-04-26 10:18:52', '110', 'App 04'),
(111, '23.10.1987', 'Endorsement checks on import cargo.', 'DOPL111.pdf', '2016-04-26 10:18:52', '111', 'Preventive'),
(112, '29.12.1987', 'Operation of a bonded W/H in Sri Lanka by M/s. Dennis Day Ltd; London BD 554', 'DOPL112.pdf', '2016-04-26 10:18:52', '112', 'Bond 27'),
(113, '28.02.1988', '- do ? M/s. Needle Traders (Pvt) Ltd: BD 658', 'DOPL113.pdf', '2016-04-26 10:18:52', '113', 'Bond 28'),
(114, '04.01.1988', '- do ? M/s. Mebsons Int. (Pvt) Ltd: BD654', 'DOPL114.pdf', '2016-04-26 10:18:52', '114', 'Bond 29'),
(115, '29.12.1987', 'Pre-Manifesting of Import Bills of entry', 'DOPL115.pdf', '2016-04-26 10:18:52', '115', 'Imp 16'),
(116, '30.12.1987', 'Manufacture in Bond Duro Synthatic', 'DOPL116.pdf', '2016-04-26 10:18:52', '116', 'Bond 30'),
(117, '01.01.1988', 'Examination of full container loads', 'DOPL117.pdf', '2016-04-26 10:18:52', '117', 'Exp.'),
(118, '28.01.1988', 'Distribution of rewards', 'DOPL118.pdf', '2016-04-26 10:18:52', '118', 'Gen.'),
(119, '03.02.1988', 'Import of cement in bulk Mahaweli cement', 'DOPL119.pdf', '2016-04-26 10:18:52', '119', 'Imp.'),
(120, '07.02.1988', 'Documentation and clearance of FCL containers of GCEC enterprises located in IPZ, Katunayake.', 'DOPL120.pdf', '2016-04-26 10:18:53', '120', 'IPZ 5'),
(121, '23.03.1988', 'Export of Geudas', 'DOPL121.pdf', '2016-04-26 10:18:53', '121', 'Exp 5'),
(122, '05.05.1988', 'Sale of jewellery at Duty Free Shop', 'DOPL122.pdf', '2016-04-26 10:18:53', '122', 'Bonds'),
(123, '05.05.1988', 'Processing of diamond in Bond', 'DOPL123.pdf', '2016-04-26 10:18:53', '123', 'Bond'),
(124, '22.06.1988', 'Payment of custom duty rebate.', 'DOPL124.pdf', '2016-04-26 10:18:53', '124', 'Exp'),
(125, ' ', 'Backson Textile industries', 'DOPL125.pdf', '2016-04-26 10:18:53', '125', 'Bonds'),
(126, ' ', 'Nagindas Industries Ltd: (manufacture in bond)', 'DOPL126.pdf', '2016-04-26 10:18:53', '126', 'Bonds'),
(127, '03.10.1988', '- do -', 'DOPL127.pdf', '2016-04-26 10:18:53', '127', ' '),
(128, '18.11.1988', 'C.D.N. for Air Cargo Shipment', 'DOPL128.pdf', '2016-04-26 10:18:53', '128', ' '),
(129, '29.11.1988', 'Payment of overtime from the custom overtime fund', 'DOPL129.pdf', '2016-04-26 10:18:53', '129', 'Gen'),
(130, '07.02.1989', 'Operating Instruction for the duty free shop. Gold sale centre CIA, Katunayake.', 'DOPL130.pdf', '2016-04-26 10:18:53', '130', 'BD'),
(131, '01.07.1989', 'Import of goods on commercial basis', 'DOPL131.pdf', '2016-04-26 10:18:53', '131', 'Imp.'),
(132, '17.07.1989', 'Customs House Agent (licensing)', 'DOPL132.pdf', '2016-04-26 10:18:53', '132', 'IMP.'),
(133, ' ', 'Scrutiny of entries passed in the Long Room', 'DOPL133.pdf', '2016-04-26 10:18:53', '133', 'Imp.'),
(134, '.07.1989', 'Removal application entries against fixed deposit accounts', 'DOPL134.pdf', '2016-04-26 10:18:53', '134', 'Imp.'),
(135, '31.07.1989', 'Transshipment documentation on FCL cargo', 'DOPL135.pdf', '2016-04-26 10:18:53', '135', 'W/A'),
(136, '16.10.1989', 'Manufacture in Bond M/s. Valpac Services (Pvt) Ltd: Vacuum packing of garments for export.', 'DOPL136.pdf', '2016-04-26 10:18:53', '136', 'Bonds'),
(137, '01.11.1989', 'Amendment to operating instructions.', 'DOPL137.pdf', '2016-04-26 10:18:53', '137', 'Bond'),
(138, '24.11.97', 'Recovery of excise duty on excisable qu     manufacture outside Sri Lanka and imported in to the country.', 'DOPL137.pdf', '2016-04-26 10:18:53', '137', 'PP&R(Excise Duty)'),
(139, '03.01.1990', 'Manufacture in Bond Hylbro Industries Ltd; processing of imported textiles for supply to local industrialists for use in the manufacture of Garments for export.', 'DOPL138.pdf', '2016-04-26 10:18:53', '138', 'Bond'),
(140, '12.01.1990', 'Opening of a duty free shop for diplomatic personnel in Colombo.', 'DOPL139.pdf', '2016-04-26 10:18:53', '139', 'Bond'),
(141, '15.01.1990', 'Customs ware housing scheme operating instructions for Manu in Bond for export of garmnets.', 'DOPL140.pdf', '2016-04-26 10:18:53', '140', 'Bond'),
(142, '22.01.1990', 'Operation of a Bonded W/H in Sri Lanka by M/s. President Fashion Ltd.', 'DOPL141.pdf', '2016-04-26 10:18:53', '141', 'Bond'),
(143, '30.01.1990', 'Interim procedure re-monitoring of duty free shops at C.A.K.', 'DOPL142.pdf', '2016-04-26 10:18:53', '142', 'Bond'),
(144, '05.02.1990', 'Operating instruction for Duty Free Shop at Colombo Airport, Katunayake.', 'DOPL143.pdf', '2016-04-26 10:18:53', '143', ' '),
(145, '15.03.1990', 'Procedure for supplies from local bonds to GCEC enterprises.', 'DOPL144.pdf', '2016-04-26 10:18:53', '144', 'Bonds'),
(146, '04.04.1990', 'Import of steel items for fabrication and re-export to Bangladesh by M/s. Project Engineering Co. Ltd under special individual Bank Guarantee provisions.', 'DOPL145.pdf', '2016-04-26 10:18:53', '145', 'Bonds'),
(147, '18.04.1990', 'Operation of a container as bonded store in JCT Port premises by M/s. Colombo Shipping Co. Ltd; for spares to repair  refer containers in the port.', 'DOPL146.pdf', '2016-04-26 10:18:53', '146', 'Bond'),
(148, '18.04.1990', 'Leave arrangements', 'DOPL147.pdf', '2016-04-26 10:18:53', '147', 'Admin.'),
(149, '28.05.1990', 'Customs operating instructions 1990 for Man-in ?Bond of garments for exports.', 'DOPL148.pdf', '2016-04-26 10:18:53', '148', 'Bonds'),
(150, ' ', 'Operation of a bonded W/H by M/s. Ceylon Shipping Lines Ltd.', 'DOPL149.pdf', '2016-04-26 10:18:53', '149', 'Bonds'),
(151, '30.05.1990', 'Operation of a private Bonded W/H by M/s. Ceylon Shipping Lines Ltd; for Marine container spares to repair foreign container.', 'DOPL149.pdf', '2016-04-26 10:18:53', '149', 'Bonds'),
(152, '12.06.1990', 'Procedure for the transfer of seized goods to Appraising Branch No.14 W/H by the Dep.', 'DOPL150.pdf', '2016-04-26 10:18:53', '150', 'DC(I&I)'),
(153, '20.06.1990', 'Importation of Computer parts for assembling of Computer for re-exports- Jagath Robotics(Pvt)Ltd.,', 'DOPL151.pdf', '2016-04-26 10:18:53', '151', 'Bonds'),
(154, '21.06.1990', 'Wearing of Identity badges and use of pedestrian gates', 'DOPL152.pdf', '2016-04-26 10:18:54', '152', 'DGC/Gen'),
(155, '26.06.1990', 'Customs House Agents Condition for cancellation of CHA licenses', 'DOPL153.pdf', '2016-04-26 10:18:54', '153', ' '),
(156, '26.07.1990', 'Operating Instruction for the Central bank Duty Free Shop Gold Sale Centre CTA.', 'DOPL154.pdf', '2016-04-26 10:18:54', '154', 'Bonds'),
(157, '09.07.1990', 'Delays in the Disposal of Inquiries held under the Customs Ordinance', 'DOPL155.pdf', '2016-04-26 10:18:54', '155', 'Admn.'),
(158, '19.07.1990', 'Information to Export Panel Officers', 'DOPL156.pdf', '2016-04-26 10:18:54', '156', 'Bonds'),
(159, '30.07.1990', 'Removal of Sweeping', 'DOPL157.pdf', '2016-04-26 10:18:54', '157', 'Imp.'),
(160, '07.08.1990', 'Seizure of Motor Vehicles', 'DOPL158.pdf', '2016-04-26 10:18:54', '158', 'Imp.'),
(161, '20.08.1990', 'Manning of Gates', 'DOPL159.pdf', '2016-04-26 10:18:54', '159', 'Preventive'),
(162, '18.09.1990', 'Unaccompanied passengers? baggage (Out ward) a Circular to Freight Forwarders)', 'DOPL160.pdf', '2016-04-26 10:18:54', '160', ' '),
(163, '09.10.1990', 'Appointing of staff to the gates in the port (Distributed by DC (Preventive)', 'DOPL161.pdf', '2016-04-26 10:18:54', '161', ' '),
(164, '31.10.1990', 'Procedure for documentation and removal of transshipment cargo sea/Air FCL', 'DOPL162.pdf', '2016-04-26 10:18:54', '162', ' '),
(165, '01.11.1990', 'Sale of goods forfeited under the provisions of the Customs Ordinance', 'DOPL163.pdf', '2016-04-26 10:18:54', '163', ' '),
(166, '07.11.1990', 'Re-examination of cargo released by customs', 'DOPL164.pdf', '2016-04-26 10:18:54', '164', 'DC/Pre/MIS'),
(167, '26.11.1990', 'Import Inspection by Food & Drugs inspectors', 'DOPL165.pdf', '2016-04-26 10:18:54', '165', 'D/FC/90'),
(168, '11.12.1990', 'Customs entry numbers in cargo dispatch notes the maintenance of registers at the export gate', 'DOPL166.pdf', '2016-04-26 10:18:54', '166', ' '),
(169, '11.12.1990', 'Panel Examinations (Exports)', 'DOPL167.pdf', '2016-04-26 10:18:54', '167', ' '),
(170, '11.01.1991', 'Manufacture-in-bond-Cliftex Industries Ltd., processing of imported textiles for supply to local industrialists for use in the manufacture of garments for export', 'DOPL168.pdf', '2016-04-26 10:18:54', '168', 'BD/847'),
(171, '07.02.1991', 'Indication of packers registration number on retail packs. Of tea Sri Lanka Tea-Board-registration (Export)', 'DOPL169.pdf', '2016-04-26 10:18:54', '169', ' '),
(172, '22.03.1991', 'Operating instructions for the Duty Free Shop Bond at the Port of Colombo', 'DOPL170.pdf', '2016-04-26 10:18:54', '170', 'Bonds'),
(173, '04.06.1991', 'Passing Bonding entries of diamond Gems/precious metal and jewellery', 'DOPL171.pdf', '2016-04-26 10:18:54', '171', 'Gem'),
(174, '13.06.1991', '100 percent check of import cargo of textiles Fabric imported on ?To Bond Entries?', 'DOPL172.pdf', '2016-04-26 10:18:54', '172', 'DGC'),
(175, '27.06.1991', 'Endorsement on Duty Rebates', 'DOPL173.pdf', '2016-04-26 10:18:54', '173', 'Export'),
(176, '27.06.1991', 'Procedure to be adopted in the Import of approval raw materials for the manufacture of packets for the export of Sri Lanka Tea Special Bank Guarantee Scheme', 'DOPL174.pdf', '2016-04-26 10:18:54', '174', 'BD'),
(177, '27.06.1991', 'Security check at the port of Colombo', 'DOPL175.pdf', '2016-04-26 10:18:54', '175', 'Admin.'),
(178, '21.08.1991', 'Export of Samples of garments', 'DOPL176.pdf', '2016-04-26 10:18:54', '176', 'Bonds'),
(179, '03.09.1991', 'Present of Attorneys-at-Law at Customs Inquiries', 'DOPL177.pdf', '2016-04-26 10:18:54', '177', 'Admin.'),
(180, '05.10.91', 'Valuation queries', 'DOPL178.pdf', '2016-04-26 10:18:54', '178', 'Valuation'),
(181, '25.11.91', 'Customs overtime Fund visit by SC', 'DOPL179.pdf', '2016-04-26 10:18:54', '179', 'Admins'),
(182, '02.12.91', 'Procedure for Documentation and Removal of transshipment Cargo Sea/Air ? Air/Sea (Ref. Do No 118)', 'DOPL180.pdf', '2016-04-26 10:18:54', '180', ' '),
(183, '03.12.1991', 'Distribution of Reward amendment', 'DOPL181.pdf', '2016-04-26 10:18:54', '181', ' '),
(184, '26.03.92', 'Documentation to be made available to officers of the Security Division , Ministry of Finacne', 'DOPL182.pdf', '2016-04-26 10:18:54', '182', 'DGC?s'),
(185, '27.03.92', 'Non-commercial Export of personal Jewellary of Female Passengers on a bring back basis.', 'DOPL183.pdf', '2016-04-26 10:18:54', '183', '(Misc.)DGC'),
(186, '07.04.92', 'Conservation of Electricity', 'DOPL184.pdf', '2016-04-26 10:18:54', '184', 'DGC'),
(187, ' ', 'Request for No pay leave for studio/Employment (withdrawn)', 'DOPL185.pdf', '2016-04-26 10:18:54', '185', 'Adm'),
(188, '08.06.92', 'Examination of garments(LCL) cargo exported by factories with GCEC staus outside FTZ.', 'DOPL186.pdf', '2016-04-26 10:18:54', '186', 'Export'),
(189, '30.06.92', 'Information regarding smuggling', 'DOPL187.pdf', '2016-04-26 10:18:54', '187', '(Trg/P&P)'),
(190, '30.07.92', 'Valuation', 'DOPL188.pdf', '2016-04-26 10:18:55', '188', 'Valuation'),
(191, '16.07.92', 'Transfer of assets of Indian repatriates leaving Sri Lanka for permanent residence in India-personal jewellary & personal effects.', 'DOPL189.pdf', '2016-04-26 10:18:55', '189', 'Bo/Misc/92'),
(192, '19.08.92', 'Customer of transit passengers and sale of gold to returning Sri Lanka passport Holders at the Duty Free Shops at Katunayake Air port.', 'DOPL190.pdf', '2016-04-26 10:18:55', '190', 'BO/Misc/92'),
(193, '31.08.92', 'Passenger and Baggage search attitude to passengers', 'DOPL191.pdf', '2016-04-26 10:18:55', '191', 'P&P'),
(194, '31.08.92', 'Distribution of rewards (Ref. circular Nos. DOPL 118,187)', 'DOPL192.pdf', '2016-04-26 10:18:55', '192', ' '),
(195, '01.10.92', 'Screening of ?To Bond? entries.', 'DOPL193.pdf', '2016-04-26 10:18:55', '193', 'Bond'),
(196, '06.10.92', 'Exports of sasmples', 'DOPL194.pdf', '2016-04-26 10:18:55', '194', 'Bonds/Exp'),
(197, '17.11.92', 'Amendment to export documents relating to name of vessel/flight and terms of cargo status.', 'DOPL195.pdf', '2016-04-26 10:18:55', '195', 'Exp'),
(198, '10.12.92', 'Temporary import and export procedure (TIEP)', 'DOPL196.pdf', '2016-04-26 10:18:55', '196', 'Bonds'),
(199, '30.12.92', 'Liberalization of gold imports into Sri Lanka and sales thereof', 'DOPL197.pdf', '2016-04-26 10:18:55', '197', '(R163) P&P'),
(200, '01.02.93', 'Levy of turnover tax on imported articles at the point of import', 'DOPL198.pdf', '2016-04-26 10:18:55', '198', '(PL72) P&P'),
(201, '01.02.93', 'The period of validity of the Duty Free Baggage allowance.', 'DOPL199.pdf', '2016-04-26 10:18:55', '199', 'P&P'),
(202, '23.02.93', 'Misuse of passes issued to officials for entry into restricted areas at the Colombo International Airport.', 'DOPL200.pdf', '2016-04-26 10:18:55', '200', 'P&P'),
(203, '27.02.93', 'New states for the purpose of External Trade Statistics', 'DOPL201.pdf', '2016-04-26 10:18:55', '201', 'P&P'),
(204, '05.04.93', 'Passenger clearance ? Inward and out ward', 'DOPL202.pdf', '2016-04-26 10:18:55', '202', 'P&P'),
(205, '29.04.93', 'Examination of passengers Baggage containing goods in commercial quantities by the special detail examination unit at Colombo Air Port Katunayake.', 'DOPL203.pdf', '2016-04-26 10:18:55', '203', 'Baggage'),
(206, '31.05.93', 'Imposition of Exports cess on Export of Raw ?Natural Rubber', 'DOPL204.pdf', '2016-04-26 10:18:55', '204', 'Exp.'),
(207, '11.06.93', 'Passenger clearance inward', 'DOPL205.pdf', '2016-04-26 10:18:55', '205', 'Baggage'),
(208, '29.07.93', 'Monitoring of Import/re-export of ornamental fish through Air Cargo Terminal, Katunayake', 'DOPL206.pdf', '2016-04-26 10:18:55', '206', 'Air Cargo'),
(209, '29.07.93', 'Relaxation of control on the Export of Tea-Tea Export permit.', 'DOPL207.pdf', '2016-04-26 10:18:55', '207', ' '),
(210, '29.07.93', 'Enforcement checks committee', 'DOPL208.pdf', '2016-04-26 10:18:55', '208', 'Adm'),
(211, '30.07.93', 'Customs inquiries in relation to shortage of bonded materials', 'DOPL209.pdf', '2016-04-26 10:18:55', '209', 'Adm'),
(212, '26.08.93', 'Official minutes, Reports, Endorsement and statements.', 'DOPL210.pdf', '2016-04-26 10:18:55', '210', 'PP&R'),
(213, '22.09.93', 'Issue of Department orders (Re issue)', 'DOPL211.pdf', '2016-04-26 10:18:55', '211', 'PP&R'),
(214, '18.10.93', 'Restriction on export of Betel leaves as passengers Baggage.', 'DOPL212.pdf', '2016-04-26 10:18:55', '212', 'Exp'),
(215, '18.10.93', 'Export entry processing cargo of dry provisions with perishables and newspapers.', 'DOPL213.pdf', '2016-04-26 10:18:55', '213', 'Exp.'),
(216, '23.10.93', 'Change of name of the Bank', 'DOPL214.pdf', '2016-04-26 10:18:55', '214', 'PP&R'),
(217, '26.12.93', 'Correspondence with Auditor General Department', 'DOPL215.pdf', '2016-04-26 10:18:55', '215', 'PP&R'),
(218, '29.12.93', 'Gold or prescribed currency brought into Sri Lanka by any passenger traveling in transit.', 'DOPL216.pdf', '2016-04-26 10:18:55', '216', 'PP&R'),
(219, '31.12.93', 'Access', 'DOPL217.pdf', '2016-04-26 10:18:55', '217', 'ADP'),
(220, '31.12.93', 'Overtime application and recovery of chargers for services at the Port of Colombo.', 'DOPL218.pdf', '2016-04-26 10:18:55', '218', 'PP&R'),
(221, '06.01.94', 'Suspension of recovery of excise duty under excise (special provisions) Act on goods imported by persons and institutions entitled to immunities.', 'DOPL219.pdf', '2016-04-26 10:18:55', '219', 'PP&R'),
(222, '18.01.94', 'T.I.E.P./IPZ and the Export of the finished products.', 'DOPL220.pdf', '2016-04-26 10:18:55', '220', 'PP&R'),
(223, '25.01.94', 'Reward scheme for providing incentives to combat trafficking in Narcotic Drugs and psychotropic substances.', 'DOPL221.pdf', '2016-04-26 10:18:55', '221', 'PP&R'),
(224, ' ', 'Procedure regarding entries queried for value in the long room.', 'DOPL223.pdf', '2016-04-26 10:18:55', '223', 'Valuation'),
(225, '08.08.94', 'Levy of excise duty in terms of the excise (special provisions ) amendment Act No. 08 of 1994 the New base for computation of value.', 'DOPL224.pdf', '2016-04-26 10:18:55', '224', 'PP&R'),
(226, '06.05.94', 'Development of Jem & Jewellery Industry concessions to the trade/industry.', 'DOPL225.pdf', '2016-04-26 10:18:56', '225', 'Bonds'),
(227, '16.05.94', 'Removal of  restrictions place on exports from Sri Lanka in terms of section 22(1) and (2) of the exchange control Act.', 'DOPL226.pdf', '2016-04-26 10:18:56', '226', 'PP&R'),
(228, '20.07.94', 'Permission to import gold into Sri Lanka under Section 21(1) of the exchange control Act.', 'DOPL228.pdf', '2016-04-26 10:18:56', '228', 'PP&R(Exchange Control)'),
(229, '23.08.94', 'Exemption from excise duty under excise duty (special provisions) Act.', 'DOPL229.pdf', '2016-04-26 10:18:56', '229', 'PP&R (Excise Duty Sp. Exemption)'),
(230, '05.08.94', 'Operational instructions ? Import warehouse at Terminal II Air Cargo Village, Katunayake.', 'DOPL230.pdf', '2016-04-26 10:18:56', '230', 'Air Cargo'),
(231, '05.08.94', 'Customs Legal Affairs Unit', 'DOPL231.pdf', '2016-04-26 10:18:56', '231', 'Admin'),
(232, '07.09.94', 'Procedure to be adopted in the Duty Free import of inputs under the scheme for Duty Free replacement of goods (replenishment scheme).', 'DOPL232.pdf', '2016-04-26 10:18:56', '232', 'Bonds'),
(233, '09.09.94', 'Payment of domestic product rebate/bondsmen certificate scheme (DPA/BC scheme)', 'DOPL233.pdf', '2016-04-26 10:18:56', '233', 'Bonds'),
(234, '13.09.94', 'Participation at Imports panel Examination (to all SOO & Apps).', 'DOPL234.pdf', '2016-04-26 10:18:56', '234', 'PP&R/I&I'),
(235, '21.09.94', 'Reports on cases of seizures under provisions of the customs ordinance', 'DOPL235.pdf', '2016-04-26 10:18:56', '235', 'PP&R/Legal Affairs Unit'),
(236, '30.09.94', 'Procedure for processing refunds and drawback claims.', 'DOPL236.pdf', '2016-04-26 10:18:56', '236', 'PP&R'),
(237, '12.12.94', 'Removal of containers from to places sttuated in the North of  Colombo', 'DOPL237.pdf', '2016-04-26 10:18:56', '237', 'PP&R'),
(238, '27.12.94', 'Recovery of Defense Levy.', 'DOPL238.pdf', '2016-04-26 10:18:56', '238', 'PP&R'),
(239, '08.01.95', 'Rubber replanting subsidy cess', 'DOPL240.pdf', '2016-04-26 10:18:56', '240', 'Exports'),
(240, '22.02.95', 'Authorization of shipment of DOPL Mail pouch and cargo', 'DOPL241.pdf', '2016-04-26 10:18:56', '241', 'Air Cargo'),
(241, '24.03.93', 'Central cargo Examination Cargo', 'DOPL242.pdf', '2016-04-26 10:18:56', '242', 'PP&R (CCED)'),
(242, '04.05.95', 'Reworking of Transshipment containers and multi country consolidation with local cargo.', 'DOPL243.pdf', '2016-04-26 10:18:56', '243', ' '),
(243, '16.06.95', 'Revenue Task Force', 'DOPL244.pdf', '2016-04-26 10:18:56', '244', 'RTF'),
(244, '20.06.95', 'Procedure regarding the processing of import goods, declarations, queried for value at the Long Room', 'DOPL245.pdf', '2016-04-26 10:18:56', '245', 'Valuation'),
(245, '22.06.95', 'Moving of export cargo to the Port by authorized exporters prior to payment of expert levies.', 'DOPL246.pdf', '2016-04-26 10:18:56', '246', 'Export'),
(246, '27.07.95', 'Calculation of passengers? Baggage', 'DOPL247.pdf', '2016-04-26 10:18:56', '247', 'Bag & Nar.'),
(247, '31.03.95', 'Procedure to be adopted for the import of Rough and Semi-processed Gems (other than Diamonds) for cutting polishing and Re-export.', 'DOPL248.pdf', '2016-04-26 10:18:56', '248', 'Bonds'),
(248, '12.09.95', 'Section 70 of the Bribery relating to the offence of corruption.', 'DOPL249.pdf', '2016-04-26 10:18:56', '249', 'PP&R'),
(249, '21.09.95', 'Revenue Task Force (RTF) Absorption of Functions of the special investigation & intelligence unit (SIIU)', 'DOPL250.pdf', '2016-04-26 10:18:56', '250', 'C/RTF'),
(250, '22.09.95', 'GSTP member countries', 'DOPL251.pdf', '2016-04-26 10:18:56', '251', 'PP&R'),
(251, '02.10.95', 'Arrest of  persons under Section 127(A) and 127(B)', 'DOPL252.pdf', '2016-04-26 10:18:56', '252', 'PP&R'),
(252, '28.10.95', 'Revision of penalties livable on commercial cargo brought in as passangers? Baggage and gift parcels.', 'DOPL253.pdf', '2016-04-26 10:18:56', '253', 'PP&R'),
(253, '15.11.95', 'Export of local rice, Rice Flour, Kurakkan flour and sugar', 'DOPL254.pdf', '2016-04-26 10:18:56', '254', 'Export'),
(254, '17.11.95', 'Evidence (special provisions ) Act No. 14 of 1995', 'DOPL255.pdf', '2016-04-26 10:18:56', '255', 'PP&R'),
(255, '21.11.95', 'Application of  the provisions sub-section (3) of section and section 144 of the customs ordiance.', 'DOPL256.pdf', '2016-04-26 10:18:56', '256', 'PP&R'),
(256, '13.12.95', 'Import of gold and precious metal on duty free basis for the manufacture of jewellary for export', 'DOPL257.pdf', '2016-04-26 10:18:56', '257', 'Bonds'),
(257, '02.01.96', 'Articles excepted from turn over tax.', 'DOPL258.pdf', '2016-04-26 10:18:56', '258', 'PP&R'),
(258, '07.02.96', 'Updated list of food items to be referred to food and drugs inspectors before release.', 'DOPL259.pdf', '2016-04-26 10:18:56', '259', 'PP&R'),
(259, '22.03.96', 'Import of outboard and inboard motors', 'DOPL260.pdf', '2016-04-26 10:18:56', '260', 'PP&R'),
(260, '27.08.96', 'Determination of Applicable customs duty and other levies on disposal by sale of plant machinery and equipment imported by BOI enterprises on Dutyb Free basis and Acceptance of Bank Guarantees in resp', 'DOPL261.pdf', '2016-04-26 10:18:56', '261', 'PP&R'),
(261, '28.03.96', 'Cancellation and revocation of permists issued to customs House Agents and wharf Assistants.', 'DOPL262.pdf', '2016-04-26 10:18:56', '262', 'PP&R'),
(262, '19.04.96', 'Ban on the importation of out Board Motor the horse powers of which exceeds 25 (Twenty five)', 'DOPL263.pdf', '2016-04-26 10:18:56', '263', 'PP&R'),
(263, '06.06.96', 'Operating instruction for sub-contracting by Diamond manufacture in Bonds.', 'DOPL264.pdf', '2016-04-26 10:18:56', '264', 'PP&R'),
(264, '14.10.96', 'Action under provisions of Sec. 18(3) of the customs ordinance (Chapter 235)', 'DOPL265.pdf', '2016-04-26 10:18:56', '265', 'PP&R'),
(265, '30.10.96', 'Inspection of paddy stock (Rice in Husk) by the plant guarantee officer', 'DOPL266.pdf', '2016-04-26 10:18:56', '266', 'PP&R'),
(266, '03.12.96', 'Transfer of containers from customs premises to enterprises located inside designated Zones.', 'DOPL267.pdf', '2016-04-26 10:18:57', '267', 'PP&R'),
(267, '03.12.96', 'Bonded Warehouse of M/s. DHL Keels(Pvt) Ltd; at Ja-Ela.', 'DOPL268.pdf', '2016-04-26 10:18:57', '268', 'Bonds'),
(268, '04.12.96', 'Samples imported by manufactures of Garments for Exports.', 'DOPL269.pdf', '2016-04-26 10:18:57', '269', 'Bonds'),
(269, '28.12.96', 'Conducting of inquiries into detections made under Funa and Flora Act Air Cargo Division.', 'DOPL270.pdf', '2016-04-26 10:18:57', '270', 'PP&R'),
(270, ' ', 'Processing of BOI ?cusdecs at post clearance Audit & manifesting Unit.', 'DOPL271.pdf', '2016-04-26 10:18:57', '271', 'PAMU'),
(271, '01.01.97', 'Fees paid to customs resource persons for services rendered to organizations outside the customs Department.', 'DOPL272.pdf', '2016-04-26 10:18:57', '272', 'Training'),
(272, '07.02.97', 'Setting up a Computer Audit Team.', 'DOPL273.pdf', '2016-04-26 10:18:57', '273', 'ADP'),
(273, '04.04.97', 'Recovery of overtime charges Air Freight shipment (Export)', 'DOPL274.pdf', '2016-04-26 10:18:57', '274', 'Exports'),
(274, '.06.97', 'ACC Distriparks (Pvt) Ltd; procedure for Quality Inspection of goods exported by (BOI) enterprises.', 'DOPL275.pdf', '2016-04-26 10:18:57', '275', 'BOI'),
(275, '30.07.97', 'Sealing of LCL consignments of Garments for exports.', 'DOPL276.pdf', '2016-04-26 10:18:57', '276', 'PP&R'),
(276, '01.09.97', 'Instructions Re-certifying official documents', 'DOPL277.pdf', '2016-04-26 10:18:57', '277', 'PP&R'),
(277, '06.11.97', 'Computation of Turnover Tax.', 'DOPL278.pdf', '2016-04-26 10:18:57', '278', 'PP&R'),
(278, '10.11.97', 'Revision of custom service charges', 'DOPL279.pdf', '2016-04-26 10:18:57', '279', 'PP&R'),
(279, '15.12.97', 'Revenue Task Force', 'DOPL280.pdf', '2016-04-26 10:18:57', '280', 'PP&R'),
(280, '24.12.97', 'Guide Line of Granting Exemption', 'DOPL281.pdf', '2016-04-26 10:18:57', '281', 'PP&R'),
(281, '31.12.97', 'Examination of Export Cargo Panel Examinations.', 'DOPL282.pdf', '2016-04-26 10:18:57', '282', 'Export'),
(282, '02.01.97', 'Amendment of Stamp Duty Act', 'DOPL283.pdf', '2016-04-26 10:18:57', '283', 'PP&R'),
(283, '23.01.98', 'M/s.GTZ Claitborne International(Procedure for quality inspection of goods exported by air)', 'DOPL284.pdf', '2016-04-26 10:18:57', '284', 'Inpac Centre'),
(284, '26.02.98', 'Customs House Agents permits 1998', 'DOPL285.pdf', '2016-04-26 10:18:57', '285', 'PP&R'),
(285, '27.03.98', 'Goods and Services Tax Act No. 34 of 1996 ? Deffered payments Monitoring unit-operating instructions', 'DOPL285.pdf', '2016-04-26 10:18:57', '285', 'Infac/GST'),
(286, '27.03.98', 'Operational instructions ? Goods and Services Tax (GST)', 'DOPL286.pdf', '2016-04-26 10:18:57', '286', 'PP & R'),
(287, '31.03.98', 'M/s Dort Export Lanka Pvt.   No?.as Art Fernands for M/s LIE Clearance IC (Pri?.to be adjust get the Gran?.In??Courts.', 'DOPL287.pdf', '2016-04-26 10:18:57', '287', 'PP & R'),
(288, '01.04.98', 'Goods and services Tax (GST)- Instructions to officers at the Free Trade Zone Barriers', 'DOPL288.pdf', '2016-04-26 10:18:57', '288', 'PP & R'),
(289, '27.04.98', 'Revenue Task Force', 'DOPL289.pdf', '2016-04-26 10:18:57', '289', 'PP & R'),
(290, '29.04.98', 'Fees and charges payable for services of officers of Customs outside the hours of General Attendance', 'DOPL290.pdf', '2016-04-26 10:18:57', '290', 'PP & R'),
(291, '05.05.90', 'Task force on Bio diversity Protection', 'DOPL291.pdf', '2016-04-26 10:18:57', '291', 'PP & R'),
(292, '05.05.98', 'Laws governing the Movement of Fauna & Flora', 'DOPL292.pdf', '2016-04-26 10:18:57', '292', 'PP & R'),
(293, '07.05.98', 'Colour Image Scanner', 'DOPL293.pdf', '2016-04-26 10:18:57', '293', 'PP & R'),
(294, '13.07.98', 'Exchange of information W.C.O. Regional Liaison Office (RILO)', 'DOPL294.pdf', '2016-04-26 10:18:57', '294', 'PP & R'),
(295, '15.08.98', 'Release of  Consignments of  Paper', 'DOPL295.pdf', '2016-04-26 10:18:57', '295', 'PP&R'),
(296, '31.08.98', 'Export of Rice', 'DOPL296.pdf', '2016-04-26 10:18:57', '296', 'PP&R'),
(297, '01.09.98', 'Release of Terminal Equipments for performed use (Phones & Fax Machines)', 'DOPL297.pdf', '2016-04-26 10:18:57', '297', 'PP&R'),
(298, '04.09.98', 'Clearance of Imported Animals and Animal?s parts', 'DOPL298.pdf', '2016-04-26 10:18:57', '298', 'PP&R'),
(299, '08.09.98', 'Partial liberalization of import of Diesel Engineers.', 'DOPL299.pdf', '2016-04-26 10:18:57', '299', 'PP&R'),
(300, '02.10.98', 'Clearance of pharmaceuticals by SPC imported for state  Sector Institutions.', 'DOPL300.pdf', '2016-04-26 10:18:57', '300', 'PP&R'),
(301, '.10.98', 'Release of Consignment pending exchange control approval.', 'DOPL301.pdf', '2016-04-26 10:18:57', '301', 'PP&R'),
(302, '07.10.98', 'Central Intelligence Unit.', 'DOPL302.pdf', '2016-04-26 10:18:57', '302', 'PP&R'),
(303, '14.01.99', 'Information          customs  fees imposed on irregular imports and other detection', 'DOPL303.pdf', '2016-04-26 10:18:57', '303', 'PP&R'),
(304, '26.01.99', 'Importation of ?Black flear vatch (vicia sativa) described as ?Red Split Lentils? (lens Culinaris)', 'DOPL304.pdf', '2016-04-26 10:18:57', '304', 'PP&R'),
(305, '19.02.99', 'Levy of Cess on imported Sugar.', 'DOPL305.pdf', '2016-04-26 10:18:57', '305', 'PP&R'),
(306, '04.05.99', 'Import of Table Eggs (from India).', 'DOPL306.pdf', '2016-04-26 10:18:58', '306', 'PP&R'),
(307, ' ', 'Application of section 57 and 52 of the cus toms Ordinance Chapter 235', 'DOPL307.pdf', '2016-04-26 10:18:58', '307', 'PP&R'),
(308, '07.07.99', 'Fraudulent  Export of Garments.', 'DOPL308.pdf', '2016-04-26 10:18:58', '308', 'PP&R'),
(309, '.08.99', 'Enforcement of provisions of code of', 'DOPL309.pdf', '2016-04-26 10:18:58', '309', 'PP&R'),
(310, '07.09.99', 'Delivery of Cargo Imported for export purposed after normal working hours.', 'DOPL311.pdf', '2016-04-26 10:18:58', '311', 'PP&R'),
(311, '10.09.99', 'Delivery of Cargo Imported for export purposes after normal working hours.', 'DOPL312.pdf', '2016-04-26 10:18:58', '312', 'PP&R'),
(312, '29.09.99', 'Goods imported on C&F and insured locally calculation of               compound to arrive at CIF value.', 'DOPL313.pdf', '2016-04-26 10:18:58', '313', 'PP&R'),
(313, '30.09.99', 'Bio-diversity Protection  Unit', 'DOPL314.pdf', '2016-04-26 10:18:58', '314', 'PP&R(BPU)'),
(314, '30.09.99', 'Use of profer terms for the Biological material in customs', 'DOPL315.pdf', '2016-04-26 10:18:58', '315', 'PP&R'),
(315, '03.11.99', 'Permissible Articles/Goods and respective quantities in Passengers? Baggage.', 'DOPL316.pdf', '2016-04-26 10:18:58', '316', 'PP&R'),
(316, '06.12.99', 'Import of grapes, apples. and customs R.F.N.O.P.L.(361)', 'DOPL317.pdf', '2016-04-26 10:18:58', '317', 'PP&R'),
(317, '05.01.2000', 'Non Payment of customs duty and other levies by M/s. Royal Enforce of No. 412/4,', 'DOPL318.pdf', '2016-04-26 10:18:58', '318', 'PP&R'),
(318, '13.01.2000', 'Non payment of penalties by M/s. Ceylon  Grain Elevation Ltd; Tin No. 1340001045000 No.15, Rock House Lane,', 'DOPL319.pdf', '2016-04-26 10:18:58', '319', 'PP&R'),
(319, '28.01.2000', 'Customs operating instructions for the Sri Lanka Ports Authority inland clearance depot at No . 7 New Nuge Rd: Peliyagoda.', 'DOPL320.pdf', '2016-04-26 10:18:58', '320', 'CCED/'),
(320, '10.06.2000', 'The establishment of the Post clearance Audit   sto', 'DOPL321.pdf', '2016-04-26 10:18:58', '321', 'PP&R'),
(321, '23.02.2000', 'Application of section 144 of the customs ordinance against M/s. Super Apparel Group (Pvt) Ltd: Tin No. 114099180', 'DOPL322.pdf', '2016-04-26 10:18:58', '322', 'PP&R'),
(322, '29.03.2000', 'Section 163 of the Customs ordinance Order No. CA Application No. 259/99', 'DOPL323.pdf', '2016-04-26 10:18:58', '323', 'LAV'),
(323, '30.03.2000', 'Stamp Duty on Import Documents', 'DOPL324.pdf', '2016-04-26 10:18:58', '324', 'PP&R'),
(324, '31.03.2000', 'Transshipment documentation on FCL containers', 'DOPL325.pdf', '2016-04-26 10:18:58', '325', 'PP&R'),
(325, '06.04.2000', 'Imports (Quality control of ceramics) 2000 (SLSI) Import Control Regulations.', 'DOPL326.pdf', '2016-04-26 10:18:58', '326', 'PP&R'),
(326, '19.04.2000', '(Exchange Central Notice- Control Bank of Sri Lanka Notices ? Liberties the trade in gold', 'DOPL327.pdf', '2016-04-26 10:18:58', '327', 'PP&R'),
(327, '08.05.2000', 'Processing of additional cusdecs', 'DOPL328.pdf', '2016-04-26 10:18:58', '328', 'PL 336'),
(328, '11.05.2000', 'National Security Levy on Imported goods.', 'DOPL329.pdf', '2016-04-26 10:18:58', '329', 'PL 268'),
(329, '01.05.2000', 'Reporting Detection', 'DOPL330.pdf', '2016-04-26 10:18:58', '330', 'PL 368'),
(330, '09.05.2000', 'Non payment of cus otms duties and penalties by M/s.                  Corner, No. 58 Olcot Mw;', 'DOPL331.pdf', '2016-04-26 10:18:58', '331', 'PL 398'),
(331, '23.05.2000', 'Non-payment of custom duty, other levies by M/s. B          Lanka Apparel No. 411,        Road, Malabe.', 'DOPL332.pdf', '2016-04-26 10:18:58', '332', 'PL 398'),
(332, ' ', 'Non payment of Customs duty   and other                    levies by M/s. K.B.S. Apparel (Pvt) Ltd; No. 51,            Rd:  Gampaha', 'DOPL333.pdf', '2016-04-26 10:18:58', '333', 'PL 398'),
(333, ' ', 'Non payment of cus tom duty and other levies by M/s. Taj Garments Bxpo Ltd No. 55,               Rd: Colombo.', 'DOPL334.pdf', '2016-04-26 10:18:58', '334', 'PL 398'),
(334, '12.06.2000', 'Panel examinations of import and export cargo.', 'DOPL335.pdf', '2016-04-26 10:18:58', '335', 'PL 410'),
(335, '26.06.2000', 'Permit for the import of domestic animals or their', 'DOPL336.pdf', '2016-04-26 10:18:58', '336', 'PL 361'),
(336, '28.06.2000', 'Panel examinations outside the Port Premises', 'DOPL337.pdf', '2016-04-26 10:18:58', '337', 'PL 410'),
(337, '29.06.2000', 'Withdrawal of Customs facilities of 35 entrepreneurs', 'DOPL338.pdf', '2016-04-26 10:18:58', '338', 'PL 398'),
(338, '12.07.2000', 'Stoppage of Customs facilities M/s Lanka Synthetic Fibre Co. Ltd.,', 'DOPL339.pdf', '2016-04-26 10:18:58', '339', 'PL 398'),
(339, '28.07.2000', 'Notifications under the Coconut Development Act', 'DOPL340.pdf', '2016-04-26 10:18:58', '340', 'PL 95'),
(340, '28.07.2000', 'Order under Import & Export (Control) Act No.1 of 1969 Importing Rice', 'DOPL341.pdf', '2016-04-26 10:18:58', '341', 'PL 74'),
(341, '31.07.2000', 'Order under Section 2 of Goods and Service Tax (Amended) Act No.26.of 2000', 'DOPL342.pdf', '2016-04-26 10:18:58', '342', 'PL 287'),
(342, '01.08.2000', 'Central Intelligence Unit under Director General of Customs', 'DOPL343.pdf', '2016-04-26 10:18:58', '343', 'PL 368'),
(343, '07.08.2000', 'Stoppage of Customs facilities under Customs Ordinance and Galle Apparel Manufacturers', 'DOPL344.pdf', '2016-04-26 10:18:58', '344', 'PL 398'),
(344, '11.08.2000', 'Suspended imposition of GST on liquid petroleum gas', 'DOPL345.pdf', '2016-04-26 10:18:58', '345', 'PL 287'),
(345, '31.08.2000', 'Order under section 60A of the Customs Ordinance Chapter 235)', 'DOPL347.pdf', '2016-04-26 10:18:58', '347', 'PL 136'),
(346, '19.09.2000', 'Order under section 14 of the Sri Lanka Export Development Act No.40 of 1979 Cessions Scrap Copper, Nickel', 'DOPL348.pdf', '2016-04-26 10:18:59', '348', 'PL95'),
(347, '02.10.2000', 'Signing of duties of official Minutes, endorsements, submission, reports, statements, letters, documents etc.', 'DOPL349.pdf', '2016-04-26 10:18:59', '349', 'PL 418'),
(348, '15.11.2000', 'Stoppage of Customs facilities of M/s Expo Lanka Apparel at 411, Hiripitiya Road, Malabe', 'DOPL350.pdf', '2016-04-26 10:18:59', '350', 'PL 398'),
(349, ' ', 'Stoppage of Customs facilities of  M/s Serendib of ...............Ltd., at No.86, Koralawella, Moratuwa', 'DOPL351.pdf', '2016-04-26 10:18:59', '351', 'PL 398'),
(350, '17.11.2000', 'Identification of Passenger Baggage passes at the Air port', 'DOPL352.pdf', '2016-04-26 10:18:59', '352', 'PL 423'),
(351, '27.11.2000', 'Stoppage of Customs facilities of Ms Garveen Industries at No.88, Moors Lane, Eluwila, Panadura', 'DOPL353.pdf', '2016-04-26 10:18:59', '353', 'PL 398'),
(352, '07.12.2000', 'Delivery of Containerized Cargo at Containers Freight Stations located outside the Port', 'DOPL354.pdf', '2016-04-26 10:18:59', '354', 'PL 426'),
(353, '07.12.2000', 'Stoppage of Customs facilities of M/s W.P. Peter Appuhamy & Co. No.32, C.T.B. Building, Bodhiraja Mawatha, Colombo 11.', 'DOPL355.pdf', '2016-04-26 10:18:59', '355', 'PL 398 CCED'),
(354, '07.12.2000', 'Stoppage of Customs facilities of M/s Pacific Trading Company of No.184/5, Gintupitiya Street, Colombo 12', 'DOPL356.pdf', '2016-04-26 10:18:59', '356', 'PL 398'),
(355, '07.12.2000', 'Compilations of Dates of exports under various Trade Agreements and of exports of garments under various Quota categories', 'DOPL357.pdf', '2016-04-26 10:18:59', '357', 'PL 427'),
(356, '08.12.2000', 'Specific duty of Rs. 20 per KG on potatoes in line of the 35% duty', 'DOPL358.pdf', '2016-04-26 10:18:59', '358', 'PL 136'),
(357, '18.12.2000', 'Non Settlement of Guarantees by M/s Habib Bank AG Zurich of No.149-151, Main Street, Colombo 11', 'DOPL359.pdf', '2016-04-26 10:18:59', '359', 'PL 398'),
(358, '24.01.2001', 'Directive on Revenue Protection', 'DOPL360.pdf', '2016-04-26 10:18:59', '360', 'PL 430'),
(359, '31.01.2001', 'Stoppage of Customs facilities under Sec 18 (3) & 144 of the Co.for M/s Scoop Fashion (Pvt) Ltd., at No.220, Minuwangoda Road, Ekala, Ja-ela.', 'DOPL361.pdf', '2016-04-26 10:18:59', '361', 'PL 398'),
(360, '08.02.2001', 'National Security Levy & Exports Development Board Cess', 'DOPL362.pdf', '2016-04-26 10:18:59', '362', 'PL 136'),
(361, ' ', 'Surcharge on Crude Oil on certain imported items 07.02.2001-31.12.2001', 'DOPL363.pdf', '2016-04-26 10:18:59', '363', 'PL 136'),
(362, '21.02.2001', '........on surcharge both general and preferential from 21st Feb. ? 31st Dec.2001', 'DOPL364.pdf', '2016-04-26 10:18:59', '364', 'PL 136'),
(363, '26.02.2001', 'Stoppage of Customs Facilities under Sec. 18(3) and 144 of the Customs Ordinance for M/s Eden Int?l (Pvt) Ltd., at 194, Sri Ramanathan Mawatha, Colombo 13.', 'DOPL365.pdf', '2016-04-26 10:18:59', '365', 'PL 398'),
(364, '09.03.2001', 'Order under Imports ? Exports (Contract) Act No.1 of 1969', 'DOPL366.pdf', '2016-04-26 10:18:59', '366', 'PL 74'),
(365, '13.03.2001', 'Stoppage of Customs facilities of M/s Swifts Machine Co. No. 3 of New Moor Street, Colombo 12', 'DOPL367.pdf', '2016-04-26 10:18:59', '367', 'PL 398');
INSERT INTO `dopl_files` (`id`, `date`, `title`, `url`, `date_modified`, `no`, `branch`) VALUES
(366, '21.03.2001', 'Goods for commercial purposes imported as Baggage of passengers', 'DOPL368.pdf', '2016-04-26 10:18:59', '368', 'PP & R'),
(367, '30.03.2001', 'Revision of NSL on Imported goods (from 6.5% to 7/5%)', 'DOPL369.pdf', '2016-04-26 10:18:59', '369', 'PL 268'),
(368, '02.04.2001', 'Restrictions on Importations of animals and animal products from FMD infected countries', 'DOPL370.pdf', '2016-04-26 10:18:59', '370', 'PL 361'),
(369, '19.04.2001', 'Regulations on identically Modified Foods', 'DOPL371.pdf', '2016-04-26 10:18:59', '371', 'PL 361'),
(370, '25.04.2001', 'Stoppage of Customs facilities of M/s East Holdings (Pvt) Ltd., No.03, Pelawatta Road, Nugegoda', 'DOPL372.pdf', '2016-04-26 10:18:59', '372', 'PL 398'),
(371, '25.04.2001', 'Stoppage of Customs facilities of M/s Yes Freighters, No.65, Galkaruwa Road, Gorah and Keselwatta', 'DOPL373.pdf', '2016-04-26 10:18:59', '373', 'PL 398'),
(372, '26.06.2001', 'Submissions of Cash Sheet & Abstracts to the Accounts Division', 'DOPL374.pdf', '2016-04-26 10:18:59', '374', ' '),
(373, '19.07.2001', 'Officers attendence, Leave', 'DOPL375.pdf', '2016-04-26 10:18:59', '375', 'Admin'),
(374, '25.07.2001', 'Home Security items', 'DOPL376.pdf', '2016-04-26 10:18:59', '376', 'PL 447'),
(375, '13.08.2001', 'Imports of spare parts by Sri Lanka Air Lines Lted., section 3(2) of the N.S.L. Act', 'DOPL377.pdf', '2016-04-26 10:18:59', '377', 'PL 268'),
(376, '24.08.2001', 'War risk surcharge levy', 'DOPL378.pdf', '2016-04-26 10:18:59', '378', 'PL 136'),
(377, '03.09.2001', 'Cess on Shrimp and Prawn exports', 'DOPL379.pdf', '2016-04-26 10:18:59', '379', 'PL 95'),
(378, '17.09.2001', 'Non payment of certain duty and other levies by M/s Frostair Industries (Pvt) Ltd.,', 'DOPL380.pdf', '2016-04-26 10:18:59', '380', 'PL 398'),
(379, '17.09.2001', 'GST ? exemption of Accessories and parts for Tractors used for agricultural work', 'DOPL381.pdf', '2016-04-26 10:18:59', '381', 'PL 287'),
(380, '18.09.2001', 'Customs operating instruct8ions for the UPB (Sea) clearing warehouses in the SLPA inland depot.', 'DOPL382.pdf', '2016-04-26 10:18:59', '382', 'PL 84'),
(381, '17.10.2001', 'National Security Levy on Imported goods (reduced from 7.5% to 6.5%)', 'DOPL383.pdf', '2016-04-26 10:19:00', '383', 'PL 268'),
(382, '17.10.2001', 'Stamp duty', 'DOPL384.pdf', '2016-04-26 10:19:00', '384', 'PL 402'),
(383, ' ', 'Imposing of Import Control License requirement for importation of cigarette papers', 'DOPL385.pdf', '2016-04-26 10:19:00', '385', 'PL 74'),
(384, ' ', 'Statistical data in respect of short shipment', 'DOPL386.pdf', '2016-04-26 10:19:00', '386', 'PL 21'),
(385, '16.11.2001', 'Imports (Standardization and quality control) regulation 2001', 'DOPL387.pdf', '2016-04-26 10:19:00', '387', 'PL 74'),
(386, '19.11.2001', 'Stoppage of Customs Facilities of M/s Tulip Industries, No.05, Sri Dharmmadhara Mawatha, Ratmalana', 'DOPL388.pdf', '2016-04-26 10:19:00', '388', 'PL 398'),
(387, '10.12.2001', 'Establishment of a Customs Bonded warehouse M/s Global Transportation & Logistics (Pvt) Ltd.,', 'DOPL389.pdf', '2016-04-26 10:19:00', '389', 'PL 453'),
(388, '02.01.2002', 'Surcharge on Import Duty', 'DOPL390.pdf', '2016-04-26 10:19:00', '390', 'PL 136'),
(389, '02.01.2002', 'Surcharge on Edible Oil', 'DOPL391.pdf', '2016-04-26 10:19:00', '391', 'PL 136'),
(390, '17.01.2002', 'Imposing of import control license requirement in Cashew nuts in shell', 'DOPL392.pdf', '2016-04-26 10:19:00', '392', 'PL 74'),
(391, '22.01.2002', 'The Customs Ordinance (Chapter 235) order under section 10A Removal of 40% surcharges on customs duty to rice', 'DOPL393.pdf', '2016-04-26 10:19:00', '393', 'PL 136'),
(392, '30.01.2002', 'The Customs Ordinance (Chapter 235) Order under section 10 A removal of surcharge of Rs.20 per Kg  for edible oil.', 'DOPL394.pdf', '2016-04-26 10:19:00', '394', 'PL 136'),
(393, '01.02.2002', 'Excise (special provisions) act No.13 of 1989 order under Section 3 excise duty for petrol & diesel', 'DOPL395.pdf', '2016-04-26 10:19:00', '395', 'PL 137'),
(394, '14.02.2002', 'Setting up of a Trade and Industry Relation Unit', 'DOPL396.pdf', '2016-04-26 10:19:00', '396', 'PL 138'),
(395, '14.02.2002', 'Excise (Special Provisions) Act No.13 of 1989 order under section 3', 'DOPL397.pdf', '2016-04-26 10:19:00', '397', 'PL 139'),
(396, '22.02.2002', 'National Security Levy', 'DOPL398.pdf', '2016-04-26 10:19:00', '398', 'PL 268'),
(397, '04.03.2002', 'The Customs Ordinance  (Chapter 235) order under sec. 10A', 'DOPL399.pdf', '2016-04-26 10:19:00', '399', 'PL 136'),
(398, '22.03.2002', 'Excise (Special provisions) Act No.13 of 1989 order under section 3 (Budget proposal)', 'DOPL400.pdf', '2016-04-26 10:19:00', '400', 'PL'),
(399, '22.03.2002.', 'Surcharge removal of budget proposal', 'DOPL401.pdf', '2016-04-26 10:19:00', '401', 'PL 136'),
(400, '01.04.2002', 'Surcharge extension up to 14.04.2002', 'DOPL402.pdf', '2016-04-26 10:19:00', '402', 'PL 136'),
(401, '03.04.2002', 'Surcharge amendment for oils', 'DOPL403.pdf', '2016-04-26 10:19:00', '403', 'PL 287'),
(402, '04.04.2002', 'Entrepot Trade', 'DOPL404.pdf', '2016-04-26 10:19:00', '404', 'PL 93'),
(403, '11.04.2002', 'Surcharge  of 20% on customs duty', 'DOPL405.pdf', '2016-04-26 10:19:00', '405', 'PL 136'),
(404, ' ', 'Notice under exchange control Act Import & Export of Sri Lanka  ...........', 'DOPL406.pdf', '2016-04-26 10:19:00', '406', 'PL 120'),
(405, '30.04.2002', 'Abolition of Stamp Duty and Introduction of Post & Airport Development Levy', 'DOPL407.pdf', '2016-04-26 10:19:00', '407', ' '),
(406, ' ', 'Internal Transfers of the Dept.', 'DOPL408.pdf', '2016-04-26 10:19:00', '408', ' '),
(407, '02.05.2002', 'Stoppage of Customs facilities order under section 144 of the Customs Ordinance (Chapter 235).  M/s Balakanda Herbal Pvt. Ltd.,) No.102, Kandy Road, Wewaldeniya.  (Not issued)', 'DOPL409.pdf', '2016-04-26 10:19:00', '409', ' '),
(408, '07.05.2002', 'Passenger Baggage Exemption (Inward)', 'DOPL410.pdf', '2016-04-26 10:19:01', '410', ' '),
(409, '29.05.2002', 'Import & Export (Control) Act No.01 of 1969 Licence items', 'DOPL411.pdf', '2016-04-26 10:19:01', '411', 'ICL'),
(410, '30.05.2002', 'Stopage of Customs facilities of M/s Tri Star Apparel (Exports) Pvt. Ltd.,', 'DOPL412.pdf', '2016-04-26 10:19:01', '412', ' '),
(411, '04.06.2002', 'Representation at Customs inquiries', 'DOPL413.pdf', '2016-04-26 10:19:01', '413', ' '),
(412, '06.06.2002', 'Stoppage of Customs facilities of M/s Eagle Tea Exports & Enterprises (Pvt) Ltd., No.1001/22, 3/1, Key Road, Colombo 02, No.191, Hendala Road, Wattala.', 'DOPL414.pdf', '2016-04-26 10:19:01', '414', ' '),
(413, '06.06.2002', 'Stoppage of Custom facilities of M/s. Muhaz Freighters 112/ 34, Vauxhall Street, Colombo 02.', 'DOPL415.pdf', '2016-04-26 10:19:01', '415', ' '),
(414, '10.06.2002', 'Bangkok Agreement ? Amendment', 'DOPL416.pdf', '2016-04-26 10:19:01', '416', ' '),
(415, '16.07.2002', 'Excise (Special Prov.) change of rates on 27.10', 'DOPL417.pdf', '2016-04-26 10:19:01', '417', ' '),
(416, '24.07.2002', 'Importation of Pharmaceuticals', 'DOPL418.pdf', '2016-04-26 10:19:01', '418', 'PL 486'),
(417, '31.07.2002', 'Operating Instructions of VAT', 'DOPL419.pdf', '2016-04-26 10:19:01', '419', ' '),
(418, '31.07.2002', 'Excise Duty change HS 2402/2710', 'DOPL420.pdf', '2016-04-26 10:19:01', '420', ' '),
(419, '01.08.2002', 'Grant of duty or tax free concessions to paral upto the value of Rs. 10000/- recovered by paral or courier ? Item No. 42 of list of exemption (Import ) RP03/01', 'DOPL421.pdf', '2016-04-26 10:19:01', '421', ' '),
(420, '14.08.2002', 'Withdrawal of customs facilities of M/s. Sert Lanka (Pvt) Ltd; Naththandiya.', 'DOPL422.pdf', '2016-04-26 10:19:01', '422', ' '),
(421, '16.08.2002', 'Goods & vehicles to ?Sales Yard?', 'DOPL423.pdf', '2016-04-26 10:19:01', '423', ' '),
(422, '28.08.2002', 'Partial waiver of customs duty on ?Smoking Tobacco? & ?Shoe Sales?', 'DOPL424.pdf', '2016-04-26 10:19:01', '424', ' '),
(423, '06.9.2002', 'Importation of Left hand drive vehicles.', 'DOPL425.pdf', '2016-04-26 10:19:01', '425', ' '),
(424, '06.09.2002', 'Stoppage of Customs facilities of M/s. United Motors Lanka Ltd: Hyde Park Corner, Colombo 02.', 'DOPL426.pdf', '2016-04-26 10:19:01', '426', ' '),
(425, '23.09.2002', 'Importation of used x-Ray machine and Radiation sence.', 'DOPL427.pdf', '2016-04-26 10:19:01', '427', ' '),
(426, '26.09.2002', 'Imports and exports control Act No. 01 of 1969', 'DOPL428.pdf', '2016-04-26 10:19:01', '428', 'ICL'),
(427, '27.09.2002', 'Amendments to    regulations removal of surcharge from few items.', 'DOPL429.pdf', '2016-04-26 10:19:01', '429', ' '),
(428, '27.09.2002', 'Change of Duty', 'DOPL430.pdf', '2016-04-26 10:19:01', '430', ' '),
(429, '30.09.2002', 'RPO 5/2002 ? PAL on Electronic Industry', 'DOPL431.pdf', '2016-04-26 10:19:01', '431', ' '),
(430, '07.10.2002', 'Computation of VAT and Excise (SP) Duty.', 'DOPL432.pdf', '2016-04-26 10:19:01', '432', ' '),
(431, '15.10.2002', 'Import Export Control Regulation No. 02 of 2002', 'DOPL433.pdf', '2016-04-26 10:19:01', '433', ' '),
(432, '16.10.2002', 'Handing over of files and other items of goods when going an transfer.', 'DOPL434.pdf', '2016-04-26 10:19:01', '434', ' '),
(433, '18.10.2002', 'Excise duty changer on HS 2402', 'DOPL435.pdf', '2016-04-26 10:19:01', '435', ' '),
(434, '22.10.2002', 'Exemption of Cigar Tobacco imported for processing and re-exports from PAL.', 'DOPL436.pdf', '2016-04-26 10:19:01', '436', 'PL 474'),
(435, '22.10.2002', 'Demand guarantees issued by licensed Commercial Banks.', 'DOPL437.pdf', '2016-04-26 10:19:01', '437', ' '),
(436, '29.10.2002', 'RPO 06/2002 ? change of duty (Chap 15)', 'DOPL438.pdf', '2016-04-26 10:19:01', '438', ' '),
(437, '12.12.2002', 'Release of Import consignments on  Personal Guarantees.', 'DOPL439.pdf', '2016-04-26 10:19:01', '439', ' '),
(438, '24.12.2002', '- PAL -', 'DOPL440.pdf', '2016-04-26 10:19:01', '440', ' '),
(439, '31.12.2002', 'Reimbursement of the Customs O/T fund from case proceeds.', 'DOPL441.pdf', '2016-04-26 10:19:01', '441', ' '),
(440, '31.12.2002', 'VAT ? Amendment', 'DOPL442.pdf', '2016-04-26 10:19:01', '442', ' '),
(441, '31.12.2002', 'Surcharge an Customs Duty', 'DOPL443.pdf', '2016-04-26 10:19:01', '443', ' '),
(442, '13.01.2003', 'Calculation of value of used M/vehicles', 'DOPL444.pdf', '2016-04-26 10:19:01', '444', ' '),
(443, '18.02.2003', 'Disposal of forfeited vehicles & other goods.', 'DOPL445.pdf', '2016-04-26 10:19:01', '445', ' '),
(444, '21.02.2003', 'Clearance procedure for express consignments (Imports) DHL ? Keels Bonded Warehouse Ja.Ela.', 'DOPL446.pdf', '2016-04-26 10:19:01', '446', 'DHL'),
(445, '24.02.2003', 'Implementation of Electronic Data Interchange (EDI).', 'DOPL447.pdf', '2016-04-26 10:19:01', '447', ' '),
(446, '07.03.2003', 'VAT on Electricity operated Motor Bicycles.', 'DOPL448.pdf', '2016-04-26 10:19:01', '448', ' '),
(447, '13.03.2003', 'Stoppage of customs facilities of M/s. M&M Apparel (Pvt) Ltd', 'DOPL449.pdf', '2016-04-26 10:19:02', '449', ' '),
(448, '26.03.2003', 'Cess on Exports ? Gazette ? 1298/17 of 06.03.2003', 'DOPL450.pdf', '2016-04-26 10:19:02', '450', ' '),
(449, '01.04.2003', 'Passengers? Baggage ? Exemption Inward regulations.', 'DOPL451.pdf', '2016-04-26 10:19:02', '451', ' '),
(450, '09.04.2003', 'Excise (Special Provisions ) orders.', 'DOPL452.pdf', '2016-04-26 10:19:02', '452', ' '),
(451, '21.04.2003', 'Valuation committee', 'DOPL453.pdf', '2016-04-26 10:19:02', '453', ' '),
(452, '22.05.2003', 'Stoppage of Customs facilities of M/s. Econopack Industries (Pvt) Ltd ? Gangarama Rd: Werahera, Borelesgamuwa.', 'DOPL455.pdf', '2016-04-26 10:19:02', '455', ' '),
(453, '20.06.2003', 'Customs Investigation Bureau', 'DOPL456.pdf', '2016-04-26 10:19:02', '456', ' '),
(454, '24.06.2003', 'Imports & Export(Control) Act No. 01 of 1969 ? Regulation No. of 2003', 'DOPL457.pdf', '2016-04-26 10:19:02', '457', ' '),
(455, '30.06.2003', 'Import & Export (Car list) Act No. 01 of 1969 (ICL request)', 'DOPL458.pdf', '2016-04-26 10:19:02', '458', ' '),
(456, '07.07.2003', 'Import & Export Control Act amendment to the SIL regulations.', 'DOPL459.pdf', '2016-04-26 10:19:02', '459', ' '),
(457, '25.07.2003', 'WIO ? Valuation', 'DOPL460.pdf', '2016-04-26 10:19:02', '460', ' '),
(458, '04.08.2003', 'Operating Instructions for self ground handling of  Import and Export Cargo op. by M/s. Expo Aviation (Pvt) Ltd.', 'DOPL461.pdf', '2016-04-26 10:19:02', '461', ' '),
(459, '05.08.2003', 'Excise (Special Provisions) Act Charge of Ex Duty in HS 27.10', 'DOPL462.pdf', '2016-04-26 10:19:02', '462', ' '),
(460, '27.08.2003', 'Stoppage of Customs facilities of M/s. Combo Lanka Ind. (Pvt) Ltd.', 'DOPL463.pdf', '2016-04-26 10:19:02', '463', ' '),
(461, '27.08.2003', 'Excise (Special Provisions) Act  change of E/D in HS code 2402.', 'DOPL464.pdf', '2016-04-26 10:19:02', '464', ' '),
(462, '14.10.2003', 'Recovery of PAL.', 'DOPL465.pdf', '2016-04-26 10:19:02', '465', 'PAL'),
(463, '31.10.2003', 'Procedure to be adopted for detained /seized containers.', 'DOPL466.pdf', '2016-04-26 10:19:02', '466', ' '),
(464, '03.11.2003', 'Imports & Export Control Act No. 01 of 1969.- Import Control License .', 'DOPL467.pdf', '2016-04-26 10:19:02', '467', 'ICL'),
(465, '30.12.2003', 'Depreciation Table for the valuation of used motor vehicles,  w.e.f. 01.01.2004', 'DOPL468.pdf', '2016-04-26 10:19:02', '468', 'Depreciation table'),
(466, '30.12.2003', 'Recovery of  Surcharge on Customs Duty  w.e.f. 01.01.2004', 'DOPL469.pdf', '2016-04-26 10:19:02', '469', ' '),
(467, '31.12.2003', 'Recovery of VAT w.e.f.01.01.2004', 'DOPL470.pdf', '2016-04-26 10:19:02', '470', ' '),
(468, '31.12.2003', 'Recovery of Excise Duty w.e.f. 01.01.2004', 'DOPL471.pdf', '2016-04-26 10:19:02', '471', ' '),
(469, '27.07.2004', 'Import & Export Control Act No.01 Advance Payment to be made within 90 days.', 'DOPL472.pdf', '2016-04-26 10:19:02', '472', ' '),
(470, '23.02.2004', 'Medicines & medical equipments', 'DOPL473.pdf', '2016-04-26 10:19:02', '473', ' '),
(471, '24.02.2004', 'Out breaks of Highly pathogenic influenza restriction of imports.', 'DOPL474.pdf', '2016-04-26 10:19:02', '474', ' '),
(472, '09.03.2004', 'Operating instruction for Multi country Cargo Consolidation Enterpot trade and container Fright station by  M/s. Maritime Holding Ltd.', 'DOPL475.pdf', '2016-04-26 10:19:02', '475', ' '),
(473, '26.03.2004', 'ADP Division may be instructed to correct Hs rates of duty fro good classifiable with HS Heading 22.08', 'DOPL476.pdf', '2016-04-26 10:19:02', '476', ' '),
(474, '19.04.2004', 'Import and Export (Control) Act Regulation (ICL) G.No. 1331/23 on 12.03.2004.', 'DOPL477.pdf', '2016-04-26 10:19:02', '477', ' '),
(475, '01.07.20004', 'Over time ? Other than those falling under the                      OT scheme', 'DOPL478.pdf', '2016-04-26 10:19:02', '478', 'OT'),
(476, '28.07.2004', 'Re-working of transshipment cargo (periodicals) destined to Chennai Via Colombo from U.K. at Air Cargo Village, by M/s. Bridges Worldwide (Pvt) Ltd.', 'DOPL479.pdf', '2016-04-26 10:19:02', '479', 'Air Cargo'),
(477, '17.08.2004', 'Release of films, photographer equipment or any material, equipment or accessory for the production or exhibition of films, imported into Sri Lanka.', 'DOPL480.pdf', '2016-04-26 10:19:02', '480', 'Imports'),
(478, '18.08.2004', 'New passenger baggage defaintion  Notice (Customs 296)  w.e.f. 01.09.2004', 'DOPL481.pdf', '2016-04-26 10:19:02', '481', 'Baggage'),
(479, '21.09.2004', 'RPO 02/2004', 'DOPL482.pdf', '2016-04-26 10:19:02', '482', 'PP&R'),
(480, '27.09.2004', 'Changers of excise duty for cigarettes.', 'DOPL483.pdf', '2016-04-26 10:19:02', '483', 'Excise'),
(481, '15.10.2004', 'Depreciation table for the valuation of used Motor Vehicles.', 'DOPL484.pdf', '2016-04-26 10:19:02', '484', 'PP&R (Depreciation table for used  vehicles)'),
(482, '15.10.2004', 'Order made under the excise (special provision) Act No. 13 of 1989.', 'DOPL485.pdf', '2016-04-26 10:19:02', '485', 'PP&R (Excise)'),
(483, '29.10.2004', 'Order made by Her Excellency the President under Section 14(1) of the Sri Lanka Export Development Act No. 40 of 1979 ? Import & Export cess for rubber products and raw rubber.', 'DOPL486.pdf', '2016-04-26 10:19:02', '486', 'PP&R - Cess'),
(484, '03.11.2004', 'Recovery of EDB ? Cess', 'DOPL487.pdf', '2016-04-26 10:19:02', '487', 'PP&R'),
(485, '16.11.2004', 'Stoppage of Customs facilities of Lion Air (Pvt) Ltd;  - CBSU/Misc/2003/09C', 'DOPL488.pdf', '2016-04-26 10:19:02', '488', 'CBCU'),
(486, '18.11.2004', 'Computation of Levies', 'DOPL489.pdf', '2016-04-26 10:19:02', '489', 'PP&R'),
(487, '18.11.2004', 'Amend to Excise (special provisions) Act No. 13 of 1989.', 'DOPL490.pdf', '2016-04-26 10:19:03', '490', 'PP&R'),
(488, '22.11.2004', 'Increase of Port and Air Port Development Levy (PAL).', 'DOPL491.pdf', '2016-04-26 10:19:03', '491', 'PP&R'),
(489, '25.11.2004', 'Reduction of VAT Rate on Consumer Goods.', 'DOPL492.pdf', '2016-04-26 10:19:03', '492', 'PP&R'),
(490, '30.12.2004', 'Imposing of social responsibility Levy', 'DOPL493.pdf', '2016-04-26 10:19:03', '493', 'PP&R'),
(491, '30.12.2004', 'Calculation formula.', 'DOPL494.pdf', '2016-04-26 10:19:03', '494', 'PP&R'),
(492, '30.12.2004', 'Imports & Exports (Control) Act No. 01 if 1969 ? Regulations under sections 4(3), 14 and 20.', 'DOPL495.pdf', '2016-04-26 10:19:03', '495', 'PP&R'),
(493, '31.12.2004', 'Port & Airport Development Levy on imports for processing and re-export.', 'DOPL496.pdf', '2016-04-26 10:19:03', '496', 'PP&R'),
(494, '31.12.2004', 'The cus                                                                                                                                                                                                 ', 'DOPL497.pdf', '2016-04-26 10:19:03', '497', 'PP&R'),
(495, '03.01.2005', 'Order under article 10 of schedule ?E? of the customs (Amendment) Act No. 2 of 2003 ? Calculation of value of used Motor Vehicles.', 'DOPL498.pdf', '2016-04-26 10:19:03', '498', 'PP&R'),
(496, '04.01.2005', 'VAT rate changes.', 'DOPL499.pdf', '2016-04-26 10:19:03', '499', 'PP&R'),
(497, '06.01.2005', 'Expeditions clearance of goods received/imported for humanitarian assistance to the victims of the TSUNAMI disaster.', 'DOPL500.pdf', '2016-04-26 10:19:03', '500', 'Imports'),
(498, '27.01.2005', 'Operational  instruction Import/Export warehouse at Terminal ? II Air Cargo Village, Katunayake.- Operated by M/s. Expo', 'DOPL501.pdf', '2016-04-26 10:19:03', '501', 'Air Cargo'),
(499, '03.02.2005', 'VAT Rate Changes', 'DOPL502.pdf', '2016-04-26 10:19:03', '502', 'PP&R (VAT)'),
(500, '21.02.2005', 'Examination of Baggage of VIPP at the Air Port', 'DOPL503.pdf', '2016-04-26 10:19:03', '503', 'PP&R'),
(501, '24.02.2005', 'Vat Rate Changes (Gold) ? (Gold coins)', 'DOPL504.pdf', '2016-04-26 10:19:03', '504', 'PP&R'),
(502, '14.03.2005', 'Recovery of EDB Cess (Plantation )', 'DOPL505.pdf', '2016-04-26 10:19:03', '505', 'PP&R'),
(503, '21.03.2005', 'Stoppage of customs facilities of M/s. Unilak Fashion (Pvt) Ltd.', 'DOPL506.pdf', '2016-04-26 10:19:03', '506', 'PP&R'),
(504, '21.03.2005', 'Stoppage of customs facilities of M/s. Uni  Grand Lanka Ltd.', 'DOPL507.pdf', '2016-04-26 10:19:03', '507', 'PP&R'),
(505, '29.03.2005', 'Statistical data in respect of exports under customs purview.', 'DOPL508.pdf', '2016-04-26 10:19:03', '508', 'Export Division'),
(506, '31.03.2005', 'Security clearance of goods.', 'DOPL509.pdf', '2016-04-26 10:19:03', '509', 'PP&R'),
(507, '11.04.2005', 'Charges in excise  duly of Cigarettes.', 'DOPL510.pdf', '2016-04-26 10:19:03', '510', 'PP&R'),
(508, '06.05.2005', 'Imposition of export cess for desiccated coconut.', 'DOPL511.pdf', '2016-04-26 10:19:03', '511', 'PP&R'),
(509, '06.05.2005', 'Import of Meat and Meat products into Sri Lanka.', 'DOPL512.pdf', '2016-04-26 10:19:03', '512', 'PP&R'),
(510, '31.05.2001', 'Goods consigned to Diplomatic missions/international organizations affiliated to the united ration', 'DOPL513.pdf', '2016-04-26 10:19:03', '513', 'PP&R'),
(511, '09.06.2005', 'Implementation of Pakistan ? Sri Lanka Free Trade Agreement.', 'DOPL514.pdf', '2016-04-26 10:19:03', '514', 'PP&R'),
(512, '09.06.2005', 'RPO 01/2005', 'DOPL515.pdf', '2016-04-26 10:19:03', '515', 'PP&R'),
(513, '30.06.2005', 'Enforcement Committee.', 'DOPL516.pdf', '2016-04-26 10:19:03', '516', 'PP&R'),
(514, '04.07.2005', 'Imports & Exports (Control) Act No. 01 of 1969 ? Regulations under sections 4(3), 14 and 20.', 'DOPL517.pdf', '2016-04-26 10:19:03', '517', 'PP&R'),
(515, '20.07.2005', 'Amendment to the value added tax Act on imports for garments manufacturing industries.', 'DOPL518.pdf', '2016-04-26 10:19:03', '518', 'Bonds'),
(516, '25.07.2005', 'Stoppage of customs facilities of M/s. Nayana Saloon.', 'DOPL519.pdf', '2016-04-26 10:19:03', '519', 'Bonds'),
(517, '28.07.2005', 'Vat exemption  on Import of Gem, Gold and Diesel..', 'DOPL520.pdf', '2016-04-26 10:19:03', '520', 'PP&R (Vat)'),
(518, '04.08.2005', 'Excise (special provision Act No.13 of 1989 ? Order under section 03', 'DOPL521.pdf', '2016-04-26 10:19:03', '521', 'PP&R(Excise)'),
(519, '04.08.2005', 'Revenue protection order No. 02/2005', 'DOPL522.pdf', '2016-04-26 10:19:03', '522', 'PP&R'),
(520, '08.05.2005', 'Vat exemption on import and supply of liquid Petroleum Gas and powdered milk.', 'DOPL523.pdf', '2016-04-26 10:19:03', '523', 'PP&R(Vat)'),
(521, '12.08.2005', 'Export cess on Waste and scrap', 'DOPL524.pdf', '2016-04-26 10:19:03', '524', 'PP&R (cess)'),
(522, '16.08.2005', 'Negative list and exemptions under value added tax.', 'DOPL525.pdf', '2016-04-26 10:19:03', '525', 'PP&R (Vat)'),
(523, '26.08.2005', 'Vat exemption.', 'DOPL526.pdf', '2016-04-26 10:19:03', '526', 'PP&R (Vat)'),
(524, '14.09.2005', 'Stoppage of customs facilities of M/s. Multi Sacks (Pvt) Ltd.', 'DOPL527.pdf', '2016-04-26 10:19:03', '527', 'PP&R'),
(525, '14.09.2005', 'Stoppage of customs facilities of M/s. K.C. Manufacturing (Pvt) Ltd.', 'DOPL528.pdf', '2016-04-26 10:19:03', '528', 'PP&R'),
(526, '04.10.2005', 'Imports  & Export Control Act No. 01 of 1989 ? Regulations Under Sec. 4/37 14 and 20', 'DOPL529.pdf', '2016-04-26 10:19:04', '529', 'PP&R (Import Control)'),
(527, '14.10.2005', 'Bonded Warehouse of M/s. Colombo Cargo Express(Pvt) Ltd; Act No. 414/18 K-Cyril C Perera Mawatha, Colombo 13.', 'DOPL530.pdf', '2016-04-26 10:19:04', '530', 'Bonds'),
(528, '08.11.2005', 'Excise (Special Provision) Act No. 13 of 1989 order under Section 3-3(3) ? Excise Duty.', 'DOPL531.pdf', '2016-04-26 10:19:04', '531', 'PP&R (Excise)'),
(529, '1/10/1900', 'Recovery of EDB  Cess', 'DOPL532.pdf', '2016-04-26 10:19:04', '532', 'PP&R(Cess)'),
(530, '08.11.2005', 'RPO/3/2005', 'DOPL533.pdf', '2016-04-26 10:19:04', '533', 'PP&R'),
(531, '21.11.2005', 'Vat exemption.', 'DOPL534.pdf', '2016-04-26 10:19:04', '534', 'PP&R (Vat)'),
(532, '25.11.2005', 'Vat Exemption', 'DOPL535.pdf', '2016-04-26 10:19:04', '535', 'PP&R (Vat)'),
(533, '01.12.2005', 'Classification of day old chicks for        in HS Code 0105.11.01', 'DOPL536.pdf', '2016-04-26 10:19:04', '536', 'PP&R'),
(534, '05.12.2005', 'Payment of Income Tax by Development of Customs on Official Emoluments paid to employees.', 'DOPL537.pdf', '2016-04-26 10:19:04', '537', 'PP&R'),
(535, '08.12.2005', 'Excise (special provision) Act No. 13 of 19879 order under section 3. ? Excise duty.', 'DOPL538.pdf', '2016-04-26 10:19:04', '538', 'PP&R'),
(536, '29.12.2005', 'Calculation formulae for Fiscal Levies on Imported Goods.', 'DOPL539.pdf', '2016-04-26 10:19:04', '539', 'PP&R'),
(537, '29.12.2005', 'Recovery of surcharge.', 'DOPL540.pdf', '2016-04-26 10:19:04', '540', 'PP&R (Surcharge)'),
(538, '29.12.2005', 'Increase of the Rate of Social Responsibility Levy to 1.00%', 'DOPL541.pdf', '2016-04-26 10:19:04', '541', 'PP&R (SRL)'),
(539, '29.12.2005', 'Increase of the Rate pf Port and Airport  Development Levy to 2.5%', 'DOPL542.pdf', '2016-04-26 10:19:04', '542', 'PP&R (PAL)'),
(540, '01.02.2006', 'Revenue Protection Order No. 01/2006', 'DOPL543.pdf', '2016-04-26 10:19:04', '543', 'PP&R'),
(541, '20.02.2006', 'Stoppage of Customs facilities of M/s. Nisha Garments.', 'DOPL544.pdf', '2016-04-26 10:19:04', '544', 'Imfac'),
(542, '20.02.2006', 'Stoppage of Customs facilities of M/s. Sanira Garments (Pvt) Ltd.', 'DOPL545.pdf', '2016-04-26 10:19:04', '545', 'Infac'),
(543, '20.02.2006', 'Stoppage of customs facilities of M/s. Time Garments (Pvt) Ltd.', 'DOPL546.pdf', '2016-04-26 10:19:04', '546', 'Infac'),
(544, '02.03.2006', 'Restoration of Customs facilities of M/s. Time Garments (Pvt) Ltd.', 'DOPL547.pdf', '2016-04-26 10:19:04', '547', 'Infac'),
(545, '08.03.2006', 'RPO 02/2006', 'DOPL548.pdf', '2016-04-26 10:19:04', '548', 'PP&R'),
(546, '30.03.2006', 'Export cess on waste and scrap', 'DOPL549.pdf', '2016-04-26 10:19:04', '549', 'PP&R (Cess)'),
(547, '30.03.2006', 'Passenger Baggage exemptions ? Inward regulation (Cigerettes)', 'DOPL550.pdf', '2016-04-26 10:19:04', '550', 'PP&R (Baggage)'),
(548, '24.04.2006', 'Export cess on Tea', 'DOPL551.pdf', '2016-04-26 10:19:04', '551', 'PP&R'),
(549, '26.04.2006', 'Recovery of examination fees and overtime charges for services of  officers of customs.', 'DOPL552.pdf', '2016-04-26 10:19:04', '552', 'PP&R (OT)'),
(550, '29.05.2006', 'Regulations order import and export control Act No. 01 of 1969', 'DOPL553.pdf', '2016-04-26 10:19:04', '553', 'PP&R (Import Control)'),
(551, '07.06.2006', 'RPO/03/2006', 'DOPL554.pdf', '2016-04-26 10:19:04', '554', 'PP&R'),
(552, '09.06.2006', 'Excise Tax', 'DOPL555.pdf', '2016-04-26 10:19:04', '555', 'PP&R'),
(553, '23.06.2006', 'The Imports (Standardization ) and quality control) regulations 2006. (SLSL)', 'DOPL556.pdf', '2016-04-26 10:19:04', '556', 'PP&R'),
(554, '26.06.2006', 'Export of activated', 'DOPL557.pdf', '2016-04-26 10:19:04', '557', 'PP&R'),
(555, '29.06.2006', 'Stoppage of customs facilities of M/s. Laughs Lanka Gas (Pvt) Ltd.', 'DOPL558.pdf', '2016-04-26 10:19:04', '558', 'D. Branch'),
(556, '11.07.2006', 'Importation of Iridium Mobile Phones. (Satellite)', 'DOPL559.pdf', '2016-04-26 10:19:04', '559', 'PP&R'),
(557, '21.07.2006', 'Recovery of EDR Cess.', 'DOPL560.pdf', '2016-04-26 10:19:04', '560', 'PP&R'),
(558, '04.08.2006', 'RPO 4/2006', 'DOPL561.pdf', '2016-04-26 10:19:04', '561', 'PP&R'),
(559, '15.08.2006', 'Nomenclatum  Committee', 'DOPL562.pdf', '2016-04-26 10:19:04', '562', 'PP&R'),
(560, '12.09.2006', '?]$? ?`??&??? <???? 2% ?? ????$? ??????? ?$?` ??? ?`<???.', 'DOPL563.pdf', '2016-04-26 10:19:04', '563', 'PP&R'),
(561, '15.09.2006', 'Recovery of EDB Cess', 'DOPL564.pdf', '2016-04-26 10:19:04', '564', 'PP&R'),
(562, '15.09.2006', 'RPO 5/2006', 'DOPL565.pdf', '2016-04-26 10:19:04', '565', 'PP&R'),
(563, '09.10.2006', 'RPO 6/2006', 'DOPL566.pdf', '2016-04-26 10:19:05', '566', 'PP&R'),
(564, '09.10.2006', 'Excise special                 Act No. 13of 1989', 'DOPL567.pdf', '2016-04-26 10:19:05', '567', 'PP&R'),
(565, '09.10.2006', 'Recovery of EDB Cess', 'DOPL568.pdf', '2016-04-26 10:19:05', '568', 'PP&R'),
(566, '25.10.2006', '50% Margine deposit on imports made by LC & DC', 'DOPL569.pdf', '2016-04-26 10:19:05', '569', 'PP&R'),
(567, '25.10.2006', 'RPO 7/2006', 'DOPL570.pdf', '2016-04-26 10:19:05', '570', 'PP&R'),
(568, '25.10.2006', 'Excise (Special provisions ) Act No. 13 of 1989', 'DOPL571.pdf', '2016-04-26 10:19:05', '571', 'PP&R'),
(569, '27.10.2006', 'Risk Management Committee', 'DOPL572.pdf', '2016-04-26 10:19:05', '572', 'PP&R'),
(570, '02.11.2006', 'Goods detained on symposium of under valuation.', 'DOPL573.pdf', '2016-04-26 10:19:05', '573', 'RMC'),
(571, '10.11.2006', 'Establishment  of Mega port Surveillance Unit and operational instructions.', 'DOPL574.pdf', '2016-04-26 10:19:05', '574', 'Preventive'),
(572, '26.11.2006', 'RPO/8/2006', 'DOPL575.pdf', '2016-04-26 10:19:05', '575', 'PP&R'),
(573, '26.12.2006', 'Excise (special provisions) Act No. 13 of 1989 order under section 3', 'DOPL576.pdf', '2016-04-26 10:19:05', '576', 'PP&R'),
(574, '16.11.2006', 'Recovery of EDB Cess', 'DOPL577.pdf', '2016-04-26 10:19:05', '577', 'PP&R'),
(575, '16.11.2006', 'Calculation formulae of fiscal levies on imports of goods.', 'DOPL578.pdf', '2016-04-26 10:19:05', '578', 'PP&R'),
(576, '29.12.2006', 'Vat Rate Charges.', 'DOPL579.pdf', '2016-04-26 10:19:05', '579', 'PP&R'),
(577, '01.01.2007', 'Implementation of revised Port and Air Port and Airport Development Levy (PAL) rates, from 01.01.2007', 'DOPL580.pdf', '2016-04-26 10:19:05', '580', 'PP&R'),
(578, '01.01.2007', 'Recovery of surcharge.', 'DOPL581.pdf', '2016-04-26 10:19:05', '581', 'PP&R'),
(579, '02.02.2007', 'RPO/01/2007', 'DOPL583.pdf', '2016-04-26 10:19:05', '583', 'PP&R'),
(580, '28.02.2007', 'Vat Rate Changes', 'DOPL584.pdf', '2016-04-26 10:19:05', '584', 'PP&R'),
(581, '09.03.2007', 'Import and Export Control Act No. 01 of 1969 ? Order under section 4(3) 14 and 20.', 'DOPL585.pdf', '2016-04-26 10:19:05', '585', 'PP&R'),
(582, '12.03.2007', 'Regulation on Geodetically  Modified foods.', 'DOPL586.pdf', '2016-04-26 10:19:05', '586', 'PP&R'),
(583, '26.03.2007', 'Examination of cargo using HCV scanners (DOPL 616)', 'DOPL587.pdf', '2016-04-26 10:19:05', '587', 'CCSU'),
(584, ' ', 'Excise (Special provisions ) Act No. 13 of 1989 ? Order under Section 3', 'DOPL588.pdf', '2016-04-26 10:19:05', '588', 'PP&R'),
(585, ' ', 'Excise (Special provisions) Act No. 13 of 1989 ? Order under section 3 C', 'DOPL589.pdf', '2016-04-26 10:19:05', '589', 'PP&R'),
(586, '14.05.2007', 'RPO/2/2007', 'DOPL590.pdf', '2016-04-26 10:19:05', '590', 'PP&R'),
(587, '14.05.2007', 'Recovery of surcharge', 'DOPL591.pdf', '2016-04-26 10:19:05', '591', 'PP&R'),
(588, '14.05.2007', 'Excise special provisions Act No. 13 of 1989 Order Under Section 3', 'DOPL592.pdf', '2016-04-26 10:19:05', '592', 'PP&R'),
(589, '14.05.2007', 'EDB Cess', 'DOPL593.pdf', '2016-04-26 10:19:05', '593', 'PP&R'),
(590, '14.05.2007', 'Recovery of PAL', 'DOPL594.pdf', '2016-04-26 10:19:05', '594', 'PP&R'),
(591, '14.05.2007', 'Imports and Exports (Control) Act No. 01 of 1969.', 'DOPL595.pdf', '2016-04-26 10:19:05', '595', 'PP&R'),
(592, '05.06.2007', 'Vat Rate Changes', 'DOPL596.pdf', '2016-04-26 10:19:05', '596', 'PP&R'),
(593, '07.06.2007', 'Excise (special provisions ) Act No. 13 of 1989 ? Order Under Section 3', 'DOPL597.pdf', '2016-04-26 10:19:05', '597', 'PP&R'),
(594, '12.06.2007', 'Exports', 'DOPL598.pdf', '2016-04-26 10:19:05', '598', 'PP&R'),
(595, '12.06.2007', 'Disposal of vehicles impoted under concessanary levy', 'DOPL599.pdf', '2016-04-26 10:19:05', '599', ' '),
(596, '12.06.2007', 'VAT Exemption Import of Rattans', 'DOPL600.pdf', '2016-04-26 10:19:05', '600', 'VAT'),
(597, '17.07.2007', 'Vat Exemption', 'DOPL601.pdf', '2016-04-26 10:19:05', '601', 'VAT'),
(598, '10.08.2007', 'Importation of Tobacco Related/Tobacco Based products for Human consumption', 'DOPL602.pdf', '2016-04-26 10:19:05', '602', ' '),
(599, '20.08.2007', 'RPO 03/2007 Schedule I preferential duty charges under Pakistan - Sri Lanka Free Trade Agreement Schedule II Customs duty charges following impossion Act specific duty', 'DOPL603.pdf', '2016-04-26 10:19:05', '603', 'RPO  3/2007'),
(600, '12.09.2007', 'Amendment of Excise duty S/T.', 'DOPL604.pdf', '2016-04-26 10:19:05', '604', 'Excise'),
(601, ' ', 'Amendment of Cess duty Sinhala - Tamil- English', 'DOPL605.pdf', '2016-04-26 10:19:05', '605', 'Cess'),
(602, '12.10.2007', '(MRP)Cess Levy based on Maximum Retail Price', 'DOPL606.pdf', '2016-04-26 10:19:05', '606', 'Cess (MRP)'),
(603, '17.10.2007', 'Computation of Import Levies', 'DOPL608.pdf', '2016-04-26 10:19:06', '608', 'Computation'),
(604, '19.10.2007', 'Rubber Replanting Subsidy Act - Cess on National Rubber Regulation', 'DOPL609.pdf', '2016-04-26 10:19:06', '609', 'Rubber Cess'),
(605, '31.10.2007', 'VAT Exemption on Import of New Machinery used for Rice Milling', 'DOPL610.pdf', '2016-04-26 10:19:06', '610', 'VAT'),
(606, '07.11.2007', 'RPO  4/2007', 'DOPL611.pdf', '2016-04-26 10:19:06', '611', ' '),
(607, '07.11.2007', 'Recovery of surcharge', 'DOPL612.pdf', '2016-04-26 10:19:06', '612', 'Surcharge'),
(608, '07.11.2007', 'Excise Duty Amendment', 'DOPL613.pdf', '2016-04-26 10:19:06', '613', 'Excise'),
(609, '07.11.2007', 'Cess Duty Amendment', 'DOPL614.pdf', '2016-04-26 10:19:06', '614', 'Cess'),
(610, '09.11.2007', 'Coconut Cess - Cess Duty correction', 'DOPL615.pdf', '2016-04-26 10:19:06', '615', 'Coconut Cess'),
(611, '07.11.2007', 'Examination of Cargo using X-Ray Scanners', 'DOPL616.pdf', '2016-04-26 10:19:06', '616', 'Instead of DOPL'),
(612, ' ', 'Customs Overtime and (Collection O/T from ships)', 'DOPL617.pdf', '2016-04-26 10:19:06', '617', ' '),
(613, ' ', 'Search of Premises, places and building for un-customed goods & documents', 'DOPL618.pdf', '2016-04-26 10:19:06', '618', 'Not issued DOPL with DO'),
(614, '2008.03.07', 'Search of Premises, places and building for un-customed goods & documents', 'DOPL618.pdf', '2016-04-26 10:19:06', '618', ' '),
(615, ' ', 'Detention/Seizer of Cargo and payment at SLPA', 'DOPL619.pdf', '2016-04-26 10:19:06', '619', 'DOPL referred to further study to enforcement committee (DDC Sudasinghe)'),
(616, '08.01.2008', 'Amendment of Value Added Tax', 'DOPL620.pdf', '2016-04-26 10:19:06', '620', 'VAT'),
(617, ' ', 'Exemption of Ports & Airport Dev.Levy', 'DOPL621.pdf', '2016-04-26 10:19:06', '621', 'PAL'),
(618, ' ', 'Amendment of SRL', 'DOPL622.pdf', '2016-04-26 10:19:06', '622', 'SRL'),
(619, '08.01.2008', 'Value added Tax Rate Charges', 'DOPL623.pdf', '2016-04-26 10:19:06', '623', 'VAT'),
(620, ' ', 'Revision at RIDL', 'DOPL624.pdf', '2016-04-26 10:19:06', '624', 'RIDL'),
(621, ' ', 'Special Commodity Levy Act No. 48 of 2007 - Effective from 2008.1.9 for (4) months', 'DOPL625.pdf', '2016-04-26 10:19:06', '625', 'SCL'),
(622, '2008.02.06', 'Customs Controls on Transit & Transshipment of Goods', 'DOPL626.pdf', '2016-04-26 10:19:06', '626', ' '),
(623, '2008.02.16', 'Regulations under Intellectual Properties Act', 'DOPL627.pdf', '2016-04-26 10:19:06', '627', 'IPR'),
(624, ' ', 'Previous offence', 'DOPL628.pdf', '2016-04-26 10:19:06', '628', ' '),
(625, '2008.03.04', 'Implementation of 2008 Budget proposal Local shipping industry', 'DOPL629.pdf', '2016-04-26 10:19:06', '629', ' '),
(626, ' ', 'Obtaining approval for used Refrigerator / Air condition and Refrigeration goods imported without ICC on purchased from center tender sale.', 'DOPL630.pdf', '2016-04-26 10:19:06', '630', ' '),
(627, ' ', 'Amendment to RIDL', 'DOPL631.pdf', '2016-04-26 10:19:06', '631', 'RIDL'),
(628, ' ', 'Exports Cess Levy', 'DOPL632.pdf', '2016-04-26 10:19:06', '632', 'CESS (Export)'),
(629, '2008.04.08', 'Importation / Exportation of Ram or      Ayurvedeni     Substances', 'DOPL633.pdf', '2016-04-26 10:19:06', '633', ' '),
(630, '2008.04.08', 'Submission of Cash sheet and Computer Day Book Abstracts to the Accounts Division', 'DOPL634.pdf', '2016-04-26 10:19:06', '634', ' '),
(631, '2008.04.28', 'Import of Liquor', 'DOPL635.pdf', '2016-04-26 10:19:06', '635', 'Not issued'),
(632, '2008.04.28', 'Ports and Air Ports Levy', 'DOPL636.pdf', '2016-04-26 10:19:06', '636', 'PAL'),
(633, '2008.05.05', 'Special Commodity Levy', 'DOPL637.pdf', '2016-04-26 10:19:06', '637', 'SCL'),
(634, '2008.05.13', 'No. Commercial Goods ? as Passenger Baggage unaccompanied Baggage or as Gifts', 'DOPL638.pdf', '2016-04-26 10:19:06', '638', ' '),
(635, '2008.06.02', 'Liberalization the Regulations of Gem Importation', 'DOPL639.pdf', '2016-04-26 10:19:06', '639', 'Not Issued'),
(636, '2008.06.12', 'Regulation on Exportation of Rice 2008', 'DOPL640.pdf', '2016-04-26 10:19:06', '640', ' '),
(637, '2008.06.23', 'Stoppage of Clearance of Jetlines (Motor Crafts)', 'DOPL641.pdf', '2016-04-26 10:19:06', '641', ' '),
(638, ' ', 'Disposal of Abandoned Cargo', 'DOPL642.pdf', '2016-04-26 10:19:06', '642', ' '),
(639, '2008.07.25', 'Environment conservation Levy Imposed from 01.08.2008', 'DOPL643.pdf', '2016-04-26 10:19:06', '643', 'ECL'),
(640, '2008.09.03', 'Signing & Dating of Official Documents', 'DOPL644.pdf', '2016-04-26 10:19:06', '644', ' '),
(641, '2008.09.15', 'Procedure for importation and sale of computer colour printers / Scanners / colour photocopy Machines and', 'DOPL645.pdf', '2016-04-26 10:19:06', '645', ' '),
(642, '2008.09.27', 'Recovery EDB Cess', 'DOPL646.pdf', '2016-04-26 10:19:06', '646', 'EDB Cess'),
(643, '2008.09.26', 'Excise Duty Amendment', 'DOPL647.pdf', '2016-04-26 10:19:07', '647', 'Excise'),
(644, '2008.10.30', 'Excise Amendment', 'DOPL648.pdf', '2016-04-26 10:19:07', '648', 'Excise'),
(645, '2008.11.07', 'Surcharge Amendment  of surcharge', 'DOPL649.pdf', '2016-04-26 10:19:07', '649', 'surcharge'),
(646, '2008.11.07', 'SCL Amendment of Special Commodity Levy', 'DOPL650.pdf', '2016-04-26 10:19:07', '650', 'SCL'),
(647, '2008.11.07', 'RPO 02/2008 Exports', 'DOPL651.pdf', '2016-04-26 10:19:07', '651', 'RPO'),
(648, '2008.11.07', 'Excise -  Amendment of Excise Duty', 'DOPL652.pdf', '2016-04-26 10:19:07', '652', 'Excise'),
(649, '2008.11.07', 'Cess ? Cess Charges', 'DOPL653.pdf', '2016-04-26 10:19:07', '653', 'Cess'),
(650, '2008.11.07', 'RPO 01/2008 Import Duty', 'DOPL654.pdf', '2016-04-26 10:19:07', '654', 'RPO'),
(651, '2008.11.24', 'Order under Import and Export control act CFC', 'DOPL655.pdf', '2016-04-26 10:19:07', '655', 'ICL'),
(652, '2008.12.01', 'Special Import Licence Regulations', 'DOPL656.pdf', '2016-04-26 10:19:07', '656', 'ICL'),
(653, '2008.12.01', 'RPO 03/2008', 'DOPL657.pdf', '2016-04-26 10:19:07', '657', 'RPO'),
(654, '2008.12.01', 'RPO 04/2008', 'DOPL658.pdf', '2016-04-26 10:19:07', '658', 'RPO'),
(655, '2009.01.01', 'VAT Amendment', 'DOPL659.pdf', '2016-04-26 10:19:07', '659', 'VAT'),
(656, '2009.01.01', 'PAL Amendment', 'DOPL660.pdf', '2016-04-26 10:19:07', '660', 'PAL'),
(657, '2009.01.01', 'Excise Duty Amendment', 'DOPL661.pdf', '2016-04-26 10:19:07', '661', 'Excise'),
(658, '2009.01.01', 'Amendment of Excise Duty', 'DOPL662.pdf', '2016-04-26 10:19:07', '662', 'Excise'),
(659, '2009.01.12', 'Recovering Overtime from the Imports who import under BOI Scheme for Export Purpose', 'DOPL663.pdf', '2016-04-26 10:19:07', '663', 'with DGC'),
(660, '2009.01.21', 'Special Commodity Levy', 'DOPL664.pdf', '2016-04-26 10:19:07', '664', 'SCL'),
(661, '2009.04.06', 'Passenger Baggage Clearance-Automated', 'DOPL665.pdf', '2016-04-26 10:19:07', '665', 'Baggage'),
(662, '2009.02.01', 'Nation Building Tax ? Introductions', 'DOPL666.pdf', '2016-04-26 10:19:07', '666', 'NBT (Introduction)'),
(663, '2009.02.02', 'Amendment of Cess', 'DOPL667.pdf', '2016-04-26 10:19:07', '667', 'Cess'),
(664, '2009.02.04', 'Special Commodity Levy- Amendment', 'DOPL668.pdf', '2016-04-26 10:19:07', '668', 'SCL'),
(665, '2009.02.04', 'RPO  01/2009', 'DOPL669.pdf', '2016-04-26 10:19:07', '669', 'RPO'),
(666, '2009.03.06', 'Cess Amendment', 'DOPL670.pdf', '2016-04-26 10:19:07', '670', 'Cess'),
(667, '2009.03.12', 'Amendment of Excise Duty', 'DOPL671.pdf', '2016-04-26 10:19:07', '671', 'Excise'),
(668, '2209.03.12', 'Special Import Licences Amendment', 'DOPL672.pdf', '2016-04-26 10:19:07', '672', 'Import Licence'),
(669, '2009.03.12', 'Order under Import (Control) Act', 'DOPL673.pdf', '2016-04-26 10:19:07', '673', 'Import Control Act'),
(670, '2009.03.12', 'Amendment of Excise Duty', 'DOPL674.pdf', '2016-04-26 10:19:07', '674', 'Excise Duty (Cigarettes)'),
(671, '2009.03.31', 'RPO ? 2/2009', 'DOPL675.pdf', '2016-04-26 10:19:07', '675', 'RPO'),
(672, '2009.03.31', 'Amendment of Special Commodity Levy', 'DOPL676.pdf', '2016-04-26 10:19:07', '676', 'SCL'),
(673, '2009.03.31', 'Special Commodity Levy ? deletion', 'DOPL677.pdf', '2016-04-26 10:19:07', '677', 'SCL'),
(674, '3/4/2009', 'Cess Amendment', 'DOPL678.pdf', '2016-04-26 10:19:07', '678', 'Cess'),
(675, '6/4/2009', 'RPO 03/2009', 'DOPL679.pdf', '2016-04-26 10:19:07', '679', 'RPO'),
(676, '1/5/2009', 'NBT Changes', 'DOPL680.pdf', '2016-04-26 10:19:07', '680', 'NBT'),
(677, '30/4/2009', 'Excise duty amendment', 'DOPL681.pdf', '2016-04-26 10:19:07', '681', 'Excise'),
(678, '15/5/2009', 'Credit officieal emoluments to officers'' Bank Accounts', 'DOPL682.pdf', '2016-04-26 10:19:07', '682', 'Bank Accounts'),
(679, '28/5/2009', 'Screen all imports of Full Cream Milk Powder', 'DOPL683.pdf', '2016-04-26 10:19:07', '683', ' '),
(680, '10/6/2009', 'NBT Excemptions - Pharmaceuticals', 'DOPL684.pdf', '2016-04-26 10:19:07', '684', 'NBT'),
(681, '2/7/2009', 'Excise Amendment - LP Gas', 'DOPL685.pdf', '2016-04-26 10:19:07', '685', 'Excise'),
(682, '9/7/2009', 'Cess Amendment', 'DOPL686.pdf', '2016-04-26 10:19:08', '686', 'Cess'),
(683, '17/7/2009', 'PAL Deferment - Plant and Machinery', 'DOPL687.pdf', '2016-04-26 10:19:08', '687', 'PAL'),
(684, '17/7/2009', 'Lifting of Ban Imposed on colour Printers (DOPL 645)', 'DOPL688.pdf', '2016-04-26 10:19:08', '688', ' '),
(685, '21/7/2009', 'Stoppage of Customs Facilities RMR Automotive & Tyres', 'DOPL689.pdf', '2016-04-26 10:19:08', '689', 'Order'),
(686, '1/8/2009', 'NBT Excemption', 'DOPL690.pdf', '2016-04-26 10:19:08', '690', 'NBT'),
(687, '1/8/2009', 'Cess Amendment', 'DOPL691.pdf', '2016-04-26 10:19:08', '691', 'Cess'),
(688, ' ', ' ', 'DOPL692.pdf', '2016-04-26 10:19:08', '692', ' '),
(689, '27/8/2009', 'Stoppage of Customs Facilities Asian Trading & Marketing', 'DOPL693.pdf', '2016-04-26 10:19:08', '693', 'Order'),
(690, '1/9/2009', 'Excise duty amendment', 'DOPL694.pdf', '2016-04-26 10:19:08', '694', 'Excise'),
(691, '1/10/2009', 'SCL Amendment', 'DOPL695.pdf', '2016-04-26 10:19:08', '695', 'SCL'),
(692, '28/4/2009', 'Cash Deposits made by Inbound Travelers and Repayment', 'DOPL696.pdf', '2016-04-26 10:19:08', '696', 'Procedure'),
(693, '31/8/2009', 'Excise Duty Amendment', 'DOPL697.pdf', '2016-04-26 10:19:08', '697', 'Excise'),
(694, '10/11/2009', 'SCL Amendment', 'DOPL698.pdf', '2016-04-26 10:19:08', '698', 'SCL'),
(695, 'Pending', 'Operating Instructions for CIP Lounge at BIA Katunayake', 'DOPL699.pdf', '2016-04-26 10:19:08', '699', 'Procedure'),
(696, '12/8/2009', 'Sealing and Transferring of Case Productions of AirPort to Baggage Office', 'DOPL700.pdf', '2016-04-26 10:19:08', '700', 'Procedure'),
(697, '9/11/2009', 'Amendment to Export Control Regulations', 'DOPL701.pdf', '2016-04-26 10:19:08', '701', 'ICL'),
(698, '21/12/2009', 'SCL Amendment', 'DOPL702.pdf', '2016-04-26 10:19:08', '702', 'SCL'),
(699, '1/1/2010', 'Excise Duty Amendment', 'DOPL703.pdf', '2016-04-26 10:19:08', '703', 'Excise'),
(700, '10/2/2010', 'SCL Amendment', 'DOPL704.pdf', '2016-04-26 10:19:08', '704', 'SCL'),
(701, '25/2/2010', 'Stoppage of Customs Facilities Triton Trading Lanka', 'DOPL705.pdf', '2016-04-26 10:19:08', '705', 'Order'),
(702, '25/2/2010', 'Importation of False, Deceptive and Misleading Food Advertising Materials', 'DOPL706.pdf', '2016-04-26 10:19:08', '706', 'Procedure'),
(703, '1/3/2010', 'Excise Duty Amendment', 'DOPL707.pdf', '2016-04-26 10:19:08', '707', 'Excise'),
(705, '21/3/2010', 'SCL Amendment', 'DOPL709.pdf', '2016-04-26 10:19:08', '709', 'SCL'),
(706, '22/4/2010', 'Influx of Unregistered Cosmetics, Devices and Drugs', 'DOPL710.pdf', '2016-04-26 10:19:08', '710', 'Procedure'),
(707, '10/5/2010', 'SCL Amendment', 'DOPL711.pdf', '2016-04-26 10:19:08', '711', 'SCL'),
(708, '1/3/2010', 'NBT Exemption - Gold', 'DOPL712.pdf', '2016-04-26 10:19:08', '712', 'NBT'),
(709, ' ', 'Advance Classification Ruling by D-Branch', 'DOPL713.pdf', '2016-04-26 10:19:08', '713', 'D-Branch'),
(710, '1/6/2010', 'RPO 01/2010', 'DOPL714.pdf', '2016-04-26 10:19:08', '714', ' '),
(711, '1/6/2010', 'Removal of Surcharge on Customs Duty', 'DOPL715.pdf', '2016-04-26 10:19:08', '715', 'Surcharge'),
(712, '31/5/2010', 'Excise Duty Amendment', 'DOPL716.pdf', '2016-04-26 10:19:08', '716', 'Excise'),
(713, '1/6/2010', 'Cess Amendment', 'DOPL717.pdf', '2016-04-26 10:19:08', '717', 'Cess'),
(714, '1/6/2010', 'Excise Duty Amendment', 'DOPL718.pdf', '2016-04-26 10:19:08', '718', 'Excise'),
(715, '1/6/2010', 'VAT Changes', 'DOPL719.pdf', '2016-04-26 10:19:08', '719', 'VAT'),
(716, '1/6/2010', 'Depreciation Table for the Valuation of Motor Vehicle', 'DOPL720.pdf', '2016-04-26 10:19:08', '720', 'Depreciation'),
(717, '1/6/2010', 'Revision of Excise Duty Rate for Motor Cycles (8711)', 'DOPL721.pdf', '2016-04-26 10:19:08', '721', 'Excise'),
(718, '1/6/2010', 'Revision of Cess Rates 3402.90.10,20,30,90', 'DOPL722.pdf', '2016-04-26 10:19:08', '722', 'Cess'),
(719, '1/6/2010', 'VAT, NBT, PAL Exemption on Import of Foreign Currency notes', 'DOPL723.pdf', '2016-04-26 10:19:08', '723', ' '),
(720, '10/8/2010', 'SCL Amendment', 'DOPL724.pdf', '2016-04-26 10:19:08', '724', 'SCL'),
(721, '16/8/2010', 'VAT Changes for Fruit Seeds 1209.99.10', 'DOPL725.pdf', '2016-04-26 10:19:09', '725', 'VAT'),
(722, '23/8/2010', 'Regulations under Fisheries and Aquatic resources Act no:02 of 1996', 'DOPL726.pdf', '2016-04-26 10:19:09', '726', 'Regulations'),
(723, '27/8/2010', 'Surcharge Changes', 'DOPL727.pdf', '2016-04-26 10:19:09', '727', 'Surcharge'),
(724, '10/9/2010', 'SCL Amendment', 'DOPL728.pdf', '2016-04-26 10:19:09', '728', 'SCL'),
(725, '6/9/2010', 'Relaxation of Restrictions on Aircrafts, Flying machines, Radio controlled Devices', 'DOPL729.pdf', '2016-04-26 10:19:09', '729', 'Regulations'),
(726, '13/10/2010', 'Tax rates amendment on Chicks for breeding, othe rchicks, meat of fowls, Egg?', 'DOPL730.pdf', '2016-04-26 10:19:09', '730', 'Tax Rates'),
(727, '14/10/2010', 'Code of Ethics for Customs officers', 'DOPL731.pdf', '2016-04-26 10:19:09', '731', 'Regulations'),
(728, '8/11/2010', 'Routinely detaining import sea cargo', 'DOPL733.pdf', '2016-04-26 10:19:09', '733', 'Procedure'),
(729, '30/10/2010', 'SCL Amendment', 'DOPL734.pdf', '2016-04-26 10:19:09', '734', 'SCL'),
(730, '8/11/2010', 'Special Tasks & Vigilance Directorate STVD', 'DOPL735.pdf', '2016-04-26 10:19:09', '735', 'STVD'),
(731, '23/11/2010', 'RPO 02/2010', 'DOPL736.pdf', '2016-04-26 10:19:09', '736', ' '),
(732, '23/11/2010', 'Depreciation Table for the Valuation of Used Motor Vehicle', 'DOPL737.pdf', '2016-04-26 10:19:09', '737', 'Depreciation'),
(733, '23/11/2010', 'Excise duty Amendment', 'DOPL738.pdf', '2016-04-26 10:19:09', '738', 'Excise'),
(734, '23/11/2010', 'Cess Amendment', 'DOPL739.pdf', '2016-04-26 10:19:09', '739', 'Cess'),
(735, '23/11/2010', 'Computation (calculation) of Import levies', 'DOPL740.pdf', '2016-04-26 10:19:09', '740', 'Formulas'),
(736, '23/11/2010', 'Removal of Social Responsibility Levy SRL', 'DOPL741.pdf', '2016-04-26 10:19:09', '741', 'SRL'),
(737, '23/11/2010', 'Removal of Regional Infrastructure Development Levy RIDL', 'DOPL742.pdf', '2016-04-26 10:19:09', '742', 'RIDL'),
(738, '23/11/2010', 'VAT  Budget Proposal 2011', 'DOPL743.pdf', '2016-04-26 10:19:09', '743', 'VAT'),
(739, '23/11/2010', 'Exemption of PAL on Pharmaceuticals', 'DOPL744.pdf', '2016-04-26 10:19:09', '744', 'PAL'),
(740, '23/11/2010', 'Export Cess Levy', 'DOPL745.pdf', '2016-04-26 10:19:09', '745', 'Cess'),
(741, ' ', 'Exemption of VAT on Coal, Petrol, Bitumen and Machinery', 'DOPL746.pdf', '2016-04-26 10:19:09', '746', 'VAT'),
(742, '8/12/2010', 'Interface Public/Members (IPM) Tool of WCO', 'DOPL747.pdf', '2016-04-26 10:19:09', '747', ' '),
(743, '24/12/2010', 'Valuation Committee', 'DOPL749.pdf', '2016-04-26 10:19:09', '749', 'Valuation'),
(744, '1/1/2011', 'Amendments to NBT', 'DOPL750.pdf', '2016-04-26 10:19:09', '750', 'NBT'),
(745, '1/1/2011', 'Amndmennts to VAT', 'DOPL751.pdf', '2016-04-26 10:19:09', '751', 'VAT'),
(746, '1/1/2011', 'Amendments on Excise Duty', 'DOPL752.pdf', '2016-04-26 10:19:09', '752', 'Excise'),
(747, '18/1/2011', 'Exemptions  (Breeding animals, dairy machines)', 'DOPL753.pdf', '2016-04-26 10:19:09', '753', 'NBT'),
(748, '18/1/2011', 'Exemptions  (Breeding animals, dairy machines)', 'DOPL754.pdf', '2016-04-26 10:19:09', '754', 'PAL'),
(749, '15/12/2010', 'Importation of Vehicles by Public Servents on Concession', 'DOPL755.pdf', '2016-04-26 10:19:09', '755', ' '),
(750, '14/2/2011', 'Incense sticks from India  ( High Risk Cargo)', 'DOPL756.pdf', '2016-04-26 10:19:09', '756', ' '),
(751, '20/2/2011', 'Amendment (Potatoes)', 'DOPL757.pdf', '2016-04-26 10:19:09', '757', 'SCL'),
(752, '5/4/2011', 'Amendment', 'DOPL758.pdf', '2016-04-26 10:19:09', '758', 'ICL'),
(753, '19/4/2011', 'Errata to National Imports Tariff Guide 2011', 'DOPL759.pdf', '2016-04-26 10:19:09', '759', ' '),
(754, '29/4/2011', 'Identification of Bank Guarenties', 'DOPL760.pdf', '2016-04-26 10:19:09', '760', ' '),
(755, '24/4/2011', 'Amendments Special Imports License (certain Vehicles)', 'DOPL761.pdf', '2016-04-26 10:19:09', '761', 'ICL'),
(756, '24/4/2011', 'Amendments 87.03', 'DOPL762.pdf', '2016-04-26 10:19:09', '762', 'Excise'),
(757, '24/4/2011', 'RPO 01/2011  (text amendment 87.03)', 'DOPL763.pdf', '2016-04-26 10:19:09', '763', ' '),
(758, '17/5/2011', 'Amendments to ICL and text of 87.02', 'DOPL766.pdf', '2016-04-26 10:19:10', '766', ' '),
(759, '2/6/2011', 'Amendments', 'DOPL767.pdf', '2016-04-26 10:19:10', '767', 'Excise'),
(760, '2/6/2011', 'Amendments', 'DOPL768.pdf', '2016-04-26 10:19:10', '768', 'Excise'),
(761, '8/7/2011', 'Exemption of taxes on Pharmaceuticals', 'DOPL769.pdf', '2016-04-26 10:19:10', '769', ' '),
(762, '27/7/2011', 'Exemption of Levies on personal items', 'DOPL770.pdf', '2016-04-26 10:19:10', '770', ' '),
(763, '27/7/2011', 'Exemptions of Levies on samples', 'DOPL771.pdf', '2016-04-26 10:19:10', '771', ' '),
(764, '10/8/2011', 'Amendments', 'DOPL772.pdf', '2016-04-26 10:19:10', '772', 'SCL'),
(765, '1/8/2011', 'Food (Packaging and articles) regulations 2011', 'DOPL773.pdf', '2016-04-26 10:19:10', '773', ' '),
(766, '1/8/2011', 'Food (Shelf-life of imported items) regulations 2011', 'DOPL774.pdf', '2016-04-26 10:19:10', '774', ' '),
(767, '1/8/2011', 'Addendum to list of Exemptions for SL Transport Board', 'DOPL775.pdf', '2016-04-26 10:19:10', '775', ' '),
(768, '6/9/2011', 'Restriction on Satellite Receivers', 'DOPL776.pdf', '2016-04-26 10:19:10', '776', ' '),
(769, '14/10/2011', 'Amendments', 'DOPL778.pdf', '2016-04-26 10:19:10', '778', 'SCL'),
(770, '20/10/2011', 'on Cigarrettes', 'DOPL779.pdf', '2016-04-26 10:19:10', '779', 'Excise'),
(771, '22/11/2011', 'Budget 2012', 'DOPL781.pdf', '2016-04-26 10:19:10', '781', 'SCL'),
(772, '22/11/2011', 'RPO 03/2011', 'DOPL782.pdf', '2016-04-26 10:19:10', '782', ' '),
(773, '22/11/2011', 'Import cess Budget 2012', 'DOPL783.pdf', '2016-04-26 10:19:10', '783', 'Cess'),
(774, '22/11/2011', 'Export Cess Budget 2012', 'DOPL784.pdf', '2016-04-26 10:19:10', '784', 'Cess'),
(775, '22/11/2011', 'Budget 2012', 'DOPL785.pdf', '2016-04-26 10:19:10', '785', 'ICL');
INSERT INTO `dopl_files` (`id`, `date`, `title`, `url`, `date_modified`, `no`, `branch`) VALUES
(776, '22/11/2011', 'Budget 2012', 'DOPL786.pdf', '2016-04-26 10:19:10', '786', 'Excise'),
(777, '22/11/2011', 'Budget 2012', 'DOPL787.pdf', '2016-04-26 10:19:10', '787', 'PAL'),
(778, '25/11/2011', 'all inclusive tax on Fabrics (Budget 2012)', 'DOPL788.pdf', '2016-04-26 10:19:10', '788', ' '),
(779, '22/11/2011', 'Clarification on Budget 2012 DOPLs', 'DOPL789.pdf', '2016-04-26 10:19:10', '789', ' '),
(780, '1/2/2012', 'Clearance of Baggage containing goods in commercial nature', 'DOPL790.pdf', '2016-04-26 10:19:10', '790', ' '),
(781, '15/1/2012', 'Procedure for forwarding Samples to the Central Valuation Directorate', 'DOPL791.pdf', '2016-04-26 10:19:10', '791', ' '),
(782, '1/12/2011', 'NBT Exemptions - Budget 2012', 'DOPL792.pdf', '2016-04-26 10:19:10', '792', 'NBT'),
(783, '5/12/2011', 'VAT Exemptions - Budget 2012', 'DOPL793.pdf', '2016-04-26 10:19:10', '793', 'VAT'),
(784, '12/12/2011', '2012 Budget Proposal on Textile and Apperal Industry', 'DOPL795.pdf', '2016-04-26 10:19:10', '795', ' '),
(785, '10/12/2011', 'Amendment', 'DOPL796.pdf', '2016-04-26 10:19:11', '796', 'SCL'),
(786, '29/12/2011', 'Exemption of Taxes to Sri Lankan Air Lines', 'DOPL797.pdf', '2016-04-26 10:19:11', '797', ' '),
(787, '13.01.2012', 'An amendment to the Special Commodity Levy (Potatoes 0701.90) 1740/20-12.01.2012', 'DOPL798.pdf', '2016-04-26 10:19:11', '798', 'SCL'),
(788, '01.03.2012', 'Excise duty amendments', 'DOPL799.pdf', '2016-04-26 10:19:11', '799', 'Excise Duty'),
(789, '16.03.2012', 'An amendment to the Special Commodity Levy (Potatoes 0701.90)', 'DOPL800.pdf', '2016-04-26 10:19:11', '800', 'SCL'),
(790, '21.03.2012', 'SCL cahnges on several items', 'DOPL801.pdf', '2016-04-26 10:19:11', '801', 'SCL'),
(791, '02.04.2012', 'RPO 01/2012 and consequential amendments to the Excise Duty (Special Provisions) rates and Import Control Licence requirements', 'DOPL802.pdf', '2016-04-26 10:19:11', '802', 'Customs Duty Excise (sp.prov) ICL'),
(792, '10.04.2012', 'An amendment to the Special Commodity Levy', 'DOPL803.pdf', '2016-04-26 10:19:11', '803', 'SCL'),
(793, '20.04.2012', 'Changes in Import Control Licence Requirements', 'DOPL804.pdf', '2016-04-26 10:19:11', '804', 'ICL'),
(794, '26.04.2012', 'Excise (Special Provisions) Act, No. 13 of 1989 ? Order under Section 3C', 'DOPL805.pdf', '2016-04-26 10:19:11', '805', 'Excise Duty'),
(795, '04.05.2012', 'Waiver on Import Duty for Milk Powder falling in HS:0402.10, 0402.21 and 0402.29', 'DOPL806.pdf', '2016-04-26 10:19:11', '806', 'Duty Waiver'),
(796, '11.05.2012', 'Amendments to the Special Commodity Levy', 'DOPL807.pdf', '2016-04-26 10:19:11', '807', 'SCL'),
(797, '14.05.2012', 'Customs Valuation Regulation No. 01 of 2012 (Determination of Cost of Transport for Customs Valuation, when the Importer Imports his own goods by his own vessel.)', 'DOPL808.pdf', '2016-04-26 10:19:11', '808', 'Valuation'),
(798, '14.05.2012', 'Customs Valuation Regulation No. 02 of 2012 (Valuation of carrier Media bearing software for data processing equipment)', 'DOPL809.pdf', '2016-04-26 10:19:11', '809', 'Valuation'),
(799, '15.06.2012', 'Initial instructions on simplification of clearance of Gem parcels at Airport', 'DOPL810.pdf', '2016-04-26 10:19:11', '810', 'Gem'),
(800, '15.06.2012', 'Imposition of New Cess rates on Export and new units of Granite under HS: 25.16', 'DOPL811.pdf', '2016-04-26 10:19:11', '811', 'Export CESS'),
(801, '15.06.2012', 'Ports & Airports Development Levy Act No. 18 of 2011, order under Section 3', 'DOPL812.pdf', '2016-04-26 10:19:11', '812', 'PAL'),
(802, '26.06.2012', 'Polychlorinated biphenyls (PCBS) Contaminated  products', 'DOPL813.pdf', '2016-04-26 10:19:11', '813', 'PCB'),
(803, '22.06.2012', 'NBT Exemption on Gems & Precious Stones falling under HS Headings 71.02 & 71.03', 'DOPL814.pdf', '2016-04-26 10:19:11', '814', 'NBT'),
(804, '22.06.2012', 'Amendments to the Special Commodity  Levy on Sugar', 'DOPL815.pdf', '2016-04-26 10:19:11', '815', 'SCL'),
(805, '27.06.2012', 'Revision of Export Development Cess Rates (Order made under Section 14 of Sri Lanka Export Development Act, No. 40 of 1979)', 'DOPL816.pdf', '2016-04-26 10:19:11', '816', 'CESS'),
(806, '06.07.2012', 'Regulations made under Imports & Exports Control Act, No. 01 of 1969 (HS: 10.06)', 'DOPL817.pdf', '2016-04-26 10:19:11', '817', 'ICL Regulations'),
(807, '16.07.2012', 'Amendments to the Special Commodity Levy', 'DOPL818.pdf', '2016-04-26 10:19:11', '818', 'SCL'),
(808, '19.07.2012', 'Amendments to the Special Commodity Levy', 'DOPL819.pdf', '2016-04-26 10:19:11', '819', 'SCL'),
(809, '19.07.2012', 'Amendments to the Revenue Protection Act No. 19 of 1962 (HS: 2207.10)', 'DOPL820.pdf', '2016-04-26 10:19:11', '820', 'RPO'),
(810, '13.08.2012', 'Amendments to the Special Commodity Levy (HS: 0701.90-Other potatoes & 0703.10.20 ? B Onion)', 'DOPL821.pdf', '2016-04-26 10:19:11', '821', 'SCL'),
(811, '27.08.2012', 'Concessions/Exemptions granted under the Strategic Development Project Act, No. 14 of 2008', 'DOPL822.pdf', '2016-04-26 10:19:11', '822', 'PL 707'),
(812, '04.09.2012', 'Order made under Section 14 of SLED Act No. 40 of 1979 (Revision of Export Development Cess Rates)', 'DOPL823.pdf', '2016-04-26 10:19:11', '823', 'Cess'),
(813, '19.09.2012', 'Amendments to the Special Commodity Levy', 'DOPL824.pdf', '2016-04-26 10:19:11', '824', 'SCL'),
(814, '05.10.2012', 'An Amendment to the Excise duty on cigarettes', 'DOPL825.pdf', '2016-04-26 10:19:11', '825', 'Excise'),
(815, '26.10.2012', 'Amendments to the Special Commodity Levy', 'DOPL826.pdf', '2016-04-26 10:19:11', '826', 'SCL'),
(816, '30.10.2012', 'Issuing of Visitors Temporary License for the Importation of Motor Vehicles under CARNET System', 'DOPL827.pdf', '2016-04-26 10:19:11', '827', 'CARNET'),
(817, '08.11.2012', 'Special Commodity Levy Budget ? 2012', 'DOPL828.pdf', '2016-04-26 10:19:11', '828', 'SCL'),
(818, '08.11.2012', 'Revision of Excise Duty Budget ? 2013', 'DOPL829.pdf', '2016-04-26 10:19:11', '829', 'Excise'),
(819, '08.11.2012', 'RPO 03/2012', 'DOPL830.pdf', '2016-04-26 10:19:11', '830', 'RPO'),
(820, ' ', 'Budget 2013', 'DOPL831.pdf', '2016-04-26 10:19:11', '831', 'Cess'),
(821, ' ', 'Budget 2013', 'DOPL832.pdf', '2016-04-26 10:19:11', '832', 'Cess'),
(822, ' ', 'Budget 2013 Waiver on Imports Duty for Milk Products', 'DOPL833.pdf', '2016-04-26 10:19:11', '833', 'Waiver'),
(823, ' ', 'Budget 2013', 'DOPL834.pdf', '2016-04-26 10:19:11', '834', 'PAL'),
(824, '23.11.2012', 'List of Exemptions and Concessions', 'DOPL835.pdf', '2016-04-26 10:19:11', '835', 'Budget 2013'),
(825, '29.11.2012', 'e-Customs ? NEW CUSDEC', 'DOPL836.pdf', '2016-04-26 10:19:12', '836', ' '),
(826, '06.12.2012', 'Regulation Lead Content in Paints imported', 'DOPL837.pdf', '2016-04-26 10:19:12', '837', ' '),
(827, '10.12.2012', 'Amendments to the Special Commodity Levy', 'DOPL838.pdf', '2016-04-26 10:19:12', '838', 'SCL'),
(828, '21.12.2012', 'Amendments to the VAT', 'DOPL839.pdf', '2016-04-26 10:19:12', '839', 'VAT'),
(829, '21.12.2012', 'Budget 2013 ? NBT Exemption', 'DOPL840.pdf', '2016-04-26 10:19:12', '840', 'NBT'),
(830, '01.01.2013', 'Improving the image of Customs', 'DOPL841.pdf', '2016-04-26 10:19:12', '841', 'General'),
(831, '10.01.2013', 'Implementing an Annual Quota System to import HCFCs and mixtures of refrigerans (Blende) containing HCFCs', 'DOPL842.pdf', '2016-04-26 10:19:12', '842', 'ICL'),
(832, '16.01.2013', ' ', 'DOPL843.pdf', '2016-04-26 10:19:12', '843', 'Suspension of facilities to M/s. Digital House Pvt. Ltd. 19, Carlisle place, colombo 03'),
(833, '09.01.2013', 'Media Spokesman to Department of Customs', 'DOPL844.pdf', '2016-04-26 10:19:12', '844', 'Social Protection'),
(834, '22.01.2013', 'EDB Cess on Imports', 'DOPL845.pdf', '2016-04-26 10:19:12', '845', 'Cess'),
(835, '22.01.2013', 'EDB Cess on exports', 'DOPL846.pdf', '2016-04-26 10:19:12', '846', 'Cess'),
(836, '30.01.2013', 'Excise Duty on Motor Vehicles of Airport Passenger Transport', 'DOPL847.pdf', '2016-04-26 10:19:12', '847', 'Excise'),
(837, '08.02.2013', 'Exemption of VAT on Packing materials of Pharmaceuticals manufactured in Sri Lanka', 'DOPL848.pdf', '2016-04-26 10:19:12', '848', 'VAT'),
(838, '12.02.2013', 'Amendment of SCL', 'DOPL849.pdf', '2016-04-26 10:19:12', '849', 'SCL'),
(839, '14.02.2013', 'Export/ Import of Sri Lanka Currency', 'DOPL850.pdf', '2016-04-26 10:19:12', '850', 'Currency'),
(840, '26.02.2013', 'Facilitating clearance of Personal Items including Gifts.', 'DOPL851.pdf', '2016-04-26 10:19:12', '851', 'Baggage'),
(841, '20.02.2013', 'Increasing the Value limit of Export Trade samples', 'DOPL852.pdf', '2016-04-26 10:19:12', '852', 'Samples'),
(842, '01.03.2013', 'Prohibition of importation of Ethanol', 'DOPL853.pdf', '2016-04-26 10:19:12', '853', 'Ethanol'),
(843, '01.03.2013', 'Valuation sub-committee on Motor Vehicle', 'DOPL854.pdf', '2016-04-26 10:19:12', '854', 'Valuation'),
(844, '01.03.2013', 'OT committte decision', 'DOPL855.pdf', '2016-04-26 10:19:12', '855', 'OT'),
(845, '06.03.2013', 'Renaming STVD as RTF', 'DOPL856.pdf', '2016-04-26 10:19:12', '856', 'STVD / RTF'),
(846, '21.03.2013', 'Designating Global Transportation and logistic Pvt. Ltd. As a Service Provider for Marking MRP', 'DOPL857.pdf', '2016-04-26 10:19:12', '857', 'MRP'),
(847, '08.04.2013', 'Imposing Excise Duty on Ethyl alcohol', 'DOPL858.pdf', '2016-04-26 10:19:12', '858', 'Excise'),
(848, '18.04.2013', 'Facilitation of Motor Vehicle Imports subjected to Customs Inquiry', 'DOPL859.pdf', '2016-04-26 10:19:12', '859', 'Imports'),
(849, '07.05.2013', 'SCL Amendment - Potatoes', 'DOPL860.pdf', '2016-04-26 10:19:12', '860', 'SCL'),
(850, '08.05.2013', 'Customs Investigation and Inquiries', 'DOPL861.pdf', '2016-04-26 10:19:12', '861', 'CIB'),
(851, '09.05.2013', 'Clearance of UPB through Colombo Cargo Express', 'DOPL862.pdf', '2016-04-26 10:19:12', '862', 'UPB'),
(852, '07.06.2013', 'SCL Amendment', 'DOPL863.pdf', '2016-04-26 10:19:12', '863', 'SCL'),
(853, '21.06.2013', 'Pre-shipment certificate - Motor Vehicles', 'DOPL864.pdf', '2016-04-26 10:19:12', '864', 'Imports'),
(854, '21.06.2013', 'Imposing Customs Duty on Gold', 'DOPL865.pdf', '2016-04-26 10:19:12', '865', 'Gold'),
(855, '21.06.2013', 'Surcharge on Gold', 'DOPL866.pdf', '2016-04-26 10:19:12', '866', 'Gold'),
(856, '11.07.2013', 'SCL Amendment - B''Onions', 'DOPL867.pdf', '2016-04-26 10:19:12', '867', 'SCL'),
(857, '31.07.2013', 'Standardization and Quality control Regulations for Cinnamon Exports', 'DOPL868.pdf', '2016-04-26 10:19:12', '868', 'SLS'),
(858, '31.07.2013', 'Export of Gem stones by departing travellers under special scheme', 'DOPL869.pdf', '2016-04-26 10:19:12', '869', 'Gem'),
(859, '31.07.2013', 'Amendment to Excise and RPO 02/2013', 'DOPL870.pdf', '2016-04-26 10:19:12', '870', 'RPO 02.2013 Excise'),
(860, '31.07.2013', 'Amendment to Excise on Ethyl Alcohol', 'DOPL871.pdf', '2016-04-26 10:19:12', '871', 'Excise'),
(861, '02.08.2013', 'SCL Amendment - Sugar', 'DOPL872.pdf', '2016-04-26 10:19:12', '872', 'SCL'),
(862, '02.08.2013', 'Importation of MotorCycle Frames With or without fork', 'DOPL873.pdf', '2016-04-26 10:19:12', '873', 'ICL'),
(863, '05.08.2013', 'Amendment to Motor Vehicle Permit circular 01/2010', 'DOPL874.pdf', '2016-04-26 10:19:12', '874', 'MV Permit'),
(864, '08.08.2013', 'Possible Contamination of Milk powder with DCD', 'DOPL875.pdf', '2016-04-26 10:19:13', '875', 'Milk Powder'),
(865, '13.08.2013', 'Financial Act- Commercial Hub Regulation Act No. 01 of 2013', 'DOPL876.pdf', '2016-04-26 10:19:13', '876', 'General'),
(866, '19.08.2013', 'Food Control regulations - Bottled Drinking Water', 'DOPL877.pdf', '2016-04-26 10:19:13', '877', 'Imports'),
(867, '19.08.2013', 'Import Examination Scheme for Milk powder contaminated with DCD', 'DOPL878.pdf', '2016-04-26 10:19:13', '878', 'Milk Powder'),
(868, '23.08.2013', 'SCl amendments on Potatoes & B''onion', 'DOPL879.pdf', '2016-04-26 10:19:13', '879', 'SCL'),
(869, '27.08.2013', 'Revoking certificates of registration of drugs', 'DOPL880.pdf', '2016-04-26 10:19:13', '880', 'CDDA'),
(870, '11.09.2013', 'Admission of container security devises', 'DOPL881.pdf', '2016-04-26 10:19:13', '881', 'CSD''s'),
(871, '25.09.2013', 'Export cess on HS 25.05', 'DOPL882.pdf', '2016-04-26 10:19:13', '882', 'Cess'),
(872, '26.09.2013', 'Compliance and facilitation directorate', 'DOPL883.pdf', '2016-04-26 10:19:13', '883', 'PCAD'),
(873, '09.10.2013', 'Customs clearance of Nickobolt', 'DOPL884.pdf', '2016-04-26 10:19:13', '884', 'Pharmaceuticals'),
(874, '23.10.2013', 'Amendments to overtime?? Ict fund', 'DOPL885.pdf', '2016-04-26 10:19:13', '885', 'ICT fund'),
(875, '29.10.2013', 'Suspention of customs facilities by M/s Ranatunga motors', 'DOPL886.pdf', '2016-04-26 10:19:13', '886', 'Suspention of facility'),
(876, '19.11.2013', 'SCl amendments on Potatoes & B''onion', 'DOPL887.pdf', '2016-04-26 10:19:13', '887', 'SCL'),
(877, '21.11.2013', 'SCl amendments', 'DOPL888.pdf', '2016-04-26 10:19:13', '888', 'SCL-Budget 2014'),
(878, '21.11.2013', 'Depriciation table for used motor vehicles', 'DOPL889.pdf', '2016-04-26 10:19:13', '889', 'Motor vehivle- Budget 2014'),
(879, '21.11.2013', 'RPO 03/2013', 'DOPL890.pdf', '2016-04-26 10:19:13', '890', 'RPO-Budget 2014'),
(880, '21.11.2013', 'Excise ( Special provisions)', 'DOPL891.pdf', '2016-04-26 10:19:13', '891', 'Excise Budget 2014'),
(881, '21.11.2013', 'Cess rates on Imports', 'DOPL892.pdf', '2016-04-26 10:19:13', '892', 'Cess- Budget 2014'),
(882, '21.11.2013', 'Cess rates on export', 'DOPL893.pdf', '2016-04-26 10:19:13', '893', 'Cess(Export) -Budget 2014'),
(883, '23.11.2013', 'PAL on imports', 'DOPL894.pdf', '2016-04-26 10:19:13', '894', 'PAL-Budget 2014'),
(884, '27.11.2013', 'ICL requirements', 'DOPL895.pdf', '2016-04-26 10:19:13', '895', 'ICL'),
(885, '27.11.2013', 'Imports of cashew through Airport', 'DOPL896.pdf', '2016-04-26 10:19:13', '896', 'Cashew'),
(886, '27.11.2013', 'Personal jewellery of departing travellers', 'DOPL897.pdf', '2016-04-26 10:19:13', '897', 'BIA'),
(887, '06.12.2013', 'Suspention of customs facilities by M/s Hash international', 'DOPL898.pdf', '2016-04-26 10:19:13', '898', 'Suspention of facility'),
(888, '09.12.2013', 'Personal jewellery of departing travellers ( Rescinded 897)', 'DOPL899.pdf', '2016-04-26 10:19:13', '899', 'BIA'),
(889, '19.12.2013', 'Permits to export of furniture plants seeds & other forest produce', 'DOPL900.pdf', '2016-04-26 10:19:13', '900', 'Export permits'),
(890, '26.12.2013', 'requirements to clear Energy Drinks', 'DOPL901.pdf', '2016-04-26 10:19:13', '901', 'Energy drinks'),
(891, '31.12.2013', 'NBT Changes Buget 2014', 'DOPL902.pdf', '2016-04-26 10:19:13', '902', 'NBT-Buget 2014'),
(892, '31.12.2013', 'VAT changes Buget 2014', 'DOPL903.pdf', '2016-04-26 10:19:13', '903', 'VAT Buget 2014'),
(893, '31.12.2013', '*Not yet issued (on 07.02.2014)', 'DOPL904.pdf', '2016-04-26 10:19:13', '904', 'NC circulations'),
(894, '31.12.2013', 'establishing warehouse operations in Aircargo', 'DOPL905.pdf', '2016-04-26 10:19:13', '905', 'Air cargo'),
(895, '09.01.2014', 'Settlements of broughtforward VAT against Duty payable', 'DOPL906.pdf', '2016-04-26 10:19:13', '906', 'VAT'),
(896, '16.01.2014', 'Customs commndation policy', 'DOPL907.pdf', '2016-04-26 10:19:13', '907', 'Commendation'),
(897, '20.01.2014', 'RPO 01/2014 , Cess & Excise duty changes', 'DOPL908.pdf', '2016-04-26 10:19:13', '908', 'RPO / cess / Excise'),
(898, '24.01.2014', 'Excise duty on importing ethanol', 'DOPL909.pdf', '2016-04-26 10:19:13', '909', 'Ethanol'),
(899, '31.01.2014', 'Container operating regulations ( Shipping agents, freight forwarders,non vessel operating common carreiers', 'DOPL910.pdf', '2016-04-26 10:19:13', '910', 'fright charges'),
(900, '03.02.2014', 'Waiver on Import Duty for Milk Powder falling in HS:0402.10, 0402.21 and 0402.29', 'DOPL911.pdf', '2016-04-26 10:19:13', '911', 'Milk Powder'),
(901, '06.02.2014', 'SCL amendments on Massor dhal', 'DOPL912.pdf', '2016-04-26 10:19:14', '912', 'SCL'),
(902, '07.02.2014', 'SCL amendments on Potatoes', 'DOPL913.pdf', '2016-04-26 10:19:14', '913', 'SCL'),
(903, '07.02.2014', 'SLSI Regulations', 'DOPL914.pdf', '2016-04-26 10:19:14', '914', 'SLSI'),
(904, '13.02.2014', 'ICL requirements', 'DOPL915.pdf', '2016-04-26 10:19:14', '915', 'ICL'),
(905, '10.03.2014', 'SCL Ammendments on dhal', 'DOPL916.pdf', '2016-04-26 10:19:14', '916', 'SCL'),
(906, '14.03.2014', 'SCL Ammendments on Onion', 'DOPL917.pdf', '2016-04-26 10:19:14', '917', 'SCL'),
(907, '19.03.2014', 'Fast track documentation', 'DOPL918.pdf', '2016-04-26 10:19:14', '918', 'Long room'),
(908, '21.03.2014', 'Non Manupulation certificate', 'DOPL919.pdf', '2016-04-26 10:19:14', '919', 'Transhipment'),
(909, '26.03.2014', 'Suspention of facilities of M/S Venture pharma', 'DOPL920.pdf', '2016-04-26 10:19:14', '920', 'Suspention of facility'),
(910, '26.03.2014', 'Dealing with customs detections of BCNH', 'DOPL921.pdf', '2016-04-26 10:19:14', '921', 'BIOdiversity protection unit'),
(911, '10.04.2014', 'SCL ammendments on Imported rice', 'DOPL922.pdf', '2016-04-26 10:19:14', '922', 'SCL'),
(912, '17.04.2014', 'SCL ammendments on Imported MAIZE', 'DOPL923.pdf', '2016-04-26 10:19:14', '923', 'SCL'),
(913, '22.04.2014', 'Customs valuation on Motor vehicles', 'DOPL924.pdf', '2016-04-26 10:19:14', '924', 'M/v'),
(914, '23.04.2014', 'Granting tolerence in ascertaining weight on food products', 'DOPL925.pdf', '2016-04-26 10:19:14', '925', 'CE'),
(915, '25.04.2014', 'Suspention of Customs fascilities of MS/ Harcourts (pvt)ltd', 'DOPL926.pdf', '2016-04-26 10:19:14', '926', 'Customs fascilities'),
(916, '05.05.2014', 'Temporary Classification', 'DOPL927.pdf', '2016-04-26 10:19:14', '927', 'PP&R'),
(917, '20.05.2014', 'Enforcement Committee.', 'DOPL928.pdf', '2016-04-26 10:19:14', '928', 'Admin'),
(918, '30.05.2014', 'SCL Ammnedments', 'DOPL929.pdf', '2016-04-26 10:19:14', '929', 'SCL'),
(919, '30.05.2014', 'SCL Ammendments on dhal', 'DOPL930.pdf', '2016-04-26 10:19:14', '930', 'SCL'),
(920, '02.06.2014', 'Waiver on Import Duty for Milk Powder falling in HS:0402.10, 0402.21 and 0402.29', 'DOPL931.pdf', '2016-04-26 10:19:14', '931', 'Waiver'),
(921, '10.06.2014', 'SCL Amendments on Maize', 'DOPL932.pdf', '2016-04-26 10:19:14', '932', 'SCL'),
(922, '11.06.2014', 'Tobacco products(Labelling and packing) regulation', 'DOPL933.pdf', '2016-04-26 10:19:14', '933', 'Tobacco'),
(923, '04.07.2014', 'Documentation and verification procedure for enterprises in hub operations', 'DOPL934.pdf', '2016-04-26 10:19:14', '934', 'Hub operation'),
(924, '16.07.2014', 'SCL Ammendments on potatoes and sugar', 'DOPL935.pdf', '2016-04-26 10:19:14', '935', 'SCL'),
(925, '17.07.2014', 'SCL Ammendments on potatoes and Mackeral', 'DOPL936.pdf', '2016-04-26 10:19:14', '936', 'SCL'),
(926, '17.07.2014', 'SCL Ammendments on potatoes and Rice', 'DOPL937.pdf', '2016-04-26 10:19:14', '937', 'SCL'),
(927, '28.07.2014', 'SCL Ammendments', 'DOPL938.pdf', '2016-04-26 10:19:14', '938', 'SCL'),
(928, '31.07.2014', 'International affairs division', 'DOPL939.pdf', '2016-04-26 10:19:14', '939', 'Admin'),
(929, '01.08.2014', 'Recovery of cess on import of sugar', 'DOPL940.pdf', '2016-04-26 10:19:14', '940', 'cess'),
(930, '11.08.2014', 'SCL Ammendments', 'DOPL941.pdf', '2016-04-26 10:19:14', '941', 'SCL'),
(931, '14.08.2014', 'SCL Ammendments', 'DOPL942.pdf', '2016-04-26 10:19:14', '942', 'SCL'),
(932, '15.08.2014', 'Seizing of motor vehicles in MRMR port', 'DOPL943.pdf', '2016-04-26 10:19:14', '943', 'M/V'),
(933, '25.08.2014', 'Value limits of export trade samples', 'DOPL944.pdf', '2016-04-26 10:19:14', '944', 'Export'),
(934, '25.08.2014', 'SCL on B''onoions & Potatoes', 'DOPL945.pdf', '2016-04-26 10:19:14', '945', 'SCL'),
(935, '05.09.2014', 'SCL on Rice & Sugar', 'DOPL946.pdf', '2016-04-26 10:19:14', '946', 'SCL'),
(936, '05.09.2014', 'Weight-GSM tolerence on import papr boards', 'DOPL947.pdf', '2016-04-26 10:19:14', '947', 'Cargo Examination'),
(937, '26.09.2014', 'Increase the shares of PP&R Pool', 'DOPL118(P).pdf', '2016-04-26 10:19:14', '118(P)', 'PP&R POOL'),
(938, '10.10.2014', 'Remove the milk powder waiver', 'DOPL948.pdf', '2016-04-26 10:19:14', '948', 'Waiver'),
(939, '13.10.2014', 'Excise duty on ethanol', 'DOPL949.pdf', '2016-04-26 10:19:15', '949', 'Ethanol'),
(940, '14.10.2014', 'Excise duty amendments on ciggarettes', 'DOPL950.pdf', '2016-04-26 10:19:15', '950', 'excise'),
(941, '15.10.2014', 'MOD licence requirements', 'DOPL951.pdf', '2016-04-26 10:19:15', '951', 'ICL'),
(942, '24.10.2014', 'RPO/02/2015 Budget 2015', 'DOPL952.pdf', '2016-04-26 10:19:15', '952', 'Imports'),
(943, '24.10.2014', 'ICL requirements  Budget 2015', 'DOPL953.pdf', '2016-04-26 10:19:15', '953', 'Imports'),
(944, '24.10.2014', 'Milk Powder Waiver  Budget 2015', 'DOPL954.pdf', '2016-04-26 10:19:15', '954', 'Imports'),
(945, '24.10.2014', 'SCL Ammendments  Budget 2015', 'DOPL955.pdf', '2016-04-26 10:19:15', '955', 'Imports'),
(946, '24.10.2014', 'M/V Depreciation tables  Budget 2015', 'DOPL956.pdf', '2016-04-26 10:19:15', '956', 'Imports'),
(947, '24.10.2014', 'Import Cess Budget 2015', 'DOPL957.pdf', '2016-04-26 10:19:15', '957', 'Imports'),
(948, '24.10.2014', 'Excise (Special provisions)  Budget 2015', 'DOPL958.pdf', '2016-04-26 10:19:15', '958', 'Imports'),
(949, '24.10.2014', 'Export Cess  Budget 2015', 'DOPL959.pdf', '2016-04-26 10:19:15', '959', 'Export'),
(950, '24.10.2014', 'Excise (Special Provisions Exception) Budget 2015', 'DOPL960.pdf', '2016-04-26 10:19:15', '960', 'Imports'),
(951, '24.10.2014', 'NBT/VAT/PAL Excemptions Budget 2015', 'DOPL961.pdf', '2016-04-26 10:19:15', '961', 'Imports'),
(952, '24.10.2014', 'Import of ethyl alcohol Budget 2015', 'DOPL962.pdf', '2016-04-26 10:19:15', '962', 'Imports'),
(953, '27.10.2014', 'Errata to dopl 958 (Excise) Budget 2015', 'DOPL958A.pdf', '2016-04-26 10:19:15', '958A', 'Imports'),
(954, '28.10.2014', 'Errata to dopl 958 A (Excise) Budget 2015', 'DOPL958B.pdf', '2016-04-26 10:19:15', '958B', 'Imports'),
(955, '28.10.2014', 'SCL on Margarine Budget 2015', 'DOPL963.pdf', '2016-04-26 10:19:15', '963', 'Imports'),
(956, '30.10.2014', 'Duty waiver on Gold Budget 2015', 'DOPL964.pdf', '2016-04-26 10:19:15', '964', 'Imports'),
(957, '30.10.2014', 'Depreciation of M/V Budget 2015', 'DOPL956A.pdf', '2016-04-26 10:19:15', '956A', 'Imports'),
(958, '31.10.2014', 'Errata to Dopl 957 Budget 2015', 'DOPL957A.pdf', '2016-04-26 10:19:15', '957A', 'Imports'),
(959, '03.11.2014', 'Excise ammendments on vehicle permits Budget 2015', 'DOPL958C.pdf', '2016-04-26 10:19:15', '958C', 'Imports'),
(960, '03.11.2014', 'Errata to Depreciation of M/V Budget 2015', 'DOPL956B.pdf', '2016-04-26 10:19:15', '956B', 'Imports'),
(961, '10.11.2014', 'Duty waiver on Milk Powder Budget 2015', 'DOPL965.pdf', '2016-04-26 10:19:15', '965', 'Imports'),
(962, '10.11.2014', 'Duty waiver on Petrol & Diesel Budget 2015', 'DOPL966.pdf', '2016-04-26 10:19:15', '966', 'Imports'),
(963, '10.11.2014', 'Errata to DOPL 957 (Cess) Budget 2015', 'DOPL957B.pdf', '2016-04-26 10:19:15', '957B', 'Imports'),
(964, '11.11.2014', 'Banned of importation of Potatoes', 'DOPL967.pdf', '2016-04-26 10:19:15', '967', 'Imports'),
(965, '20.11.2014', 'Permission to Import of Potatoes', 'DOPL968.pdf', '2016-04-26 10:19:15', '968', 'Imports'),
(966, '02.12.2014', 'SCL Ammendments on b''onoions', 'DOPL969.pdf', '2016-04-26 10:19:15', '969', 'Imports'),
(967, '05.12.2014', 'Duty waiver on Petrol & Diesel', 'DOPL970.pdf', '2016-04-26 10:19:15', '970', 'Imports'),
(968, '12.12.2014', 'SCL on Potatoes', 'DOPL971.pdf', '2016-04-26 10:19:15', '971', 'Imports'),
(969, '19.12.2014', 'ICL on new Air conditioning machines', 'DOPL972.pdf', '2016-04-26 10:19:15', '972', 'Imports'),
(970, '23.12.2014', 'Exchange control regulations', 'DOPL973.pdf', '2016-04-26 10:19:15', '973', 'Exchange control'),
(971, '31.12.2014', 'Vat Ammendments', 'DOPL974.pdf', '2016-04-26 10:19:15', '974', 'VAT'),
(972, '31.12.2014', 'SCL mmendments', 'DOPL975.pdf', '2016-04-26 10:19:15', '975', 'SCL'),
(973, '22.01.2015', 'SCL Ammendments', 'DOPL976.pdf', '2016-04-26 10:19:15', '976', 'SCL'),
(974, '29.01.2015', 'Duty waiver on wheat grain', 'DOPL977.pdf', '2016-04-26 10:19:15', '977', 'Waiver'),
(975, '29.01.2015', 'RPO/01/2015', 'DOPL978.pdf', '2016-04-26 10:19:15', '978', 'RPO'),
(976, '29.01.2015', 'Excise (Special Provisions)', 'DOPL979.pdf', '2016-04-26 10:19:15', '979', 'Excise'),
(977, '29.01.2015', 'Customs valuation on Motor vehicles', 'DOPL980.pdf', '2016-04-26 10:19:15', '980', 'Motor vehivle'),
(978, '29.01.2015', 'ICL', 'DOPL981.pdf', '2016-04-26 10:19:15', '981', 'ICL'),
(979, '29.01.2015', 'SCL Amendments', 'DOPL982.pdf', '2016-04-26 10:19:16', '982', 'SCL'),
(980, '30.01.2015', 'Errata to DOPL 982', 'DOPL982A.pdf', '2016-04-26 10:19:16', '982A', 'ICL'),
(981, '05.02.2015', 'Tobacco products(Labelling and packing) regulation', 'DOPL933A.pdf', '2016-04-26 10:19:16', '933A', 'Tobacco'),
(982, '11.02.2015', 'Customs Value of Motor Vehicles', 'DOPL980A.pdf', '2016-04-26 10:19:16', '980A', 'Motor vehicle'),
(983, '12.02.2015', 'Amendments to RPO', 'DOPL978A.pdf', '2016-04-26 10:19:16', '978A', 'RPO'),
(984, '16.02.2015', 'SCL amendments', 'DOPL983.pdf', '2016-04-26 10:19:16', '983', 'SCL'),
(985, '24.02.2015', 'SCL amendments', 'DOPL984.pdf', '2016-04-26 10:19:16', '984', 'SCL'),
(986, '27.02.2015', 'RPO/02/2015 Budget 2015', 'DOPL985.pdf', '2016-04-26 10:19:16', '985', 'RPO/02/2015'),
(987, '27.02.2015', 'ICL', 'DOPL986.pdf', '2016-04-26 10:19:16', '986', 'ICL'),
(988, '27.02.2015', 'Excise amendments', 'DOPL987.pdf', '2016-04-26 10:19:16', '987', 'Excise'),
(989, '27.02.2015', 'Customs Value of Import Goods', 'DOPL988.pdf', '2016-04-26 10:19:16', '988', 'Valuation'),
(990, '06.03.2015', 'VAT Amendment', 'DOPL989.pdf', '2016-04-26 10:19:16', '989', 'VAT'),
(991, '17.03.2015', 'SCL Amendments', 'DOPL990.pdf', '2016-04-26 10:19:16', '990', 'SCL'),
(992, '25.03.2015', 'SCL Amendments', 'DOPL991.pdf', '2016-04-26 10:19:16', '991', 'SCL'),
(993, '27.03.2014', 'ICT Reward pool', 'DOPL118O.pdf', '2016-04-26 10:19:16', '118O', 'ICT POOL'),
(994, '25.09.2013', 'M/V Valuation sub comitee', 'DOPL854C.pdf', '2016-04-26 10:19:16', '854C', 'Motor vehivle'),
(995, '21.11.2013', 'Removal of surcharge on gold', 'DOPL866A.pdf', '2016-04-26 10:19:16', '866A', 'Surcharge-Budget 2014'),
(996, '12.11.2013', 'Export of Gem stones by departing travellers non resident', 'DOPL869 A.pdf', '2016-04-26 10:19:16', '869 A', 'Baggage'),
(997, '27.08.2013', 'Import Examination Scheme for Milk powder contaminated with DCD', 'DOPL878 A.pdf', '2016-04-26 10:19:16', '878 A', 'Milk Powder'),
(998, '16.09.2013', 'Errata to DOPL 880', 'DOPL880 A.pdf', '2016-04-26 10:19:16', '880 A', 'Errata'),
(999, '27.11.2013', 'Errata to RPO 03/2013', 'DOPL890 A.pdf', '2016-04-26 10:19:16', '890 A', 'Errata'),
(1000, '27.11.2013', 'Errata to Cess Budget 2014', 'DOPL892 A.pdf', '2016-04-26 10:19:16', '892 A', 'Errata'),
(1001, '20.01.2014', 'Errata to DOPL 908', 'DOPL908 A.pdf', '2016-04-26 10:19:16', '908 A', 'Errata'),
(1002, '28.01.2014', 'Errata to DOPL 908', 'DOPL908B.pdf', '2016-04-26 10:19:16', '908B', 'Errata'),
(1003, '31.01.2014', 'Errata to DOPL 910', 'DOPL910 A.pdf', '2016-04-26 10:19:16', '910 A', 'Errata'),
(1004, ' ', 'All equipment & Air craft spares should be treated as urgent & clearance permitted after normal working hours.', 'DOPL05A.pdf', '2016-04-26 10:19:16', '05A', 'Air Cargo - 2'),
(1005, '04.04.1995', 'Release of official information to the press or the public', 'DOPL08(1).pdf', '2016-04-26 10:19:16', '08(1)', 'PP&R'),
(1006, '03.06.96', 'Panel Examination Report', 'DOPL107A.pdf', '2016-04-26 10:19:16', '107A', 'PP&R'),
(1007, ' ', 'Enter port trade', 'DOPL94A.pdf', '2016-04-26 10:19:16', '94A', ' '),
(1008, '09.10.95', 'Inclusion of the staff of the office of the Director General of customs in the reward Distribution List. Amendment to DOPL 118.', 'DOPL118 J.pdf', '2016-04-26 10:19:16', '118 J', 'PP&R'),
(1009, '01.04.2003', 'New withholding taxes.', 'DOPL118 K.pdf', '2016-04-26 10:19:16', '118 K', ' '),
(1010, '30.12.2005', 'Distribution of Rewards (Cancellation of DOPL 118 C)', 'DOPL118 M.pdf', '2016-04-26 10:19:16', '118 M', 'PP&R (Rewards)'),
(1011, '208.06.25', 'Allocating Reward for Public Management Assistant Services (PMA)', 'DOPL118 N.pdf', '2016-04-26 10:19:16', '118 N', ' '),
(1012, '23.08.95', 'Amendment to DOPL 118 inclusion of the Staff  of the office of DGC.', 'DOPL118(I).pdf', '2016-04-26 10:19:16', '118(I)', 'PP&R'),
(1013, '13.10.2003', 'Distribution of Rewards.', 'DOPL118(L).pdf', '2016-04-26 10:19:16', '118(L)', ' '),
(1014, ' ', 'Rewards to central sales unit', 'DOPL118A.pdf', '2016-04-26 10:19:16', '118A', 'Gen.'),
(1015, ' ', 'Valuation Branch pool.', 'DOPL118B.pdf', '2016-04-26 10:19:16', '118B', 'Gen.'),
(1016, '11.09.1991', 'Distribution of rewards.', 'DOPL118C.pdf', '2016-04-26 10:19:16', '118C', 'Gen.'),
(1017, ' ', 'Allocation of 50 shares to PP&R and Tr   Pool', 'DOPL118D.pdf', '2016-04-26 10:19:16', '118D', 'Gen.'),
(1018, ' ', 'Allocation of 100 shares to I & I Pool', 'DOPL118E.pdf', '2016-04-26 10:19:16', '118E', 'Gen.'),
(1019, ' ', 'Allocation of 60 shares to PP&R, Training chemical, legal and BOI units.', 'DOPL118F.pdf', '2016-04-26 10:19:17', '118F', 'Gen.'),
(1020, '07.03.95', 'Clarification is regard to the terms additional custom duty referred to in paragraph 08 of DOPL 118', 'DOPL118G.pdf', '2016-04-26 10:19:17', '118G', 'Gen 18'),
(1021, ' ', 'Clarification on additional customs duty referred in Para 8', 'DOPL118G.pdf', '2016-04-26 10:19:17', '118G', 'Gen'),
(1022, '19.05.95', 'Amendment to DOPL 118 Distribution of Rewards to Prosecuting Officers assisting in customs inquiries and in of customs cases before courts and to officers giving expert opinion regarding valuation of ', 'DOPL118H.pdf', '2016-04-26 10:19:17', '118H', 'PP&R'),
(1023, ' ', 'Distribution of rewards to prosecuting officers.', 'DOPL118H.pdf', '2016-04-26 10:19:17', '118H', 'Gen.'),
(1024, ' ', 'Distribution of rewards to the DGC?s staff.', 'DOPL118I&J.pdf', '2016-04-26 10:19:17', '118I&J', 'Gen.'),
(1025, '14.02.1990', 'Addenda to operating instructions for Duty Free Shops at Colombo Air Port, Katunayake.', 'DOPL143B.pdf', '2016-04-26 10:19:17', '143B', ' '),
(1026, ' ', 'Operating instructions for feeder bonds at CAK.', 'DOPL143C.pdf', '2016-04-26 10:19:17', '143C', ' '),
(1027, '31.05.1990', 'Operation of  bonded procedure in PL 148.', 'DOPL149/01.pdf', '2016-04-26 10:19:17', '149/01', 'Bonds'),
(1028, '07.09.1990', 'Amendment to operating Instruction for the Central Bank Duty Free Shop, Gold Centre, CIA Katunayake', 'DOPL154/01.pdf', '2016-04-26 10:19:17', '154/01', 'Bonds'),
(1029, '07.06.1991', 'Addendum to operating Instruction for the Central Bank, Duty Free Shop Gold Centre, CIA Katunayake', 'DOPL154/02.pdf', '2016-04-26 10:19:17', '154/02', 'Bonds'),
(1030, '10.12.1990', 'Delays in finalizing inquiries held under the customs ordinance', 'DOPL155A.pdf', '2016-04-26 10:19:17', '155A', 'DGC/Gen.'),
(1031, '19.10.1990', 'Freight rate for calculation of Duty on Air Cargo', 'DOPL162A.pdf', '2016-04-26 10:19:17', '162A', ' '),
(1032, ' ', 'Facilities for P.E. year of Export 1992', 'DOPL167A.pdf', '2016-04-26 10:19:17', '167A', ' '),
(1033, '23.07.1992', 'An amendment to PL 173', 'DOPL173A.pdf', '2016-04-26 10:19:17', '173A', 'Exports'),
(1034, '30.04.1994', 'Endorsement on export entries and Registration of export invoice for Duty Rebate purposes.', 'DOPL173B.pdf', '2016-04-26 10:19:17', '173B', 'Exports'),
(1035, '21.11.95', 'Security checks.', 'DOPL175A.pdf', '2016-04-26 10:19:17', '175A', 'PP&R'),
(1036, '20.05.96', 'Presence of Attorneys At Law at customs inquiries', 'DOPL177A.pdf', '2016-04-26 10:19:17', '177A', 'PP&R'),
(1037, ' ', '(As above) opinion of Attorney-General', 'DOPL177A.pdf', '2016-04-26 10:19:17', '177A', 'PP & R'),
(1038, '26.08.96', 'Presence of Attorney At Law at customs inquiries', 'DOPL177B.pdf', '2016-04-26 10:19:17', '177B', 'PP&R'),
(1039, '13.11.95', 'Transhipment documentation on FCL cargo.', 'DOPL180A.pdf', '2016-04-26 10:19:17', '180A', 'Exp.'),
(1040, '30.03.92', 'Amendment to DOPL 182', 'DOPL182A.pdf', '2016-04-26 10:19:17', '182A', ' '),
(1041, ' ', 'Non commercial export of personal jewellery of Female Passengers on a Bring Back Basis.', 'DOPL184A.pdf', '2016-04-26 10:19:17', '184A', 'BO/Misc/92/01'),
(1042, ' ', 'Status outside Ref. DOPL 15', 'DOPL186A.pdf', '2016-04-26 10:19:17', '186A', 'Export'),
(1043, '21.10.92', 'Amendment to DOPL 192', 'DOPL192A.pdf', '2016-04-26 10:19:17', '192A', ' '),
(1044, '14.07.94', 'F', 'DOPL205A.pdf', '2016-04-26 10:19:17', '205A', 'Baggage'),
(1045, '13.01.2003', 'Recovery of Consolidated charges for vessel operations and Cargo', 'DOPL218 E.pdf', '2016-04-26 10:19:17', '218 E', ' '),
(1046, '06.01.94', 'Amendment to DOPL 218', 'DOPL218A.pdf', '2016-04-26 10:19:17', '218A', ' '),
(1047, '05.06.94', 'Revision of customs service charges and OT', 'DOPL218B.pdf', '2016-04-26 10:19:17', '218B', ' '),
(1048, ' ', 'Customs charges for discharge of cargo application by shipping agent.', 'DOPL218C.pdf', '2016-04-26 10:19:17', '218C', ' '),
(1049, '09.04.96', 'Recovery ofovertime charges in respect of customs services relating to supervision of packing, palletizing and containerizing cargo for export at the Air Cargo Terminal.', 'DOPL218D.pdf', '2016-04-26 10:19:17', '218D', 'PP&R'),
(1050, ' ', 'Recovery of overtime charges.', 'DOPL218D.pdf', '2016-04-26 10:19:17', '218D', ' '),
(1051, '18.11.94', '- do -', 'DOPL221A.pdf', '2016-04-26 10:19:17', '221A', 'PP&R'),
(1052, '21.08.2002', 'Amendment to DOPL 221B', 'DOPL221C.pdf', '2016-04-26 10:19:17', '221C', ' '),
(1053, '22.03.94', 'Customs formal inquiries', 'DOPL222.pdf', '2016-04-26 10:19:17', '222', 'PP&R'),
(1054, ' ', 'Clarification to DOPL 223', 'DOPL223A.pdf', '2016-04-26 10:19:17', '223A', 'Valuation'),
(1055, '05.08.94', 'Clarification to DOPL 223A', 'DOPL223B.pdf', '2016-04-26 10:19:17', '223B', 'Valuation'),
(1056, '19.12.95', 'Customs Duty concessions and the procedure for the Import of inputs and machinery for the Jem and Jewellery industry.', 'DOPL225A.pdf', '2016-04-26 10:19:17', '225A', 'PP&R'),
(1057, '22.03.96', 'Customs Duty concessions and  the procedure for the Import of inputs and machinery for the jem and jewellary industry.', 'DOPL225B.pdf', '2016-04-26 10:19:17', '225B', 'Bonds'),
(1058, '24.06.94', '- do -', 'DOPL226A.pdf', '2016-04-26 10:19:17', '226A', 'PP&R'),
(1059, '30.05.94', 'Procedure on  customing of cellular phones brought in by foreigners visiting Sri Lanka visiting countries abroad under the roaming service agreements which OTC Australia(Pvt) Ltd has entered into.', 'DOPL227.pdf', '2016-04-26 10:19:18', '227', 'PP&R'),
(1060, '05.08.94', 'Procedure regarding Import declarations queried for value in the Long Room', 'DOPL229(B).pdf', '2016-04-26 10:19:18', '229(B)', 'Valuation'),
(1061, '09.02.95', 'Withdrawal of the replenishment scheme and scheme for exemption of fiscal levies on capital and intermediate goods.', 'DOPL232A.pdf', '2016-04-26 10:19:18', '232A', 'Bonds'),
(1062, ' ', 'An amendment to DOPL 232', 'DOPL232A.pdf', '2016-04-26 10:19:18', '232A', ' '),
(1063, '01.12.95', 'Scheme for exemption of Fiscal Levies of capital Intermediate goods.', 'DOPL232B.pdf', '2016-04-26 10:19:18', '232B', 'Bonds'),
(1064, '25.01.95', '- do -', 'DOPL238(B).pdf', '2016-04-26 10:19:18', '238(B)', 'PP&R'),
(1065, ' ', 'Amendments to DOPL 238', 'DOPL238(C).pdf', '2016-04-26 10:19:18', '238(C)', ' '),
(1066, '25.03.95', 'Amendment to Defense Levy DOPL 238', 'DOPL238(D).pdf', '2016-04-26 10:19:18', '238(D)', 'PP&R'),
(1067, ' ', '-do -', 'DOPL238(D).pdf', '2016-04-26 10:19:18', '238(D)', ' '),
(1068, '30.06.95', 'Amendment to Defense Levy DOPL 238', 'DOPL238(E).pdf', '2016-04-26 10:19:18', '238(E)', 'PP&R'),
(1069, ' ', '- do -', 'DOPL238(E).pdf', '2016-04-26 10:19:18', '238(E)', ' '),
(1070, '02.08.95', 'Defense Levy on duty free imports.', 'DOPL238(F).pdf', '2016-04-26 10:19:18', '238(F)', 'PP&R'),
(1071, ' ', '- do -', 'DOPL238(F).pdf', '2016-04-26 10:19:18', '238(F)', ' '),
(1072, '09.10.95', 'Exemption from Defense Levy on imports by the ICRC', 'DOPL238(G).pdf', '2016-04-26 10:19:18', '238(G)', 'PP&R'),
(1073, ' ', '- do -', 'DOPL238(G).pdf', '2016-04-26 10:19:18', '238(G)', ' '),
(1074, ' ', '- do -', 'DOPL238(H).pdf', '2016-04-26 10:19:18', '238(H)', ' '),
(1075, ' ', '- do -', 'DOPL238(I).pdf', '2016-04-26 10:19:18', '238(I)', ' '),
(1076, ' ', '- do -', 'DOPL238(J).pdf', '2016-04-26 10:19:18', '238(J)', ' '),
(1077, '28.12.94', 'Amendment to DOPL238 (Recovery of the Defense Levy)', 'DOPL238A.pdf', '2016-04-26 10:19:18', '238A', 'PP&R'),
(1078, '13.02.95', 'Amendment to defense levy DOPL 238', 'DOPL238C.pdf', '2016-04-26 10:19:18', '238C', 'PP&R'),
(1079, '29.12.95', 'Recovery of the National Security Levy (Formally known as Defense Levy)', 'DOPL238H.pdf', '2016-04-26 10:19:18', '238H', 'PP&R'),
(1080, '31.12.96', 'Recovery of the Natinal Security Levy.', 'DOPL238I.pdf', '2016-04-26 10:19:18', '238I', 'PP&R'),
(1081, '13.11.97', 'National Security Levy on Gold, Jewellary and Gem.', 'DOPL238J.pdf', '2016-04-26 10:19:18', '238J', 'PP&R'),
(1082, '06.11.98', 'National Security Levy on imported goods', 'DOPL238K.pdf', '2016-04-26 10:19:18', '238K', 'PP&R'),
(1083, '10.01.95', 'Computation of Air Freight charges on Air Cargo', 'DOPL239.pdf', '2016-04-26 10:19:18', '239', 'Valuation'),
(1084, '03.10.1991', 'Clearance of cargo consigned to GCEC enterprises', 'DOPL23A.pdf', '2016-04-26 10:19:18', '23A', 'I & I'),
(1085, '.10.95', 'Period of stay abroad in', 'DOPL247(A).pdf', '2016-04-26 10:19:18', '247(A)', 'PP&R'),
(1086, ' ', 'Allowance', 'DOPL247A.pdf', '2016-04-26 10:19:18', '247A', ' '),
(1087, '12.02.96', 'Amendment to 257', 'DOPL257A.pdf', '2016-04-26 10:19:18', '257A', 'Bonds'),
(1088, '16.11.1982', 'Attention invited to PL 25 Para 10.1 (x)', 'DOPL25A.pdf', '2016-04-26 10:19:18', '25A', 'Imp - 6'),
(1089, '20.12.1982', 'Clearance of Air Cargo on Holidays ? Colombo Air port, Katunayake', 'DOPL25B.pdf', '2016-04-26 10:19:18', '25B', 'Imp - 6'),
(1090, '08.01.97', 'Amendment to DOPL 268', 'DOPL268A.pdf', '2016-04-26 10:19:18', '268A', 'Bonds'),
(1091, '29.09.98', 'Bonded warehouse of M/s. DHL Keels (Pvt) Ltd; at Ja-Ela.', 'DOPL268B.pdf', '2016-04-26 10:19:18', '268B', 'PP&R'),
(1092, '23.02.98', 'M/s. Liz clainborne international procedure for  quality inspection of goods exported by Air', 'DOPL284A.pdf', '2016-04-26 10:19:19', '284A', 'Infact Centre'),
(1093, '16.06.98', 'Addendum to DOPL 286 of 30th March 1998', 'DOPL286A.pdf', '2016-04-26 10:19:19', '286A', 'PP & R'),
(1094, '30.03.98', 'Appendum to DOPL 286 A', 'DOPL286A.pdf', '2016-04-26 10:19:19', '286A', 'PP & R'),
(1095, '09.07.99', 'List of GST Exemption', 'DOPL286B.pdf', '2016-04-26 10:19:19', '286B', 'PP&R (PL 287)'),
(1096, '03.08.99', 'List of GST Exemption', 'DOPL286C.pdf', '2016-04-26 10:19:19', '286C', 'PP&R'),
(1097, '05.05.98', 'Addendum to DOPL 288 of 1st April 1998', 'DOPL288A.pdf', '2016-04-26 10:19:19', '288A', 'PP & R'),
(1098, '30.07.2013', 'Bio Diversity Protection Tasks Force BPTF', 'DOPL291A.pdf', '2016-04-26 10:19:19', '291A', 'BPU'),
(1099, '2008.07.26', 'Laws Governing the Movement of Funa and Flora', 'DOPL292 C.pdf', '2016-04-26 10:19:19', '292 C', ' '),
(1100, '21.09.2001', 'Laws governing the movement of Fauna & Flora', 'DOPL292B.pdf', '2016-04-26 10:19:19', '292B', 'PL 450'),
(1101, '16.08.2002', 'Release of Consignments of paper and papers products.', 'DOPL295A.pdf', '2016-04-26 10:19:19', '295A', ' '),
(1102, '01.07.1999', 'Regularizing the procedure in seeking investigation                         from other custom administration.', 'DOPL302A.pdf', '2016-04-26 10:19:19', '302A', 'PP&R'),
(1103, '06.09.1999', 'Customs of                    instraction for the south Asia Gateway terminal at QEQ Area.', 'DOPL310(PL3.pdf', '2016-04-26 10:19:19', '310(PL392)', 'PP&R'),
(1104, '24.03.2000', '- Do -                  (Withdrawal of DOPL 318)', 'DOPL318A.pdf', '2016-04-26 10:19:19', '318A', 'CCED'),
(1105, '18.01.2000', '- do -', 'DOPL319A.pdf', '2016-04-26 10:19:19', '319A', ' '),
(1106, '11.07.2001', 'Restoration of Customs facilities DOPL 322 of 28.02.2000 in this regard is hereby rescinded', 'DOPL322 A.pdf', '2016-04-26 10:19:19', '322 A', 'PL 398'),
(1107, '11.04.2000', 'Suspension of DOPL 323 section 163 of the Customs Ordinance order in consent of appeal .  Application 259/99', 'DOPL323A.pdf', '2016-04-26 10:19:19', '323A', ' '),
(1108, '10.04.2000', 'Addendum to DOPL 324 Collection of stamp duty on import documents.', 'DOPL324A.pdf', '2016-04-26 10:19:19', '324A', 'PP&R'),
(1109, '20.06.2000', 'Amendment to DOPL 328 processing of additional cusdecs.', 'DOPL328A.pdf', '2016-04-26 10:19:19', '328A', 'PL 336'),
(1110, '14.07.2000', 'Restoration of Customs facilities(2) out of 35 Enterprises', 'DOPL338 A.pdf', '2016-04-26 10:19:19', '338 A', 'PL 398'),
(1111, '14.12.2000', 'Restoration of Customs facilities to the Brilliant Garments Pvt. Ltd.,', 'DOPL338 C.pdf', '2016-04-26 10:19:19', '338 C', 'PL 398'),
(1112, ' ', 'Restoration of Customs facilities for tropical Health Food (Pvt) Ltd.,', 'DOPL338B.pdf', '2016-04-26 10:19:19', '338B', 'PL 398 (Infac)'),
(1113, '25.07.2000', 'Suspension of DOPL 339', 'DOPL339A.pdf', '2016-04-26 10:19:19', '339A', 'PL 398'),
(1114, '03.09.2001', 'Cancellation of DOPL 346', 'DOPL346 C.pdf', '2016-04-26 10:19:19', '346 C', 'PL 136'),
(1115, '18.08.2000', 'Order under section (OCA) of the Customs Ordinance Chapter 235 surcharge edible oil', 'DOPL346, 34.pdf', '2016-04-26 10:19:19', '346, 346A,346B,346C', 'PL 136'),
(1116, '08.11.2000', 'Extension of validity period of surcharge on customs duty on imports of potatoes till 30.11.2000', 'DOPL347A.pdf', '2016-04-26 10:19:19', '347A', 'PL 136'),
(1117, '22.01.2001', 'Withdrawal of DOPL 359', 'DOPL359 A.pdf', '2016-04-26 10:19:19', '359 A', 'PL 398'),
(1118, '21.03.2001', 'Restoration of Customs facilities to M/s Scoop Fashions (Pvt) Ltd.,', 'DOPL361A.pdf', '2016-04-26 10:19:19', '361A', 'PL 398'),
(1119, '27.03.2001', 'Restoration of Customs facilities to M/s Eden International (Pvt) Ltd., No.194, Sri Ramanathan Mawatha, Colombo 13', 'DOPL365 A.pdf', '2016-04-26 10:19:19', '365 A', 'PL 398'),
(1120, '22.03.2001', 'Temporary restorations of Customs facilities ? M/s Saifi Trading Co., 39, New Moor Street, Colombo 12', 'DOPL367 A.pdf', '2016-04-26 10:19:19', '367 A', 'PL 398'),
(1121, '30.04.2001', 'Cancellations of DOPL 368', 'DOPL368 A.pdf', '2016-04-26 10:19:19', '368 A', 'PL 84'),
(1122, '02.04.2001', 'Addendum to DOPL 369', 'DOPL369 A.pdf', '2016-04-26 10:19:19', '369 A', 'PL 268'),
(1123, '16.10.2001', 'Restoration of DOPL 380', 'DOPL380A.pdf', '2016-04-26 10:19:19', '380A', 'Bonds'),
(1124, '04.12.2001', 'Restoration of  Customs facilities of M/s Tulip Industries', 'DOPL388 A.pdf', '2016-04-26 10:19:19', '388 A', 'PL 398'),
(1125, '02.04.2002', 'Surcharge Alternation on NSD', 'DOPL402 A.pdf', '2016-04-26 10:19:19', '402 A', 'PL 136'),
(1126, '17.04.2002', 'Amendment to DOPL 405', 'DOPL405A.pdf', '2016-04-26 10:19:19', '405A', 'PL 136'),
(1127, '24.05.2002', 'Amendment of Port & Airport Development Levy and Amendment to be moved at the Committee stage of the bill', 'DOPL407A.pdf', '2016-04-26 10:19:19', '407A', 'PAL'),
(1128, '25.07.2002', 'Ports      Ports Development Levy', 'DOPL407B.pdf', '2016-04-26 10:19:19', '407B', 'PAL'),
(1129, ' ', 'Restoration of above facility', 'DOPL409 A.pdf', '2016-04-26 10:19:19', '409 A', ' '),
(1130, ' ', 'Restoration of 412', 'DOPL412 A.pdf', '2016-04-26 10:19:19', '412 A', ' '),
(1131, '25.06.2002', 'Withdraw of stoppage Custom facilities of M/s. Muhaz Freighters No. 112/34, Vauxhall St: Colombo 02.', 'DOPL415A.pdf', '2016-04-26 10:19:20', '415A', ' '),
(1132, '19.09.2002', 'VAT ? Inclusion of more HS Nos. in heading 49 ? (Books)', 'DOPL419B.pdf', '2016-04-26 10:19:20', '419B', ' '),
(1133, '27.11.2002', 'VAT- Exemption', 'DOPL419C.pdf', '2016-04-26 10:19:20', '419C', ' '),
(1134, '25.03.2003', 'VAT ? Exemption', 'DOPL419D.pdf', '2016-04-26 10:19:20', '419D', ' '),
(1135, '30.06.2003', 'VAT Charges', 'DOPL419E.pdf', '2016-04-26 10:19:20', '419E', ' '),
(1136, '13.09.2002', 'Restoration of the customs facilities of above', 'DOPL426A.pdf', '2016-04-26 10:19:20', '426A', ' '),
(1137, '19.02.2003', 'Depreciation Table for the valuation of used Motor vehicles.', 'DOPL444A.pdf', '2016-04-26 10:19:20', '444A', ' '),
(1138, '21.02.2003', 'Erratum  No. 444A', 'DOPL444B.pdf', '2016-04-26 10:19:20', '444B', ' '),
(1139, '19.03.2003', 'Re-storation of customs facilities of M/s. M& M Apparel (DOPL 449 refers).', 'DOPL449A.pdf', '2016-04-26 10:19:20', '449A', ' '),
(1140, '30.05.2003', 'Restoration of Customs facilities of M/s. Econopack (Pvt) Ltd: (DOPL 455 refers).', 'DOPL455A.pdf', '2016-04-26 10:19:20', '455A', ' '),
(1141, '26.04.2004', 'Recovery of VAT (see 470)', 'DOPL470A.pdf', '2016-04-26 10:19:20', '470A', ' '),
(1142, '01.07.2004', 'Recovery of VAT', 'DOPL470B.pdf', '2016-04-26 10:19:20', '470B', ' '),
(1143, '09.08.2004', 'Recovery of VAT (Amendment  to DOPL 470)', 'DOPL470C.pdf', '2016-04-26 10:19:20', '470C', 'Vat'),
(1144, '27.02.2004', 'Import of used                 equipment.', 'DOPL474A.pdf', '2016-04-26 10:19:20', '474A', ' '),
(1145, '08.03.2004', 'Out breaks of Avian Influenza Restriction of Imports from Canada.', 'DOPL474B.pdf', '2016-04-26 10:19:20', '474B', ' '),
(1146, '19.08.2004', 'Amendments to DOPL 478 of 01.07.2004 and the schedules', 'DOPL478A.pdf', '2016-04-26 10:19:20', '478A', 'OT'),
(1147, '28.02.2005', 'Recovery of EDB Cess', 'DOPL487A.pdf', '2016-04-26 10:19:20', '487A', 'PP&R'),
(1148, '08.02.2005', 'Calculation formula fiscal levies on imported goods', 'DOPL494A.pdf', '2016-04-26 10:19:20', '494A', 'PP&R'),
(1149, '30.03.2005', 'Release of donated fibre glass materials, fishing nets and gear for rehabilitation of finishing  industry affected by Tsunami.', 'DOPL500A.pdf', '2016-04-26 10:19:20', '500A', 'PP&R (Imports)'),
(1150, '14.11.2006', 'Operational instructions, import/export warehouse at Terminal II Air Cargo Village, Katunayake ? operated by M/s. Expo Aviation (Pvt) Ltd.', 'DOPL501A.pdf', '2016-04-26 10:19:20', '501A', 'PP&R'),
(1151, '02.08.2005', 'Vat exemption on HS Code 7118.90.01', 'DOPL520A.pdf', '2016-04-26 10:19:20', '520A', 'PP&R (Vat)'),
(1152, '03.08.2005', 'Vat rate charges.', 'DOPL520A.pdf', '2016-04-26 10:19:20', '520A', 'PP&R (Vat)'),
(1153, '17.08.2005', 'Excise (Special/Provisions) Act No.13 of 1989 ? order under', 'DOPL521A.pdf', '2016-04-26 10:19:20', '521A', 'PP&R (Excise)'),
(1154, ' ', 'Procedure to be followed in the transport of goods from air cargo to Trico Bond.', 'DOPL52A.pdf', '2016-04-26 10:19:20', '52A', 'Air Cargo'),
(1155, '08.11.2005', 'Excise (Special Provision) Act No. 13 of 1989 ? Order under  section 3-3(1) ? Excise Duty.', 'DOPL531A.pdf', '2016-04-26 10:19:20', '531A', 'PP&R(Excise)'),
(1156, '08.11.2005', 'Excise (Special provision ) Act No. 13 of 1989 order under section 3(3).', 'DOPL531B.pdf', '2016-04-26 10:19:20', '531B', 'PP&R (Excise)'),
(1157, '2009.01.01', 'Vat Exemption on Machinery Used for Construction Industry', 'DOPL535A.pdf', '2016-04-26 10:19:20', '535A', 'VAT'),
(1158, '03.10.91', 'ATA Carnet convention', 'DOPL53A.pdf', '2016-04-26 10:19:20', '53A', 'I&I'),
(1159, '18.10.1984', 'ATA Convent', 'DOPL53A.pdf', '2016-04-26 10:19:20', '53A', 'PP&R'),
(1160, '15.03.2006', 'Errata to RPO 02/2006', 'DOPL548 A.pdf', '2016-04-26 10:19:20', '548 A', 'PP&R'),
(1161, '16.04.1985', 'Release of telephone and telecommunication switching equip.', 'DOPL55A.pdf', '2016-04-26 10:19:20', '55A', 'App.'),
(1162, '02.07.2012', 'Amendments to the list of Members of the Technical Committees', 'DOPL562 C.pdf', '2016-04-26 10:19:20', '562 C', 'SCL'),
(1163, '14.12.2012', 'NC Committee', 'DOPL562 D.pdf', '2016-04-26 10:19:20', '562 D', 'NC'),
(1164, '21.07.2014', 'NC Committee', 'DOPL562 E.pdf', '2016-04-26 10:19:20', '562 E', 'NC Committee'),
(1165, '19.09.2006', 'Errata to RPO/5/2006', 'DOPL565 A.pdf', '2016-04-26 10:19:20', '565 A', 'PP&R'),
(1166, '03.01.2012', 'Risk Management Committee (Amendment)', 'DOPL572 C.pdf', '2016-04-26 10:19:20', '572 C', 'RMC'),
(1167, '21.12.2006', 'Suspension of Recovery of EDB Cess.', 'DOPL577 B.pdf', '2016-04-26 10:19:20', '577 B', 'PP&R'),
(1168, '17.01.2007', 'Order under section 2(1) (a) of the Finance Act. (Motor Vehicle', 'DOPL577 C.pdf', '2016-04-26 10:19:20', '577 C', 'PP&R'),
(1169, '21.12.2006', 'Suspension of recovery of EDB Cess', 'DOPL577A.pdf', '2016-04-26 10:19:20', '577A', 'PP&R'),
(1170, '04.12.2006', 'Amendment to calculation formulae of Fiscal Levies on Imported Goods.', 'DOPL578 B.pdf', '2016-04-26 10:19:20', '578 B', 'PP&R'),
(1171, '17.11.2006', 'Regional infrastructure Development Levy', 'DOPL578A.pdf', '2016-04-26 10:19:21', '578A', 'PP&R'),
(1172, '11.01.2007', 'Re-circulation of letter No. FP/06/20/01/02(VII) of 27.12.2006 from the Ministry of Finance & Planning (Letter attached with DOPL 579).', 'DOPL579A.pdf', '2016-04-26 10:19:21', '579A', 'PP&R'),
(1173, '25.04.2007', 'Motor Vehicles concensionary levy ? The Finance Act No. 11 of 2006 ? Order under Section 2(1) (6)', 'DOPL582A.pdf', '2016-04-26 10:19:21', '582A', 'PP&R'),
(1174, '14.05.2007', 'Motor vehicle concessions Levy. The Finance Act No. 11 of 2006 order under section 2(1) (b) (1) and (II)', 'DOPL582B.pdf', '2016-04-26 10:19:21', '582B', 'PP&R'),
(1175, '06.02.2013', 'Motor Vehicle Concessionary Levy', 'DOPL582D.pdf', '2016-04-26 10:19:21', '582D', 'M/V Permit'),
(1176, '21.05.2007', 'Recovery of EDB Cess (MRP Based)', 'DOPL593A.pdf', '2016-04-26 10:19:21', '593A', ' '),
(1177, '19.10.2007', 'Excise Duty Amendment for Cigarettes', 'DOPL597A.pdf', '2016-04-26 10:19:21', '597A', 'DOPL 597 Excise'),
(1178, '31.08.2007', 'Errata to RPO 603.2007', 'DOPL603 A.pdf', '2016-04-26 10:19:21', '603 A', ' '),
(1179, '2008.04.28', 'Collection at MRP Declaration and CusDecs', 'DOPL606 A.pdf', '2016-04-26 10:19:21', '606 A', ' '),
(1180, '2008.09.29', 'Payable Cess Based on MRP', 'DOPL606 B.pdf', '2016-04-26 10:19:21', '606 B', 'Cess'),
(1181, '16.10.2007', 'Possession and Retention of Foreign Exchange', 'DOPL607(1).pdf', '2016-04-26 10:19:21', '607(1)', ' '),
(1182, ' ', 'Export from and Import into Sri Lanka of Sri Lankan Currency Notes on Foreign Currency', 'DOPL607(ii).pdf', '2016-04-26 10:19:21', '607(ii)', ' '),
(1183, '2008.09.05', 'Erratum for RPO 4/2007', 'DOPL611 B.pdf', '2016-04-26 10:19:21', '611 B', ' ');
INSERT INTO `dopl_files` (`id`, `date`, `title`, `url`, `date_modified`, `no`, `branch`) VALUES
(1184, ' ', 'Revision of Cess Duty', 'DOPL614 B.pdf', '2016-04-26 10:19:21', '614 B', ' '),
(1185, '2008.01.14', 'Cess duty changer', 'DOPL614 C.pdf', '2016-04-26 10:19:21', '614 C', 'CESS'),
(1186, ' ', 'Revision of Cess Duty', 'DOPL614A.pdf', '2016-04-26 10:19:21', '614A', 'Cess'),
(1187, ' ', ' ', 'DOPL637 A.pdf', '2016-04-26 10:19:21', '637 A', ' '),
(1188, '2009.01.01', 'Notification of EDB Cess Correction', 'DOPL653A.pdf', '2016-04-26 10:19:21', '653A', 'EDB Cess'),
(1189, '2009.01.01', 'RPO 1/2008', 'DOPL654A.pdf', '2016-04-26 10:19:21', '654A', 'not issued'),
(1190, '2009.01.01', 'Errata to List of Concession', 'DOPL654B.pdf', '2016-04-26 10:19:21', '654B', 'not issued'),
(1191, '2009.02.27', 'Amendment of Excise Duty', 'DOPL662A.pdf', '2016-04-26 10:19:21', '662A', 'Excise Duty'),
(1192, '20094.04.04', 'Nation Building Tax Exemption of Petroleum and Petroleum Production', 'DOPL666A.pdf', '2016-04-26 10:19:21', '666A', 'NBT'),
(1193, '2009.02.20', 'Cess Amendment', 'DOPL667A.pdf', '2016-04-26 10:19:21', '667A', 'Cess'),
(1194, '2009.03.09', 'Correction & Errata', 'DOPL667B.pdf', '2016-04-26 10:19:21', '667B', ' '),
(1195, '1/7/2010', 'Screen all imports of Full Cream Milk Powder', 'DOPL683A.pdf', '2016-04-26 10:19:21', '683A', ' '),
(1196, '30/4/2010', 'Amendment to - Cash Deposits made by Inbound Travelers and Repayment', 'DOPL696A.pdf', '2016-04-26 10:19:22', '696A', 'Procedure'),
(1197, '1/9/2010', 'Excise Duty Amendment', 'DOPL707A.pdf', '2016-04-26 10:19:22', '707A', 'Excise'),
(1198, '1/11/2010', 'Excise Duty Amendment', 'DOPL707B.pdf', '2016-04-26 10:19:22', '707B', 'Excise'),
(1199, '16/12/2010', 'Excise Duty Amendment', 'DOPL707C.pdf', '2016-04-26 10:19:22', '707C', 'Excise'),
(1200, '21/6/2010', 'SCL Amendment', 'DOPL709A.pdf', '2016-04-26 10:19:22', '709A', 'SCL'),
(1201, '21/9/2010', 'SCL Amendment', 'DOPL709B.pdf', '2016-04-26 10:19:22', '709B', 'SCL'),
(1202, '1/6/2010', 'VAT Changes Addendum', 'DOPL719A.pdf', '2016-04-26 10:19:22', '719A', 'VAT'),
(1203, '10/12/2010', 'Continuation of SCL Amendment', 'DOPL724A.pdf', '2016-04-26 10:19:22', '724A', 'SCL'),
(1204, '10/4/2011', 'Continuation of SCL Amendment', 'DOPL724B.pdf', '2016-04-26 10:19:22', '724B', 'SCL'),
(1205, '23/11/2010', 'Amendment RPO 02/2010', 'DOPL736A.pdf', '2016-04-26 10:19:22', '736A', ' '),
(1206, '7/12/2010', 'Amendment RPO 02/2010', 'DOPL736B.pdf', '2016-04-26 10:19:22', '736B', ' '),
(1207, '16.07.2012', 'Determination of Customs Value for Motor Vehicles', 'DOPL737A.pdf', '2016-04-26 10:19:22', '737A', 'Valuation'),
(1208, '23/11/2010', 'Revision Excise Duty- Diesel Vans and Double Cabs', 'DOPL738A.pdf', '2016-04-26 10:19:22', '738A', 'Excise'),
(1209, '23/11/2010', 'Cess Amendment', 'DOPL739A.pdf', '2016-04-26 10:19:22', '739A', 'Cess'),
(1210, '23/11/2010', 'Removal of Cess on Playing Cards 9504.40', 'DOPL739B.pdf', '2016-04-26 10:19:22', '739B', 'Cess'),
(1211, '2/12/2010', 'Errata to DOPL 740', 'DOPL740A.pdf', '2016-04-26 10:19:22', '740A', 'Formulas'),
(1212, '26/11/2010', 'Exemption of PAL on Bitumen', 'DOPL744A.pdf', '2016-04-26 10:19:22', '744A', 'PAL'),
(1213, '23/11/2010', 'Revision of Export Cess', 'DOPL745A.pdf', '2016-04-26 10:19:22', '745A', 'Cess'),
(1214, '25/12/2010', 'Amendment of Export Cess on Coconut', 'DOPL745B.pdf', '2016-04-26 10:19:22', '745B', 'Cess'),
(1215, '5/3/2011', 'Amendment of Export Cess', 'DOPL745C.pdf', '2016-04-26 10:19:22', '745C', 'Cess'),
(1216, '27.03.2013', 'Valuation Committee', 'DOPL749 A.pdf', '2016-04-26 10:19:22', '749 A', ' '),
(1217, '8/8/2011', 'Addendum to DOPL 769', 'DOPL769A.pdf', '2016-04-26 10:19:22', '769A', ' '),
(1218, '22/11/2011', 'Errata', 'DOPL783A.pdf', '2016-04-26 10:19:22', '783A', 'Cess'),
(1219, '22/11/2011', 'Errata', 'DOPL783B.pdf', '2016-04-26 10:19:22', '783B', 'Cess'),
(1220, '22/11/2011', 'Errata', 'DOPL787A.pdf', '2016-04-26 10:19:22', '787A', ' '),
(1221, '1/1/2012', 'Errata', 'DOPL797A.pdf', '2016-04-26 10:19:22', '797A', ' '),
(1222, '08.02.2012', 'Errata to DOPL 797 (Exemption of VAT, NBT, CESS & Customs Duty for the imports of Sri Lanka Catering Pvt. Ltd.', 'DOPL797A.pdf', '2016-04-26 10:19:22', '797A', ' '),
(1223, '30.07.2013', 'ICL Requirements', 'DOPL804A.pdf', '2016-04-26 10:19:22', '804A', 'ICL'),
(1224, '05.07.2012', 'Instructions on simplification of clearance of Gem parcels at Airport', 'DOPL810 A.pdf', '2016-04-26 10:19:22', '810 A', ' '),
(1225, '18.04.2013', 'Facilitating Clearance of hand carrying Gem parcels through airport', 'DOPL810B.pdf', '2016-04-26 10:19:22', '810B', 'Gem'),
(1226, '28.06.2012', 'Amendments to the SCL on Sugar one moth from 20.06.2012', 'DOPL815 A.pdf', '2016-04-26 10:19:22', '815 A', 'SCL'),
(1227, '09.07.2012', 'Revision of Export Development Cess Rates (Order made under Section 14 of SLED Act, No. 40 of 1979) DOPL 816 is rescinded  by this DOPL', 'DOPL816 A.pdf', '2016-04-26 10:19:22', '816 A', 'Cess'),
(1228, '01.08.2013', 'Removal of Restriction on exportation of paddy and rice', 'DOPL817A.pdf', '2016-04-26 10:19:22', '817A', 'Exports'),
(1229, '14.11.2012', 'Errata to RPO 03/2012', 'DOPL830A.pdf', '2016-04-26 10:19:22', '830A', 'Errata'),
(1230, '23.11.2012', 'Errata #2 to RPO 03/2012', 'DOPL830B.pdf', '2016-04-26 10:19:22', '830B', 'Errata'),
(1231, ' ', 'Budget 2013', 'DOPL831A.pdf', '2016-04-26 10:19:22', '831A', 'Cess'),
(1232, '07.12.2012', 'Corrections on DOPL 836', 'DOPL836A.pdf', '2016-04-26 10:19:22', '836A', ' '),
(1233, '21.12.2012', 'Amendments to the  VAT', 'DOPL839A.pdf', '2016-04-26 10:19:22', '839A', 'VAT'),
(1234, '02.01.2013', 'VAT amendments', 'DOPL839B.pdf', '2016-04-26 10:19:22', '839B', 'VAT'),
(1235, '02.01.2013', 'Amendments to the VAT', 'DOPL839B.pdf', '2016-04-26 10:19:22', '839B', 'VAT'),
(1236, '08.02.2013', 'Exemption of VAT, Fire fighting vehicles', 'DOPL839C.pdf', '2016-04-26 10:19:23', '839C', 'VAT'),
(1237, '05.02.2013', 'Export Cess on Tea', 'DOPL846A.pdf', '2016-04-26 10:19:23', '846A', 'Cess'),
(1238, '20.02.2013', 'Revision of Cess on Export of Tea', 'DOPL846B.pdf', '2016-04-26 10:19:23', '846B', 'Cess'),
(1239, '27.03.2013', 'Valuation Committee', 'DOPL849A.pdf', '2016-04-26 10:19:23', '849A', 'Valuation'),
(1240, '03.04.2013', 'Facilitating clearance of Ethanol', 'DOPL853A.pdf', '2016-04-26 10:19:23', '853A', 'Ethanol'),
(1241, '02.04.2013', 'Corrigandum to DOPL 854', 'DOPL854A.pdf', '2016-04-26 10:19:23', '854A', 'Valuation'),
(1242, '21.05.2013', 'Annex to DOPL 854', 'DOPL854B.pdf', '2016-04-26 10:19:23', '854B', 'Valuation'),
(1243, '23.04.2014', 'Customs investigations & inquiries', 'DOPL861 A.pdf', '2016-04-26 10:19:23', '861 A', 'Legal'),
(1244, '12.11.2013', 'Export of Gems of forign passport holders', 'DOPL869A.pdf', '2016-04-26 10:19:23', '869A', 'GEM'),
(1245, '19.08.2014', 'Errata to DOPL 869A', 'DOPL869 B.pdf', '2016-04-26 10:19:23', '869 B', 'Errata'),
(1246, '24.04.2014', 'Errata to DOPL 923', 'DOPL923 A.pdf', '2016-04-26 10:19:23', '923 A', 'SCL'),
(1247, '07.05.2014', 'Restoration of Customs facilities of M/s Harcourts (pvt).ltd', 'DOPL926 A.pdf', '2016-04-26 10:19:23', '926 A', 'Customs fascilities'),
(1251, '29.04.2016', 'qwe', '1461906952TelnetCommands.pdf', '2016-04-29 05:15:53', '1233', ''),
(1252, '29.04.2016', 'qwes', '0', '2016-04-29 05:17:01', '1233', ''),
(1254, '29.04.2016', 'Tracktor', '1461907571TelnetCommands.pdf', '2016-04-29 05:26:13', '1000', ''),
(1255, '12.07.2016', 'asd', '1468305502er15', '2016-07-12 06:38:22', '112D', ''),
(1256, '12.07.2016', 'sdf', '1468305599er15', '2016-07-12 06:40:00', 's', ''),
(1257, '12.07.2016', 'sdf', '1468305853er15_________1221.pdf', '2016-07-12 06:44:14', '123', '');

-- --------------------------------------------------------

--
-- Table structure for table `export_roster_files`
--

CREATE TABLE IF NOT EXISTS `export_roster_files` (
`id` INT(20) NOT NULL,
`date` DATETIME NOT NULL,
`title` VARCHAR(200) NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE IF NOT EXISTS `feedbacks` (
`id` INT(20) NOT NULL,
`name` VARCHAR(40) NOT NULL,
`email` VARCHAR(40) NOT NULL,
`comment` VARCHAR(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `email`, `comment`) VALUES
(1, 'asd', 'a@g.vom', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `foreign_transfer_files`
--

CREATE TABLE IF NOT EXISTS `foreign_transfer_files` (
`id` INT(11) NOT NULL,
`date` DATETIME NOT NULL,
`title` VARCHAR(200) NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
`id` INT(11) NOT NULL,
`name` VARCHAR(200) NOT NULL,
`category` VARCHAR(200) NOT NULL,
`post_id` INT(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `category`, `post_id`) VALUES
(1, '1452150252Emblem_of_Sri_Lanka.svg.png', '', 15),
(2, '14521502949.png', '', 16),
(3, '1452486271lentils-1-1024x768.jpg', '', 15),
(5, '1452744505lentils-1-1024x768.jpg', '', 14),
(6, '1452744512lentils-1-1024x768.jpg', '', 13),
(7, '1452744518Onions-and-potatoes-415x260.jpg', '', 11),
(8, '1452744526Onions-and-potatoes-415x260.jpg', '', 9);

-- --------------------------------------------------------

--
-- Table structure for table `import_roster_files`
--

CREATE TABLE IF NOT EXISTS `import_roster_files` (
`id` INT(20) NOT NULL,
`date` DATETIME NOT NULL,
`title` VARCHAR(200) NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `legaluploads`
--

CREATE TABLE IF NOT EXISTS `legaluploads` (
`id` INT(20) NOT NULL,
`date` DATETIME NOT NULL,
`title` VARCHAR(200) NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `local_training_files`
--

CREATE TABLE IF NOT EXISTS `local_training_files` (
`id` INT(11) NOT NULL,
`date` DATETIME NOT NULL,
`title` VARCHAR(200) NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mvuploads`
--

CREATE TABLE IF NOT EXISTS `mvuploads` (
`id` INT(20) NOT NULL,
`date` DATETIME NOT NULL,
`title` VARCHAR(200) NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mvuploads`
--

INSERT INTO `mvuploads` (`id`, `date`, `title`, `url`, `date_modified`) VALUES
(3, '2013-07-20 16:00:00', 'asd', '1468384084er15_________1221.pdf', '2016-07-13 04:28:06');

-- --------------------------------------------------------

--
-- Table structure for table `ncds_files`
--

CREATE TABLE IF NOT EXISTS `ncds_files` (
`id` INT(20) NOT NULL,
`date` DATETIME NOT NULL,
`title` VARCHAR(200) NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `org_struct`
--

CREATE TABLE IF NOT EXISTS `org_struct` (
`id` INT(20) NOT NULL,
`struct_loc_id` INT(20) NOT NULL,
`user_id` INT(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_struct`
--

INSERT INTO `org_struct` (`id`, `struct_loc_id`, `user_id`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 3, 0),
(4, 4, 0),
(5, 5, 0),
(6, 6, 0),
(7, 7, 0),
(8, 8, 0),
(9, 9, 0),
(10, 10, 0),
(11, 11, 0),
(12, 10, 0),
(13, 11, 0),
(14, 12, 0),
(15, 13, 0),
(16, 14, 0),
(17, 15, 0),
(18, 16, 0),
(19, 17, 0),
(20, 18, 0),
(21, 19, 0),
(22, 20, 0),
(23, 21, 0),
(24, 22, 0),
(25, 23, 0),
(26, 24, 0),
(27, 25, 0),
(28, 26, 0),
(29, 27, 0),
(30, 28, 0),
(31, 29, 0),
(32, 30, 0),
(33, 31, 0),
(34, 32, 0),
(35, 33, 0),
(36, 34, 0),
(37, 35, 0),
(38, 36, 0),
(39, 37, 0),
(40, 38, 0),
(41, 39, 0),
(42, 40, 0),
(43, 41, 0),
(44, 42, 0),
(45, 43, 0),
(46, 44, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` INT(11) NOT NULL,
`title` VARCHAR(200) NOT NULL,
`description` TEXT NOT NULL,
`slug` VARCHAR(200) NOT NULL,
`category_id` INT(11) NOT NULL,
`author_id` INT(11) NOT NULL,
`division_id` INT(11) NOT NULL,
`homepage_view` INT(11) NOT NULL,
`published` INT(11) NOT NULL,
`status` INT(11) NOT NULL,
`created_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
`modified_date` DATETIME NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `slug`, `category_id`, `author_id`, `division_id`, `homepage_view`, `published`, `status`, `created_date`, `modified_date`) VALUES
(9, 'Import Control License Regulations Effective from 2015/05/01', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum or</p>', '', 0, 0, 0, 1, 0, 0, '2015-08-20 10:31:10', '0000-00-00 00:00:00'),
(11, 'Special Commodity Levy Changes Effective from 2015/06/18', '<p>0</p>', '', 0, 0, 0, 1, 0, 0, '2015-08-24 07:40:58', '0000-00-00 00:00:00'),
(13, 'ASYCUDA WORLD SPECIAL NOTICE Effective from 2015/07/21', '<p>We are in the process of upgrading the Asycuda World System. Therefore with the upgrade there will be Two Asycuda World Systems namely the New (Upgraded) Asycuda World System and the Old (Present) Asy</p>', '', 0, 0, 0, 1, 0, 0, '2015-08-24 08:49:05', '0000-00-00 00:00:00'),
(14, 'NCU''s Latest Detection: 1.8 kg of Methamphetamine', '<p>', '', 0, 0, 0, 0, 0, 0, '2015-12-01 05:12:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ratex_files`
--

CREATE TABLE IF NOT EXISTS `ratex_files` (
`id` INT(11) NOT NULL,
`title` VARCHAR(200) NOT NULL,
`date` DATE NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratex_files`
--

INSERT INTO `ratex_files` (`id`, `title`, `date`, `url`, `date_modified`) VALUES
(8, '', '2012-12-11', '1443422791ENHS28E.pdf', '2015-09-28 06:46:32'),
(9, '', '2005-01-30', '1443422896er050103.pdf', '2015-09-28 06:48:17'),
(13, '', '2015-06-29', '1443423092er150629.pdf', '2015-09-28 06:51:33');

-- --------------------------------------------------------

--
-- Table structure for table `rct_roster_app_files`
--

CREATE TABLE IF NOT EXISTS `rct_roster_app_files` (
`id` INT(20) NOT NULL,
`date` DATETIME NOT NULL,
`title` VARCHAR(200) NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rct_roster_so_files`
--

CREATE TABLE IF NOT EXISTS `rct_roster_so_files` (
`id` INT(20) NOT NULL,
`date` DATETIME NOT NULL,
`title` VARCHAR(200) NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roster`
--

CREATE TABLE IF NOT EXISTS `roster` (
`id` INT(10) NOT NULL,
`user_id` INT(10) NOT NULL,
`date` DATETIME NOT NULL,
`shift` VARCHAR(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sc_transfer_files`
--

CREATE TABLE IF NOT EXISTS `sc_transfer_files` (
`id` INT(11) NOT NULL,
`date` DATETIME NOT NULL,
`title` VARCHAR(200) NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tariff_changes`
--

CREATE TABLE IF NOT EXISTS `tariff_changes` (
`id` INT(11) NOT NULL,
`title` VARCHAR(200) NOT NULL,
`date` DATE NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tariff_changes`
--

INSERT INTO `tariff_changes` (`id`, `title`, `date`, `url`, `date_modified`) VALUES
(6, 'Special Commodity Levy Changes Effective from 2015/07/21', '2015-09-28', '1443428466er050214.pdf', '2015-09-28 08:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `tender_files`
--

CREATE TABLE IF NOT EXISTS `tender_files` (
`id` INT(11) NOT NULL,
`title` VARCHAR(200) NOT NULL,
`date` DATE NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tender_files`
--

INSERT INTO `tender_files` (`id`, `title`, `date`, `url`, `date_modified`) VALUES
(11, 'asd', '2015-12-08', '1449568508cloud_computing.pdf', '2015-12-08 09:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` INT(11) NOT NULL,
`firstName` VARCHAR(200) NOT NULL,
`lastName` VARCHAR(200) NOT NULL,
`email` VARCHAR(200) NOT NULL,
`password` VARCHAR(200) NOT NULL,
`activationKey` VARCHAR(200) NOT NULL,
`username` VARCHAR(200) NOT NULL,
`profile_pic` VARCHAR(200) NOT NULL,
`division_id` INT(11) NOT NULL,
`designation_id` INT(11) NOT NULL,
`dateJoined` DATETIME NOT NULL,
`authentication` INT(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `activationKey`, `username`, `profile_pic`, `division_id`, `designation_id`, `dateJoined`, `authentication`) VALUES
(1, 'SMilindaA', 'Madras', 'hlsmilinda@gmail.com', '415ab40ae9b7cc4e66d6769cb2c08106e8293b48', '', 'milinda', '1449122252backgr.jpg', 1, 7, '2015-08-15 00:00:00', 9),
(13, 'Test', 'Test', 'test@customs.gov.lk', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', ' ', 'Test', '1451459252lentils-1-1024x768.jpg', 3, 7, '0000-00-00 00:00:00', 3),
(15, 'PPNR', 'PPNR', 'ddcppnr@customs.gov.lk', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '', 'PPNR', '', 2, 7, '0000-00-00 00:00:00', 3),
(16, 'MV', 'MV', 'mv@customs.gov.lk', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', 'MV', '', 17, 7, '0000-00-00 00:00:00', 3),
(17, 'BPU', 'BPU', 'bpuslcustoms@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', 'BPU', '', 18, 7, '0000-00-00 00:00:00', 3),
(18, 'Legal', 'Legal', 'legal@customs.gov.lk', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', 'Legal', '', 14, 7, '0000-00-00 00:00:00', 3),
(19, 'CCU', 'CCU', 'ccu@customs.gov.lk', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', 'CCU', '', 19, 7, '0000-00-00 00:00:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE IF NOT EXISTS `user_permissions` (
`id` INT(10) NOT NULL,
`user_id` INT(10) NOT NULL,
`auth_activity_id` INT(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_permissions`
--

INSERT INTO `user_permissions` (`id`, `user_id`, `auth_activity_id`) VALUES
(51, 11, 1),
(54, 13, 1),
(55, 15, 1),
(56, 16, 18),
(57, 17, 19),
(58, 18, 20),
(59, 19, 21);

-- --------------------------------------------------------

--
-- Table structure for table `vcds_files`
--

CREATE TABLE IF NOT EXISTS `vcds_files` (
`id` INT(20) NOT NULL,
`date` DATETIME NOT NULL,
`title` VARCHAR(200) NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_roster_files`
--

CREATE TABLE IF NOT EXISTS `warehouse_roster_files` (
`id` INT(20) NOT NULL,
`date` DATETIME NOT NULL,
`title` VARCHAR(200) NOT NULL,
`url` VARCHAR(200) NOT NULL,
`date_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airport_roster_files`
--
ALTER TABLE `airport_roster_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appraiser_transfer_files`
--
ALTER TABLE `appraiser_transfer_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asc_transfer_files`
--
ALTER TABLE `asc_transfer_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_activities`
--
ALTER TABLE `auth_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bpuuploads`
--
ALTER TABLE `bpuuploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `ccuuploads`
--
ALTER TABLE `ccuuploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `dcmds_files`
--
ALTER TABLE `dcmds_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_transfer_files`
--
ALTER TABLE `dc_transfer_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ddc_transfer_files`
--
ALTER TABLE `ddc_transfer_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dopl_files`
--
ALTER TABLE `dopl_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `export_roster_files`
--
ALTER TABLE `export_roster_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foreign_transfer_files`
--
ALTER TABLE `foreign_transfer_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_roster_files`
--
ALTER TABLE `import_roster_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legaluploads`
--
ALTER TABLE `legaluploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `local_training_files`
--
ALTER TABLE `local_training_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mvuploads`
--
ALTER TABLE `mvuploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `ncds_files`
--
ALTER TABLE `ncds_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `org_struct`
--
ALTER TABLE `org_struct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratex_files`
--
ALTER TABLE `ratex_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rct_roster_app_files`
--
ALTER TABLE `rct_roster_app_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rct_roster_so_files`
--
ALTER TABLE `rct_roster_so_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roster`
--
ALTER TABLE `roster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_transfer_files`
--
ALTER TABLE `sc_transfer_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tariff_changes`
--
ALTER TABLE `tariff_changes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tender_files`
--
ALTER TABLE `tender_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vcds_files`
--
ALTER TABLE `vcds_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouse_roster_files`
--
ALTER TABLE `warehouse_roster_files`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activities`
--
ALTER TABLE `auth_activities`
  MODIFY `id` INT(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `dopl_files`
--
ALTER TABLE `dopl_files`
  MODIFY `id` INT(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1258;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` INT(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mvuploads`
--
ALTER TABLE `mvuploads`
  MODIFY `id` INT(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `org_struct`
--
ALTER TABLE `org_struct`
  MODIFY `id` INT(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ratex_files`
--
ALTER TABLE `ratex_files`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roster`
--
ALTER TABLE `roster`
  MODIFY `id` INT(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tariff_changes`
--
ALTER TABLE `tariff_changes`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tender_files`
--
ALTER TABLE `tender_files`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` INT(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
