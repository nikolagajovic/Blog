-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2024 at 02:17 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `disabled` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `slug`, `disabled`) VALUES
(7, 'Food', 'food', 0),
(9, 'Sport', 'sport', 0),
(10, 'Travel', 'travel', 0),
(11, 'Other', 'other', 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `content`, `image`, `date`, `slug`) VALUES
(6, 9, 11, 'My first post', 'Embark on a voyage of discovery as we delve into the uncharted realms of human knowledge and imagination. In our inaugural post, we invite you to join us on a captivating journey through the unknown, where each turn reveals new wonders and mysteries waiting to be unraveled. Our world is a tapestry of unexplored territories, both tangible and intangible. From the depths of the ocean floor to the far reaches of outer space, humanity\'s quest for understanding knows no bounds. But beyond the physical frontiers lie realms of thought, creativity, and emotion, waiting to be explored with the same curiosity and fervor.\r\n', 'uploads/1718193627beautiful-green-field-scenery-free-photo.webp', '2024-06-12 14:00:28', 'my-first-post'),
(7, 9, 10, 'Second post - Barcelona', 'Barcelona is renowned for its rich history, stunning architecture, vibrant culture, and delicious cuisine. From the iconic works of Antoni Gaudí, such as the Sagrada Família and Park Güell, to the bustling streets of the Gothic Quarter and the lively atmosphere along La Rambla, Barcelona offers a diverse range of experiences for visitors.\r\n\r\nThe city\'s Mediterranean climate makes it ideal for outdoor activities year-round, whether it\'s lounging on the beaches of Barceloneta, exploring the charming neighborhoods of El Born and Gràcia, or indulging in tapas and paella at local eateries. Sports enthusiasts can immerse themselves in the passion of Camp Nou, home to FC Barcelona, one of the most successful football clubs in the world.', 'uploads/17181940163f.jpg', '2024-06-12 14:06:56', 'second-post-barcelona'),
(8, 9, 9, 'EURO 2024', 'The 2024 UEFA European Football Championship, commonly referred to as UEFA Euro 2024 (stylised as UEFA EURO 2024) or simply Euro 2024, will be the 17th edition of the UEFA European Championship, the quadrennial international football championship organised by UEFA for the European men\'s national teams of its member associations. Germany will host the tournament, which is scheduled to take place from 14 June 2024 to 14 July 2024, and the winner will later compete in the 2025 CONMEBOL–UEFA Cup of Champions against the 2024 Copa América winner. The tournament will comprise 24 teams, with Georgia the only team making their European Championship finals debut.', 'uploads/1718194168EURO 2024.jpg', '2024-06-12 14:09:29', 'euro-2024'),
(9, 9, 7, 'About Food', 'Food is more than just sustenance; it\'s a universal language that transcends borders and connects us to cultures around the world. In this blog, we embark on a culinary journey to explore the diverse flavors, traditions, and stories behind some of the most tantalizing dishes from across the globe. Join us as we delve into the art of cooking, discover hidden gems in culinary traditions, and celebrate the joy of sharing meals with loved ones.', 'uploads/1718194531flatten.jfif', '2024-06-12 14:15:31', 'about-food');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `image`, `date`, `role`) VALUES
(9, 'nikolagajovic', 'nikolagajovic@gmail.com', '$2y$10$kpdHQ.M6zkCB4JCjxkc88uhKf4FRXT53NzbYqCzpuQr7aJCuzaaAa', NULL, '2024-06-12 12:56:23', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `title` (`title`),
  ADD KEY `slug` (`slug`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
