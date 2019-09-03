-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2016 at 10:27 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment_queue`
--

CREATE TABLE `comment_queue` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `copyright`
--

CREATE TABLE `copyright` (
  `id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `copyright`
--

INSERT INTO `copyright` (`id`, `text`) VALUES
(1, 'Coder Knight siam_riaz');

-- --------------------------------------------------------

--
-- Table structure for table `dbl_category`
--

CREATE TABLE `dbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dbl_category`
--

INSERT INTO `dbl_category` (`id`, `name`) VALUES
(1, 'C'),
(3, 'Java'),
(4, 'PHP'),
(5, 'OOP'),
(7, 'HTML'),
(8, 'CSS'),
(9, 'news');

-- --------------------------------------------------------

--
-- Table structure for table `dbl_comment`
--

CREATE TABLE `dbl_comment` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dbl_comment`
--

INSERT INTO `dbl_comment` (`id`, `postid`, `name`, `tag`, `email`, `comment`, `date`) VALUES
(1, 18, 'fahad', 'shohan', 'fahad@gmail.com', 'A new game called Odd, Even or Cheating is currently (OEC) is now one of the most popular games in the world. This game was created when some friends had no internet connection, no cellphone, no computer, and pretty much nothing to do. The game is so popular tha', '2016-11-05 19:20:37'),
(2, 18, 'sakib', 'fahad', 'sakib@gmail.com', 'A new game called Odd, Even or Cheating is currently (OEC) is now one of the most popular games in the world. This game was created when some friends had no internet connection, no cellphone, no computer, and pretty much nothing to do. The game is so popular tha', '2016-11-05 19:20:37'),
(3, 18, 'rakib', 'dipto', 'rakib@gmil.com', 'loating point numbers can be very long to show. In these cases, it is convenient to use the scientific notation.\r\n\r\nYou must write a program that, given a floating point number, shows this number in scientific notation: always show the mantissa sign; always show the mantissa with 4 decimal places; use the character ''E'' between the mantissa and the exponent; always show the exponent sign; and show the exponent with at least 2 digi', '2016-11-05 19:31:01'),
(4, 18, 'dipto', 'rakib', 'dipto@gmail.com', 'loating point numbers can be very long to show. In these cases, it is convenient to use the scientific notation.\r\n\r\nYou must write a program that, given a floating point number, shows this number in scientific notation: always show the mantissa sign; always show the mantissa with 4 decimal places; use the character ''E'' between the mantissa and the exponent; always show the exponent sign; and show the exponent with at least 2 digi', '2016-11-05 19:31:01'),
(5, 18, 'fahad', 'ahmad', 'fahadahmad@gmail.com', 'Victory is waiting for us', '2016-11-05 20:19:03'),
(6, 17, 'somossa', 'somadhan', 'somadhan@yahoo.com', 'ajaira soossai porle ki korfa ucit', '2016-11-05 20:33:15');

-- --------------------------------------------------------

--
-- Table structure for table `dbl_contact`
--

CREATE TABLE `dbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dbl_contact`
--

INSERT INTO `dbl_contact` (`id`, `firstname`, `lastname`, `email`, `message`, `date`, `status`) VALUES
(1, 'fahad', 'ahmad', 'hiddenlegendary1@gmail.cdom', 'congratulations your contact form is working', '2016-10-26 12:47:57', 1),
(2, 'yasir', 'arafat', 'yasirarafat@gmail.com', 'à¦œà¦¾à¦­à¦¾ à¦¨à¦¿à§Ÿà§‡ à¦•à¦¿à¦›à§ à¦²à¦¿à¦–à§‡à¦¨', '2016-10-26 12:47:57', 1),
(3, 'shakib', 'hossain', 'hossainshakib@gmail.com', 'à¦­à¦¾à¦‡ à¦•à§‡à¦®à¦¨ à¦†à¦›à§‡à¦¨ ?', '2016-10-26 18:49:31', 1),
(4, 'Muhammad', 'kaoser', 'kaoser@gmail.com', 'à¦•à§‡à¦®à¦¨ à¦†à¦› ?', '2016-10-27 05:00:12', 1),
(5, 'kaosarul', 'Islam', 'kaoser.cuet@gmail.com', 'à¦«à¦¾à¦¹à¦¾à¦¦ à¦†à¦²à¦® à¦…à¦¬à¦¸à§à¦¥à¦¾ ?', '2016-10-27 05:02:56', 0),
(6, 'à¦•à¦¾à¦“à¦›à¦¾à¦°à§à¦²', 'à¦‡à¦¸à¦²à¦¾à¦®', 'kaowser.cuet@gmail.com', 'à¦¤à§‹à¦®à¦¾à¦° à¦ªà§à¦°à§‹à¦œà§‡à¦•à§à¦Ÿ à¦…à¦¨à§‡à¦• à¦­à¦¾à¦²à§‹ à¦²à¦¾à¦—à¦›à§‡ à¥¤', '2016-10-27 05:25:26', 0),
(7, 'à¦¸à¦¿à§Ÿà¦¾à¦®', 'à¦°à¦¿à§Ÿà¦¾à¦œ', 'siamriaz065@gmail.com', 'à¦¸à¦¿à§Ÿà¦¾à¦® à¦°à¦¿à§Ÿà¦¾à¦œ', '2016-10-27 05:29:01', 1),
(8, 'r', 'r', 'rr@yahoo.com', 'hlw', '2016-10-27 14:57:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbl_post`
--

CREATE TABLE `dbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dbl_post`
--

