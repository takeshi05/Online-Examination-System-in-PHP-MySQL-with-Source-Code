-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2022 at 06:57 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcqexamination`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminUser` varchar(100) NOT NULL,
  `adminPass` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminPass`) VALUES
(1, 'admin', 'D00F5D5217896FB7FD601412CB890830'),
(2, 'admin2', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ans`
--

CREATE TABLE `tbl_ans` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `rightAns` int(11) NOT NULL DEFAULT '0',
  `ans` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ans`
--

INSERT INTO `tbl_ans` (`id`, `quesNo`, `rightAns`, `ans`) VALUES
(127, 1, 0, '! (Exclamation)'),
(128, 1, 1, '$ (Dollar)'),
(129, 1, 0, '& (Ampersand)'),
(130, 1, 0, '# (Hash)'),
(131, 2, 0, '.xml'),
(132, 2, 0, '.html'),
(133, 2, 0, '.js'),
(134, 2, 1, '.php'),
(135, 3, 0, 'echo'),
(136, 3, 0, 'print'),
(137, 3, 0, 'write'),
(138, 3, 1, 'Both 1 and 2'),
(139, 4, 0, '+ (plus)'),
(140, 4, 0, '* (Asterisk)'),
(141, 4, 1, '. (dot)'),
(142, 4, 0, 'append()'),
(143, 5, 0, 'Create myFunction()'),
(144, 5, 0, 'New_function myFunction()'),
(145, 5, 1, 'function myFunction()'),
(146, 5, 0, 'None of the above'),
(147, 6, 0, 'php_info()'),
(148, 6, 1, 'phpinfo()'),
(149, 6, 0, 'info()'),
(150, 6, 0, 'None of the above'),
(151, 7, 0, 'Adobe Dreamweaver'),
(152, 7, 0, 'Atom'),
(153, 7, 0, 'Visual Studio Code'),
(154, 7, 1, 'All of the above'),
(155, 8, 0, '. (dot)'),
(156, 8, 1, '; (semicolon)'),
(157, 8, 0, '! (exclamation)'),
(158, 8, 0, '/ (slash)'),
(159, 9, 0, '\"CodeAstro\";'),
(160, 9, 0, 'write(\"CodeAstro\");'),
(161, 9, 1, 'echo \"CodeAstro\";'),
(162, 9, 0, 'printf(\"CodeAstro\");'),
(163, 10, 1, 'Standard PHP Library'),
(164, 10, 0, 'Simple PHP Library'),
(165, 10, 0, 'Simple PHP List'),
(166, 10, 0, 'Simple Programming Language');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ques`
--

CREATE TABLE `tbl_ques` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `ques` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ques`
--

INSERT INTO `tbl_ques` (`id`, `quesNo`, `ques`) VALUES
(34, 1, 'Variable name in PHP starts with'),
(35, 2, 'Which of the following is the default file extension of PHP?'),
(36, 3, 'Which of the following is used to display the output in PHP?'),
(37, 4, 'Which of the following is used for concatenation in PHP?'),
(38, 5, 'Which of the following is the correct way to create a function in PHP?'),
(39, 6, 'Which of the following function displays the information about PHP and its configuration?'),
(40, 7, 'Which of the following is/are the code editors in PHP?'),
(41, 8, 'Which of the following is used to end a statement in PHP?'),
(42, 9, 'Which of the following is the correct way to print \"CodeAstro\" in PHP?'),
(43, 10, 'What does SPL stands for in PHP?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `userName` varchar(32) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(32) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userId`, `name`, `userName`, `password`, `email`, `status`) VALUES
(26, 'Christine Moore', 'christine', '5f4dcc3b5aa765d61d8327deb882cf99', 'christine@mail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
