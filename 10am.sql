-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 27, 2016 at 08:43 AM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `10am`
--

-- --------------------------------------------------------

--
-- Table structure for table `draft`
--

CREATE TABLE IF NOT EXISTS `draft` (
  `draft_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `attach` varchar(200) NOT NULL,
  `msg` text NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `draft`
--

INSERT INTO `draft` (`draft_id`, `user_id`, `sub`, `attach`, `msg`, `date`) VALUES
(1, 'hema', 'hiiiiiii', 'Winter.jpg', 'hiiiiiiiiiiii', '0000-00-00'),
(2, 'hema', 'my pics', 'Sunset.jpg', 'this is my pics', '0000-00-00'),
(3, 'hema', 'my pics', 'Sunset.jpg', 'this is my pics', '0000-00-00'),
(4, 'hema', 'abhi', 'Water lilies.jpg', 'hhhhhhhhhhhhh', '2013-06-09'),
(5, 'abhishek', 'my resume ', '', 'this is my resume format..........', '2013-06-13');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `img_id` int(11) NOT NULL,
  `imagepath` varchar(200) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`img_id`, `imagepath`) VALUES
(1, 'Winter.jpg'),
(2, 'Winter.jpg'),
(3, 'Blue hills.jpg'),
(4, 'Winter.jpg'),
(5, ''),
(6, 'Winter.jpg'),
(7, 'Winter.jpg'),
(8, 'Winter.jpg'),
(9, 'Winter.jpg'),
(10, 'Sunset.jpg'),
(11, 'Water lilies.jpg'),
(12, 'Sunset.jpg'),
(13, 'Sunset.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `latestupd`
--

CREATE TABLE IF NOT EXISTS `latestupd` (
  `upd_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `latestupd`
--

INSERT INTO `latestupd` (`upd_id`, `title`, `content`, `image`, `date`) VALUES
(1, 'resul', 'mca result is declared.....', 'AboutPlugin.dll', '2013-06-13'),
(2, 'resul', 'mca result is declared.....', 'AboutPlugin.dll', '2013-06-13'),
(3, 'resue', 'resume......', 'Winter.jpg', '2013-06-13'),
(4, 'lkjlj', 'khkjhkh', '', '2013-06-13'),
(5, 'jjjjjjjjj', 'kkkkkkkkkkk', 'Water lilies.jpg', '2013-06-13');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE IF NOT EXISTS `mails` (
  `mail_id` int(11) NOT NULL,
  `rec_id` varchar(50) NOT NULL,
  `sen_id` varchar(50) NOT NULL,
  `sub` char(50) NOT NULL,
  `msg` text NOT NULL,
  `draft` text NOT NULL,
  `trash` text NOT NULL,
  `attachement` varchar(200) NOT NULL,
  `msgdate` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`mail_id`, `rec_id`, `sen_id`, `sub`, `msg`, `draft`, `trash`, `attachement`, `msgdate`) VALUES
(1, 'deepika', 'prabhat', 'hello', 'hello deepika', '', '', '', ''),
(2, 'prabhat', 'prabhat', 'hiiiiiiiii--msg failed', 'hiiiiiiiiiii', '', '', '', ''),
(3, 'prabhat', 'prabhat', 'hiiiiiiiii--msg failed', 'hiiiiiiiiiii', '', '', '', ''),
(4, 'deepika', 'prabhat', 'welcome', 'welcom........', '', '', '', ''),
(5, 'deepika', 'prabhat', 'welcome', 'welcom........', '', '', '', ''),
(6, 'deepika', 'prabhat', 'welcome', 'welcom........', '', '', '', ''),
(7, 'prabhat', '', 'my resume', '', 'dkljfldjlf', '', '', ''),
(8, 'deepika', 'prabhat', 'ldfjld', 'dkfjldj', '', '', '', '2013-03-03 10:57:47'),
(9, 'deepika', 'prabhat', 'ldfjld', 'dkfjldj', '', '', '', '2013-03-03 11:00:13'),
(10, 'rexx', 'prabhat', 'hello', 'hello', '', '', '', '2013-03-03 11:01:22'),
(11, 'rexx', 'prabhat', 'welll', 'welcome.rexx........', '', '', '', '2013-03-03 11:01:34');

-- --------------------------------------------------------

--
-- Table structure for table `trash`
--

CREATE TABLE IF NOT EXISTS `trash` (
  `trash_id` int(11) NOT NULL,
  `rec_id` varchar(50) NOT NULL,
  `sen_id` varchar(50) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE IF NOT EXISTS `userinfo` (
  `user_jd` int(11) NOT NULL,
  `user_name` char(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `hobbies` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`user_jd`, `user_name`, `password`, `mobile`, `email`, `gender`, `hobbies`, `dob`, `image`) VALUES
(1, 'hema', 'hema123', 222222, '', 'f', 'reading', '1902-03-04', 'Blue hills.jpg'),
(2, 'mehak', 'mehak', 11111, 'mehak@gmail.com', 'f', 'cricket,football', '1917-11-16', ''),
(3, 'sanjeev', 'sanjeev', 55578857878, 'sanjeev@yahoo.com', 'm', 'cricket,football', '0000-00-00', ''),
(4, 'dfdfdfd', 'fdf', 0, 'dfdfd@gmail.lcom', 'm', 'cricket', '0000-00-00', ''),
(5, 'satish@gmail.com', 'satish', 45444, 'sanjeev@yahoo.com', 'm', 'cricket,football', '1902-04-04', 'Winter.jpg'),
(6, 'xyz', 'xyz111', 444444, 'xyz@gmail.com', 'm', 'cricket,football', '1901-04-04', 'Blue hills.jpg'),
(7, 'ravi', 'ravi111', 44444444, 'ravi@gmail.com', 'm', 'cricket,football', '1901-03-03', 'Winter.jpg'),
(8, 'abhishek', 'abhi', 888888888, 'abhishek@gmail.com', 'm', 'cricket,football', '1915-10-16', 'Sunset.jpg'),
(9, 'tanmay', '1234', 98196111, 'tanmaysawaji44@gmail.com', 'm', 'cricket', '1996-01-01', ''),
(10, 'potty', '123456', 6969696969, 'qwerty@gmail.com', 'f', 'football', '1969-06-09', ''),
(11, 'sainag', 'sainag', 9004323609, 'shettysainag@gmail.com', 'm', 'cricket,reading', '1901-02-02', '');

-- --------------------------------------------------------

--
-- Table structure for table `usermail`
--

CREATE TABLE IF NOT EXISTS `usermail` (
  `mail_id` int(11) NOT NULL,
  `rec_id` varchar(30) NOT NULL,
  `sen_id` varchar(30) NOT NULL,
  `sub` char(30) NOT NULL,
  `msg` text NOT NULL,
  `attachement` text NOT NULL,
  `recDT` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usermail`
--

INSERT INTO `usermail` (`mail_id`, `rec_id`, `sen_id`, `sub`, `msg`, `attachement`, `recDT`) VALUES
(1, 'prabhat', 'ravi', 'hello', 'hello prabhat..........', '', '2013-03-05'),
(2, 'deep', 'ravi', 'hello', 'hello deep hows you?......', '', '2013-03-05'),
(3, 'ravi', 'ravi', 'welcome--msg failed', 'dljfldjfldj', '', '2013-03-05'),
(4, 'prabhat', 'ravi', 'hiiiii', 'hii prabhat.........', '', '2013-03-06'),
(5, 'prabhat', 'ravi', 'docs', 'project docs.............', '', '2013-03-06'),
(7, 'ravi', 'hema', 'hello', 'hello ravi', '', '2013-06-09'),
(8, 'tanmaysawaji44@gmail.com', 'abhishek', 'qwe', 'tayhggng', 'client.java', '2016-03-25'),
(9, 'tanmaysawaji44@gmail.com', 'abhishek', 'oye', 'qwert', '', '2016-03-25'),
(10, 'tanmaysawaji44@gmail.com', 'abhishek', 'le', 'rrrr', 'server.java', '2016-03-25'),
(11, 'tanmaysawaji44@gmail.com', 'abhishek', 'dasdada', 'hhhjhj', 'restaurant.rar', '2016-03-25'),
(12, 'abhishek', 'tanmaysawaji44@gmail.com', 'lam', 'hi', 'xampp-linux-x64-5.5.28-0-installer.run', '2016-03-26'),
(13, 'abhishek', 'tanmaysawaji44@gmail.com', 'lampp', 'hello', 'xampp-linux-x64-5.5.28-0-installer.run', '2016-03-26'),
(14, 'abhishek', 'tanmaysawaji44@gmail.com', 'sublime', 'yo nigga', 'sublime-text_build-3103_amd64.deb', '2016-03-26'),
(15, 'abhishek', 'tanmaysawaji44@gmail.com', 'bootstrap', 'o mama', 'Bootstrap.tar.gz', '2016-03-26'),
(16, 'abhishek', 'tanmaysawaji44@gmail.com', 'nigga rules', 'bfjacjassbcljas c', 'index.html', '2016-03-26'),
(17, 'abhishek', 'tanmaysawaji44@gmail.com', 'niggas', 'Black Nigga', 'command', '2016-03-26'),
(18, 'abhishek', 'tanmaysawaji44@gmail.com', 'sainiggaaa', 'heyy', 'demo.php', '2016-03-26'),
(19, 'abhishek', 'tanmaysawaji44@gmail.com', 'DD', 'yo nigga', 'collection.php', '2016-03-26'),
(20, 'abhishek', 'tanmaysawaji44@gmail.com', 'true nigga part 2', 'fhhsdagfsdfsdjkfsdkf', 'check.php', '2016-03-26'),
(21, 'abhishek', 'tanmaysawaji44@gmail.com', 'hhg', 'hgfygf', 'header.php', '2016-03-26'),
(22, 'abhishek', 'tanmaysawaji44@gmail.com', 'bvccfbx', 'vgfg', 'edit-account.php', '2016-03-26'),
(23, 'tanmaysawaji44@gmail.com', 'abhishek', 'hi', '<!DOCTYPE html>\r\n<html lang="en">\r\n<body>\r\n\r\n<?php include "header.php";?>\r\n<hr>\r\n<hr>\r\n<hr>\r\n<div class="container">\r\n<div class="jumbotron">\r\n<form class="form-horizontal" role="form" method="post" action="" >\r\n<div class="form-group">\r\n<div class="checkbox">\r\n  <label><input type="checkbox" name="M" value="Mumbai">Mumbai</label>\r\n</div></div>\r\n<div class="form-group">\r\n<div class="checkbox">\r\n  <label><input type="checkbox" name="D" value="Delhi">Delhi</label>\r\n</div></div>\r\n<div class="form-group">\r\n<div class="checkbox">\r\n  <label><input type="checkbox" name="K" value="Kolkata">Kolkata</label>\r\n</div></div>\r\n<div class="form-group">\r\n<div class="checkbox">\r\n  <label><input type="checkbox" name="C" value="Chennai">Chennai</label>\r\n</div></div>\r\n <div class="form-group">\r\n    <label class="control-label col-sm-4" for="dob">Date:</label>\r\n    <div class="col-sm-8"> \r\n      <input type="date"  class="form-control" name="dob" placeholder="mm/dd/yyyy" >\r\n    </div>\r\n  </div>\r\n<div class="form-group"> \r\n    <div class="col-sm-offset-2 col-sm-10">\r\n      <button type="submit" class="btn btn-default">Submit</button>\r\n    </div>\r\n  </div>\r\n</form>\r\n</div></div>\r\n</body>\r\n</html>', '', '2016-03-26'),
(24, 'tanmaysawaji44@gmail.com', 'abhishek', 'fgdfgss', 'bcfdfdfff', 'room.php', '2016-03-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `draft`
--
ALTER TABLE `draft`
  ADD PRIMARY KEY (`draft_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `latestupd`
--
ALTER TABLE `latestupd`
  ADD PRIMARY KEY (`upd_id`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`mail_id`);

--
-- Indexes for table `trash`
--
ALTER TABLE `trash`
  ADD PRIMARY KEY (`trash_id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`user_jd`),
  ADD UNIQUE KEY `user_name` (`user_name`,`mobile`,`email`),
  ADD KEY `gender` (`gender`,`dob`);

--
-- Indexes for table `usermail`
--
ALTER TABLE `usermail`
  ADD PRIMARY KEY (`mail_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `draft`
--
ALTER TABLE `draft`
  MODIFY `draft_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `latestupd`
--
ALTER TABLE `latestupd`
  MODIFY `upd_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `trash`
--
ALTER TABLE `trash`
  MODIFY `trash_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `user_jd` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `usermail`
--
ALTER TABLE `usermail`
  MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