INSERT INTO `dbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `email`, `tags`, `date`) VALUES
(4, 7, 'Links', '<p>WordPress has a built-in link manager system located in the Links SubPanel. Links can be created, categorized, and displayed in various ways on your web site. The links donï¿½t have to be to an external web site; they can also be internal links to your own web site. To add a new link, navigate to Links ? Add New SubPanel in your Admin Menu. Start by filling in the namehttp://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/WordPress has a built-in link manager system located in the Links SubPanel. Links can be created, categorized, and displayed in various ways on your web site. The links donï¿½t have to be to an external web site; they can also be internal links to your own web site. To add a new link, navigate to Links ? Add New SubPanel in your Admin Menu. Start by filling in the namehttp://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/WordPress has a built-in link manager system located in the Links SubPanel. Links can be created, categorized, and displayed in various ways on your web site. The links donï¿½t have to be to an external web site; they can also be internal links to your own web site. To add a new link, navigate to Links ? Add New SubPanel in your Admin Menu. Start by filling in the namehttp://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/WordPress has a built-in link manager system located in the Links SubPanel. Links can be created, categorized, and displayed in various ways on your web site. The links donï¿½t have to be to an external web site; they can also be internal links to your own web site. To add a new link, navigate to Links ? Add New SubPanel in your Admin Menu. Start by filling in the namehttp://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/WordPress has a built-in link manager system located in the Links SubPanel. Links can be created, categorized, and displayed in various ways on your web site. The links donï¿½t have to be to an external web site; they can also be internal links to your own web site. To add a new link, navigate to Links ? Add New SubPanel in your Admin Menu. Start by filling in the namehttp://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/WordPress has a built-in link manager system located in the Links SubPanel. Links can be created, categorized, and displayed in various ways on your web site. The links donï¿½t have to be to an external web site; they can also be internal links to your own web site. To add a new link, navigate to Links ? Add New SubPanel in your Admin Menu. Start by filling in the namehttp://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/WordPress has a built-in link manager system located in the Links SubPanel. Links can be created, categorized, and displayed in various ways on your web site. The links donï¿½t have to be to an external web site; they can also be internal links to your own web site. To add a new link, navigate to Links ? Add New SubPanel in your Admin Menu. Start by filling in the namehttp://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/WordPress has a built-in link manager system located in the Links SubPanel. Links can be created, categorized, and displayed in various ways on your web site. The links donï¿½t have to be to an external web site; they can also be internal links to your own web site. To add a new link, navigate to Links ? Add New SubPanel in your Admin Menu. Start by filling in the namehttp://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/WordPress has a built-in link manager system located in the Links SubPanel. Links can be created, categorized, and displayed in various ways on your web site. The links donï¿½t have to be to an external web site; they can also be internal links to your own web site. To add a new link, navigate to Links ? Add New SubPanel in your Admin Menu. Start by filling in the namehttp://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/WordPress has a built-in link manager system located in the Links SubPanel. Links can be created, categorized, and displayed in various ways on your web site. The links donï¿½t have to be to an external web site; they can also be internal links to your own web site. To add a new link, navigate to Links ? Add New SubPanel in your Admin Menu. Start by filling in the namehttp://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/WordPress has a built-in link manager system located in the Links SubPanel. Links can be created, categorized, and displayed in various ways on your web site. The links donï¿½t have to be to an external web site; they can also be internal links to your own web site. To add a new link, navigate to Links ? Add New SubPanel in your Admin Menu. Start by filling in the namehttp://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/WordPress has a built-in link manager system located in the Links SubPanel. Links can be created, categorized, and displayed in various ways on your web site. The links donï¿½t have to be to an external web site; they can also be internal links to your own web site. To add a new link, navigate to Links ? Add New SubPanel in your Admin Menu. Start by filling in the namehttp://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/WordPress has a built-in link manager system located in the Links SubPanel. Links can be created, categorized, and displayed in various ways on your web site. The links donï¿½t have to be to an external web site; they can also be internal links to your own web site. To add a new link, navigate to Links ? Add New SubPanel in your Admin Menu. Start by filling in the namehttp://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/WordPress has a built-in link manager system located in the Links SubPanel. Links can be created, categorized, and displayed in various ways on your web site. The links donï¿½t have to be to an external web site; they can also be internal links to your own web site. To add a new link, navigate to Links ? Add New SubPanel in your Admin Menu. Start by filling in the namehttp://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/WordPress has a built-in link manager system located in the Links SubPanel. Links can be created, categorized, and displayed in various ways on your web site. The links donï¿½t have to be to an external web site; they can also be internal links to your own web site. To add a new link, navigate to Links ? Add New SubPanel in your Admin Menu. Start by filling in the namehttp://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/WordPress has a built-in link manager system located in the Links SubPanel. Links can be created, categorized, and displayed in various ways on your web site. The links donï¿½t have to be to an external web site; they can also be internal links to your own web site. To add a new link, navigate to Links ? Add New SubPanel in your Admin Menu. Start by filling in the namehttp://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/WordPress has a built-in link manager system located in the Links SubPanel. Links can be created, categorized, and displayed in various ways on your web site. The links donï¿½t have to be to an external web site; they can also be internal links to your own web site. To add a new link, navigate to Links ? Add New SubPanel in your Admin Menu. Start by filling in the namehttp://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/WordPress has a built-in link manager system located in the Links SubPanel. Links can be created, categorized, and displayed in various ways on your web site. The links donï¿½t have to be to an external web site; they can also be internal links to your own web site. To add a new link, navigate to Links ? Add New SubPanel in your Admin Menu. Start by filling in the namehttp://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/WordPress has a built-in link manager system located in the Links SubPanel. Links can be created, categorized, and displayed in various ways on your web site. The links donï¿½t have to be to an external web site; they can also be internal links to your own web site. To add a new link, navigate to Links ? Add New SubPanel in your Admin Menu. Start by filling in the namehttp://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/WordPress has a built-in link manager system located in the Links SubPanel. Links can be created, categorized, and displayed in various ways on your web site. The links donï¿½t have to be to an external web site; they can also be internal links to your own web site. To add a new link, navigate to Links ? Add New SubPanel in your Admin Menu. Start by filling in the namehttp://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/http://localhost:1234/CoderKnight/</p>', 'upload/8424d99ccd.png', 'display', '', 'WordPress', '2016-10-17 12:42:11'),
(7, 0, 'About java programming', '<p>java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.java is interesting programming language.</p>', 'upload/26ec61586d.jpg', 'fahad', '', '', '2016-10-21 18:47:49'),
(8, 4, 'à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿', '<p>à¦•à§‡à¦¨à§‹ à¦†à¦®à¦¿ à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿ à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡à¦›à¦¿ à¦¤à¦¾ à¦à¦•à¦Ÿà¦¿ à¦†à¦§à§à¦¯à¦¾à¦¤à§à¦®à¦¿à¦• à¦¬à¦¿à¦¸à§Ÿ à¥¤à¦•à§‡à¦¨à§‹ à¦†à¦®à¦¿ à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿ à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡à¦›à¦¿ à¦¤à¦¾ à¦à¦•à¦Ÿà¦¿ à¦†à¦§à§à¦¯à¦¾à¦¤à§à¦®à¦¿à¦• à¦¬à¦¿à¦¸à§Ÿ à¥¤à¦•à§‡à¦¨à§‹ à¦†à¦®à¦¿ à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿ à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡à¦›à¦¿ à¦¤à¦¾ à¦à¦•à¦Ÿà¦¿ à¦†à¦§à§à¦¯à¦¾à¦¤à§à¦®à¦¿à¦• à¦¬à¦¿à¦¸à§Ÿ à¥¤à¦•à§‡à¦¨à§‹ à¦†à¦®à¦¿ à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿ à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡à¦›à¦¿ à¦¤à¦¾ à¦à¦•à¦Ÿà¦¿ à¦†à¦§à§à¦¯à¦¾à¦¤à§à¦®à¦¿à¦• à¦¬à¦¿à¦¸à§Ÿ à¥¤à¦•à§‡à¦¨à§‹ à¦†à¦®à¦¿ à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿ à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡à¦›à¦¿ à¦¤à¦¾ à¦à¦•à¦Ÿà¦¿ à¦†à¦§à§à¦¯à¦¾à¦¤à§à¦®à¦¿à¦• à¦¬à¦¿à¦¸à§Ÿ à¥¤à¦•à§‡à¦¨à§‹ à¦†à¦®à¦¿ à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿ à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡à¦›à¦¿ à¦¤à¦¾ à¦à¦•à¦Ÿà¦¿ à¦†à¦§à§à¦¯à¦¾à¦¤à§à¦®à¦¿à¦• à¦¬à¦¿à¦¸à§Ÿ à¥¤à¦•à§‡à¦¨à§‹ à¦†à¦®à¦¿ à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿ à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡à¦›à¦¿ à¦¤à¦¾ à¦à¦•à¦Ÿà¦¿ à¦†à¦§à§à¦¯à¦¾à¦¤à§à¦®à¦¿à¦• à¦¬à¦¿à¦¸à§Ÿ à¥¤à¦•à§‡à¦¨à§‹ à¦†à¦®à¦¿ à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿ à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡à¦›à¦¿ à¦¤à¦¾ à¦à¦•à¦Ÿà¦¿ à¦†à¦§à§à¦¯à¦¾à¦¤à§à¦®à¦¿à¦• à¦¬à¦¿à¦¸à§Ÿ à¥¤à¦•à§‡à¦¨à§‹ à¦†à¦®à¦¿ à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿ à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡à¦›à¦¿ à¦¤à¦¾ à¦à¦•à¦Ÿà¦¿ à¦†à¦§à§à¦¯à¦¾à¦¤à§à¦®à¦¿à¦• à¦¬à¦¿à¦¸à§Ÿ à¥¤à¦•à§‡à¦¨à§‹ à¦†à¦®à¦¿ à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿ à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡à¦›à¦¿ à¦¤à¦¾ à¦à¦•à¦Ÿà¦¿ à¦†à¦§à§à¦¯à¦¾à¦¤à§à¦®à¦¿à¦• à¦¬à¦¿à¦¸à§Ÿ à¥¤à¦•à§‡à¦¨à§‹ à¦†à¦®à¦¿ à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿ à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡à¦›à¦¿ à¦¤à¦¾ à¦à¦•à¦Ÿà¦¿ à¦†à¦§à§à¦¯à¦¾à¦¤à§à¦®à¦¿à¦• à¦¬à¦¿à¦¸à§Ÿ à¥¤à¦•à§‡à¦¨à§‹ à¦†à¦®à¦¿ à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿ à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡à¦›à¦¿ à¦¤à¦¾ à¦à¦•à¦Ÿà¦¿ à¦†à¦§à§à¦¯à¦¾à¦¤à§à¦®à¦¿à¦• à¦¬à¦¿à¦¸à§Ÿ à¥¤à¦•à§‡à¦¨à§‹ à¦†à¦®à¦¿ à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿ à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡à¦›à¦¿ à¦¤à¦¾ à¦à¦•à¦Ÿà¦¿ à¦†à¦§à§à¦¯à¦¾à¦¤à§à¦®à¦¿à¦• à¦¬à¦¿à¦¸à§Ÿ à¥¤à¦•à§‡à¦¨à§‹ à¦†à¦®à¦¿ à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿ à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡à¦›à¦¿ à¦¤à¦¾ à¦à¦•à¦Ÿà¦¿ à¦†à¦§à§à¦¯à¦¾à¦¤à§à¦®à¦¿à¦• à¦¬à¦¿à¦¸à§Ÿ à¥¤à¦•à§‡à¦¨à§‹ à¦†à¦®à¦¿ à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿ à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡à¦›à¦¿ à¦¤à¦¾ à¦à¦•à¦Ÿà¦¿ à¦†à¦§à§à¦¯à¦¾à¦¤à§à¦®à¦¿à¦• à¦¬à¦¿à¦¸à§Ÿ à¥¤à¦•à§‡à¦¨à§‹ à¦†à¦®à¦¿ à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿ à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡à¦›à¦¿ à¦¤à¦¾ à¦à¦•à¦Ÿà¦¿ à¦†à¦§à§à¦¯à¦¾à¦¤à§à¦®à¦¿à¦• à¦¬à¦¿à¦¸à§Ÿ à¥¤à¦•à§‡à¦¨à§‹ à¦†à¦®à¦¿ à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿ à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡à¦›à¦¿ à¦¤à¦¾ à¦à¦•à¦Ÿà¦¿ à¦†à¦§à§à¦¯à¦¾à¦¤à§à¦®à¦¿à¦• à¦¬à¦¿à¦¸à§Ÿ à¥¤à¦•à§‡à¦¨à§‹ à¦†à¦®à¦¿ à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿ à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡à¦›à¦¿ à¦¤à¦¾ à¦à¦•à¦Ÿà¦¿ à¦†à¦§à§à¦¯à¦¾à¦¤à§à¦®à¦¿à¦• à¦¬à¦¿à¦¸à§Ÿ à¥¤à¦•à§‡à¦¨à§‹ à¦†à¦®à¦¿ à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿ à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡à¦›à¦¿ à¦¤à¦¾ à¦à¦•à¦Ÿà¦¿ à¦†à¦§à§à¦¯à¦¾à¦¤à§à¦®à¦¿à¦• à¦¬à¦¿à¦¸à§Ÿ à¥¤à¦•à§‡à¦¨à§‹ à¦†à¦®à¦¿ à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿ à¦ªà¦›à¦¨à§à¦¦ à¦•à¦°à§‡à¦›à¦¿ à¦¤à¦¾ à¦à¦•à¦Ÿà¦¿ à¦†à¦§à§à¦¯à¦¾à¦¤à§à¦®à¦¿à¦• à¦¬à¦¿à¦¸à§Ÿ à¥¤</p>', 'upload/8aa6889ad6.gif', 'à¦«à¦¾à¦¹à¦¾à¦¦', '', '', '2016-10-21 19:10:12'),
(9, 0, 'THIS IS OOP', '<p>THIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOPTHIS IS OOP</p>', 'upload/add941cf61.png', 'THIS ', '', 'OOP', '2016-10-21 20:18:30'),
(17, 4, 'Code Writting', 'à¦¸à¦•à¦² www à¦¡à¦•à§à¦®à§‡à¦¨à§à¦Ÿà§‡à¦° à¦®à§à¦² à¦¡à¦¾à¦‡à¦°à§‡à¦•à§à¦Ÿà¦°à¦¿ à¦¹à¦šà§à¦›à§‡ â€œC:\nmpphtdocsâ€(à¦¤à¦¬à§‡ à¦¯à¦¦à¦¿ à¦…à¦¨à§à¦¯ à¦¡à§à¦°à¦¾à¦‡à¦­à§‡ à¦‡à¦¨à¦¸à§à¦Ÿà¦² à¦¦à¦¿à§Ÿà§‡ à¦¥à¦¾à¦•à§‡à¦¨ à¦¯à§‡à¦®à¦¨:D drive à¦¤à¦–à¦¨ à¦à¦Ÿà¦¾ à¦¹à¦¬à§‡ â€œD:\nmpphtdocsâ€). à¦à¦–à¦¨ à¦¯à¦¦à¦¿ à¦à¦‡ à¦¡à¦¾à¦‡à¦°à§‡à¦•à§à¦Ÿà¦°à¦¿à¦¤à§‡ â€œmytest.phpâ€ à¦¨à¦¾à¦®à§‡ à¦•à§‹à¦¨ à¦«à¦¾à¦‡à¦² à¦°à¦¾à¦–à§‡à¦¨ à¦¤à¦¾à¦¹à¦²à§‡ à¦†à¦ªà¦¨à¦¿ à¦à¦Ÿà¦¾à¦¤à§‡ à¦…à§à¦¯à¦¾à¦•à¦¸à§‡à¦¸ à¦ªà§‡à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨ à¦à¦­à¦¾à¦¬à§‡-à¦¬à§à¦°à¦¾à¦‰à¦œà¦¾à¦°à§‡à¦° à¦à¦¡à§à¦°à§‡à¦¸à¦¬à¦¾à¦°à§‡ à¦²à¦¿à¦–à§à¦¨ http://localhost/mytest.php\r\n\r\nà¦†à¦šà§à¦›à¦¾ à¦à¦¬à¦¾à¦° à¦•à§‹à¦¡ à¦²à§‡à¦–à¦¾ à¦¶à§à¦°à§ à¦•à¦°à¦¿ à¦šà¦²à§à¦¨,à¦¤à¦¾à¦° à¦†à¦—à§‡ à¦à¦•à¦Ÿà¦¾ à¦•à¦¥à¦¾ à¦•à§‹à¦¡ à¦•à§‹à¦¥à¦¾à§Ÿ à¦²à¦¿à¦–à¦¬à§‡à¦¨?à¦¨à§‹à¦Ÿà¦ªà§à¦¯à¦¾à¦¡à§‡?à¦²à¦¿à¦–à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨ à¦¤à¦¬à§‡ à¦ªà¦¿à¦à¦‡à¦šà¦ªà¦¿ à¦•à§‹à¦¡à¦²à§‡à¦–à¦¾à¦° à¦œà¦¨à§à¦¯ à¦•à¦¿à¦›à§ à¦¸à§à¦ªà§‡à¦¶à¦¾à¦²à¦¾à¦‡à¦œà¦¡ à¦¸à¦«à¦Ÿà¦“à§Ÿà¦¾à¦° à¦†à¦›à§‡ à¦¯à§‡à¦®à¦¨: Net Beans, Dreamweaver à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿ à¦à¦—à§à¦²à§‹à¦¤à§‡ à¦•à§‹à¦¡ à¦²à¦¿à¦–à¦²à§‡ à¦…à¦¨à§‡à¦• à¦¸à§à¦¬à¦¿à¦§à¦¾ à¦ªà¦¾à¦¬à§‡à¦¨à¥¤à¦à¦—à§à¦²à§‹ à¦†à¦° à¦¬à¦²à¦²à¦¾à¦® à¦¨à¦¾ à¦²à¦¿à¦–à¦¤à§‡ à¦§à¦°à¦²à§‡à¦‡ à¦Ÿà§‡à¦° à¦ªà¦¾à¦¬à§‡à¦¨,à¦¯à§‡ à¦¸à§à¦¬à¦¿à¦§à¦¾à¦—à§à¦²à§‹ à¦¨à§‹à¦Ÿà¦ªà§à¦¯à¦¾à¦¡à§‡ à¦ªà¦¾à¦¬à§‡à¦¨ à¦¨à¦¾à¥¤à¦à¦—à§à¦²à§‹à¦•à§‡ à¦¬à¦²à§‡ IDE (Integrated Development  Environment).à¦†à¦ªà¦¨à¦¿ à¦¯à§‡à¦Ÿà¦¾à¦¤à§‡ à¦¸à¦¾à¦šà§à¦›à§à¦¯à¦¨à§à¦¦à¦¬à§‹à¦§ à¦•à¦°à§‡à¦¨ à¦¸à§‡à¦Ÿà¦¾ à¦¬à§à¦¯à¦¾à¦¬à¦¹à¦¾à¦° à¦•à¦°à§à¦¨à¥¤', 'upload/1aaecac600.gif', 'fahad', 'fahad@gmail.com', 'kaoke na', '2016-11-05 15:28:19'),
(18, 9, 'à¦“à§Ÿà§‡à¦¬à¦•à§‹à¦šà¦¬à¦¿à¦¡à¦¿ à¦Ÿà¦¿à¦ªà¦¸à¦—à§à¦°à§', 'à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦¸à¦®à§Ÿ à¦†à¦®à¦°à¦¾ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦«à§‡à¦¸à¦¬à§à¦• à¦ªà§‡à¦œà§‡ à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à¦¿à¦‚, à¦•à§à¦¯à¦¾à¦°à¦¿à§Ÿà¦¾à¦° à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿ à¦¬à¦¿à¦·à§Ÿà§‡ à¦Ÿà¦¿à¦ªà¦¸ à¦¦à¦¿à§Ÿà§‡ à¦¥à¦¾à¦•à¦¿à¥¤ à¦¸à§‡à¦¸à¦¬ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦² à¦«à§‡à¦¸à¦¬à§à¦•à§‡ à¦®à¦¸à§à¦¤ à¦¸à¦¾à¦°à¦¾ à¦ªà§‡à§Ÿà§‡à¦›à§‡à¥¤ à¦…à¦¨à§‡à¦•à§‡ à¦…à¦¨à§à¦°à§‹à¦§ à¦•à¦°à§‡à¦›à§‡à¦¨ à¦¸à§‡à¦—à§à¦²à¦¿ à¦¯à§‡à¦¨ à¦¸à¦¬ à¦à¦•à¦¤à§à¦° à¦•à¦°à§‡ à¦“à§Ÿà§‡à¦¬à¦•à§‹à¦šà¦¬à¦¿à¦¡à¦¿à¦¤à§‡ à¦¦à§‡à¦‡à¥¤ à¦¤à¦¾à¦‡ à¦†à¦®à¦°à¦¾ à¦¸à§‡à¦‡ à¦†à¦°à§à¦Ÿà¦¿à¦•à¦²à¦—à§à¦²à¦¿ à¦à¦–à¦¾à¦¨à§‡ à¦œà¦®à¦¾ à¦•à¦°à§‡ à¦¦à¦¿à¦²à¦¾à¦®, à¦à¦®à¦¨à¦•à¦¿ à¦à¦–à¦¾à¦¨à§‡ à¦†à¦°à§‹ à¦¨à¦¤à§à¦¨ à¦¨à¦¤à§à¦¨ à¦œà¦¿à¦¨à¦¿à¦¸ à¦ªà§à¦°à¦¾à§Ÿ à¦ªà§à¦°à¦¤à¦¿à¦Ÿà¦¿ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦²à§‡ à¦¯à§‹à¦— à¦•à¦°à§‡ à¦†à¦°à§‹ à¦¸à¦®à§ƒà¦¦à§à¦§ à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦à¦›à¦¾à§œà¦¾ à¦†à¦®à¦°à¦¾ à¦†à¦°à§‹ à¦¨à¦¤à§à¦¨ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦² à¦¯à§‹à¦— à¦•à¦°à¦¬à¥¤ à¦Ÿà¦¿à¦ªà¦¸à¦—à§à¦°à§ à¦…à¦‚à¦¶à§‡à¦° à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à¦¿à¦‚ à¦à¦¬à¦‚ à¦•à§à¦¯à¦¾à¦°à¦¿à§Ÿà¦¾à¦° à¦Ÿà¦¿à¦ªà¦¸ à¦–à§à¦¬ à¦­à¦¾à¦²à¦­à¦¾à¦¬à§‡ à¦ªà§œà§à¦¨ à¦à¦¬à¦‚ à¦…à¦¨à§à¦¸à¦°à¦¨ à¦•à¦°à§à¦¨ (à¦¸à¦¾à¦¥à§‡ à¦ªà§à¦°à¦¥à¦® à¦ªà§‡à¦œà§‡à¦° à§©à¦Ÿà¦¿ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦²)à¥¤ à¦à¦—à§à¦²à¦¿ à¦…à¦­à¦¿à¦œà§à¦žà¦¤à¦¾ à¦¥à§‡à¦•à§‡ à¦²à§‡à¦–à¦¾à¥¤ à¦à¦—à§à¦²à¦¿ ignore à¦•à¦°à¦²à§‡ à¦‰à¦¦à§à¦­à¦Ÿ à¦‰à¦¦à§à¦­à¦Ÿ à¦ªà§à¦°à¦¶à§à¦¨ à¦®à¦¨à§‡ à¦†à¦¸à¦¬à§‡ à¦¯à§‡à¦®à¦¨ &quot;à¦•à§‹à¦¨à¦Ÿà¦¾à¦° à¦ªà¦° à¦•à§‹à¦¨à¦Ÿà¦¾ à¦¶à¦¿à¦–à¦¬?&quot;, &quot;à¦•à¦¿à¦­à¦¾à¦¬à§‡ à¦¶à§à¦°à§ à¦•à¦°à¦¬?&quot;, &quot;à¦¸à¦¬ à¦ªà§œà§‡ à¦«à§‡à¦²à¦›à¦¿ à¦à¦–à¦¨ à¦•à¦¿ à¦•à¦°à¦¬?&quot; à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿à¥¤à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦¸à¦®à§Ÿ à¦†à¦®à¦°à¦¾ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦«à§‡à¦¸à¦¬à§à¦• à¦ªà§‡à¦œà§‡ à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à¦¿à¦‚, à¦•à§à¦¯à¦¾à¦°à¦¿à§Ÿà¦¾à¦° à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿ à¦¬à¦¿à¦·à§Ÿà§‡ à¦Ÿà¦¿à¦ªà¦¸ à¦¦à¦¿à§Ÿà§‡ à¦¥à¦¾à¦•à¦¿à¥¤ à¦¸à§‡à¦¸à¦¬ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦² à¦«à§‡à¦¸à¦¬à§à¦•à§‡ à¦®à¦¸à§à¦¤ à¦¸à¦¾à¦°à¦¾ à¦ªà§‡à§Ÿà§‡à¦›à§‡à¥¤ à¦…à¦¨à§‡à¦•à§‡ à¦…à¦¨à§à¦°à§‹à¦§ à¦•à¦°à§‡à¦›à§‡à¦¨ à¦¸à§‡à¦—à§à¦²à¦¿ à¦¯à§‡à¦¨ à¦¸à¦¬ à¦à¦•à¦¤à§à¦° à¦•à¦°à§‡ à¦“à§Ÿà§‡à¦¬à¦•à§‹à¦šà¦¬à¦¿à¦¡à¦¿à¦¤à§‡ à¦¦à§‡à¦‡à¥¤ à¦¤à¦¾à¦‡ à¦†à¦®à¦°à¦¾ à¦¸à§‡à¦‡ à¦†à¦°à§à¦Ÿà¦¿à¦•à¦²à¦—à§à¦²à¦¿ à¦à¦–à¦¾à¦¨à§‡ à¦œà¦®à¦¾ à¦•à¦°à§‡ à¦¦à¦¿à¦²à¦¾à¦®, à¦à¦®à¦¨à¦•à¦¿ à¦à¦–à¦¾à¦¨à§‡ à¦†à¦°à§‹ à¦¨à¦¤à§à¦¨ à¦¨à¦¤à§à¦¨ à¦œà¦¿à¦¨à¦¿à¦¸ à¦ªà§à¦°à¦¾à§Ÿ à¦ªà§à¦°à¦¤à¦¿à¦Ÿà¦¿ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦²à§‡ à¦¯à§‹à¦— à¦•à¦°à§‡ à¦†à¦°à§‹ à¦¸à¦®à§ƒà¦¦à§à¦§ à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦à¦›à¦¾à§œà¦¾ à¦†à¦®à¦°à¦¾ à¦†à¦°à§‹ à¦¨à¦¤à§à¦¨ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦² à¦¯à§‹à¦— à¦•à¦°à¦¬à¥¤ à¦Ÿà¦¿à¦ªà¦¸à¦—à§à¦°à§ à¦…à¦‚à¦¶à§‡à¦° à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à¦¿à¦‚ à¦à¦¬à¦‚ à¦•à§à¦¯à¦¾à¦°à¦¿à§Ÿà¦¾à¦° à¦Ÿà¦¿à¦ªà¦¸ à¦–à§à¦¬ à¦­à¦¾à¦²à¦­à¦¾à¦¬à§‡ à¦ªà§œà§à¦¨ à¦à¦¬à¦‚ à¦…à¦¨à§à¦¸à¦°à¦¨ à¦•à¦°à§à¦¨ (à¦¸à¦¾à¦¥à§‡ à¦ªà§à¦°à¦¥à¦® à¦ªà§‡à¦œà§‡à¦° à§©à¦Ÿà¦¿ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦²)à¥¤ à¦à¦—à§à¦²à¦¿ à¦…à¦­à¦¿à¦œà§à¦žà¦¤à¦¾ à¦¥à§‡à¦•à§‡ à¦²à§‡à¦–à¦¾à¥¤ à¦à¦—à§à¦²à¦¿ ignore à¦•à¦°à¦²à§‡ à¦‰à¦¦à§à¦­à¦Ÿ à¦‰à¦¦à§à¦­à¦Ÿ à¦ªà§à¦°à¦¶à§à¦¨ à¦®à¦¨à§‡ à¦†à¦¸à¦¬à§‡ à¦¯à§‡à¦®à¦¨ &quot;à¦•à§‹à¦¨à¦Ÿà¦¾à¦° à¦ªà¦° à¦•à§‹à¦¨à¦Ÿà¦¾ à¦¶à¦¿à¦–à¦¬?&quot;, &quot;à¦•à¦¿à¦­à¦¾à¦¬à§‡ à¦¶à§à¦°à§ à¦•à¦°à¦¬?&quot;, &quot;à¦¸à¦¬ à¦ªà§œà§‡ à¦«à§‡à¦²à¦›à¦¿ à¦à¦–à¦¨ à¦•à¦¿ à¦•à¦°à¦¬?&quot; à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿à¥¤à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦¸à¦®à§Ÿ à¦†à¦®à¦°à¦¾ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦«à§‡à¦¸à¦¬à§à¦• à¦ªà§‡à¦œà§‡ à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à¦¿à¦‚, à¦•à§à¦¯à¦¾à¦°à¦¿à§Ÿà¦¾à¦° à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿ à¦¬à¦¿à¦·à§Ÿà§‡ à¦Ÿà¦¿à¦ªà¦¸ à¦¦à¦¿à§Ÿà§‡ à¦¥à¦¾à¦•à¦¿à¥¤ à¦¸à§‡à¦¸à¦¬ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦² à¦«à§‡à¦¸à¦¬à§à¦•à§‡ à¦®à¦¸à§à¦¤ à¦¸à¦¾à¦°à¦¾ à¦ªà§‡à§Ÿà§‡à¦›à§‡à¥¤ à¦…à¦¨à§‡à¦•à§‡ à¦…à¦¨à§à¦°à§‹à¦§ à¦•à¦°à§‡à¦›à§‡à¦¨ à¦¸à§‡à¦—à§à¦²à¦¿ à¦¯à§‡à¦¨ à¦¸à¦¬ à¦à¦•à¦¤à§à¦° à¦•à¦°à§‡ à¦“à§Ÿà§‡à¦¬à¦•à§‹à¦šà¦¬à¦¿à¦¡à¦¿à¦¤à§‡ à¦¦à§‡à¦‡à¥¤ à¦¤à¦¾à¦‡ à¦†à¦®à¦°à¦¾ à¦¸à§‡à¦‡ à¦†à¦°à§à¦Ÿà¦¿à¦•à¦²à¦—à§à¦²à¦¿ à¦à¦–à¦¾à¦¨à§‡ à¦œà¦®à¦¾ à¦•à¦°à§‡ à¦¦à¦¿à¦²à¦¾à¦®, à¦à¦®à¦¨à¦•à¦¿ à¦à¦–à¦¾à¦¨à§‡ à¦†à¦°à§‹ à¦¨à¦¤à§à¦¨ à¦¨à¦¤à§à¦¨ à¦œà¦¿à¦¨à¦¿à¦¸ à¦ªà§à¦°à¦¾à§Ÿ à¦ªà§à¦°à¦¤à¦¿à¦Ÿà¦¿ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦²à§‡ à¦¯à§‹à¦— à¦•à¦°à§‡ à¦†à¦°à§‹ à¦¸à¦®à§ƒà¦¦à§à¦§ à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦à¦›à¦¾à§œà¦¾ à¦†à¦®à¦°à¦¾ à¦†à¦°à§‹ à¦¨à¦¤à§à¦¨ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦² à¦¯à§‹à¦— à¦•à¦°à¦¬à¥¤ à¦Ÿà¦¿à¦ªà¦¸à¦—à§à¦°à§ à¦…à¦‚à¦¶à§‡à¦° à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à¦¿à¦‚ à¦à¦¬à¦‚ à¦•à§à¦¯à¦¾à¦°à¦¿à§Ÿà¦¾à¦° à¦Ÿà¦¿à¦ªà¦¸ à¦–à§à¦¬ à¦­à¦¾à¦²à¦­à¦¾à¦¬à§‡ à¦ªà§œà§à¦¨ à¦à¦¬à¦‚ à¦…à¦¨à§à¦¸à¦°à¦¨ à¦•à¦°à§à¦¨ (à¦¸à¦¾à¦¥à§‡ à¦ªà§à¦°à¦¥à¦® à¦ªà§‡à¦œà§‡à¦° à§©à¦Ÿà¦¿ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦²)à¥¤ à¦à¦—à§à¦²à¦¿ à¦…à¦­à¦¿à¦œà§à¦žà¦¤à¦¾ à¦¥à§‡à¦•à§‡ à¦²à§‡à¦–à¦¾à¥¤ à¦à¦—à§à¦²à¦¿ ignore à¦•à¦°à¦²à§‡ à¦‰à¦¦à§à¦­à¦Ÿ à¦‰à¦¦à§à¦­à¦Ÿ à¦ªà§à¦°à¦¶à§à¦¨ à¦®à¦¨à§‡ à¦†à¦¸à¦¬à§‡ à¦¯à§‡à¦®à¦¨ &quot;à¦•à§‹à¦¨à¦Ÿà¦¾à¦° à¦ªà¦° à¦•à§‹à¦¨à¦Ÿà¦¾ à¦¶à¦¿à¦–à¦¬?&quot;, &quot;à¦•à¦¿à¦­à¦¾à¦¬à§‡ à¦¶à§à¦°à§ à¦•à¦°à¦¬?&quot;, &quot;à¦¸à¦¬ à¦ªà§œà§‡ à¦«à§‡à¦²à¦›à¦¿ à¦à¦–à¦¨ à¦•à¦¿ à¦•à¦°à¦¬?&quot; à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿à¥¤', 'upload/2edc15a928.jpeg', 'fahad', 'fahad@gmail.cm', 'tips', '2016-11-05 17:29:32');

-- --------------------------------------------------------

--
-- Table structure for table `dbl_user`
--

CREATE TABLE `dbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `passward` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dbl_user`
--

INSERT INTO `dbl_user` (`id`, `username`, `passward`) VALUES
(1, 'siam_riaz', '1234'),
(2, 'shaikh_fahad', '4321'),
(3, 'test', '123');

-- --------------------------------------------------------

--
-- Table structure for table `post_queue`
--

CREATE TABLE `post_queue` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post_queue`
--

