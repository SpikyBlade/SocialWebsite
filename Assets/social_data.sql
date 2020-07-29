-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15. Jul, 2020 00:42 AM
-- Tjener-versjon: 10.4.11-MariaDB
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
-- Tabellstruktur for tabell `comments`
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
-- Dataark for tabell `comments`
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
(16, 'No!', 'ben_woodcock', 'tom_alvarez', '2020-06-02 13:12:53', 'no', 35);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dataark for tabell `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(13, 'tom_alvarez', 34),
(14, 'ben_woodcock', 35),
(15, 'ben_woodcock', 33),
(16, 'ben_woodcock', 34),
(17, 'tom_alvarez', 37),
(18, 'ben_woodcock', 37),
(19, 'ben_woodcock', 38);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `messages`
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
-- Dataark for tabell `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'tom_alvarez', 'ben_woodcock', 'Hi Tom', '2020-07-07 16:15:54', 'no', 'no', 'no'),
(2, 'tom_alvarez', 'ben_woodcock', 'Hi Tom', '2020-07-07 16:35:04', 'no', 'no', 'no'),
(3, 'tom_alvarez', 'ben_woodcock', 'reee', '2020-07-07 16:35:38', 'no', 'no', 'no'),
(4, 'tom_alvarez', 'ben_woodcock', 'hi', '2020-07-07 16:35:40', 'no', 'no', 'no'),
(5, 'tom_alvarez', 'ben_woodcock', 'why you no respond :(', '2020-07-07 16:35:47', 'no', 'no', 'no'),
(6, 'tom_alvarez', 'ben_woodcock', 'why you no respond :(', '2020-07-07 16:39:31', 'no', 'no', 'no'),
(7, 'tom_alvarez', 'ben_woodcock', 'why you no respond :(', '2020-07-07 16:39:34', 'no', 'no', 'no'),
(8, 'tom_alvarez', 'ben_woodcock', 'why you no respond :(', '2020-07-07 16:40:42', 'no', 'no', 'no'),
(9, 'tom_alvarez', 'ben_woodcock', 'why you no respond :(', '2020-07-07 16:45:06', 'no', 'no', 'no'),
(10, 'tom_alvarez', 'ben_woodcock', 'why you no respond :(', '2020-07-07 16:45:39', 'no', 'no', 'no'),
(11, 'tom_alvarez', 'ben_woodcock', 'why you no respond :(', '2020-07-07 16:46:25', 'no', 'no', 'no'),
(12, 'tom_alvarez', 'ben_woodcock', 'why you no respond :(', '2020-07-07 16:47:29', 'no', 'no', 'no'),
(13, 'tom_alvarez', 'ben_woodcock', 'why you no respond :(', '2020-07-07 16:49:23', 'no', 'no', 'no'),
(14, 'tom_alvarez', 'ben_woodcock', 'TOOOOM', '2020-07-07 16:49:31', 'no', 'no', 'no'),
(15, 'tom_alvarez', 'ben_woodcock', 'TOOOOM', '2020-07-07 16:51:46', 'no', 'no', 'no'),
(16, 'tom_alvarez', 'ben_woodcock', 'TOOOOM', '2020-07-07 16:52:09', 'no', 'no', 'no'),
(17, 'tom_alvarez', 'ben_woodcock', 'TOOOOM', '2020-07-07 16:52:19', 'no', 'no', 'no'),
(18, 'tom_alvarez', 'ben_woodcock', 'reeeee i want answer please help i need help pls spl pls pls pls please\r\n', '2020-07-07 16:52:39', 'no', 'no', 'no'),
(19, 'tom_alvarez', 'ben_woodcock', 'reeeee i want answer please help i need help pls spl pls pls pls please\r\n', '2020-07-07 16:52:57', 'no', 'no', 'no'),
(20, 'tom_alvarez', 'ben_woodcock', 'reeeee i want answer please help i need help pls spl pls pls pls please\r\n', '2020-07-07 16:52:59', 'no', 'no', 'no'),
(21, 'tom_alvarez', 'ben_woodcock', 'reeeee i want answer please help i need help pls spl pls pls pls please\r\n', '2020-07-07 16:53:00', 'no', 'no', 'no'),
(22, 'tom_alvarez', 'ben_woodcock', 'reeeee i want answer please help i need help pls spl pls pls pls please\r\n', '2020-07-07 16:53:01', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `data_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dataark for tabell `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `data_added`, `user_closed`, `deleted`, `likes`) VALUES
(1, 'First Post!', 'ben_woodcock', 'none', '2020-05-19 01:56:09', 'no', 'no', 0),
(2, 'First Post!', 'ben_woodcock', 'none', '2020-05-20 21:16:13', 'no', 'no', 0),
(3, 'First Post!', 'ben_woodcock', 'none', '2020-05-21 01:44:29', 'no', 'no', 0),
(4, 'First Post!', 'ben_woodcock', 'none', '2020-05-21 13:27:42', 'no', 'no', 0),
(5, 'YAY', 'ben_woodcock', 'none', '2020-05-21 13:28:57', 'no', 'no', 0),
(11, 'rewrwe\nwerwer\n\nwerwer', 'ben_woodcock', 'none', '2020-05-26 16:37:41', 'no', 'no', 0),
(12, 'fgh', 'ben_woodcock', 'none', '2020-05-26 20:07:30', 'no', 'no', 0),
(13, 'Test', 'ben_woodcock', 'none', '2020-05-26 20:26:30', 'no', 'no', 0),
(14, 'asd', 'ben_woodcock', 'none', '2020-05-27 12:34:51', 'no', 'no', 0),
(15, 'dwdfe', 'ben_woodcock', 'none', '2020-05-27 12:34:53', 'no', 'no', 0),
(16, 'wfwef', 'ben_woodcock', 'none', '2020-05-27 18:17:48', 'no', 'no', 0),
(17, 'wffv3', 'ben_woodcock', 'none', '2020-05-27 18:17:50', 'no', 'no', 0),
(18, 'ddfgbe', 'ben_woodcock', 'none', '2020-05-27 18:17:51', 'no', 'no', 0),
(19, 'dfwef3', 'ben_woodcock', 'none', '2020-05-27 18:17:53', 'no', 'no', 0),
(20, 'sdfb5b', 'ben_woodcock', 'none', '2020-05-27 18:17:54', 'no', 'no', 0),
(21, 'sdfasdfwe', 'ben_woodcock', 'none', '2020-05-27 18:17:56', 'no', 'no', 0),
(22, 'dfbfb3', 'ben_woodcock', 'none', '2020-05-27 18:17:58', 'no', 'no', 0),
(23, 'sdvfv3', 'ben_woodcock', 'none', '2020-05-27 18:17:59', 'no', 'no', 0),
(24, 'dwdawd', 'ben_woodcock', 'none', '2020-05-27 18:59:25', 'no', 'no', 0),
(25, 'qwww', 'ben_woodcock', 'none', '2020-05-27 18:59:26', 'no', 'no', 0),
(26, 'e', 'ben_woodcock', 'none', '2020-05-27 18:59:26', 'no', 'no', 0),
(27, 'sas', 'ben_woodcock', 'none', '2020-05-27 18:59:33', 'no', 'no', 0),
(28, 'sdfs', 'ben_woodcock', 'none', '2020-05-27 19:01:09', 'no', 'no', 0),
(29, 'fsdf', 'ben_woodcock', 'none', '2020-05-27 19:01:10', 'no', 'yes', 0),
(30, 'sdfsdf', 'ben_woodcock', 'none', '2020-05-27 19:01:11', 'no', 'yes', 0),
(31, 'ok', 'ben_woodcock', 'none', '2020-05-28 12:26:23', 'no', 'yes', 0),
(32, 'wfwe', 'ben_woodcock', 'none', '2020-05-28 16:54:09', 'no', 'no', 0),
(33, 'asa', 'ben_woodcock', 'none', '2020-06-01 01:27:37', 'no', 'no', 1),
(34, 'I like me some noodles', 'ben_woodcock', 'none', '2020-06-02 13:09:16', 'no', 'yes', 2),
(35, 'Give me money!', 'tom_alvarez', 'none', '2020-06-02 13:12:42', 'no', 'no', 1),
(36, 'asdwqw', 'ben_woodcock', 'none', '2020-06-22 17:03:23', 'no', 'yes', 0),
(37, 'weo weo weo fixed an error\n', 'tom_alvarez', 'none', '2020-06-30 15:44:22', 'no', 'no', 2),
(38, 'REEEEE', 'ben_woodcock', 'tom_alvarez', '2020-06-30 15:46:49', 'no', 'no', 1),
(39, 'adada', 'ben_woodcock', 'none', '2020-07-07 14:57:38', 'no', 'no', 0);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `users`
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
-- Dataark for tabell `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(11, 'Ben', 'Woodcock', 'ben_woodcock', 'Spikyblade@hotmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-05-16', 'Assets/Images/profile_pics/ben_woodcock8afa3c19ede0ca4601f0cb98db51d311n.jpeg', 37, 6, 'no', ',tom_alvarez,'),
(12, 'Tom', 'Alvarez', 'tom_alvarez', 'Spiky@hotmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-06-02', 'Assets/Images/profile_pics/default/default2.png', 2, 3, 'no', ',ben_woodcock,');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
