-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-08-2021 a las 16:45:32
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alumnos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
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
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
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
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$kl9Sup56bRy3KxSuzBxiXQ$3AivStJ6pb9uWlb8qUsl0BmvUazslEnWBvYivv5RF7U=', '2021-08-16 02:53:26.362714', 1, 'admin', '', '', 'andres@gmail.com', 1, 1, '2021-08-16 02:49:04.292401');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
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
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-08-16 04:31:32.712815', '1001', 'studentsperformance1001: male group c none 34 44 33', 1, '[{\"added\": {}}]', 7, 1),
(2, '2021-08-16 08:16:05.928842', '1002', 'studentsperformance1002: male group c non 34 33 44', 1, '[{\"added\": {}}]', 7, 1),
(3, '2021-08-17 06:41:46.313180', '1003', 'studentsperformance1003: male group c yes 33 33 33', 1, '[{\"added\": {}}]', 7, 1),
(4, '2021-08-17 07:27:56.815450', '1004', 'studentsperformance1004: male group A none 112 22 22', 1, '[{\"added\": {}}]', 7, 1),
(5, '2021-08-17 07:28:07.774963', '1005', 'studentsperformance1005: male group A none 108 22 22', 1, '[{\"added\": {}}]', 7, 1),
(6, '2021-08-17 07:28:28.395537', '1004', 'studentsperformance1004: male group A none 112 22 22', 3, '', 7, 1),
(7, '2021-08-17 07:28:32.661778', '1005', 'studentsperformance1005: male group A none 108 22 22', 3, '', 7, 1),
(8, '2021-08-17 07:34:51.596070', '1006', 'studentsperformance1006: male group A none 22 131 2', 1, '[{\"added\": {}}]', 7, 1),
(9, '2021-08-17 07:35:11.533467', '1006', 'studentsperformance1006: male group A none 22 131 2', 2, '[]', 7, 1),
(10, '2021-08-17 07:35:17.875136', '1006', 'studentsperformance1006: male group A none 22 122 2', 2, '[{\"changed\": {\"fields\": [\"Reading score\"]}}]', 7, 1),
(11, '2021-08-17 07:35:24.496461', '1007', 'studentsperformance1007: male group A none 2 222 2', 1, '[{\"added\": {}}]', 7, 1),
(12, '2021-08-17 07:35:29.033889', '1007', 'studentsperformance1007: male group A none 2 222 2', 3, '', 7, 1),
(13, '2021-08-17 07:35:32.579037', '1006', 'studentsperformance1006: male group A none 22 122 2', 3, '', 7, 1),
(14, '2021-08-17 07:39:41.402226', '1008', 'studentsperformance1008: female group C completed 21 22 100', 1, '[{\"added\": {}}]', 7, 1),
(15, '2021-08-17 11:43:33.343538', '1009', 'studentsperformance1009: female group C none 34 33 100', 1, '[{\"added\": {}}]', 7, 1),
(16, '2021-08-17 14:16:55.276461', '1010', 'studentsperformance1010: male group A none 111 555 33', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'students', 'studentsperformance');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-08-16 02:37:46.935748'),
(2, 'auth', '0001_initial', '2021-08-16 02:38:03.564707'),
(3, 'admin', '0001_initial', '2021-08-16 02:38:08.814851'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-08-16 02:38:08.967297'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-08-16 02:38:09.023351'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-08-16 02:38:09.901471'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-08-16 02:38:11.667547'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-08-16 02:38:12.088748'),
(9, 'auth', '0004_alter_user_username_opts', '2021-08-16 02:38:12.153585'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-08-16 02:38:13.036584'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-08-16 02:38:13.108032'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-08-16 02:38:13.174884'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-08-16 02:38:13.445715'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-08-16 02:38:13.688771'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-08-16 02:38:13.872471'),
(16, 'auth', '0011_update_proxy_permissions', '2021-08-16 02:38:13.923119'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-08-16 02:38:14.206690'),
(18, 'sessions', '0001_initial', '2021-08-16 02:38:15.077305');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('be41ju5go8scn7sown0h8bhrli19usnm', '.eJxVjMEKwyAQRP_FcxGzKpoee-83iOuuNW1RiMkp9N-bQA4tzGnem9lEiOtSwtp5DhOJqxjE5bfDmF5cD0DPWB9NplaXeUJ5KPKkXd4b8ft2un8HJfayr70abWRrtDYMTN5nAvTOqFFbC2QiYEZyBpNKGQfrsmPWpPcQWAfi8wXfZjgF:1mFSkg:zzt5qmI7K8T3MLP2V9dXq-FncI_sD0DsInAIvTOBylY', '2021-08-30 02:53:26.568574');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `studentsperformance`
--

CREATE TABLE `studentsperformance` (
  `id` int(11) NOT NULL,
  `gender` text DEFAULT NULL,
  `race/ethnicity` text DEFAULT NULL,
  `parental level of education` text DEFAULT NULL,
  `lunch` text DEFAULT NULL,
  `test preparation course` text DEFAULT NULL,
  `math score` int(11) DEFAULT NULL,
  `reading score` int(11) DEFAULT NULL,
  `writing score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `studentsperformance`
--

INSERT INTO `studentsperformance` (`id`, `gender`, `race/ethnicity`, `parental level of education`, `lunch`, `test preparation course`, `math score`, `reading score`, `writing score`) VALUES
(1, 'female', 'group B', 'bachelor\'s degree', 'standard', 'none', 72, 72, 74),
(2, 'female', 'group C', 'some college', 'standard', 'completed', 69, 90, 88),
(3, 'female', 'group B', 'master\'s degree', 'standard', 'none', 90, 95, 93),
(4, 'male', 'group A', 'associate\'s degree', 'free/reduced', 'none', 47, 57, 44),
(5, 'male', 'group C', 'some college', 'standard', 'none', 76, 78, 75),
(6, 'female', 'group B', 'associate\'s degree', 'standard', 'none', 71, 83, 78),
(7, 'female', 'group B', 'some college', 'standard', 'completed', 88, 95, 92),
(8, 'male', 'group B', 'some college', 'free/reduced', 'none', 40, 43, 39),
(9, 'male', 'group D', 'high school', 'free/reduced', 'completed', 64, 64, 67),
(10, 'female', 'group B', 'high school', 'free/reduced', 'none', 38, 60, 50),
(11, 'male', 'group C', 'associate\'s degree', 'standard', 'none', 58, 54, 52),
(12, 'male', 'group D', 'associate\'s degree', 'standard', 'none', 40, 52, 43),
(13, 'female', 'group B', 'high school', 'standard', 'none', 65, 81, 73),
(14, 'male', 'group A', 'some college', 'standard', 'completed', 78, 72, 70),
(15, 'female', 'group A', 'master\'s degree', 'standard', 'none', 50, 53, 58),
(16, 'female', 'group C', 'some high school', 'standard', 'none', 69, 75, 78),
(17, 'male', 'group C', 'high school', 'standard', 'none', 88, 89, 86),
(18, 'female', 'group B', 'some high school', 'free/reduced', 'none', 18, 32, 28),
(19, 'male', 'group C', 'master\'s degree', 'free/reduced', 'completed', 46, 42, 46),
(20, 'female', 'group C', 'associate\'s degree', 'free/reduced', 'none', 54, 58, 61),
(21, 'male', 'group D', 'high school', 'standard', 'none', 66, 69, 63),
(22, 'female', 'group B', 'some college', 'free/reduced', 'completed', 65, 75, 70),
(23, 'male', 'group D', 'some college', 'standard', 'none', 44, 54, 53),
(24, 'female', 'group C', 'some high school', 'standard', 'none', 69, 73, 73),
(25, 'male', 'group D', 'bachelor\'s degree', 'free/reduced', 'completed', 74, 71, 80),
(26, 'male', 'group A', 'master\'s degree', 'free/reduced', 'none', 73, 74, 72),
(27, 'male', 'group B', 'some college', 'standard', 'none', 69, 54, 55),
(28, 'female', 'group C', 'bachelor\'s degree', 'standard', 'none', 67, 69, 75),
(29, 'male', 'group C', 'high school', 'standard', 'none', 70, 70, 65),
(30, 'female', 'group D', 'master\'s degree', 'standard', 'none', 62, 70, 75),
(31, 'female', 'group D', 'some college', 'standard', 'none', 69, 74, 74),
(32, 'female', 'group B', 'some college', 'standard', 'none', 63, 65, 61),
(33, 'female', 'group E', 'master\'s degree', 'free/reduced', 'none', 56, 72, 65),
(34, 'male', 'group D', 'some college', 'standard', 'none', 40, 42, 38),
(35, 'male', 'group E', 'some college', 'standard', 'none', 97, 87, 82),
(36, 'male', 'group E', 'associate\'s degree', 'standard', 'completed', 81, 81, 79),
(37, 'female', 'group D', 'associate\'s degree', 'standard', 'none', 74, 81, 83),
(38, 'female', 'group D', 'some high school', 'free/reduced', 'none', 50, 64, 59),
(39, 'female', 'group D', 'associate\'s degree', 'free/reduced', 'completed', 75, 90, 88),
(40, 'male', 'group B', 'associate\'s degree', 'free/reduced', 'none', 57, 56, 57),
(41, 'male', 'group C', 'associate\'s degree', 'free/reduced', 'none', 55, 61, 54),
(42, 'female', 'group C', 'associate\'s degree', 'standard', 'none', 58, 73, 68),
(43, 'female', 'group B', 'associate\'s degree', 'standard', 'none', 53, 58, 65),
(44, 'male', 'group B', 'some college', 'free/reduced', 'completed', 59, 65, 66),
(45, 'female', 'group E', 'associate\'s degree', 'free/reduced', 'none', 50, 56, 54),
(46, 'male', 'group B', 'associate\'s degree', 'standard', 'none', 65, 54, 57),
(47, 'female', 'group A', 'associate\'s degree', 'standard', 'completed', 55, 65, 62),
(48, 'female', 'group C', 'high school', 'standard', 'none', 66, 71, 76),
(49, 'female', 'group D', 'associate\'s degree', 'free/reduced', 'completed', 57, 74, 76),
(50, 'male', 'group C', 'high school', 'standard', 'completed', 82, 84, 82),
(51, 'male', 'group E', 'some college', 'standard', 'none', 53, 55, 48),
(52, 'male', 'group E', 'associate\'s degree', 'free/reduced', 'completed', 77, 69, 68),
(53, 'male', 'group C', 'some college', 'standard', 'none', 53, 44, 42),
(54, 'male', 'group D', 'high school', 'standard', 'none', 88, 78, 75),
(55, 'female', 'group C', 'some high school', 'free/reduced', 'completed', 71, 84, 87),
(56, 'female', 'group C', 'high school', 'free/reduced', 'none', 33, 41, 43),
(57, 'female', 'group E', 'associate\'s degree', 'standard', 'completed', 82, 85, 86),
(58, 'male', 'group D', 'associate\'s degree', 'standard', 'none', 52, 55, 49),
(59, 'male', 'group D', 'some college', 'standard', 'completed', 58, 59, 58),
(60, 'female', 'group C', 'some high school', 'free/reduced', 'none', 0, 17, 10),
(61, 'male', 'group E', 'bachelor\'s degree', 'free/reduced', 'completed', 79, 74, 72),
(62, 'male', 'group A', 'some high school', 'free/reduced', 'none', 39, 39, 34),
(63, 'male', 'group A', 'associate\'s degree', 'free/reduced', 'none', 62, 61, 55),
(64, 'female', 'group C', 'associate\'s degree', 'standard', 'none', 69, 80, 71),
(65, 'female', 'group D', 'some high school', 'standard', 'none', 59, 58, 59),
(66, 'male', 'group B', 'some high school', 'standard', 'none', 67, 64, 61),
(67, 'male', 'group D', 'some high school', 'free/reduced', 'none', 45, 37, 37),
(68, 'female', 'group C', 'some college', 'standard', 'none', 60, 72, 74),
(69, 'male', 'group B', 'associate\'s degree', 'free/reduced', 'none', 61, 58, 56),
(70, 'female', 'group C', 'associate\'s degree', 'standard', 'none', 39, 64, 57),
(71, 'female', 'group D', 'some college', 'free/reduced', 'completed', 58, 63, 73),
(72, 'male', 'group D', 'some college', 'standard', 'completed', 63, 55, 63),
(73, 'female', 'group A', 'associate\'s degree', 'free/reduced', 'none', 41, 51, 48),
(74, 'male', 'group C', 'some high school', 'free/reduced', 'none', 61, 57, 56),
(75, 'male', 'group C', 'some high school', 'standard', 'none', 49, 49, 41),
(76, 'male', 'group B', 'associate\'s degree', 'free/reduced', 'none', 44, 41, 38),
(77, 'male', 'group E', 'some high school', 'standard', 'none', 30, 26, 22),
(78, 'male', 'group A', 'bachelor\'s degree', 'standard', 'completed', 80, 78, 81),
(79, 'female', 'group D', 'some high school', 'standard', 'completed', 61, 74, 72),
(80, 'female', 'group E', 'master\'s degree', 'standard', 'none', 62, 68, 68),
(81, 'female', 'group B', 'associate\'s degree', 'standard', 'none', 47, 49, 50),
(82, 'male', 'group B', 'high school', 'free/reduced', 'none', 49, 45, 45),
(83, 'male', 'group A', 'some college', 'free/reduced', 'completed', 50, 47, 54),
(84, 'male', 'group E', 'associate\'s degree', 'standard', 'none', 72, 64, 63),
(85, 'male', 'group D', 'high school', 'free/reduced', 'none', 42, 39, 34),
(86, 'female', 'group C', 'some college', 'standard', 'none', 73, 80, 82),
(87, 'female', 'group C', 'some college', 'free/reduced', 'none', 76, 83, 88),
(88, 'female', 'group D', 'associate\'s degree', 'standard', 'none', 71, 71, 74),
(89, 'female', 'group A', 'some college', 'standard', 'none', 58, 70, 67),
(90, 'female', 'group D', 'some high school', 'standard', 'none', 73, 86, 82),
(91, 'female', 'group C', 'bachelor\'s degree', 'standard', 'none', 65, 72, 74),
(92, 'male', 'group C', 'high school', 'free/reduced', 'none', 27, 34, 36),
(93, 'male', 'group C', 'high school', 'standard', 'none', 71, 79, 71),
(94, 'male', 'group C', 'associate\'s degree', 'free/reduced', 'completed', 43, 45, 50),
(95, 'female', 'group B', 'some college', 'standard', 'none', 79, 86, 92),
(96, 'male', 'group C', 'associate\'s degree', 'free/reduced', 'completed', 78, 81, 82),
(97, 'male', 'group B', 'some high school', 'standard', 'completed', 65, 66, 62),
(98, 'female', 'group E', 'some college', 'standard', 'completed', 63, 72, 70),
(99, 'female', 'group D', 'some college', 'free/reduced', 'none', 58, 67, 62),
(100, 'female', 'group D', 'bachelor\'s degree', 'standard', 'none', 65, 67, 62),
(101, 'male', 'group B', 'some college', 'standard', 'none', 79, 67, 67),
(102, 'male', 'group D', 'bachelor\'s degree', 'standard', 'completed', 68, 74, 74),
(103, 'female', 'group D', 'associate\'s degree', 'standard', 'none', 85, 91, 89),
(104, 'male', 'group B', 'high school', 'standard', 'completed', 60, 44, 47),
(105, 'male', 'group C', 'some college', 'standard', 'completed', 98, 86, 90),
(106, 'female', 'group C', 'some college', 'standard', 'none', 58, 67, 72),
(107, 'female', 'group D', 'master\'s degree', 'standard', 'none', 87, 100, 100),
(108, 'male', 'group E', 'associate\'s degree', 'standard', 'completed', 66, 63, 64),
(109, 'female', 'group B', 'associate\'s degree', 'free/reduced', 'none', 52, 76, 70),
(110, 'female', 'group B', 'some high school', 'standard', 'none', 70, 64, 72),
(111, 'female', 'group D', 'associate\'s degree', 'free/reduced', 'completed', 77, 89, 98),
(112, 'male', 'group C', 'high school', 'standard', 'none', 62, 55, 49),
(113, 'male', 'group A', 'associate\'s degree', 'standard', 'none', 54, 53, 47),
(114, 'female', 'group D', 'some college', 'standard', 'none', 51, 58, 54),
(115, 'female', 'group E', 'bachelor\'s degree', 'standard', 'completed', 99, 100, 100),
(116, 'male', 'group C', 'high school', 'standard', 'none', 84, 77, 74),
(117, 'female', 'group B', 'bachelor\'s degree', 'free/reduced', 'none', 75, 85, 82),
(118, 'female', 'group D', 'bachelor\'s degree', 'standard', 'none', 78, 82, 79),
(119, 'female', 'group D', 'some high school', 'standard', 'none', 51, 63, 61),
(120, 'female', 'group C', 'some college', 'standard', 'none', 55, 69, 65),
(121, 'female', 'group C', 'bachelor\'s degree', 'standard', 'completed', 79, 92, 89),
(122, 'male', 'group B', 'associate\'s degree', 'standard', 'completed', 91, 89, 92),
(123, 'female', 'group C', 'some college', 'standard', 'completed', 88, 93, 93),
(124, 'male', 'group D', 'high school', 'free/reduced', 'none', 63, 57, 56),
(125, 'male', 'group E', 'some college', 'standard', 'none', 83, 80, 73),
(126, 'female', 'group B', 'high school', 'standard', 'none', 87, 95, 86),
(127, 'male', 'group B', 'some high school', 'standard', 'none', 72, 68, 67),
(128, 'male', 'group D', 'some college', 'standard', 'completed', 65, 77, 74),
(129, 'male', 'group D', 'master\'s degree', 'standard', 'none', 82, 82, 74),
(130, 'female', 'group A', 'bachelor\'s degree', 'standard', 'none', 51, 49, 51),
(131, 'male', 'group D', 'master\'s degree', 'standard', 'none', 89, 84, 82),
(132, 'male', 'group C', 'some high school', 'free/reduced', 'completed', 53, 37, 40),
(133, 'male', 'group E', 'some college', 'free/reduced', 'completed', 87, 74, 70),
(134, 'female', 'group C', 'some college', 'standard', 'completed', 75, 81, 84),
(135, 'male', 'group D', 'bachelor\'s degree', 'free/reduced', 'completed', 74, 79, 75),
(136, 'male', 'group C', 'bachelor\'s degree', 'standard', 'none', 58, 55, 48),
(137, 'male', 'group B', 'some high school', 'standard', 'completed', 51, 54, 41),
(138, 'male', 'group E', 'high school', 'standard', 'none', 70, 55, 56),
(139, 'female', 'group C', 'associate\'s degree', 'standard', 'none', 59, 66, 67),
(140, 'male', 'group D', 'some college', 'standard', 'completed', 71, 61, 69),
(141, 'female', 'group D', 'some high school', 'standard', 'none', 76, 72, 71),
(142, 'female', 'group C', 'some college', 'free/reduced', 'none', 59, 62, 64),
(143, 'female', 'group E', 'some college', 'free/reduced', 'completed', 42, 55, 54),
(144, 'male', 'group A', 'high school', 'standard', 'none', 57, 43, 47),
(145, 'male', 'group D', 'some college', 'standard', 'none', 88, 73, 78),
(146, 'female', 'group C', 'some college', 'free/reduced', 'none', 22, 39, 33),
(147, 'male', 'group B', 'some high school', 'standard', 'none', 88, 84, 75),
(148, 'male', 'group C', 'associate\'s degree', 'free/reduced', 'none', 73, 68, 66),
(149, 'female', 'group D', 'bachelor\'s degree', 'standard', 'completed', 68, 75, 81),
(150, 'male', 'group E', 'associate\'s degree', 'free/reduced', 'completed', 100, 100, 93),
(151, 'male', 'group A', 'some high school', 'standard', 'completed', 62, 67, 69),
(152, 'male', 'group A', 'bachelor\'s degree', 'standard', 'none', 77, 67, 68),
(153, 'female', 'group B', 'associate\'s degree', 'standard', 'completed', 59, 70, 66),
(154, 'male', 'group D', 'bachelor\'s degree', 'standard', 'none', 54, 49, 47),
(155, 'male', 'group D', 'some high school', 'standard', 'none', 62, 67, 61),
(156, 'female', 'group C', 'some college', 'standard', 'completed', 70, 89, 88),
(157, 'female', 'group E', 'high school', 'free/reduced', 'completed', 66, 74, 78),
(158, 'male', 'group B', 'some college', 'free/reduced', 'none', 60, 60, 60),
(159, 'female', 'group B', 'associate\'s degree', 'standard', 'completed', 61, 86, 87),
(160, 'male', 'group D', 'associate\'s degree', 'free/reduced', 'none', 66, 62, 64),
(161, 'male', 'group B', 'associate\'s degree', 'free/reduced', 'completed', 82, 78, 74),
(162, 'female', 'group E', 'some college', 'free/reduced', 'completed', 75, 88, 85),
(163, 'male', 'group B', 'master\'s degree', 'free/reduced', 'none', 49, 53, 52),
(164, 'male', 'group C', 'high school', 'standard', 'none', 52, 53, 49),
(165, 'female', 'group E', 'master\'s degree', 'standard', 'none', 81, 92, 91),
(166, 'female', 'group C', 'bachelor\'s degree', 'standard', 'completed', 96, 100, 100),
(167, 'male', 'group C', 'high school', 'free/reduced', 'completed', 53, 51, 51),
(168, 'female', 'group B', 'master\'s degree', 'free/reduced', 'completed', 58, 76, 78),
(169, 'female', 'group B', 'high school', 'standard', 'completed', 68, 83, 78),
(170, 'female', 'group C', 'some college', 'free/reduced', 'completed', 67, 75, 70),
(171, 'male', 'group A', 'high school', 'standard', 'completed', 72, 73, 74),
(172, 'male', 'group E', 'some high school', 'standard', 'none', 94, 88, 78),
(173, 'female', 'group D', 'some college', 'standard', 'none', 79, 86, 81),
(174, 'female', 'group C', 'associate\'s degree', 'standard', 'none', 63, 67, 70),
(175, 'female', 'group C', 'bachelor\'s degree', 'free/reduced', 'completed', 43, 51, 54),
(176, 'female', 'group C', 'master\'s degree', 'standard', 'completed', 81, 91, 87),
(177, 'female', 'group B', 'high school', 'free/reduced', 'completed', 46, 54, 58),
(178, 'female', 'group C', 'associate\'s degree', 'standard', 'completed', 71, 77, 77),
(179, 'female', 'group B', 'master\'s degree', 'free/reduced', 'completed', 52, 70, 62),
(180, 'female', 'group D', 'some high school', 'standard', 'completed', 97, 100, 100),
(181, 'male', 'group C', 'master\'s degree', 'free/reduced', 'completed', 62, 68, 75),
(182, 'female', 'group C', 'some college', 'free/reduced', 'none', 46, 64, 66),
(183, 'female', 'group E', 'high school', 'standard', 'none', 50, 50, 47),
(184, 'female', 'group D', 'associate\'s degree', 'standard', 'none', 65, 69, 70),
(185, 'male', 'group C', 'some high school', 'free/reduced', 'completed', 45, 52, 49),
(186, 'male', 'group C', 'associate\'s degree', 'free/reduced', 'completed', 65, 67, 65),
(187, 'male', 'group E', 'high school', 'standard', 'none', 80, 76, 65),
(188, 'male', 'group D', 'some high school', 'standard', 'completed', 62, 66, 68),
(189, 'male', 'group B', 'some high school', 'free/reduced', 'none', 48, 52, 45),
(190, 'female', 'group C', 'bachelor\'s degree', 'standard', 'none', 77, 88, 87),
(191, 'female', 'group E', 'associate\'s degree', 'standard', 'none', 66, 65, 69),
(192, 'male', 'group D', 'some college', 'standard', 'completed', 76, 83, 79),
(193, 'female', 'group B', 'some high school', 'standard', 'none', 62, 64, 66),
(194, 'male', 'group D', 'some college', 'standard', 'completed', 77, 62, 62),
(195, 'female', 'group C', 'master\'s degree', 'standard', 'completed', 69, 84, 85),
(196, 'male', 'group D', 'associate\'s degree', 'standard', 'none', 61, 55, 52),
(197, 'male', 'group C', 'some high school', 'free/reduced', 'completed', 59, 69, 65),
(198, 'male', 'group E', 'high school', 'free/reduced', 'none', 55, 56, 51),
(199, 'female', 'group B', 'some college', 'free/reduced', 'none', 45, 53, 55),
(200, 'female', 'group B', 'bachelor\'s degree', 'free/reduced', 'none', 78, 79, 76),
(201, 'female', 'group C', 'associate\'s degree', 'standard', 'completed', 67, 84, 86),
(202, 'female', 'group D', 'some college', 'free/reduced', 'none', 65, 81, 77),
(203, 'male', 'group C', 'associate\'s degree', 'standard', 'none', 69, 77, 69),
(204, 'female', 'group B', 'associate\'s degree', 'standard', 'none', 57, 69, 68),
(205, 'male', 'group C', 'some college', 'standard', 'none', 59, 41, 42),
(206, 'male', 'group D', 'some high school', 'standard', 'completed', 74, 71, 78),
(207, 'male', 'group E', 'bachelor\'s degree', 'standard', 'none', 82, 62, 62),
(208, 'male', 'group E', 'high school', 'standard', 'completed', 81, 80, 76),
(209, 'female', 'group B', 'some college', 'free/reduced', 'none', 74, 81, 76),
(210, 'female', 'group B', 'some college', 'free/reduced', 'none', 58, 61, 66),
(211, 'male', 'group D', 'some high school', 'free/reduced', 'completed', 80, 79, 79),
(212, 'male', 'group C', 'some college', 'free/reduced', 'none', 35, 28, 27),
(213, 'female', 'group C', 'high school', 'free/reduced', 'none', 42, 62, 60),
(214, 'male', 'group C', 'associate\'s degree', 'free/reduced', 'completed', 60, 51, 56),
(215, 'male', 'group E', 'high school', 'standard', 'completed', 87, 91, 81),
(216, 'male', 'group B', 'some high school', 'standard', 'completed', 84, 83, 75),
(217, 'female', 'group E', 'associate\'s degree', 'free/reduced', 'completed', 83, 86, 88),
(218, 'female', 'group C', 'high school', 'free/reduced', 'none', 34, 42, 39),
(219, 'male', 'group B', 'high school', 'free/reduced', 'none', 66, 77, 70),
(220, 'male', 'group B', 'some high school', 'standard', 'completed', 61, 56, 56),
(221, 'female', 'group D', 'high school', 'standard', 'completed', 56, 68, 74),
(222, 'male', 'group B', 'associate\'s degree', 'standard', 'none', 87, 85, 73),
(223, 'female', 'group C', 'some high school', 'free/reduced', 'none', 55, 65, 62),
(224, 'male', 'group D', 'some high school', 'standard', 'none', 86, 80, 75),
(225, 'female', 'group B', 'associate\'s degree', 'standard', 'completed', 52, 66, 73),
(226, 'female', 'group E', 'master\'s degree', 'free/reduced', 'none', 45, 56, 54),
(227, 'female', 'group C', 'some college', 'standard', 'none', 72, 72, 71),
(228, 'male', 'group D', 'high school', 'standard', 'none', 57, 50, 54),
(229, 'male', 'group A', 'some high school', 'free/reduced', 'none', 68, 72, 64),
(230, 'female', 'group C', 'some college', 'standard', 'completed', 88, 95, 94),
(231, 'male', 'group D', 'some college', 'standard', 'none', 76, 64, 66),
(232, 'male', 'group C', 'associate\'s degree', 'standard', 'none', 46, 43, 42),
(233, 'female', 'group B', 'bachelor\'s degree', 'standard', 'none', 67, 86, 83),
(234, 'male', 'group E', 'some high school', 'standard', 'none', 92, 87, 78),
(235, 'male', 'group C', 'bachelor\'s degree', 'standard', 'completed', 83, 82, 84),
(236, 'male', 'group D', 'associate\'s degree', 'standard', 'none', 80, 75, 77),
(237, 'male', 'group D', 'bachelor\'s degree', 'free/reduced', 'none', 63, 66, 67),
(238, 'female', 'group D', 'some high school', 'standard', 'completed', 64, 60, 74),
(239, 'male', 'group B', 'some college', 'standard', 'none', 54, 52, 51),
(240, 'male', 'group C', 'associate\'s degree', 'standard', 'none', 84, 80, 80),
(241, 'male', 'group D', 'high school', 'free/reduced', 'completed', 73, 68, 66),
(242, 'female', 'group E', 'bachelor\'s degree', 'standard', 'none', 80, 83, 83),
(243, 'female', 'group D', 'high school', 'standard', 'none', 56, 52, 55),
(244, 'male', 'group E', 'some college', 'standard', 'none', 59, 51, 43),
(245, 'male', 'group D', 'some high school', 'standard', 'none', 75, 74, 69),
(246, 'male', 'group C', 'associate\'s degree', 'standard', 'none', 85, 76, 71),
(247, 'male', 'group E', 'associate\'s degree', 'standard', 'none', 89, 76, 74),
(248, 'female', 'group B', 'high school', 'standard', 'completed', 58, 70, 68),
(249, 'female', 'group B', 'high school', 'standard', 'none', 65, 64, 62),
(250, 'male', 'group C', 'high school', 'standard', 'none', 68, 60, 53),
(251, 'male', 'group A', 'some high school', 'standard', 'completed', 47, 49, 49),
(252, 'female', 'group D', 'some college', 'free/reduced', 'none', 71, 83, 83),
(253, 'female', 'group B', 'some high school', 'standard', 'completed', 60, 70, 70),
(254, 'male', 'group D', 'master\'s degree', 'standard', 'none', 80, 80, 72),
(255, 'male', 'group D', 'high school', 'standard', 'none', 54, 52, 52),
(256, 'female', 'group E', 'some college', 'standard', 'none', 62, 73, 70),
(257, 'female', 'group C', 'associate\'s degree', 'free/reduced', 'none', 64, 73, 68),
(258, 'male', 'group C', 'associate\'s degree', 'standard', 'completed', 78, 77, 77),
(259, 'female', 'group B', 'some college', 'standard', 'none', 70, 75, 78),
(260, 'female', 'group C', 'master\'s degree', 'free/reduced', 'completed', 65, 81, 81),
(261, 'female', 'group C', 'some high school', 'free/reduced', 'completed', 64, 79, 77),
(262, 'male', 'group C', 'some college', 'standard', 'completed', 79, 79, 78),
(263, 'female', 'group C', 'some high school', 'free/reduced', 'none', 44, 50, 51),
(264, 'female', 'group E', 'high school', 'standard', 'none', 99, 93, 90),
(265, 'male', 'group D', 'high school', 'standard', 'none', 76, 73, 68),
(266, 'male', 'group D', 'some high school', 'free/reduced', 'none', 59, 42, 41),
(267, 'female', 'group C', 'bachelor\'s degree', 'standard', 'none', 63, 75, 81),
(268, 'female', 'group D', 'high school', 'standard', 'none', 69, 72, 77),
(269, 'female', 'group D', 'associate\'s degree', 'standard', 'completed', 88, 92, 95),
(270, 'female', 'group E', 'some college', 'free/reduced', 'none', 71, 76, 70),
(271, 'male', 'group C', 'bachelor\'s degree', 'standard', 'none', 69, 63, 61),
(272, 'male', 'group C', 'some college', 'standard', 'none', 58, 49, 42),
(273, 'female', 'group D', 'associate\'s degree', 'free/reduced', 'none', 47, 53, 58),
(274, 'female', 'group D', 'some college', 'standard', 'none', 65, 70, 71),
(275, 'male', 'group B', 'some college', 'standard', 'completed', 88, 85, 76),
(276, 'male', 'group C', 'bachelor\'s degree', 'standard', 'none', 83, 78, 73),
(277, 'female', 'group C', 'some high school', 'standard', 'completed', 85, 92, 93),
(278, 'female', 'group E', 'high school', 'standard', 'completed', 59, 63, 75),
(279, 'female', 'group C', 'some high school', 'free/reduced', 'none', 65, 86, 80),
(280, 'male', 'group B', 'bachelor\'s degree', 'free/reduced', 'none', 73, 56, 57),
(281, 'male', 'group D', 'high school', 'standard', 'none', 53, 52, 42),
(282, 'male', 'group D', 'high school', 'standard', 'none', 45, 48, 46),
(283, 'female', 'group D', 'bachelor\'s degree', 'free/reduced', 'none', 73, 79, 84),
(284, 'female', 'group D', 'some college', 'free/reduced', 'completed', 70, 78, 78),
(285, 'female', 'group B', 'some high school', 'standard', 'none', 37, 46, 46),
(286, 'male', 'group B', 'associate\'s degree', 'standard', 'completed', 81, 82, 82),
(287, 'male', 'group E', 'associate\'s degree', 'standard', 'completed', 97, 82, 88),
(288, 'female', 'group B', 'some high school', 'standard', 'none', 67, 89, 82),
(289, 'male', 'group B', 'bachelor\'s degree', 'free/reduced', 'none', 88, 75, 76),
(290, 'male', 'group E', 'some high school', 'standard', 'completed', 77, 76, 77),
(291, 'male', 'group C', 'associate\'s degree', 'standard', 'none', 76, 70, 68),
(292, 'male', 'group D', 'some high school', 'standard', 'none', 86, 73, 70),
(293, 'male', 'group C', 'some high school', 'standard', 'completed', 63, 60, 57),
(294, 'female', 'group E', 'bachelor\'s degree', 'standard', 'none', 65, 73, 75),
(295, 'male', 'group D', 'high school', 'free/reduced', 'completed', 78, 77, 80),
(296, 'male', 'group B', 'associate\'s degree', 'free/reduced', 'none', 67, 62, 60),
(297, 'male', 'group A', 'some high school', 'standard', 'completed', 46, 41, 43),
(298, 'male', 'group E', 'associate\'s degree', 'standard', 'completed', 71, 74, 68),
(299, 'male', 'group C', 'high school', 'free/reduced', 'completed', 40, 46, 50),
(300, 'male', 'group D', 'associate\'s degree', 'free/reduced', 'none', 90, 87, 75),
(301, 'male', 'group A', 'some college', 'free/reduced', 'completed', 81, 78, 81),
(302, 'male', 'group D', 'some high school', 'free/reduced', 'none', 56, 54, 52),
(303, 'female', 'group C', 'associate\'s degree', 'standard', 'completed', 67, 84, 81),
(304, 'male', 'group B', 'associate\'s degree', 'standard', 'none', 80, 76, 64),
(305, 'female', 'group C', 'associate\'s degree', 'standard', 'completed', 74, 75, 83),
(306, 'male', 'group A', 'some college', 'standard', 'none', 69, 67, 69),
(307, 'male', 'group E', 'some college', 'standard', 'completed', 99, 87, 81),
(308, 'male', 'group C', 'some high school', 'standard', 'none', 51, 52, 44),
(309, 'female', 'group B', 'associate\'s degree', 'free/reduced', 'none', 53, 71, 67),
(310, 'female', 'group D', 'high school', 'free/reduced', 'none', 49, 57, 52),
(311, 'female', 'group B', 'associate\'s degree', 'standard', 'none', 73, 76, 80),
(312, 'male', 'group B', 'bachelor\'s degree', 'standard', 'none', 66, 60, 57),
(313, 'male', 'group D', 'bachelor\'s degree', 'standard', 'completed', 67, 61, 68),
(314, 'female', 'group C', 'associate\'s degree', 'free/reduced', 'completed', 68, 67, 69),
(315, 'female', 'group C', 'bachelor\'s degree', 'standard', 'completed', 59, 64, 75),
(316, 'male', 'group C', 'high school', 'standard', 'none', 71, 66, 65),
(317, 'female', 'group D', 'master\'s degree', 'standard', 'completed', 77, 82, 91),
(318, 'male', 'group C', 'associate\'s degree', 'standard', 'none', 83, 72, 78),
(319, 'male', 'group B', 'bachelor\'s degree', 'standard', 'none', 63, 71, 69),
(320, 'female', 'group D', 'associate\'s degree', 'free/reduced', 'none', 56, 65, 63),
(321, 'female', 'group C', 'high school', 'free/reduced', 'completed', 67, 79, 84),
(322, 'female', 'group E', 'high school', 'standard', 'none', 75, 86, 79),
(323, 'female', 'group C', 'some college', 'standard', 'none', 71, 81, 80),
(324, 'female', 'group C', 'some high school', 'free/reduced', 'none', 43, 53, 53),
(325, 'female', 'group C', 'high school', 'free/reduced', 'none', 41, 46, 43),
(326, 'female', 'group C', 'some college', 'standard', 'none', 82, 90, 94),
(327, 'male', 'group C', 'some college', 'standard', 'none', 61, 61, 62),
(328, 'male', 'group A', 'some college', 'free/reduced', 'none', 28, 23, 19),
(329, 'male', 'group C', 'associate\'s degree', 'standard', 'completed', 82, 75, 77),
(330, 'female', 'group B', 'some high school', 'standard', 'none', 41, 55, 51),
(331, 'male', 'group C', 'high school', 'standard', 'none', 71, 60, 61),
(332, 'male', 'group C', 'associate\'s degree', 'standard', 'none', 47, 37, 35),
(333, 'male', 'group E', 'associate\'s degree', 'standard', 'completed', 62, 56, 53),
(334, 'male', 'group B', 'associate\'s degree', 'standard', 'none', 90, 78, 81),
(335, 'female', 'group C', 'bachelor\'s degree', 'standard', 'none', 83, 93, 95),
(336, 'female', 'group B', 'some college', 'free/reduced', 'none', 61, 68, 66),
(337, 'male', 'group D', 'some high school', 'standard', 'completed', 76, 70, 69),
(338, 'male', 'group C', 'associate\'s degree', 'standard', 'none', 49, 51, 43),
(339, 'female', 'group B', 'some high school', 'free/reduced', 'none', 24, 38, 27),
(340, 'female', 'group D', 'some high school', 'free/reduced', 'completed', 35, 55, 60),
(341, 'male', 'group C', 'high school', 'free/reduced', 'none', 58, 61, 52),
(342, 'female', 'group C', 'high school', 'standard', 'none', 61, 73, 63),
(343, 'female', 'group B', 'high school', 'standard', 'completed', 69, 76, 74),
(344, 'male', 'group D', 'associate\'s degree', 'standard', 'completed', 67, 72, 67),
(345, 'male', 'group D', 'some college', 'standard', 'none', 79, 73, 67),
(346, 'female', 'group C', 'high school', 'standard', 'none', 72, 80, 75),
(347, 'male', 'group B', 'some college', 'standard', 'none', 62, 61, 57),
(348, 'female', 'group C', 'bachelor\'s degree', 'standard', 'completed', 77, 94, 95),
(349, 'male', 'group D', 'high school', 'free/reduced', 'none', 75, 74, 66),
(350, 'male', 'group E', 'associate\'s degree', 'standard', 'none', 87, 74, 76),
(351, 'female', 'group B', 'bachelor\'s degree', 'standard', 'none', 52, 65, 69),
(352, 'male', 'group E', 'some college', 'standard', 'none', 66, 57, 52),
(353, 'female', 'group C', 'some college', 'standard', 'completed', 63, 78, 80),
(354, 'female', 'group C', 'associate\'s degree', 'standard', 'none', 46, 58, 57),
(355, 'female', 'group C', 'some college', 'standard', 'none', 59, 71, 70),
(356, 'female', 'group B', 'bachelor\'s degree', 'standard', 'none', 61, 72, 70),
(357, 'male', 'group A', 'associate\'s degree', 'standard', 'none', 63, 61, 61),
(358, 'female', 'group C', 'some college', 'free/reduced', 'completed', 42, 66, 69),
(359, 'male', 'group D', 'some college', 'free/reduced', 'none', 59, 62, 61),
(360, 'female', 'group D', 'some college', 'standard', 'none', 80, 90, 89),
(361, 'female', 'group B', 'high school', 'standard', 'none', 58, 62, 59),
(362, 'male', 'group B', 'some high school', 'standard', 'completed', 85, 84, 78),
(363, 'female', 'group C', 'some college', 'standard', 'none', 52, 58, 58),
(364, 'female', 'group D', 'some high school', 'free/reduced', 'none', 27, 34, 32),
(365, 'male', 'group C', 'some college', 'standard', 'none', 59, 60, 58),
(366, 'male', 'group A', 'bachelor\'s degree', 'free/reduced', 'completed', 49, 58, 60),
(367, 'male', 'group C', 'high school', 'standard', 'completed', 69, 58, 53),
(368, 'male', 'group C', 'bachelor\'s degree', 'free/reduced', 'none', 61, 66, 61),
(369, 'female', 'group A', 'some high school', 'free/reduced', 'none', 44, 64, 58),
(370, 'female', 'group D', 'some high school', 'standard', 'none', 73, 84, 85),
(371, 'male', 'group E', 'some college', 'standard', 'none', 84, 77, 71),
(372, 'female', 'group C', 'some college', 'free/reduced', 'completed', 45, 73, 70),
(373, 'male', 'group D', 'some high school', 'standard', 'none', 74, 74, 72),
(374, 'female', 'group D', 'some college', 'standard', 'completed', 82, 97, 96),
(375, 'female', 'group D', 'bachelor\'s degree', 'standard', 'none', 59, 70, 73),
(376, 'male', 'group E', 'associate\'s degree', 'free/reduced', 'none', 46, 43, 41),
(377, 'female', 'group D', 'some high school', 'standard', 'none', 80, 90, 82),
(378, 'female', 'group D', 'master\'s degree', 'free/reduced', 'completed', 85, 95, 100),
(379, 'female', 'group A', 'some high school', 'standard', 'none', 71, 83, 77),
(380, 'male', 'group A', 'bachelor\'s degree', 'standard', 'none', 66, 64, 62),
(381, 'female', 'group B', 'associate\'s degree', 'standard', 'none', 80, 86, 83),
(382, 'male', 'group C', 'associate\'s degree', 'standard', 'completed', 87, 100, 95),
(383, 'male', 'group C', 'master\'s degree', 'free/reduced', 'none', 79, 81, 71),
(384, 'female', 'group E', 'some high school', 'free/reduced', 'none', 38, 49, 45),
(385, 'female', 'group A', 'some high school', 'free/reduced', 'none', 38, 43, 43),
(386, 'female', 'group E', 'some college', 'standard', 'none', 67, 76, 75),
(387, 'female', 'group E', 'bachelor\'s degree', 'standard', 'none', 64, 73, 70),
(388, 'female', 'group C', 'associate\'s degree', 'free/reduced', 'none', 57, 78, 67),
(389, 'female', 'group D', 'high school', 'standard', 'none', 62, 64, 64),
(390, 'male', 'group D', 'master\'s degree', 'standard', 'none', 73, 70, 75),
(391, 'male', 'group E', 'some high school', 'free/reduced', 'completed', 73, 67, 59),
(392, 'female', 'group D', 'some college', 'standard', 'none', 77, 68, 77),
(393, 'male', 'group E', 'some college', 'standard', 'none', 76, 67, 67),
(394, 'male', 'group C', 'associate\'s degree', 'standard', 'completed', 57, 54, 56),
(395, 'female', 'group C', 'some high school', 'standard', 'completed', 65, 74, 77),
(396, 'male', 'group A', 'high school', 'free/reduced', 'none', 48, 45, 41),
(397, 'female', 'group B', 'high school', 'free/reduced', 'none', 50, 67, 63),
(398, 'female', 'group C', 'associate\'s degree', 'standard', 'none', 85, 89, 95),
(399, 'male', 'group B', 'some high school', 'standard', 'none', 74, 63, 57),
(400, 'male', 'group D', 'some high school', 'standard', 'none', 60, 59, 54),
(401, 'female', 'group C', 'some high school', 'standard', 'completed', 59, 54, 67),
(402, 'male', 'group A', 'some college', 'standard', 'none', 53, 43, 43),
(403, 'female', 'group A', 'some college', 'free/reduced', 'none', 49, 65, 55),
(404, 'female', 'group D', 'high school', 'standard', 'completed', 88, 99, 100),
(405, 'female', 'group C', 'high school', 'standard', 'none', 54, 59, 62),
(406, 'female', 'group C', 'some high school', 'standard', 'none', 63, 73, 68),
(407, 'male', 'group B', 'associate\'s degree', 'standard', 'completed', 65, 65, 63),
(408, 'female', 'group B', 'associate\'s degree', 'standard', 'none', 82, 80, 77),
(409, 'female', 'group D', 'high school', 'free/reduced', 'completed', 52, 57, 56),
(410, 'male', 'group D', 'associate\'s degree', 'standard', 'completed', 87, 84, 85),
(411, 'female', 'group D', 'master\'s degree', 'standard', 'completed', 70, 71, 74),
(412, 'male', 'group E', 'some college', 'standard', 'completed', 84, 83, 78),
(413, 'male', 'group D', 'associate\'s degree', 'standard', 'none', 71, 66, 60),
(414, 'male', 'group B', 'some high school', 'standard', 'completed', 63, 67, 67),
(415, 'female', 'group C', 'bachelor\'s degree', 'free/reduced', 'completed', 51, 72, 79),
(416, 'male', 'group E', 'high school', 'standard', 'none', 84, 73, 69),
(417, 'male', 'group C', 'bachelor\'s degree', 'standard', 'completed', 71, 74, 68),
(418, 'male', 'group C', 'associate\'s degree', 'standard', 'none', 74, 73, 67),
(419, 'male', 'group D', 'some college', 'standard', 'none', 68, 59, 62),
(420, 'male', 'group E', 'high school', 'free/reduced', 'completed', 57, 56, 54),
(421, 'female', 'group C', 'associate\'s degree', 'free/reduced', 'completed', 82, 93, 93),
(422, 'female', 'group D', 'high school', 'standard', 'completed', 57, 58, 64),
(423, 'female', 'group D', 'master\'s degree', 'free/reduced', 'completed', 47, 58, 67),
(424, 'female', 'group A', 'some high school', 'standard', 'completed', 59, 85, 80),
(425, 'male', 'group B', 'some college', 'free/reduced', 'none', 41, 39, 34),
(426, 'female', 'group C', 'some college', 'free/reduced', 'none', 62, 67, 62),
(427, 'male', 'group C', 'bachelor\'s degree', 'standard', 'none', 86, 83, 86),
(428, 'male', 'group C', 'some high school', 'free/reduced', 'none', 69, 71, 65),
(429, 'male', 'group A', 'some high school', 'free/reduced', 'none', 65, 59, 53),
(430, 'male', 'group C', 'some high school', 'free/reduced', 'none', 68, 63, 54),
(431, 'male', 'group C', 'associate\'s degree', 'free/reduced', 'none', 64, 66, 59),
(432, 'female', 'group C', 'high school', 'standard', 'none', 61, 72, 70),
(433, 'male', 'group C', 'high school', 'standard', 'none', 61, 56, 55),
(434, 'female', 'group A', 'some high school', 'free/reduced', 'none', 47, 59, 50),
(435, 'male', 'group C', 'some high school', 'standard', 'none', 73, 66, 66),
(436, 'male', 'group C', 'some college', 'free/reduced', 'completed', 50, 48, 53),
(437, 'male', 'group D', 'associate\'s degree', 'standard', 'none', 75, 68, 64),
(438, 'male', 'group D', 'associate\'s degree', 'free/reduced', 'none', 75, 66, 73),
(439, 'male', 'group C', 'high school', 'standard', 'none', 70, 56, 51),
(440, 'male', 'group D', 'some high school', 'standard', 'completed', 89, 88, 82),
(441, 'female', 'group C', 'some college', 'standard', 'completed', 67, 81, 79),
(442, 'female', 'group D', 'high school', 'standard', 'none', 78, 81, 80),
(443, 'female', 'group A', 'some high school', 'free/reduced', 'none', 59, 73, 69),
(444, 'female', 'group B', 'associate\'s degree', 'standard', 'none', 73, 83, 76),
(445, 'male', 'group A', 'some high school', 'free/reduced', 'none', 79, 82, 73),
(446, 'female', 'group C', 'some high school', 'standard', 'completed', 67, 74, 77),
(447, 'male', 'group D', 'some college', 'free/reduced', 'none', 69, 66, 60),
(448, 'male', 'group C', 'high school', 'standard', 'completed', 86, 81, 80),
(449, 'male', 'group B', 'high school', 'standard', 'none', 47, 46, 42),
(450, 'male', 'group B', 'associate\'s degree', 'standard', 'none', 81, 73, 72),
(451, 'female', 'group C', 'some college', 'free/reduced', 'completed', 64, 85, 85),
(452, 'female', 'group E', 'some college', 'standard', 'none', 100, 92, 97),
(453, 'female', 'group C', 'associate\'s degree', 'free/reduced', 'none', 65, 77, 74),
(454, 'male', 'group C', 'some college', 'free/reduced', 'none', 65, 58, 49),
(455, 'female', 'group C', 'associate\'s degree', 'free/reduced', 'none', 53, 61, 62),
(456, 'male', 'group C', 'bachelor\'s degree', 'free/reduced', 'none', 37, 56, 47),
(457, 'female', 'group D', 'bachelor\'s degree', 'standard', 'none', 79, 89, 89),
(458, 'male', 'group D', 'associate\'s degree', 'free/reduced', 'none', 53, 54, 48),
(459, 'female', 'group E', 'bachelor\'s degree', 'standard', 'none', 100, 100, 100),
(460, 'male', 'group B', 'high school', 'standard', 'completed', 72, 65, 68),
(461, 'male', 'group C', 'bachelor\'s degree', 'free/reduced', 'none', 53, 58, 55),
(462, 'male', 'group B', 'some college', 'free/reduced', 'none', 54, 54, 45),
(463, 'female', 'group E', 'some college', 'standard', 'none', 71, 70, 76),
(464, 'female', 'group C', 'some college', 'free/reduced', 'none', 77, 90, 91),
(465, 'male', 'group A', 'bachelor\'s degree', 'standard', 'completed', 75, 58, 62),
(466, 'female', 'group C', 'some college', 'standard', 'none', 84, 87, 91),
(467, 'female', 'group D', 'associate\'s degree', 'free/reduced', 'none', 26, 31, 38),
(468, 'male', 'group A', 'high school', 'free/reduced', 'completed', 72, 67, 65),
(469, 'female', 'group A', 'high school', 'free/reduced', 'completed', 77, 88, 85),
(470, 'male', 'group C', 'some college', 'standard', 'none', 91, 74, 76),
(471, 'female', 'group C', 'associate\'s degree', 'standard', 'completed', 83, 85, 90),
(472, 'female', 'group C', 'high school', 'standard', 'none', 63, 69, 74),
(473, 'female', 'group C', 'associate\'s degree', 'standard', 'completed', 68, 86, 84),
(474, 'female', 'group D', 'some high school', 'standard', 'none', 59, 67, 61),
(475, 'female', 'group B', 'associate\'s degree', 'standard', 'completed', 90, 90, 91),
(476, 'female', 'group D', 'bachelor\'s degree', 'standard', 'completed', 71, 76, 83),
(477, 'male', 'group E', 'bachelor\'s degree', 'standard', 'completed', 76, 62, 66),
(478, 'male', 'group D', 'associate\'s degree', 'standard', 'none', 80, 68, 72),
(479, 'female', 'group D', 'master\'s degree', 'standard', 'none', 55, 64, 70),
(480, 'male', 'group E', 'associate\'s degree', 'standard', 'none', 76, 71, 67),
(481, 'male', 'group B', 'high school', 'standard', 'completed', 73, 71, 68),
(482, 'female', 'group D', 'associate\'s degree', 'free/reduced', 'none', 52, 59, 56),
(483, 'male', 'group C', 'some college', 'free/reduced', 'none', 68, 68, 61),
(484, 'male', 'group A', 'high school', 'standard', 'none', 59, 52, 46),
(485, 'female', 'group B', 'associate\'s degree', 'standard', 'none', 49, 52, 54),
(486, 'male', 'group C', 'high school', 'standard', 'none', 70, 74, 71),
(487, 'male', 'group D', 'some college', 'free/reduced', 'none', 61, 47, 56),
(488, 'female', 'group C', 'associate\'s degree', 'free/reduced', 'none', 60, 75, 74),
(489, 'male', 'group B', 'some high school', 'standard', 'completed', 64, 53, 57),
(490, 'male', 'group A', 'associate\'s degree', 'free/reduced', 'completed', 79, 82, 82),
(491, 'female', 'group A', 'associate\'s degree', 'free/reduced', 'none', 65, 85, 76),
(492, 'female', 'group C', 'associate\'s degree', 'standard', 'none', 64, 64, 70),
(493, 'female', 'group C', 'some college', 'standard', 'none', 83, 83, 90),
(494, 'female', 'group C', 'bachelor\'s degree', 'standard', 'none', 81, 88, 90),
(495, 'female', 'group B', 'high school', 'standard', 'none', 54, 64, 68),
(496, 'male', 'group D', 'high school', 'standard', 'completed', 68, 64, 66),
(497, 'female', 'group C', 'some college', 'standard', 'none', 54, 48, 52),
(498, 'female', 'group D', 'some college', 'free/reduced', 'completed', 59, 78, 76),
(499, 'female', 'group B', 'some high school', 'standard', 'none', 66, 69, 68),
(500, 'male', 'group E', 'some college', 'standard', 'none', 76, 71, 72),
(501, 'female', 'group D', 'master\'s degree', 'standard', 'none', 74, 79, 82),
(502, 'female', 'group B', 'associate\'s degree', 'standard', 'completed', 94, 87, 92),
(503, 'male', 'group C', 'some college', 'free/reduced', 'none', 63, 61, 54),
(504, 'female', 'group E', 'associate\'s degree', 'standard', 'completed', 95, 89, 92),
(505, 'female', 'group D', 'master\'s degree', 'free/reduced', 'none', 40, 59, 54),
(506, 'female', 'group B', 'some high school', 'standard', 'none', 82, 82, 80),
(507, 'male', 'group A', 'high school', 'standard', 'none', 68, 70, 66),
(508, 'male', 'group B', 'bachelor\'s degree', 'free/reduced', 'none', 55, 59, 54),
(509, 'male', 'group C', 'master\'s degree', 'standard', 'none', 79, 78, 77),
(510, 'female', 'group C', 'bachelor\'s degree', 'standard', 'none', 86, 92, 87),
(511, 'male', 'group D', 'some college', 'standard', 'none', 76, 71, 73),
(512, 'male', 'group A', 'some high school', 'standard', 'none', 64, 50, 43),
(513, 'male', 'group D', 'some high school', 'free/reduced', 'none', 62, 49, 52),
(514, 'female', 'group B', 'some high school', 'standard', 'completed', 54, 61, 62),
(515, 'female', 'group B', 'master\'s degree', 'free/reduced', 'completed', 77, 97, 94),
(516, 'female', 'group C', 'some high school', 'standard', 'completed', 76, 87, 85),
(517, 'female', 'group D', 'some college', 'standard', 'none', 74, 89, 84),
(518, 'female', 'group E', 'some college', 'standard', 'completed', 66, 74, 73),
(519, 'female', 'group D', 'some high school', 'standard', 'completed', 66, 78, 78),
(520, 'female', 'group B', 'high school', 'free/reduced', 'completed', 67, 78, 79),
(521, 'male', 'group D', 'some college', 'standard', 'none', 71, 49, 52),
(522, 'female', 'group C', 'associate\'s degree', 'standard', 'none', 91, 86, 84),
(523, 'male', 'group D', 'bachelor\'s degree', 'standard', 'none', 69, 58, 57),
(524, 'male', 'group C', 'master\'s degree', 'free/reduced', 'none', 54, 59, 50),
(525, 'male', 'group C', 'high school', 'standard', 'completed', 53, 52, 49),
(526, 'male', 'group E', 'some college', 'standard', 'none', 68, 60, 59),
(527, 'male', 'group C', 'some high school', 'free/reduced', 'completed', 56, 61, 60),
(528, 'female', 'group C', 'high school', 'free/reduced', 'none', 36, 53, 43),
(529, 'female', 'group D', 'bachelor\'s degree', 'free/reduced', 'none', 29, 41, 47),
(530, 'female', 'group C', 'associate\'s degree', 'standard', 'none', 62, 74, 70),
(531, 'female', 'group C', 'associate\'s degree', 'standard', 'completed', 68, 67, 73),
(532, 'female', 'group C', 'some high school', 'standard', 'none', 47, 54, 53),
(533, 'male', 'group E', 'associate\'s degree', 'standard', 'completed', 62, 61, 58),
(534, 'female', 'group E', 'associate\'s degree', 'standard', 'completed', 79, 88, 94),
(535, 'male', 'group B', 'high school', 'standard', 'completed', 73, 69, 68),
(536, 'female', 'group C', 'bachelor\'s degree', 'free/reduced', 'completed', 66, 83, 83),
(537, 'male', 'group C', 'associate\'s degree', 'standard', 'completed', 51, 60, 58),
(538, 'female', 'group D', 'high school', 'standard', 'none', 51, 66, 62),
(539, 'male', 'group E', 'bachelor\'s degree', 'standard', 'completed', 85, 66, 71),
(540, 'male', 'group A', 'associate\'s degree', 'standard', 'completed', 97, 92, 86),
(541, 'male', 'group C', 'high school', 'standard', 'completed', 75, 69, 68),
(542, 'male', 'group D', 'associate\'s degree', 'free/reduced', 'completed', 79, 82, 80),
(543, 'female', 'group C', 'associate\'s degree', 'standard', 'none', 81, 77, 79),
(544, 'female', 'group D', 'associate\'s degree', 'standard', 'none', 82, 95, 89),
(545, 'female', 'group D', 'master\'s degree', 'standard', 'none', 64, 63, 66),
(546, 'male', 'group E', 'some high school', 'free/reduced', 'completed', 78, 83, 80),
(547, 'female', 'group A', 'some high school', 'standard', 'completed', 92, 100, 97),
(548, 'male', 'group C', 'high school', 'standard', 'completed', 72, 67, 64),
(549, 'female', 'group C', 'high school', 'free/reduced', 'none', 62, 67, 64),
(550, 'male', 'group C', 'master\'s degree', 'standard', 'none', 79, 72, 69),
(551, 'male', 'group C', 'some high school', 'free/reduced', 'none', 79, 76, 65),
(552, 'male', 'group B', 'bachelor\'s degree', 'free/reduced', 'completed', 87, 90, 88),
(553, 'female', 'group B', 'associate\'s degree', 'standard', 'none', 40, 48, 50),
(554, 'male', 'group D', 'some college', 'free/reduced', 'none', 77, 62, 64),
(555, 'male', 'group E', 'associate\'s degree', 'standard', 'none', 53, 45, 40),
(556, 'female', 'group C', 'some college', 'free/reduced', 'none', 32, 39, 33),
(557, 'female', 'group C', 'associate\'s degree', 'standard', 'completed', 55, 72, 79),
(558, 'male', 'group C', 'master\'s degree', 'free/reduced', 'none', 61, 67, 66),
(559, 'female', 'group B', 'associate\'s degree', 'free/reduced', 'none', 53, 70, 70),
(560, 'male', 'group D', 'some high school', 'standard', 'none', 73, 66, 62),
(561, 'female', 'group D', 'some college', 'standard', 'completed', 74, 75, 79),
(562, 'female', 'group C', 'some college', 'standard', 'none', 63, 74, 74),
(563, 'male', 'group C', 'bachelor\'s degree', 'standard', 'completed', 96, 90, 92),
(564, 'female', 'group D', 'some college', 'free/reduced', 'completed', 63, 80, 80),
(565, 'male', 'group B', 'bachelor\'s degree', 'free/reduced', 'none', 48, 51, 46),
(566, 'male', 'group B', 'associate\'s degree', 'standard', 'none', 48, 43, 45),
(567, 'female', 'group E', 'bachelor\'s degree', 'free/reduced', 'completed', 92, 100, 100),
(568, 'female', 'group D', 'master\'s degree', 'free/reduced', 'completed', 61, 71, 78),
(569, 'male', 'group B', 'high school', 'free/reduced', 'none', 63, 48, 47),
(570, 'male', 'group D', 'bachelor\'s degree', 'free/reduced', 'none', 68, 68, 67),
(571, 'male', 'group B', 'some college', 'standard', 'completed', 71, 75, 70),
(572, 'male', 'group A', 'bachelor\'s degree', 'standard', 'none', 91, 96, 92),
(573, 'female', 'group C', 'some college', 'standard', 'none', 53, 62, 56),
(574, 'female', 'group C', 'high school', 'free/reduced', 'completed', 50, 66, 64),
(575, 'female', 'group E', 'high school', 'standard', 'none', 74, 81, 71),
(576, 'male', 'group A', 'associate\'s degree', 'free/reduced', 'completed', 40, 55, 53),
(577, 'male', 'group A', 'some college', 'standard', 'completed', 61, 51, 52),
(578, 'female', 'group B', 'high school', 'standard', 'none', 81, 91, 89),
(579, 'female', 'group B', 'some college', 'free/reduced', 'completed', 48, 56, 58),
(580, 'female', 'group D', 'master\'s degree', 'standard', 'none', 53, 61, 68),
(581, 'female', 'group D', 'some high school', 'standard', 'none', 81, 97, 96),
(582, 'female', 'group E', 'some high school', 'standard', 'none', 77, 79, 80),
(583, 'female', 'group D', 'bachelor\'s degree', 'free/reduced', 'none', 63, 73, 78),
(584, 'female', 'group D', 'associate\'s degree', 'standard', 'completed', 73, 75, 80),
(585, 'female', 'group D', 'some college', 'standard', 'none', 69, 77, 77),
(586, 'female', 'group C', 'associate\'s degree', 'standard', 'none', 65, 76, 76),
(587, 'female', 'group A', 'high school', 'standard', 'none', 55, 73, 73),
(588, 'female', 'group C', 'bachelor\'s degree', 'free/reduced', 'none', 44, 63, 62),
(589, 'female', 'group C', 'some college', 'standard', 'none', 54, 64, 65),
(590, 'female', 'group A', 'some high school', 'standard', 'none', 48, 66, 65),
(591, 'male', 'group C', 'some college', 'free/reduced', 'none', 58, 57, 54),
(592, 'male', 'group A', 'some high school', 'standard', 'none', 71, 62, 50),
(593, 'male', 'group E', 'bachelor\'s degree', 'standard', 'none', 68, 68, 64),
(594, 'female', 'group E', 'high school', 'standard', 'none', 74, 76, 73),
(595, 'female', 'group C', 'bachelor\'s degree', 'standard', 'completed', 92, 100, 99),
(596, 'female', 'group C', 'bachelor\'s degree', 'standard', 'completed', 56, 79, 72),
(597, 'male', 'group B', 'high school', 'free/reduced', 'none', 30, 24, 15),
(598, 'male', 'group A', 'some high school', 'standard', 'none', 53, 54, 48),
(599, 'female', 'group D', 'high school', 'standard', 'none', 69, 77, 73),
(600, 'female', 'group D', 'some high school', 'standard', 'none', 65, 82, 81),
(601, 'female', 'group D', 'master\'s degree', 'standard', 'none', 54, 60, 63),
(602, 'female', 'group C', 'high school', 'standard', 'none', 29, 29, 30),
(603, 'female', 'group E', 'some college', 'standard', 'none', 76, 78, 80),
(604, 'male', 'group D', 'high school', 'free/reduced', 'none', 60, 57, 51),
(605, 'male', 'group D', 'master\'s degree', 'free/reduced', 'completed', 84, 89, 90),
(606, 'male', 'group C', 'some high school', 'standard', 'none', 75, 72, 62),
(607, 'female', 'group C', 'associate\'s degree', 'standard', 'none', 85, 84, 82),
(608, 'female', 'group C', 'master\'s degree', 'free/reduced', 'none', 40, 58, 54),
(609, 'female', 'group E', 'some college', 'standard', 'none', 61, 64, 62),
(610, 'female', 'group B', 'associate\'s degree', 'standard', 'none', 58, 63, 65),
(611, 'male', 'group D', 'some college', 'free/reduced', 'completed', 69, 60, 63),
(612, 'female', 'group C', 'some college', 'standard', 'none', 58, 59, 66),
(613, 'male', 'group C', 'bachelor\'s degree', 'standard', 'completed', 94, 90, 91),
(614, 'female', 'group C', 'associate\'s degree', 'standard', 'none', 65, 77, 74),
(615, 'female', 'group A', 'associate\'s degree', 'standard', 'none', 82, 93, 93),
(616, 'female', 'group C', 'high school', 'standard', 'none', 60, 68, 72),
(617, 'female', 'group E', 'bachelor\'s degree', 'standard', 'none', 37, 45, 38),
(618, 'male', 'group D', 'bachelor\'s degree', 'standard', 'none', 88, 78, 83),
(619, 'male', 'group D', 'master\'s degree', 'standard', 'none', 95, 81, 84),
(620, 'male', 'group C', 'associate\'s degree', 'free/reduced', 'completed', 65, 73, 68),
(621, 'female', 'group C', 'high school', 'free/reduced', 'none', 35, 61, 54),
(622, 'male', 'group B', 'bachelor\'s degree', 'free/reduced', 'none', 62, 63, 56),
(623, 'male', 'group C', 'high school', 'free/reduced', 'completed', 58, 51, 52),
(624, 'male', 'group A', 'some college', 'standard', 'completed', 100, 96, 86),
(625, 'female', 'group E', 'bachelor\'s degree', 'free/reduced', 'none', 61, 58, 62),
(626, 'male', 'group D', 'some college', 'standard', 'completed', 100, 97, 99),
(627, 'male', 'group B', 'associate\'s degree', 'free/reduced', 'completed', 69, 70, 63),
(628, 'male', 'group D', 'associate\'s degree', 'standard', 'none', 61, 48, 46),
(629, 'male', 'group D', 'some college', 'free/reduced', 'none', 49, 57, 46);
INSERT INTO `studentsperformance` (`id`, `gender`, `race/ethnicity`, `parental level of education`, `lunch`, `test preparation course`, `math score`, `reading score`, `writing score`) VALUES
(630, 'female', 'group C', 'some high school', 'standard', 'completed', 44, 51, 55),
(631, 'male', 'group D', 'some college', 'standard', 'none', 67, 64, 70),
(632, 'male', 'group B', 'high school', 'standard', 'none', 79, 60, 65),
(633, 'female', 'group B', 'bachelor\'s degree', 'standard', 'completed', 66, 74, 81),
(634, 'female', 'group C', 'high school', 'standard', 'none', 75, 88, 85),
(635, 'male', 'group D', 'some high school', 'standard', 'none', 84, 84, 80),
(636, 'male', 'group A', 'high school', 'standard', 'none', 71, 74, 64),
(637, 'female', 'group B', 'high school', 'free/reduced', 'completed', 67, 80, 81),
(638, 'female', 'group D', 'some high school', 'standard', 'completed', 80, 92, 88),
(639, 'male', 'group E', 'some college', 'standard', 'none', 86, 76, 74),
(640, 'female', 'group D', 'associate\'s degree', 'standard', 'none', 76, 74, 73),
(641, 'male', 'group D', 'high school', 'standard', 'none', 41, 52, 51),
(642, 'female', 'group D', 'associate\'s degree', 'free/reduced', 'completed', 74, 88, 90),
(643, 'female', 'group B', 'some high school', 'free/reduced', 'none', 72, 81, 79),
(644, 'female', 'group E', 'high school', 'standard', 'completed', 74, 79, 80),
(645, 'male', 'group B', 'high school', 'standard', 'none', 70, 65, 60),
(646, 'female', 'group B', 'bachelor\'s degree', 'standard', 'completed', 65, 81, 81),
(647, 'female', 'group D', 'associate\'s degree', 'standard', 'none', 59, 70, 65),
(648, 'female', 'group E', 'high school', 'free/reduced', 'none', 64, 62, 68),
(649, 'female', 'group B', 'high school', 'standard', 'none', 50, 53, 55),
(650, 'female', 'group D', 'some college', 'standard', 'completed', 69, 79, 81),
(651, 'male', 'group C', 'some high school', 'free/reduced', 'completed', 51, 56, 53),
(652, 'female', 'group A', 'high school', 'standard', 'completed', 68, 80, 76),
(653, 'female', 'group D', 'some college', 'standard', 'completed', 85, 86, 98),
(654, 'female', 'group A', 'associate\'s degree', 'standard', 'completed', 65, 70, 74),
(655, 'female', 'group B', 'some high school', 'standard', 'none', 73, 79, 79),
(656, 'female', 'group B', 'some college', 'standard', 'none', 62, 67, 67),
(657, 'male', 'group C', 'associate\'s degree', 'free/reduced', 'none', 77, 67, 64),
(658, 'male', 'group D', 'some high school', 'standard', 'none', 69, 66, 61),
(659, 'female', 'group D', 'associate\'s degree', 'free/reduced', 'none', 43, 60, 58),
(660, 'male', 'group D', 'associate\'s degree', 'standard', 'none', 90, 87, 85),
(661, 'male', 'group C', 'some college', 'free/reduced', 'none', 74, 77, 73),
(662, 'male', 'group C', 'some high school', 'standard', 'none', 73, 66, 63),
(663, 'female', 'group D', 'some college', 'free/reduced', 'none', 55, 71, 69),
(664, 'female', 'group C', 'high school', 'standard', 'none', 65, 69, 67),
(665, 'male', 'group D', 'associate\'s degree', 'standard', 'none', 80, 63, 63),
(666, 'female', 'group C', 'some high school', 'free/reduced', 'completed', 50, 60, 60),
(667, 'female', 'group C', 'some college', 'free/reduced', 'completed', 63, 73, 71),
(668, 'female', 'group B', 'bachelor\'s degree', 'free/reduced', 'none', 77, 85, 87),
(669, 'male', 'group C', 'some college', 'standard', 'none', 73, 74, 61),
(670, 'male', 'group D', 'associate\'s degree', 'standard', 'completed', 81, 72, 77),
(671, 'female', 'group C', 'high school', 'free/reduced', 'none', 66, 76, 68),
(672, 'male', 'group D', 'associate\'s degree', 'free/reduced', 'none', 52, 57, 50),
(673, 'female', 'group C', 'some college', 'standard', 'none', 69, 78, 76),
(674, 'female', 'group C', 'associate\'s degree', 'standard', 'completed', 65, 84, 84),
(675, 'female', 'group D', 'high school', 'standard', 'completed', 69, 77, 78),
(676, 'female', 'group B', 'some college', 'standard', 'completed', 50, 64, 66),
(677, 'female', 'group E', 'some college', 'standard', 'completed', 73, 78, 76),
(678, 'female', 'group C', 'some high school', 'standard', 'completed', 70, 82, 76),
(679, 'male', 'group D', 'associate\'s degree', 'free/reduced', 'none', 81, 75, 78),
(680, 'male', 'group D', 'some college', 'free/reduced', 'none', 63, 61, 60),
(681, 'female', 'group D', 'high school', 'standard', 'none', 67, 72, 74),
(682, 'male', 'group B', 'high school', 'standard', 'none', 60, 68, 60),
(683, 'male', 'group B', 'high school', 'standard', 'none', 62, 55, 54),
(684, 'female', 'group C', 'some high school', 'free/reduced', 'completed', 29, 40, 44),
(685, 'male', 'group B', 'some college', 'standard', 'completed', 62, 66, 68),
(686, 'female', 'group E', 'master\'s degree', 'standard', 'completed', 94, 99, 100),
(687, 'male', 'group E', 'some college', 'standard', 'completed', 85, 75, 68),
(688, 'male', 'group D', 'associate\'s degree', 'free/reduced', 'none', 77, 78, 73),
(689, 'male', 'group A', 'high school', 'free/reduced', 'none', 53, 58, 44),
(690, 'male', 'group E', 'some college', 'free/reduced', 'none', 93, 90, 83),
(691, 'female', 'group C', 'associate\'s degree', 'standard', 'none', 49, 53, 53),
(692, 'female', 'group E', 'associate\'s degree', 'free/reduced', 'none', 73, 76, 78),
(693, 'female', 'group C', 'bachelor\'s degree', 'free/reduced', 'completed', 66, 74, 81),
(694, 'female', 'group D', 'associate\'s degree', 'standard', 'none', 77, 77, 73),
(695, 'female', 'group C', 'some high school', 'standard', 'none', 49, 63, 56),
(696, 'female', 'group D', 'some college', 'free/reduced', 'none', 79, 89, 86),
(697, 'female', 'group C', 'associate\'s degree', 'standard', 'completed', 75, 82, 90),
(698, 'female', 'group A', 'bachelor\'s degree', 'standard', 'none', 59, 72, 70),
(699, 'female', 'group D', 'associate\'s degree', 'standard', 'completed', 57, 78, 79),
(700, 'male', 'group C', 'high school', 'free/reduced', 'none', 66, 66, 59),
(701, 'female', 'group E', 'bachelor\'s degree', 'standard', 'completed', 79, 81, 82),
(702, 'female', 'group B', 'some high school', 'standard', 'none', 57, 67, 72),
(703, 'male', 'group A', 'bachelor\'s degree', 'standard', 'completed', 87, 84, 87),
(704, 'female', 'group D', 'some college', 'standard', 'none', 63, 64, 67),
(705, 'female', 'group B', 'some high school', 'free/reduced', 'completed', 59, 63, 64),
(706, 'male', 'group A', 'bachelor\'s degree', 'free/reduced', 'none', 62, 72, 65),
(707, 'male', 'group D', 'high school', 'standard', 'none', 46, 34, 36),
(708, 'male', 'group C', 'some college', 'standard', 'none', 66, 59, 52),
(709, 'male', 'group D', 'high school', 'standard', 'none', 89, 87, 79),
(710, 'female', 'group D', 'associate\'s degree', 'free/reduced', 'completed', 42, 61, 58),
(711, 'male', 'group C', 'some college', 'standard', 'completed', 93, 84, 90),
(712, 'female', 'group E', 'some high school', 'standard', 'completed', 80, 85, 85),
(713, 'female', 'group D', 'some college', 'standard', 'none', 98, 100, 99),
(714, 'male', 'group D', 'master\'s degree', 'standard', 'none', 81, 81, 84),
(715, 'female', 'group B', 'some high school', 'standard', 'completed', 60, 70, 74),
(716, 'female', 'group B', 'associate\'s degree', 'free/reduced', 'completed', 76, 94, 87),
(717, 'male', 'group C', 'associate\'s degree', 'standard', 'completed', 73, 78, 72),
(718, 'female', 'group C', 'associate\'s degree', 'standard', 'completed', 96, 96, 99),
(719, 'female', 'group C', 'high school', 'standard', 'none', 76, 76, 74),
(720, 'male', 'group E', 'associate\'s degree', 'free/reduced', 'completed', 91, 73, 80),
(721, 'female', 'group C', 'some college', 'free/reduced', 'none', 62, 72, 70),
(722, 'male', 'group D', 'some high school', 'free/reduced', 'completed', 55, 59, 59),
(723, 'female', 'group B', 'some high school', 'free/reduced', 'completed', 74, 90, 88),
(724, 'male', 'group C', 'high school', 'standard', 'none', 50, 48, 42),
(725, 'male', 'group B', 'some college', 'standard', 'none', 47, 43, 41),
(726, 'male', 'group E', 'some college', 'standard', 'completed', 81, 74, 71),
(727, 'female', 'group E', 'associate\'s degree', 'standard', 'completed', 65, 75, 77),
(728, 'male', 'group E', 'some high school', 'standard', 'completed', 68, 51, 57),
(729, 'female', 'group D', 'high school', 'free/reduced', 'none', 73, 92, 84),
(730, 'male', 'group C', 'some college', 'standard', 'none', 53, 39, 37),
(731, 'female', 'group B', 'associate\'s degree', 'free/reduced', 'completed', 68, 77, 80),
(732, 'male', 'group A', 'some high school', 'free/reduced', 'none', 55, 46, 43),
(733, 'female', 'group C', 'some college', 'standard', 'completed', 87, 89, 94),
(734, 'male', 'group D', 'some high school', 'standard', 'none', 55, 47, 44),
(735, 'female', 'group E', 'some college', 'free/reduced', 'none', 53, 58, 57),
(736, 'male', 'group C', 'master\'s degree', 'standard', 'none', 67, 57, 59),
(737, 'male', 'group C', 'associate\'s degree', 'standard', 'none', 92, 79, 84),
(738, 'female', 'group B', 'some college', 'free/reduced', 'completed', 53, 66, 73),
(739, 'male', 'group D', 'associate\'s degree', 'standard', 'none', 81, 71, 73),
(740, 'male', 'group C', 'high school', 'free/reduced', 'none', 61, 60, 55),
(741, 'male', 'group D', 'bachelor\'s degree', 'standard', 'none', 80, 73, 72),
(742, 'female', 'group A', 'associate\'s degree', 'free/reduced', 'none', 37, 57, 56),
(743, 'female', 'group C', 'high school', 'standard', 'none', 81, 84, 82),
(744, 'female', 'group C', 'associate\'s degree', 'standard', 'completed', 59, 73, 72),
(745, 'male', 'group B', 'some college', 'free/reduced', 'none', 55, 55, 47),
(746, 'male', 'group D', 'associate\'s degree', 'standard', 'none', 72, 79, 74),
(747, 'male', 'group D', 'high school', 'standard', 'none', 69, 75, 71),
(748, 'male', 'group C', 'some college', 'standard', 'none', 69, 64, 68),
(749, 'female', 'group C', 'bachelor\'s degree', 'free/reduced', 'none', 50, 60, 59),
(750, 'male', 'group B', 'some college', 'standard', 'completed', 87, 84, 86),
(751, 'male', 'group D', 'some high school', 'standard', 'completed', 71, 69, 68),
(752, 'male', 'group E', 'some college', 'standard', 'none', 68, 72, 65),
(753, 'male', 'group C', 'master\'s degree', 'free/reduced', 'completed', 79, 77, 75),
(754, 'female', 'group C', 'some high school', 'standard', 'completed', 77, 90, 85),
(755, 'male', 'group C', 'associate\'s degree', 'free/reduced', 'none', 58, 55, 53),
(756, 'female', 'group E', 'associate\'s degree', 'standard', 'none', 84, 95, 92),
(757, 'male', 'group D', 'some college', 'standard', 'none', 55, 58, 52),
(758, 'male', 'group E', 'bachelor\'s degree', 'free/reduced', 'completed', 70, 68, 72),
(759, 'female', 'group D', 'some college', 'free/reduced', 'completed', 52, 59, 65),
(760, 'male', 'group B', 'some college', 'standard', 'completed', 69, 77, 77),
(761, 'female', 'group C', 'high school', 'free/reduced', 'none', 53, 72, 64),
(762, 'female', 'group D', 'some high school', 'standard', 'none', 48, 58, 54),
(763, 'male', 'group D', 'some high school', 'standard', 'completed', 78, 81, 86),
(764, 'female', 'group B', 'high school', 'standard', 'none', 62, 62, 63),
(765, 'male', 'group D', 'some college', 'standard', 'none', 60, 63, 59),
(766, 'female', 'group B', 'high school', 'standard', 'none', 74, 72, 72),
(767, 'female', 'group C', 'high school', 'standard', 'completed', 58, 75, 77),
(768, 'male', 'group B', 'high school', 'standard', 'completed', 76, 62, 60),
(769, 'female', 'group D', 'some high school', 'standard', 'none', 68, 71, 75),
(770, 'male', 'group A', 'some college', 'free/reduced', 'none', 58, 60, 57),
(771, 'male', 'group B', 'high school', 'standard', 'none', 52, 48, 49),
(772, 'male', 'group D', 'bachelor\'s degree', 'standard', 'none', 75, 73, 74),
(773, 'female', 'group B', 'some high school', 'free/reduced', 'completed', 52, 67, 72),
(774, 'female', 'group C', 'bachelor\'s degree', 'free/reduced', 'none', 62, 78, 79),
(775, 'male', 'group B', 'some college', 'standard', 'none', 66, 65, 60),
(776, 'female', 'group B', 'some high school', 'free/reduced', 'none', 49, 58, 55),
(777, 'female', 'group B', 'high school', 'standard', 'none', 66, 72, 70),
(778, 'female', 'group C', 'some college', 'free/reduced', 'none', 35, 44, 43),
(779, 'female', 'group A', 'some college', 'standard', 'completed', 72, 79, 82),
(780, 'male', 'group E', 'associate\'s degree', 'standard', 'completed', 94, 85, 82),
(781, 'female', 'group D', 'associate\'s degree', 'free/reduced', 'none', 46, 56, 57),
(782, 'female', 'group B', 'master\'s degree', 'standard', 'none', 77, 90, 84),
(783, 'female', 'group B', 'high school', 'free/reduced', 'completed', 76, 85, 82),
(784, 'female', 'group C', 'associate\'s degree', 'standard', 'completed', 52, 59, 62),
(785, 'male', 'group C', 'bachelor\'s degree', 'standard', 'completed', 91, 81, 79),
(786, 'female', 'group B', 'some high school', 'standard', 'completed', 32, 51, 44),
(787, 'female', 'group E', 'some high school', 'free/reduced', 'none', 72, 79, 77),
(788, 'female', 'group B', 'some college', 'standard', 'none', 19, 38, 32),
(789, 'male', 'group C', 'associate\'s degree', 'free/reduced', 'none', 68, 65, 61),
(790, 'female', 'group C', 'master\'s degree', 'free/reduced', 'none', 52, 65, 61),
(791, 'female', 'group B', 'high school', 'standard', 'none', 48, 62, 60),
(792, 'female', 'group D', 'some college', 'free/reduced', 'none', 60, 66, 70),
(793, 'male', 'group D', 'high school', 'free/reduced', 'none', 66, 74, 69),
(794, 'male', 'group E', 'some high school', 'standard', 'completed', 89, 84, 77),
(795, 'female', 'group B', 'high school', 'standard', 'none', 42, 52, 51),
(796, 'female', 'group E', 'associate\'s degree', 'free/reduced', 'completed', 57, 68, 73),
(797, 'male', 'group D', 'high school', 'standard', 'none', 70, 70, 70),
(798, 'female', 'group E', 'associate\'s degree', 'free/reduced', 'none', 70, 84, 81),
(799, 'male', 'group E', 'some college', 'standard', 'none', 69, 60, 54),
(800, 'female', 'group C', 'associate\'s degree', 'standard', 'none', 52, 55, 57),
(801, 'male', 'group C', 'some high school', 'standard', 'completed', 67, 73, 68),
(802, 'male', 'group C', 'some high school', 'standard', 'completed', 76, 80, 73),
(803, 'female', 'group E', 'associate\'s degree', 'standard', 'none', 87, 94, 95),
(804, 'female', 'group B', 'some college', 'standard', 'none', 82, 85, 87),
(805, 'female', 'group C', 'some college', 'standard', 'none', 73, 76, 78),
(806, 'male', 'group A', 'some college', 'free/reduced', 'none', 75, 81, 74),
(807, 'female', 'group D', 'some college', 'free/reduced', 'none', 64, 74, 75),
(808, 'female', 'group E', 'high school', 'free/reduced', 'none', 41, 45, 40),
(809, 'male', 'group C', 'high school', 'standard', 'none', 90, 75, 69),
(810, 'male', 'group B', 'bachelor\'s degree', 'standard', 'none', 59, 54, 51),
(811, 'male', 'group A', 'some high school', 'standard', 'none', 51, 31, 36),
(812, 'male', 'group A', 'high school', 'free/reduced', 'none', 45, 47, 49),
(813, 'female', 'group C', 'master\'s degree', 'standard', 'completed', 54, 64, 67),
(814, 'male', 'group E', 'some high school', 'standard', 'completed', 87, 84, 76),
(815, 'female', 'group C', 'high school', 'standard', 'none', 72, 80, 83),
(816, 'male', 'group B', 'some high school', 'standard', 'completed', 94, 86, 87),
(817, 'female', 'group A', 'bachelor\'s degree', 'standard', 'none', 45, 59, 64),
(818, 'male', 'group D', 'bachelor\'s degree', 'free/reduced', 'completed', 61, 70, 76),
(819, 'female', 'group B', 'high school', 'free/reduced', 'none', 60, 72, 68),
(820, 'female', 'group C', 'some high school', 'standard', 'none', 77, 91, 88),
(821, 'female', 'group A', 'some high school', 'standard', 'completed', 85, 90, 92),
(822, 'female', 'group D', 'bachelor\'s degree', 'free/reduced', 'none', 78, 90, 93),
(823, 'male', 'group E', 'some college', 'free/reduced', 'completed', 49, 52, 51),
(824, 'female', 'group B', 'high school', 'free/reduced', 'none', 71, 87, 82),
(825, 'female', 'group C', 'some high school', 'free/reduced', 'none', 48, 58, 52),
(826, 'male', 'group C', 'high school', 'standard', 'none', 62, 67, 58),
(827, 'female', 'group C', 'associate\'s degree', 'free/reduced', 'completed', 56, 68, 70),
(828, 'female', 'group C', 'some high school', 'standard', 'none', 65, 69, 76),
(829, 'female', 'group D', 'some high school', 'free/reduced', 'completed', 69, 86, 81),
(830, 'male', 'group B', 'some high school', 'standard', 'none', 68, 54, 53),
(831, 'female', 'group A', 'some college', 'free/reduced', 'none', 61, 60, 57),
(832, 'female', 'group C', 'bachelor\'s degree', 'free/reduced', 'completed', 74, 86, 89),
(833, 'male', 'group A', 'bachelor\'s degree', 'standard', 'none', 64, 60, 58),
(834, 'female', 'group B', 'high school', 'standard', 'completed', 77, 82, 89),
(835, 'male', 'group B', 'some college', 'standard', 'none', 58, 50, 45),
(836, 'female', 'group C', 'high school', 'standard', 'completed', 60, 64, 74),
(837, 'male', 'group E', 'high school', 'standard', 'none', 73, 64, 57),
(838, 'female', 'group A', 'high school', 'standard', 'completed', 75, 82, 79),
(839, 'male', 'group B', 'associate\'s degree', 'free/reduced', 'completed', 58, 57, 53),
(840, 'female', 'group C', 'associate\'s degree', 'standard', 'none', 66, 77, 73),
(841, 'female', 'group D', 'high school', 'free/reduced', 'none', 39, 52, 46),
(842, 'male', 'group C', 'some high school', 'standard', 'none', 64, 58, 51),
(843, 'female', 'group B', 'high school', 'free/reduced', 'completed', 23, 44, 36),
(844, 'male', 'group B', 'some college', 'free/reduced', 'completed', 74, 77, 76),
(845, 'female', 'group D', 'some high school', 'free/reduced', 'completed', 40, 65, 64),
(846, 'male', 'group E', 'master\'s degree', 'standard', 'none', 90, 85, 84),
(847, 'male', 'group C', 'master\'s degree', 'standard', 'completed', 91, 85, 85),
(848, 'male', 'group D', 'high school', 'standard', 'none', 64, 54, 50),
(849, 'female', 'group C', 'high school', 'standard', 'none', 59, 72, 68),
(850, 'male', 'group D', 'associate\'s degree', 'standard', 'none', 80, 75, 69),
(851, 'male', 'group C', 'master\'s degree', 'standard', 'none', 71, 67, 67),
(852, 'female', 'group A', 'high school', 'standard', 'none', 61, 68, 63),
(853, 'female', 'group E', 'some college', 'standard', 'none', 87, 85, 93),
(854, 'male', 'group E', 'some high school', 'standard', 'none', 82, 67, 61),
(855, 'male', 'group C', 'some high school', 'standard', 'none', 62, 64, 55),
(856, 'female', 'group B', 'bachelor\'s degree', 'standard', 'none', 97, 97, 96),
(857, 'male', 'group B', 'some college', 'free/reduced', 'none', 75, 68, 65),
(858, 'female', 'group C', 'bachelor\'s degree', 'standard', 'none', 65, 79, 81),
(859, 'male', 'group B', 'high school', 'standard', 'completed', 52, 49, 46),
(860, 'male', 'group C', 'associate\'s degree', 'free/reduced', 'none', 87, 73, 72),
(861, 'female', 'group C', 'associate\'s degree', 'standard', 'none', 53, 62, 53),
(862, 'female', 'group E', 'master\'s degree', 'free/reduced', 'none', 81, 86, 87),
(863, 'male', 'group D', 'bachelor\'s degree', 'free/reduced', 'completed', 39, 42, 38),
(864, 'female', 'group C', 'some college', 'standard', 'completed', 71, 71, 80),
(865, 'male', 'group C', 'associate\'s degree', 'standard', 'none', 97, 93, 91),
(866, 'male', 'group D', 'some college', 'standard', 'completed', 82, 82, 88),
(867, 'male', 'group C', 'high school', 'free/reduced', 'none', 59, 53, 52),
(868, 'male', 'group B', 'associate\'s degree', 'standard', 'none', 61, 42, 41),
(869, 'male', 'group E', 'associate\'s degree', 'free/reduced', 'completed', 78, 74, 72),
(870, 'male', 'group C', 'associate\'s degree', 'free/reduced', 'none', 49, 51, 51),
(871, 'male', 'group B', 'high school', 'standard', 'none', 59, 58, 47),
(872, 'female', 'group C', 'some college', 'standard', 'completed', 70, 72, 76),
(873, 'male', 'group B', 'associate\'s degree', 'standard', 'completed', 82, 84, 78),
(874, 'male', 'group E', 'associate\'s degree', 'free/reduced', 'none', 90, 90, 82),
(875, 'female', 'group C', 'bachelor\'s degree', 'free/reduced', 'none', 43, 62, 61),
(876, 'male', 'group C', 'some college', 'free/reduced', 'none', 80, 64, 66),
(877, 'male', 'group D', 'some college', 'standard', 'none', 81, 82, 84),
(878, 'male', 'group C', 'some high school', 'standard', 'none', 57, 61, 54),
(879, 'female', 'group D', 'some high school', 'standard', 'none', 59, 72, 80),
(880, 'female', 'group D', 'associate\'s degree', 'standard', 'none', 64, 76, 74),
(881, 'male', 'group C', 'bachelor\'s degree', 'standard', 'completed', 63, 64, 66),
(882, 'female', 'group E', 'bachelor\'s degree', 'standard', 'completed', 71, 70, 70),
(883, 'female', 'group B', 'high school', 'free/reduced', 'none', 64, 73, 71),
(884, 'male', 'group D', 'bachelor\'s degree', 'free/reduced', 'none', 55, 46, 44),
(885, 'female', 'group E', 'associate\'s degree', 'standard', 'none', 51, 51, 54),
(886, 'female', 'group C', 'associate\'s degree', 'standard', 'completed', 62, 76, 80),
(887, 'female', 'group E', 'associate\'s degree', 'standard', 'completed', 93, 100, 95),
(888, 'male', 'group C', 'high school', 'free/reduced', 'none', 54, 72, 59),
(889, 'female', 'group D', 'some college', 'free/reduced', 'none', 69, 65, 74),
(890, 'male', 'group D', 'high school', 'free/reduced', 'none', 44, 51, 48),
(891, 'female', 'group E', 'some college', 'standard', 'completed', 86, 85, 91),
(892, 'female', 'group E', 'associate\'s degree', 'standard', 'none', 85, 92, 85),
(893, 'female', 'group A', 'master\'s degree', 'free/reduced', 'none', 50, 67, 73),
(894, 'male', 'group D', 'some high school', 'standard', 'completed', 88, 74, 75),
(895, 'female', 'group E', 'associate\'s degree', 'standard', 'none', 59, 62, 69),
(896, 'female', 'group E', 'some high school', 'free/reduced', 'none', 32, 34, 38),
(897, 'male', 'group B', 'high school', 'free/reduced', 'none', 36, 29, 27),
(898, 'female', 'group B', 'some high school', 'free/reduced', 'completed', 63, 78, 79),
(899, 'male', 'group D', 'associate\'s degree', 'standard', 'completed', 67, 54, 63),
(900, 'female', 'group D', 'some high school', 'standard', 'completed', 65, 78, 82),
(901, 'male', 'group D', 'master\'s degree', 'standard', 'none', 85, 84, 89),
(902, 'female', 'group C', 'master\'s degree', 'standard', 'none', 73, 78, 74),
(903, 'female', 'group A', 'high school', 'free/reduced', 'completed', 34, 48, 41),
(904, 'female', 'group D', 'bachelor\'s degree', 'free/reduced', 'completed', 93, 100, 100),
(905, 'female', 'group D', 'some high school', 'free/reduced', 'none', 67, 84, 84),
(906, 'male', 'group D', 'some college', 'standard', 'none', 88, 77, 77),
(907, 'male', 'group B', 'high school', 'standard', 'none', 57, 48, 51),
(908, 'female', 'group D', 'some college', 'standard', 'completed', 79, 84, 91),
(909, 'female', 'group C', 'bachelor\'s degree', 'free/reduced', 'none', 67, 75, 72),
(910, 'male', 'group E', 'bachelor\'s degree', 'standard', 'completed', 70, 64, 70),
(911, 'male', 'group D', 'bachelor\'s degree', 'free/reduced', 'none', 50, 42, 48),
(912, 'female', 'group A', 'some college', 'standard', 'none', 69, 84, 82),
(913, 'female', 'group C', 'bachelor\'s degree', 'standard', 'completed', 52, 61, 66),
(914, 'female', 'group C', 'bachelor\'s degree', 'free/reduced', 'completed', 47, 62, 66),
(915, 'female', 'group B', 'associate\'s degree', 'free/reduced', 'none', 46, 61, 55),
(916, 'female', 'group E', 'some college', 'standard', 'none', 68, 70, 66),
(917, 'male', 'group E', 'bachelor\'s degree', 'standard', 'completed', 100, 100, 100),
(918, 'female', 'group C', 'high school', 'standard', 'none', 44, 61, 52),
(919, 'female', 'group C', 'associate\'s degree', 'standard', 'completed', 57, 77, 80),
(920, 'male', 'group B', 'some college', 'standard', 'completed', 91, 96, 91),
(921, 'male', 'group D', 'high school', 'free/reduced', 'none', 69, 70, 67),
(922, 'female', 'group C', 'high school', 'free/reduced', 'none', 35, 53, 46),
(923, 'male', 'group D', 'high school', 'standard', 'none', 72, 66, 66),
(924, 'female', 'group B', 'associate\'s degree', 'free/reduced', 'none', 54, 65, 65),
(925, 'male', 'group D', 'high school', 'free/reduced', 'none', 74, 70, 69),
(926, 'male', 'group E', 'some high school', 'standard', 'completed', 74, 64, 60),
(927, 'male', 'group E', 'associate\'s degree', 'free/reduced', 'none', 64, 56, 52),
(928, 'female', 'group D', 'high school', 'free/reduced', 'completed', 65, 61, 71),
(929, 'male', 'group E', 'associate\'s degree', 'free/reduced', 'completed', 46, 43, 44),
(930, 'female', 'group C', 'some high school', 'free/reduced', 'none', 48, 56, 51),
(931, 'male', 'group C', 'some college', 'free/reduced', 'completed', 67, 74, 70),
(932, 'male', 'group D', 'some college', 'free/reduced', 'none', 62, 57, 62),
(933, 'male', 'group D', 'associate\'s degree', 'free/reduced', 'completed', 61, 71, 73),
(934, 'male', 'group C', 'bachelor\'s degree', 'free/reduced', 'completed', 70, 75, 74),
(935, 'male', 'group C', 'associate\'s degree', 'standard', 'completed', 98, 87, 90),
(936, 'male', 'group D', 'some college', 'free/reduced', 'none', 70, 63, 58),
(937, 'male', 'group A', 'associate\'s degree', 'standard', 'none', 67, 57, 53),
(938, 'female', 'group E', 'high school', 'free/reduced', 'none', 57, 58, 57),
(939, 'male', 'group D', 'some college', 'standard', 'completed', 85, 81, 85),
(940, 'male', 'group D', 'some high school', 'standard', 'completed', 77, 68, 69),
(941, 'male', 'group C', 'master\'s degree', 'free/reduced', 'completed', 72, 66, 72),
(942, 'female', 'group D', 'master\'s degree', 'standard', 'none', 78, 91, 96),
(943, 'male', 'group C', 'high school', 'standard', 'none', 81, 66, 64),
(944, 'male', 'group A', 'some high school', 'free/reduced', 'completed', 61, 62, 61),
(945, 'female', 'group B', 'high school', 'standard', 'none', 58, 68, 61),
(946, 'female', 'group C', 'associate\'s degree', 'standard', 'none', 54, 61, 58),
(947, 'male', 'group B', 'high school', 'standard', 'none', 82, 82, 80),
(948, 'female', 'group D', 'some college', 'free/reduced', 'none', 49, 58, 60),
(949, 'male', 'group B', 'some high school', 'free/reduced', 'completed', 49, 50, 52),
(950, 'female', 'group E', 'high school', 'free/reduced', 'completed', 57, 75, 73),
(951, 'male', 'group E', 'high school', 'standard', 'none', 94, 73, 71),
(952, 'female', 'group D', 'some college', 'standard', 'completed', 75, 77, 83),
(953, 'female', 'group E', 'some high school', 'free/reduced', 'none', 74, 74, 72),
(954, 'male', 'group C', 'high school', 'standard', 'completed', 58, 52, 54),
(955, 'female', 'group C', 'some college', 'standard', 'none', 62, 69, 69),
(956, 'male', 'group E', 'associate\'s degree', 'standard', 'none', 72, 57, 62),
(957, 'male', 'group C', 'some college', 'standard', 'none', 84, 87, 81),
(958, 'female', 'group D', 'master\'s degree', 'standard', 'none', 92, 100, 100),
(959, 'female', 'group D', 'high school', 'standard', 'none', 45, 63, 59),
(960, 'male', 'group C', 'high school', 'standard', 'none', 75, 81, 71),
(961, 'female', 'group A', 'some college', 'standard', 'none', 56, 58, 64),
(962, 'female', 'group D', 'some high school', 'free/reduced', 'none', 48, 54, 53),
(963, 'female', 'group E', 'associate\'s degree', 'standard', 'none', 100, 100, 100),
(964, 'female', 'group C', 'some high school', 'free/reduced', 'completed', 65, 76, 75),
(965, 'male', 'group D', 'some college', 'standard', 'none', 72, 57, 58),
(966, 'female', 'group D', 'some college', 'standard', 'none', 62, 70, 72),
(967, 'male', 'group A', 'some high school', 'standard', 'completed', 66, 68, 64),
(968, 'male', 'group C', 'some college', 'standard', 'none', 63, 63, 60),
(969, 'female', 'group E', 'associate\'s degree', 'standard', 'none', 68, 76, 67),
(970, 'female', 'group B', 'bachelor\'s degree', 'standard', 'none', 75, 84, 80),
(971, 'female', 'group D', 'bachelor\'s degree', 'standard', 'none', 89, 100, 100),
(972, 'male', 'group C', 'some high school', 'standard', 'completed', 78, 72, 69),
(973, 'female', 'group A', 'high school', 'free/reduced', 'completed', 53, 50, 60),
(974, 'female', 'group D', 'some college', 'free/reduced', 'none', 49, 65, 61),
(975, 'female', 'group A', 'some college', 'standard', 'none', 54, 63, 67),
(976, 'female', 'group C', 'some college', 'standard', 'completed', 64, 82, 77),
(977, 'male', 'group B', 'some college', 'free/reduced', 'completed', 60, 62, 60),
(978, 'male', 'group C', 'associate\'s degree', 'standard', 'none', 62, 65, 58),
(979, 'male', 'group D', 'high school', 'standard', 'completed', 55, 41, 48),
(980, 'female', 'group C', 'associate\'s degree', 'standard', 'none', 91, 95, 94),
(981, 'female', 'group B', 'high school', 'free/reduced', 'none', 8, 24, 23),
(982, 'male', 'group D', 'some high school', 'standard', 'none', 81, 78, 78),
(983, 'male', 'group B', 'some high school', 'standard', 'completed', 79, 85, 86),
(984, 'female', 'group A', 'some college', 'standard', 'completed', 78, 87, 91),
(985, 'female', 'group C', 'some high school', 'standard', 'none', 74, 75, 82),
(986, 'male', 'group A', 'high school', 'standard', 'none', 57, 51, 54),
(987, 'female', 'group C', 'associate\'s degree', 'standard', 'none', 40, 59, 51),
(988, 'male', 'group E', 'some high school', 'standard', 'completed', 81, 75, 76),
(989, 'female', 'group A', 'some high school', 'free/reduced', 'none', 44, 45, 45),
(990, 'female', 'group D', 'some college', 'free/reduced', 'completed', 67, 86, 83),
(991, 'male', 'group E', 'high school', 'free/reduced', 'completed', 86, 81, 75),
(992, 'female', 'group B', 'some high school', 'standard', 'completed', 65, 82, 78),
(993, 'female', 'group D', 'associate\'s degree', 'free/reduced', 'none', 55, 76, 76),
(994, 'female', 'group D', 'bachelor\'s degree', 'free/reduced', 'none', 62, 72, 74),
(995, 'male', 'group A', 'high school', 'standard', 'none', 63, 63, 62),
(996, 'female', 'group E', 'master\'s degree', 'standard', 'completed', 88, 99, 95),
(997, 'male', 'group C', 'high school', 'free/reduced', 'none', 62, 55, 55),
(998, 'female', 'group C', 'high school', 'free/reduced', 'completed', 59, 71, 65),
(999, 'female', 'group D', 'some college', 'standard', 'completed', 68, 78, 77),
(1000, 'female', 'group D', 'some college', 'free/reduced', 'none', 77, 86, 86),
(1008, 'female', 'group C', 'associate\'s degree', 'free/reduced', 'completed', 21, 22, 100),
(1009, 'female', 'group C', 'master\'s degree', 'standard', 'none', 34, 33, 100),
(1010, 'male', 'group A', 'bachelor\'s degree', 'standard', 'none', 111, 555, 33);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `studentsperformance`
--
ALTER TABLE `studentsperformance`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `studentsperformance`
--
ALTER TABLE `studentsperformance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1011;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
