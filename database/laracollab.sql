-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 05, 2025 at 10:17 PM
-- Server version: 9.2.0
-- PHP Version: 8.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laracollab`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity_capable_id` bigint UNSIGNED NOT NULL,
  `activity_capable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `project_id`, `user_id`, `title`, `subtitle`, `activity_capable_id`, `activity_capable_type`, `created_at`) VALUES
(1, 1, 1, 'New project', '\"RBB WEBSITE\" was created by Admin', 1, 'App\\Models\\Project', '2025-06-05 16:24:48'),
(2, 1, 1, 'New task', '\"Website setup on local\" was created by Admin', 1, 'App\\Models\\Task', '2025-06-05 16:26:35'),
(3, 2, 1, 'New project', '\"RBB INTRANET\" was created by Admin', 2, 'App\\Models\\Project', '2025-06-05 16:27:11'),
(4, 2, 1, 'New task', '\"Branch Phone Number update, new branch add on db\" was created by Admin', 2, 'App\\Models\\Task', '2025-06-05 16:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` bigint UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint UNSIGNED NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci,
  `new_values` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(1023) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'created', 'App\\Models\\User', 5, '[]', '{\"name\":\"Subarna Maharjan\",\"job_title\":\"SR ASST\",\"phone\":null,\"rate\":0,\"email\":\"subarna.maharjan@rbb.com.np\",\"id\":5}', 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:23:40', '2025-06-05 16:23:40'),
