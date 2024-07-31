-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 31, 2024 at 08:50 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatting_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Detail', 7, 'add_details'),
(26, 'Can change Detail', 7, 'change_details'),
(27, 'Can delete Detail', 7, 'delete_details'),
(28, 'Can view Detail', 7, 'view_details'),
(29, 'Can add User', 8, 'add_user'),
(30, 'Can change User', 8, 'change_user'),
(31, 'Can delete User', 8, 'delete_user'),
(32, 'Can view User', 8, 'view_user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'sample_app', 'details'),
(8, 'sample_app', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-07-02 09:19:48.315511'),
(2, 'auth', '0001_initial', '2024-07-02 09:19:54.316294'),
(3, 'admin', '0001_initial', '2024-07-02 09:19:56.151758'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-07-02 09:19:56.162767'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-02 09:19:56.179060'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-07-02 09:19:57.111629'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-07-02 09:19:57.488605'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-07-02 09:19:57.976191'),
(9, 'auth', '0004_alter_user_username_opts', '2024-07-02 09:19:57.991726'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-07-02 09:19:58.385500'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-07-02 09:19:58.385500'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-07-02 09:19:58.401070'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-07-02 09:19:58.953466'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-07-02 09:19:59.221137'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-07-02 09:19:59.472507'),
(16, 'auth', '0011_update_proxy_permissions', '2024-07-02 09:19:59.475941'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-07-02 09:19:59.677333'),
(18, 'sample_app', '0001_initial', '2024-07-02 09:19:59.866711'),
(19, 'sessions', '0001_initial', '2024-07-02 09:20:00.132704');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ds3mo8l77cjpgt5y8cqscs70c8hzlpfl', 'eyJ1c2VyX2lkIjoxfQ:1sR9fc:_ru2hB1VN4VkWO-FBrYsIKrRs9BjdtGZg1WL1sDhBdk', '2024-07-23 12:10:08.288578');

-- --------------------------------------------------------

--
-- Table structure for table `sample_app_details`
--

DROP TABLE IF EXISTS `sample_app_details`;
CREATE TABLE IF NOT EXISTS `sample_app_details` (
  `user_id` int NOT NULL,
  `sl_no` int NOT NULL,
  `parent_id` int NOT NULL,
  `node_id` int NOT NULL,
  `content` longtext NOT NULL,
  `sl_order_no` int NOT NULL,
  `question_type` int NOT NULL,
  PRIMARY KEY (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sample_app_details`
--

INSERT INTO `sample_app_details` (`user_id`, `sl_no`, `parent_id`, `node_id`, `content`, `sl_order_no`, `question_type`) VALUES
(1, 6, 5, 6, 'I\'m doing good. How about you?', 1, 1),
(1, 5, 0, 5, 'How are you?', 1, 1),
(1, 4, 1, 4, 'Hey there', 2, 1),
(1, 3, 1, 3, 'Hello', 1, 1),
(1, 2, 0, 2, 'hi', 1, 1),
(1, 1, 0, 1, 'hello', 1, 1),
(1, 7, 6, 7, 'I am fine', 1, 1),
(1, 8, 7, 8, 'Great to hear that. How can I help you?', 1, 1),
(1, 9, 8, 9, 'Define Chatbot', 1, 1),
(1, 10, 9, 10, 'A chatbot is a software application designed to simulate conversation with human users, typically through text or voice interactions', 1, 1),
(1, 11, 0, 11, 'what is your name?', 1, 1),
(1, 12, 11, 12, 'My name is chatbot and I am created using Python.', 1, 1),
(1, 13, 11, 13, 'I don\'t have any name', 2, 1),
(1, 14, 0, 14, 'quit', 1, 1),
(1, 15, 14, 15, 'Bye! Take care.', 1, 1),
(1, 16, 14, 16, 'It was nice talking to you. See you soon!', 2, 1),
(1, 17, 0, 17, 'Hi Samplebot, can you help me with my project?', 1, 1),
(1, 18, 17, 18, 'Of course! What do you need help with?', 1, 1),
(2, 50, 0, 50, 'Namaste', 1, 1),
(2, 51, 50, 51, 'Hi,How can I help you', 1, 1),
(2, 52, 50, 52, 'Please select your services', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sample_app_user`
--

DROP TABLE IF EXISTS `sample_app_user`;
CREATE TABLE IF NOT EXISTS `sample_app_user` (
  `user_id` int NOT NULL,
  `user_name` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sample_app_user`
--

INSERT INTO `sample_app_user` (`user_id`, `user_name`) VALUES
(1, 'user_1'),
(2, 'user_2');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
