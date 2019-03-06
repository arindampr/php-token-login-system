-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2019 at 02:00 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paynearby`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', 'admin', 'admin@admin.com');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `name`, `price`) VALUES
(1, 'epan', 72),
(2, 'hard_copy', 107);

-- --------------------------------------------------------

--
-- Table structure for table `newpan_application_tbl`
--

CREATE TABLE `newpan_application_tbl` (
  `id` int(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  `application_no` varchar(50) NOT NULL,
  `ack_no` varchar(50) DEFAULT NULL,
  `pan_form_type` varchar(15) DEFAULT '49a',
  `application_type` varchar(52) NOT NULL,
  `u_title` varchar(15) NOT NULL,
  `u_lname` varchar(100) NOT NULL,
  `u_fname` varchar(100) NOT NULL,
  `u_mname` varchar(100) DEFAULT NULL,
  `p_uname` varchar(100) NOT NULL,
  `dob` varchar(19) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `a_o_namey` varchar(10) DEFAULT NULL,
  `a_o_title` varchar(19) DEFAULT NULL,
  `a_o_lname` varchar(100) DEFAULT NULL,
  `a_o_fname` varchar(100) DEFAULT NULL,
  `a_o_mname` varchar(100) DEFAULT NULL,
  `m_onlyy` varchar(15) DEFAULT NULL,
  `m_onlyn` varchar(10) DEFAULT NULL,
  `father_lname` varchar(100) NOT NULL,
  `father_fname` varchar(100) NOT NULL,
  `father_mname` varchar(100) DEFAULT NULL,
  `mother_lname` varchar(100) DEFAULT NULL,
  `mother_fname` varchar(100) DEFAULT NULL,
  `mother_mname` varchar(100) DEFAULT NULL,
  `add_comunicate` varchar(100) NOT NULL,
  `off_name` varchar(100) DEFAULT NULL,
  `off_building` varchar(100) DEFAULT NULL,
  `off_area` varchar(100) DEFAULT NULL,
  `off_state` varchar(100) DEFAULT NULL,
  `off_flat` varchar(100) DEFAULT NULL,
  `off_street` varchar(100) DEFAULT NULL,
  `off_town` varchar(100) DEFAULT NULL,
  `off_zip` varchar(12) DEFAULT NULL,
  `res_flat` varchar(100) NOT NULL,
  `res_street` varchar(100) NOT NULL,
  `res_town` varchar(100) NOT NULL,
  `res_pin` varchar(100) NOT NULL,
  `res_building` varchar(100) NOT NULL,
  `res_area` varchar(100) NOT NULL,
  `res_state` varchar(100) NOT NULL,
  `u_mobile` varchar(15) NOT NULL,
  `u_email` varchar(100) NOT NULL,
  `aadhar_no` varchar(15) NOT NULL,
  `aadhar_name` varchar(100) NOT NULL,
  `u_income_s` varchar(100) NOT NULL,
  `u_income_sname` varchar(100) DEFAULT NULL,
  `minor_type` varchar(50) DEFAULT NULL,
  `minor_title` varchar(100) DEFAULT NULL,
  `minor_lnamne` varchar(100) DEFAULT NULL,
  `minor_fname` varchar(100) DEFAULT NULL,
  `minor_mname` varchar(100) DEFAULT NULL,
  `minor_flat` varchar(100) DEFAULT NULL,
  `minor_building` varchar(100) DEFAULT NULL,
  `minor_road` varchar(100) DEFAULT NULL,
  `minor_area` varchar(100) DEFAULT NULL,
  `minor_town` varchar(100) DEFAULT NULL,
  `minor_state` varchar(100) DEFAULT NULL,
  `minor_pin` varchar(100) DEFAULT NULL,
  `prefer_pan` varchar(100) NOT NULL,
  `area_code` varchar(10) NOT NULL,
  `range_code` varchar(10) NOT NULL,
  `ao_type` varchar(15) NOT NULL,
  `ao_number` varchar(15) NOT NULL,
  `veryfier_n` varchar(50) NOT NULL,
  `capacity_v` varchar(100) NOT NULL,
  `place_v` varchar(100) NOT NULL,
  `prf_id` varchar(150) NOT NULL,
  `prf_address` varchar(150) NOT NULL,
  `prf_dob` varchar(150) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `srl_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newpan_application_tbl`
--

INSERT INTO `newpan_application_tbl` (`id`, `username`, `application_no`, `ack_no`, `pan_form_type`, `application_type`, `u_title`, `u_lname`, `u_fname`, `u_mname`, `p_uname`, `dob`, `gender`, `a_o_namey`, `a_o_title`, `a_o_lname`, `a_o_fname`, `a_o_mname`, `m_onlyy`, `m_onlyn`, `father_lname`, `father_fname`, `father_mname`, `mother_lname`, `mother_fname`, `mother_mname`, `add_comunicate`, `off_name`, `off_building`, `off_area`, `off_state`, `off_flat`, `off_street`, `off_town`, `off_zip`, `res_flat`, `res_street`, `res_town`, `res_pin`, `res_building`, `res_area`, `res_state`, `u_mobile`, `u_email`, `aadhar_no`, `aadhar_name`, `u_income_s`, `u_income_sname`, `minor_type`, `minor_title`, `minor_lnamne`, `minor_fname`, `minor_mname`, `minor_flat`, `minor_building`, `minor_road`, `minor_area`, `minor_town`, `minor_state`, `minor_pin`, `prefer_pan`, `area_code`, `range_code`, `ao_type`, `ao_number`, `veryfier_n`, `capacity_v`, `place_v`, `prf_id`, `prf_address`, `prf_dob`, `status`, `date`, `srl_no`) VALUES
(1, 'unawebtech', '', NULL, '49a', '', 'Shri', 'Pradhan', 'Arindam', 'Kumar', '', '03/13/2019', 'Male', 'yes', 'Shri', 'Pradhan', 'Arin', 'Kumar', 'Y', NULL, 'Pradhan', 'Arup', 'Kumar', 'Pradhan', 'Tapati', 'Rani', '2/Office', 'Una webtech', 'Kolkata', 'Kolkata', 'West Bengal', 'Kolkata', 'Kolkata', 'South 24 Parganas', '700150', 'Sonarpur', 'sonarpur', 'sonarpur', 'SONARPUR', 'SONARPUR', 'SONARPUR', 'West Bengal', '9002629869', 'arindampradhan80@gmail.com', '1234567890', 'Arindam Pradhan', '1/Income From Business/profession', 'Architecture', '', 'Shri', 'Pradhan', 'Arindam', 'Kumar', 'Sonarpur', 'Sonarpur', 'Sonarpur', 'Sonarpur', 'Sonarpur', 'West Bengal', '700150', '2', '', '', '', '', '', '', '', '', '', '', '', '2019-03-02 11:43:34', 17),
(2, 'unawebtech', '', NULL, '49a', 'Individual', 'Shri', '`AA', 'AA', 'AA', '', '02/18/2019', 'Male', 'yes', 'Smt/Mrs', 'dbfdsz', 'dfhs', 'sgdH', '', NULL, 'sdhb', 'sbd', '', NULL, NULL, NULL, '1/Residence', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rdbh', 'fb', 'seg', 'sdgv', 'rsdb', 'gsb', 'West Bengal', 'sgd', 'gs@gmail.com', '', '', '1/Income From Business/profession', 'Builders and Developers', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'AA', 'AAS', 'AA', 'AA', '', '', '', 'AADHAAR Card issued by UAIDI', 'Central Government Health Scheme Card', 'AADHAAR Card issued by UAIDI', '', '2019-03-02 11:43:33', 16),
(3, 'UNAWEBTECH', '', NULL, '49a', 'Individual', 'Shri', 'A', 'B', 'C', '', '02/06/2019', 'Male', 'yes', 'Shri', 'B', 'V', 'C', '', NULL, ' V', 'V', 'V', 'V', 'V', 'V', '2/Office', 'G', 'G', 'G', 'Goa', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'G', 'Goa', 'GG', 'G', 'G', 'G', 'No Income', NULL, '', 'Shri', 'G', 'G', 'J', 'J', 'H', 'JH', 'U', 'U', 'Haryana', '5555', '1', 'A', 'B', 'C', 'D', '', '', '', '', '', '', '', '2019-03-02 11:43:33', 15),
(4, 'UNAWEBTECH', '', NULL, '49a', 'Individual', 'Smt/Mrs', 'hh', 'h', 'h', '', '01/30/2019', 'Male', 'yes', 'Shri', 'j', 'hj', 'g', '', 'N', 'ggg', 'g', 'g', NULL, NULL, NULL, '1/Residence', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'g', 'g', 'g', 'g', 'g', 'g', 'Goa', 'ggg', 'g@gmail.com', 'gygygy', 'ygygyg', 'No Income', NULL, '', 'Shri', 'uyit', 'ugiu', 'igiu', 'gyi', 'gygiy', 'yitiytiy', 'iyiygy', 'iyyy', 'West Bengal', 'ryytrf', '2', 'd', 'd', 'd', 'd', '', '', '', '', '', '', '', '2019-03-02 11:43:33', 14),
(5, 'UNAWEBTECH', '', NULL, '49a', 'Individual', 'Shri', 'g', 'g', 'g', '', '02/19/2019', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'gh', 'gh', 'gh', NULL, NULL, NULL, '1/Residence', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'h', 'hh', 'h', 'h', 'h', 'h', 'Haryana', 'h', 'h', '', 'jhghjgjh', 'No Income', NULL, '', '', 'gjh', 'gjhg', 'jhg', 'jhg', 'jhg', 'jhg', 'hjgj', 'hgjh', 'Goa', 'gjhg', '2', 'g', 'g', 'g', 'g', '', '', '', '', '', '', '', '2019-03-02 11:43:33', 13),
(6, 'UNAWEBTECH', '', NULL, '49a', 'Individual', 'Shri', 'uytu', 'ugk', 'ulhku', '', '06/21/1994', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'gnfm', 'fgn', 'fgn', NULL, NULL, NULL, '1/Residence', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fgn', 'fgn', 'fgn', 'gfn', 'fgn', 'fgn', 'Karnataka', 'nfg', 'fgn@gmail.com', '', '', 'No Income', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', 'fsd', 'egw', 'egw', 'weg', '', '', '', '', '', '', '', '2019-03-02 11:43:33', 12),
(7, 'UNAWEBTECH', '', NULL, '49a', 'Individual', 'Shri', 'uytu', 'ugk', 'ulhku', '', '06/21/1994', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'gnfm', 'fgn', 'fgn', NULL, NULL, NULL, '1/Residence', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fgn', 'fgn', 'fgn', 'gfn', 'fgn', 'fgn', 'Karnataka', 'nfg', 'fgn@gmail.com', '', '', 'No Income', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', 'fsd', 'egw', 'egw', 'weg', '', '', '', 'pexels-photo-1133957.jpg', '', '', '', '2019-03-02 11:43:33', 11),
(8, 'UNAWEBTECH', '', NULL, '49a', 'Individual', 'Shri', 'uytu', 'ugk', 'ulhku', '', '06/21/1994', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'gnfm', 'fgn', 'fgn', NULL, NULL, NULL, '1/Residence', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fgn', 'fgn', 'fgn', 'gfn', 'fgn', 'fgn', 'Karnataka', 'nfg', 'fgn@gmail.com', '', '', 'No Income', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', 'fsd', 'egw', 'egw', 'weg', '', '', '', 'pexels-photo-1133957.jpg', 'podob.png', 'Array', '', '2019-03-02 10:08:02', 10),
(9, 'UNAWEBTECH', '', NULL, '49a', 'Individual', 'Shri', 'uytu', 'ugk', 'ulhku', '', '06/21/1994', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'gnfm', 'fgn', 'fgn', NULL, NULL, NULL, '1/Residence', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fgn', 'fgn', 'fgn', 'gfn', 'fgn', 'fgn', 'Karnataka', 'nfg', 'fgn@gmail.com', '', '', 'No Income', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', 'fsd', 'egw', 'egw', 'weg', '', '', '', 'pexels-photo-1133957.jpg', 'podob.png', 'poa.png', '', '2019-03-02 10:08:02', 9),
(10, 'unawebtech', '', NULL, '49a', 'Individual', 'Shri', 'aa', 'aa', 'aa', 'aa aa aa', '02/13/2019', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aa', 'aa', '', NULL, NULL, NULL, '1/Residence', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'West Bengal', 'sws', '', 'ss', 'ss', 'No Income', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '1', 'AA', 'aa', 'aa', 'aa', 'aa aa aa', '', 'aa', 'AADHAAR Card issued by UAIDI', 'AADHAAR Card issued by UAIDI', 'AADHAAR Card issued by UAIDI', '', '2019-03-02 10:08:02', 8),
(11, 'unawebtech', 'PAY000011', NULL, '49a', 'Individual', 'Shri', 'y', 'y', 'y', '', '02/11/2019', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'test', 'tedst', 'tstwe', NULL, NULL, NULL, '1/Residence', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ttt', 't', 't', 't', 't', 't', 'Tamil Nadu', 't', 't', 't', 't', 'Income From Other Sources', NULL, '', '', 't', 'tt', 't', 't', 't', 't', 't', 't', 'Tamil Nadu', 't', '2', 'g', 'g', 'g', 'g', '', '', '', 'php-barcode-generator-output.jpg', 'telecharger.png', 'gen_b_code.png', NULL, '2019-03-02 10:08:02', 7),
(12, 'unawebtech', 'PAY000012', NULL, '49a', 'Limited Liability Partnership', 'Shri', 'Pradhan', 'Arindam', '', '', '07/28/1998', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pradhan', 'Arup', '', NULL, NULL, NULL, '1/Residence', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sonarpur', 'Sonarpur', 'Sonarpur', '700150', 'Sonarpur', 'Sonarpur', 'West Bengal', '8918191659', 'arindam.unawebtech@gmail.com', '123456789321', 'Arindam Pradhan', 'No Income', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'AO', 'AO', 'AO', 'AO', 'Arindam Pradhan', 'Himself/Herself', 'South 24 Parganas', 'AADHAAR Card issued by UAIDI', 'AADHAAR Card issued by UAIDI', 'AADHAAR Card issued by UAIDI', '', '2019-03-02 10:08:02', 6),
(13, 'unawebtech', 'PAY000013', NULL, '49a', 'Body of Individuals', 'Shri', 'Pradhan', 'Arindam', NULL, 'Arindam Pradhan', '07/28/1998', 'Male', '', NULL, NULL, NULL, NULL, NULL, NULL, 'Pradhan', 'Arup', '', NULL, NULL, NULL, '1/Residence', NULL, NULL, NULL, 'West Bengal', NULL, NULL, NULL, NULL, 'Sonarpur', 'Sonarpur', 'Sonarpur', '700150', 'Sonarpur', 'Sonarpur', 'West Bengal', '8918191659', 'arindam.unawebtech@gmail.com', '1234567890', 'Arindam Pradhan', '1/Income From Business/profession', 'Architecture', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'West Bengal', NULL, '2', 'AO', 'AO', 'AO', 'AO', 'Arindam Pradhan', 'Himself/Herself', 'South 24 Parganas', 'Ration Card having photograph of the applicant', ' Bank Certificate in original on letter head from the branch', 'Arm\'s License', NULL, '2019-03-02 10:08:02', 5),
(14, 'unawebtech', 'PAY000014', 'ack00', '49a', 'Local Authority', 'Shri', 'y', 'y', 'y', '', '02/11/2019', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'test', 'tedst', 'tstwe', NULL, NULL, NULL, '1/Residence', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ttt', 't', 't', 't', 't', 't', 'Tamil Nadu', 't', 't', 't', 't', 'Income From Other Sources', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', 'g', 'g', 'g', 'g', '', '', '', 'php-barcode-generator-output.jpg', 'telecharger.png', 'gen_b_code.png', NULL, '2019-03-02 10:08:02', 4),
(15, 'unawebtech', 'PAY000015', NULL, '49a', 'Local Authority', 'Kumari/Ms', 'Pradhan', 'Arindam', 'jm', 'Arindam jm Pradhan', '02/21/2019', 'Transgender', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jkjk', 'jmn', '', NULL, NULL, NULL, '1/Residence', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jm', 'jk', 'j', 'j', 'j', 'j', '--Select State--', 'j', 'j', 'j', 'j', 'Income From Other Sources', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'dq', 'g', 'g', 'g', 'Arindam jm Pradhan', '', 'j', 'AADHAAR Card issued by UAIDI', 'AADHAAR Card issued by UAIDI', 'AADHAAR Card issued by UAIDI', '', '2019-03-02 10:08:02', 3),
(16, 'unawebtech', 'PAY000016', NULL, '49a', 'Individual', 'Kumari/Ms', 'Pradhan', 'Arindam', 'jm', 'Arindam jm Pradhan', '02/21/2019', 'Transgender', NULL, NULL, NULL, NULL, NULL, 'Y', NULL, 'jkjk', 'jmn', '', NULL, NULL, NULL, '1/Residence', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jm', 'jk', 'j', 'j', 'j', 'j', 'West Bengal', 'j', 'j', 'j', 'j', 'Income From Other Sources', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'AA', 'g', 'g', 'g', 'Arindam jm Pradhan', '', 'j', 'AADHAAR Card issued by UAIDI', 'AADHAAR Card issued by UAIDI', 'AADHAAR Card issued by UAIDI', '', '2019-03-02 10:08:02', 2),
(17, 'unawebtech', 'PAY000017', NULL, '49a', 'Individual', 'Shri', 'Pradhan', 'Arindam', '', 'Arindam  Pradhan', '07/28/1998', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Pradhan', 'Arup', '', NULL, NULL, NULL, '1/Residence', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ahutitala', 'Kamrabad', 'Kolkata', '700150', 'Kamrabad', 'Rajpur', 'West Bengal', '9002629869', 'arindampradhan21@gmail.com', '375707556600', 'Arindam Pradhan', 'No Income', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'Ao', '`Ao', 'Ao', 'Ao', 'Arindam  Pradhan', 'Himself/Herself', 'Kolkata', 'AADHAAR Card issued by UAIDI', 'Passport', 'AADHAAR Card issued by UAIDI', NULL, '2019-03-02 10:08:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `state_list`
--

CREATE TABLE `state_list` (
  `id` int(11) NOT NULL,
  `state` varchar(20) NOT NULL,
  `c_id` bit(1) NOT NULL,
  `coumtry` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state_list`
--

INSERT INTO `state_list` (`id`, `state`, `c_id`, `coumtry`) VALUES
(2, 'Andhra Pradesh', b'1', 'India'),
(3, 'Arunachal Pradesh', b'1', 'India'),
(4, 'Assam', b'1', 'India'),
(5, 'Bihar', b'1', 'India'),
(6, 'Chandigarh', b'1', 'India'),
(7, 'Chattisgarh', b'1', 'India'),
(8, 'Dadra & Nagar Haveli', b'1', 'India'),
(9, 'Daman & Diu', b'1', 'India'),
(10, 'Delhi', b'1', 'India'),
(11, 'Goa', b'1', 'India'),
(12, 'Gujarat', b'1', 'India'),
(13, 'Haryana', b'1', 'India'),
(14, 'Himachal Pradesh', b'1', 'India'),
(15, 'Jammu & Kashmir', b'1', 'India'),
(16, 'Jharkhand', b'1', 'India'),
(17, 'Karnataka', b'1', 'India'),
(18, 'Kerala', b'1', 'India'),
(19, 'Lakshadweep', b'1', 'India'),
(20, 'Madhya Pradesh', b'1', 'India'),
(21, 'Maharashtra', b'1', 'India'),
(22, 'Manipur', b'1', 'India'),
(23, 'Meghalaya', b'1', 'India'),
(24, 'Mizoram', b'1', 'India'),
(25, 'Nagaland', b'1', 'India'),
(26, 'Odisha', b'1', 'India'),
(27, 'Poducherry', b'1', 'India'),
(28, 'Punjab', b'1', 'India'),
(29, 'Rajasthan', b'1', 'India'),
(30, 'Sikkim', b'1', 'India'),
(31, 'Tamil Nadu', b'1', 'India'),
(32, 'Telangana', b'1', 'India'),
(33, 'Tripura', b'1', 'India'),
(34, 'Uttar Pradesh', b'1', 'India'),
(35, 'Uttarakhand', b'1', 'India'),
(36, 'West Bengal', b'1', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `registration_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`id`, `full_name`, `username`, `password`, `email`, `registration_date`) VALUES
(1, 'ARINDAM PRADHAN', 'unawebtech', 'unawebtech', 'arindam.unawebtech@gmail.com', '2019-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `application_no` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_wallet`
--

CREATE TABLE `user_wallet` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_id` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newpan_application_tbl`
--
ALTER TABLE `newpan_application_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state_list`
--
ALTER TABLE `state_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_wallet`
--
ALTER TABLE `user_wallet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newpan_application_tbl`
--
ALTER TABLE `newpan_application_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_wallet`
--
ALTER TABLE `user_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
