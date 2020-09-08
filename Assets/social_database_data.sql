-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2020 at 08:45 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(6, 'gh', 'ben_woodcock', 'ben_woodcock', '2020-06-01 01:28:43', 'no', 33),
(7, 'vsdv', 'ben_woodcock', 'ben_woodcock', '2020-06-01 01:31:40', 'no', 33),
(8, 'monkas', 'ben_woodcock', 'ben_woodcock', '2020-06-01 01:38:52', 'no', 33),
(9, 'reee', 'ben_woodcock', 'ben_woodcock', '2020-06-01 01:38:59', 'no', 33),
(10, 'yay', 'ben_woodcock', 'ben_woodcock', '2020-06-01 01:39:05', 'no', 32),
(11, 'haha', 'ben_woodcock', 'ben_woodcock', '2020-06-01 01:39:09', 'no', 31),
(12, 'weee', 'ben_woodcock', 'ben_woodcock', '2020-06-01 01:40:11', 'no', 31),
(13, '', 'ben_woodcock', 'ben_woodcock', '2020-06-01 16:01:07', 'no', 33),
(14, 'O, what kind of noodles?', 'ben_woodcock', 'ben_woodcock', '2020-06-02 13:09:30', 'no', 34),
(15, 'I like spicy!', 'tom_alvarez', 'ben_woodcock', '2020-06-02 13:12:22', 'no', 34),
(16, 'No!', 'ben_woodcock', 'tom_alvarez', '2020-06-02 13:12:53', 'no', 35),
(17, 'ree\r\n', 'ben_woodcock', 'ben_woodcock', '2020-07-20 17:39:10', 'no', 39),
(18, 'dgdfgr', 'ben_woodcock', 'tom_alvarez', '2020-08-17 15:17:42', 'no', 44),
(19, 'fgerg', 'ben_woodcock', 'tom_alvarez', '2020-08-17 15:19:49', 'no', 44),
(20, 'sssdf', 'ben_woodcock', 'tom_alvarez', '2020-08-17 15:19:51', 'no', 44),
(21, 'fhfh', 'tom_alvarez', 'ben_woodcock', '2020-08-17 15:20:46', 'no', 39),
(22, 'dfwfqw', 'tom_alvarez', 'ben_woodcock', '2020-08-20 15:00:39', 'no', 40),
(23, 'sdwdwe', 'tom_alvarez', 'ben_woodcock', '2020-08-20 15:01:40', 'no', 47);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(13, 'tom_alvarez', 34),
(14, 'ben_woodcock', 35),
(15, 'ben_woodcock', 33),
(16, 'ben_woodcock', 34),
(17, 'tom_alvarez', 37),
(18, 'ben_woodcock', 37),
(22, 'ben_woodcock', 38),
(23, 'ben_woodcock', 43),
(24, 'ben_woodcock', 44),
(25, 'ben_woodcock', 42),
(26, 'ben_woodcock', 41),
(27, 'ben_woodcock', 40),
(28, 'tom_alvarez', 43),
(29, 'tom_alvarez', 39),
(30, 'ben_woodcock', 39),
(31, 'tom_alvarez', 40),
(32, 'tom_alvarez', 47),
(33, 'ben_woodcock', 52),
(34, 'ben_woodcock', 55);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'tom_alvarez', 'ben_woodcock', 'Hi Tom', '2020-07-07 16:15:54', 'yes', 'yes', 'no'),
(2, 'tom_alvarez', 'ben_woodcock', 'Hi Tom', '2020-07-07 16:35:04', 'yes', 'yes', 'no'),
(3, 'tom_alvarez', 'ben_woodcock', 'reee', '2020-07-07 16:35:38', 'yes', 'yes', 'no'),
(4, 'tom_alvarez', 'ben_woodcock', 'hi', '2020-07-07 16:35:40', 'yes', 'yes', 'no'),
(5, 'tom_alvarez', 'ben_woodcock', 'why you no respond :(', '2020-07-07 16:35:47', 'yes', 'yes', 'no'),
(6, 'tom_alvarez', 'ben_woodcock', 'why you no respond :(', '2020-07-07 16:39:31', 'yes', 'yes', 'no'),
(7, 'tom_alvarez', 'ben_woodcock', 'why you no respond :(', '2020-07-07 16:39:34', 'yes', 'yes', 'no'),
(8, 'tom_alvarez', 'ben_woodcock', 'why you no respond :(', '2020-07-07 16:40:42', 'yes', 'yes', 'no'),
(9, 'tom_alvarez', 'ben_woodcock', 'why you no respond :(', '2020-07-07 16:45:06', 'yes', 'yes', 'no'),
(10, 'tom_alvarez', 'ben_woodcock', 'why you no respond :(', '2020-07-07 16:45:39', 'yes', 'yes', 'no'),
(11, 'tom_alvarez', 'ben_woodcock', 'why you no respond :(', '2020-07-07 16:46:25', 'yes', 'yes', 'no'),
(12, 'tom_alvarez', 'ben_woodcock', 'why you no respond :(', '2020-07-07 16:47:29', 'yes', 'yes', 'no'),
(13, 'tom_alvarez', 'ben_woodcock', 'why you no respond :(', '2020-07-07 16:49:23', 'yes', 'yes', 'no'),
(14, 'tom_alvarez', 'ben_woodcock', 'TOOOOM', '2020-07-07 16:49:31', 'yes', 'yes', 'no'),
(15, 'tom_alvarez', 'ben_woodcock', 'TOOOOM', '2020-07-07 16:51:46', 'yes', 'yes', 'no'),
(16, 'tom_alvarez', 'ben_woodcock', 'TOOOOM', '2020-07-07 16:52:09', 'yes', 'yes', 'no'),
(17, 'tom_alvarez', 'ben_woodcock', 'TOOOOM', '2020-07-07 16:52:19', 'yes', 'yes', 'no'),
(18, 'tom_alvarez', 'ben_woodcock', 'reeeee i want answer please help i need help pls spl pls pls pls please\r\n', '2020-07-07 16:52:39', 'yes', 'yes', 'no'),
(19, 'tom_alvarez', 'ben_woodcock', 'reeeee i want answer please help i need help pls spl pls pls pls please\r\n', '2020-07-07 16:52:57', 'yes', 'yes', 'no'),
(20, 'tom_alvarez', 'ben_woodcock', 'reeeee i want answer please help i need help pls spl pls pls pls please\r\n', '2020-07-07 16:52:59', 'yes', 'yes', 'no'),
(21, 'tom_alvarez', 'ben_woodcock', 'reeeee i want answer please help i need help pls spl pls pls pls please\r\n', '2020-07-07 16:53:00', 'yes', 'yes', 'no'),
(22, 'tom_alvarez', 'ben_woodcock', 'reeeee i want answer please help i need help pls spl pls pls pls please\r\n', '2020-07-07 16:53:01', 'yes', 'yes', 'no'),
(23, 'tom_alvarez', 'ben_woodcock', 'ASas', '0000-00-00 00:00:00', 'yes', 'yes', 'no'),
(24, 'tom_alvarez', 'ben_woodcock', 'ASas', '0000-00-00 00:00:00', 'yes', 'yes', 'no'),
(25, 'tom_alvarez', 'ben_woodcock', 'Asda', '0000-00-00 00:00:00', 'yes', 'yes', 'no'),
(26, 'tom_alvarez', 'ben_woodcock', 'thhh', '0000-00-00 00:00:00', 'yes', 'yes', 'no'),
(27, 'tom_alvarez', 'ben_woodcock', 'thhh', '0000-00-00 00:00:00', 'yes', 'yes', 'no'),
(28, 'tom_alvarez', 'ben_woodcock', 'thhh', '0000-00-00 00:00:00', 'yes', 'yes', 'no'),
(29, 'tom_alvarez', 'ben_woodcock', 'thhh', '0000-00-00 00:00:00', 'yes', 'yes', 'no'),
(30, 'tom_alvarez', 'ben_woodcock', 'thhh', '0000-00-00 00:00:00', 'yes', 'yes', 'no'),
(31, 'tom_alvarez', 'ben_woodcock', 'thhh', '0000-00-00 00:00:00', 'yes', 'yes', 'no'),
(32, 'tom_alvarez', 'ben_woodcock', 'thhh', '0000-00-00 00:00:00', 'yes', 'yes', 'no'),
(33, 'ben_woodcock', 'tom_alvarez', 'Okay\r\n', '2020-08-05 15:23:16', 'yes', 'yes', 'no'),
(34, 'ben_woodcock', 'tom_alvarez', 'Chill', '2020-08-05 15:23:20', 'yes', 'yes', 'no'),
(35, 'tom_alvarez', 'ben_woodcock', 'asdda', '2020-08-07 15:00:16', 'yes', 'yes', 'no'),
(36, 'tom_alvarez', 'ben_woodcock', 'adasdwd', '2020-08-11 22:03:16', 'yes', 'yes', 'no'),
(37, 'tom_alvarez', 'ben_woodcock', 'hiiii', '0000-00-00 00:00:00', 'yes', 'yes', 'no'),
(38, 'ben_woodcock', 'tom_alvarez', 'asddeeww', '2020-08-17 14:57:53', 'yes', 'yes', 'no'),
(39, 'ben_woodcock', 'ben_woodcock', 'tyjtyj', '0000-00-00 00:00:00', 'yes', 'yes', 'no'),
(40, 'ben_woodcock', 'ben_woodcock', 'tyjtyj', '0000-00-00 00:00:00', 'yes', 'yes', 'no'),
(41, 'ben_woodcock', 'ben_woodcock', 'sdwd', '2020-08-20 15:23:58', 'yes', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, 'tom_alvarez', 'ben_woodcock', 'ben_woodcock commented on your post', 'post.php?id=44', '2020-08-17 15:19:49', 'yes', 'yes'),
(2, 'tom_alvarez', 'ben_woodcock', 'ben_woodcock commented on your post', 'post.php?id=44', '2020-08-17 15:19:51', 'yes', 'yes'),
(3, 'ben_woodcock', 'tom_alvarez', 'tom_alvarez liked your post', 'post.php?id=43', '2020-08-17 15:20:37', 'yes', 'yes'),
(4, 'ben_woodcock', 'tom_alvarez', 'tom_alvarez liked your post', 'post.php?id=39', '2020-08-17 15:20:43', 'yes', 'yes'),
(5, 'ben_woodcock', 'tom_alvarez', 'tom_alvarez commented on your post', 'post.php?id=39', '2020-08-17 15:20:46', 'yes', 'yes'),
(6, 'ben_woodcock', 'tom_alvarez', 'tom_alvarez commented on your post', 'post.php?id=40', '2020-08-20 15:00:39', 'yes', 'no'),
(7, 'ben_woodcock', 'tom_alvarez', 'tom_alvarez liked your post', 'post.php?id=40', '2020-08-20 15:00:43', 'yes', 'no'),
(8, 'ben_woodcock', 'tom_alvarez', 'tom_alvarez liked your post', 'post.php?id=47', '2020-08-20 15:01:38', 'yes', 'no'),
(9, 'ben_woodcock', 'tom_alvarez', 'tom_alvarez commented on your post', 'post.php?id=47', '2020-08-20 15:01:40', 'yes', 'no'),
(10, 'sponge_ball', 'ben_woodcock', 'ben_woodcock liked your post', 'post.php?id=52', '2020-08-24 17:46:40', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `data_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `data_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(1, 'First Post!', 'ben_woodcock', 'none', '2020-05-19 01:56:09', 'no', 'no', 0, ''),
(2, 'First Post!', 'ben_woodcock', 'none', '2020-05-20 21:16:13', 'no', 'no', 0, ''),
(3, 'First Post!', 'ben_woodcock', 'none', '2020-05-21 01:44:29', 'no', 'no', 0, ''),
(4, 'First Post!', 'ben_woodcock', 'none', '2020-05-21 13:27:42', 'no', 'no', 0, ''),
(5, 'YAY', 'ben_woodcock', 'none', '2020-05-21 13:28:57', 'no', 'no', 0, ''),
(11, 'rewrwe\nwerwer\n\nwerwer', 'ben_woodcock', 'none', '2020-05-26 16:37:41', 'no', 'no', 0, ''),
(12, 'fgh', 'ben_woodcock', 'none', '2020-05-26 20:07:30', 'no', 'no', 0, ''),
(13, 'Test', 'ben_woodcock', 'none', '2020-05-26 20:26:30', 'no', 'no', 0, ''),
(14, 'asd', 'ben_woodcock', 'none', '2020-05-27 12:34:51', 'no', 'no', 0, ''),
(15, 'dwdfe', 'ben_woodcock', 'none', '2020-05-27 12:34:53', 'no', 'no', 0, ''),
(16, 'wfwef', 'ben_woodcock', 'none', '2020-05-27 18:17:48', 'no', 'no', 0, ''),
(17, 'wffv3', 'ben_woodcock', 'none', '2020-05-27 18:17:50', 'no', 'no', 0, ''),
(18, 'ddfgbe', 'ben_woodcock', 'none', '2020-05-27 18:17:51', 'no', 'no', 0, ''),
(19, 'dfwef3', 'ben_woodcock', 'none', '2020-05-27 18:17:53', 'no', 'no', 0, ''),
(20, 'sdfb5b', 'ben_woodcock', 'none', '2020-05-27 18:17:54', 'no', 'no', 0, ''),
(21, 'sdfasdfwe', 'ben_woodcock', 'none', '2020-05-27 18:17:56', 'no', 'no', 0, ''),
(22, 'dfbfb3', 'ben_woodcock', 'none', '2020-05-27 18:17:58', 'no', 'no', 0, ''),
(23, 'sdvfv3', 'ben_woodcock', 'none', '2020-05-27 18:17:59', 'no', 'no', 0, ''),
(24, 'dwdawd', 'ben_woodcock', 'none', '2020-05-27 18:59:25', 'no', 'no', 0, ''),
(25, 'qwww', 'ben_woodcock', 'none', '2020-05-27 18:59:26', 'no', 'no', 0, ''),
(26, 'e', 'ben_woodcock', 'none', '2020-05-27 18:59:26', 'no', 'no', 0, ''),
(27, 'sas', 'ben_woodcock', 'none', '2020-05-27 18:59:33', 'no', 'no', 0, ''),
(28, 'sdfs', 'ben_woodcock', 'none', '2020-05-27 19:01:09', 'no', 'no', 0, ''),
(29, 'fsdf', 'ben_woodcock', 'none', '2020-05-27 19:01:10', 'no', 'yes', 0, ''),
(30, 'sdfsdf', 'ben_woodcock', 'none', '2020-05-27 19:01:11', 'no', 'yes', 0, ''),
(31, 'ok', 'ben_woodcock', 'none', '2020-05-28 12:26:23', 'no', 'yes', 0, ''),
(32, 'wfwe', 'ben_woodcock', 'none', '2020-05-28 16:54:09', 'no', 'no', 0, ''),
(33, 'asa', 'ben_woodcock', 'none', '2020-06-01 01:27:37', 'no', 'no', 1, ''),
(34, 'I like me some noodles', 'ben_woodcock', 'none', '2020-06-02 13:09:16', 'no', 'yes', 2, ''),
(35, 'Give me money!', 'tom_alvarez', 'none', '2020-06-02 13:12:42', 'no', 'no', 1, ''),
(36, 'asdwqw', 'ben_woodcock', 'none', '2020-06-22 17:03:23', 'no', 'yes', 0, ''),
(37, 'weo weo weo fixed an error\n', 'tom_alvarez', 'none', '2020-06-30 15:44:22', 'no', 'no', 2, ''),
(38, 'REEEEE', 'ben_woodcock', 'tom_alvarez', '2020-06-30 15:46:49', 'no', 'no', 1, ''),
(39, 'adada', 'ben_woodcock', 'none', '2020-07-07 14:57:38', 'no', 'no', 2, ''),
(40, 'rererer', 'ben_woodcock', 'none', '2020-07-30 10:37:56', 'no', 'no', 2, ''),
(41, 'HIIIII!', 'ben_woodcock', 'tom_alvarez', '2020-08-05 15:42:14', 'no', 'no', 1, ''),
(42, 'reeee', 'ben_woodcock', 'tom_alvarez', '2020-08-11 22:03:26', 'no', 'no', 1, ''),
(43, 'hiiii', 'ben_woodcock', 'tom_alvarez', '2020-08-17 14:57:20', 'no', 'no', 2, ''),
(44, 'asdasd', 'tom_alvarez', 'ben_woodcock', '2020-08-17 14:57:47', 'no', 'no', 1, ''),
(45, 'dadadw', 'ben_woodcock', 'tom_alvarez', '2020-08-18 13:47:32', 'no', 'no', 0, ''),
(46, 'hiiii', 'tom_alvarez', 'none', '2020-08-18 13:47:58', 'no', 'no', 0, ''),
(47, 'asdweeee', 'ben_woodcock', 'tom_alvarez', '2020-08-19 13:40:08', 'no', 'no', 1, ''),
(48, 'dfggr', 'tom_alvarez', 'ben_woodcock', '2020-08-19 14:51:35', 'no', 'no', 0, ''),
(49, 'sdfef', 'tom_alvarez', 'ben_woodcock', '2020-08-19 14:51:43', 'no', 'no', 0, ''),
(50, 'sdweeee', 'tom_alvarez', 'ben_woodcock', '2020-08-20 14:57:21', 'no', 'no', 0, ''),
(51, 'hihihi', 'tom_alvarez', 'ben_woodcock', '2020-08-20 15:06:03', 'no', 'no', 0, ''),
(52, 'Yay!\n', 'sponge_ball', 'none', '2020-08-24 17:23:31', 'no', 'no', 1, ''),
(53, 'sdad', 'ben_woodcock', 'none', '2020-08-25 19:52:25', 'no', 'no', 0, ''),
(54, 'dsds', 'ben_woodcock', 'none', '2020-08-26 23:29:26', 'no', 'no', 0, ''),
(55, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/oeesCRfaabg\'></iframe><br>', 'ben_woodcock', 'none', '2020-08-31 15:52:50', 'no', 'no', 1, ''),
(56, 'I like minecraft', 'ben_woodcock', 'none', '2020-08-31 16:19:34', 'no', 'no', 0, ''),
(57, 'runescape is fun', 'ben_woodcock', 'none', '2020-08-31 16:19:43', 'no', 'no', 0, ''),
(58, 'Can i have some ice cream\n', 'ben_woodcock', 'none', '2020-08-31 16:20:04', 'no', 'no', 0, ''),
(59, 'dfgerg', 'ben_woodcock', 'none', '2020-08-31 17:08:43', 'no', 'yes', 0, 'Assets/Images/posts/5f4d208b12aacScreenshot_10.png'),
(60, 'yes', 'ben_woodcock', 'none', '2020-08-31 17:12:45', 'no', 'no', 0, 'Assets/Images/posts/5f4d217d33615Screenshot_3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Minecraft', 1),
('Runescape', 1),
('Fun', 1),
('Ice', 1),
('Creamn', 1),
('Dfgerg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(11, 'Ben', 'Woodcock', 'ben_woodcock', 'SpikyBlade@hotmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-05-16', 'Assets/Images/profile_pics/ben_woodcocke1c3015344379748a06aa24c5d4b69bfn.jpeg', 47, 16, 'no', ',tom_alvarez,sponge_ball,'),
(12, 'Tom', 'Alvarez', 'tom_alvarez', 'Spiky@hotmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-06-02', 'Assets/Images/profile_pics/default/default2.png', 3, 4, 'no', ',ben_woodcock,'),
(13, 'Sponge', 'Ball', 'sponge_ball', 'Spongeball@hotmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-08-24', 'Assets/Images/profile_pics/default/default1.png', 1, 1, 'no', ',ben_woodcock,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
