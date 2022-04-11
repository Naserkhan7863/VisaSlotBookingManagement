-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 23, 2022 at 08:10 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `visaviva`
--
CREATE DATABASE IF NOT EXISTS `visaviva` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `visaviva`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

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
(25, 'Can add student register model', 7, 'add_studentregistermodel'),
(26, 'Can change student register model', 7, 'change_studentregistermodel'),
(27, 'Can delete student register model', 7, 'delete_studentregistermodel'),
(28, 'Can view student register model', 7, 'view_studentregistermodel'),
(29, 'Can add student register model', 8, 'add_studentregistermodel'),
(30, 'Can change student register model', 8, 'change_studentregistermodel'),
(31, 'Can delete student register model', 8, 'delete_studentregistermodel'),
(32, 'Can view student register model', 8, 'view_studentregistermodel'),
(33, 'Can add add supervisor model', 9, 'add_addsupervisormodel'),
(34, 'Can change add supervisor model', 9, 'change_addsupervisormodel'),
(35, 'Can delete add supervisor model', 9, 'delete_addsupervisormodel'),
(36, 'Can view add supervisor model', 9, 'view_addsupervisormodel'),
(37, 'Can add supervisor model', 9, 'add_supervisormodel'),
(38, 'Can change supervisor model', 9, 'change_supervisormodel'),
(39, 'Can delete supervisor model', 9, 'delete_supervisormodel'),
(40, 'Can view supervisor model', 9, 'view_supervisormodel'),
(41, 'Can add venue model', 10, 'add_venuemodel'),
(42, 'Can change venue model', 10, 'change_venuemodel'),
(43, 'Can delete venue model', 10, 'delete_venuemodel'),
(44, 'Can view venue model', 10, 'view_venuemodel'),
(45, 'Can add user book slot model', 11, 'add_userbookslotmodel'),
(46, 'Can change user book slot model', 11, 'change_userbookslotmodel'),
(47, 'Can delete user book slot model', 11, 'delete_userbookslotmodel'),
(48, 'Can view user book slot model', 11, 'view_userbookslotmodel'),
(49, 'Can add sup add slot model', 12, 'add_supaddslotmodel'),
(50, 'Can change sup add slot model', 12, 'change_supaddslotmodel'),
(51, 'Can delete sup add slot model', 12, 'delete_supaddslotmodel'),
(52, 'Can view sup add slot model', 12, 'view_supaddslotmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$HgugnhZn8sXWm8nivlzp6x$uKngBR/li6HCqVvhLz3lLPFgH7kODsphEaGpqKWZmyM=', '2022-03-05 05:21:29.340147', 1, 'naser', '', '', 'naserkhan9676@gmail.com', 1, 1, '2022-03-05 05:20:31.868750');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(9, 'adminapp', 'supervisormodel'),
(10, 'adminapp', 'venuemodel'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'main', 'studentregistermodel'),
(6, 'sessions', 'session'),
(8, 'studentapp', 'studentregistermodel'),
(11, 'studentapp', 'userbookslotmodel'),
(12, 'supervisorapp', 'supaddslotmodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-03-04 13:11:14.308165'),
(2, 'auth', '0001_initial', '2022-03-04 13:11:14.681163'),
(3, 'admin', '0001_initial', '2022-03-04 13:11:14.766973'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-03-04 13:11:14.778985'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-03-04 13:11:14.791973'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-03-04 13:11:14.881597'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-03-04 13:11:14.927974'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-03-04 13:11:14.971914'),
(9, 'auth', '0004_alter_user_username_opts', '2022-03-04 13:11:14.983914'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-03-04 13:11:15.040912'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-03-04 13:11:15.049914'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-03-04 13:11:15.072914'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-03-04 13:11:15.133913'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-03-04 13:11:15.187913'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-03-04 13:11:15.242915'),
(16, 'auth', '0011_update_proxy_permissions', '2022-03-04 13:11:15.259916'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-03-04 13:11:15.311913'),
(18, 'main', '0001_initial', '2022-03-04 13:11:15.336924'),
(19, 'sessions', '0001_initial', '2022-03-04 13:11:15.387912'),
(20, 'studentapp', '0001_initial', '2022-03-04 13:26:58.637758'),
(21, 'studentapp', '0002_alter_studentregistermodel_table', '2022-03-04 13:26:58.659758'),
(22, 'adminapp', '0001_initial', '2022-03-04 13:58:27.175704'),
(23, 'adminapp', '0002_rename_addsupervisormodel_supervisormodel_and_more', '2022-03-04 14:06:22.263561'),
(24, 'adminapp', '0003_venuemodel', '2022-03-04 18:27:15.394288'),
(25, 'studentapp', '0003_userbookslotmodel', '2022-03-04 18:50:24.634329'),
(26, 'supervisorapp', '0001_initial', '2022-03-04 19:46:21.607604'),
(27, 'supervisorapp', '0002_supaddslotmodel_sup_id', '2022-03-05 11:15:43.999980'),
(28, 'supervisorapp', '0003_supaddslotmodel_booked_by_supaddslotmodel_status', '2022-03-16 13:16:52.833764'),
(29, 'supervisorapp', '0004_alter_supaddslotmodel_booked_by_and_more', '2022-03-16 13:23:10.550075'),
(30, 'studentapp', '0004_alter_studentregistermodel_contact', '2022-03-22 09:47:56.847403');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0xym0m5j1na3hz64fwae477vqhxk80d2', '.eJxVjM0KwyAQhN_Fc5HVxF3tsfc-g6w_1LRFISan0ndvAqGQ43zzzXzE2vPspySu6iI8r0vxfyKUOLHA8ZXrXqQn10eTsdVlnoLcFXm0Xd5byu_b4Z4OCveyrYmySgNZnRWQgcigwY0UHVIgZzEo6zQwGx0J0OJoEgLgFgIOQ2bx_QFLcDoY:1nQN92:vkS0EvOny_Y9iSJvxunjxT5bSlpUIxiXH31kmD7zupM', '2022-03-19 05:39:56.439360'),
('4yokr79p34be2p68ltfvdukopa1gehne', 'eyJ1c2VyX2lkIjoxLCJzdXBfaWQiOjF9:1nUSX1:6fS-h7-2rsO9dpgYqe4Qdnki48sNF_DhbGPPebPN0Z4', '2022-03-30 12:13:35.323778'),
('7q4nesq6vcfzagrz0qlst5loldqx8v4n', 'eyJ1c2VyX2lkIjozMywic3VwX2lkIjoyfQ:1nWuWe:wKMY7gQmLWVsXONegskmpuwfToaP2PKLFJFYjEjFqbI', '2022-04-06 06:31:20.633994'),
('v3xjvoft8ujluqixzj7oho2tt71lscn7', 'eyJ1c2VyX2lkIjoxLCJzdXBfaWQiOjF9:1nRol3:qE5L_JHfWXNr2BarjlM3FG8xuo1OkRjVPZ5Zu9qyaKQ', '2022-03-23 05:21:09.803115'),
('x876au5zyithq4usn3ctijuadkpj9bac', 'eyJ1c2VyX2lkIjoxfQ:1nRuIB:g8-ala6cJcVLKlPtlgjNc5a9NWbxDnD_2kfj6jrD65w', '2022-03-23 11:15:43.733946');

-- --------------------------------------------------------

--
-- Table structure for table `slot_details`
--

CREATE TABLE IF NOT EXISTS `slot_details` (
  `Slot_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `type` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `documents` varchar(100) NOT NULL,
  `sup_id` smallint(6) DEFAULT NULL,
  `booked_by` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Slot_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `slot_details`
--

INSERT INTO `slot_details` (`Slot_id`, `title`, `date`, `time`, `type`, `duration`, `venue`, `documents`, `sup_id`, `booked_by`, `status`) VALUES
(4, 'Student ', '2022-03-10', '18:50:00.000000', 'Offline', '15 Mins', 'Visa office Hyderabaad', 'Adharcard pancard', 1, NULL, 'available'),
(5, 'VISA CARD', '2022-03-20', '03:33:00.000000', 'Online', '30 Mins', 'Visa office Mumbai', 'Adharcard pancard', 1, 'naserkhan9676@gmail.com', 'Booked'),
(6, 'Student Board Slot', '2222-02-12', '10:52:00.000000', 'Offline', '10 Mins', 'Hyderabad', 'Adhar Copy', 2, 'naserkhan9676@gmail.com', 'Booked'),
(7, '', '2022-03-04', '11:49:00.000000', 'Online', '20 Mins', 'Hyderabad', 'Adhar Copy', 2, NULL, 'available'),
(8, '', '2022-03-04', '11:49:00.000000', 'Online', '20 Mins', 'Hyderabad', 'Adhar Copy', 2, NULL, 'available'),
(9, '', '2022-03-04', '11:49:00.000000', 'Online', '20 Mins', 'Hyderabad', 'Adhar Copy', 2, NULL, 'available'),
(10, '', '2022-03-04', '11:49:00.000000', 'Online', '20 Mins', 'Hyderabad', 'Adhar Copy', 2, NULL, 'available'),
(11, '', '2022-03-04', '11:49:00.000000', 'Online', '20 Mins', 'Hyderabad', 'Adhar Copy', 2, NULL, 'available'),
(12, 'aaaaaaaa', '2022-03-18', '21:11:00.000000', '__select__', '__select__', 'Hyderabad', '', 2, NULL, 'available');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor_details`
--

CREATE TABLE IF NOT EXISTS `supervisor_details` (
  `supervisor_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`supervisor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `supervisor_details`
--

INSERT INTO `supervisor_details` (`supervisor_id`, `name`, `contact`, `email`, `password`) VALUES
(2, 'fazal khan', 8897633634, 'naserkhan9676@gmail.com', 'l');

-- --------------------------------------------------------

--
-- Table structure for table `user_booking_details`
--

CREATE TABLE IF NOT EXISTS `user_booking_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `Registration_id` int(11) NOT NULL,
  `Passport_id` int(11) NOT NULL,
  `Ds_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `user_booking_details`
--

INSERT INTO `user_booking_details` (`user_id`, `name`, `email`, `contact`, `Registration_id`, `Passport_id`, `Ds_id`) VALUES
(1, 'Naser Fazal Khan', 'naserkhan9676@gmail.com', 8897633634, 11111, 1111111111, 111111111),
(2, 'fazal khan', 'naserkhan9676@gmail.com', 9999999999, 11111, 1111111111, 1),
(3, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'naserkhan9676@gmail.com', 9999999999, 222, 111111, 333333),
(4, 'naser Fazal Khan', 'naserkhan9676@gmail.com', 8897633634, 222, 111111, 333333),
(5, 'Fazal', 'naserkhan9676@gmail.com', 7777335344, 222, 1111111111, 1),
(6, 'Fazal', 'naserkhan9676@gmail.com', 9999999999, 444, 1111111111, 333),
(7, 'naser Fazal Khan', 'naserkhan9676@gmail.com', 8897633634, 222, 1111111111, 333333),
(8, 'naser Fazal Khan', 'naserkhan9676@gmail.com', 8897633634, 222, 1111111111, 333333),
(9, 'naser Fazal Khan', 'naserkhan9676@gmail.com', 9999999999, 222, 1111111111, 3333332);

-- --------------------------------------------------------

--
-- Table structure for table `user_contact_details`
--

CREATE TABLE IF NOT EXISTS `user_contact_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `user_contact_details`
--

INSERT INTO `user_contact_details` (`user_id`, `fullname`, `email`, `contact`, `subject`) VALUES
(1, 'fazal khan', 'naserkhan9676@gmail.com', 8897633634, 'Full stack'),
(2, 'fazal khan', 'naserkhan9676@gmail.com', 8897633634, 'Full stack'),
(3, 'fazal khan', 'naserkhan9676@gmail.com', 8897633634, 'Full stack'),
(4, 'fazal khan', 'naserkhan9676@gmail.com', 918897633634, 'vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv'),
(5, 'fazal khan', 'knaser567@gmail.com', 918897633634, 'fffffffffff'),
(6, 'fazal khan', 'naserkhan9676@gmail.com', 918897633634, 'Full stack'),
(7, 'AAAAAaAa', 'knaser567@gmail.com', 8897633634, ''),
(8, 'fazal khan', 'naserkhan9676@gmail.com', 8897633634, 'Full stack'),
(9, 'fazal khan', 'naserkhan9676@gmail.com', 8897633634, 'fffffffffff');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` bigint(20) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `fullname`, `email`, `contact`, `password`) VALUES
(32, '', 'naserkhan9676@gmail.com', 918897633634, 'jjkkjkjl'),
(33, '', 'naserkhan9676@gmail.com', 918897633634, 'Fazal@123');

-- --------------------------------------------------------

--
-- Table structure for table `venue_details`
--

CREATE TABLE IF NOT EXISTS `venue_details` (
  `venue_id` int(11) NOT NULL AUTO_INCREMENT,
  `venuename` varchar(100) NOT NULL,
  PRIMARY KEY (`venue_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `venue_details`
--

INSERT INTO `venue_details` (`venue_id`, `venuename`) VALUES
(2, 'Hyderabad ');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