INSERT INTO `post_queue` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `email`) VALUES
(11, 9, 'à¦“à§Ÿà§‡à¦¬à¦•à§‹à¦šà¦¬à¦¿à¦¡à¦¿ à¦Ÿà¦¿à¦ªà¦¸à¦—à§à¦°à§', 'à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦¸à¦®à§Ÿ à¦†à¦®à¦°à¦¾ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦«à§‡à¦¸à¦¬à§à¦• à¦ªà§‡à¦œà§‡ à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à¦¿à¦‚, à¦•à§à¦¯à¦¾à¦°à¦¿à§Ÿà¦¾à¦° à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿ à¦¬à¦¿à¦·à§Ÿà§‡ à¦Ÿà¦¿à¦ªà¦¸ à¦¦à¦¿à§Ÿà§‡ à¦¥à¦¾à¦•à¦¿à¥¤ à¦¸à§‡à¦¸à¦¬ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦² à¦«à§‡à¦¸à¦¬à§à¦•à§‡ à¦®à¦¸à§à¦¤ à¦¸à¦¾à¦°à¦¾ à¦ªà§‡à§Ÿà§‡à¦›à§‡à¥¤ à¦…à¦¨à§‡à¦•à§‡ à¦…à¦¨à§à¦°à§‹à¦§ à¦•à¦°à§‡à¦›à§‡à¦¨ à¦¸à§‡à¦—à§à¦²à¦¿ à¦¯à§‡à¦¨ à¦¸à¦¬ à¦à¦•à¦¤à§à¦° à¦•à¦°à§‡ à¦“à§Ÿà§‡à¦¬à¦•à§‹à¦šà¦¬à¦¿à¦¡à¦¿à¦¤à§‡ à¦¦à§‡à¦‡à¥¤ à¦¤à¦¾à¦‡ à¦†à¦®à¦°à¦¾ à¦¸à§‡à¦‡ à¦†à¦°à§à¦Ÿà¦¿à¦•à¦²à¦—à§à¦²à¦¿ à¦à¦–à¦¾à¦¨à§‡ à¦œà¦®à¦¾ à¦•à¦°à§‡ à¦¦à¦¿à¦²à¦¾à¦®, à¦à¦®à¦¨à¦•à¦¿ à¦à¦–à¦¾à¦¨à§‡ à¦†à¦°à§‹ à¦¨à¦¤à§à¦¨ à¦¨à¦¤à§à¦¨ à¦œà¦¿à¦¨à¦¿à¦¸ à¦ªà§à¦°à¦¾à§Ÿ à¦ªà§à¦°à¦¤à¦¿à¦Ÿà¦¿ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦²à§‡ à¦¯à§‹à¦— à¦•à¦°à§‡ à¦†à¦°à§‹ à¦¸à¦®à§ƒà¦¦à§à¦§ à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦à¦›à¦¾à§œà¦¾ à¦†à¦®à¦°à¦¾ à¦†à¦°à§‹ à¦¨à¦¤à§à¦¨ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦² à¦¯à§‹à¦— à¦•à¦°à¦¬à¥¤ à¦Ÿà¦¿à¦ªà¦¸à¦—à§à¦°à§ à¦…à¦‚à¦¶à§‡à¦° à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à¦¿à¦‚ à¦à¦¬à¦‚ à¦•à§à¦¯à¦¾à¦°à¦¿à§Ÿà¦¾à¦° à¦Ÿà¦¿à¦ªà¦¸ à¦–à§à¦¬ à¦­à¦¾à¦²à¦­à¦¾à¦¬à§‡ à¦ªà§œà§à¦¨ à¦à¦¬à¦‚ à¦…à¦¨à§à¦¸à¦°à¦¨ à¦•à¦°à§à¦¨ (à¦¸à¦¾à¦¥à§‡ à¦ªà§à¦°à¦¥à¦® à¦ªà§‡à¦œà§‡à¦° à§©à¦Ÿà¦¿ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦²)à¥¤ à¦à¦—à§à¦²à¦¿ à¦…à¦­à¦¿à¦œà§à¦žà¦¤à¦¾ à¦¥à§‡à¦•à§‡ à¦²à§‡à¦–à¦¾à¥¤ à¦à¦—à§à¦²à¦¿ ignore à¦•à¦°à¦²à§‡ à¦‰à¦¦à§à¦­à¦Ÿ à¦‰à¦¦à§à¦­à¦Ÿ à¦ªà§à¦°à¦¶à§à¦¨ à¦®à¦¨à§‡ à¦†à¦¸à¦¬à§‡ à¦¯à§‡à¦®à¦¨ &quot;à¦•à§‹à¦¨à¦Ÿà¦¾à¦° à¦ªà¦° à¦•à§‹à¦¨à¦Ÿà¦¾ à¦¶à¦¿à¦–à¦¬?&quot;, &quot;à¦•à¦¿à¦­à¦¾à¦¬à§‡ à¦¶à§à¦°à§ à¦•à¦°à¦¬?&quot;, &quot;à¦¸à¦¬ à¦ªà§œà§‡ à¦«à§‡à¦²à¦›à¦¿ à¦à¦–à¦¨ à¦•à¦¿ à¦•à¦°à¦¬?&quot; à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿à¥¤à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦¸à¦®à§Ÿ à¦†à¦®à¦°à¦¾ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦«à§‡à¦¸à¦¬à§à¦• à¦ªà§‡à¦œà§‡ à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à¦¿à¦‚, à¦•à§à¦¯à¦¾à¦°à¦¿à§Ÿà¦¾à¦° à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿ à¦¬à¦¿à¦·à§Ÿà§‡ à¦Ÿà¦¿à¦ªà¦¸ à¦¦à¦¿à§Ÿà§‡ à¦¥à¦¾à¦•à¦¿à¥¤ à¦¸à§‡à¦¸à¦¬ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦² à¦«à§‡à¦¸à¦¬à§à¦•à§‡ à¦®à¦¸à§à¦¤ à¦¸à¦¾à¦°à¦¾ à¦ªà§‡à§Ÿà§‡à¦›à§‡à¥¤ à¦…à¦¨à§‡à¦•à§‡ à¦…à¦¨à§à¦°à§‹à¦§ à¦•à¦°à§‡à¦›à§‡à¦¨ à¦¸à§‡à¦—à§à¦²à¦¿ à¦¯à§‡à¦¨ à¦¸à¦¬ à¦à¦•à¦¤à§à¦° à¦•à¦°à§‡ à¦“à§Ÿà§‡à¦¬à¦•à§‹à¦šà¦¬à¦¿à¦¡à¦¿à¦¤à§‡ à¦¦à§‡à¦‡à¥¤ à¦¤à¦¾à¦‡ à¦†à¦®à¦°à¦¾ à¦¸à§‡à¦‡ à¦†à¦°à§à¦Ÿà¦¿à¦•à¦²à¦—à§à¦²à¦¿ à¦à¦–à¦¾à¦¨à§‡ à¦œà¦®à¦¾ à¦•à¦°à§‡ à¦¦à¦¿à¦²à¦¾à¦®, à¦à¦®à¦¨à¦•à¦¿ à¦à¦–à¦¾à¦¨à§‡ à¦†à¦°à§‹ à¦¨à¦¤à§à¦¨ à¦¨à¦¤à§à¦¨ à¦œà¦¿à¦¨à¦¿à¦¸ à¦ªà§à¦°à¦¾à§Ÿ à¦ªà§à¦°à¦¤à¦¿à¦Ÿà¦¿ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦²à§‡ à¦¯à§‹à¦— à¦•à¦°à§‡ à¦†à¦°à§‹ à¦¸à¦®à§ƒà¦¦à§à¦§ à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦à¦›à¦¾à§œà¦¾ à¦†à¦®à¦°à¦¾ à¦†à¦°à§‹ à¦¨à¦¤à§à¦¨ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦² à¦¯à§‹à¦— à¦•à¦°à¦¬à¥¤ à¦Ÿà¦¿à¦ªà¦¸à¦—à§à¦°à§ à¦…à¦‚à¦¶à§‡à¦° à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à¦¿à¦‚ à¦à¦¬à¦‚ à¦•à§à¦¯à¦¾à¦°à¦¿à§Ÿà¦¾à¦° à¦Ÿà¦¿à¦ªà¦¸ à¦–à§à¦¬ à¦­à¦¾à¦²à¦­à¦¾à¦¬à§‡ à¦ªà§œà§à¦¨ à¦à¦¬à¦‚ à¦…à¦¨à§à¦¸à¦°à¦¨ à¦•à¦°à§à¦¨ (à¦¸à¦¾à¦¥à§‡ à¦ªà§à¦°à¦¥à¦® à¦ªà§‡à¦œà§‡à¦° à§©à¦Ÿà¦¿ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦²)à¥¤ à¦à¦—à§à¦²à¦¿ à¦…à¦­à¦¿à¦œà§à¦žà¦¤à¦¾ à¦¥à§‡à¦•à§‡ à¦²à§‡à¦–à¦¾à¥¤ à¦à¦—à§à¦²à¦¿ ignore à¦•à¦°à¦²à§‡ à¦‰à¦¦à§à¦­à¦Ÿ à¦‰à¦¦à§à¦­à¦Ÿ à¦ªà§à¦°à¦¶à§à¦¨ à¦®à¦¨à§‡ à¦†à¦¸à¦¬à§‡ à¦¯à§‡à¦®à¦¨ &quot;à¦•à§‹à¦¨à¦Ÿà¦¾à¦° à¦ªà¦° à¦•à§‹à¦¨à¦Ÿà¦¾ à¦¶à¦¿à¦–à¦¬?&quot;, &quot;à¦•à¦¿à¦­à¦¾à¦¬à§‡ à¦¶à§à¦°à§ à¦•à¦°à¦¬?&quot;, &quot;à¦¸à¦¬ à¦ªà§œà§‡ à¦«à§‡à¦²à¦›à¦¿ à¦à¦–à¦¨ à¦•à¦¿ à¦•à¦°à¦¬?&quot; à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿à¥¤à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦¸à¦®à§Ÿ à¦†à¦®à¦°à¦¾ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦«à§‡à¦¸à¦¬à§à¦• à¦ªà§‡à¦œà§‡ à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à¦¿à¦‚, à¦•à§à¦¯à¦¾à¦°à¦¿à§Ÿà¦¾à¦° à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿ à¦¬à¦¿à¦·à§Ÿà§‡ à¦Ÿà¦¿à¦ªà¦¸ à¦¦à¦¿à§Ÿà§‡ à¦¥à¦¾à¦•à¦¿à¥¤ à¦¸à§‡à¦¸à¦¬ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦² à¦«à§‡à¦¸à¦¬à§à¦•à§‡ à¦®à¦¸à§à¦¤ à¦¸à¦¾à¦°à¦¾ à¦ªà§‡à§Ÿà§‡à¦›à§‡à¥¤ à¦…à¦¨à§‡à¦•à§‡ à¦…à¦¨à§à¦°à§‹à¦§ à¦•à¦°à§‡à¦›à§‡à¦¨ à¦¸à§‡à¦—à§à¦²à¦¿ à¦¯à§‡à¦¨ à¦¸à¦¬ à¦à¦•à¦¤à§à¦° à¦•à¦°à§‡ à¦“à§Ÿà§‡à¦¬à¦•à§‹à¦šà¦¬à¦¿à¦¡à¦¿à¦¤à§‡ à¦¦à§‡à¦‡à¥¤ à¦¤à¦¾à¦‡ à¦†à¦®à¦°à¦¾ à¦¸à§‡à¦‡ à¦†à¦°à§à¦Ÿà¦¿à¦•à¦²à¦—à§à¦²à¦¿ à¦à¦–à¦¾à¦¨à§‡ à¦œà¦®à¦¾ à¦•à¦°à§‡ à¦¦à¦¿à¦²à¦¾à¦®, à¦à¦®à¦¨à¦•à¦¿ à¦à¦–à¦¾à¦¨à§‡ à¦†à¦°à§‹ à¦¨à¦¤à§à¦¨ à¦¨à¦¤à§à¦¨ à¦œà¦¿à¦¨à¦¿à¦¸ à¦ªà§à¦°à¦¾à§Ÿ à¦ªà§à¦°à¦¤à¦¿à¦Ÿà¦¿ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦²à§‡ à¦¯à§‹à¦— à¦•à¦°à§‡ à¦†à¦°à§‹ à¦¸à¦®à§ƒà¦¦à§à¦§ à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦à¦›à¦¾à§œà¦¾ à¦†à¦®à¦°à¦¾ à¦†à¦°à§‹ à¦¨à¦¤à§à¦¨ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦² à¦¯à§‹à¦— à¦•à¦°à¦¬à¥¤ à¦Ÿà¦¿à¦ªà¦¸à¦—à§à¦°à§ à¦…à¦‚à¦¶à§‡à¦° à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à¦¿à¦‚ à¦à¦¬à¦‚ à¦•à§à¦¯à¦¾à¦°à¦¿à§Ÿà¦¾à¦° à¦Ÿà¦¿à¦ªà¦¸ à¦–à§à¦¬ à¦­à¦¾à¦²à¦­à¦¾à¦¬à§‡ à¦ªà§œà§à¦¨ à¦à¦¬à¦‚ à¦…à¦¨à§à¦¸à¦°à¦¨ à¦•à¦°à§à¦¨ (à¦¸à¦¾à¦¥à§‡ à¦ªà§à¦°à¦¥à¦® à¦ªà§‡à¦œà§‡à¦° à§©à¦Ÿà¦¿ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦²)à¥¤ à¦à¦—à§à¦²à¦¿ à¦…à¦­à¦¿à¦œà§à¦žà¦¤à¦¾ à¦¥à§‡à¦•à§‡ à¦²à§‡à¦–à¦¾à¥¤ à¦à¦—à§à¦²à¦¿ ignore à¦•à¦°à¦²à§‡ à¦‰à¦¦à§à¦­à¦Ÿ à¦‰à¦¦à§à¦­à¦Ÿ à¦ªà§à¦°à¦¶à§à¦¨ à¦®à¦¨à§‡ à¦†à¦¸à¦¬à§‡ à¦¯à§‡à¦®à¦¨ &quot;à¦•à§‹à¦¨à¦Ÿà¦¾à¦° à¦ªà¦° à¦•à§‹à¦¨à¦Ÿà¦¾ à¦¶à¦¿à¦–à¦¬?&quot;, &quot;à¦•à¦¿à¦­à¦¾à¦¬à§‡ à¦¶à§à¦°à§ à¦•à¦°à¦¬?&quot;, &quot;à¦¸à¦¬ à¦ªà§œà§‡ à¦«à§‡à¦²à¦›à¦¿ à¦à¦–à¦¨ à¦•à¦¿ à¦•à¦°à¦¬?&quot; à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿à¥¤', 'upload/630d2549bb.jpeg', 'fahad', 'tips', '2016-11-05 17:15:46', 'fahad@gmail.cm'),
(12, 9, 'à¦“à§Ÿà§‡à¦¬à¦•à§‹à¦šà¦¬à¦¿à¦¡à¦¿ à¦Ÿà¦¿à¦ªà¦¸à¦—à§à¦°à§', 'à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦¸à¦®à§Ÿ à¦†à¦®à¦°à¦¾ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦«à§‡à¦¸à¦¬à§à¦• à¦ªà§‡à¦œà§‡ à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à¦¿à¦‚, à¦•à§à¦¯à¦¾à¦°à¦¿à§Ÿà¦¾à¦° à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿ à¦¬à¦¿à¦·à§Ÿà§‡ à¦Ÿà¦¿à¦ªà¦¸ à¦¦à¦¿à§Ÿà§‡ à¦¥à¦¾à¦•à¦¿à¥¤ à¦¸à§‡à¦¸à¦¬ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦² à¦«à§‡à¦¸à¦¬à§à¦•à§‡ à¦®à¦¸à§à¦¤ à¦¸à¦¾à¦°à¦¾ à¦ªà§‡à§Ÿà§‡à¦›à§‡à¥¤ à¦…à¦¨à§‡à¦•à§‡ à¦…à¦¨à§à¦°à§‹à¦§ à¦•à¦°à§‡à¦›à§‡à¦¨ à¦¸à§‡à¦—à§à¦²à¦¿ à¦¯à§‡à¦¨ à¦¸à¦¬ à¦à¦•à¦¤à§à¦° à¦•à¦°à§‡ à¦“à§Ÿà§‡à¦¬à¦•à§‹à¦šà¦¬à¦¿à¦¡à¦¿à¦¤à§‡ à¦¦à§‡à¦‡à¥¤ à¦¤à¦¾à¦‡ à¦†à¦®à¦°à¦¾ à¦¸à§‡à¦‡ à¦†à¦°à§à¦Ÿà¦¿à¦•à¦²à¦—à§à¦²à¦¿ à¦à¦–à¦¾à¦¨à§‡ à¦œà¦®à¦¾ à¦•à¦°à§‡ à¦¦à¦¿à¦²à¦¾à¦®, à¦à¦®à¦¨à¦•à¦¿ à¦à¦–à¦¾à¦¨à§‡ à¦†à¦°à§‹ à¦¨à¦¤à§à¦¨ à¦¨à¦¤à§à¦¨ à¦œà¦¿à¦¨à¦¿à¦¸ à¦ªà§à¦°à¦¾à§Ÿ à¦ªà§à¦°à¦¤à¦¿à¦Ÿà¦¿ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦²à§‡ à¦¯à§‹à¦— à¦•à¦°à§‡ à¦†à¦°à§‹ à¦¸à¦®à§ƒà¦¦à§à¦§ à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦à¦›à¦¾à§œà¦¾ à¦†à¦®à¦°à¦¾ à¦†à¦°à§‹ à¦¨à¦¤à§à¦¨ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦² à¦¯à§‹à¦— à¦•à¦°à¦¬à¥¤ à¦Ÿà¦¿à¦ªà¦¸à¦—à§à¦°à§ à¦…à¦‚à¦¶à§‡à¦° à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à¦¿à¦‚ à¦à¦¬à¦‚ à¦•à§à¦¯à¦¾à¦°à¦¿à§Ÿà¦¾à¦° à¦Ÿà¦¿à¦ªà¦¸ à¦–à§à¦¬ à¦­à¦¾à¦²à¦­à¦¾à¦¬à§‡ à¦ªà§œà§à¦¨ à¦à¦¬à¦‚ à¦…à¦¨à§à¦¸à¦°à¦¨ à¦•à¦°à§à¦¨ (à¦¸à¦¾à¦¥à§‡ à¦ªà§à¦°à¦¥à¦® à¦ªà§‡à¦œà§‡à¦° à§©à¦Ÿà¦¿ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦²)à¥¤ à¦à¦—à§à¦²à¦¿ à¦…à¦­à¦¿à¦œà§à¦žà¦¤à¦¾ à¦¥à§‡à¦•à§‡ à¦²à§‡à¦–à¦¾à¥¤ à¦à¦—à§à¦²à¦¿ ignore à¦•à¦°à¦²à§‡ à¦‰à¦¦à§à¦­à¦Ÿ à¦‰à¦¦à§à¦­à¦Ÿ à¦ªà§à¦°à¦¶à§à¦¨ à¦®à¦¨à§‡ à¦†à¦¸à¦¬à§‡ à¦¯à§‡à¦®à¦¨ &quot;à¦•à§‹à¦¨à¦Ÿà¦¾à¦° à¦ªà¦° à¦•à§‹à¦¨à¦Ÿà¦¾ à¦¶à¦¿à¦–à¦¬?&quot;, &quot;à¦•à¦¿à¦­à¦¾à¦¬à§‡ à¦¶à§à¦°à§ à¦•à¦°à¦¬?&quot;, &quot;à¦¸à¦¬ à¦ªà§œà§‡ à¦«à§‡à¦²à¦›à¦¿ à¦à¦–à¦¨ à¦•à¦¿ à¦•à¦°à¦¬?&quot; à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿à¥¤à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦¸à¦®à§Ÿ à¦†à¦®à¦°à¦¾ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦«à§‡à¦¸à¦¬à§à¦• à¦ªà§‡à¦œà§‡ à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à¦¿à¦‚, à¦•à§à¦¯à¦¾à¦°à¦¿à§Ÿà¦¾à¦° à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿ à¦¬à¦¿à¦·à§Ÿà§‡ à¦Ÿà¦¿à¦ªà¦¸ à¦¦à¦¿à§Ÿà§‡ à¦¥à¦¾à¦•à¦¿à¥¤ à¦¸à§‡à¦¸à¦¬ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦² à¦«à§‡à¦¸à¦¬à§à¦•à§‡ à¦®à¦¸à§à¦¤ à¦¸à¦¾à¦°à¦¾ à¦ªà§‡à§Ÿà§‡à¦›à§‡à¥¤ à¦…à¦¨à§‡à¦•à§‡ à¦…à¦¨à§à¦°à§‹à¦§ à¦•à¦°à§‡à¦›à§‡à¦¨ à¦¸à§‡à¦—à§à¦²à¦¿ à¦¯à§‡à¦¨ à¦¸à¦¬ à¦à¦•à¦¤à§à¦° à¦•à¦°à§‡ à¦“à§Ÿà§‡à¦¬à¦•à§‹à¦šà¦¬à¦¿à¦¡à¦¿à¦¤à§‡ à¦¦à§‡à¦‡à¥¤ à¦¤à¦¾à¦‡ à¦†à¦®à¦°à¦¾ à¦¸à§‡à¦‡ à¦†à¦°à§à¦Ÿà¦¿à¦•à¦²à¦—à§à¦²à¦¿ à¦à¦–à¦¾à¦¨à§‡ à¦œà¦®à¦¾ à¦•à¦°à§‡ à¦¦à¦¿à¦²à¦¾à¦®, à¦à¦®à¦¨à¦•à¦¿ à¦à¦–à¦¾à¦¨à§‡ à¦†à¦°à§‹ à¦¨à¦¤à§à¦¨ à¦¨à¦¤à§à¦¨ à¦œà¦¿à¦¨à¦¿à¦¸ à¦ªà§à¦°à¦¾à§Ÿ à¦ªà§à¦°à¦¤à¦¿à¦Ÿà¦¿ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦²à§‡ à¦¯à§‹à¦— à¦•à¦°à§‡ à¦†à¦°à§‹ à¦¸à¦®à§ƒà¦¦à§à¦§ à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦à¦›à¦¾à§œà¦¾ à¦†à¦®à¦°à¦¾ à¦†à¦°à§‹ à¦¨à¦¤à§à¦¨ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦² à¦¯à§‹à¦— à¦•à¦°à¦¬à¥¤ à¦Ÿà¦¿à¦ªà¦¸à¦—à§à¦°à§ à¦…à¦‚à¦¶à§‡à¦° à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à¦¿à¦‚ à¦à¦¬à¦‚ à¦•à§à¦¯à¦¾à¦°à¦¿à§Ÿà¦¾à¦° à¦Ÿà¦¿à¦ªà¦¸ à¦–à§à¦¬ à¦­à¦¾à¦²à¦­à¦¾à¦¬à§‡ à¦ªà§œà§à¦¨ à¦à¦¬à¦‚ à¦…à¦¨à§à¦¸à¦°à¦¨ à¦•à¦°à§à¦¨ (à¦¸à¦¾à¦¥à§‡ à¦ªà§à¦°à¦¥à¦® à¦ªà§‡à¦œà§‡à¦° à§©à¦Ÿà¦¿ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦²)à¥¤ à¦à¦—à§à¦²à¦¿ à¦…à¦­à¦¿à¦œà§à¦žà¦¤à¦¾ à¦¥à§‡à¦•à§‡ à¦²à§‡à¦–à¦¾à¥¤ à¦à¦—à§à¦²à¦¿ ignore à¦•à¦°à¦²à§‡ à¦‰à¦¦à§à¦­à¦Ÿ à¦‰à¦¦à§à¦­à¦Ÿ à¦ªà§à¦°à¦¶à§à¦¨ à¦®à¦¨à§‡ à¦†à¦¸à¦¬à§‡ à¦¯à§‡à¦®à¦¨ &quot;à¦•à§‹à¦¨à¦Ÿà¦¾à¦° à¦ªà¦° à¦•à§‹à¦¨à¦Ÿà¦¾ à¦¶à¦¿à¦–à¦¬?&quot;, &quot;à¦•à¦¿à¦­à¦¾à¦¬à§‡ à¦¶à§à¦°à§ à¦•à¦°à¦¬?&quot;, &quot;à¦¸à¦¬ à¦ªà§œà§‡ à¦«à§‡à¦²à¦›à¦¿ à¦à¦–à¦¨ à¦•à¦¿ à¦•à¦°à¦¬?&quot; à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿à¥¤à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦¸à¦®à§Ÿ à¦†à¦®à¦°à¦¾ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦«à§‡à¦¸à¦¬à§à¦• à¦ªà§‡à¦œà§‡ à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à¦¿à¦‚, à¦•à§à¦¯à¦¾à¦°à¦¿à§Ÿà¦¾à¦° à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿ à¦¬à¦¿à¦·à§Ÿà§‡ à¦Ÿà¦¿à¦ªà¦¸ à¦¦à¦¿à§Ÿà§‡ à¦¥à¦¾à¦•à¦¿à¥¤ à¦¸à§‡à¦¸à¦¬ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦² à¦«à§‡à¦¸à¦¬à§à¦•à§‡ à¦®à¦¸à§à¦¤ à¦¸à¦¾à¦°à¦¾ à¦ªà§‡à§Ÿà§‡à¦›à§‡à¥¤ à¦…à¦¨à§‡à¦•à§‡ à¦…à¦¨à§à¦°à§‹à¦§ à¦•à¦°à§‡à¦›à§‡à¦¨ à¦¸à§‡à¦—à§à¦²à¦¿ à¦¯à§‡à¦¨ à¦¸à¦¬ à¦à¦•à¦¤à§à¦° à¦•à¦°à§‡ à¦“à§Ÿà§‡à¦¬à¦•à§‹à¦šà¦¬à¦¿à¦¡à¦¿à¦¤à§‡ à¦¦à§‡à¦‡à¥¤ à¦¤à¦¾à¦‡ à¦†à¦®à¦°à¦¾ à¦¸à§‡à¦‡ à¦†à¦°à§à¦Ÿà¦¿à¦•à¦²à¦—à§à¦²à¦¿ à¦à¦–à¦¾à¦¨à§‡ à¦œà¦®à¦¾ à¦•à¦°à§‡ à¦¦à¦¿à¦²à¦¾à¦®, à¦à¦®à¦¨à¦•à¦¿ à¦à¦–à¦¾à¦¨à§‡ à¦†à¦°à§‹ à¦¨à¦¤à§à¦¨ à¦¨à¦¤à§à¦¨ à¦œà¦¿à¦¨à¦¿à¦¸ à¦ªà§à¦°à¦¾à§Ÿ à¦ªà§à¦°à¦¤à¦¿à¦Ÿà¦¿ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦²à§‡ à¦¯à§‹à¦— à¦•à¦°à§‡ à¦†à¦°à§‹ à¦¸à¦®à§ƒà¦¦à§à¦§ à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦à¦›à¦¾à§œà¦¾ à¦†à¦®à¦°à¦¾ à¦†à¦°à§‹ à¦¨à¦¤à§à¦¨ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦² à¦¯à§‹à¦— à¦•à¦°à¦¬à¥¤ à¦Ÿà¦¿à¦ªà¦¸à¦—à§à¦°à§ à¦…à¦‚à¦¶à§‡à¦° à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à¦¿à¦‚ à¦à¦¬à¦‚ à¦•à§à¦¯à¦¾à¦°à¦¿à§Ÿà¦¾à¦° à¦Ÿà¦¿à¦ªà¦¸ à¦–à§à¦¬ à¦­à¦¾à¦²à¦­à¦¾à¦¬à§‡ à¦ªà§œà§à¦¨ à¦à¦¬à¦‚ à¦…à¦¨à§à¦¸à¦°à¦¨ à¦•à¦°à§à¦¨ (à¦¸à¦¾à¦¥à§‡ à¦ªà§à¦°à¦¥à¦® à¦ªà§‡à¦œà§‡à¦° à§©à¦Ÿà¦¿ à¦†à¦°à§à¦Ÿà¦¿à¦•à§‡à¦²)à¥¤ à¦à¦—à§à¦²à¦¿ à¦…à¦­à¦¿à¦œà§à¦žà¦¤à¦¾ à¦¥à§‡à¦•à§‡ à¦²à§‡à¦–à¦¾à¥¤ à¦à¦—à§à¦²à¦¿ ignore à¦•à¦°à¦²à§‡ à¦‰à¦¦à§à¦­à¦Ÿ à¦‰à¦¦à§à¦­à¦Ÿ à¦ªà§à¦°à¦¶à§à¦¨ à¦®à¦¨à§‡ à¦†à¦¸à¦¬à§‡ à¦¯à§‡à¦®à¦¨ &quot;à¦•à§‹à¦¨à¦Ÿà¦¾à¦° à¦ªà¦° à¦•à§‹à¦¨à¦Ÿà¦¾ à¦¶à¦¿à¦–à¦¬?&quot;, &quot;à¦•à¦¿à¦­à¦¾à¦¬à§‡ à¦¶à§à¦°à§ à¦•à¦°à¦¬?&quot;, &quot;à¦¸à¦¬ à¦ªà§œà§‡ à¦«à§‡à¦²à¦›à¦¿ à¦à¦–à¦¨ à¦•à¦¿ à¦•à¦°à¦¬?&quot; à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿à¥¤', 'upload/3cb67f53c9.jpeg', 'fahad', 'tips', '2016-11-05 17:29:28', 'fahad@gmail.cm');

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`id`, `fb`, `tw`, `gp`, `ln`, `youtube`) VALUES
(1, ' www.facebook.com', 'www. twiter.com', 'www .googleplus.com', 'www. inkedin.com', 'www .googleplus.com');

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, ' Coder Knight', 'Programmers ', 'upload/Knight_logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `copyright`
--
ALTER TABLE `copyright`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbl_category`
--
ALTER TABLE `dbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbl_comment`
--
ALTER TABLE `dbl_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbl_contact`
--
ALTER TABLE `dbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbl_post`
--
ALTER TABLE `dbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbl_user`
--
ALTER TABLE `dbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_queue`
--
ALTER TABLE `post_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `copyright`
--
ALTER TABLE `copyright`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dbl_category`
--
ALTER TABLE `dbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `dbl_comment`
--
ALTER TABLE `dbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `dbl_contact`
--
ALTER TABLE `dbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `dbl_post`
--
ALTER TABLE `dbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `dbl_user`
--
ALTER TABLE `dbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `post_queue`
--
ALTER TABLE `post_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
