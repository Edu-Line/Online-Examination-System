-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 06, 2020 at 12:30 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Savsoft`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_type`
--

DROP TABLE IF EXISTS `account_type`;
CREATE TABLE `account_type` (
  `account_id` int(11) NOT NULL,
  `users` varchar(1000) DEFAULT NULL,
  `quiz` varchar(1000) DEFAULT NULL,
  `results` varchar(1000) DEFAULT NULL,
  `questions` varchar(1000) DEFAULT NULL,
  `account_name` varchar(1000) DEFAULT NULL,
  `setting` varchar(100) DEFAULT NULL,
  `study_material` varchar(1000) NOT NULL,
  `appointment` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_type`
--

INSERT INTO `account_type` (`account_id`, `users`, `quiz`, `results`, `questions`, `account_name`, `setting`, `study_material`, `appointment`) VALUES
(1, 'Add,Edit,View,List,List_all,Myaccount,Remove', 'Attempt,Add,Edit,View,List,List_all,Remove', 'View,List,List_all,Remove', 'Add,Edit,View,list,List_all,Remove', 'Administrator', 'All', 'Add,Edit,View,List,List_all,Remove', 'List,List_all'),
(2, 'Myaccount', 'Attempt,View,List', 'View,List', '', 'User', NULL, 'View,List,List_all', ''),
(3, 'Add,View,List,List_all,Myaccount', 'Add,Edit,View,List,List_all,Remove', 'View,List,List_all', 'Add,Edit,View,list,List_all,Remove', 'Teacher', 'All', 'Add,Edit,View,List,List_all,Remove', '');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_request`
--

DROP TABLE IF EXISTS `appointment_request`;
CREATE TABLE `appointment_request` (
  `appointment_id` int(11) NOT NULL,
  `request_by` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `appointment_timing` timestamp NOT NULL DEFAULT current_timestamp(),
  `appointment_time_zone` varchar(100) NOT NULL DEFAULT 'Asia/Kolkata',
  `appointment_status` varchar(100) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment_request`
--

INSERT INTO `appointment_request` (`appointment_id`, `request_by`, `to_id`, `appointment_timing`, `appointment_time_zone`, `appointment_status`) VALUES
(2, 9, 1, '2017-08-30 07:53:57', 'Asia/Kolkata', 'Accepted'),
(3, 1, 1, '2017-12-27 08:43:25', 'Asia/Kolkata', 'Accepted'),
(4, 1, 1, '2019-03-18 06:18:40', 'Asia/Kolkata', 'Accepted'),
(5, 5, 1, '2019-03-18 12:50:32', 'Asia/Kolkata', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `class_coment`
--

DROP TABLE IF EXISTS `class_coment`;
CREATE TABLE `class_coment` (
  `content_id` int(11) NOT NULL,
  `generated_time` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `content_by` int(11) NOT NULL,
  `published` int(11) NOT NULL DEFAULT 0,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_coment`
--

INSERT INTO `class_coment` (`content_id`, `generated_time`, `content`, `content_by`, `published`, `class_id`) VALUES
(1, 1588586502, 'Okay thank you sir. We hope technology will not ruin our grades', 7, 0, 1),
(2, 1588588100, 'uhmm', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `class_gid`
--

DROP TABLE IF EXISTS `class_gid`;
CREATE TABLE `class_gid` (
  `clgid` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `gid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_gid`
--

INSERT INTO `class_gid` (`clgid`, `class_id`, `gid`) VALUES
(2, 1, 1),
(3, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `live_class`
--

DROP TABLE IF EXISTS `live_class`;
CREATE TABLE `live_class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(1000) NOT NULL,
  `initiated_by` int(11) NOT NULL,
  `initiated_time` int(11) NOT NULL,
  `closed_time` int(11) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `live_class`
--

INSERT INTO `live_class` (`class_id`, `class_name`, `initiated_by`, `initiated_time`, `closed_time`, `content`) VALUES
(1, 'Sample Classs', 1, 1588570200, 1588686334, '\n			<div contenteditable=\"false\"><a href=\"http://127.0.0.1/savsoft4/classfiles/IMG-20190325-WA0194.jpg\" target=\"new\" style=\"cursor:pointer;\"><img src=\"http://127.0.0.1/savsoft4/classfiles/IMG-20190325-WA0194.jpg\" style=\"max-width:400px;max-height:400px;\"></a></div><div>Hey there. I am Surveyor Jr your new instructor for this examination session. Lets get familiar with the system. Okay. <br></div><div>Feel free to ask any questions you might have</div><div><br></div>'),
(2, 'Beginners Guide', 1, 1590949800, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `savsoftquiz_custom_form`
--

DROP TABLE IF EXISTS `savsoftquiz_custom_form`;
CREATE TABLE `savsoftquiz_custom_form` (
  `field_id` int(11) NOT NULL,
  `field_title` varchar(100) NOT NULL,
  `field_type` varchar(100) NOT NULL DEFAULT 'text',
  `field_validate` varchar(1000) NOT NULL DEFAULT 'pattern="[A-Za-z0-9]{1,100}"',
  `field_value` varchar(100) DEFAULT NULL,
  `display_at` varchar(100) NOT NULL DEFAULT 'Registration'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `savsoftquiz_setting`
--

DROP TABLE IF EXISTS `savsoftquiz_setting`;
CREATE TABLE `savsoftquiz_setting` (
  `setting_id` int(11) NOT NULL,
  `setting_name` varchar(1000) NOT NULL,
  `setting_value` varchar(1000) DEFAULT 'true',
  `setting_group_name` varchar(100) NOT NULL DEFAULT 'General',
  `order_by` int(11) NOT NULL,
  `setting_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoftquiz_setting`
--

INSERT INTO `savsoftquiz_setting` (`setting_id`, `setting_name`, `setting_value`, `setting_group_name`, `order_by`, `setting_description`) VALUES
(1, 'App_Name', 'EduLine', 'General', 1, NULL),
(2, 'App_title', 'Digital Education Partner', 'General', 1, NULL),
(3, 'SMTP_hostname', '', 'Email', 2, NULL),
(4, 'SMTP_username', '', 'Email', 2, NULL),
(5, 'SMTP_password', '', 'Email', 2, NULL),
(6, 'SMTP_port', '', 'Email', 2, NULL),
(7, 'Language_direction', 'ltr', 'General', 1, NULL),
(8, 'Enable_web_cam', 'true', 'General', 1, NULL),
(9, 'Enable_google_chart', 'true', 'General', 1, NULL),
(10, 'Enable_dompdf', 'true', 'General', 1, NULL),
(11, 'Enable_user_registration', 'true', 'General', 1, NULL),
(12, 'Verify_user_email', 'false', 'Email', 2, NULL),
(13, 'Tinymce_editor', 'true', 'Editor', 3, NULL),
(14, 'Tinymce_eqneditor_plugin', 'true', 'Editor', 3, NULL),
(15, 'Tinymce_wiris_plugin', 'true', 'Editor', 3, NULL),
(16, 'Mathjax', 'true', 'Editor', 3, NULL),
(17, 'Default_group_id', '1', 'General', 1, NULL),
(18, 'Enable_open_quiz', 'true', 'General', 1, NULL),
(19, 'Enable_sharethis', 'true', 'General', 1, NULL),
(20, 'Sharethis_property_id', '', 'General', 1, NULL),
(21, 'Advertisement_display_after_seconds', '60', 'General', 1, NULL),
(22, 'Advertisement_display_for_seconds', '2', 'General', 1, NULL),
(23, 'Android_API_key', '', 'General', 1, NULL),
(25, 'Email_protocol', 'mail', 'Email', 2, NULL),
(26, 'SMTP_mailtype', 'text', 'Email', 2, NULL),
(28, 'Activation_email_subject', 'Action required to verify your account', 'Email', 2, NULL),
(29, 'Activation_email_message', 'Hi, \\r\\n Thank you for registering with us. Please click below link to verify your email address.\\r\\n <a href=\'[verilink]\'>[verilink]</a> \\r\\n or \\r\\n Copy below link and visit in browser \\r\\n [verilink] \\r\\n \\r\\n Thanks', 'Email', 2, NULL),
(30, 'Password_change_subject', 'Password Changed', 'Email', 2, NULL),
(31, 'Password_change_message', 'Hi, \\r\\n Your New Password is: [new_password] \\r\\n Thanks', 'Email', 2, NULL),
(32, 'Send_result_email', 'true', 'Email', 2, NULL),
(33, 'Result_email_subject', 'Result generated for quiz [quiz_name]', 'Email', 2, NULL),
(34, 'Result_email_message', 'Hi [last_name],\\r\\n \\r\\n  You have [result_status]  Quiz: \'[quiz_name]\' and obtained [percentage_obtained]% marks. To get more information please login to your quiz portal.\\r\\n  \\r\\n  Thanks', 'Email', 2, NULL),
(35, 'Master_password', 'eduline_examination_system', 'General', 1, NULL),
(36, 'Base_currency_prefix', 'RTGS', 'Payment_Gateway', 4, NULL),
(37, 'Base_currency_sufix', '', 'Payment_Gateway', 4, NULL),
(38, 'Payment_gateways', 'PayNow', 'Payment_Gateway', 4, 'Comma separated'),
(39, 'Default_gateway', '', 'Payment_Gateway', 4, NULL),
(40, 'Enable_paypal', 'false', 'Payment_Gateway', 4, NULL),
(41, 'Paypal_environment', '', 'Payment_Gateway', 4, 'Empty for real or sandbox '),
(42, 'Paypal_receiver', '', 'Payment_Gateway', 4, 'Paypal email id'),
(43, 'Paypal_currency_prefix', '$', 'Payment_Gateway', 4, NULL),
(44, 'Paypal_currency_sufix', 'USD', 'Payment_Gateway', 4, NULL),
(45, 'Paypal_conversion', '1', 'Payment_Gateway', 4, '1 if base currency is same'),
(46, 'Enable_checkout', 'true', 'Payment_Gateway', 4, NULL),
(47, 'Checkout_environment', '', 'Payment_Gateway', 4, NULL),
(48, 'Checkout_sid', '', 'Payment_Gateway', 4, NULL),
(49, 'Checkout_SecretWord', '', 'Payment_Gateway', 4, ''),
(50, 'Checkout_receiver', '', 'Payment_Gateway', 4, NULL),
(51, 'Checkout_currency_prefix', '$', 'Payment_Gateway', 4, NULL),
(52, 'Checkout_currency_sufix', 'USD', 'Payment_Gateway', 4, NULL),
(53, 'Checkout_conversion', '1', 'Payment_Gateway', 4, NULL),
(54, 'Enable_payumoney', 'false', 'Payment_Gateway', 4, NULL),
(55, 'Payu_merchant_key', '', 'Payment_Gateway', 4, NULL),
(56, 'Payu_salt', '', 'Payment_Gateway', 4, NULL),
(57, 'Payumoney_currency_prefix', '', 'Payment_Gateway', 4, NULL),
(58, 'Payumoney_currency_sufix', '', 'Payment_Gateway', 4, NULL),
(59, 'Payumoney_conversion', '', 'Payment_Gateway', 4, NULL),
(60, 'Enable_paytm', 'false', 'Payment_Gateway', 4, NULL),
(61, 'Paytm_environment', 'Test', 'Payment_Gateway', 4, NULL),
(62, 'Paytm_merchant_key', '', 'Payment_Gateway', 4, NULL),
(63, 'Paytm_merchant_id', '', 'Payment_Gateway', 4, NULL),
(64, 'Paytm_merchant_website', '', 'Payment_Gateway', 4, NULL),
(65, 'Paytm_currency_prefix', '', 'Payment_Gateway', 4, NULL),
(66, 'Paytm_currency_sufix', '', 'Payment_Gateway', 4, NULL),
(67, 'Paytm_conversion', '', 'Payment_Gateway', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_add`
--

DROP TABLE IF EXISTS `savsoft_add`;
CREATE TABLE `savsoft_add` (
  `add_id` int(11) NOT NULL,
  `advertisement_code` text NOT NULL,
  `banner` varchar(1000) NOT NULL,
  `banner_link` varchar(1000) DEFAULT NULL,
  `position` varchar(100) NOT NULL,
  `add_status` varchar(100) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `savsoft_add`
--

INSERT INTO `savsoft_add` (`add_id`, `advertisement_code`, `banner`, `banner_link`, `position`, `add_status`) VALUES
(1, '', '1501084226.jpg', 'https://eduline.com', 'Top', 'Inactive'),
(2, '	', '1501084206.jpg', 'https://eduline.com', 'Bottom', 'Active'),
(3, '', '1501084197.jpg', 'https://eduline.com', 'Center_Result', 'Active'),
(4, '', '1501084258.jpg', 'https://eduline.com', 'During_Quiz', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_answers`
--

DROP TABLE IF EXISTS `savsoft_answers`;
CREATE TABLE `savsoft_answers` (
  `aid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `uid` int(11) NOT NULL,
  `score_u` float NOT NULL DEFAULT 0,
  `rid` int(11) NOT NULL,
  `qn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_answers`
--

INSERT INTO `savsoft_answers` (`aid`, `qid`, `q_option`, `uid`, `score_u`, `rid`, `qn`) VALUES
(8, 79, '300', 1, 1, 1, 0),
(9, 80, '304', 1, 1, 1, 0),
(10, 81, '317', 1, 0.5, 1, 0),
(11, 81, '319', 1, 0.5, 1, 0),
(24, 79, '300', 1, 1, 4, 0),
(25, 80, '304', 1, 1, 4, 0),
(26, 81, '317', 1, 0.5, 4, 0),
(27, 81, '319', 1, 0.5, 4, 0),
(34, 79, '300', 1, 1, 5, 0),
(35, 80, '305', 1, 0, 5, 0),
(36, 81, '317', 1, 0.5, 5, 0),
(52, 79, '301', 1, 0, 7, 0),
(53, 80, '305', 1, 0, 7, 0),
(54, 81, '318', 1, 0, 7, 0),
(64, 79, '300', 1, 1, 8, 0),
(65, 80, '305', 1, 0, 8, 0),
(66, 81, '318', 1, 0, 8, 0),
(106, 79, '300', 1, 1, 9, 0),
(107, 81, '317', 1, 0.5, 9, 0),
(114, 79, '301', 5, 0, 10, 0),
(115, 80, '306', 5, 0, 10, 0),
(116, 81, '318', 5, 0, 10, 0),
(118, 79, '303', 1, 0, 11, 0),
(120, 79, '303', 1, 0, 12, 0),
(123, 115, '465', 1, 0, 13, 0),
(137, 81, '318', 1, 0, 14, 0),
(138, 79, '302', 1, 0, 14, 0),
(139, 81, '316', 1, 0, 15, 0),
(143, 79, '300', 1, 1, 15, 1),
(144, 81, '317', 1, 0.5, 16, 0),
(145, 81, '319', 1, 0.5, 16, 0),
(148, 79, '301', 1, 0, 18, 0),
(150, 80, '306', 1, 0, 18, 1),
(151, 79, '300', 1, 1, 20, 0),
(152, 80, '304', 1, 1, 20, 1),
(153, 81, '317', 1, 0.5, 20, 2),
(155, 119, 'i dont know', 1, 0, 20, 3),
(157, 120, 'The law in the country (Zimbabwe) is moderate. If you go to court people will abide by the book and your judgement is done professionally and fairly without any compromise. ', 1, 0, 21, 0),
(159, 120, 'This is an answer to the question displayed above. The teacher is however going to evaluate the correctness of this question simply by a click of a button and the student is assigned the appropriate marks for answering the question. ', 12, 0, 22, 0),
(173, 123, '5x8___40', 12, 0.333333, 23, 0),
(174, 123, '1+1___2', 12, 0.333333, 23, 0),
(175, 123, '10-9___1', 12, 0.333333, 23, 0),
(176, 122, '486', 12, 0.166667, 23, 1),
(177, 122, '487', 12, 0.166667, 23, 1),
(178, 122, '488', 12, 0.166667, 23, 1),
(179, 122, '489', 12, 0.166667, 23, 1),
(180, 122, '490', 12, 0.166667, 23, 1),
(181, 122, '491', 12, 0.166667, 23, 1),
(182, 121, 'edu-line', 12, 1, 23, 2),
(183, 120, 'Very difficult to judge that if you ask me', 12, 0, 23, 3),
(185, 116, '468', 12, 1, 23, 4),
(186, 119, 'I do not know', 11, 0, 24, 0),
(187, 121, 'eduline', 11, 1, 24, 1),
(189, 117, '473', 11, 0.5, 24, 2),
(196, 119, 'books', 1, 0, 25, 0),
(197, 121, 'eduline', 1, 1, 25, 0),
(198, 117, '472', 1, 0, 25, 0),
(205, 119, 'dont know', 11, 0, 26, 0),
(206, 121, 'eduline', 11, 1, 26, 0),
(207, 117, '473', 11, 0.5, 26, 0),
(212, 121, 'eduline', 11, 1, 27, 0),
(213, 117, '473', 11, 0.5, 27, 0),
(214, 117, '475', 11, 0.5, 27, 0);

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_category`
--

DROP TABLE IF EXISTS `savsoft_category`;
CREATE TABLE `savsoft_category` (
  `cid` int(11) NOT NULL,
  `category_name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_category`
--

INSERT INTO `savsoft_category` (`cid`, `category_name`) VALUES
(1, 'General knowledge'),
(2, 'Mathematics'),
(3, 'Physics'),
(4, 'Agriculture'),
(5, 'Biology'),
(6, 'Chemistry'),
(7, 'Computers'),
(8, 'Shona'),
(9, 'English Literature'),
(10, 'Intergrated Science'),
(11, 'Physical Science'),
(17, 'Edu-Line Type'),
(18, 'History'),
(19, 'General Knowledge');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_group`
--

DROP TABLE IF EXISTS `savsoft_group`;
CREATE TABLE `savsoft_group` (
  `gid` int(11) NOT NULL,
  `group_name` varchar(1000) NOT NULL,
  `price` float NOT NULL,
  `valid_for_days` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_group`
--

INSERT INTO `savsoft_group` (`gid`, `group_name`, `price`, `valid_for_days`, `description`) VALUES
(1, 'Student', 0, 365, '<p style=\"text-align: center;\"><strong>Schools version</strong></p>\r\n<ul>\r\n<li style=\"text-align: left;\">Unlimited examinations </li>\r\n<li style=\"text-align: left;\">12 months license window before renewal</li>\r\n<li style=\"text-align: left;\">Paid by the school administration</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_level`
--

DROP TABLE IF EXISTS `savsoft_level`;
CREATE TABLE `savsoft_level` (
  `lid` int(11) NOT NULL,
  `level_name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_level`
--

INSERT INTO `savsoft_level` (`lid`, `level_name`) VALUES
(11, 'Form 4'),
(12, 'Lower 6'),
(13, 'Upper Six'),
(14, 'Anyone');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_notification`
--

DROP TABLE IF EXISTS `savsoft_notification`;
CREATE TABLE `savsoft_notification` (
  `nid` int(11) NOT NULL,
  `notification_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `title` varchar(100) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `click_action` varchar(100) DEFAULT NULL,
  `notification_to` varchar(1000) DEFAULT NULL,
  `response` text DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `viewed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_notification`
--

INSERT INTO `savsoft_notification` (`nid`, `notification_date`, `title`, `message`, `click_action`, `notification_to`, `response`, `uid`, `viewed`) VALUES
(1, '2020-04-15 20:20:37', 'EduLine Team', 'Welcome to EduLine, your first Online Examinations service in Zimbabwe. Please feel comfortable, this is just a normal exam. The only difference is the computer. Cheers and all the best. ', '', '/topics/SavsoftQuiz', '<HTML>\n<HEAD>\n<TITLE>Invalid (legacy) Server-key delivered or Sender is not authorized to perform request.</TITLE>\n</HEAD>\n<BODY BGCOLOR=\"#FFFFFF\" TEXT=\"#000000\">\n<H1>Invalid (legacy) Server-key delivered or Sender is not authorized to perform request.</H1>\n<H2>Error 401</H2>\n</BODY>\n</HTML>\n', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_options`
--

DROP TABLE IF EXISTS `savsoft_options`;
CREATE TABLE `savsoft_options` (
  `oid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `q_option_match` varchar(1000) DEFAULT NULL,
  `q_option1` text NOT NULL,
  `score` float NOT NULL DEFAULT 0,
  `q_option_match1` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_options`
--

INSERT INTO `savsoft_options` (`oid`, `qid`, `q_option`, `q_option_match`, `q_option1`, `score`, `q_option_match1`) VALUES
(46, 6, 'Good Morning', 'Good Night', '', 0.25, ''),
(47, 6, 'Honda', 'BMW', '', 0.25, ''),
(48, 6, 'Keyboard', 'CPU', '', 0.25, ''),
(49, 6, 'Red', 'Green', '', 0.25, ''),
(51, 7, 'Blue, Sky Blue', NULL, '', 1, ''),
(52, 3, '4', NULL, '', 0.5, ''),
(53, 3, '5', NULL, '', 0, ''),
(54, 3, 'Four', NULL, '', 0.5, ''),
(55, 3, 'Six', NULL, '', 0, ''),
(56, 1, 'Patiala', NULL, '', 0, ''),
(57, 1, 'New Delhi', NULL, '', 1, ''),
(58, 1, 'Chandigarh', NULL, '', 0, ''),
(59, 1, 'Mumbai', NULL, '', 0, ''),
(76, 14, 'A', 'B', '', 0.25, ''),
(77, 14, 'C', 'D', '', 0.25, ''),
(78, 14, 'E', 'F', '', 0.25, ''),
(79, 14, 'G', 'H', '', 0.25, ''),
(81, 15, 'Washington, Washington D.C', NULL, '', 1, ''),
(82, 13, '<p>five</p>', NULL, '', 0, ''),
(83, 13, '<p>40</p>', NULL, '', 0.5, ''),
(84, 13, '<p>fourty</p>', NULL, '', 0.5, ''),
(85, 13, '<p>six</p>', NULL, '', 0, ''),
(86, 12, '<p>five</p>', NULL, '', 0, ''),
(87, 12, '<p>14</p>', NULL, '', 1, ''),
(88, 12, '<p>three</p>', NULL, '', 0, ''),
(89, 12, '<p>six</p>', NULL, '', 0, ''),
(90, 17, '<p>5</p>', NULL, '', 1, ''),
(91, 17, '<p>6</p>', NULL, '', 0, ''),
(92, 17, '<p>7</p>', NULL, '', 0, ''),
(93, 17, '<p>9</p>', NULL, '', 0, ''),
(98, 19, '<p>sasa</p>', NULL, '', 1, ''),
(99, 19, '<p>asasas</p>', NULL, '', 0, ''),
(100, 19, '<p>sasas</p>', NULL, '', 0, ''),
(101, 19, '<p>asasas</p>', NULL, '', 0, ''),
(102, 20, '<p>dfgfgfg</p>', NULL, '', 1, ''),
(103, 20, '<p>jhjhj</p>', NULL, '', 0, ''),
(104, 20, '<p>lklklk</p>', NULL, '', 0, ''),
(105, 20, '<p>hghgh</p>', NULL, '', 0, ''),
(106, 21, '<p>fgdfgfdg</p>', NULL, '', 1, ''),
(107, 21, '<p>gfdgfdg</p>', NULL, '', 0, ''),
(108, 21, '<p>deasdsad</p>', NULL, '', 0, ''),
(109, 21, '<p>gfdgfdgfdg</p>', NULL, '', 0, ''),
(114, 34, '<p>eop1</p>', NULL, '<p>hop1</p>', 1, ''),
(115, 34, '', NULL, '', 0, ''),
(116, 34, '', NULL, '', 0, ''),
(117, 34, '', NULL, '', 0, ''),
(158, 22, '<p>Eop1</p>', NULL, '<p>Hop1</p>', 0, ''),
(159, 22, '', NULL, '', 1, ''),
(160, 22, '', NULL, '', 0, ''),
(161, 22, '', NULL, '', 0, ''),
(162, 22, '<p>Eop2</p>', NULL, '<p>Hop2</p>', 0, ''),
(163, 22, '', NULL, '', 0, ''),
(164, 22, '<p>Hop2</p>', NULL, '', 0, ''),
(165, 22, '', NULL, '', 0, ''),
(166, 22, '<p>Eop3</p>', NULL, '', 0, ''),
(167, 22, '', NULL, '', 0, ''),
(168, 22, '', NULL, '', 0, ''),
(169, 22, '', NULL, '', 0, ''),
(170, 22, '<p>Eop4</p>', NULL, '', 0, ''),
(171, 22, '', NULL, '', 0, ''),
(172, 22, '', NULL, '', 0, ''),
(173, 22, '', NULL, '', 0, ''),
(174, 35, ' 4', NULL, '', 1, ''),
(175, 35, ' 5', NULL, '', 0, ''),
(176, 35, ' 6', NULL, '', 0, ''),
(177, 35, ' 3', NULL, '', 0, ''),
(178, 36, ' 4', NULL, '', 0, ''),
(179, 36, ' 8', NULL, '', 0.5, ''),
(180, 36, ' 6', NULL, '', 0, ''),
(181, 36, ' Eight', NULL, '', 0.5, ''),
(182, 37, ' Osama', NULL, '', 0, ''),
(183, 37, ' Obama', NULL, '', 1, ''),
(184, 37, ' Arvind', NULL, '', 0, ''),
(185, 37, ' Anil', NULL, '', 0, ''),
(186, 38, ' 4', NULL, '', 1, ''),
(187, 38, ' 5', NULL, '', 0, ''),
(188, 38, ' 6', NULL, '', 0, ''),
(189, 38, ' 3', NULL, '', 0, ''),
(190, 39, ' 4', NULL, '', 0, ''),
(191, 39, ' 8', NULL, '', 0.5, ''),
(192, 39, ' 6', NULL, '', 0, ''),
(193, 39, ' Eight', NULL, '', 0.5, ''),
(194, 40, ' Osama', NULL, '', 0, ''),
(195, 40, ' Obama', NULL, '', 1, ''),
(196, 40, ' Arvind', NULL, '', 0, ''),
(197, 40, ' Anil', NULL, '', 0, ''),
(198, 41, ' 4', NULL, ' 4', 1, ''),
(199, 41, ' 5', NULL, ' 5', 0, ''),
(200, 41, ' 6', NULL, ' 6', 0, ''),
(201, 41, ' 3', NULL, ' 3', 0, ''),
(202, 42, ' 4', NULL, '', 1, ''),
(203, 42, ' 5', NULL, '', 0, ''),
(204, 42, ' 6', NULL, '', 0, ''),
(205, 42, ' 3', NULL, '', 0, ''),
(206, 43, ' 4', NULL, '', 0, ''),
(207, 43, ' 8', NULL, '', 0.5, ''),
(208, 43, ' 6', NULL, '', 0, ''),
(209, 43, ' Eight', NULL, '', 0.5, ''),
(210, 44, ' Osama', NULL, '', 0, ''),
(211, 44, ' Obama', NULL, '', 1, ''),
(212, 44, ' Arvind', NULL, '', 0, ''),
(213, 44, ' Anil', NULL, '', 0, ''),
(214, 45, 'five', NULL, '', 0, ''),
(215, 45, 'four', NULL, '', 0.5, ''),
(216, 45, 'four', NULL, '', 0.5, ''),
(217, 45, 'six', NULL, '', 0, ''),
(218, 46, 'A', 'B', '', 0.25, ''),
(219, 46, 'C', 'D', '', 0.25, ''),
(220, 46, 'E', 'F', '', 0.25, ''),
(221, 46, 'G', 'H', '', 0.25, ''),
(222, 47, 'Blue, Sky blue', NULL, '', 0.25, ''),
(223, 49, 'five', NULL, '', 0, ''),
(224, 49, 'four', NULL, '', 0.5, ''),
(225, 49, 'four', NULL, '', 0.5, ''),
(226, 49, 'six', NULL, '', 0, ''),
(227, 50, 'A', 'B', '', 0.25, ''),
(228, 50, 'C', 'D', '', 0.25, ''),
(229, 50, 'E', 'F', '', 0.25, ''),
(230, 50, 'G', 'H', '', 0.25, ''),
(231, 51, 'Blue, Sky blue', NULL, '', 0.25, ''),
(232, 53, 'five', NULL, '', 0, ''),
(233, 53, 'four', NULL, '', 0.5, ''),
(234, 53, 'four', NULL, '', 0.5, ''),
(235, 53, 'six', NULL, '', 0, ''),
(236, 54, 'A', 'B', '', 0.25, ''),
(237, 54, 'C', 'D', '', 0.25, ''),
(238, 54, 'E', 'F', '', 0.25, ''),
(239, 54, 'G', 'H', '', 0.25, ''),
(240, 55, 'Blue, Sky blue', NULL, '', 0.25, ''),
(241, 57, 'five', NULL, '', 0, ''),
(242, 57, 'four', NULL, '', 1, ''),
(243, 57, 'three', NULL, '', 0, ''),
(244, 57, 'six', NULL, '', 0, ''),
(245, 58, 'five', NULL, '', 0, ''),
(246, 58, 'four', NULL, '', 0.5, ''),
(247, 58, 'four', NULL, '', 0.5, ''),
(248, 58, 'six', NULL, '', 0, ''),
(249, 59, 'A', 'B', '', 0.25, ''),
(250, 59, 'C', 'D', '', 0.25, ''),
(251, 59, 'E', 'F', '', 0.25, ''),
(252, 59, 'G', 'H', '', 0.25, ''),
(253, 60, 'Blue, Sky blue', NULL, '', 0.25, ''),
(254, 62, 'five', NULL, '', 0, ''),
(255, 62, 'four', NULL, '', 1, ''),
(256, 62, 'three', NULL, '', 0, ''),
(257, 62, 'six', NULL, '', 0, ''),
(258, 63, 'five', NULL, '', 0, ''),
(259, 63, 'four', NULL, '', 1, ''),
(260, 63, 'three', NULL, '', 0, ''),
(261, 63, 'six', NULL, '', 0, ''),
(262, 66, 'five', NULL, '', 0, ''),
(263, 66, 'four', NULL, '', 1, ''),
(264, 66, 'three', NULL, '', 0, ''),
(265, 66, 'six', NULL, '', 0, ''),
(266, 67, 'five', NULL, '', 0, ''),
(267, 67, 'four', NULL, '', 0.5, ''),
(268, 67, 'four', NULL, '', 0.5, ''),
(269, 67, 'six', NULL, '', 0, ''),
(270, 68, 'A', 'B', '', 0.25, ''),
(271, 68, 'C', 'D', '', 0.25, ''),
(272, 68, 'E', 'F', '', 0.25, ''),
(273, 68, 'G', 'H', '', 0.25, ''),
(274, 69, 'Blue, Sky blue', NULL, '', 0.25, ''),
(275, 71, 'five', NULL, '', 0, ''),
(276, 71, 'four', NULL, '', 1, ''),
(277, 71, 'three', NULL, '', 0, ''),
(278, 71, 'six', NULL, '', 0, ''),
(279, 72, 'five', NULL, '', 0, ''),
(280, 72, 'four', NULL, '', 1, ''),
(281, 72, 'three', NULL, '', 0, ''),
(282, 72, 'six', NULL, '', 0, ''),
(283, 73, 'five', NULL, '', 0, ''),
(284, 73, 'four', NULL, '', 1, ''),
(285, 73, 'three', NULL, '', 0, ''),
(286, 73, 'six', NULL, '', 0, ''),
(287, 74, 'five', NULL, 'five', 0, ''),
(288, 74, 'four', NULL, 'four', 1, ''),
(289, 74, 'three', NULL, 'three', 0, ''),
(290, 74, 'six', NULL, 'six', 0, ''),
(291, 75, 'five', NULL, '', 0, ''),
(292, 75, 'four', NULL, '', 0.5, ''),
(293, 75, 'four', NULL, '', 0.5, ''),
(294, 75, 'six', NULL, '', 0, ''),
(295, 76, 'A', 'B', '', 0.25, ''),
(296, 76, 'C', 'D', '', 0.25, ''),
(297, 76, 'E', 'F', '', 0.25, ''),
(298, 76, 'G', 'H', '', 0.25, ''),
(299, 77, 'Blue, Sky blue', NULL, '', 0.25, ''),
(510, 165, '<p>Molecules of water are bigger than those of air</p>', NULL, '', 0, ''),
(511, 165, '<p>Air is made up of several different kinds of molecules</p>', NULL, '', 0, ''),
(512, 165, '<p>molecules of water are further apart than those of air</p>', NULL, '', 0, ''),
(513, 165, '<p>molecules of water are closer together than those of air.</p>', NULL, '', 1, ''),
(514, 166, '<p>By increasing the amount of carbon dioxide in the atmosphere</p>', NULL, '', 1, ''),
(515, 166, '<p>by increasing the amount of water vapour in the atmosphere</p>', NULL, '', 0, ''),
(516, 166, '<p>By reducing the amount of oxygen in the atmosphere</p>', NULL, '', 0, ''),
(517, 166, '<p>By increasing the amount of heat in the atmosphere</p>', NULL, '', 0, ''),
(518, 167, '<p>carbon dioxide</p>', NULL, '', 0, ''),
(519, 167, '<p>light</p>', NULL, '', 0, ''),
(520, 167, '<p>oxygen</p>', NULL, '', 1, ''),
(521, 167, '<p>water</p>', NULL, '', 0, ''),
(522, 168, '<p>animals only</p>', NULL, '', 1, ''),
(523, 168, '<p>plants only</p>', NULL, '', 0, ''),
(524, 168, '<p>muscles only</p>', NULL, '', 0, ''),
(525, 168, '<p>all cells</p>', NULL, '', 0, ''),
(526, 169, '<p>0.4</p>', NULL, '', 0, ''),
(527, 169, '<p>2.5</p>', NULL, '', 0, ''),
(528, 169, '<p>180</p>', NULL, '', 1, ''),
(529, 169, '<p>420</p>', NULL, '', 0, ''),
(530, 170, '<p>Cellulose</p>', NULL, '', 0, ''),
(531, 170, '<p>Glucose</p>', NULL, '', 0, ''),
(532, 170, '<p>Starch</p>', NULL, '', 0, ''),
(533, 170, '<p>Vitamins</p>', NULL, '', 1, ''),
(534, 171, '<p>Child killer disease</p>', NULL, '', 0, ''),
(535, 171, '<p>Deficiency disease</p>', NULL, '', 1, ''),
(536, 171, '<p>Parasitic disease</p>', NULL, '', 0, ''),
(537, 171, '<p>Sexually transmitted disease</p>', NULL, '', 0, ''),
(538, 172, '<p>To release water</p>', NULL, '', 0, ''),
(539, 172, '<p>To release carbon dioxide</p>', NULL, '', 0, ''),
(540, 172, '<p>To release energy</p>', NULL, '', 1, ''),
(541, 172, '<p>To use up glucose</p>', NULL, '', 0, ''),
(542, 173, '<p>electricity</p>', NULL, '', 1, ''),
(543, 173, '<p>food</p>', NULL, '', 0, ''),
(544, 173, '<p>petrol</p>', NULL, '', 0, ''),
(545, 173, '<p>sun</p>', NULL, '', 0, ''),
(546, 174, '<p>compound</p>', NULL, '', 0, ''),
(547, 174, '<p>element</p>', NULL, '', 1, ''),
(548, 174, '<p>mixture</p>', NULL, '', 0, ''),
(549, 174, '<p>molecule</p>', NULL, '', 0, ''),
(550, 175, '<p>battery</p>', NULL, '', 1, ''),
(551, 175, '<p>generator</p>', NULL, '', 0, ''),
(552, 175, '<p>motor</p>', NULL, '', 0, ''),
(553, 175, '<p>steam engine</p>', NULL, '', 0, ''),
(554, 176, 'Santiago', NULL, '', 1, ''),
(555, 177, 'Africa', NULL, '', 1, ''),
(556, 178, 'Vatican City', NULL, '', 1, ''),
(557, 179, 'Russia', NULL, '', 1, ''),
(558, 180, 'Africa', NULL, '', 1, ''),
(559, 181, 'River Nile, Nile, Nile River, RiverNile, NileRiver', NULL, '', 1, ''),
(560, 182, 'blue, yellow, black, green, red', NULL, '', 1, ''),
(561, 183, 'Donald Trump, Trump, Donald, Trump Donald', NULL, '', 1, ''),
(562, 184, 'Corona Virus, COVID19, COVID-19, CoronaVirus, Corona', NULL, '', 1, ''),
(563, 185, 'Kings\'s Landing, Kings Landing, KingsLanding', NULL, '', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_payment`
--

DROP TABLE IF EXISTS `savsoft_payment`;
CREATE TABLE `savsoft_payment` (
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `quid` int(11) NOT NULL DEFAULT 0,
  `amount` float NOT NULL,
  `paid_date` int(11) NOT NULL,
  `payment_gateway` varchar(100) NOT NULL DEFAULT 'Paypal',
  `payment_status` varchar(100) NOT NULL DEFAULT 'Pending',
  `transaction_id` varchar(1000) NOT NULL,
  `other_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_payment`
--

INSERT INTO `savsoft_payment` (`pid`, `uid`, `gid`, `quid`, `amount`, `paid_date`, `payment_gateway`, `payment_status`, `transaction_id`, `other_data`) VALUES
(1, 10, 3, 0, 100, 0, 'Paypal', 'Paid', '1233423DCFDFD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_qbank`
--

DROP TABLE IF EXISTS `savsoft_qbank`;
CREATE TABLE `savsoft_qbank` (
  `qid` int(11) NOT NULL,
  `question_type` varchar(100) NOT NULL DEFAULT 'Multiple Choice Single Answer',
  `question` text NOT NULL,
  `description` text NOT NULL,
  `question1` text DEFAULT NULL,
  `description1` text DEFAULT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `no_time_served` int(11) NOT NULL DEFAULT 0,
  `no_time_corrected` int(11) NOT NULL DEFAULT 0,
  `no_time_incorrected` int(11) NOT NULL DEFAULT 0,
  `no_time_unattempted` int(11) NOT NULL DEFAULT 0,
  `inserted_by` int(11) NOT NULL,
  `inserted_by_name` varchar(100) DEFAULT NULL,
  `paragraph` text DEFAULT NULL,
  `paragraph1` text DEFAULT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_qbank`
--

INSERT INTO `savsoft_qbank` (`qid`, `question_type`, `question`, `description`, `question1`, `description1`, `cid`, `lid`, `no_time_served`, `no_time_corrected`, `no_time_incorrected`, `no_time_unattempted`, `inserted_by`, `inserted_by_name`, `paragraph`, `paragraph1`, `parent_id`) VALUES
(132, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">Identify any six artifacts that were discovered at Great Zimbabwe</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(133, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">Describe the construction and function</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(134, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">How Important was the King in the construction of the walls of Great Zimbabwe? Explain your answer.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(135, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">Name any six Shona chiefdoms conquered by Changamire Dombo</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(136, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">Outline the reasons for the decline of the Rozvi state</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(137, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">To what extent was external aggression responsible for the collapse of the Rozvi State? Explain your answer.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(138, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">Name any six ethnic groups of the Northern Nguniland at the begnning of the nineteenth centuty</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(139, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">Outline the causes of Mfecane in Nguniland</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(140, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">To what extent was Mfecane caused by the ambitions of leaders in Nguniland? Explain your answer.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(141, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">List any six groups of people Sebetwane fought on his way to Bulozi</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(142, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">Outline the factors which enabled Sebatwane to establish his kingdom on the upper Zambezi</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(143, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">To what extent was the invasion of this area by the Kololo a result of Sebatwane&rsquo;s personality? Explain your answer?</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(144, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">Name any six missionaries who operated in Matebeleland from 1850 to 1900.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(145, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">Outline the work of missionaries in Zimbabwe between 1850 and 1890.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(146, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">Did the missionaries suceed in their work? Explain your answer.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(147, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">List and six trade goods brought by the Portuguese to the Mutapa kingdom.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(148, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">Describe the Portuguese-Mutapa relations up to 1700</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(149, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">How far did the people of the Mutapa kingdom benefit from these relations? Explain your answer.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(150, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">List and three inventions during the Industrial Revolution in Britain</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(151, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">Describe the results of the Industrial Revolution in Britain</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(152, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">To what extend did the economic results lead to the scramble for Southern Africa? Explain your answer.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(153, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">Identify any six territories in Southern Africa for which European powers scrambled after 1885</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(154, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">Outline the political and economic aims of Britain and Germany in the scramble for Southern Africa.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(155, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">To what extend had Britain achieved her aims in Southern Africa by 1900? Explain your answer.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(156, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">List any six causes for the colonization of Southern Africa</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(157, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">Describe the activities of the Pioneer settlers in Mashonaland between 1890 and 1893</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(158, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">How were the Africans affected by activities of the Pioneer settlers in Mashonaland between 1890 and 1893? Explain your answer.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(159, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">Identify any six areas where the 1st Chimurenga War of 1896-7 was fought in Mashonaland</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(160, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">Outline the results of the 1st Chimurenga War of 1896-7</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(161, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">How were the settlers affected by the results of the 1st Chimurenga? Explain your answer</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(162, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">Name any six pieces of legislation passed in colonial Zimbabwe from 1894 to 1923</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(163, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">Describe the political developments in colonial Zimbabwe from 1897 to 1923</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(164, 'Long Answer', '<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"0\"><colgroup width=\"896\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td align=\"left\" height=\"17\">To what extent did the political developments in colonial Zimbabwe between 1897 &ndash; 1923 affect Africans? Explain your answer.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p></p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(165, 'Multiple Choice Single Answer', '<p>Air in a sealed syrunge can be compressed while water cannot This is because...</p>', '', NULL, NULL, 10, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(166, 'Multiple Choice Single Answer', '<p>In what way do veldfires lead to global warming</p>', '', NULL, NULL, 18, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(167, 'Multiple Choice Single Answer', '<p>Which of the following is a product of photosynthesis?</p>', '', NULL, NULL, 10, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(168, 'Multiple Choice Single Answer', '<p>Respiration is a process which releases energy from the oxidation of food. This process occurs in...</p>', '', NULL, NULL, 10, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(169, 'Multiple Choice Single Answer', '<p>In a simple machine, an effort of 120N is used to lift a load of 300N. What is the mechanical advantage?</p>', '', NULL, NULL, 10, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(170, 'Multiple Choice Single Answer', '<p>Which food is not a carbohydrate?</p>', '', NULL, NULL, 10, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(171, 'Multiple Choice Single Answer', '<p>Kwashiorkor is an example of a...</p>', '', NULL, NULL, 10, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(172, 'Multiple Choice Single Answer', '<p>The equation for respiration may be written as</p>\r\n<hr />\r\n<p>&nbsp;</p>\r\n<p>glucose + oxygen&nbsp; ==&gt; water + carbon dioxide + energy</p>\r\n<hr />\r\n<p>&nbsp;</p>\r\n<p>What is the purpose of respiration in living organisms?</p>\r\n<p>&nbsp;</p>', '', NULL, NULL, 10, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(173, 'Multiple Choice Single Answer', '<p>Industrial energy used in Zimbabwe can be traced back to...</p>', '', NULL, NULL, 10, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(174, 'Multiple Choice Single Answer', '<p>Of the substances listed below, which one always consists of the same type of atoms?</p>', '', NULL, NULL, 10, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(175, 'Multiple Choice Single Answer', '<p>Which equipment converts chemical energy to electrical energy?</p>', '', NULL, NULL, 10, 11, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(176, 'Short Answer', '<p>What is the capital of Chile?</p>', '', NULL, NULL, 19, 14, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(177, 'Short Answer', '<p>Which continent is Zimbabwe located in?</p>', '', NULL, NULL, 19, 14, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(178, 'Short Answer', '<p>What is the smallest country is the world?</p>', '', NULL, NULL, 19, 14, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(179, 'Short Answer', '<p>What is the largest country in the world?</p>', '', NULL, NULL, 19, 14, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(180, 'Short Answer', '<p>What is the hottest continent on Earth?</p>', '', NULL, NULL, 19, 14, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(181, 'Short Answer', '<p>What is the longest river in the world?</p>', '', NULL, NULL, 19, 14, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(182, 'Short Answer', '<p>Name any one color from the five Olympic rings</p>', '', NULL, NULL, 19, 14, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(183, 'Short Answer', '<p>Who is the current President of the United States of America?</p>', '<p>Please state the first name and the last name <strong>only</strong></p>', NULL, NULL, 19, 14, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(184, 'Short Answer', '<p>Which one of the global pandemics started in the last quarter of 2019 in Wuhan, China?</p>', '', NULL, NULL, 19, 14, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0),
(185, 'Short Answer', '<p>What is the capital of Westeros in Game of Thrones?</p>', '', NULL, NULL, 19, 14, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_qcl`
--

DROP TABLE IF EXISTS `savsoft_qcl`;
CREATE TABLE `savsoft_qcl` (
  `qcl_id` int(11) NOT NULL,
  `quid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `noq` int(11) NOT NULL,
  `i_correct` text NOT NULL,
  `i_incorrect` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_qcl`
--

INSERT INTO `savsoft_qcl` (`qcl_id`, `quid`, `cid`, `lid`, `noq`, `i_correct`, `i_incorrect`) VALUES
(80, 2, 1, 1, 3, '1', '0'),
(81, 2, 0, 1, 1, '1', '0'),
(82, 2, 2, 1, 1, '1', '0'),
(85, 20, 10, 11, 10, '1', '0'),
(87, 21, 19, 14, 10, '2', '0');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_quiz`
--

DROP TABLE IF EXISTS `savsoft_quiz`;
CREATE TABLE `savsoft_quiz` (
  `quid` int(11) NOT NULL,
  `quiz_name` varchar(1000) NOT NULL,
  `description` text NOT NULL,
  `start_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `gids` text NOT NULL,
  `qids` text NOT NULL,
  `noq` int(11) NOT NULL,
  `correct_score` text NOT NULL,
  `incorrect_score` text NOT NULL,
  `ip_address` text NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 10,
  `maximum_attempts` int(11) NOT NULL DEFAULT 1,
  `pass_percentage` float NOT NULL DEFAULT 50,
  `view_answer` int(11) NOT NULL DEFAULT 1,
  `camera_req` int(11) NOT NULL DEFAULT 1,
  `question_selection` int(11) NOT NULL DEFAULT 1,
  `gen_certificate` int(11) NOT NULL DEFAULT 0,
  `certificate_text` text DEFAULT NULL,
  `with_login` int(11) NOT NULL DEFAULT 1,
  `quiz_template` varchar(100) NOT NULL DEFAULT 'Default',
  `uids` varchar(1000) DEFAULT NULL,
  `inserted_by` int(11) NOT NULL DEFAULT 1,
  `inserted_by_name` varchar(100) DEFAULT 'Admin',
  `show_chart_rank` int(11) NOT NULL DEFAULT 1,
  `quiz_price` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_quiz`
--

INSERT INTO `savsoft_quiz` (`quid`, `quiz_name`, `description`, `start_date`, `end_date`, `gids`, `qids`, `noq`, `correct_score`, `incorrect_score`, `ip_address`, `duration`, `maximum_attempts`, `pass_percentage`, `view_answer`, `camera_req`, `question_selection`, `gen_certificate`, `certificate_text`, `with_login`, `quiz_template`, `uids`, `inserted_by`, `inserted_by_name`, `show_chart_rank`, `quiz_price`) VALUES
(19, ' ORDINARY LEVEL - HISTORY PAPER 1', '<p><em>End of term 2020 November Examination Session.</em></p>\r\n<p><span style=\"font-size: medium;\"><strong>INSTRUCTIONS TO CANDIDATES</strong></span></p>\r\n<ul>\r\n<li><span style=\"font-size: x-small;\">answer four questions only</span></li>\r\n<li></li>\r\n<li><span style=\"font-size: x-small;\">all questions in this exam carry equal marks</span></li>\r\n</ul>\r\n<p>&nbsp;</p>', 1588755229, 1620291229, '1', '164,163,162,161,160,159,158,157,156,155,154,153,152,151,150,149,148,147,146,145,144,143,142,141,140,139,138,137,136,135,134,133,132', 33, '8,11,6,8,11,6,8,11,6,8,11,6,8,11,6,8,11,6,8,11,6,8,11,6,8,11,6,8,11,6,8,11,6', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 120, 1, 50, 0, 0, 0, 0, NULL, 1, 'Default', NULL, 1, 'Admin', 1, 0),
(20, 'ORDINARY LEVEL - INTERGRATED SCIENCE SHORT CLASS SESSION', '<p>Short Class multiple choice revision for assesment before a final examination</p>\r\n<p><strong>Instructions to students attempting this quiz session</strong></p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>Select the correct answer from the list provided</li>\r\n<li>Your marks attained are displayed at the end of this quiz session</li>\r\n<li>You can skip a question and then attend to it later on if you do not have an answer to it at that time</li>\r\n<li>all questions carry equal marks.</li>\r\n</ul>', 1588758994, 1620294994, '1', '', 10, '1,1,1,1,1,1,1,1,1,1', '0,0,0,0,0,0,0,0,0,0', '', 10, 2, 50, 0, 0, 1, 1, '<center><h1>{quiz_name}</h1></center><br><br><br>\r\n<p>RESULTS</p>\r\n<p>Name: {last_name} {first_name}</p>\r\n<p>Score: {score_obtained}</p>\r\n<p>Percentage Score: {percentage_obtained}\r\n<br><br><br>\r\nOn: {generated_date}\r\n<br><br><br>\r\nCredits: Edu-Line 2020', 0, 'Default', NULL, 1, 'Admin', 1, 0),
(21, 'GENERAL KNOWLEDGE FOR ALL', '<p>This quiz contains general knowledge questions which requires the student to answer using either one or two words.</p>\r\n<ul>\r\n<li>All questions contain equal number of marks.</li>\r\n<li>anyone attempting only has three chances to attempt this quiz before being restricted.</li>\r\n</ul>', 1588760667, 1620296667, '1', '', 10, '2,2,2,2,2,2,2,2,2,2', '0,0,0,0,0,0,0,0,0,0', '', 10, 3, 50, 1, 0, 1, 0, '<center><h1>{quiz_name}</h1></center><br><br><br>\r\n<p>RESULTS</p>\r\n<p>Name: {last_name} {first_name}</p>\r\n<p>Score: {score_obtained}</p>\r\n<p>Percentage Score: {percentage_obtained}\r\n<br><br><br>\r\nOn: {generated_date}\r\n<br><br><br>\r\nCredits: Edu-Line 2020', 0, 'Default', NULL, 1, 'Admin', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_result`
--

DROP TABLE IF EXISTS `savsoft_result`;
CREATE TABLE `savsoft_result` (
  `rid` int(11) NOT NULL,
  `quid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `result_status` varchar(100) NOT NULL DEFAULT 'Open',
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `categories` text NOT NULL,
  `category_range` text NOT NULL,
  `r_qids` text NOT NULL,
  `individual_time` text NOT NULL,
  `total_time` int(11) NOT NULL DEFAULT 0,
  `score_obtained` float NOT NULL DEFAULT 0,
  `percentage_obtained` float NOT NULL DEFAULT 0,
  `attempted_ip` varchar(100) NOT NULL,
  `score_individual` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `manual_valuation` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_result`
--

INSERT INTO `savsoft_result` (`rid`, `quid`, `uid`, `result_status`, `start_time`, `end_time`, `categories`, `category_range`, `r_qids`, `individual_time`, `total_time`, `score_obtained`, `percentage_obtained`, `attempted_ip`, `score_individual`, `photo`, `manual_valuation`) VALUES
(1, 8, 1, 'Pass', 1511412687, 1511412701, 'General knowledge,Math', '2,1', '79,80,81', '0,6,0', 6, 3, 100, '::1', '1,1,1', '', 0),
(4, 8, 1, 'Pass', 1513919539, 1513919552, 'General knowledge,Math', '2,1', '79,80,81', '0,4,0', 4, 3, 100, '::1', '1,1,1', '', 0),
(5, 8, 1, 'Fail', 1514276635, 1514276648, 'General knowledge,Math', '2,1', '79,80,81', '0,5,4', 9, 0.5, 5.55556, '::1', '1,2,2', '', 0),
(7, 8, 1, 'Fail', 1552662063, 1552662225, 'General knowledge,Math', '2,1', '79,80,81', '89,7,0', 96, -2.5, -83.3333, '::1', '2,2,2', '', 0),
(8, 8, 1, 'Fail', 1552669931, 1552669944, 'General knowledge,Math', '2,1', '79,80,81', '0,7,2', 9, -0.5, -16.6667, '::1', '1,2,2', '', 0),
(9, 8, 1, 'Fail', 1552889514, 1552889691, 'General knowledge,Math', '2,1', '79,80,81', '35,43,53', 131, -0.5, -16.6667, '::1', '1,2,2', '', 0),
(10, 8, 5, 'Fail', 1552913410, 1552913423, 'General knowledge,Math', '2,1', '79,80,81', '0,5,0', 5, -2.5, -83.3333, '::1', '2,2,2', '', 0),
(11, 8, 1, 'Fail', 1553771627, 1553771665, 'General knowledge,Math', '2,1', '79,80,81', '0,0,0', 0, -1, -33.3333, '::1', '2,0,0', '', 0),
(12, 8, 1, 'Fail', 1553771675, 1553771682, 'General knowledge,Math', '2,1', '79,80,81', '3,0,0', 3, -1, -33.3333, '::1', '2,0,0', '', 0),
(13, 7, 1, 'Fail', 1556044127, 1556044162, 'Math', '3', '115,117,118', '0,30,0', 30, 0, 0, '::1', '2,0,0', '', 0),
(14, 6, 1, 'Fail', 1556044200, 1556044253, 'Math,General knowledge', '1,1', '81,79', '7,41', 48, 0, 0, '::1', '2,2', '', 0),
(15, 6, 1, 'Pass', 1557312571, 1557313635, 'Math,General knowledge', '1,1', '81,79', '268,760', 1028, 1, 50, '::1', '2,1', '', 0),
(16, 6, 1, 'Pass', 1557313955, 1557314164, 'Math,General knowledge', '1,1', '81,79', '0,205', 205, 1, 50, '::1', '1,0', '', 0),
(18, 8, 1, 'Fail', 1558082971, 1558082983, 'General knowledge,Math', '2,1', '79,80,81', '0,3,0', 3, -2, -66.6667, '::1', '2,2,0', '', 0),
(19, 8, 12, 'Fail', 1587027119, 1587222567, 'General knowledge,Mathematics', '2,1', '79,80,81', '0,0,0', 0, 0, 0, '127.0.0.1', '0,0,0', '', 0),
(20, 8, 1, 'Fail', 1587221756, 1587221786, 'General knowledge,Mathematics,English Literature', '2,1,1', '79,80,81,119', '0,11,3,0', 14, 0.5, 16.6667, '127.0.0.1', '1,1,2,2', '', 0),
(21, 10, 1, 'Pass', 1587222225, 1587222411, 'Physical Science', '1', '120', '179', 179, 1, 100, '127.0.0.1', '1', '', 0),
(22, 10, 12, 'Pass', 1587222591, 1587222692, 'Physical Science', '1', '120', '96', 96, 1, 100, '127.0.0.1', '1', '', 0),
(23, 15, 12, 'Pass', 1587224615, 1587224739, 'Match the column,Multiple choice multiple answer,Short Answer,Physical Science,Mathematics', '1,1,1,1,1', '123,122,121,120,116', '15,51,15,30,7', 118, 5, 500, '127.0.0.1', '1,1,1,1,1', '', 0),
(24, 17, 11, 'Fail', 1588093919, 1588093948, 'English Literature,Short Answer,Mathematics', '1,1,1', '119,121,117', '0,16,8', 24, 1, 20, '127.0.0.1', '2,1,2', '', 0),
(25, 17, 1, 'Fail', 1588692814, 1588692849, 'English Literature,Short Answer,Mathematics', '1,1,1', '119,121,117', '0,20,9', 29, 3, 33.3333, '127.0.0.1', '2,1,2', '', 0),
(26, 17, 11, 'Fail', 1588692916, 1588692947, 'English Literature,Short Answer,Mathematics', '1,1,1', '119,121,117', '0,23,6', 29, 3, 33.3333, '127.0.0.1', '2,1,2', '', 0),
(27, 17, 11, 'Pass', 1588693007, 1588693027, 'English Literature,Short Answer,Mathematics', '1,1,1', '119,121,117', '0,7,8', 15, 6, 66.6667, '127.0.0.1', '0,1,1', '', 0),
(28, 18, 1, 'Open', 1588751368, 0, 'History', '1', '131', '47', 0, 0, 0, '127.0.0.1', '0', '', 0),
(29, 19, 11, 'Open', 1588755965, 0, 'History', '33', '164,163,162,161,160,159,158,157,156,155,154,153,152,151,150,149,148,147,146,145,144,143,142,141,140,139,138,137,136,135,134,133,132', '30,0,0,5,1,0,1,14,0,16,8,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, 0, '127.0.0.1', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_users`
--

DROP TABLE IF EXISTS `savsoft_users`;
CREATE TABLE `savsoft_users` (
  `uid` int(11) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `contact_no` varchar(1000) DEFAULT NULL,
  `connection_key` varchar(1000) DEFAULT NULL,
  `gid` varchar(100) NOT NULL DEFAULT '1',
  `su` int(11) NOT NULL DEFAULT 0,
  `inserted_by` int(11) NOT NULL DEFAULT 0,
  `subscription_expired` int(11) NOT NULL DEFAULT 0,
  `verify_code` int(11) NOT NULL DEFAULT 0,
  `wp_user` varchar(100) DEFAULT NULL,
  `registered_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `photo` varchar(1000) DEFAULT NULL,
  `user_status` varchar(100) NOT NULL DEFAULT 'Active',
  `web_token` varchar(1000) DEFAULT NULL,
  `android_token` varchar(1000) DEFAULT NULL,
  `skype_id` varchar(100) DEFAULT NULL,
  `time_zone` varchar(100) DEFAULT 'Asia/Kolkata'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_users`
--

INSERT INTO `savsoft_users` (`uid`, `password`, `email`, `first_name`, `last_name`, `contact_no`, `connection_key`, `gid`, `su`, `inserted_by`, `subscription_expired`, `verify_code`, `wp_user`, `registered_date`, `photo`, `user_status`, `web_token`, `android_token`, `skype_id`, `time_zone`) VALUES
(13, '3d1dfde9304bff15332bf4b308a47b50', '1558001408', 'Guest User', '1558001408', '', NULL, '1', 0, 0, 0, 0, NULL, '2019-05-16 10:10:08', NULL, 'Active', NULL, NULL, NULL, 'Asia/Kolkata'),
(18, '06def496ef24bd97634f51c38b004141', 'admin@eduline.co.zw', 'admin', 'eduline', '0772766184', NULL, '1', 2, 0, 0, 0, NULL, '2020-04-22 10:37:13', NULL, 'Active', NULL, NULL, NULL, 'Asia/Kolkata'),
(1, '06def496ef24bd97634f51c38b004141', 'admin@eduline.com', 'Developer', 'MATINGO', '+263776887606', NULL, '1', 1, 0, 2147452200, 0, '', '2017-04-20 11:22:38', NULL, 'Active', 'dnwIpQWkxyA:APA91bFZLhdxZnPcNareTyHnJRikJGqaT7qh9DF4jSmyKSOq1rv6k7uwgmaQ4_K7jT3WNNUeKRdRQYsNf_OZaQZ7i5nKI_CjA6QGPwPsL5_D7ShPTtsuIwTkr0CuGx0RS7oAVNg_bImc', NULL, 'surveyor_jr', 'Asia/Kolkata'),
(20, '06def496ef24bd97634f51c38b004141', 'info@eduline.co', 'Info', 'Eduline', '26359564', NULL, '1', 0, 0, 0, 0, NULL, '2020-05-03 10:05:32', NULL, 'Active', NULL, NULL, NULL, 'Asia/Kolkata'),
(2, 'd1fe139fe1c085ee6133fe78c47c7553', 'matingonk@gmail.com', 'Kumbirai', 'Matingo', '01478523369', NULL, '1', 1, 17, 2147452200, 0, '', '2020-04-20 13:06:51', NULL, 'Active', 'dnwIpQWkxyA:APA91bFZLhdxZnPcNareTyHnJRikJGqaT7qh9DF4jSmyKSOq1rv6k7uwgmaQ4_K7jT3WNNUeKRdRQYsNf_OZaQZ7i5nKI_CjA6QGPwPsL5_D7ShPTtsuIwTkr0CuGx0RS7oAVNg_bImc', NULL, '', 'Asia/Kolkata'),
(1, 'ab86a1e1ef70dff97959067b723c5c24', 'me@me.com', 'me', 'me', 'meem', NULL, '1', 3, 19, 1619980200, 0, NULL, '2020-05-03 09:25:36', NULL, 'Active', 'dnwIpQWkxyA:APA91bFZLhdxZnPcNareTyHnJRikJGqaT7qh9DF4jSmyKSOq1rv6k7uwgmaQ4_K7jT3WNNUeKRdRQYsNf_OZaQZ7i5nKI_CjA6QGPwPsL5_D7ShPTtsuIwTkr0CuGx0RS7oAVNg_bImc\r\n', NULL, '', 'Asia/Kolkata'),
(15, 'cd73502828457d15655bbd7a63fb0bc8', 'student@eduline.com', 'Student', 'Student', '0123456789', NULL, '1', 2, 0, 0, 0, NULL, '2020-04-20 10:57:13', NULL, 'Active', NULL, NULL, NULL, 'Asia/Kolkata'),
(16, '8d788385431273d11e8b43bb78f3aa41', 'teacher@eduline.com', 'Teacher', 'Teacher', '78945616', NULL, '1', 3, 6, 1618857000, 0, NULL, '2020-04-20 11:38:01', NULL, 'Active', NULL, NULL, NULL, 'Asia/Kolkata'),
(11, '06def496ef24bd97634f51c38b004141', 'user2@eduline.com', 'User', 'Number 2', '0776887606', NULL, '1', 2, 0, 0, 0, NULL, '2019-05-14 07:09:48', NULL, 'Active', NULL, NULL, '', 'Asia/Kolkata'),
(9, '06def496ef24bd97634f51c38b004141', 'user4@eduline.com', 'User', 'Number4', '1234567890', NULL, '1', 2, 0, 0, 0, NULL, '2017-08-25 10:20:10', NULL, 'Inactive', NULL, NULL, '', 'Asia/Kolkata'),
(12, '06def496ef24bd97634f51c38b004141', 'user@eduline.com', 'User', 'Number1', '1234567890', NULL, '1', 2, 0, 1586802600, 0, NULL, '2019-05-14 07:35:12', NULL, 'Active', NULL, NULL, '', 'Asia/Kolkata');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_users_custom`
--

DROP TABLE IF EXISTS `savsoft_users_custom`;
CREATE TABLE `savsoft_users_custom` (
  `c_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `field_values` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `savsoft_users_custom`
--

INSERT INTO `savsoft_users_custom` (`c_id`, `field_id`, `uid`, `field_values`) VALUES
(10, 3, 5, '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `social_group`
--

DROP TABLE IF EXISTS `social_group`;
CREATE TABLE `social_group` (
  `sg_id` int(11) NOT NULL,
  `sg_name` varchar(30) NOT NULL,
  `about` varchar(1000) NOT NULL,
  `sg_status` varchar(100) NOT NULL DEFAULT 'Public',
  `no_member` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_group`
--

INSERT INTO `social_group` (`sg_id`, `sg_name`, `about`, `sg_status`, `no_member`, `created_date`, `created_by`) VALUES
(1, 'Quiz Star', 'Join masters and compare your ranking', 'Public', 3, '2017-08-27 06:45:45', 1),
(3, 'Genius Group', 'Group of genius.. JOIN NOW', 'Public', 2, '2017-08-27 08:11:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `social_group_joined`
--

DROP TABLE IF EXISTS `social_group_joined`;
CREATE TABLE `social_group_joined` (
  `join_id` int(11) NOT NULL,
  `sg_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `joined_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_group_joined`
--

INSERT INTO `social_group_joined` (`join_id`, `sg_id`, `uid`, `joined_date`) VALUES
(3, 1, 1, '2017-08-27 08:06:39'),
(4, 2, 1, '2017-08-27 08:10:20'),
(5, 3, 1, '2017-08-27 08:11:45'),
(9, 3, 9, '2017-08-27 18:29:19'),
(11, 1, 9, '2017-08-27 18:57:03'),
(14, 1, 5, '2017-08-27 20:14:05');

-- --------------------------------------------------------

--
-- Table structure for table `study_material`
--

DROP TABLE IF EXISTS `study_material`;
CREATE TABLE `study_material` (
  `stid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `study_description` text NOT NULL,
  `gids` varchar(100) NOT NULL,
  `cid` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `attachment` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `study_material`
--

INSERT INTO `study_material` (`stid`, `title`, `study_description`, `gids`, `cid`, `created_date`, `created_by`, `attachment`) VALUES
(9, 'EDU-LINE LICENSE AGREEMENT', '<p>This license agreement has been handed over by Edu-Line (Pvt) Ltd upon purchasing the software. Please read it carefully.</p>\r\n<p>Regards</p>', '1', 17, '2020-04-20 10:37:48', 1, '1587379139.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `warning_message`
--

DROP TABLE IF EXISTS `warning_message`;
CREATE TABLE `warning_message` (
  `wid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `warning_time` int(11) NOT NULL,
  `warning_message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warning_message`
--

INSERT INTO `warning_message` (`wid`, `rid`, `uid`, `warning_time`, `warning_message`) VALUES
(1, 5, 1, 1512452823, 'User idle for more than 2 Minutes'),
(2, 5, 1, 1512452833, 'User idle for more than 2 Minutes'),
(3, 6, 1, 1512453042, 'User idle for more than 2 Minutes'),
(4, 6, 1, 1512453193, 'User idle for more than 2 Minutes'),
(5, 6, 1, 1512453463, 'User idle for more than 2 Minutes'),
(6, 6, 1, 1512453922, 'Skipping too many question'),
(7, 6, 1, 1512454045, 'User idle for more than 2 Minutes'),
(8, 9, 1, 1512463053, 'Movement Dedected'),
(9, 9, 1, 1512463067, 'Movement Dedected'),
(10, 9, 1, 1512463068, 'Movement Dedected'),
(11, 9, 1, 1512463072, 'Movement Dedected'),
(12, 9, 1, 1512463073, 'Movement Dedected'),
(13, 9, 1, 1512463079, 'Movement Dedected'),
(14, 9, 1, 1512463112, 'Movement Dedected'),
(15, 9, 1, 1512463138, 'Movement Dedected'),
(16, 9, 1, 1512463147, 'Movement Dedected'),
(17, 9, 1, 1512463148, 'Movement Dedected'),
(18, 9, 1, 1512463153, 'Movement Dedected'),
(19, 9, 1, 1512463177, 'Movement Dedected'),
(20, 9, 1, 1512463200, 'Movement Dedected'),
(21, 9, 1, 1512463201, 'Movement Dedected'),
(22, 9, 1, 1512463202, 'Movement Dedected'),
(23, 9, 1, 1512463206, 'Movement Dedected'),
(24, 9, 1, 1512463256, 'Movement Dedected'),
(25, 9, 1, 1512463257, 'Movement Dedected'),
(26, 9, 1, 1512463264, 'Movement Dedected'),
(27, 9, 1, 1512463269, 'Movement Dedected'),
(28, 9, 1, 1512463270, 'Movement Dedected'),
(29, 9, 1, 1512463316, 'Movement Dedected'),
(30, 9, 1, 1512463317, 'Movement Dedected'),
(31, 9, 1, 1512463325, 'Movement Dedected'),
(32, 9, 1, 1512463326, 'Movement Dedected'),
(33, 9, 1, 1512463335, 'Movement Dedected'),
(34, 9, 1, 1512463336, 'Movement Dedected'),
(35, 9, 1, 1512463341, 'Movement Dedected'),
(36, 9, 1, 1512463355, 'Movement Dedected'),
(37, 9, 1, 1512463403, 'Movement Dedected'),
(38, 9, 1, 1512463409, 'Movement Dedected'),
(39, 9, 1, 1512463410, 'Movement Dedected'),
(40, 9, 1, 1512463431, 'Movement Dedected'),
(41, 9, 1, 1512463432, 'Movement Dedected'),
(42, 9, 1, 1512463434, 'Movement Dedected'),
(43, 9, 1, 1512463435, 'Movement Dedected'),
(44, 9, 1, 1512463436, 'Movement Dedected'),
(45, 9, 1, 1512463437, 'Movement Dedected'),
(46, 9, 1, 1512463450, 'Movement Dedected'),
(47, 9, 1, 1512463451, 'Movement Dedected'),
(48, 9, 1, 1512463462, 'Movement Dedected'),
(49, 9, 1, 1512463467, 'Movement Dedected'),
(50, 9, 1, 1512463499, 'Movement Dedected'),
(51, 9, 1, 1512463500, 'Movement Dedected'),
(52, 9, 1, 1512463501, 'Movement Dedected'),
(53, 9, 1, 1512463503, 'Movement Dedected'),
(54, 9, 1, 1512463505, 'Movement Dedected'),
(55, 9, 1, 1512463506, 'Movement Dedected'),
(56, 9, 1, 1512463513, 'Movement Dedected'),
(57, 9, 1, 1512463515, 'Movement Dedected'),
(58, 9, 1, 1512463523, 'Movement Dedected'),
(59, 9, 1, 1512463525, 'Movement Dedected'),
(60, 9, 1, 1512463526, 'Movement Dedected'),
(61, 9, 1, 1512463530, 'Movement Dedected'),
(62, 9, 1, 1512463531, 'Movement Dedected'),
(63, 9, 1, 1512463543, 'Movement Dedected'),
(64, 9, 1, 1512463544, 'Movement Dedected'),
(65, 9, 1, 1512463551, 'Movement Dedected'),
(66, 9, 1, 1512463555, 'Movement Dedected'),
(67, 9, 1, 1512463556, 'Movement Dedected'),
(68, 9, 1, 1512463559, 'Movement Dedected'),
(69, 9, 1, 1512463560, 'Movement Dedected'),
(70, 9, 1, 1512463562, 'Movement Dedected'),
(71, 9, 1, 1512463563, 'Movement Dedected'),
(72, 9, 1, 1512463564, 'Movement Dedected'),
(73, 9, 1, 1512463565, 'Movement Dedected'),
(74, 9, 1, 1512463594, 'Movement Dedected'),
(75, 9, 1, 1512463597, 'Movement Dedected'),
(76, 9, 1, 1512463605, 'Movement Dedected'),
(77, 9, 1, 1512463606, 'Movement Dedected'),
(78, 9, 1, 1512463643, 'Movement Dedected'),
(79, 9, 1, 1512463691, 'Movement Dedected'),
(80, 9, 1, 1512463699, 'Movement Dedected'),
(81, 9, 1, 1512463700, 'Movement Dedected'),
(82, 9, 1, 1512463740, 'Movement Dedected'),
(83, 9, 1, 1512463747, 'Movement Dedected'),
(84, 9, 1, 1512463751, 'Movement Dedected'),
(85, 9, 1, 1512463759, 'Movement Dedected'),
(86, 9, 1, 1512463797, 'Movement Dedected'),
(87, 9, 1, 1512463803, 'Movement Dedected'),
(88, 9, 1, 1512463816, 'Movement Dedected'),
(89, 9, 1, 1512463819, 'Movement Dedected'),
(90, 9, 1, 1512463835, 'Movement Dedected'),
(91, 9, 1, 1512463846, 'Movement Dedected'),
(92, 9, 1, 1512463847, 'Movement Dedected'),
(93, 9, 1, 1512463848, 'Movement Dedected'),
(94, 9, 1, 1512463851, 'Movement Dedected'),
(95, 9, 1, 1512463852, 'Movement Dedected'),
(96, 9, 1, 1512463904, 'Movement Dedected'),
(97, 9, 1, 1512463907, 'Movement Dedected'),
(98, 9, 1, 1512463908, 'Movement Dedected'),
(99, 9, 1, 1512463912, 'Movement Dedected'),
(100, 9, 1, 1512463914, 'Movement Dedected'),
(101, 9, 1, 1512463973, 'Movement Dedected'),
(102, 9, 1, 1512463984, 'Movement Dedected'),
(103, 9, 1, 1512463991, 'User idle for more than 2 Minutes'),
(104, 9, 1, 1512463998, 'Movement Dedected'),
(105, 9, 1, 1512464037, 'Movement Dedected'),
(106, 9, 1, 1512464045, 'Movement Dedected'),
(107, 9, 1, 1512464053, 'Movement Dedected'),
(108, 9, 1, 1512464061, 'Movement Dedected'),
(109, 9, 1, 1512464082, 'Movement Dedected'),
(110, 9, 1, 1512464095, 'Movement Dedected'),
(111, 9, 1, 1512464103, 'Movement Dedected'),
(112, 9, 1, 1512464107, 'Movement Dedected'),
(113, 9, 1, 1512464111, 'Movement Dedected'),
(114, 9, 1, 1512464150, 'Movement Dedected'),
(115, 9, 1, 1512464159, 'Movement Dedected'),
(116, 9, 1, 1512464187, 'Movement Dedected'),
(117, 9, 1, 1512464195, 'Movement Dedected'),
(118, 9, 1, 1512464207, 'Movement Dedected'),
(119, 9, 1, 1512464238, 'Movement Dedected'),
(120, 9, 1, 1512464354, 'Movement Dedected'),
(121, 9, 1, 1512464371, 'Movement Dedected'),
(122, 9, 1, 1512464391, 'User idle for more than 2 Minutes'),
(123, 9, 1, 1512464424, 'Movement Dedected'),
(124, 9, 1, 1512464425, 'Movement Dedected'),
(125, 9, 1, 1512464426, 'Movement Dedected'),
(126, 9, 1, 1512464427, 'Movement Dedected'),
(127, 9, 1, 1512464428, 'Movement Dedected'),
(128, 9, 1, 1512464429, 'Movement Dedected'),
(129, 9, 1, 1512464430, 'Movement Dedected'),
(130, 9, 1, 1512464433, 'Movement Dedected'),
(131, 9, 1, 1512464434, 'Movement Dedected'),
(132, 9, 1, 1512464435, 'Movement Dedected'),
(133, 9, 1, 1512464438, 'Movement Dedected'),
(134, 9, 1, 1512464440, 'Movement Dedected'),
(135, 9, 1, 1512464441, 'Movement Dedected'),
(136, 9, 1, 1512464442, 'Movement Dedected'),
(137, 9, 1, 1512464445, 'Movement Dedected'),
(138, 9, 1, 1512464446, 'Movement Dedected'),
(139, 9, 1, 1512464448, 'Movement Dedected'),
(140, 9, 1, 1512464449, 'Movement Dedected'),
(141, 9, 1, 1512464450, 'Movement Dedected'),
(142, 9, 1, 1512464451, 'Movement Dedected'),
(143, 9, 1, 1512464456, 'Movement Dedected'),
(144, 9, 1, 1512464457, 'Movement Dedected'),
(145, 9, 1, 1512464458, 'Movement Dedected'),
(146, 9, 1, 1512464460, 'Movement Dedected'),
(147, 9, 1, 1512464462, 'Movement Dedected'),
(148, 9, 1, 1512464463, 'Movement Dedected'),
(149, 9, 1, 1512464464, 'Movement Dedected'),
(150, 9, 1, 1512464465, 'Movement Dedected'),
(151, 9, 1, 1512464569, 'User idle for more than 2 Minutes'),
(152, 9, 1, 1512464758, 'Movement Dedected'),
(153, 9, 1, 1512464759, 'Movement Dedected'),
(154, 9, 1, 1512464791, 'Movement Dedected'),
(155, 9, 1, 1512464914, 'Movement Dedected'),
(156, 9, 1, 1512464915, 'Movement Dedected'),
(157, 9, 1, 1512464916, 'Movement Dedected'),
(158, 9, 1, 1512464930, 'Movement Dedected'),
(159, 9, 1, 1512464931, 'Movement Dedected'),
(160, 9, 1, 1512464932, 'Movement Dedected'),
(161, 9, 1, 1512464938, 'Movement Dedected'),
(162, 9, 1, 1512464939, 'Movement Dedected'),
(163, 9, 1, 1512465228, 'Movement Dedected'),
(164, 9, 1, 1512465237, 'Movement Dedected'),
(165, 9, 1, 1512465238, 'Movement Dedected'),
(166, 9, 1, 1512465246, 'Movement Dedected'),
(167, 9, 1, 1512465252, 'Movement Dedected'),
(168, 9, 1, 1512465254, 'Movement Dedected'),
(169, 9, 1, 1512465294, 'Movement Dedected'),
(170, 9, 1, 1512465295, 'Movement Dedected'),
(171, 9, 1, 1512465298, 'Movement Dedected'),
(172, 9, 1, 1512465324, 'Movement Dedected'),
(173, 9, 1, 1512465325, 'Movement Dedected'),
(174, 9, 1, 1512465326, 'Movement Dedected'),
(175, 9, 1, 1512465683, 'Movement Dedected'),
(176, 9, 1, 1512465684, 'Movement Dedected'),
(177, 9, 1, 1512466260, 'Movement Dedected'),
(178, 9, 1, 1512466265, 'Movement Dedected'),
(179, 9, 1, 1512466266, 'Movement Dedected'),
(180, 9, 1, 1512466267, 'Movement Dedected'),
(181, 9, 1, 1512466268, 'Movement Dedected'),
(182, 9, 1, 1512466269, 'Movement Dedected'),
(183, 9, 1, 1512466270, 'Movement Dedected'),
(184, 9, 1, 1512466271, 'Movement Dedected'),
(185, 9, 1, 1512466279, 'Movement Dedected'),
(186, 9, 1, 1512466280, 'Movement Dedected'),
(187, 9, 1, 1512466281, 'Movement Dedected'),
(188, 9, 1, 1512466282, 'Movement Dedected'),
(189, 9, 1, 1512466286, 'Movement Dedected'),
(190, 9, 1, 1512466287, 'Movement Dedected'),
(191, 9, 1, 1512466288, 'Movement Dedected'),
(192, 9, 1, 1512466289, 'Movement Dedected'),
(193, 9, 1, 1512466290, 'Movement Dedected'),
(194, 9, 1, 1512466292, 'Movement Dedected'),
(195, 9, 1, 1512466293, 'Movement Dedected'),
(196, 9, 1, 1512466295, 'Movement Dedected'),
(197, 9, 1, 1512466296, 'Movement Dedected'),
(198, 9, 1, 1512466297, 'Movement Dedected'),
(199, 9, 1, 1512466305, 'Movement Dedected'),
(200, 9, 1, 1512466312, 'Movement Dedected'),
(201, 9, 1, 1512466314, 'Movement Dedected'),
(202, 9, 1, 1512466338, 'Movement Dedected'),
(203, 9, 1, 1512466344, 'Movement Dedected'),
(204, 9, 1, 1512466359, 'Movement Dedected'),
(205, 9, 1, 1512466364, 'Movement Dedected'),
(206, 9, 1, 1512466364, 'Movement Dedected'),
(207, 9, 1, 1512466365, 'Movement Dedected'),
(208, 9, 1, 1512466369, 'Movement Dedected'),
(209, 9, 1, 1512466371, 'Movement Dedected'),
(210, 9, 1, 1512466372, 'Movement Dedected'),
(211, 9, 1, 1512466373, 'Movement Dedected'),
(212, 9, 1, 1512466380, 'Movement Dedected'),
(213, 9, 1, 1512466381, 'Movement Dedected'),
(214, 9, 1, 1512466382, 'Movement Dedected'),
(215, 9, 1, 1512466386, 'Movement Dedected'),
(216, 9, 1, 1512466390, 'Movement Dedected'),
(217, 9, 1, 1512466395, 'Movement Dedected'),
(218, 9, 1, 1512466396, 'Movement Dedected'),
(219, 9, 1, 1512466399, 'Movement Dedected'),
(220, 9, 1, 1512466406, 'Movement Dedected'),
(221, 9, 1, 1512466407, 'Movement Dedected'),
(222, 9, 1, 1512466414, 'Movement Dedected'),
(223, 9, 1, 1512466417, 'Movement Dedected'),
(224, 9, 1, 1512466426, 'Movement Dedected'),
(225, 9, 1, 1512466441, 'Movement Dedected'),
(226, 9, 1, 1512466442, 'Movement Dedected'),
(227, 9, 1, 1512466446, 'Movement Dedected'),
(228, 9, 1, 1512466484, 'Movement Dedected'),
(229, 9, 1, 1512466484, 'Movement Dedected'),
(230, 9, 1, 1512466485, 'Movement Dedected'),
(231, 9, 1, 1512466486, 'Movement Dedected'),
(232, 9, 1, 1512466529, 'Movement Dedected'),
(233, 9, 1, 1512466540, 'Movement Dedected'),
(234, 9, 1, 1512466570, 'Movement Dedected'),
(235, 9, 1, 1512466576, 'Movement Dedected'),
(236, 9, 1, 1512466577, 'Movement Dedected'),
(237, 9, 1, 1512466584, 'Movement Dedected'),
(238, 9, 1, 1512466585, 'Movement Dedected'),
(239, 9, 1, 1512466591, 'Movement Dedected'),
(240, 9, 1, 1512466598, 'Movement Dedected'),
(241, 9, 1, 1512466599, 'Movement Dedected'),
(242, 9, 1, 1512466600, 'Movement Dedected'),
(243, 9, 1, 1512466605, 'Movement Dedected'),
(244, 9, 1, 1512466606, 'Movement Dedected'),
(245, 9, 1, 1512466608, 'Movement Dedected'),
(246, 9, 1, 1512466621, 'Movement Dedected'),
(247, 9, 1, 1512466628, 'Movement Dedected'),
(248, 9, 1, 1512466629, 'Movement Dedected'),
(249, 9, 1, 1512466641, 'Movement Dedected'),
(250, 9, 1, 1512466642, 'Movement Dedected'),
(251, 9, 1, 1512466648, 'Movement Dedected'),
(252, 9, 1, 1512466654, 'Movement Dedected'),
(253, 9, 1, 1512466655, 'Movement Dedected'),
(254, 9, 1, 1512466656, 'Movement Dedected'),
(255, 9, 1, 1512466657, 'Movement Dedected'),
(256, 9, 1, 1512466658, 'Movement Dedected'),
(257, 9, 1, 1512466665, 'Movement Dedected'),
(258, 9, 1, 1512466666, 'Movement Dedected'),
(259, 9, 1, 1512466667, 'Movement Dedected'),
(260, 9, 1, 1512466668, 'Movement Dedected'),
(261, 9, 1, 1512466669, 'Movement Dedected'),
(262, 9, 1, 1512466670, 'Movement Dedected'),
(263, 9, 1, 1512466725, 'Movement Dedected'),
(264, 9, 1, 1512466727, 'Movement Dedected'),
(265, 9, 1, 1512466728, 'Movement Dedected'),
(266, 9, 1, 1512466730, 'Movement Dedected'),
(267, 9, 1, 1512467110, 'User idle for more than 2 Minutes'),
(268, 9, 1, 1512467183, 'Movement Dedected'),
(269, 9, 1, 1512467194, 'Movement Dedected'),
(270, 9, 1, 1512467195, 'Movement Dedected'),
(271, 9, 1, 1512467197, 'Movement Dedected'),
(272, 9, 1, 1512467198, 'Movement Dedected'),
(273, 9, 1, 1512467206, 'Movement Dedected'),
(274, 9, 1, 1512467207, 'Movement Dedected'),
(275, 9, 1, 1512467235, 'Movement Dedected'),
(276, 9, 1, 1512467236, 'Movement Dedected'),
(277, 9, 1, 1512467253, 'Movement Dedected'),
(278, 14, 1, 1512484327, 'User idle for more than 2 Minutes'),
(279, 16, 1, 1512485794, 'Movement Dedected'),
(280, 16, 1, 1512485795, 'Movement Dedected'),
(281, 16, 1, 1512485796, 'Movement Dedected'),
(282, 16, 1, 1512485797, 'Movement Dedected'),
(283, 16, 1, 1512485952, 'User idle for more than 2 Minutes'),
(284, 17, 1, 1512486854, 'Movement Dedected'),
(285, 17, 1, 1512486854, 'Movement Dedected'),
(286, 17, 1, 1512487447, 'User idle for more than 2 Minutes'),
(287, 17, 1, 1512487717, 'User idle for more than 2 Minutes'),
(288, 17, 1, 1512488508, 'Movement Dedected'),
(289, 17, 1, 1512488517, 'Movement Dedected'),
(290, 18, 1, 1512497185, 'Movement Detected'),
(291, 24, 1, 1512534886, 'Movement Detected'),
(292, 24, 1, 1512534892, 'Movement Detected'),
(293, 24, 1, 1512534905, 'Movement Detected'),
(294, 26, 1, 1512535298, 'Movement Detected'),
(295, 26, 1, 1512535304, 'Movement Detected'),
(296, 26, 1, 1512535319, 'Movement Detected'),
(297, 26, 1, 1512535325, 'Movement Detected'),
(298, 26, 1, 1512535331, 'Movement Detected'),
(299, 27, 1, 1512550651, 'Movement Detected'),
(300, 27, 1, 1512550657, 'Movement Detected'),
(301, 27, 1, 1512550663, 'Movement Detected'),
(302, 27, 1, 1512550678, 'Movement Detected'),
(303, 27, 1, 1512550684, 'Movement Detected'),
(304, 27, 1, 1512550699, 'Movement Detected'),
(305, 27, 1, 1512550705, 'Movement Detected'),
(306, 27, 1, 1512550713, 'Movement Detected'),
(307, 27, 1, 1512550719, 'Movement Detected'),
(308, 27, 1, 1512550729, 'Movement Detected'),
(309, 27, 1, 1512550750, 'Movement Detected'),
(310, 27, 1, 1512550764, 'Movement Detected'),
(311, 27, 1, 1512550770, 'Movement Detected'),
(312, 27, 1, 1512550776, 'Movement Detected'),
(313, 27, 1, 1512550804, 'Movement Detected'),
(314, 27, 1, 1512550858, 'User idle for more than 2 Minutes'),
(315, 27, 1, 1512550904, 'Movement Detected');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment_request`
--
ALTER TABLE `appointment_request`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_coment`
--
ALTER TABLE `class_coment`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `class_gid`
--
ALTER TABLE `class_gid`
  ADD PRIMARY KEY (`clgid`);

--
-- Indexes for table `live_class`
--
ALTER TABLE `live_class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `savsoftquiz_custom_form`
--
ALTER TABLE `savsoftquiz_custom_form`
  ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `savsoftquiz_setting`
--
ALTER TABLE `savsoftquiz_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `savsoft_add`
--
ALTER TABLE `savsoft_add`
  ADD PRIMARY KEY (`add_id`);

--
-- Indexes for table `savsoft_answers`
--
ALTER TABLE `savsoft_answers`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `savsoft_category`
--
ALTER TABLE `savsoft_category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `savsoft_group`
--
ALTER TABLE `savsoft_group`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `savsoft_level`
--
ALTER TABLE `savsoft_level`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `savsoft_notification`
--
ALTER TABLE `savsoft_notification`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `savsoft_options`
--
ALTER TABLE `savsoft_options`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `savsoft_payment`
--
ALTER TABLE `savsoft_payment`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `savsoft_qbank`
--
ALTER TABLE `savsoft_qbank`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `savsoft_qcl`
--
ALTER TABLE `savsoft_qcl`
  ADD PRIMARY KEY (`qcl_id`);

--
-- Indexes for table `savsoft_quiz`
--
ALTER TABLE `savsoft_quiz`
  ADD PRIMARY KEY (`quid`);

--
-- Indexes for table `savsoft_result`
--
ALTER TABLE `savsoft_result`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `savsoft_users`
--
ALTER TABLE `savsoft_users`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `uid` (`uid`),
  ADD KEY `email_2` (`email`);

--
-- Indexes for table `savsoft_users_custom`
--
ALTER TABLE `savsoft_users_custom`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `social_group`
--
ALTER TABLE `social_group`
  ADD PRIMARY KEY (`sg_id`);

--
-- Indexes for table `social_group_joined`
--
ALTER TABLE `social_group_joined`
  ADD PRIMARY KEY (`join_id`);

--
-- Indexes for table `study_material`
--
ALTER TABLE `study_material`
  ADD PRIMARY KEY (`stid`);

--
-- Indexes for table `warning_message`
--
ALTER TABLE `warning_message`
  ADD PRIMARY KEY (`wid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment_request`
--
ALTER TABLE `appointment_request`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `class_coment`
--
ALTER TABLE `class_coment`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `class_gid`
--
ALTER TABLE `class_gid`
  MODIFY `clgid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `live_class`
--
ALTER TABLE `live_class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `savsoftquiz_custom_form`
--
ALTER TABLE `savsoftquiz_custom_form`
  MODIFY `field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `savsoftquiz_setting`
--
ALTER TABLE `savsoftquiz_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `savsoft_add`
--
ALTER TABLE `savsoft_add`
  MODIFY `add_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `savsoft_answers`
--
ALTER TABLE `savsoft_answers`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `savsoft_category`
--
ALTER TABLE `savsoft_category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `savsoft_group`
--
ALTER TABLE `savsoft_group`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `savsoft_level`
--
ALTER TABLE `savsoft_level`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `savsoft_notification`
--
ALTER TABLE `savsoft_notification`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `savsoft_options`
--
ALTER TABLE `savsoft_options`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=564;

--
-- AUTO_INCREMENT for table `savsoft_payment`
--
ALTER TABLE `savsoft_payment`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `savsoft_qbank`
--
ALTER TABLE `savsoft_qbank`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `savsoft_qcl`
--
ALTER TABLE `savsoft_qcl`
  MODIFY `qcl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `savsoft_quiz`
--
ALTER TABLE `savsoft_quiz`
  MODIFY `quid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `savsoft_result`
--
ALTER TABLE `savsoft_result`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `savsoft_users`
--
ALTER TABLE `savsoft_users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `savsoft_users_custom`
--
ALTER TABLE `savsoft_users_custom`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `social_group`
--
ALTER TABLE `social_group`
  MODIFY `sg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_group_joined`
--
ALTER TABLE `social_group_joined`
  MODIFY `join_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `study_material`
--
ALTER TABLE `study_material`
  MODIFY `stid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `warning_message`
--
ALTER TABLE `warning_message`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
