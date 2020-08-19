-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2020 at 02:15 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deutschsteredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add item', 8, 'add_item'),
(30, 'Can change item', 8, 'change_item'),
(31, 'Can delete item', 8, 'delete_item'),
(32, 'Can view item', 8, 'view_item');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$ewuOmAV8nKvD$6AymF2k8YYIB7/k+TO8GQlnxXGMJgb4EJ+m46yVkBg4=', '2020-08-17 15:08:20.018562', 1, 'propenster', '', '', 'propenster@gmail.com', 1, 1, '2020-08-17 15:04:31.466161');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deutschstered_category`
--

CREATE TABLE `deutschstered_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(150) NOT NULL,
  `category_pub_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deutschstered_category`
--

INSERT INTO `deutschstered_category` (`id`, `category_name`, `category_pub_date`) VALUES
(1, 'Books', '2020-08-17 15:10:40.784829'),
(2, 'Lodges, Dorm Rooms', '2020-08-17 15:11:53.834677'),
(3, 'Studios', '2020-08-17 15:12:59.233291'),
(4, 'Wageningen', '2020-08-17 15:13:22.576595'),
(5, 'Tutorials', '2020-08-17 15:14:09.952591'),
(6, 'Jobs', '2020-08-17 15:14:28.788466');

-- --------------------------------------------------------

--
-- Table structure for table `deutschstered_item`
--

CREATE TABLE `deutschstered_item` (
  `id` int(11) NOT NULL,
  `item_title` varchar(150) NOT NULL,
  `item_short_description` varchar(255) NOT NULL,
  `item_long_description` longtext NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `item_image` varchar(100) NOT NULL,
  `item_domain_location` varchar(160) NOT NULL,
  `item_is_active` tinyint(1) NOT NULL,
  `item_pub_date` datetime(6) DEFAULT NULL,
  `item_updated_date` datetime(6) DEFAULT NULL,
  `item_author_id` int(11) NOT NULL,
  `item_category_id` int(11) NOT NULL,
  `item_draft_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deutschstered_item`
--

INSERT INTO `deutschstered_item` (`id`, `item_title`, `item_short_description`, `item_long_description`, `item_price`, `item_image`, `item_domain_location`, `item_is_active`, `item_pub_date`, `item_updated_date`, `item_author_id`, `item_category_id`, `item_draft_date`) VALUES
(1, 'House for Sale at Aba Layout', 'Item for sale in Ibdalslkdaklkl', 'asdkaj adskjkla dlkajklslkjdaj;kjlsjklakjlkjsjk;akjlasjk;akjsljk;as;klsjka', '200.25', 'gallery/And_Django_things_are_making_sense.PNG', 'Wageningen', 1, '2020-08-17 15:19:33.196150', '2020-08-17 15:19:33.196150', 1, 2, '2020-08-18 12:00:42.217842'),
(2, 'House for Sale at Aba Layout', 'Loream Iaosdoa asldkasld asdlsa ldlalkd', 'Loream Iaosdoa asldkasld asdlsa ldlalkdLoream Iaosdoa asldkasld asdlsa ldlalkdLoream Iaosdoa asldkasld asdlsa ldlalkdLoream Iaosdoa asldkasld asdlsa ldlalkdLoream Iaosdoa asldkasld asdlsa ldlalkdLoream Iaosdoa asldkasld asdlsa ldlalkdLoream Iaosdoa asldkasld asdlsa ldlalkdLoream Iaosdoa asldkasld asdlsa ldlalkdLoream Iaosdoa asldkasld asdlsa ldlalkdLoream Iaosdoa asldkasld asdlsa ldlalkdLoream Iaosdoa asldkasld asdlsa ldlalkdLoream Iaosdoa asldkasld asdlsa ldlalkdLoream Iaosdoa asldkasld asdlsa ldlalkd', '500.89', 'gallery/Capture.PNG', 'Utretch', 1, '2020-08-18 01:59:09.912604', '2020-08-18 01:59:09.913605', 1, 2, '2020-08-18 12:00:42.217842'),
(3, 'Philosophy Books for Masters for Sale', 'Are you a fresh MS Phil student looking for PHIL 3029 books.. I will sell 5 for you at 30 Euros', 'Are you a fresh MS Phil student looking for PHIL 3029 books.. I will sell 5 for you at 30 Euros\r\nAre you a fresh MS Phil student looking for PHIL 3029 books.. I will sell 5 for you at 30 Euros', '30.00', 'gallery/Django_Blog.PNG', 'Wageningen', 1, '2020-08-18 21:01:47.000000', '2020-08-18 21:01:50.000000', 1, 1, '2020-08-18 12:01:30.000000'),
(4, 'How ti works is simple', 'Item for sale in Ibdalslkdaklkl deutschstered/create_item.html', 'deutschstered/create_item.htmldeutschstered/create_item.htmldeutschstered/create_item.htmldeutschstered/create_item.htmldeutschstered/create_item.htmldeutschstered/create_item.htmldeutschstered/create_item.html', '200.00', 'gallery/DBN_Postman_View.PNG', 'Utretch', 0, '2020-08-18 12:26:35.000000', '2020-08-18 12:26:40.000000', 1, 3, '2020-08-18 12:24:07.000000');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-08-17 15:10:40.848561', '1', 'Category object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-08-17 15:11:53.939673', '2', 'Category object (2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2020-08-17 15:12:59.313293', '3', 'Category object (3)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2020-08-17 15:13:22.606598', '4', 'Category object (4)', 1, '[{\"added\": {}}]', 7, 1),
(5, '2020-08-17 15:14:10.037591', '5', 'Category object (5)', 1, '[{\"added\": {}}]', 7, 1),
(6, '2020-08-17 15:14:28.903467', '6', 'Category object (6)', 1, '[{\"added\": {}}]', 7, 1),
(7, '2020-08-17 15:18:42.424045', '6', 'Jobs', 2, '[]', 7, 1),
(8, '2020-08-17 15:19:33.428154', '1', 'House for Sale at Aba Layout Lodges, Dorm Rooms Item for sale in Ibdalslkdaklkl asdkaj adskjkla dlkajklslkjdaj;kjlsjklakjlkjsjk;akjlasjk;akjsljk;as;klsjka 200.25 gallery/And_Django_things_are_making_s', 1, '[{\"added\": {}}]', 8, 1),
(9, '2020-08-18 12:26:45.635985', '4', 'How ti works is simple Studios Item for sale in Ibdalslkdaklkl deutschstered/create_item.html deutschstered/create_item.htmldeutschstered/create_item.htmldeutschstered/create_item.htmldeutschstered/cr', 1, '[{\"added\": {}}]', 8, 1),
(10, '2020-08-18 21:02:05.269720', '3', 'Philosophy Books for Masters for Sale', 2, '[{\"changed\": {\"fields\": [\"Item is active\", \"Item pub date\", \"Item updated date\"]}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'deutschstered', 'category'),
(8, 'deutschstered', 'item'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-08-17 08:09:18.255073'),
(2, 'auth', '0001_initial', '2020-08-17 08:09:20.590076'),
(3, 'admin', '0001_initial', '2020-08-17 08:09:30.020082'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-08-17 08:09:31.750069'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-08-17 08:09:31.810091'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-08-17 08:09:32.640093'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-08-17 08:09:34.345061'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-08-17 08:09:34.575102'),
(9, 'auth', '0004_alter_user_username_opts', '2020-08-17 08:09:34.635095'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-08-17 08:09:35.440080'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-08-17 08:09:35.480097'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-08-17 08:09:35.545063'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-08-17 08:09:35.700097'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-08-17 08:09:35.840096'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-08-17 08:09:36.025098'),
(16, 'auth', '0011_update_proxy_permissions', '2020-08-17 08:09:36.100097'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-08-17 08:09:36.250098'),
(18, 'sessions', '0001_initial', '2020-08-17 08:09:36.655098'),
(19, 'deutschstered', '0001_initial', '2020-08-17 15:03:33.924401'),
(20, 'deutschstered', '0002_auto_20200818_1300', '2020-08-18 12:01:04.215543'),
(21, 'deutschstered', '0003_auto_20200818_1312', '2020-08-18 12:12:38.020838');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('uuqty8qvgru1z5u79rkzisz9o0lskl6a', '.eJxVjEEOwiAQRe_C2hCmDA24dO8ZyMAMUjU0Ke3KeHdt0oVu_3vvv1Skba1x67LEidVZgTr9bonyQ9oO-E7tNus8t3WZkt4VfdCurzPL83K4fweVev3WmL0pgMJoA3tgYAvBUE55HIzFMBRn0QQSBEZDBBKcS1JYPICMSb0_2Fs37A:1k7gkG:mn7YnOXq8O0jRWZ7is3qeB7y-akD3aF7xV2iU6ZQiYw', '2020-08-31 15:08:20.086884');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `deutschstered_category`
--
ALTER TABLE `deutschstered_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deutschstered_item`
--
ALTER TABLE `deutschstered_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deutschstered_item_item_author_id_5c261e55_fk_auth_user_id` (`item_author_id`),
  ADD KEY `deutschstered_item_item_category_id_ceac3614_fk_deutschst` (`item_category_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deutschstered_category`
--
ALTER TABLE `deutschstered_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `deutschstered_item`
--
ALTER TABLE `deutschstered_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `deutschstered_item`
--
ALTER TABLE `deutschstered_item`
  ADD CONSTRAINT `deutschstered_item_item_author_id_5c261e55_fk_auth_user_id` FOREIGN KEY (`item_author_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `deutschstered_item_item_category_id_ceac3614_fk_deutschst` FOREIGN KEY (`item_category_id`) REFERENCES `deutschstered_category` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
