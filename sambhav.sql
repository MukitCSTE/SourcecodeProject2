-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2022 at 12:06 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sambhav`
--

-- --------------------------------------------------------

--
-- Table structure for table `basic_informations`
--

CREATE TABLE `basic_informations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birth_year` varchar(255) DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `basic_informations`
--

INSERT INTO `basic_informations` (`id`, `user_id`, `sex`, `birth_year`, `birth_date`, `job`, `college`, `school`, `address`, `createdAt`, `updatedAt`) VALUES
(6, 20, 'mleffg', '2098', '2017-07-08 00:00:00', 'Student', 'MC College', 'Model School', '12/B Dhaka', NULL, NULL),
(7, 21, 'mleg', '1598', '2017-07-08 00:00:00', 'Student', 'MC College', 'Model School', '12/B Dhaka', NULL, NULL),
(8, 22, 'mleg', '1598', '2017-07-08 00:00:00', 'Student', 'MC College', 'Model School', '12/B Dhaka', NULL, NULL),
(9, 23, 'mleg', '1598', '2017-07-08 00:00:00', 'Student', 'MC College', 'Model School', '12/B Dhaka', NULL, NULL),
(10, 24, 'mleg', '1598', '2017-07-08 00:00:00', 'Student', 'MC College', 'Model School', '12/B Dhaka', NULL, NULL),
(11, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_title` varchar(255) DEFAULT NULL,
  `book_pic` varchar(255) DEFAULT NULL,
  `book_ibn` varchar(255) DEFAULT NULL,
  `total_reader` int(11) DEFAULT '0',
  `total_review` int(11) DEFAULT '0',
  `total_likes` int(11) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `user_id`, `book_title`, `book_pic`, `book_ibn`, `total_reader`, `total_review`, `total_likes`, `createdAt`, `updatedAt`) VALUES
(119, 0, 'python', '/images/python.png', '1234567m', 0, 0, 0, '2020-11-24 08:05:13', '2020-11-24 08:05:13'),
(131, 21, 'Java', '/images/Java.png', NULL, NULL, NULL, NULL, '2020-12-10 06:07:46', '2020-12-10 06:07:46'),
(132, 21, 'C', '/images/C.png', NULL, NULL, NULL, NULL, '2020-12-10 06:08:03', '2020-12-10 06:08:03'),
(133, 21, 'Angular', '/images/Angular.png', NULL, NULL, NULL, NULL, '2020-12-10 06:08:27', '2020-12-10 06:08:27'),
(134, 21, 'C#', '/images/C#.png', NULL, NULL, NULL, NULL, '2020-12-10 06:08:54', '2020-12-10 06:08:54'),
(135, 21, 'Android', '/images/Android.png', NULL, NULL, NULL, NULL, '2020-12-10 06:09:14', '2020-12-10 06:09:14'),
(136, 21, 'Golang', '/images/Golang.png', NULL, NULL, NULL, NULL, '2020-12-10 06:09:36', '2020-12-10 06:09:36'),
(137, 21, 'C++', '/images/C++.png', NULL, NULL, NULL, NULL, '2020-12-10 06:09:57', '2020-12-10 06:09:57'),
(139, 21, 'Javascript', '/images/Javascript.png', NULL, NULL, NULL, NULL, '2020-12-10 06:10:41', '2020-12-10 06:10:41'),
(140, 21, 'php', '/images/php.png', NULL, NULL, NULL, NULL, '2020-12-10 06:11:00', '2020-12-10 06:11:00'),
(141, 21, 'html & css', '/images/html & css.png', NULL, NULL, NULL, NULL, '2020-12-10 06:11:29', '2020-12-10 06:11:29'),
(142, 21, 'python', '/images/python.png', NULL, NULL, NULL, NULL, '2020-12-10 06:11:49', '2020-12-10 06:11:49'),
(143, 21, 'Hello', '/images/Hello.png', NULL, NULL, NULL, NULL, '2020-12-22 14:31:12', '2020-12-22 14:31:12'),
(144, 33, 'React', '/images/React.png', NULL, 0, 0, 0, '2021-01-05 12:55:48', '2021-01-05 12:55:48');

-- --------------------------------------------------------

--
-- Table structure for table `book_likes`
--