(2, 'App\\Models\\User', 1, 'updated', 'App\\Models\\User', 5, '{\"avatar\":null}', '{\"avatar\":null}', 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:23:40', '2025-06-05 16:23:40'),
(3, 'App\\Models\\User', 1, 'created', 'App\\Models\\User', 6, '[]', '{\"name\":\"Mithelesh Yadav\",\"job_title\":\"SR ASST\",\"phone\":null,\"rate\":0,\"email\":\"mithelesh.yadav@rbb.com.np\",\"id\":6}', 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:24:24', '2025-06-05 16:24:24'),
(4, 'App\\Models\\User', 1, 'updated', 'App\\Models\\User', 6, '{\"avatar\":null}', '{\"avatar\":null}', 'http://localhost:8000/users', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:24:26', '2025-06-05 16:24:26'),
(5, 'App\\Models\\User', 1, 'created', 'App\\Models\\Project', 1, '[]', '{\"name\":\"RBB WEBSITE\",\"description\":\"RBB MAIN WEBSITE\",\"client_company_id\":\"2\",\"rate\":0,\"status\":2,\"id\":1}', 'http://localhost:8000/projects', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:24:48', '2025-06-05 16:24:48'),
(6, 'App\\Models\\User', 1, 'created', 'App\\Models\\TaskGroup', 1, '[]', '{\"name\":\"Backlog\",\"project_id\":1,\"order_column\":1,\"id\":1}', 'http://localhost:8000/projects', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:24:48', '2025-06-05 16:24:48'),
(7, 'App\\Models\\User', 1, 'created', 'App\\Models\\TaskGroup', 2, '[]', '{\"name\":\"Todo\",\"project_id\":1,\"order_column\":2,\"id\":2}', 'http://localhost:8000/projects', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:24:48', '2025-06-05 16:24:48'),
(8, 'App\\Models\\User', 1, 'created', 'App\\Models\\TaskGroup', 3, '[]', '{\"name\":\"In progress\",\"project_id\":1,\"order_column\":3,\"id\":3}', 'http://localhost:8000/projects', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:24:48', '2025-06-05 16:24:48'),
(9, 'App\\Models\\User', 1, 'created', 'App\\Models\\TaskGroup', 4, '[]', '{\"name\":\"QA\",\"project_id\":1,\"order_column\":4,\"id\":4}', 'http://localhost:8000/projects', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:24:48', '2025-06-05 16:24:48'),
(10, 'App\\Models\\User', 1, 'created', 'App\\Models\\TaskGroup', 5, '[]', '{\"name\":\"Done\",\"project_id\":1,\"order_column\":5,\"id\":5}', 'http://localhost:8000/projects', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:24:48', '2025-06-05 16:24:48'),
(11, 'App\\Models\\User', 1, 'created', 'App\\Models\\TaskGroup', 6, '[]', '{\"name\":\"Deployed\",\"project_id\":1,\"order_column\":6,\"id\":6}', 'http://localhost:8000/projects', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:24:48', '2025-06-05 16:24:48'),
(12, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Project', 1, '{\"status\":2}', '{\"status\":\"6\"}', 'http://localhost:8000/projects/1', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:25:46', '2025-06-05 16:25:46'),
(13, 'App\\Models\\User', 1, 'created', 'App\\Models\\Task', 1, '[]', '{\"group_id\":\"3\",\"created_by_user_id\":1,\"assigned_to_user_id\":\"6\",\"name\":\"Website setup on local\",\"number\":1,\"description\":\"<p>Please setup <a target=\\\"_blank\\\" rel=\\\"noopener noreferrer nofollow\\\" href=\\\"http:\\/\\/rbb.com.np\\\">rbb.com.np<\\/a> on your local<\\/p>\",\"due_on\":null,\"estimation\":null,\"hidden_from_clients\":\"0\",\"billable\":\"1\",\"completed_at\":null,\"project_id\":1,\"order_column\":1,\"id\":1}', 'http://localhost:8000/projects/1/tasks', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:26:35', '2025-06-05 16:26:35'),
(14, 'App\\Models\\User', 1, 'created', 'App\\Models\\Project', 2, '[]', '{\"name\":\"RBB INTRANET\",\"description\":\"RBB INTRANET\",\"client_company_id\":\"2\",\"rate\":0,\"status\":2,\"id\":2}', 'http://localhost:8000/projects', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:27:11', '2025-06-05 16:27:11'),
(15, 'App\\Models\\User', 1, 'created', 'App\\Models\\TaskGroup', 7, '[]', '{\"name\":\"Backlog\",\"project_id\":2,\"order_column\":7,\"id\":7}', 'http://localhost:8000/projects', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:27:11', '2025-06-05 16:27:11'),
(16, 'App\\Models\\User', 1, 'created', 'App\\Models\\TaskGroup', 8, '[]', '{\"name\":\"Todo\",\"project_id\":2,\"order_column\":8,\"id\":8}', 'http://localhost:8000/projects', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:27:11', '2025-06-05 16:27:11'),
(17, 'App\\Models\\User', 1, 'created', 'App\\Models\\TaskGroup', 9, '[]', '{\"name\":\"In progress\",\"project_id\":2,\"order_column\":9,\"id\":9}', 'http://localhost:8000/projects', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:27:11', '2025-06-05 16:27:11'),
(18, 'App\\Models\\User', 1, 'created', 'App\\Models\\TaskGroup', 10, '[]', '{\"name\":\"QA\",\"project_id\":2,\"order_column\":10,\"id\":10}', 'http://localhost:8000/projects', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:27:11', '2025-06-05 16:27:11'),
(19, 'App\\Models\\User', 1, 'created', 'App\\Models\\TaskGroup', 11, '[]', '{\"name\":\"Done\",\"project_id\":2,\"order_column\":11,\"id\":11}', 'http://localhost:8000/projects', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:27:11', '2025-06-05 16:27:11'),
(20, 'App\\Models\\User', 1, 'created', 'App\\Models\\TaskGroup', 12, '[]', '{\"name\":\"Deployed\",\"project_id\":2,\"order_column\":12,\"id\":12}', 'http://localhost:8000/projects', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:27:11', '2025-06-05 16:27:11'),
(21, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Project', 2, '{\"status\":2}', '{\"status\":\"6\"}', 'http://localhost:8000/projects/2', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:27:21', '2025-06-05 16:27:21'),
(22, 'App\\Models\\User', 1, 'created', 'App\\Models\\Task', 2, '[]', '{\"group_id\":\"8\",\"created_by_user_id\":1,\"assigned_to_user_id\":\"6\",\"name\":\"Branch Phone Number update, new branch add on db\",\"number\":1,\"description\":\"<p>Please update branch phone number<\\/p>\",\"due_on\":null,\"estimation\":null,\"hidden_from_clients\":\"0\",\"billable\":\"1\",\"completed_at\":null,\"project_id\":2,\"order_column\":2,\"id\":2}', 'http://localhost:8000/projects/2/tasks', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:28:02', '2025-06-05 16:28:02'),
(23, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Task', 2, '{\"order_column\":2}', '{\"order_column\":1}', 'http://localhost:8000/projects/2/tasks', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:28:02', '2025-06-05 16:28:02'),
(24, 'App\\Models\\User', 6, 'updated', 'App\\Models\\Task', 2, '{\"group_id\":8}', '{\"group_id\":\"11\"}', 'http://localhost:8000/projects/2/tasks/2', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:31:16', '2025-06-05 16:31:16'),
(25, 'App\\Models\\User', 6, 'updated', 'App\\Models\\Task', 2, '{\"order_column\":1}', '{\"order_column\":0}', 'http://localhost:8000/projects/2/tasks/2', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', NULL, '2025-06-05 16:31:16', '2025-06-05 16:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `client_companies`
--

CREATE TABLE `client_companies` (
  `id` bigint UNSIGNED NOT NULL,
  `country_id` bigint UNSIGNED DEFAULT NULL,
  `currency_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_companies`
--

INSERT INTO `client_companies` (`id`, `country_id`, `currency_id`, `name`, `address`, `postal_code`, `city`, `email`, `phone`, `web`, `iban`, `swift`, `business_id`, `tax_id`, `vat`, `created_at`, `updated_at`, `archived_at`) VALUES
(1, NULL, 70, 'BitsKraft', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-06 08:06:23', '2025-03-06 08:06:23', NULL),
(2, NULL, 70, 'Internal Development Unit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-16 20:28:14', '2025-03-16 20:28:14', NULL),
(3, NULL, 70, 'Nimble Info', 'Kathmandu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-05 19:25:36', '2025-05-05 19:25:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_company`
--

CREATE TABLE `client_company` (
  `client_id` bigint UNSIGNED NOT NULL,
  `client_company_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_company`
--

INSERT INTO `client_company` (`client_id`, `client_company_id`) VALUES
(2, 1),
(4, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Antarctica'),
(4, 'Algeria'),
(5, 'American Samoa'),
(6, 'Andorra'),
(7, 'Angola'),
(8, 'Antigua and Barbuda'),
(9, 'Azerbaijan'),
(10, 'Argentina'),
(11, 'Australia'),
(12, 'Austria'),
(13, 'Bahamas'),
(14, 'Bahrain'),
(15, 'Bangladesh'),
(16, 'Armenia'),
(17, 'Barbados'),
(18, 'Belgium'),
(19, 'Bermuda'),
(20, 'Bhutan'),
(21, 'Bolivia, Plurinational State of'),
(22, 'Bosnia and Herzegovina'),
(23, 'Botswana'),
(24, 'Bouvet Island'),
(25, 'Brazil'),
(26, 'Belize'),
(27, 'British Indian Ocean Territory'),
(28, 'Solomon Islands'),
(29, 'Virgin Islands, British'),
(30, 'Brunei Darussalam'),
(31, 'Bulgaria'),
(32, 'Myanmar'),
(33, 'Burundi'),
(34, 'Belarus'),
(35, 'Cambodia'),
(36, 'Cameroon'),
(37, 'Canada'),
(38, 'Cape Verde'),
(39, 'Cayman Islands'),
(40, 'Central African Republic'),
(41, 'Sri Lanka'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Taiwan, Province of China'),
(46, 'Christmas Island'),
(47, 'Cocos (Keeling) Islands'),
(48, 'Colombia'),
(49, 'Comoros'),
(50, 'Mayotte'),
(51, 'Congo'),
(52, 'Congo, the Democratic Republic of the'),
(53, 'Cook Islands'),
(54, 'Costa Rica'),
(55, 'Croatia'),
(56, 'Cuba'),
(57, 'Cyprus'),
(58, 'Czechia'),
(59, 'Benin'),
(60, 'Denmark'),
(61, 'Dominica'),
(62, 'Dominican Republic'),
(63, 'Ecuador'),
(64, 'El Salvador'),
(65, 'Equatorial Guinea'),
(66, 'Ethiopia'),
(67, 'Eritrea'),
(68, 'Estonia'),
(69, 'Faroe Islands'),
(70, 'Falkland Islands (Malvinas)'),
(71, 'South Georgia and the South Sandwich Islands'),
(72, 'Fiji'),
(73, 'Finland'),
(74, 'Åland Islands'),
(75, 'France'),
(76, 'French Guiana'),
(77, 'French Polynesia'),
(78, 'French Southern Territories'),
(79, 'Djibouti'),
(80, 'Gabon'),
(81, 'Georgia'),
(82, 'Gambia'),
(83, 'Palestine'),
(84, 'Germany'),
(85, 'Ghana'),
(86, 'Gibraltar'),
(87, 'Kiribati'),
(88, 'Greece'),
(89, 'Greenland'),
(90, 'Grenada'),
(91, 'Guadeloupe'),
(92, 'Guam'),
(93, 'Guatemala'),
(94, 'Guinea'),
(95, 'Guyana'),
(96, 'Haiti'),
(97, 'Heard Island and McDonald Islands'),
(98, 'Holy See (Vatican City State)'),
(99, 'Honduras'),
(100, 'Hong Kong'),
(101, 'Hungary'),
(102, 'Iceland'),
(103, 'India'),
(104, 'Indonesia'),
(105, 'Iran, Islamic Republic of'),
(106, 'Iraq'),
(107, 'Ireland'),
(108, 'Israel'),
(109, 'Italy'),
(110, 'Côte d\'Ivoire'),
(111, 'Jamaica'),
(112, 'Japan'),
(113, 'Kazakhstan'),
(114, 'Jordan'),
(115, 'Kenya'),
(116, 'Korea, Democratic People\'s Republic of'),
(117, 'Korea, Republic of'),
(118, 'Kuwait'),
(119, 'Kyrgyzstan'),
(120, 'Lao People\'s Democratic Republic'),
(121, 'Lebanon'),
(122, 'Lesotho'),
(123, 'Latvia'),
(124, 'Liberia'),
(125, 'Libya'),
(126, 'Liechtenstein'),
(127, 'Lithuania'),
(128, 'Luxembourg'),
(129, 'Macao'),
(130, 'Madagascar'),
(131, 'Malawi'),
(132, 'Malaysia'),
(133, 'Maldives'),
(134, 'Mali'),
(135, 'Malta'),
(136, 'Martinique'),
(137, 'Mauritania'),
(138, 'Mauritius'),
(139, 'Mexico'),
(140, 'Monaco'),
(141, 'Mongolia'),
(142, 'Moldova, Republic of'),
(143, 'Montenegro'),
(144, 'Montserrat'),
(145, 'Morocco'),
(146, 'Mozambique'),
(147, 'Oman'),
(148, 'Namibia'),
(149, 'Nauru'),
(150, 'Nepal'),
(151, 'Netherlands'),
(152, 'Curaçao'),
(153, 'Aruba'),
(154, 'Sint Maarten (Dutch part)'),
(155, 'Bonaire, Sint Eustatius and Saba'),
(156, 'New Caledonia'),
(157, 'Vanuatu'),
(158, 'New Zealand'),
(159, 'Nicaragua'),
(160, 'Niger'),
(161, 'Nigeria'),
(162, 'Niue'),
(163, 'Norfolk Island'),
(164, 'Norway'),
(165, 'Northern Mariana Islands'),
(166, 'United States Minor Outlying Islands'),
(167, 'Micronesia, Federated States of'),
(168, 'Marshall Islands'),
(169, 'Palau'),
(170, 'Pakistan'),
(171, 'Panama'),
(172, 'Papua New Guinea'),
(173, 'Paraguay'),
(174, 'Peru'),
(175, 'Philippines'),
(176, 'Pitcairn'),
(177, 'Poland'),
(178, 'Portugal'),
(179, 'Guinea-Bissau'),
(180, 'Timor-Leste'),
(181, 'Puerto Rico'),
(182, 'Qatar'),
(183, 'Réunion'),
(184, 'Romania'),
(185, 'Russian Federation'),
(186, 'Rwanda'),
(187, 'Saint Barthélemy'),
(188, 'Saint Helena, Ascension and Tristan da Cunha'),
(189, 'Saint Kitts and Nevis'),
(190, 'Anguilla'),
(191, 'Saint Lucia'),
(192, 'Saint Martin (French part)'),
(193, 'Saint Pierre and Miquelon'),
(194, 'Saint Vincent and the Grenadines'),
(195, 'San Marino'),
(196, 'Sao Tome and Principe'),
(197, 'Saudi Arabia'),
(198, 'Senegal'),
(199, 'Serbia'),
(200, 'Seychelles'),
(201, 'Sierra Leone'),
(202, 'Singapore'),
(203, 'Slovakia'),
(204, 'Viet Nam'),
(205, 'Slovenia'),
(206, 'Somalia'),
(207, 'South Africa'),
(208, 'Zimbabwe'),
(209, 'Spain'),
(210, 'South Sudan'),
(211, 'Sudan'),
(212, 'Western Sahara'),
(213, 'Suriname'),
(214, 'Svalbard and Jan Mayen'),
(215, 'Eswatini'),
(216, 'Sweden'),
(217, 'Switzerland'),
(218, 'Syrian Arab Republic'),
(219, 'Tajikistan'),
(220, 'Thailand'),
(221, 'Togo'),
(222, 'Tokelau'),
(223, 'Tonga'),
(224, 'Trinidad and Tobago'),
(225, 'United Arab Emirates'),
(226, 'Tunisia'),
(227, 'Turkey'),
(228, 'Turkmenistan'),
(229, 'Turks and Caicos Islands'),
(230, 'Tuvalu'),
(231, 'Uganda'),
(232, 'Ukraine'),
(233, 'North Macedonia'),
(234, 'Egypt'),
(235, 'United Kingdom'),
(236, 'Guernsey'),
(237, 'Jersey'),
(238, 'Isle of Man'),
(239, 'Tanzania, United Republic of'),
(240, 'United States'),
(241, 'Virgin Islands, U.S.'),
(242, 'Burkina Faso'),
(243, 'Uruguay'),
(244, 'Uzbekistan'),
(245, 'Venezuela, Bolivarian Republic of'),
(246, 'Wallis and Futuna'),
(247, 'Samoa'),
(248, 'Yemen'),
(249, 'Zambia');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decimals` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `decimals`) VALUES
(1, 'Afghani', 'AFN', '؋', 2),
(2, 'Lek', 'ALL', 'Lek', 2),
(3, 'Netherlands Antillian Guilder', 'ANG', 'ƒ', 2),
(4, 'Argentine Peso', 'ARS', '$', 2),
(5, 'Australian Dollar', 'AUD', '$', 2),
(6, 'Aruban Guilder', 'AWG', 'ƒ', 2),
(7, 'Azerbaijanian Manat', 'AZN', 'ман', 2),
(8, 'Convertible Marks', 'BAM', 'KM', 2),
(9, 'Bangladeshi Taka', 'BDT', '৳', 2),
(10, 'Barbados Dollar', 'BBD', '$', 2),
(11, 'Bulgarian Lev', 'BGN', 'лв', 2),
(12, 'Bermudian Dollar', 'BMD', '$', 2),
(13, 'Brunei Dollar', 'BND', '$', 2),
(14, 'BOV Boliviano Mvdol', 'BOB', '$b', 2),
(15, 'Brazilian Real', 'BRL', 'R$', 2),
(16, 'Bahamian Dollar', 'BSD', '$', 2),
(17, 'Pula', 'BWP', 'P', 2),
(18, 'Belarussian Ruble', 'BYR', '₽', 2),
(19, 'Belize Dollar', 'BZD', 'BZ$', 2),
(20, 'Canadian Dollar', 'CAD', '$', 2),
(21, 'Swiss Franc', 'CHF', 'CHF', 2),
(22, 'CLF Chilean Peso Unidades de fomento', 'CLP', '$', 0),
(23, 'Yuan Renminbi', 'CNY', '¥', 2),
(24, 'COU Colombian Peso Unidad de Valor Real', 'COP', '$', 2),
(25, 'Costa Rican Colon', 'CRC', '₡', 2),
(26, 'CUC Cuban Peso Peso Convertible', 'CUP', '₱', 2),
(27, 'Czech Koruna', 'CZK', 'Kč', 2),
(28, 'Danish Krone', 'DKK', 'kr', 2),
(29, 'Dominican Peso', 'DOP', 'RD$', 2),
(30, 'Egyptian Pound', 'EGP', '£', 2),
(31, 'Euro', 'EUR', '€', 2),
(32, 'Fiji Dollar', 'FJD', '$', 2),
(33, 'Falkland Islands Pound', 'FKP', '£', 2),
(34, 'Pound Sterling', 'GBP', '£', 2),
(35, 'Gibraltar Pound', 'GIP', '£', 2),
(36, 'Quetzal', 'GTQ', 'Q', 2),
(37, 'Guyana Dollar', 'GYD', '$', 2),
(38, 'Hong Kong Dollar', 'HKD', '$', 2),
(39, 'Lempira', 'HNL', 'L', 2),
(40, 'Croatian Kuna', 'HRK', 'kn', 2),
(41, 'Forint', 'HUF', 'Ft', 2),
(42, 'Rupiah', 'IDR', 'Rp', 2),
(43, 'New Israeli Sheqel', 'ILS', '₪', 2),
(44, 'Iranian Rial', 'IRR', '﷼', 2),
(45, 'Iceland Krona', 'ISK', 'kr', 0),
(46, 'Jamaican Dollar', 'JMD', 'J$', 2),
(47, 'Yen', 'JPY', '¥', 0),
(48, 'Som', 'KGS', 'лв', 2),
(49, 'Riel', 'KHR', '៛', 2),
(50, 'North Korean Won', 'KPW', '₩', 2),
(51, 'Won', 'KRW', '₩', 0),
(52, 'Cayman Islands Dollar', 'KYD', '$', 2),
(53, 'Tenge', 'KZT', 'лв', 2),
(54, 'Kip', 'LAK', '₭', 0),
(55, 'Lebanese Pound', 'LBP', '£', 2),
(56, 'Sri Lanka Rupee', 'LKR', '₨', 2),
(57, 'Liberian Dollar', 'LRD', '$', 2),
(58, 'Lithuanian Litas', 'LTL', 'Lt', 2),
(59, 'Latvian Lats', 'LVL', 'Ls', 2),
(60, 'Moroccan Dirham', 'MAD', 'Dhs', 2),
(61, 'Denar', 'MKD', 'ден', 2),
(62, 'Tugrik', 'MNT', '₮', 2),
(63, 'Mauritius Rupee', 'MUR', '₨', 2),
(64, 'MXV Mexican Peso Mexican Unidad de Inversion (UDI]', 'MXN', '$', 2),
(65, 'Malaysian Ringgit', 'MYR', 'RM', 2),
(66, 'Metical', 'MZN', 'MT', 2),
(67, 'Naira', 'NGN', '₦', 2),
(68, 'Cordoba Oro', 'NIO', 'C$', 2),
(69, 'Norwegian Krone', 'NOK', 'kr', 2),
(70, 'Nepalese Rupee', 'NPR', '₨', 2),
(71, 'New Zealand Dollar', 'NZD', '$', 2),
(72, 'Rial Omani', 'OMR', '﷼', 3),
(73, 'USD Balboa US Dollar', 'PAB', 'B/.', 2),
(74, 'Nuevo Sol', 'PEN', 'S/.', 2),
(75, 'Philippine Peso', 'PHP', 'Php', 2),
(76, 'Pakistan Rupee', 'PKR', '₨', 2),
(77, 'Zloty', 'PLN', 'zł', 2),
(78, 'Guarani', 'PYG', 'Gs', 0),
(79, 'Qatari Rial', 'QAR', '﷼', 2),
(80, 'New Leu', 'RON', 'lei', 2),
(81, 'Serbian Dinar', 'RSD', 'Дин.', 2),
(82, 'Russian Ruble', 'RUB', 'руб', 2),
(83, 'Saudi Riyal', 'SAR', '﷼', 2),
(84, 'Solomon Islands Dollar', 'SBD', '$', 2),
(85, 'Seychelles Rupee', 'SCR', '₨', 2),
(86, 'Swedish Krona', 'SEK', 'kr', 2),
(87, 'Singapore Dollar', 'SGD', '$', 2),
(88, 'Saint Helena Pound', 'SHP', '£', 2),
(89, 'Somali Shilling', 'SOS', 'S', 2),
(90, 'Surinam Dollar', 'SRD', '$', 2),
(91, 'USD El Salvador Colon US Dollar', 'SVC', '$', 2),
(92, 'Syrian Pound', 'SYP', '£', 2),
(93, 'Baht', 'THB', '฿', 2),
(94, 'Turkish Lira', 'TRY', 'TL', 2),
(95, 'Trinidad and Tobago Dollar', 'TTD', 'TT$', 2),
(96, 'New Taiwan Dollar', 'TWD', 'NT$', 2),
(97, 'Hryvnia', 'UAH', '₴', 2),
(98, 'US Dollar', 'USD', '$', 2),
(99, 'UYI Uruguay Peso en Unidades Indexadas', 'UYU', '$U', 0),
(100, 'Uzbekistan Sum', 'UZS', 'лв', 2),
(101, 'Bolivar Fuerte', 'VEF', 'Bs', 2),
(102, 'Dong', 'VND', '₫', 2),
(103, 'East Caribbean Dollar', 'XCD', '$', 2),
(104, 'Yemeni Rial', 'YER', '﷼', 2),
(105, 'Rand', 'ZAR', 'R', 2);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL COMMENT 'user_id',
  `favoriteable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favoriteable_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint UNSIGNED NOT NULL,
  `client_company_id` bigint UNSIGNED NOT NULL,
  `created_by_user_id` bigint UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `amount` int UNSIGNED NOT NULL,
  `amount_with_tax` int UNSIGNED DEFAULT NULL,
  `hourly_rate` int UNSIGNED DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `name`, `color`, `archived_at`, `created_at`, `updated_at`) VALUES
(1, 'Confirmed', '#37B24D', NULL, NULL, NULL),
(2, 'Estimate', '#AE3EC9', NULL, NULL, NULL),
(3, 'Blocked', '#F03E3E', NULL, NULL, NULL),
(4, 'Bug', '#D6336C', NULL, NULL, NULL),
(5, 'Rework', '#F76707', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `label_task`
--

CREATE TABLE `label_task` (
  `label_id` bigint UNSIGNED NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `label_task`
--

INSERT INTO `label_task` (`label_id`, `task_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(4, 2),
(1, 3),
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2018_12_14_000000_create_favorites_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_26_165503_create_permission_tables', 1),
(6, '2023_10_31_105255_create_jobs_table', 1),
(7, '2023_10_31_113749_create_failed_jobs_table', 1),
(8, '2023_11_01_120111_create_labels_table', 1),
(9, '2023_11_01_182514_add_archived_at_to_roles', 1),
(10, '2023_11_02_153937_create_owner_companies_table', 1),
(11, '2023_11_02_165827_create_currencies_table', 1),
(12, '2023_11_03_134217_create_countries_table', 1),
(13, '2023_11_03_190241_create_client_companies_table', 1),
(14, '2023_11_04_104543_create_client_company_pivot_table', 1),
(15, '2023_11_06_094257_create_projects_table', 1),
(16, '2023_11_06_153749_create_project_user_access', 1),
(17, '2023_11_07_131704_create_task_groups_table', 1),
(18, '2023_11_07_192734_create_tasks_table', 1),
(19, '2023_11_10_144123_create_label_task_pivot_table', 1),
(20, '2023_11_15_220141_create_subscribe_task', 1),
(21, '2023_11_15_220222_create_attachments', 1),
(22, '2023_11_16_144304_create_notifications_table', 1),
(23, '2023_11_17_211110_create_time_logs_table', 1),
(24, '2023_11_18_193550_create_comments_table', 1),
(25, '2023_11_28_142456_create_audits_table', 1),
(26, '2023_11_28_155542_create_activities', 1),
(27, '2023_12_04_145458_create_invoices_table', 1),
(28, '2024_01_30_190158_add_rate_to_projects', 1),
(30, '2025_03_17_021008_update_project_table', 2),
(31, '2025_03_17_084219_create_project_statuses_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(6, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(1, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('e3a1167e-913d-4a36-a9e6-89f88650388a', 'App\\Notifications\\TaskCreatedNotification', 'App\\Models\\User', 5, '{\"task_id\":1,\"title\":\"Admin created a new task\",\"subtitle\":\"On \\\"RBB WEBSITE\\\" project\",\"link\":\"http:\\/\\/localhost:8000\\/projects\\/1\\/tasks\\/1\\/open\",\"created_at\":\"2025-06-05T22:08:40.000000Z\",\"read_at\":null}', NULL, '2025-06-05 16:26:35', '2025-06-05 16:26:35');

-- --------------------------------------------------------

--
-- Table structure for table `owner_company`
--

CREATE TABLE `owner_company` (
  `id` bigint UNSIGNED NOT NULL,
  `country_id` bigint UNSIGNED DEFAULT NULL,
  `currency_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` smallint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `owner_company`
--

INSERT INTO `owner_company` (`id`, `country_id`, `currency_id`, `name`, `logo`, `address`, `postal_code`, `city`, `email`, `phone`, `web`, `iban`, `swift`, `business_id`, `tax_id`, `vat`, `tax`) VALUES
(1, NULL, 97, 'Rastriya Banijya Bank', NULL, 'Kathmandu', NULL, NULL, 'info@rbb.com.np', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view users', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(2, 'view user rate', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(3, 'create user', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(4, 'edit user', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(5, 'archive user', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(6, 'restore user', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(7, 'view labels', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(8, 'create label', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(9, 'edit label', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(10, 'archive label', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(11, 'restore label', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(12, 'view roles', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(13, 'create role', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(14, 'edit role', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(15, 'archive role', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(16, 'restore role', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(17, 'view owner company', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(18, 'edit owner company', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(19, 'view client users', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(20, 'create client user', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(21, 'edit client user', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(22, 'archive client user', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(23, 'restore client user', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(24, 'view client companies', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(25, 'create client company', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(26, 'edit client company', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(27, 'archive client company', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(28, 'restore client company', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(29, 'view projects', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(30, 'view project', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(31, 'create project', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(32, 'edit project', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(33, 'archive project', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(34, 'restore project', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(35, 'edit project user access', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(36, 'create task group', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(37, 'edit task group', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(38, 'archive task group', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(39, 'restore task group', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(40, 'reorder task group', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(41, 'view tasks', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(42, 'create task', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(43, 'edit task', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(44, 'archive task', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(45, 'restore task', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(46, 'reorder task', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(47, 'complete task', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(48, 'add time log', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(49, 'delete time log', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(50, 'view time logs', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(51, 'view comments', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(52, 'view invoices', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(53, 'create invoice', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(54, 'edit invoice', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(55, 'archive invoice', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(56, 'restore invoice', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(57, 'change invoice status', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(58, 'download invoice', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(59, 'print invoice', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(60, 'view logged time sum report', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(61, 'view daily logged time report', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47'),
(62, 'view activities', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `client_company_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `rate` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `client_company_id`, `name`, `description`, `rate`, `created_at`, `updated_at`, `archived_at`, `status`) VALUES
(1, 2, 'RBB WEBSITE', 'RBB MAIN WEBSITE', 0, '2025-06-05 16:24:48', '2025-06-05 16:25:46', NULL, 6),
(2, 2, 'RBB INTRANET', 'RBB INTRANET', 0, '2025-06-05 16:27:11', '2025-06-05 16:27:21', NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `project_statuses`
--

CREATE TABLE `project_statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_statuses`
--

INSERT INTO `project_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Pending', '2025-03-17 09:28:30', '2025-03-17 09:28:30'),
(2, 'In Progress', '2025-03-17 09:28:30', '2025-03-17 09:28:30'),
(3, 'Completed', '2025-03-17 09:28:30', '2025-03-17 09:28:30'),
(4, 'On Hold', '2025-03-17 09:28:30', '2025-03-17 09:28:30'),
(5, 'Cancelled', '2025-03-17 09:28:30', '2025-03-17 09:28:30'),
(6, 'Live and Support', '2025-03-17 09:28:30', '2025-03-17 09:28:30');

-- --------------------------------------------------------

--
-- Table structure for table `project_user_access`
--

CREATE TABLE `project_user_access` (
  `user_id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_user_access`
--

INSERT INTO `project_user_access` (`user_id`, `project_id`) VALUES
(6, 1),
(5, 1),
(6, 2),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `archived_at`) VALUES
(1, 'developer', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47', NULL),
(2, 'qa engineer', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47', NULL),
(3, 'designer', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47', NULL),
(4, 'client', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47', NULL),
(5, 'manager', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47', NULL),
(6, 'admin', 'web', '2025-03-06 07:57:47', '2025-03-06 07:57:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(29, 1),
(30, 1),
(41, 1),
(42, 1),
(43, 1),
(51, 1),
(29, 3),
(30, 3),
(41, 3),
(42, 3),
(43, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(41, 4),
(42, 4),
(50, 4),
(51, 4),
(1, 5),
(29, 5),
(30, 5),
(31, 5),
(32, 5),
(33, 5),
(34, 5),
(35, 5),
(36, 5),
(37, 5),
(38, 5),
(39, 5),
(40, 5),
(41, 5),
(42, 5),
(43, 5),
(44, 5),
(45, 5),
(46, 5),
(47, 5),
(48, 5),
(49, 5),
(50, 5),
(51, 5),
(60, 5),
(61, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(20, 6),
(21, 6),
(22, 6),
(23, 6),
(24, 6),
(25, 6),
(26, 6),
(27, 6),
(28, 6),
(29, 6),
(30, 6),
(31, 6),
(32, 6),
(33, 6),
(34, 6),
(35, 6),
(36, 6),
(37, 6),
(38, 6),
(39, 6),
(40, 6),
(41, 6),
(42, 6),
(43, 6),
(44, 6),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 6),
(50, 6),
(51, 6),
(52, 6),
(53, 6),
(54, 6),
(55, 6),
(56, 6),
(57, 6),
(58, 6),
(59, 6),
(60, 6),
(61, 6),
(62, 6);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_task`
--

CREATE TABLE `subscribe_task` (
  `user_id` bigint UNSIGNED NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribe_task`
--

INSERT INTO `subscribe_task` (`user_id`, `task_id`) VALUES
(5, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `group_id` bigint UNSIGNED NOT NULL,
  `created_by_user_id` bigint UNSIGNED DEFAULT NULL,
  `assigned_to_user_id` bigint UNSIGNED DEFAULT NULL,
  `invoice_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `due_on` date DEFAULT NULL,
  `estimation` decimal(6,2) UNSIGNED DEFAULT NULL,
  `hidden_from_clients` tinyint(1) NOT NULL DEFAULT '0',
  `billable` tinyint(1) NOT NULL DEFAULT '1',
  `order_column` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `project_id`, `group_id`, `created_by_user_id`, `assigned_to_user_id`, `invoice_id`, `name`, `number`, `description`, `due_on`, `estimation`, `hidden_from_clients`, `billable`, `order_column`, `created_at`, `updated_at`, `assigned_at`, `completed_at`, `archived_at`) VALUES
(1, 1, 3, 1, 6, NULL, 'Website setup on local', 1, '<p>Please setup <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"http://rbb.com.np\">rbb.com.np</a> on your local</p>', NULL, NULL, 0, 1, 2, '2025-06-05 16:26:35', '2025-06-05 16:28:02', '2025-06-05 16:26:35', NULL, NULL),
(2, 2, 11, 1, 6, NULL, 'Branch Phone Number update, new branch add on db', 1, '<p>Please update branch phone number</p>', NULL, NULL, 0, 1, 0, '2025-06-05 16:28:02', '2025-06-05 16:31:16', '2025-06-05 16:28:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task_groups`
--

CREATE TABLE `task_groups` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int UNSIGNED NOT NULL,
  `archived_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_groups`
--

INSERT INTO `task_groups` (`id`, `project_id`, `name`, `order_column`, `archived_at`) VALUES
(1, 1, 'Backlog', 1, NULL),
(2, 1, 'Todo', 2, NULL),
(3, 1, 'In progress', 3, NULL),
(4, 1, 'QA', 4, NULL),
(5, 1, 'Done', 5, NULL),
(6, 1, 'Deployed', 6, NULL),
(7, 2, 'Backlog', 7, NULL),
(8, 2, 'Todo', 8, NULL),
(9, 2, 'In progress', 9, NULL),
(10, 2, 'QA', 10, NULL),
(11, 2, 'Done', 11, NULL),
(12, 2, 'Deployed', 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `time_logs`
--

CREATE TABLE `time_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `minutes` smallint UNSIGNED DEFAULT NULL,
  `timer_start` int UNSIGNED DEFAULT NULL,
  `timer_stop` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` int UNSIGNED DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `avatar`, `phone`, `job_title`, `rate`, `google_id`, `remember_token`, `created_at`, `updated_at`, `archived_at`) VALUES
(1, 'Admin', 'admin@mail.com', '$2y$10$urQbEvMmaqZHPU15knPbKeCSYYT6Mkk6eZOedGcaSbelrJUPpDcnC', NULL, '', 'Owner', 0, NULL, NULL, '2025-03-06 07:57:55', '2025-03-06 07:57:55', NULL),
(2, 'Ritu', 'ritu@rbb.com.np', '$2y$10$Y8y3CvJGRdgppyZlXM58LOKdwqOrwyAHSQ9.FfLqWtv4Q5apQwura', NULL, NULL, 'Client', NULL, NULL, NULL, '2025-03-06 08:05:39', '2025-03-06 08:05:40', NULL),
(4, 'internal', 'internal@rbb.com.np', '$2y$10$nzByTQt2z9eMgscv01TBc.YpJLYVpF57Ghw4EbQS5RVPbm5cVanFq', NULL, NULL, 'Client', NULL, NULL, NULL, '2025-03-16 20:27:50', '2025-03-16 20:27:51', NULL),
(5, 'Subarna Maharjan', 'subarna.maharjan@rbb.com.np', '$2y$10$0.7hCNwnNKPWm/L.wA/VsOnT20BplNO/CzgO3bbEpK9k7Cd2xdAt.', NULL, NULL, 'SR ASST', 0, NULL, NULL, '2025-06-05 16:23:40', '2025-06-05 16:23:40', NULL),
(6, 'Mithelesh Yadav', 'mithelesh.yadav@rbb.com.np', '$2y$10$4cAJIClmFB3B7/Mh4jPiwOfnRwACv7Vp11hNG1qVjHaSTQIZ0e0zK', NULL, NULL, 'SR ASST', 0, NULL, NULL, '2025-06-05 16:24:24', '2025-06-05 16:24:26', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `client_companies`
--
ALTER TABLE `client_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_company`
--
ALTER TABLE `client_company`
  ADD KEY `client_company_client_id_foreign` (`client_id`),
  ADD KEY `client_company_client_company_id_foreign` (`client_company_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_favoriteable_type_favoriteable_id_index` (`favoriteable_type`,`favoriteable_id`),
  ADD KEY `favorites_user_id_index` (`user_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_created_by_user_id_foreign` (`created_by_user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `owner_company`
--
ALTER TABLE `owner_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_client_company_id_foreign` (`client_company_id`);

--
-- Indexes for table `project_statuses`
--
ALTER TABLE `project_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_groups`
--
ALTER TABLE `task_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_logs`
--
ALTER TABLE `time_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `client_companies`
--
ALTER TABLE `client_companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `owner_company`
--
ALTER TABLE `owner_company`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project_statuses`
--
ALTER TABLE `project_statuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `task_groups`
--
ALTER TABLE `task_groups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `time_logs`
--
ALTER TABLE `time_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client_company`
--
ALTER TABLE `client_company`
  ADD CONSTRAINT `client_company_client_company_id_foreign` FOREIGN KEY (`client_company_id`) REFERENCES `client_companies` (`id`),
  ADD CONSTRAINT `client_company_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_created_by_user_id_foreign` FOREIGN KEY (`created_by_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_client_company_id_foreign` FOREIGN KEY (`client_company_id`) REFERENCES `client_companies` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