CREATE TABLE `book_likes` (
  `id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `like_tye` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book_reviews`
--

CREATE TABLE `book_reviews` (
  `id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_profile_pic_url` varchar(255) DEFAULT NULL,
  `review_comment` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_reviews`
--

INSERT INTO `book_reviews` (`id`, `book_id`, `user_id`, `user_name`, `user_profile_pic_url`, `review_comment`, `createdAt`, `updatedAt`) VALUES
(8, 119, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', 'This Beginner course for python', '2021-01-05 12:43:58', '2021-01-05 12:43:58'),
(9, 119, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', 'This Advance course for python', '2021-01-05 12:44:37', '2021-01-05 12:44:37');

-- --------------------------------------------------------

--
-- Table structure for table `communities`
--

CREATE TABLE `communities` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `profile_picture` text,
  `community_cover_pic_url` text,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `total_member` int(11) NOT NULL DEFAULT '0',
  `access_type` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `communities`
--

INSERT INTO `communities` (`id`, `user_id`, `user_name`, `profile_picture`, `community_cover_pic_url`, `title`, `content`, `total_member`, `access_type`, `createdAt`, `updatedAt`) VALUES
(43, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', '/images/Angular_2b806032-c19e-405c-9cb2-c4c82bb33132.png', 'Angular', 'Angular book', 0, 2, '2021-01-14 07:15:11', '2021-01-14 07:15:11'),
(44, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', '/images/Bangla_2b806032-c19e-405c-9cb2-c4c82bb33132.png', 'Bangla', 'Bangla book', 0, 1, '2021-01-14 07:16:18', '2021-01-14 07:16:18'),
(45, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', '/images/Bangla_2b806032-c19e-405c-9cb2-c4c82bb33132.png', 'Bangla', 'Bangla reading', 0, 2, '2021-01-14 07:19:56', '2021-01-14 07:19:56'),
(46, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', '/images/Bangla_2b806032-c19e-405c-9cb2-c4c82bb33132.png', 'Bangla', 'Bangla reading', 0, 1, '2021-01-14 09:53:32', '2021-01-14 09:53:32'),
(47, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', '/images/Ang Js_43ec403b-f432-4c73-a2ac-c2efe7690ebe.png', 'Ang Js', 'test', 0, 1, '2021-12-14 11:54:37', '2021-12-14 11:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `community_members`
--

CREATE TABLE `community_members` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `profile_picture_url` text,
  `community_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `community_members`
--
DELIMITER $$
CREATE TRIGGER `add total memeber` AFTER INSERT ON `community_members` FOR EACH ROW UPDATE communities rc
      SET rc.total_member= ( select count(user_id) from community_members         where   	community_id = new.community_id)
      WHERE id = NEW.community_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `community_topics`
--

CREATE TABLE `community_topics` (
  `topic_id` int(11) NOT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `community_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_profile_pic_url` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `total_comment` int(11) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `community_topics`
--

INSERT INTO `community_topics` (`topic_id`, `topic`, `user_id`, `community_id`, `user_name`, `user_profile_pic_url`, `date`, `time`, `total_comment`, `createdAt`, `updatedAt`) VALUES
(2, 'How to get 6.0 in IELTS', 31, 2, 'mukit', 'pro pic url', NULL, NULL, 2, '2020-12-31 09:57:47', '2020-12-31 09:57:47'),
(3, 'How to get 6.0 in IELTS', 31, 2, 'mukit', 'pro pic url', '2020-12-02', '05:40:20', 0, '2020-12-31 09:59:53', '2020-12-31 09:59:53'),
(4, 'How to get 6.0 in IELTS', 31, 2, 'mukit', 'pro pic url', '2020-12-02', '05:40:20', 0, '2021-01-03 08:40:20', '2021-01-03 08:40:20'),
(5, 'English course', 21, 15, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', '2021-01-04', '11:40:02', 5, '2021-01-04 05:40:00', '2021-01-04 05:40:00'),
(6, 'English Advanced', 21, 15, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', '2021-01-04', '11:47:59', 1, '2021-01-04 05:47:57', '2021-01-04 05:47:57'),
(7, 'English Grammar', 21, 15, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', '2021-01-04', '11:52:45', 0, '2021-01-04 05:52:43', '2021-01-04 05:52:43'),
(8, 'English Reading', 21, 15, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', '2021-01-04', '03:47:05', 1, '2021-01-04 09:47:04', '2021-01-04 09:47:04'),
(9, 'IELTS Course', 21, 16, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', '2021-01-04', '05:03:18', 0, '2021-01-04 11:03:16', '2021-01-04 11:03:16'),
(10, 'IELTS Germany', 21, 16, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', '2021-01-04', '05:03:57', 0, '2021-01-04 11:03:54', '2021-01-04 11:03:54'),
(11, 'IELTS USA', 21, 16, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', '2021-01-04', '05:04:24', 1, '2021-01-04 11:04:21', '2021-01-04 11:04:21'),
(12, 'English Speaking', 21, 15, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', '2021-01-06', '07:00:21', 0, '2021-01-06 13:00:23', '2021-01-06 13:00:23'),
(13, 'when', 21, 27, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', '2021-01-07', '04:23:50', 2, '2021-01-07 10:23:51', '2021-01-07 10:23:51'),
(14, 'Learn angular js', 21, 47, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', '2021-12-14', '05:55:20', 1, '2021-12-14 11:55:21', '2021-12-14 11:55:21');

-- --------------------------------------------------------

--
-- Table structure for table `follow_users_maps`
--

CREATE TABLE `follow_users_maps` (
  `id` int(11) NOT NULL,
  `reqfrom_userid` int(11) DEFAULT NULL,
  `reqto_userid` int(11) DEFAULT NULL,
  `follow_type` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `follow_users_maps`
--

INSERT INTO `follow_users_maps` (`id`, `reqfrom_userid`, `reqto_userid`, `follow_type`, `createdAt`, `updatedAt`) VALUES
(34, -1, 31, 1, '2020-11-24 12:22:52', '2020-11-24 12:22:52'),
(39, 21, 33, 1, '2021-01-05 12:52:34', '2021-01-05 12:52:34');

-- --------------------------------------------------------

--
-- Table structure for table `goal choices`
--

CREATE TABLE `goal choices` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `goal_id` int(11) DEFAULT NULL,
  `sub_goal_id` int(11) DEFAULT NULL,
  `sub_goal_name` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goal choices`
--

INSERT INTO `goal choices` (`id`, `user_id`, `goal_id`, `sub_goal_id`, `sub_goal_name`, `createdAt`, `updatedAt`) VALUES
(46, 23, 1, 6, 'DaaD', '2020-11-24 06:30:54', '2020-11-24 06:30:54'),
(47, 23, 1, 7, 'HSP Holland Scholarship', '2020-11-24 06:31:00', '2020-11-24 06:31:00'),
(48, 23, 1, 6, 'DaaD', '2020-11-24 10:00:02', '2020-11-24 10:00:02'),
(49, 23, 1, 7, 'HSP Holland Scholarship', '2020-11-24 10:00:05', '2020-11-24 10:00:05'),
(50, 23, 1, 6, 'DaaD', '2020-11-24 10:10:01', '2020-11-24 10:10:01'),
(51, 23, 1, 7, 'HSP Holland Scholarship', '2020-11-24 10:10:05', '2020-11-24 10:10:05'),
(52, 23, 1, 6, 'DaaD', '2020-11-24 10:14:31', '2020-11-24 10:14:31'),
(53, 20, 1, 6, 'DaaD', '2020-11-24 10:19:38', '2020-11-24 10:19:38'),
(54, 20, 1, 7, 'HSP Holland Scholarship', '2020-11-24 10:19:41', '2020-11-24 10:19:41'),
(55, 20, 7, 1, 'TOEFL iBT', '2020-11-24 10:21:10', '2020-11-24 10:21:10'),
(56, 20, 7, 3, 'TOEFL Junior', '2020-11-24 10:21:16', '2020-11-24 10:21:16'),
(57, 20, 7, 5, 'TOEFL Primary', '2020-11-24 10:21:19', '2020-11-24 10:21:19'),
(58, 25, 7, 5, 'TOEFL Primary', '2020-11-24 10:32:16', '2020-11-24 10:32:16'),
(59, 25, 7, 1, 'TOEFL iBT', '2020-11-24 10:32:20', '2020-11-24 10:32:20'),
(60, 25, 1, 6, 'DaaD', '2020-11-24 10:33:36', '2020-11-24 10:33:36'),
(61, 25, 1, 7, 'HSP Holland Scholarship', '2020-11-24 10:33:40', '2020-11-24 10:33:40'),
(62, 26, 7, 5, 'TOEFL Primary', '2020-11-24 10:51:01', '2020-11-24 10:51:01'),
(63, 21, 1, 6, 'DaaD', '2020-11-24 11:49:59', '2020-11-24 11:49:59'),
(64, 29, 7, 1, 'TOEFL iBT', '2020-11-24 12:03:27', '2020-11-24 12:03:27'),
(65, 20, 7, 4, 'IELTS 6.0', '2020-11-24 12:05:29', '2020-11-24 12:05:29'),
(66, 20, 7, 2, 'TOEFL 6.0', '2020-11-24 12:05:33', '2020-11-24 12:05:33'),
(67, 30, 1, 6, 'DaaD', '2020-11-24 12:23:03', '2020-11-24 12:23:03'),
(68, 30, 1, 7, 'HSP Holland Scholarship', '2020-11-24 12:23:06', '2020-11-24 12:23:06'),
(69, 21, 7, 2, 'TOEFL 6.0', '2020-11-24 12:24:19', '2020-11-24 12:24:19'),
(70, 21, 7, 3, 'TOEFL Junior', '2020-11-24 12:24:22', '2020-11-24 12:24:22'),
(71, 21, 7, 4, 'IELTS 6.0', '2020-11-24 12:24:26', '2020-11-24 12:24:26'),
(72, 21, 1, 7, 'HSP Holland Scholarship', '2020-11-24 12:33:38', '2020-11-24 12:33:38'),
(73, 21, 7, 3, 'TOEFL Junior', '2020-11-24 12:41:56', '2020-11-24 12:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `goal_id` int(11) NOT NULL,
  `goal_name` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goals`
--

INSERT INTO `goals` (`goal_id`, `goal_name`, `createdAt`, `updatedAt`) VALUES
(1, 'Scholarship', NULL, NULL),
(2, 'Qualification Achieve', NULL, NULL),
(3, 'Admit t Vocational School', NULL, NULL),
(4, 'Foreign Language Learn', NULL, NULL),
(5, 'Skill Up', NULL, NULL),
(6, 'Reading/Hobbies/Education', NULL, NULL),
(7, 'TOFEL/IELTS', NULL, NULL),
(8, 'University Examination', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `goal_records`
--

CREATE TABLE `goal_records` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_profile_pic_url` varchar(255) DEFAULT NULL,
  `sub_goal_id` int(11) DEFAULT NULL,
  `sub_goal_title` varchar(255) DEFAULT NULL,
  `achieved_point` decimal(11,0) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `time` time DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goal_records`
--

INSERT INTO `goal_records` (`id`, `user_id`, `user_name`, `user_profile_pic_url`, `sub_goal_id`, `sub_goal_title`, `achieved_point`, `comment`, `date`, `time`, `createdAt`, `updatedAt`) VALUES
(7, 21, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', 6, 'DaaD', '9', '', '2020-12-28 00:00:00', '06:54:00', '2020-12-28 05:55:01', '2020-12-28 05:55:01'),
(8, 21, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', 6, 'DaaD', '9', 'This is Daad course', '2020-12-28 00:00:00', '06:54:00', '2020-12-28 05:55:43', '2020-12-28 05:55:43'),
(9, 21, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', 3, 'TOEFL Junior', '7', '', '2020-12-28 00:00:00', '10:43:00', '2020-12-28 10:43:56', '2020-12-28 10:43:56'),
(10, 21, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-29 09:17:51', '2020-12-29 09:17:51'),
(11, 21, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-29 09:18:40', '2020-12-29 09:18:40'),
(12, 21, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-29 09:26:53', '2020-12-29 09:26:53'),
(13, 21, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', 7, 'HSP Holland Scholarship', '7', '', '2021-02-28 00:00:00', '00:00:00', '2020-12-29 09:40:33', '2020-12-29 09:40:33'),
(17, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', 2, 'TOEFL 6.0', '6', 'achieved 6 in Tofel', '2021-01-07 00:00:00', '03:36:00', '2021-01-07 10:37:26', '2021-01-07 10:37:26'),
(18, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', 3, 'TOEFL Junior', '6', 'Tofel joniour reading', '2021-01-13 00:00:00', '10:02:00', '2021-01-13 07:02:48', '2021-01-13 07:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `notification_msg` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `user_id`, `date`, `time`, `notification_msg`, `createdAt`, `updatedAt`) VALUES
(1, 33, '2021-01-05', '04:11:11', 'test notice', '2020-09-09 00:00:00', '2020-10-28 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `notification_msg` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `date`, `time`, `notification_msg`, `createdAt`, `updatedAt`) VALUES
(1, 33, '2021-01-05', '02:10:09', 'test notification', '2021-01-27 06:11:00', '2020-09-09 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_profile_pic_url` varchar(255) DEFAULT NULL,
  `comment_date` date DEFAULT NULL,
  `comment_time` time DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `post_id`, `user_id`, `user_name`, `user_profile_pic_url`, `comment_date`, `comment_time`, `comment`, `createdAt`, `updatedAt`) VALUES
(1, NULL, 21, 'mmkuki', 'mlmlmlml', '2020-12-01', '00:00:00', 'mkmkmkmk', '2020-12-20 07:16:26', '2020-12-20 07:16:26'),
(2, NULL, 21, 'mmkuki', 'mlmlmlml', '2020-12-01', '00:00:00', 'mkmkmkmk', '2020-12-20 07:18:26', '2020-12-20 07:18:26'),
(3, 44, 21, 'mmkuki', 'mlmlmlml', '2020-12-01', '00:00:00', 'mkmkmkmk', '2020-12-20 07:30:17', '2020-12-20 07:30:17'),
(4, 44, 21, 'mmkuki', 'mlmlmlml', '2020-12-02', '00:00:00', 'mkmkmkmk', '2020-12-20 07:39:24', '2020-12-20 07:39:24'),
(5, 44, 21, 'mmkuki', 'mlmlmlml', '2020-12-02', '00:00:00', 'mkmkmkmk', '2020-12-20 09:40:58', '2020-12-20 09:40:58'),
(6, 44, 21, 'mmkuki', 'mlmlmlml', '2020-12-02', '00:00:00', 'mkmkmkmk', '2020-12-20 11:15:46', '2020-12-20 11:15:46'),
(7, 43, 21, 'test', 'https://a1684265627e.ngrok.io/images/2118321026-9caf-45d6-8227-ff7971a37d74.png', '2020-12-20', '06:39:21', 'This is java book . This book read by test user .', '2020-12-20 12:39:17', '2020-12-20 12:39:17'),
(8, 95, 21, 'test', 'https://00df12868c95.ngrok.io/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', '2020-12-23', '04:41:44', 'nznzkzk', '2020-12-23 10:41:45', '2020-12-23 10:41:45'),
(9, 46, 21, 'test', 'https://00df12868c95.ngrok.io/images/2118321026-9caf-45d6-8227-ff7971a37d74.png', '2020-12-23', '06:39:00', 'This is android book', '2020-12-23 12:39:01', '2020-12-23 12:39:01'),
(10, 43, 21, 'test', 'https://b0bfd1de8b5e.ngrok.io/images/2118321026-9caf-45d6-8227-ff7971a37d74.png', '2021-01-07', '12:43:02', 'test comment', '2021-01-07 06:43:03', '2021-01-07 06:43:03'),
(11, 43, 21, 'test', 'https://b0bfd1de8b5e.ngrok.io/images/2118321026-9caf-45d6-8227-ff7971a37d74.png', '2021-01-07', '04:20:24', 'test comment', '2021-01-07 10:20:25', '2021-01-07 10:20:25'),
(12, 48, 21, 'test', 'https://b0bfd1de8b5e.ngrok.io/images/2118321026-9caf-45d6-8227-ff7971a37d74.png', '2021-01-07', '04:30:49', 'test comment', '2021-01-07 10:30:51', '2021-01-07 10:30:51'),
(13, 114, 21, 'test', 'https://b0bfd1de8b5e.ngrok.io/images/21b888947c-04e8-419a-8764-191818fdd67e.png', '2021-01-07', '04:34:28', 'test comment 2 new post', '2021-01-07 10:34:29', '2021-01-07 10:34:29'),
(14, 46, 21, 'test', 'https://07636cf5ccbf.ngrok.io/images/2118321026-9caf-45d6-8227-ff7971a37d74.png', '2021-01-11', '01:18:51', 'test', '2021-01-11 07:18:52', '2021-01-11 07:18:52'),
(15, 103, 21, 'mukit', 'https://a1de-141-2-185-19.ngrok.io/images/33a7800461-8b00-4aee-83c5-7006a7a23087.png', '2021-12-14', '05:39:41', 'this is atest comment for mukit', '2021-12-14 11:39:42', '2021-12-14 11:39:42');

--
-- Triggers `post_comments`
--
DELIMITER $$
CREATE TRIGGER `Insert_comment` AFTER INSERT ON `post_comments` FOR EACH ROW UPDATE read_records rc
      SET rc.total_comments = ( select count(user_id) from post_comments         where  post_id = new.post_id)
      WHERE id = NEW.post_id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `delete_trigger` AFTER DELETE ON `post_comments` FOR EACH ROW UPDATE read_records rc
      SET rc.total_comments = ( select count(user_id) from post_comments         where  post_id = old.post_id)
      WHERE id = OLD.post_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `like_tye` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`id`, `post_id`, `user_id`, `like_tye`, `createdAt`, `updatedAt`) VALUES
(101, 43, 21, 1, '2020-12-15 12:47:19', '2020-12-15 12:47:19'),
(102, 44, 21, 1, '2020-12-15 12:51:09', '2020-12-15 12:51:09'),
(103, 45, 21, 1, '2020-12-15 13:00:30', '2020-12-15 13:00:30'),
(104, 46, 21, 1, '2020-12-15 13:04:10', '2020-12-15 13:04:10'),
(105, 47, 21, 1, '2020-12-20 06:39:28', '2020-12-20 06:39:28'),
(106, 48, 21, 1, '2020-12-20 06:45:30', '2020-12-20 06:45:30'),
(107, 49, 21, 1, '2021-01-11 09:11:42', '2021-01-11 09:11:42'),
(108, 50, 21, 1, '2021-01-11 09:11:54', '2021-01-11 09:11:54'),
(109, 97, 21, 1, '2021-01-11 09:12:28', '2021-01-11 09:12:28'),
(110, 52, 21, 1, '2021-12-14 11:38:33', '2021-12-14 11:38:33'),
(111, 103, 21, 1, '2021-12-14 11:39:13', '2021-12-14 11:39:13'),
(112, 118, 21, 1, '2021-12-14 11:45:30', '2021-12-14 11:45:30');

--
-- Triggers `post_likes`
--
DELIMITER $$
CREATE TRIGGER `insert_total_like` AFTER INSERT ON `post_likes` FOR EACH ROW UPDATE read_records rc
      SET rc.total_likes = ( select count(like_tye) from post_likes where         post_id = new.POST_id AND like_tye = 1 )
      WHERE id = NEW.post_id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_total_like_after_update` AFTER UPDATE ON `post_likes` FOR EACH ROW UPDATE read_records rc
      SET rc.total_likes = ( select count(like_tye) from post_likes where         post_id = new.POST_id AND like_tye = 1 )
      WHERE id = NEW.post_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `information` varchar(255) DEFAULT NULL,
  `total_follow` int(11) DEFAULT NULL,
  `total_follower` int(11) DEFAULT NULL,
  `total_text_book_in_shelf` int(11) DEFAULT NULL,
  `total_community` int(11) DEFAULT NULL,
  `biography` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `profile_picture` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `username`, `email`, `information`, `total_follow`, `total_follower`, `total_text_book_in_shelf`, `total_community`, `biography`, `createdAt`, `updatedAt`, `profile_picture`) VALUES
(24, 21, 'test', 'test@kaicomsol.com', 'say something about yourshelf', 0, 0, 0, 0, 'place your biography here', '2020-11-24 06:16:52', '2020-11-24 06:16:52', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png'),
(36, 33, 'mukit', 'mukit@gmail.com', 'say something about yourshelf', 0, 0, 0, 0, 'place your biography here', '2020-12-22 13:45:04', '2020-12-22 13:45:04', '/images/33a7800461-8b00-4aee-83c5-7006a7a23087.png');

--
-- Triggers `profiles`
--
DELIMITER $$
CREATE TRIGGER `isert_self_follower` AFTER INSERT ON `profiles` FOR EACH ROW -- Insert record into audit table
   INSERT INTO follow_users_maps
   ( reqfrom_userid,
     	reqto_userid,
     	follow_type,
        createdAt,
        updatedAt
   )
   VALUES
   ( 
     NEW.user_id,
     NEW.user_id,
     1,
     NEW.createdAt,
     NEW.updatedAt)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `read_records`
--

CREATE TABLE `read_records` (
  `id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `profile_picture` longtext,
  `book_title` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `total_reading_time` time DEFAULT NULL,
  `total_chapter` int(11) DEFAULT NULL,
  `total_pages` int(11) DEFAULT NULL,
  `attached_image` varchar(255) DEFAULT NULL,
  `book_image_url` varchar(255) DEFAULT NULL,
  `total_likes` int(11) DEFAULT '0',
  `total_comments` int(11) DEFAULT '0',
  `entry_date` date DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `read_records`
--

INSERT INTO `read_records` (`id`, `book_id`, `user_id`, `username`, `profile_picture`, `book_title`, `details`, `total_reading_time`, `total_chapter`, `total_pages`, `attached_image`, `book_image_url`, `total_likes`, `total_comments`, `entry_date`, `createdAt`, `updatedAt`) VALUES
(43, 131, 21, 'test', '/images/2118321026-9caf-45d6-8227-ff7971a37d74.png', 'Java', 'This java book', '00:02:23', 9, 5, '/images/Java_18321026-9caf-45d6-8227-ff7971a37d74.png', '/images/Java.png', 1, 3, '2020-12-10', '2020-12-10 06:19:43', '2020-12-10 06:19:43'),
(44, 132, 22, 'test', '/images/2118321026-9caf-45d6-8227-ff7971a37d74.png', 'C', 'This is c book', '00:03:35', 9, 3, '/images/C_18321026-9caf-45d6-8227-ff7971a37d74.png', '/images/C.png', 1, 4, '2020-12-10', '2020-12-10 06:27:09', '2020-12-10 06:27:09'),
(45, 133, 21, 'test', '/images/2118321026-9caf-45d6-8227-ff7971a37d74.png', 'Angular', 'This is Angular book', '00:04:10', 6, 9, '/images/Angular_18321026-9caf-45d6-8227-ff7971a37d74.png', '/images/Angular.png', 1, NULL, '2020-12-10', '2020-12-10 06:32:10', '2020-12-10 06:32:10'),
(46, 135, 21, 'test', '/images/2118321026-9caf-45d6-8227-ff7971a37d74.png', 'Android', 'This is android book', '00:04:10', 6, 9, '/images/Android_18321026-9caf-45d6-8227-ff7971a37d74.png', '/images/Android.png', 1, 2, '2020-12-10', '2020-12-10 06:33:38', '2020-12-10 06:33:38'),
(47, 136, 22, 'test', '/images/2118321026-9caf-45d6-8227-ff7971a37d74.png', 'Golang', 'This is golang language', '00:01:16', 7, 5, '/images/Golang_18321026-9caf-45d6-8227-ff7971a37d74.png', '/images/Golang.png', 1, NULL, '2020-12-10', '2020-12-10 06:49:38', '2020-12-10 06:49:38'),
(48, 137, 21, 'test', '/images/2118321026-9caf-45d6-8227-ff7971a37d74.png', 'C++', 'This is c++ book', '00:01:16', 7, 5, '/images/C++_18321026-9caf-45d6-8227-ff7971a37d74.png', '/images/C++.png', 1, 1, '2020-12-10', '2020-12-10 06:50:44', '2020-12-10 06:50:44'),
(49, 138, 21, 'test', '/images/2118321026-9caf-45d6-8227-ff7971a37d74.png', 'React', 'This is recat book', '00:01:16', 7, 5, '/images/React_18321026-9caf-45d6-8227-ff7971a37d74.png', '/images/React.png', 1, NULL, '2020-12-10', '2020-12-10 06:51:20', '2020-12-10 06:51:20'),
(50, 139, 21, 'test', '/images/2118321026-9caf-45d6-8227-ff7971a37d74.png', 'Javascript', 'This is javascript book', '00:01:16', 7, 5, '/images/Javascript_18321026-9caf-45d6-8227-ff7971a37d74.png', '/images/Javascript.png', 1, NULL, '2020-12-10', '2020-12-10 06:52:05', '2020-12-10 06:52:05'),
(51, 140, 21, 'test', '/images/2118321026-9caf-45d6-8227-ff7971a37d74.png', 'php', 'This is php book', '00:01:16', 7, 5, '/images/php_18321026-9caf-45d6-8227-ff7971a37d74.png', '/images/php.png', 0, NULL, '2020-12-10', '2020-12-10 10:08:25', '2020-12-10 10:08:25'),
(52, 141, 21, 'test', '/images/2118321026-9caf-45d6-8227-ff7971a37d74.png', 'html & css', 'This is html and css book', '00:01:16', 7, 5, '/images/html & css_18321026-9caf-45d6-8227-ff7971a37d74.png', '/images/html & css.png', 1, NULL, '2020-12-10', '2020-12-10 10:22:36', '2020-12-10 10:22:36'),
(68, 142, 33, 'test', '', 'python', 'This is python book', '00:01:16', 7, 5, '/images/python_18321026-9caf-45d6-8227-ff7971a37d74.png', '/images/python.png', 0, NULL, '2020-12-10', '2020-12-10 10:54:20', '2020-12-10 10:54:20'),
(96, 132, 21, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', 'C', '', '00:00:00', 8, 7, NULL, '/images/C.png', 0, 0, '2020-12-23', '2020-12-23 11:45:25', '2020-12-23 11:45:25'),
(97, 135, 21, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', 'Android', '', '06:20:00', 6, 7, NULL, '/images/Android.png', 1, 0, '2020-12-23', '2020-12-23 12:20:05', '2020-12-23 12:20:05'),
(98, 136, 21, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', 'Golang', '', '09:16:00', 0, 5, NULL, '/images/Golang.png', 0, 0, '2020-12-24', '2020-12-24 06:16:49', '2020-12-24 06:16:49'),
(99, 141, 21, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', 'html & css', '', '06:23:00', 0, 7, NULL, '/images/html & css.png', 0, 0, '2020-12-24', '2020-12-24 06:24:00', '2020-12-24 06:24:00'),
(100, 141, 21, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', 'html & css', 'This is html book', '08:24:00', 0, 4, '/images/html & css_8b5cf337-a822-417e-b8ae-a323c6d37247.png', '/images/html & css.png', 0, 0, '2020-12-24', '2020-12-24 06:25:03', '2020-12-24 06:25:03'),
(101, 131, 21, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', 'Java', '', '10:36:00', 0, 7, NULL, '/images/Java.png', 0, 0, '2020-12-31', '2020-12-31 13:36:21', '2020-12-31 13:36:21'),
(102, 135, 21, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', 'Android', '', '10:59:00', 0, 7, NULL, '/images/Android.png', 0, 0, '2020-12-31', '2020-12-31 13:59:55', '2020-12-31 13:59:55'),
(103, 144, 33, 'mukit', '/images/33a7800461-8b00-4aee-83c5-7006a7a23087.png', 'React', '', '06:56:00', 0, 9, NULL, '/images/React.png', 1, 1, '2021-01-05', '2021-01-05 12:56:29', '2021-01-05 12:56:29'),
(104, 132, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', 'C', '', '02:47:00', 4, 3, NULL, '/images/C.png', 0, 0, '2021-01-07', '2021-01-07 06:47:36', '2021-01-07 06:47:36'),
(105, 142, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', 'python', '', '02:50:00', 5, 4, NULL, '/images/python.png', 0, 0, '2021-01-07', '2021-01-07 06:50:22', '2021-01-07 06:50:22'),
(106, 132, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', 'C', '', '07:09:00', 0, 5, NULL, '/images/C.png', 0, 0, '2021-01-07', '2021-01-07 07:09:12', '2021-01-07 07:09:12'),
(107, 135, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', 'Android', '', '05:21:00', 0, 6, NULL, '/images/Android.png', 0, 0, '2021-01-07', '2021-01-07 07:21:39', '2021-01-07 07:21:39'),
(108, 139, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', 'Javascript', '', '06:26:00', 0, 6, NULL, '/images/Javascript.png', 0, 0, '2021-01-07', '2021-01-07 07:26:54', '2021-01-07 07:26:54'),
(109, 137, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', 'C++', '', '06:31:00', 0, 7, NULL, '/images/C++.png', 0, 0, '2021-01-07', '2021-01-07 07:32:03', '2021-01-07 07:32:03'),
(110, 143, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', 'Hello', '', '09:48:00', 0, 6, NULL, '/images/Hello.png', 0, 0, '2021-01-07', '2021-01-07 07:48:30', '2021-01-07 07:48:30'),
(111, 142, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', 'python', '', '08:51:00', 0, 6, '/images/python_bc067078-1cd7-4c21-ba25-0428dd3a88f5.png', '/images/python.png', 0, 0, '2021-01-07', '2021-01-07 07:51:13', '2021-01-07 07:51:13'),
(112, 131, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', 'Java', 'Test post', '00:01:46', 5, 4, NULL, '/images/Java.png', 0, 0, '2021-01-07', '2021-01-07 10:27:27', '2021-01-07 10:27:27'),
(113, 139, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', 'Javascript', 'test comment', '02:30:00', 0, 5, NULL, '/images/Javascript.png', 0, 0, '2021-01-07', '2021-01-07 10:32:28', '2021-01-07 10:32:28'),
(114, 139, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', 'Javascript', 'Test comment 2', '00:01:14', 6, 4, '/images/Javascript_bc067078-1cd7-4c21-ba25-0428dd3a88f5.png', '/images/Javascript.png', 0, 1, '2021-01-05', '2021-01-07 10:33:38', '2021-01-07 10:33:38'),
(115, 132, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', 'C', '', '08:09:00', 0, 1, NULL, '/images/C.png', 0, 0, '2021-01-13', '2021-01-13 17:09:46', '2021-01-13 17:09:46'),
(116, 136, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', 'Golang', '', '07:27:00', 0, 5, NULL, '/images/Golang.png', 0, 0, '2021-01-21', '2021-01-21 11:27:26', '2021-01-21 11:27:26'),
(117, 135, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', 'Android', '', '10:23:00', 0, 5, '/images/Android_6b0612f1-991d-4c3d-b038-afbd7665c537.png', '/images/Android.png', 0, 0, '2021-01-24', '2021-01-21 14:08:45', '2021-01-21 14:08:45'),
(118, 139, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', 'Javascript', 'js beginner...', '05:30:00', 1, 20, NULL, '/images/Javascript.png', 1, 0, '2021-12-14', '2021-12-14 11:43:48', '2021-12-14 11:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2020-09-09 00:00:00', '2020-09-09 00:00:00'),
(2, 'moderator', '2020-09-29 00:00:00', '2020-09-29 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `subgoals`
--

CREATE TABLE `subgoals` (
  `sub_goal_id` int(11) NOT NULL,
  `goal_id` int(11) DEFAULT NULL,
  `sub_goal_name` varchar(255) DEFAULT NULL,
  `total_enroll_person` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subgoals`
--

INSERT INTO `subgoals` (`sub_goal_id`, `goal_id`, `sub_goal_name`, `total_enroll_person`, `createdAt`, `updatedAt`) VALUES
(1, 7, 'TOEFL iBT', NULL, '2020-10-26 00:00:00', '2020-10-19 00:00:00'),
(2, 7, 'TOEFL 6.0', 123, NULL, NULL),
(3, 7, 'TOEFL Junior', 220, '2020-09-09 00:00:00', '2020-09-09 00:00:00'),
(4, 7, 'IELTS 6.0', 345, '2020-09-09 00:00:00', '2020-09-09 00:00:00'),
(5, 7, 'TOEFL Primary', NULL, NULL, NULL),
(6, 1, 'DaaD', NULL, NULL, NULL),
(7, 1, 'HSP Holland Scholarship', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `topic_comments`
--

CREATE TABLE `topic_comments` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_profile_pic_url` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topic_comments`
--

INSERT INTO `topic_comments` (`id`, `topic_id`, `user_id`, `user_name`, `user_profile_pic_url`, `date`, `time`, `comment`, `createdAt`, `updatedAt`) VALUES
(2, 2, 31, 'mukit', 'pro pic url', '2020-12-02', '05:40:20', NULL, '2020-12-31 10:08:12', '2020-12-31 10:08:12'),
(3, 2, 31, 'mukit', 'pro pic url', '2020-12-02', '05:40:20', 'dofjojofjorjfor', '2020-12-31 10:09:31', '2020-12-31 10:09:31'),
(4, 5, 21, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', '2021-01-04', '11:59:38', 'This is english course', '2021-01-04 05:59:36', '2021-01-04 05:59:36'),
(5, 5, 21, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', '2021-01-04', '12:05:50', 'This is very fine course', '2021-01-04 06:05:48', '2021-01-04 06:05:48'),
(6, 5, 21, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', '2021-01-04', '12:08:26', 'This is very useful course', '2021-01-04 06:08:25', '2021-01-04 06:08:25'),
(7, 5, 21, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', '2021-01-04', '12:15:52', 'This is very important course', '2021-01-04 06:15:50', '2021-01-04 06:15:50'),
(8, 8, 21, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', '2021-01-04', '03:47:58', 'Reading english', '2021-01-04 09:47:56', '2021-01-04 09:47:56'),
(9, 11, 21, 'test', '/images/21d23df5be-0e73-422a-b6dd-1058e6a4a110.png', '2021-01-04', '05:05:12', 'It is ielts for usa', '2021-01-04 11:05:10', '2021-01-04 11:05:10'),
(10, 13, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', '2021-01-07', '04:25:32', 'Hi', '2021-01-07 10:25:33', '2021-01-07 10:25:33'),
(11, 13, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', '2021-01-07', '04:25:44', 'How it works', '2021-01-07 10:25:45', '2021-01-07 10:25:45'),
(12, 5, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', '2021-01-07', '04:35:57', 'test comment on topic', '2021-01-07 10:35:58', '2021-01-07 10:35:58'),
(13, 6, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', '2021-01-13', '05:19:16', 'This is advance course', '2021-01-13 11:19:16', '2021-01-13 11:19:16'),
(14, 14, 21, 'test', '/images/21b888947c-04e8-419a-8764-191818fdd67e.png', '2021-12-14', '05:57:06', 'test 1', '2021-12-14 11:57:07', '2021-12-14 11:57:07');

--
-- Triggers `topic_comments`
--
DELIMITER $$
CREATE TRIGGER `add total comment per topic` AFTER INSERT ON `topic_comments` FOR EACH ROW UPDATE community_topics rc
      SET rc.total_comment = ( select count(user_id) from topic_comments         where  	topic_id = new.topic_id)
      WHERE rc.topic_id = NEW.topic_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(21, 'test', 'test@kaicomsol.com', '$2a$08$c1VUHNL0B22JZQP1zu0HCuRZJ21t30E4LZ1N/zmht08dQ4LZ7.UX2', '2020-11-24 06:16:52', '2020-11-24 06:16:52'),
(33, 'mukit', 'mukit@gmail.com', '$2a$08$c1VUHNL0B22JZQP1zu0HCuRZJ21t30E4LZ1N/zmht08dQ4LZ7.UX2', '2020-12-22 13:45:04', '2020-12-22 13:45:04');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `after_insert_new_user` AFTER INSERT ON `users` FOR EACH ROW -- Insert record into audit table
   INSERT INTO profiles
   ( user_id,
     	username,
     	email,
   information,
    total_follow,
    total_follower,
    total_community,
    biography,
    total_text_book_in_shelf,
    createdAt,
    updatedAt,
    profile_picture
    
   )
   VALUES
   ( NEW.id,
     NEW.username,
     NEW.email,
     "say something about yourshelf",
     0,
     0,
     0,
      "place your biography here",
     0,
   NEW.createdAt,
  NEW.updatedAt,
    NULL)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_insert_new_user_basic` AFTER INSERT ON `users` FOR EACH ROW INSERT INTO basic_informations
   ( user_id)
   VALUES
   ( NEW.id)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('2020-11-24 06:16:53', '2020-11-24 06:16:53', 1, 21),
('2020-12-22 13:45:04', '2020-12-22 13:45:04', 1, 33),
('2020-11-24 06:16:53', '2020-11-24 06:16:53', 2, 21),
('2020-12-22 13:45:04', '2020-12-22 13:45:04', 2, 33);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basic_informations`
--
ALTER TABLE `basic_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `book_likes`
--
ALTER TABLE `book_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_reviews`
--
ALTER TABLE `book_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communities`
--
ALTER TABLE `communities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `community_members`
--
ALTER TABLE `community_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `community_topics`
--
ALTER TABLE `community_topics`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `follow_users_maps`
--
ALTER TABLE `follow_users_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goal choices`
--
ALTER TABLE `goal choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`goal_id`);

--
-- Indexes for table `goal_records`
--
ALTER TABLE `goal_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `read_records`
--
ALTER TABLE `read_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subgoals`
--
ALTER TABLE `subgoals`
  ADD PRIMARY KEY (`sub_goal_id`);

--
-- Indexes for table `topic_comments`
--
ALTER TABLE `topic_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basic_informations`
--
ALTER TABLE `basic_informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `book_likes`
--
ALTER TABLE `book_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `book_reviews`
--
ALTER TABLE `book_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `communities`
--
ALTER TABLE `communities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `community_members`
--
ALTER TABLE `community_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `community_topics`
--
ALTER TABLE `community_topics`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `follow_users_maps`
--
ALTER TABLE `follow_users_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `goal choices`
--
ALTER TABLE `goal choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `goal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `goal_records`
--
ALTER TABLE `goal_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `read_records`
--
ALTER TABLE `read_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `subgoals`
--
ALTER TABLE `subgoals`
  MODIFY `sub_goal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `topic_comments`
--
ALTER TABLE `topic_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
