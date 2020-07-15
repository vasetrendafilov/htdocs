-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 15, 2019 at 07:16 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theunder_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `rank` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `energija` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `speed` int(11) NOT NULL,
  `power` int(11) NOT NULL,
  `seats` int(11) NOT NULL,
  `reward` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `type`, `rank`, `title`, `energija`, `price`, `time`, `speed`, `power`, `seats`, `reward`) VALUES
(1, 'middle', 1, 'Acura RL', 3, 12000, 15, 130, 100, 4, '{\r\n\"iskustvo\":1,\r\n\"car_chance\":\"0.03_0.03_0.04\"\r\n}'),
(2, 'middle', 1, 'Buick Lacrosse', 3, 15000, 15, 120, 130, 4, '{\r\n\"iskustvo\":1,\r\n\"car_chance\":\"0.03_0.03_0.03\"\r\n}'),
(3, 'fast', 2, 'Chevrolet Colorado', 3, 22300, 20, 170, 180, 4, '{\r\n\"iskustvo\":1,\r\n\"car_chance\":\"0.03_0.02_0.03\"\r\n}'),
(4, 'middle', 2, 'Renault ZOE', 4, 19200, 20, 135, 130, 2, '{\r\n\r\n\"iskustvo\":1,\r\n\r\n\"car_chance\":\"0.03_0.03_0.02\"\r\n\r\n}'),
(5, 'fast', 2, 'Audi A3', 4, 32000, 20, 195, 200, 4, '{\r\n\r\n\"iskustvo\":2,\r\n\r\n\"car_chance\":\"0.03_0.03_0.03\"\r\n\r\n}'),
(6, 'fast', 3, 'BMW X3', 5, 50000, 20, 200, 240, 4, '{\r\n\r\n\"iskustvo\":2,\r\n\r\n\"car_chance\":\"0.03_0.03_0.04\"\r\n\r\n}'),
(7, 'fast', 4, 'Aston Martin DB9', 5, 70000, 25, 230, 290, 2, '{\r\n\"iskustvo\":2,\r\n\"car_chance\":\"0.04_0.05_0.05\"\r\n}'),
(8, 'fast', 4, 'Mercedes Benz C-Class', 5, 88000, 25, 240, 340, 4, '{\r\n\r\n\"iskustvo\":2,\r\n\r\n\"car_chance\":\"0.05_0.04_0.06\"\r\n\r\n}'),
(9, 'top', 5, 'Tesla Model S', 11, 100000, 30, 245, 450, 4, '{\r\n\r\n\"iskustvo\":2,\r\n\r\n\"car_chance\":\"0.04_0.05_0.0.05\"\r\n\r\n}'),
(10, 'top', 5, 'Honda CR-V', 12, 220400, 30, 280, 400, 5, '{\r\n\r\n\"iskustvo\":2,\r\n\r\n\"car_chance\":\"0.05_0.04_0.12\"\r\n\r\n}'),
(11, 'top', 7, 'BMW M5', 16, 290400, 30, 310, 500, 4, '{\r\n\"iskustvo\":2,\r\n\"car_chance\":\"0.06_0.04_0.1\"\r\n}'),
(12, 'top', 8, 'AUDI Q7', 18, 370900, 30, 350, 580, 5, '{\r\n\"iskustvo\":2,\r\n\"car_chance\":\"0.1_0.08_0.1\"\r\n}'),
(13, 'top', 10, 'Porsche Cayenne', 20, 510120, 35, 400, 580, 5, '{\r\n\"iskustvo\":2,\r\n\"car_chance\":\"0.06_0.06_0.1\"\r\n}'),
(14, 'fast', 4, 'Volkswagen Passat', 9, 92500, 25, 240, 580, 4, '{\r\n\"iskustvo\":1,\r\n\"car_chance\":\"0.03_0.04_0.1\"\r\n}'),
(15, 'middle', 2, 'Chrysler Aspen', 4, 20000, 15, 150, 150, 4, '{\r\n\"iskustvo\":1,\r\n\"car_chance\":\"0.03_0.05_0.1\"\r\n}'),
(25, 'middle', 1, 'Grande Punto', 1, 1000000, 100, 1000, 1000, 4, '{\r\n\"iskustvo\":6,\r\n\"car_chance\":\"0.03_0.05_0.1\"\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `clans`
--

CREATE TABLE `clans` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `moto` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `members` int(11) NOT NULL,
  `members_ids` varchar(500) NOT NULL,
  `pending_members` varchar(444) NOT NULL,
  `pocit` int(11) NOT NULL,
  `mok` int(20) NOT NULL,
  `pari` int(20) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clans`
--

INSERT INTO `clans` (`id`, `user_id`, `name`, `email`, `moto`, `members`, `members_ids`, `pending_members`, `pocit`, `mok`, `pari`, `updated_at`, `created_at`) VALUES
(1, 1, 'La Mafia', 'trumperce@gmail.com', 'we rule the underworld\n600mok za join', 17, '_1_12_35_14_66_5_93_94_103_118_83_127_130_125_49_147_154', '', 31, 2145, 308333, '2019-06-14 11:50:24', '2018-09-21 18:14:47'),
(2, 7, 'Veleski Sindikat', 'viktortodorovski1@gmail.com', 'Za vlez prasajte go vujce', 16, '_7_47_48_30_76_86_91_9_13_108_118_83_123_127_130_49', '_147_154', 51, 136160, 1044543, '2019-06-05 22:01:24', '2018-09-23 08:48:04');

-- --------------------------------------------------------

--
-- Table structure for table `drinks_drugs`
--

CREATE TABLE `drinks_drugs` (
  `id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `rank` int(2) NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `zaliha` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drinks_drugs`
--

INSERT INTO `drinks_drugs` (`id`, `type`, `rank`, `title`, `zaliha`) VALUES
(1, 'drugs', 1, 'Марихуана', 30),
(2, 'drugs', 2, 'Кокаин', 60),
(3, 'drugs', 2, 'Хероин', 75),
(4, 'drugs', 3, 'Екстази', 120),
(5, 'drugs', 4, 'Крак', 300),
(6, 'drugs', 5, 'Хашиш', 650),
(7, 'drugs', 7, 'Кетамин', 1000),
(8, 'drugs', 9, 'ЛСД', 1700),
(9, 'drinks', 1, 'Пиво', 70),
(10, 'drinks', 1, 'Вино', 60),
(11, 'drinks', 2, 'Вотка', 90),
(12, 'drinks', 3, 'Џин', 110),
(13, 'drinks', 4, 'Виски', 140),
(14, 'drinks', 4, 'Рум', 160),
(15, 'drinks', 5, 'Текила', 170),
(16, 'drinks', 6, 'Коњак', 190),
(17, 'drinks', 7, 'Ликер', 200),
(18, 'drinks', 9, 'Узо', 310),
(19, 'drinks', 9, 'Ракија', 340),
(20, 'drinks', 10, 'Шампањ', 430);

-- --------------------------------------------------------

--
-- Table structure for table `drzavi`
--

CREATE TABLE `drzavi` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `relacii` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drzavi`
--

INSERT INTO `drzavi` (`id`, `name`, `relacii`) VALUES
(1, 'CP', '{\r\n\"SV\": 22000,\r\n\"YK\": 43200,\r\n\"AH\": 17400,\r\n\"VL\": 16750,\r\n\"BL\": 26000,\r\n\"CT\": 19000\r\n}'),
(2, 'SV', '{\r\n\"CP\": 22000,\r\n\"YK\": 33000,\r\n\"AH\": 39500,\r\n\"VL\": 19000,\r\n\"BL\": 27340,\r\n\"CT\": 31000\r\n}'),
(3, 'YK', '{\r\n\"CP\": 43200,\r\n\"SV\": 33000,\r\n\"AH\": 32300,\r\n\"VL\": 12500,\r\n\"BL\": 41300,\r\n\"CT\": 12000\r\n}'),
(4, 'AH', '{\r\n\"CP\": 17400,\r\n\"SV\": 39000,\r\n\"YK\": 32300,\r\n\"VL\": 24000,\r\n\"BL\": 26500,\r\n\"CT\": 16700\r\n}'),
(5, 'VL', '{\r\n\"CP\": 16750,\r\n\"SV\": 19000,\r\n\"YK\": 12500,\r\n\"AH\": 24000,\r\n\"BL\": 45000,\r\n\"CT\": 32000\r\n}'),
(6, 'BL', '{\r\n\"CP\": 26000,\r\n\"SV\": 27340,\r\n\"YK\": 41300,\r\n\"AH\": 26500,\r\n\"VL\": 45000,\r\n\"CT\": 39000\r\n}'),
(7, 'CT', '{\"CP\": 19000,\"SV\": 31000,\"YK\": 12000,\"AH\": 16700,\"VL\": 32000,\"BL\": 39000}');

-- --------------------------------------------------------

--
-- Table structure for table `missions`
--

CREATE TABLE `missions` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `rank` int(11) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `price` text NOT NULL,
  `requirements` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `missions`
--

INSERT INTO `missions` (`id`, `type`, `rank`, `title`, `price`, `requirements`) VALUES
(1, 'totorijal', 1, 'Добродојдовте на The Underworld', '{\r\n\"pari\":10000\r\n}', '{\r\n\"type\":0,\r\n\"rank\":1\r\n}'),
(2, 'totorijal', 1, 'Стекни 5000 моќ', '{\r\n\r\n\"iskustvo\":150,\r\n\r\n\"pari\":50000\r\n,\r\n\"points\":10\r\n\r\n}', '{\"type\":0,\r\n\r\n\"mok\":5000\r\n}'),
(3, 'totorijal', 1, 'Добиј 50 почит', '{\r\n\r\n\"pari\":15000,\r\n\r\n\"iskustvo\": 70,\r\n\r\n\"points\":3\r\n\r\n}', '{\"type\":0,\r\n\r\n\"pocit\":50\r\n\r\n}'),
(4, 'totorijal', 1, 'Достигни 200 успешни напади', '{\r\n\r\n\"pari\":40000,\r\n\r\n\"iskustvo\": 150\r\n\r\n}', '{\"type\":0,\r\n\r\n\"atack_wins\":200\r\n\r\n}'),
(5, 'totorijal', 1, 'Купи државна банкарска сметка  ', '{\r\n\r\n\"iskustvo\": 150,\r\n\r\n\"mok\":10\r\n\r\n}', '{\"type\":1,\r\n\r\n\"asets\":\"23_1\"\r\n}'),
(6, 'totorijal', 1, 'Купи  18x Glock оружје ', '{\r\n\"pocit\": 2,\r\n\"iskustvo\":50,\r\n\"points\":5\r\n}', '{\"type\":1,\r\n\r\n\"weapons\":\"3_18\"\r\n}'),
(7, 'totorijal', 1, 'Изврши убиство', '{\r\n\"mok\": 15,\r\n\"pocit\":1,\r\n\"pari\":10000\r\n}', '{\"type\":0,\r\n\r\n\"ubistva\":1\r\n}'),
(8, 'totorijal', 1, 'Купи 10кг Марихуана ', '{\r\n\"iskustvo\":100,\r\n\"mok\":10,\r\n\"points\":2\r\n}', '{\"type\":1,\r\n\"drugs\":\"1_10\"\r\n}'),
(9, 'totorijal', 1, 'Купи 60 гајби Вино ', '{\r\n\"iskustvo\":15,\r\n\"mok\":10\r\n}', '{\"type\":1,\r\n\"drinks\":\"10_60\"\r\n}'),
(10, 'totorijal', 2, 'Купи 8кг Хероин ', '{\r\n\"iskustvo\":170,\r\n\"mok\":10\r\n}', '{\"type\":1,\r\n\r\n\r\n\r\n\"drugs\":\"3_8\"\r\n\r\n\r\n\r\n}'),
(11, 'totorijal', 3, 'Купи Голем Сеф', '{\r\n\r\n\"mok\":20,\r\n\"points\":3,\r\n\"iskustvo\":10\r\n\r\n}', '{\"type\":1,\r\n\r\n\"asets\":\"25_1\"\r\n\r\n}'),
(12, 'totorijal', 4, 'Укради Aston Martin DB9', '{\r\n\"pari\": 40000,\r\n\"mok\" : 15\r\n}', '{\r\n\"type\":1,\r\n\r\n\r\n\"cars\":\"7_1\"\r\n\r\n\r\n\r\n}'),
(13, 'totorijal', 4, 'Купи 7кг Метамфетамин', '{\r\n\r\n\"pari\":100000,\r\n\r\n\"iskustvo\":200,\r\n\r\n\"mok\": 25\r\n\r\n}', '{\"type\":1,\r\n\r\n\"drugs\":\"5_7\"\r\n\r\n}'),
(14, 'totorijal', 5, 'Купи 5кг Антидепресиви', '{\r\n\"pari\":250000,\r\n\"iskustvo\":300,\r\n\"mok\": 35\r\n\r\n}', '{\"type\":1,\r\n\"drugs\":\"6_5\"\r\n}'),
(15, 'totorijal', 7, 'Купи 150 гајби Ликер ', '{\r\n\"iskustvo\":50,\r\n\"mok\": 30,\r\n\"pocit\":3\r\n}', '{\"type\":1,\r\n\r\n\"drinks\":\"17_150\"\r\n\r\n}'),
(16, 'totorijal', 8, 'Купи 3х Воени Авиони', '{\r\n\r\n\r\n\r\n\"iskustvo\":200,\r\n\r\n\"pocit\":5,\r\n\r\n\"points\":20\r\n\r\n}', '{\"type\":1,\r\n\r\n\"weapons\":\"20_3\"\r\n\r\n}'),
(17, 'totorijal', 10, 'Купи 1х Атомска бомба', '{\r\n\r\n\"pari\":1500000,\r\n\"pocit\":10,\r\n\"points\":30\r\n\r\n}', '{\"type\":1,\r\n\"weapons\":\"21_1\"\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `raboti`
--

CREATE TABLE `raboti` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `rank` int(11) NOT NULL,
  `title` varchar(50) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `energija` int(11) NOT NULL,
  `chance` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `raboti`
--

INSERT INTO `raboti` (`id`, `type`, `rank`, `title`, `energija`, `chance`, `time`, `price`) VALUES
(1, 'crime', 1, 'Лажно сведоштво', 2, 0, 10, '{\"pari\":80,\"iskustvo\":\"1_2_2\",\r\n\"crime_chance\":\"0.2_0.3_0.3\"\r\n\r\n}'),
(2, 'crime', 1, 'Укради од дете', 2, 0, 10, '{\"pari\":110,\"iskustvo\":\"1_1_1\",\r\n\"crime_chance\":\"0.2_0.3_0.3\"}'),
(3, 'crime', 2, 'Укради од старец', 3, 0, 10, '{ \"pari\":180, \"iskustvo\":\"2_1_2\", \"crime_chance\":\"0.3_0.3_0.3\" }'),
(4, 'crime', 2, 'Ограби продавница', 3, 0, 15, '{ \"pari\":380, \"iskustvo\":\"2_1_1\", \"crime_chance\":\"0.3_0.2_0.3\" }'),
(5, 'crime', 2, 'Закана врз цивил', 3, 0, 15, '{ \"pari\":320, \"iskustvo\":\"2_2_1\", \"crime_chance\":\"0.3_0.2_0.2\" }'),
(6, 'crime', 3, 'Уцена', 3, 0, 15, '{ \"pari\":250, \"iskustvo\":\"2_2_1\", \"crime_chance\":\"0.3_0.2_0.2\" }'),
(7, 'crime', 3, 'Шверц - оружје', 4, 0, 15, '{ \"pari\":520, \"iskustvo\":\"1_2_2\", \"crime_chance\":\"0.2_0.3_0.4\" }'),
(8, 'crime', 4, 'Креирај лажни податоци', 4, 0, 20, '{ \"pari\":450, \"iskustvo\":\"1_1_2\", \"crime_chance\":\"0.3_0.3_0.4\" }'),
(9, 'crime', 4, 'Ограби супермаркет', 5, 0, 20, '{ \"pari\":850, \"iskustvo\":\"1_2_1\", \"crime_chance\":\"0.4_0.3_0.3\" }'),
(10, 'crime', 5, 'Укради од куќа', 5, 0, 20, '{ \"pari\":625, \"iskustvo\":\"2_1_1\", \"crime_chance\":\"0.4_0.3_0.3\" }'),
(11, 'crime', 6, 'Шверц на дрога', 6, 0, 20, '{ \"pari\":990, \"iskustvo\":\"2_1_2\", \"crime_chance\":\"0.6_0.6_0.5\" }'),
(12, 'crime', 6, 'Подмити полиција', 7, 0, 20, '{ \"pari\":2100, \"iskustvo\":\"2_1_2\", \"crime_chance\":\"0.4_0.3_0.4\" }'),
(13, 'crime', 6, 'Помогни на банда', 6, 0, 25, '{ \"pari\":1600, \"iskustvo\":\"1_2_2\", \"crime_chance\":\"0.3_0.4_0.4\" }'),
(14, 'crime', 7, 'Убиј цивил', 9, 0, 25, '{ \"pari\":3150, \"iskustvo\":\"2_2_2\", \"crime_chance\":\"0.7_0.5_0.6\" }'),
(15, 'crime', 7, 'Префрли вина ', 7, 0, 25, '{ \"pari\":2800, \"iskustvo\":\"2_1_2\", \"crime_chance\":\"0.6_0.6_0.6\" }'),
(16, 'crime', 8, 'Закана на политичар', 10, 0, 30, '{ \"pari\":5800, \"iskustvo\":\"2_2_1\", \"crime_chance\":\"1.0_0.7_0.7\" }'),
(17, 'crime', 8, 'Атентат', 11, 0, 30, '{ \"pari\":8000, \"iskustvo\":\"1_2_2\", \"crime_chance\":\"1.0_0.6_0.5\" }'),
(18, 'crime', 9, 'Ограби банка', 10, 0, 30, '{ \"pari\":12000, \"iskustvo\":\"2_2_2\", \"crime_chance\":\"0.9_0.8_0.6\" }'),
(19, 'crime', 9, 'Масовно убиство', 12, 0, 30, '{ \"pari\":14990, \"iskustvo\":\"2_2_2\", \"crime_chance\":\"0.6_0.8_0.7\" }'),
(20, 'crime', 10, 'Убиј мафијаш', 15, 0, 30, '{ \"pari\":10000, \"iskustvo\":\"2_2_2\", \"crime_chance\":\"0.9_1.0_0.9\" }'),
(21, 'rabota', 1, 'Чистач', 2, 97, 30, '{\r\n\r\n\"pari\":100,\"iskustvo\":2\r\n\r\n}'),
(22, 'rabota', 1, 'Електричар', 2, 88, 30, '{\r\n\r\n\"pari\":150,\"iskustvo\":2\r\n\r\n}'),
(23, 'rabota', 1, 'Келнер', 3, 80, 30, '{\r\n\"pari\":170,\"iskustvo\":1\r\n}'),
(24, 'rabota', 2, 'Поштар', 3, 76, 30, '{\r\n\"pari\":200,\"iskustvo\":1\r\n}'),
(25, 'rabota', 2, 'Книговодител', 3, 69, 30, '{\r\n\"pari\":240,\"iskustvo\":1\r\n}'),
(26, 'rabota', 3, 'Таксист', 4, 62, 30, '{\r\n\"pari\":310,\"iskustvo\":1\r\n}'),
(27, 'rabota', 3, 'Професор', 4, 54, 25, '{\r\n\"pari\":380,\"iskustvo\":1\r\n}'),
(28, 'rabota', 3, 'Земјоделец', 5, 48, 25, '{\r\n\"pari\":400,\"iskustvo\":1\r\n}'),
(29, 'rabota', 4, 'Доктор', 4, 39, 25, '{\r\n\"pari\":490,\"iskustvo\":1\r\n}'),
(30, 'rabota', 4, 'Ноќен чувар', 5, 42, 25, '{\r\n\"pari\":540,\"iskustvo\":1\r\n}'),
(31, 'rabota', 5, 'Адвокат', 6, 35, 25, '{\r\n\"pari\":1000,\"iskustvo\":2\r\n}'),
(32, 'rabota', 5, 'Дистрибутер', 7, 30, 20, '{\r\n\"pari\":1600,\"iskustvo\":2\r\n}'),
(33, 'rabota', 5, 'Инжинер', 5, 40, 20, '{\r\n\"pari\":1200,\"iskustvo\":2\r\n}'),
(34, 'rabota', 6, 'Репортер', 8, 25, 20, '{\r\n\"pari\":2100,\"iskustvo\": 2\r\n}'),
(35, 'rabota', 6, 'Менаџер', 5, 50, 20, '{\r\n\"pari\":1100,\"iskustvo\":2\r\n}'),
(36, 'rabota', 7, 'Личен шофер', 7, 21, 20, '{\r\n\"pari\":2900,\"iskustvo\":2\r\n}'),
(37, 'rabota', 7, 'Телохранител', 6, 35, 20, '{\r\n\"pari\":2000,\"iskustvo\":2\r\n}'),
(38, 'rabota', 8, 'Таен агент', 9, 17, 15, '{\r\n\"pari\":3200,\"iskustvo\":2\r\n}'),
(39, 'rabota', 8, 'Хакер', 6, 12, 15, '{\r\n\"pari\":4000,\"iskustvo\":2\r\n}'),
(40, 'rabota', 8, 'Секретар', 7, 24, 15, '{\r\n\"pari\":3000,\"iskustvo\":2\r\n}'),
(41, 'rabota', 9, 'Платен убиец', 8, 9, 10, '{\r\n\"pari\":6000,\"iskustvo\":2\r\n}'),
(42, 'rabota', 9, 'Градоначалник', 10, 4, 10, '{\r\n\"pari\":10000,\"iskustvo\":2\r\n}'),
(43, 'rabota', 10, 'Илуминат', 10, 2, 10, '{\r\n\"pari\":25000,\"iskustvo\":2\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `rank` int(11) NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `reward` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `type`, `rank`, `title`, `description`, `price`, `reward`) VALUES
(1, 'weapons', 1, 'Нож', 'Noz', 1500, '{ \"mok\":15 }'),
(2, 'weapons', 1, 'M1911', 'Pistol', 2500, '{ \"mok\":30 }'),
(3, 'weapons', 1, 'Glock', 'Pistol', 4000, '{ \"mok\":50 }'),
(4, 'weapons', 2, 'Desert Eagle', 'Pistol', 5600, '{ \"mok\":90 }'),
(5, 'weapons', 2, 'Uzi - SMG', 'Puska - kalas', 20000, '{ \"mok\":200 }'),
(6, 'weapons', 2, 'Grenade', 'Bomba', 31000, '{ \"mok\":270 }'),
(7, 'weapons', 3, 'Scorpion - SMG', 'Puska', 34000, '{ \"mok\":310 }'),
(8, 'weapons', 3, 'C4', 'Bomba', 34000, '{ \"mok\":350 }'),
(9, 'weapons', 3, 'AK-47', 'Puska', 47000, '{ \"mok\":520 }'),
(10, 'weapons', 4, 'ARX-160', 'Puska', 54000, '{ \"mok\":600 }'),
(11, 'weapons', 4, 'Shotgun', 'Puska - dvocevka', 80000, '{ \"mok\":900 }'),
(12, 'weapons', 5, 'Телохранители', 'Obezbeduvac', 170000, '{ \"mok\":1200 }'),
(13, 'weapons', 6, 'M1-Garand', 'Puska (bolt-action)', 210000, '{ \"mok\":1800 }'),
(14, 'weapons', 6, 'AR-15', 'Mini puska', 250000, '{ \"mok\":2200 }'),
(15, 'weapons', 6, 'Colt M4', 'Mini puska pojaka', 330000, '{ \"mok\":3000 }'),
(16, 'weapons', 7, 'Barett M82', 'Snajper', 420000, '{ \"mok\":5900 }'),
(17, 'weapons', 8, 'M24', 'Snajper', 700000, '{ \"mok\":10000 }'),
(18, 'weapons', 8, 'Воен тенк', 'Tenk', 900000, '{ \"mok\":18000 }'),
(19, 'weapons', 9, 'Воена подморница', 'Podmornica', 1400000, '{ \"mok\":35000 }'),
(20, 'weapons', 10, 'Воен авион', 'Avion', 2000000, '{ \"mok\":60000 }'),
(21, 'weapons', 10, 'Атомска бомба', 'Bomba', 5000000, '{ \"mok\":120000 }'),
(22, 'weapons', 10, 'Хидрогенска бомба', 'Bomba', 15000000, '{ \"mok\":200000 }'),
(23, 'unlock', 1, 'Државна банка', 'Парите во банката дневно се зголемуваат\r\nза +1% . Внимавајте! Овде парите не се безбедни!', 95000, '{\"name\":\"drzavna\",\"1\":\"SV\" }'),
(24, 'unlock', 3, 'Мал сеф', 'Овде се безбедни парите !\r\nЛимит: 1.500.000$ ', 3000000, '{\"name\":\"small\",\"1\":\"CP\" }'),
(25, 'unlock', 3, 'Голем сеф', 'Овде се безбедни парите !\r\nЛимит: 50.000.000$', 10000000, '{\"name\":\"big\",\"1\":\"BL\" }'),
(26, 'unlock', 5, 'Светска банка', 'Парите во оваа банка дневно се зголемуваат за +3% . Исто така се безбедни !', 35000000, '{\"name\":\"svetska\",\"1\":\"BL\" }'),
(27, 'unlock', 3, 'Локатор', 'Шпионерска опрема со која можете да\r\nги лоцирате своите жртви!', 40000, '{\"name\":\"spie\",\"1\":\"CT\" }'),
(28, 'unlock', 3, 'Камуфлажа', 'Доколку сакате да не ве видат , односно\r\nсе заштитите од напади , купувате камуфлажа ', 50000, '{\"name\":\"ss\",\"1\":\"CT\" }'),
(29, 'unlock', 3, 'Казино', 'Личен бизнис!\r\nСекојдевно доби', 10000000, '{\"name\":\"sssd\",\"1\":\"YK\" }'),
(30, 'fill', 1, 'Поени', 'Поените ви се потребни за напад', 3500, '30'),
(31, 'fill', 1, 'Заштита од мафијата', 'Купувате часови (мах 24).\r\nСо што искористувате часовна заштита од мафијата. Заштита од напади!', 35000, '24'),
(32, 'fill', 1, 'Енергетски пијалок', 'Со овој пијалок си полните енергијата!', 250, '100');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `CP` int(11) NOT NULL,
  `SV` int(11) NOT NULL,
  `YK` int(11) NOT NULL,
  `AH` int(11) NOT NULL,
  `VL` int(11) NOT NULL,
  `BL` int(11) NOT NULL,
  `CT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `price`, `CP`, `SV`, `YK`, `AH`, `VL`, `BL`, `CT`) VALUES
(1, 30000, 28947, 30416, 30737, 30939, 30981, 30587, 31492),
(2, 55000, 57195, 55022, 56774, 55554, 55196, 57072, 56520),
(3, 94000, 91661, 98017, 97599, 95245, 94126, 95596, 96900),
(4, 115000, 109633, 117774, 116220, 118527, 111724, 116791, 116530),
(5, 230000, 223053, 220591, 238294, 219197, 231604, 235927, 220322),
(6, 400000, 384926, 395123, 400838, 398818, 411577, 401430, 392417),
(7, 780000, 814710, 802905, 751394, 763256, 743097, 762721, 765314),
(8, 1000000, 1022317, 1018068, 973390, 962744, 1043555, 979538, 1017029),
(9, 345, 344, 338, 334, 361, 337, 343, 341),
(10, 630, 635, 648, 607, 621, 624, 659, 632),
(11, 815, 838, 801, 800, 823, 776, 803, 829),
(12, 960, 938, 947, 912, 1004, 984, 997, 927),
(13, 1400, 1350, 1365, 1446, 1382, 1386, 1451, 1347),
(14, 1950, 1860, 2014, 2048, 1955, 1975, 1961, 2030),
(15, 3290, 3410, 3320, 3247, 3151, 3219, 3184, 3141),
(16, 4045, 4127, 3990, 4135, 4049, 4000, 4012, 4215),
(17, 5845, 5751, 6105, 5962, 5941, 5684, 5629, 6125),
(18, 8700, 8698, 8748, 8513, 8924, 9076, 8602, 8388),
(19, 7445, 7481, 7305, 7756, 7558, 7447, 7489, 7286),
(20, 14300, 14667, 14906, 14080, 14963, 14694, 14998, 14463);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `drzava` varchar(2) NOT NULL,
  `pol` tinyint(1) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `active_hash` varchar(255) NOT NULL,
  `recover_hash` varchar(255) NOT NULL,
  `remember_identifier` varchar(255) NOT NULL,
  `remember_token` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `drzava`, `pol`, `password`, `active`, `active_hash`, `recover_hash`, `remember_identifier`, `remember_token`, `updated_at`, `created_at`) VALUES
(1, 'gwilliams', 'trumperce@gmail.com', 'MK', 1, '$2y$10$X0ADsKR1.smhQxL2PXPkMeSY80/7hTY/8Fcy1UIHibeoWhxXPxUS2', 1, '', '', 'tvDwV5FFRSk+mx5GJC3K8d0V05jcqxgN8wmhRoFY/rnsnIWZGyTzCE6umoX+icyiNL7JgRaoNE6WUBHFy1GZoYSgBaVh3Hfu1V0s3A/1ITdOPyujFBCQZCLmTb09mKn8', 'f84b3875f2cb4e68036bba65c307256ee0c25fc88666c4cd96d5342b5a2bb4db', '2018-09-23 10:30:41', '2018-09-21 17:50:42'),
(2, 'Victor', 'pioner@t-home.mk', 'MK', 1, '$2y$10$FwwSLmn5EXJQYd.rwXfzE.RCrn9HM700ttDn3PHWdBT7B.Xhrn20.', 1, '', '', '', '', '2018-09-28 17:56:55', '2018-09-21 17:54:33'),
(3, 'vase', 'vase_trendafilov@hotmail.com', 'MK', 1, '$2y$10$eRIIOCuoV8n/zu3/X6aj9.JoQX8kz0kPDpmbei3GRC3Z9Wo/0oItu', 1, '', '', 'JsIdlWNaS7+Cye/nek0ALGfQKqDQDM1Quc9vtbyZ/dVFHHsNpM81nZS5doFpAmf7WKtP2ck87PgxCRduAnnRwna1Qy8LtqANvA4pcD5if36N9ZmDxJwlDbctqvTIXtAo', '5f59da0e38bf1c0012f2c212b701aacab76b64e8f3b4623d764d7052d554ba25', '2018-09-26 16:06:09', '2018-09-21 17:54:50'),
(4, 'Janeski', 'dimitar.janeski@hotmail.com', 'MK', 1, '$2y$10$waS7yODoygkiP3NK9x0MDOg8Gr7lygfQLVLFlTV4ABx1gnWzyFOQe', 1, '', '', 'gN/GfDDHyEL6FMyyEyxoAeTDzSU2xFNQr3s+PuptShzrojBjdxRkuiixoLyUO/kcM32qLmq+Je0U+MxR0Y9uXKNxBhrbExmxHUx6PQB1aVFTu4Ax7FS8kmmTJtUyJhdi', 'b808a28e41193b6e66c53dbdf96569af919fbfa74954d68b707137196f8757c5', '2018-09-22 05:09:56', '2018-09-21 18:00:24'),
(5, 'Atanasov', 'todoratanasov270@gmail.com', 'MK', 1, '$2y$10$W5i2ntA.T.ukjfCZmh6uq.d2tjtbPBfk75PneQQKK/XsUpdFRWNJy', 1, '', '', '', '', '2018-09-21 18:08:11', '2018-09-21 18:07:20'),
(6, 'Coci', 'hristovstojance7@gmail.com', 'MK', 1, '$2y$10$NbkFCne8sh9TONLF3Bvgqu4QAba1qogrZfdh80Uy1g0wVV5faNxQC', 1, '', '', '', '', '2018-09-21 18:22:29', '2018-09-21 18:16:31'),
(7, 'Lapeto', 'viktortodorovski1@gmail.com', 'MK', 1, '$2y$10$cBBYF53Q2g6b2MMFBg3tkuIgm0Xdh.k2wqtFNcn5nryNPrR8TKV.C', 1, '', '', '', '', '2018-09-26 18:35:46', '2018-09-21 18:18:28'),
(8, 'Petar43', 'petarnanev@live.com', 'MK', 1, '$2y$10$EJ/qmnSmMV4BFgld10aGQ.V7uwANR5yBDPx5MBVVXC.o3kInvm3D.', 1, '', '', 'KjVnDT2Xm1E68D8tXkD8I+9wj5PTfduv2LJqRSq2jgpyhKKGpYoDGYgSdDwUMgY0cwhMcKDH5Jw4z0ay1Xaugx8ZtSTEz3nAeSHKBsYKLGBmIc2ACGKE7D6tRZ/ie+wB', 'ec2fcb8491e37254be9e3233c312936ad8863c6976947ffb870a9d4f729f8585', '2018-09-27 13:57:00', '2018-09-21 18:23:09'),
(9, 'Pi4ot', 'bojanvucevski1@gmail.com', 'AF', 1, '$2y$10$04jTPIW7Byej6Kmck9oMHOcMaU28vL9IRuSve/SsMBpeVfdhVddNq', 1, '', '', 'RPnNEeP/PWyTnbEqH3iMCZhBa0hu7TjuhcaSQkX/gnmFlxK66l8jJks/dJEL4GxEKkQKOgoA7gzKECN4Ur58R7TvxPRxXoms19XSxUc3Wpr4YFBuafGwIYQF2HGmr4/O', '4434289b137e8c6d27522290a72634876f9ec570f354cafddcba9b2c21cddd9c', '2019-06-05 22:01:24', '2018-09-21 18:57:51'),
(10, 'Valjakm48', 'valjakm48@gmail.com', 'AT', 1, '$2y$10$VXuGACuXZf8vE6nTfDUt6ux0nFqk.maH8A1BX3EdgALNGmM3BJmA2', 1, '', '', 'jjTZhR4FT9DTj8CTnpUFlz7OXmsgfmpyLL93RRDRQfhMr3uSHvJ0A6GQ1HeuKLHM2IobPJz5jigu3v8Ift/9ZRHND/ZhrmNiCHCFOjomHgBA2+UebEnXrcLbupIMA9Qx', '3e19e03e83f9f3871b842f37bd99361a75817f98b707955e3c53fb91a39c2a9d', '2018-09-22 15:08:52', '2018-09-21 18:58:25'),
(11, 'Toce', 'davcevskiteodor@gmail.com', 'MK', 1, '$2y$10$jfyNH0/Zl4WKEtqk92Nno.oXtWKysKu3y1G1wl1C/Jqtean8MCXo.', 1, '', '', '', '', '2018-09-25 23:38:15', '2018-09-21 20:26:13'),
(12, 'Dimitrov', 'damjan_dimitrov@yahoo.com', 'MK', 1, '$2y$10$0NbKVwJv0mQjTyBFa9k.cOuU8vv8DDj1qwU/lenvknGsCZl9pxfPO', 1, '', '', '', '', '2019-04-24 07:47:15', '2018-09-21 20:29:57'),
(13, 'Skrsheniot', 'kristijan8989@gmail.com', 'MK', 1, '$2y$10$3lr.5Gvrg1yN5Q337a.G5.uNoYwhxKtJX6f1EDqm/0dFyMygkUlqm', 1, '', '', 'ZmJp+GbtC+zICkbKoD4y3rsAVTgFaB5hRonggA+jICFTHwJ7Befs+/T09gVaMN1armc3H2HheDrFbA3m2cBunFjc1uDkhBR3r/6wb27OT8yENVA0pXUqL6032cbl7uwQ', '4c69bdfc31b36565e2ac06b39173b28712296a54de5315ad7f2a36261fe56301', '2018-09-26 14:45:04', '2018-09-21 22:08:10'),
(14, 'Bole', 'bobe_damcevski@hotmail.com', 'MK', 1, '$2y$10$Uga.J.S3AJkqLCYsbCODgOACJzf5HrSVgJnErnEgOpud6WyjyOhpa', 1, '', '', '', '', '2018-09-21 22:14:39', '2018-09-21 22:11:38'),
(15, 'Guf66gvb', 'hhfgfg@gmail.com', 'AO', 0, '$2y$10$PI/f6SMnhtbyU81j3iDCWO4m5o7XbFk4E2M1oT1D9V92uQpvXEGvy', 0, '0922f650dfbbd70e657fe25c481e376162fb8b5c4408e51fe25ed1f7a76480fa', '', '', '', '2018-09-21 22:39:38', '2018-09-21 22:39:38'),
(16, 'Tome', 'zverce_tom4e@live.com', 'MK', 1, '$2y$10$IGK/soaO7qcrWCboAjjPNOB0QLR9/uNdxpSI5XC82ppofI79iT.qK', 1, '', '', 'fPxpmMjJbQXa9J3mo9JxShsdXthn5QvLqRP5o2/ASp+aYc1by5o6N1Oa+POArVZcpQrDr7Euf/HEhbqKEw7v5L218T8hV5cPs4/zUoT0WW0A3qKZ0i5oGkLG2Wi+bxeV', '670321d1daf1d57ee617b70abe7df3ad9a8a71cfce8650f7b4eb6761572d2beb', '2018-09-21 23:43:53', '2018-09-21 23:42:39'),
(17, 'Firenzo', 'tino_filip@hotmail.com', 'MK', 1, '$2y$10$z3D5j0fgy/4rvBkJKM877OMDOwLso/MY8yjwRl5G8iaMteXxGIfeW', 1, '', '', '', '', '2018-09-22 00:14:08', '2018-09-22 00:13:00'),
(18, 'AlekTheKid', 'miloshevikjalek@gmail.com', 'MK', 1, '$2y$10$N.oTWr8hqkQAJKR.Ky.GK.uqiH9zlZSAeIzp21XgMVF8YMIprJeS.', 1, '', '', 'FM5YRj4tA2qJhQ+6OkQtAnn8hEw2lia5E/QfpTNonIOOR3oSJ/qoeYdkl1XD/i7oIG3x47D/+6J5bAdxaCJWuAAubiO53JuWJBSo7iJ910d/ARhI++YEVWpHuTBET5gz', '1ca248aa9f1b55a12088a192b28520e03d0aa9070043a68c81b30011ae6ec4e4', '2018-09-22 01:09:17', '2018-09-22 00:58:41'),
(19, 'Gospodinot', 'mkgamers0801@gmail.com', 'MK', 1, '$2y$10$Hx.D8kpkntRgDGEDAgCVnexFGQLA.EvuUMBNZc/fJkQxtH4K0mADa', 1, '', '', '', '', '2018-09-25 23:38:30', '2018-09-22 08:08:43'),
(20, 'broouklyn', 'mkdgamers0801@gmail.com', 'MK', 1, '$2y$10$bXvYCuuZraSfPmK5kuRKKeAsQqqMJmdYtD3D0NmbZpMz.0taD1Qfi', 1, '', '', '9pSUQrLpp6L3cFkKEUgksLXsEPEMSi9JXKRbdZ94Z0D7XEcQnh2tQ1tVK5Xg6SwHh+EaErQxT6rhkcyUyCqqNOYmHlNx8Bjw3py0fsJ0xIzcIDfVqJSQUD9w2kz8g9dp', '7b236a249a2739f170cd168f0d6326886733f141c82945ae95bb159037724735', '2018-09-22 08:26:02', '2018-09-22 08:11:25'),
(21, 'Angelce97', 'angelceiliev@yahoo.com', 'MK', 1, '$2y$10$YapXB.rqvLArnBZb0E06eeIL0C3ejrq4HA8QaMbPH3TbMJIN7TEN2', 1, '', '', '', '', '2018-09-22 08:50:52', '2018-09-22 08:49:54'),
(22, 'Cacko', 'contact.feelthegoals@gmail.com', 'KZ', 0, '$2y$10$yy1Mtq03LTDUDt1.IZOxOeyuUkdEukShuSM8aTXuRlXyGxkpt/n96', 1, '', '', 'Qb7BjYJBiHCv3DQMujEAQ5v5YJP9DN3PgFnXND9FdKeBe4+lFhNxsD1ZVJvXW2NUQUpZaRb+ucT6yt/LhYaWqfl8syMguvPyodtkawYjc9B6p4KbDiM08Q6+vpY6IlVr', 'fc9fec712a0bc977d4817435b42eb3489c4c91c2dd49b9f0f11caf79411c7dde', '2018-11-10 21:20:07', '2018-09-22 08:50:03'),
(23, 'Bobzilla', 'bobiborovski@gmail.com', 'MK', 1, '$2y$10$/NIQiuNPvF6ch9jFX5edA.J5f1gqsCQxk8wOdH77Hi0GrWgKc6ozu', 1, '', '', '', '', '2018-09-25 23:38:45', '2018-09-22 09:40:49'),
(24, 'ljuben', 'solev.ljuben35@gmail.com', 'MK', 1, '$2y$10$UmwZvR8.AWfF9OlJw8PHWeq7fAg63yXnEjRxLFmNeK/u/b8SFxQOa', 1, '', '', '', '', '2018-09-25 23:38:47', '2018-09-22 09:52:21'),
(25, 'luciano', 'lmashkovic@gmail.com', 'MK', 1, '$2y$10$wtfOVZeEIpnAP5cIpy41cu0YNe1oNxAf5FtOKYj/X1tGrQOLRS7Fa', 1, '', '', 'q4M6inmQQD+aS64aBba2BYQugpBTCXBtFc99iHmUcShkfsYau6FLvtGrNtP5BvqRYckpono7AMB3X/OYegXWP/deW4RN4i+d60gA/IILGr/n5hLTalaHT4RZ3E6TRtdb', '73f3b8e88a3c1e71bb5ca79bbaf822f5fa4e92440bbb66ebe1bb079f85eeee2d', '2018-09-22 10:06:50', '2018-09-22 10:01:53'),
(26, 'Marko', 'markoignovski@yahoo.com', 'MK', 1, '$2y$10$EyfObel/mN0U/5mZqFhUUOxcWE.QB7zG9oKrg/D.0vFRNMUiq2xUu', 1, '', '', 'LVX1Mq2PXiJwfnQHdzYqINh9G/vRT+1i6Jy1/RQebcnl5LEJ6kgH5XL/q+xwaHYFYuPzPYoiFGWcaPmYkUHgLt3u7tPDU3Zyf4rGi5WXMwuMgKobFk5SjbvVmfH1RLvN', '04038375416f703cde3380d66ab9215d507ed8afb9b46e32e7affbaf2acb319b', '2018-09-22 10:13:01', '2018-09-22 10:07:51'),
(27, 'donMetyu', 'najdovski.valentin@yahoo.com', 'BG', 1, '$2y$10$7sLJpdaAv5Dy5949eiEjWuUFU86Z2cjJtI9ueWr6XkPvgJ.cxcuD2', 1, '', '', 'FTVHG0HdnMHA10ssZuc/dBDgnImjYVH8s3qRR5AvLhX07Nbi+u7ZeGLynsTsTNj2gEzkwLRl+2RbGkCAMs72sR6CqungzBGCDj1fQ2Xu+0gwkEP5VdbAspSFcT4I6kxe', 'f45ffe9c768257ddfc6c6412577717c3ad5217338c761c3ce6b2693a90bdda7f', '2018-09-30 23:44:39', '2018-09-22 10:32:20'),
(28, 'Axward', 'usatodayn@gmail.com', 'DE', 1, '$2y$10$SOn4z7gQwg9CQ2nGcwTt9.U/.pEcICyIoj32Z6HWu/UST2iaE60.q', 0, 'b273521df916a58366c84bc96d57e8bab943a40c5b649f66a66c960d5e233794', '', '', '', '2018-09-22 10:35:55', '2018-09-22 10:35:55'),
(29, 'David', 'darkweb@hotmail.com', 'MK', 1, '$2y$10$GPJV3ygZXyYhp3uJlv9rgegJltOYdXZsDHLeoXTDOfrj9OtDe73Re', 1, '', '', '', '', '2018-09-25 23:39:04', '2018-09-22 14:19:59'),
(30, 'Roberto', 'betohdbetohd@gmail.com', 'UK', 1, '$2y$10$bU.ZSypb6ZBqaH675trlc.hFTwZD1oZFecwjpULdPEo/0fvCb9C9y', 1, '', '', '', '', '2018-09-23 21:27:52', '2018-09-22 14:22:40'),
(32, 'Kicho', 'hristijan1231@hotmail.com', 'MK', 1, '$2y$10$ClrULTFbpK4Avpbh4ZOVzuc/PYN5hrxEPnSRwVygv4dqBVcNhZeN6', 1, '', '', '9c9DdMFDGIU9Dxa1Ioyd9o0batcscxmbn7BS7x6u/dWn3QJGZDqXpKRRiQidPPzczhEs2x6UFg7uQbTuSukRn7unyjVvjb0F57JRSwmU2e+Zx79j1yOmNkQVhWRtOM1j', '8a1c71bff9f5a7e457e79e63cc5ad4e28b9e3851efb50ccf55b1901569f1ff3f', '2018-09-22 15:55:10', '2018-09-22 15:52:27'),
(33, 'Sergey', 'leon.despotoski@yahoo.com', 'MK', 1, '$2y$10$FguETtJVTfabvSqaOumAruF.e0Eh06A46Vcy1AOgNddWMFlOqypFG', 1, '', '', '1B2zQL7Ckqi3DxeyOflO9GArFMoaXXmIpF6xqVaGLpwmdPzosgfuXSmTh0B6Ud5+JX+CrUHWD6Ffa1Ayq0luYr7VEU8PbNJytc5T9zPVSxLYiZ9+buDn327TL2WQYkn1', '0623ba289b4c14526fef6d1937962d75bd6912ded246b8e025638c4cffe4a5fe', '2018-09-22 19:54:40', '2018-09-22 18:27:17'),
(34, 'leonid3321', 'leonidstamenkovski@gmail.com', 'MK', 1, '$2y$10$u856vdrwFVAPiNBL9qcqhuexQWN8u5w9AXdrsL1uBK2FSEGShFM7u', 1, '', '', '', '', '2018-09-22 19:03:20', '2018-09-22 19:02:14'),
(35, 'VaskoTrte', 'mitrevskiv01@gmail.com', 'MK', 1, '$2y$10$Qmfz71.0nBsQPEUxjEqIZeY8uGJCuTlJ053afiv7rcwd2B.LHGr/C', 1, '', '', '', '', '2018-09-22 21:35:31', '2018-09-22 21:23:48'),
(36, 'Blackbeard', 'blackbeard.n19@gmail.com', 'MK', 1, '$2y$10$VVlnRz1Od9hcB2IhOJKsV.s2AFBhZR5x6hHZn7nwCjMbDrqqGYfJC', 1, '', '', 'KjSNQSyKqjWm7VWPRkmcWANUVt9TUlL9/jkFW8xoXgnLTAD4HCRMx0kVcm9392yvCMbsoXRZRyEtPy8vzUAd5bGSyWWLCre1Z/gqZLQztfLwoxp/U8MkC+0qkNtC72HK', '9ce86e3404f15220aa253f122f6c5003b967a8cdb4ed007f7358f9bfd0deacea', '2018-09-22 21:46:15', '2018-09-22 21:43:28'),
(37, 'Kirk', 'kicwow123@yahoo.com', 'MK', 1, '$2y$10$FIVBA8Uw2uut0Z9w7K5sGe6qROvVgS3PYNXXBOEwdAcBTEtz7bwSG', 1, '', '', 'YfQrOmyKBUPQ5np+tJ7Br4Ny9BdrDMpDvAMjg9n3Wqf+9sSeO4nBpvSOaTVammTit1RtHbTZh/hTl3XUp1h3V/rfiOaJ4kEFheLOS3CnX7N2JA0XIQTyvhIIWumiqfam', '938992e4ed74e39d467f97856f30ac8fc532da2887e115d876c19b36f91d4dad', '2018-09-23 06:03:32', '2018-09-23 05:48:24'),
(38, 'Psylocke', 'kuzmanov_a@yahoo.com', 'MK', 1, '$2y$10$x74jE2Q2bpcXdEhOJPGar.evgW19mJe1Xos5WlLKCO8i.wZhoX27i', 1, '', '', '', '', '2018-09-23 05:49:59', '2018-09-23 05:49:27'),
(39, 'dreyk', 'cancukovski.martin@gmail.com', 'MK', 1, '$2y$10$bbP.vYqHpX95RlnNaewWcOB7vNeNOnU0CF4D7a4x.Yv6ihrJdpyNy', 1, '', '', '', '', '2018-09-23 06:09:41', '2018-09-23 06:02:17'),
(40, 'ветеран', 'filipbibs@gmail.com', 'MK', 1, '$2y$10$Y1himU2mLVQoQvMax0BvwOGLldLoj0mPmpRnv4UGjamV8byKiBgpS', 1, '', '', '', '', '2018-09-23 06:28:16', '2018-09-23 06:19:30'),
(41, 'kingvlach', 'popov123@yahoo.com', 'MK', 1, '$2y$10$AdgAXCE9D39lOyI2av3kIOgTMR5gKYphIkNLBg4JnLkMgKGaBeO3u', 1, '', '', '', '', '2018-09-23 06:44:52', '2018-09-23 06:43:51'),
(42, 'Alexandar', 'trajkoskialeksandar@live.com', 'MK', 1, '$2y$10$yt34oo9OxxDJtdk5FtjcsuQXm8tzSVAcMHIsfNyW6iCEoU4ubD1Ay', 1, '', '', 'Oqses/jXZ62u22nLGe7XGJkHgqfWudz4mFOTfnghFq1usINbj5laZ47saqW95MD1GtNgTex6uan70i90wDvmOG9qlDeHHlpgubsc+gG7gUrOPWyu3Wp/pk6nVxYy4BHD', '818bbf6b28d41cd9d35d0762df1c96e6a75a4867aa05c538c9483ecec04069ef', '2018-11-24 23:33:17', '2018-09-23 06:43:57'),
(43, 'Dzheykob', 'aritov.kiril@gmail.com', 'MK', 1, '$2y$10$FNyEbb3bv6sSQ8cH.dBW5.Z0QLus3XNi.pWFDYo7BxuoBl2U6.xyu', 1, '', '', 'YLK8QOcWs2ft8v7d23qU9z+pUFXpyR9DenBiwK4OASxaQecDJ6EH6a/YdFTdEcOypLgP4O6eegBv313eQ95894vYki5+oYlNqSbBDYuTX1hx+bw4xWZaIFjMvv+pUoSg', 'ed9449eaed2dcc1f4008c06234b45af8cfc67197023ae1a7a478ea2903dc10e3', '2018-09-23 07:05:59', '2018-09-23 06:59:28'),
(44, 'Algebra', 'anthino12@outlook.com', 'MK', 1, '$2y$10$ainh3tJ1IRnkX3NO.sQQ8OPDiJHBBtmC3fq4mwMRTixStDGGftUlq', 1, '', '', 'F/qQBlGp53vcBPMBHVTAGKFztrC+8q1SFcEM8Br13GAVw0g0zPavMHklc7FOelMjuQglwcQkW/dVjKCI3pTCGQG+V5kwzUA8ZCtVmOogEkN+hG8ehcrFqPfn9at8MFVp', 'd06d0bfe33fcdf79223bb82bbaba105eac416c7606324286c64714f427e98a71', '2018-09-23 07:01:43', '2018-09-23 07:00:38'),
(45, 'cyb3rang3l', 'sh4dowangel@gmail.com', 'MK', 1, '$2y$10$yuo.8NH9JL/4tIDXzpP2WuE7rRyzkn2zr1xGWWsveAOYlfxVTqFb6', 1, '', '', '/XqZ9kqWPEFwX2ZEs+1atwqPOgj+aLhM32tqP5wp817NLUqErWmFP50KXXqD1dWeSRmE9q4/bdWE0+qOtBwDXwxN8dNOteTa63yxQHi6ONFrHQQwxWaolBGdpCX2xHpT', '337c2aed38cb9f55dfe0a31ddb310adbb8cc31bebce8eb957675ccf0236c26e5', '2018-09-23 07:06:41', '2018-09-23 07:06:17'),
(46, 'InfStr', 'wrisok@hotmail.com', 'DE', 1, '$2y$10$L0SirN9TJdnUGbOojJpx.eU/qRYJEQ84BNfnwoH4QnmHnGDH9XJxK', 1, '', '', '1vrU8TfPEGOKO8Ot2LdpkrFVcBQ+d9/ZbfdnSWYhwYx8RMH9lNyjB82Av5bPPsCrSUOawEe5TT0TzgSWYVY8QNo85R+yi6cof6e/tx6736ehJ1lcLLtGrjVb2jdv/ptg', '25b32dc8248728ba2e554dffb1851b3fcaf382a4150fa441ff6aec69ba4e9383', '2018-09-23 07:21:40', '2018-09-23 07:20:49'),
(47, 'Zelen', 'kuzmanovski_viktor@yahoo.com', 'MK', 1, '$2y$10$1XSPSpFta4YuaWnvsHLQAOwG/hS2JLD2LSnG80lDjwm0AqO7wsOvS', 1, '', '', '', '', '2018-09-23 08:47:55', '2018-09-23 07:23:31'),
(48, 'Manevskii', 'damesteam39@gmail.com', 'MK', 1, '$2y$10$ETHmh.Uk5pGRTbagNb/32OdFiH8kcuie4WlK0Ct.8L3OS.4XaG.Hi', 1, '', '', 'ETTXtCSIrudm06Adfj6NRYmhRmgk9I7oEoPucV7D3B71gHbEperu6RWuGDPkJ5dhhDAi9qX9oMEmMpEaC5LmW/4ggtBuAedhnkciT9ToO47Ei4K2HuenkpDaQoUCDBbb', '6e755ae8e0a14358df89a9b6b80b1b536c8b440dfa190a220d6197e60a2af020', '2018-09-23 07:44:41', '2018-09-23 07:43:05'),
(49, 'Tale', 'pesev.trajce@yahoo.com', 'MK', 1, '$2y$10$03h7xc.lRVWMYXhCCiShQ.EIYPduf8RYelxLHwBV.Kz4g16hPeT/m', 1, '', '', '1BqKcv/2Rja6qSfZEv87xm7yZMBZ+clis9vzHEGywFpON/clSirbU5MI604AtHO5zEIJvoXkw9B20exDd/+jT7ZruLIv4HZLP81xb4Uj5lG49GPB4SkwdZp1WrZp0S/g', 'c68be65262352e138af91799f50879fe766d4239308f57d79c94f8b1847a63a1', '2019-06-08 10:14:08', '2018-09-23 07:45:09'),
(50, 'MrFreeky', 'david.jovcev@gmail.com', 'MK', 1, '$2y$10$8meFHkEN4I7zVmbw/DsU0eRWgRYw5y/x2PFn1Hfk94d0oux4U0.ru', 1, '', '', '', '', '2018-09-25 23:39:21', '2018-09-23 07:45:29'),
(51, 'gejmer', 'gejmergejmerski@gmail.com', 'AL', 1, '$2y$10$u./tvxk0MRZRbdfijyaNPepGoeOhAV6ikzm917LvbIEUgTOfUZ5hC', 1, '', '', '', '', '2018-09-25 23:39:27', '2018-09-23 08:07:25'),
(52, 'fichoZ', 'fdimovski@outlook.com', 'MK', 1, '$2y$10$0BPbvx8rqlVwlBZJwSNqnui8X//RYbG.fIf5f1CZuBK.5mvINsJPO', 1, '', '', '', '', '2018-09-23 08:22:45', '2018-09-23 08:21:07'),
(53, 'Linxy', 'filip_krstevski1999@live.com', 'MK', 1, '$2y$10$sfpvehlx5qRRIWLt.9HkeeB4wl4AmfXPTVpmp199p/OnmOAWv2FMi', 1, '', '', 'mjJ51wd2tM4C00zPUCnJuIvWsINlWc5vMb7W0vzYZMLz38sHyx+TTfUrbV6PMcqcpgNfWz02s3Cy9MKYaB6amT+MLDbAr77msb9wj3gEK/3fNS0j33c8F+HyVhyKRaqA', '00cdf2a22001650fdea93809227ab5bd0cdb38e9d5f69f2ee2ea820754f7e6b5', '2018-10-01 11:14:19', '2018-09-23 08:49:09'),
(54, 'Zhukov', 'petresk1@yahoo.com', 'MK', 1, '$2y$10$VN7RVgM8zZrT/T9ugZBjC.e.P89mV1Lhkmb4W6MT7UAA2I8qgkSH.', 1, '', '', 'kiQWH4uYXvu7xnN/xJ5V+uV98xMGbAcBQDSwIlKb+Bv0de5qxzdPddjQ7tGNV+1Ubwm3wiXHEQV0AW7NkbPQAh59uLRjzZ+vzdh6qebqNm/rFsVL/HKn+0mTCKCEGI5a', 'b52ba0718570d0f2296da3735ba34fb5c32472764bde559732a5949eda1fedc0', '2018-09-23 08:59:23', '2018-09-23 08:58:58'),
(55, 'nikola21m', 'theunderworld.22084d@tryninja.io', 'MK', 1, '$2y$10$hCYZ1S5D1sc2zzbnyIHW4uuJF0HWshqtpl6PV7cMMqcekWiUvNlA2', 1, '', '', '', '', '2018-09-23 09:05:14', '2018-09-23 09:04:43'),
(56, 'OrceJovev', 'orcejovev1@gmail.com', 'MK', 1, '$2y$10$pAfZjXfbABIxYPifP8Zd2OGA1LYLD1Lg7B49OdKjDzSsA842Wwuzi', 1, '', '', 'tZE5QRTkKultO44vo8x/xI/qV/I5nxBTvnnMiSe1eWZf9OuX32jd1VLeWdszOCnydBLpyt1wHULJFPVF9aRS5ugMbemIZGFIilIqOgRtdc8iIrkZYLXmbY62QD2LjyZi', '23df1e3c996229b33aba3c33086f8f1f55d362beb163c63b71ba9de427953ca7', '2018-09-23 09:43:23', '2018-09-23 09:35:35'),
(57, 'manovj', 'manovj@hotmail.com', 'MK', 1, '$2y$10$DFXKTa62jlIm5zbEBR7zleYwQ2E.9TO2umQ2/3p5fGcKyEhGun8ly', 1, '', '', 'FsctwIw6UDf9LzIYTTNrnfHqgwSNiWNIzBKHsLnxjEAPk9SK2eNSDM6CIlEvtX52SQfEbtXCbbH+ZNgPbS4DlILqxPHF28Y+nXMaXOnH7kFOXLln0/rapVRjPV4A1K0C', '0c97eb6afbb12aa16b504d56ca41bde04ac32c9be20383cd5f222f5216075d3f', '2018-09-23 10:23:53', '2018-09-23 10:22:30'),
(58, 'Rotkiv1', 'vddimitrovski@gmail.com', 'MK', 1, '$2y$10$YdyvvyKI2CB9iWV.1Wb6NuiRwBwOvOc.cdZiW4PbQmTtOPzep4fRu', 1, '', '', '', '', '2018-09-23 12:48:42', '2018-09-23 12:48:16'),
(59, 'Jack_Jones', '', 'MK', 1, '', 0, 'bea5f17f96b3f334c08984de12555dac6252f8da5d0f8efaebd73f2354605951', '', 'Mc2YFjRnBbC2J0Pw3XGee5SaT2GJjTxIhgFrKAMhudQx1XWpQWZH9d+j9op1ESV3TLUW49/7p1vi0Aczp8N5rLrNnIlvjjA0hbL6DUVZ/Vx94EEBM/9V+RumpEomco+k', '5305bfb3c6003b27e4d238312c3300c17324fd2eca769f176789a8bcbcfcf6b4', '2018-10-15 18:44:39', '2018-09-23 14:47:48'),
(60, 'Crash', 'stefan.arsovskii@hotmail.com', 'MK', 1, '$2y$10$jMfbaMjqFx9k6NLnzPX01OXCmVhtUpLJbRK0LFdYjHYjlujoF6GPq', 1, '', '', 'GiJN7gNTNnm1zZSLwHJmBINC/4/R7gAD7F6MdRHjdud/H7TCpIw5wq/Zu2ErxPR6+HCI3FhZIiuk/lTYoe62a9jmgFDskyNJ1+fbZO8gn1VkIGnadZbCfYU0zeIZP3ln', 'a6209924e0654766e38e56560cede095a7b26bf1f674248ab9a27c0b3834736d', '2018-09-23 14:49:19', '2018-09-23 14:47:50'),
(61, 'Kurtof', 'nikolce2009@hotmail.com', 'MK', 1, '$2y$10$1B3U8Cwa2gCTFIhZRiQfbOwzbTrf5KBfwY4VvUKEhOkebHvIoJj4e', 1, '', '4e8a879429ac141dd4eea07ca2387aef87aee1ab2700685ffe2904639ddb35c2', 'c7DgnZD7/KvQ2tPPJJt4TmQYjOO7l+mS2Op9Q6VfXpkvov9jEW3ez48SYnaxvXr5gQOqQEsLuFavd0WzrZi4RrrJpZQpGgAh0JvI6h5XDSeGFpp9TtAZYcmdtNHtbWqF', '2f36c8eda855a00de16f1a4be2bdfe24668d1b0849f42213750f9c770a4b11e9', '2018-09-23 15:51:12', '2018-09-23 15:47:03'),
(62, 'Wildboy30', 'efto.1990@gmail.com', 'MK', 1, '$2y$10$idPhMFA15288XZkTzDJzwuWCE.qzE.ax09H2AXIbW7wFDHcXOq2WK', 1, '', 'df5e30badbe1d12fe35b2e7f4937cf90f78e00f4e54c43fc4aaae117df09a861', '', '', '2018-09-23 16:51:11', '2018-09-23 16:46:06'),
(63, 'Teyo', 'teogorgiev34@gmail.com', 'IS', 1, '$2y$10$ZFIAfVg3KN9N2J/xxivgEOvkCecYBR7xt0cttHWudOWEeiroQPB8K', 1, '', '', 'eRuPOK+CJ3k/I9KYZgJ2SA4D3MoKerEVynJnL6P7+pTzCERfoXviSUSbNb6Fx/9b/Zsep86potpByuHfzd3zCAcxczRNaGH4wn2IE/3wwnmhuL8jZ7/bI1uVMIf/qYXr', 'df7d94f0246b64cf692fff4600d59d7dcf778995f84da2e3f801ef8b879df1c0', '2018-09-23 17:08:02', '2018-09-23 17:07:13'),
(64, 'Darkweb', 'darkweb4321@gmail.com', 'MK', 1, '$2y$10$sd4PITtogmAWHDoygCl4k.jcMCOFQ/r/YY4qxDxuNA95c8ibThH6S', 1, '', '', '', '', '2018-09-25 23:44:34', '2018-09-23 19:13:31'),
(65, 'LucasHood', 'gocelazarov1@outlook.com', 'MK', 1, '$2y$10$.pM3LeY6TWc0S7mOELjr0OW1tN/Xnc701S/RM19eJ9elStl/lPwAC', 1, '', '', '', '', '2018-09-23 19:34:26', '2018-09-23 19:33:01'),
(66, 'Maximus', 'davidastardziev10@gmail.com', 'MK', 1, '$2y$10$ouoKq/GAN6.Csy18rZg4aO/QS/SVTFT5W5oYHZ88FnAGOvPNfNBoa', 1, '', '', 'QTJcFS2mL6FHGm0P7T4/MB0SbCiyjNk25ulnhkWZZXVHwL4IV1mtIdUt/GUtZf7GLpHPCr/ucnWcQtgJ+9ZnoGpA4vk6An/qFjgSM4Nbvg7z4X3tcwjspxbavqp6Z80r', 'dafc6e5fc3c09d4b636c9db319060702929c96c01e0df42d81cdaf2dd316771d', '2018-09-23 20:02:29', '2018-09-23 20:00:03'),
(67, 'МулевР', 'ristemulev@yahoo.com', 'MK', 1, '$2y$10$.VTpR4z7m5iS2zKdFa.GNOyLhUOyodrwwtx7Mcd4R6fg7ioYtSMjO', 1, '', '', 'FBYkxQiJu1tdFJsL8yD7JMBtpr4ANyckHZe+5sDiN01eVnQAESo1MbQ3ExNP5MlYeZDMELGZ4wC3Dx4hVfqlbuhqCdLVQurVaiEw5NIwoWDNtBwQ8x3V6OAP1Je4gG9d', '10f57571c0be328fcd6146c2d1c4fc3c35ee18bb323fc8e331f765201c83f2e8', '2018-09-23 22:16:52', '2018-09-23 22:15:45'),
(68, 'Sara', 'stojchevska11@yahoo.com', 'MK', 0, '$2y$10$CHNIk1cYBv0BS7SI.rdwQuXh28SbeDEIAGcGy.yFq8MOkzH5Vk75K', 1, '', '', '', '', '2018-09-24 05:13:58', '2018-09-24 05:10:26'),
(69, 'Mengel', 'angel4e_nesov@hotmail.com', 'MK', 1, '$2y$10$TJAX5AQ/sBiZ1oywBm9pkOFcs/iZXsggGqhQqfvkopSJZFP8CV1MW', 1, '', '', '', '', '2018-09-25 23:45:29', '2018-09-24 07:18:41'),
(70, 'dulemk', 'dulemk@gmail.com', 'MK', 1, '$2y$10$9FMAvkhoZdtCab.q9NKx3ulVG.FSpKaJ28ZUMbxR5Xk.nOXHM9S5u', 1, '', '', 'RO/XMnQZk7NGWi/pA/r0ISjJw95obzrHWhQ5sKjBa3Cf29J82pb8Lx7V1FV069gzdd7Q63NQP7fMp54wpezSw0tz3NlS6oBYFlvSZag5ktNL5jkZx5XFHuxWOJqobmCy', 'ccaf38885be65e65d8a33b20f1f60ec099c26ecce69a1e1e39b25eeadccc6969', '2018-09-24 08:47:19', '2018-09-24 08:45:07'),
(71, 'kire', 'bbajraktaro@outlook.com', 'MK', 1, '$2y$10$SAM1anm0D.ZljhJJ8RoD0OFnxHrbR8O6dK5xt6Tskbs0pDm1jBPvO', 1, '', '', 'UnXIEUdXM/sFyhXrhlyJzdU7UuZNZ2UVLSSEaQ8nY437b/RTMDBW2HPcZ6VYt17vacieQe7yb9ECffFlkZsE3Cy5AFAITxENK1XkKU1dkMBwqlXHvSogYUnCRtAvmGlI', 'dd699cd9340518d297444ced6328aa94e69a5d145754469262c944dbe63fe128', '2018-09-24 08:50:17', '2018-09-24 08:48:53'),
(72, 'Howell', 'stojancelg@gmail.com', 'MK', 1, '$2y$10$S5L1DUzv477kYxHHjaOnpeu3EZIOkEyIHIJCYLevzeQNTDfByhg0O', 1, '', '', '', '', '2018-09-24 08:56:06', '2018-09-24 08:49:46'),
(73, 'notPetar', 'petar.grujoski@gmail.com', 'MK', 1, '$2y$10$NVXaofyaleUE7Md5ozLFsupgdI/jYLg1KJhLc.TGW57D6ycocs2ni', 1, '', '', '', '', '2018-09-24 12:06:12', '2018-09-24 12:05:57'),
(74, 'Dimovski', 'dimovkin7@gmail.com', 'MK', 1, '$2y$10$/dbY0.MPjI.DBqtkG8DHouqQVAqtHBTYYU04AimR9Ps908l8JNeVu', 1, '', '', 'YHYBPb0Sqy5E4toYbtfNWuGMwQbD3EJhxWDhR/56mQXL/S1QNyBQyAS07iMyODk6inxw5qaTmRQKCCa9ahryBYbkSdGyVbeBqeklC+m7hBgvzOS0Qr0HqPZL8n9IFwh9', '7b4ac78ed89d8a05871eb7921dd22689b8849ac915b7ca16b7f99dba168e33c4', '2018-09-24 12:50:45', '2018-09-24 12:49:48'),
(75, 'MartinG12', 'martingaj99@icloud.com', 'MK', 1, '$2y$10$3kBpSO2s/U1bv3/AcnncQur4mDnVb3QKrubhK1BgKCnQn7Two5dUO', 1, '', '', '', '', '2018-09-24 13:27:44', '2018-09-24 13:27:11'),
(76, 'NinjaMonky', 'theninjamonkeymkd@gmail.com', 'MK', 1, '$2y$10$M9V6u.2GZU1SEknks5H2M.N2jTif2iPz8BK6tJVq2PuWKKNAlki5e', 1, '', '', '', '', '2018-09-24 17:25:32', '2018-09-24 17:24:57'),
(77, 'konev1337', 'konevskib@gmail.com', 'MK', 1, '$2y$10$ujWrf31oo8V9GwKm4zGwyOGl9MJuvuOWtEX9g0svPScAGUDDGBe2K', 1, '', '', '', '', '2018-09-25 23:46:33', '2018-09-24 17:52:28'),
(78, 'jiraiya', 'borissokolovski40@yahoo.com', 'MK', 1, '$2y$10$A1viSqX42kW/m6tRjCBNweyKELUGi6aSXovS54/8uJbepJIkYtBaG', 1, '', '', '', '', '2018-09-24 18:39:16', '2018-09-24 18:38:22'),
(79, 'trajce', 'trajce123@gmail.com', 'AF', 1, '$2y$10$eu7EhqFN26RfTfwabOvwxuV7s1ggYszYgZ0Qd0VbcV86ulYXFxa4i', 1, '', '', '', '', '2018-09-25 23:46:46', '2018-09-24 18:55:18'),
(80, 'Марко', 'mitrelooker9903@gmail.com', 'MK', 0, '$2y$10$E8ulMyIRfXqzdatbU6xf5OKftgPqxuXpjRytkkzKk90NPOufE7esi', 1, '', '', '', '', '2018-09-24 19:48:34', '2018-09-24 19:47:48'),
(81, 'Daniel', 'daniel.atanasov@yahoo.com', 'MK', 1, '$2y$10$4P6lRBSGLZIOoqN7Qks./OeRSKtTcXssKAWX42AQAfJA.gcZzK5Ti', 1, '', '', '', '', '2018-09-25 23:47:32', '2018-09-24 20:07:43'),
(82, 'KinkyGirl', 'e3827775@nwytg.net', 'MK', 0, '$2y$10$A15iRUy/nEkC8Rl0HHeMjenU50Wnz4xyPIHhOKLP4mfY8nMZNGuHq', 1, '', '', '', '', '2018-09-24 20:34:41', '2018-09-24 20:33:53'),
(83, 'Bluz', 'antomc127@gmail.com', 'MK', 1, '$2y$10$23LmHBo0bpZtajTTeEjeGechZrMGgqKfZ9A0WhXeS6NNtrQHwIdrK', 1, '', '', 'TMbUZYN/1Tcy/Fnyl3+ICK+pq6AK0EglnXfBV7iDvl59DB5g9ENhgoVfNeytnNAC7Eqndz4l+TxNWewoH/Q7JKNZnWq9SpOiPc0GmEBnMHkQzTGRTtgISOltcEmDzVnJ', 'a416b72a15adcbd4986972de07c98959b2bcdf17d008a447979674c41c1f2868', '2018-09-25 02:59:30', '2018-09-25 02:56:41'),
(84, 'Novak', 'nv_tnt@yahoo.com', 'MK', 1, '$2y$10$lIBiGamXrXYhsfVBfeI3KevL7KdPpPZh30oYgvGVhGs2Wvr8.0laq', 1, '', '', '', '', '2018-09-25 06:45:03', '2018-09-25 06:44:45'),
(85, 'Acko', 'aleksandaratanasovski43@gmail.com', 'MK', 1, '$2y$10$pMOEFp0HZIr40NScVw29SOTvJNFChn51.N8ADHNWy6InVbvqseYCq', 1, '', '', 'yYsJcutlDKw8cc2/zP1DBLs6vSK/X9WbPM4F4HnP8Y6MO68XPCLkreb1+HpJPCsAEZK7J9mEjAQvhOfAh5C7IK1dHW1mMrheLqrUax3QYAN/y0KxFccshjJP8D/KPuVZ', '5e8f44d0c6891748924496110b556b029cb7d41865b2428c6fc69df4cd32f78a', '2018-09-25 08:35:49', '2018-09-25 08:33:46'),
(86, '1l1j2', 'ilijastefanov@yahoo.com', 'MK', 1, '$2y$10$XrnOSvkbaTj5Ei2n9.PhSuvivEds0otai5OaXBEzp2y5n62uWxl2W', 1, '', '', 'Ebbsg9gZQpnGKjy5GLm7NYEYNayLOcW9P0Supl4MZByW2MkRpDtc906P8d7UuNjesJBWo4qHiWwuJoS9sULfJeR8P1i09AY9J+n2XPIms7/xVsS8N7tAfQ2niu+VUV+A', '3fe6b2c907cb2c33a971ab762d93b96eee59debb63a392e017b939654b09c20c', '2018-09-25 08:54:21', '2018-09-25 08:53:37'),
(87, 'avzzoiz', 'dimoski@live.com', 'MK', 1, '$2y$10$g69r0rAw4Jy75Qgmp93B9e0uO7COKsFzdMUm/VRllwI4Zc3s8JzuW', 1, '', '', '', '', '2018-09-25 10:26:44', '2018-09-25 10:20:41'),
(88, 'DonMiami', '3randomizer3@gmail.com', 'MK', 1, '$2y$10$WR7oEoJ396tbBEVJeyUhVez2XxPgn4u0HiDxZCUL9HC.E0YADULAO', 1, '', '', '', '', '2018-09-25 14:54:33', '2018-09-25 14:52:50'),
(89, 'RainBrain', 'filipvuduto@hotmail.com', 'YE', 1, '$2y$10$xODo2K6yCVvSI89ny0WnR.A.A6BEjFoKMd/.Y4FG4iRpjs6FSHtQ2', 1, '', '', 'NRJ2R4rjD+vjjcDaQvc5sJGiDy49BU5315vskiWH7bTrAHSYtyyld9xCVHs1DSZPhs899j0cJRtc2nYubHbr40FUu7TJK86bqs2UD2AEfzlQDMjMTZ6vG/u2YvhebcTb', 'c14c53eed0b4462e35a9b13cd37450a5535c512db990db8e440fdd3adad85f1d', '2018-09-25 15:14:09', '2018-09-25 15:12:39'),
(90, 'Sheriff', 'raycastell35@hotmail.com', 'MK', 1, '$2y$10$foEH9Q8WCvNCYtMQLUm6Iei0mtB3rrLSrZQwNZR8HZXOFsq8/aCMC', 1, '', '', '', '', '2018-09-25 23:48:16', '2018-09-25 16:27:28'),
(91, 'BugTester1', 'john.johney12@yahoo.com', 'MK', 1, '$2y$10$7IhPwMGo/VHqZU66TxVZD.NGrZHGGtoXrgOej9z0XOctAJZXG0iNy', 1, '', '', 'T2jEteixUTsu8+lp8zXLJfvvZb/EcI1tjHVzH0Nf1OAchT+gfi7vCVjFqQKjQurRQP3UZL25Mha7SHf/uFl76iPqCmfn8+nJKzcf7msXeWrw71nMivysRQQi6zLETnmL', '8f22461c9834dcc066b596ed866d831152eba66c07c4b9e090b77fc4cd82a2fe', '2018-10-06 10:21:03', '2018-09-25 18:02:19'),
(92, 'McMafija', 'ajtovmarko@gmail.com', 'MK', 1, '$2y$10$eAfkzu57zWM/79Wc4Kt1O.NlasUc70mfvc6W2tubtzIG70C.lY.EW', 1, '', 'd8c57efb6f503a724e1cae0c5c390beb336c17bd08df74231b7296e446198b9b', '', '', '2018-09-25 23:49:03', '2018-09-25 18:29:11'),
(93, 'McZoze', 'markoajtov93@gmail.com', 'DE', 1, '$2y$10$RARo/8HV0qxi6sozx9beYeRnopf9XkdyjJAZK5koffgQ/EkBrn0dG', 1, '', '', '/RSM3Li8U0XWWqTf10c5BnRRwZ6ep90dul2qF7vz3z0N1JSZmtVugftOEvAyxGjcHjTq32OQ5/Hwl90qHoP5/prmoC5pBitQbLtLMwb6sxZ5AMNk7REt7VOKSQe2yYMS', '7a47eab15798d831c6c5a6d8982329c1f658b9d182ceebcd87f86aa29b998e04', '2018-09-25 18:40:50', '2018-09-25 18:39:49'),
(94, 'Kiki_RealM', 'kikirealm0@gmail.com', 'MK', 1, '$2y$10$IRZbZGgrbFLkid6DZoeKNOyMigPGii0oE.dDCvOhJgzxQR1SjgD7C', 1, '', '', '', '', '2018-09-25 19:10:39', '2018-09-25 19:10:06'),
(95, 'wallerbike', 'steve.dimitrow@hotmail.com', 'AF', 1, '$2y$10$Yzg5wpMTPAyBvPwAo533yOU25TOACO.2AN.m1eLFF36bkp1hvQSnW', 1, '', '', '', '', '2018-09-25 23:49:49', '2018-09-25 21:14:33'),
(96, 'Macur', 'gjamungrov@hotmail.com', 'MK', 1, '$2y$10$87Zpw9LovV3f2UYNsrYhGe29ofp8giPekyvt3DacJ9.OhVF8O9Ene', 1, '', '', '', '', '2018-09-25 23:49:56', '2018-09-25 21:19:31'),
(97, 'Martinr35', 'mitrovskimartin@ymail.com', 'MK', 1, '$2y$10$OBAV97Ap5Dp2VVhc.hdMbecDwWaftyuRHIE9NgOOESTZvgsjR2Mre', 1, '', '', '', '', '2018-09-26 03:49:40', '2018-09-26 03:49:07'),
(98, 'Woody', 'woodymkd1@gmail.com', 'MK', 1, '$2y$10$nmTRHtCFZ6MZlGX2aBcsFeqJ7zKnIOFBC4y/w.SRp.VuWnGpp1zvS', 1, '', '', '3ZopPXdnLhf5oCrxSPW2LZT1oZ2+OJr+PcMEAIhhbfKe1zYlMK+SOaqdoaORMq+vDJa72dSmmOxGtPsXH7PaC5Ttlbywl9luQhECzCNL/0y5GzcLWFhCh5ULXmnKoBNj', 'a8d6cf7dba8cdf0da8361270de782f86d4d2facdfe38fb8d43b51ea749b0b018', '2018-09-26 06:27:38', '2018-09-26 06:26:42'),
(99, 'martin', 'trajkovskimartin@outlook.com', 'MK', 1, '$2y$10$Qz.7Sst5szrY76itU6BrTuSn5b/eeMkYKS8PumRsuIvqU/9u7y0gW', 1, '', '', '', '', '2018-10-04 08:21:55', '2018-09-26 07:46:06'),
(100, 'Vlaco', 'nm051201@gmail.com', 'MK', 1, '$2y$10$iOqiXVneIRzeY8m.OVPCouGfzaB.GZszECxxMjG/rjE.iYwNmKrYK', 1, '', '', '', '', '2018-09-26 12:16:29', '2018-09-26 07:59:34'),
(101, 'martint', 'trajkovskim19@hotmail.com', 'MK', 1, '$2y$10$2lc7/IZ7MMl06DURRtCFz.bBtuS8GCotZgpgOJ0qRaNQz22LPrcli', 1, '', '', '', '', '2018-09-26 12:17:09', '2018-09-26 08:06:35'),
(102, 'DonVito', 'jamesford01234567@gmail.com', 'MK', 1, '$2y$10$ncz1iJbdDNvJOtSFnKVBseTD/O62epCwezbNl0rpRbw78oTT5w4sC', 1, '', '', 'vNpNRZMa+AMC2+WocjYJxlxvB0Vj5o1tjrnrFyMYfwSn21luDcwDf/VOgMfPmOmOcf32VWN+0m4yrIDbiC0cf6JDiq3KEKGesuHTe1FmtolneFY0dV7L8eLnoCpc6IR8', '2b7171a350ac5708c2d20098ce16fd4609318b2588c6dbf5a0fc449dcd33b52a', '2018-09-26 08:53:25', '2018-09-26 08:52:40'),
(103, 'Costa', 'bubenastov@gmail.com', 'SY', 1, '$2y$10$fk1xD0ztqUElRqTEJBPY7Op1Iez7O0NvXRKhgEUPg8TetYAFA8W7i', 1, '', '', 'r+y9Si0fdzMBWXRTkY+aOYGqYnCO0aZxXxUHTYHZkhqd0m2Jhi/vZ+ul8JaPO6uWBHRG2eEBPDIcKOJ0TlOI5lCg36LqFkNyWK6nGafKcpAyfdXGAj3ycEJFVW2qHR2s', '7cb0d39da94c3035886a4cc44d33c7a8c00d87a91919fe9b5d8b98c2441e5776', '2018-09-26 10:09:56', '2018-09-26 10:09:08'),
(104, 'Chemistro', 'gooosedrive@gmail.com', 'MK', 1, '$2y$10$xCP8KKNYVZMGMiCQ9DbDy.M9lssbAz3QC6DCfImlR9SYZGolUn2Ri', 1, '', '', '', '', '2018-09-26 10:15:26', '2018-09-26 10:14:32'),
(105, 'Al_Capone', 'viki.angeleska33@gmai.com', 'MK', 1, '$2y$10$WmLY.TVJH.P4nesalc9zAuejRQYzQ9rJG7mZfvzU/QIG2N6XmJeT6', 0, 'fa33081c9bd29c8735ed948ba200a633587c7aa61017140d0a16bf76180e35f1', '', '', '', '2018-09-26 17:07:47', '2018-09-26 17:07:15'),
(106, 'Al-Capone', 'viki.angeleska16@gmail.com', 'MK', 1, '$2y$10$.SUSrvBerAopPD8gEWlZ4eDskFKTcgRciIpoxpXayNEid0MHlR9Tu', 1, '', '', '', '', '2018-09-26 17:16:45', '2018-09-26 17:15:43'),
(107, 'marrzzy69', 'cvetkovski.m17@gmail.com', 'MK', 1, '$2y$10$sbh3NRng21tsj6Os4LETe.OHj30twrKFHGqIRs.dHfoHnR52AONPe', 1, '', '', '1TLfUYQa8fpaIPVhz+++GV6ydJMj+Xd3yfQfSmHbQld5C7zdb1vMVBeiuNOfCUcMfSvlmdEIYMLsRdauxGDo58MiSWaIFgFfGIQ/X3WxL+bRvYoXosg3WyuBLRjQzaGZ', '9c52da71d0ddd89227f86fed2afe852691ec0a00576de42f11bc7f1a2b0a12b1', '2018-09-26 18:22:14', '2018-09-26 18:19:53'),
(108, 'EZcobar', 'ysefsamandi1@gmail.com', 'MK', 1, '$2y$10$yFMQmvTRm1zc1Hti61kza.sG.v0FptKiKSIFxsLDTVOxgS9WC6foS', 1, '', '', '', '', '2018-09-26 18:35:53', '2018-09-26 18:34:59'),
(109, 'Nels', 'ristovskaantonela@gmail.com', 'MX', 0, '$2y$10$0jlo/340IToA7nKzTl/YqOBBWJ2tcmEUm863aUSgaWCozjS44lVv2', 0, '61849ce6a6a7c13a4b8784312201b87f17522eadd66ed12c61e118b3d52829a1', '', '', '', '2018-09-26 19:00:40', '2018-09-26 19:00:40'),
(110, 'Yshshsh', 'jsjsius@sie.sisj', 'MK', 1, '$2y$10$qh.SyyZVY5kdIbWmfTCWoOZRyaQLMrRpa8SKEvhUlJWRB5uKof9K.', 0, 'b79c52ae8d3ea90283390185714991c55222d6d3a443c1b88b63a0893831f684', '', '', '', '2018-09-26 19:08:35', '2018-09-26 19:08:35'),
(111, 'MAN1X', 'micajkovm@outlook.com', 'MK', 1, '$2y$10$H8/u5BjxgkM.83Y5kTY11O2t9vOT0qMp6N8poqEwtEHSxR9yRIH1e', 0, 'e232d8d925e35134e72e63cf3ac9cadbe0ca4ceefa591f7ed8e18ba4659d69ea', '', '', '', '2018-09-26 19:58:03', '2018-09-26 19:57:21'),
(112, 'MAN1X_11', 'micajkovmm@gmail.com', 'MK', 1, '$2y$10$BSze7j4dH1Lf4JAqwfWCq.Bl2fQ85UosLtLP2jjugpACbu/NFvdyO', 1, '', '', 'eCHtsL7O95it1Ss8+AQ1My0Y5f4GM5V1odiLOlYA4x5f6I3vhiiiXrfTqRue4jYmQwBoXfq9nbMtkvEm2JopqM0BKuUt37FrnnhY8GtHOHJRp1UFw9dYc2gPSxkve0TP', '4c04062d28a343f7502639412331e0cbe0d9aa47d4e4cf145146f8d6e582cb63', '2018-09-26 20:01:48', '2018-09-26 20:01:14'),
(113, 'getro', 'popay1810@gmail.com', 'MK', 1, '$2y$10$wEj6WjBNXufgn59OV3w2Y.ZYnFAzmSTPh1QpbjYe2kmkYfJIyy3Nu', 1, '', '', '0G0iduIA01nTnlGVDTBB0+kgZh5PjRSKggwLGc3GBgsUG5Uwmf7TAsa/wXr94NgP5xcb55CoiwLqoBYCCs58VTWhIbK6ryVD8V4Xvz8enPnYgsLYZnpTVQeUgVXpomGy', 'cdbad90469162656eba46d0462ec22eeac30f24449fefcf7830b1ea6283e11d8', '2018-09-27 09:05:10', '2018-09-27 09:04:40'),
(114, 'Дон_Балон', 'andymansell10@gmail.com', 'MX', 1, '$2y$10$9iL9clbA.ogmCL7ptKMeA.DpFBWCZztwQTmwauSGDk5fGVAPUwT3m', 1, '', '', '', '', '2018-09-27 12:40:41', '2018-09-27 12:40:05'),
(115, 'gorjan_m', 'markovgogo@ymail.com', 'MK', 1, '$2y$10$WMipcYb5HokEc3QAZKcUZO.35av52b0PcvoMyOBscLrbZUmds.uDe', 1, '', '', '2CjGQZliq9wRZeqRK/mq8icWtH0J+414HlYxNHtNoUVZLO0I6DVLSgS3Jfr0yw6PuBH3Y9qVTktuwCY4ujX0xMvVHsq9mP91D43oPYh7xYEAZocAb/3mTtfBzQSdSa8p', '732ccd201370a71d6b9689d8291c8d23af3efc542a45c7275c0481299c30296d', '2018-09-27 14:07:32', '2018-09-27 14:03:37'),
(116, 'someone', 'someone2132116@gmailc.com', 'AF', 1, '$2y$10$KI0pmferGiXdrzFybJBpnuqpIbgs.ZNgQwoh/ZneGrZFsGdk7E39i', 0, 'fceb9b14f9e5ec08aba6f053b5a8f49dd903e3c50ed044e89e5e6958faaa007a', '', '', '', '2018-09-27 15:10:28', '2018-09-27 15:10:14'),
(117, 'bok1sha', 'cvetkovskib21@gmail.com', 'MK', 1, '$2y$10$wbskIJ/sCjpHRm6v3RpEaeYWL4tpzoJJU.qDIsErP798N2LZ4TdJS', 1, '', '', 'U5mDiQpKd1emLB96FMb332dB4S3qffU/FcKL+YvGdgce9pezP73uxG8i0JTcno1V9ocpBiWp/Dynn1s6wByyHtFPQNM9UFXjPLvOXKzblRGvEctbfFyHWCY7oYO9uNmX', 'ee2150947d415c2e1004dafbc9da7eb1ae1fb6a78c5f295a2b8b7424a96239b7', '2018-10-23 16:24:46', '2018-09-27 15:46:18'),
(118, 'Toki1412', 'tokimatters@hotmail.com', 'MK', 1, '$2y$10$EVX2LmYND5lhMy4jchzrduyuIz07alaK9/iSIU6w0O7mzeeI0qq.u', 1, '', '', '', '', '2018-09-28 12:42:40', '2018-09-28 12:39:25'),
(119, 'damjan', 'damjan.angeleski@gmail.com', 'MK', 1, '$2y$10$XXdraqeEfvz7bRUAyNwwOew1mVJlBPAOZgFuwRXO/NFaSZYLDxv/m', 0, '22e6b9136e68e3bca25e116fa3dd9831c6a724c6c7955bc9c9a8d6f30eed804f', '', '', '', '2018-09-30 08:34:35', '2018-09-28 15:45:32'),
(120, 'HiThere', 'ordevn@yahoo.com', 'MK', 1, '$2y$10$sWXH7BapE3XABNdQztW4yenGTx.mSl2AE.MSA3Ow/sLTAMF1UpLaq', 1, '', '', 'zgT3phzwB1xKH2dXcJVgrMcbrX3hFKH3oitV/ES0EOWJZIKRbwpFeDVB6FX2aw+857cmUI4wHadfanScbxWZzwljfrYxfTbWlIF1OHQRNAHjXZFoIjKzR5L5tY4PIY5b', '1376b154b0327030e5c0437746f804f06bd5c9b4e2818b9528d4df6fbfccec54', '2018-10-01 20:15:42', '2018-09-28 20:23:22'),
(121, 'stefan', 'tsterbik16@gmail.com', 'MK', 0, '$2y$10$DoeuTJHWLM2rzW5djGa6CeehOsfQPFfqb5k7L8Dq5Fx4TefEP1OLC', 0, 'affe3a178ef97ad54b84aac9b1a8a3c46fd49eb996c20e4c1fe4e521be1831fa', '', '', '', '2018-09-29 08:12:21', '2018-09-29 08:10:51'),
(122, 'Pece', 'dimov.aleks@gmail.com', 'MK', 1, '$2y$10$jLAkpEAZuw081MUE40/W6eqc.8sUhkuqmphcN73N0cGFsyTZSxKUi', 1, '', '', '', '', '2018-09-29 10:35:42', '2018-09-29 10:35:15'),
(123, 'mica', 'nastovskam@outlook.com', 'MK', 0, '$2y$10$jHmG/a6toxqy2nksJ4ttnOmJGu7jIDDFLcgV0Sa5gelG2GgEsRdCC', 1, '', '', '', '', '2018-09-30 09:17:38', '2018-09-30 09:15:18'),
(124, 'Fiddy', 'fiddy@sa-mp.mk', 'MK', 1, '$2y$10$kDfAL.xlKPMIMBmUAWtiZezhZhsgyt.VmX2uA9zJrYOlwIe.jsZQa', 0, 'ed48b8cb8ce911cc42433f34f342bf80c7ff7a04a4b62db9ac110255553cd452', '', '', '', '2018-10-01 12:55:04', '2018-10-01 12:54:44'),
(125, 'trajkovski', 'manutd.ronaldo32@live.com', 'MK', 1, '$2y$10$Hh7ttl.MLEYzjFtYJt663eWacoE/1d3pNO8ovV45m4H7eK86gmvya', 1, '', '', '/ONLW8Rsh/3Udf9/Pmq/pEvU6uXEKu28NeNylUeibBa6GC4YaU6Rn0hVLF/nvFiZEt99Xs8ZNgymcZfZ3NKOVjayjHyorrGMf8tEbtnCnDg1NsriqiRsCYGRE3n7siri', '438ed4ab326a842cbbe3051ddbc73e5442a56f61f2ea77f9762cd72456b3adb0', '2018-10-04 08:29:38', '2018-10-01 15:05:31'),
(126, 'Panche', 'pance.uainhfdiuahfiu@yahoo.com', 'MK', 1, '$2y$10$OkysDCQ1xBS6AShU68mMa.Tnz668MtV0Rsj6YOhKx4UkgnhrrfVMK', 0, 'dc8d11361d9c4ff42b32443e0892e84dca6ba922b1a4ce17688885457dfdcf3d', '', '', '', '2018-10-02 15:35:12', '2018-10-02 15:34:38'),
(127, 'Panchee', 'pance.kolov@yahoo.com', 'MK', 1, '$2y$10$TbvqjtMYt6J4PB.F6OrUcO3wv1YJhELE7v43Jxkhdsw4iVzGLRsO6', 1, '', '', 'cGQIWZz2QVbZt2ELiOsYf6iggeUMpaUFNKJxDLlCbs6p58xulr01Zcj0gOfGcaJQkXaL+4B7GUjs9aNyEy6W7g49BTzJUmOpjVb4I//nhBmfsStVWUkYOVZ8NOqOnQMN', 'a4a63d191d3ec1bd685ab50668af0e43e17c48534abb7eb63906c4cd7f459193', '2018-10-02 15:37:23', '2018-10-02 15:36:26'),
(128, 'make06', 'makedonka.make10@gmail.com', 'MK', 0, '$2y$10$.pKcFo7hmQygMyCfD7DGWeu/UTfgOixT6xXbxa5PjH07kBODhYPaq', 0, '494bc66f86e9039c6cf2c22755436268b5d85963a9762d3e1347682f56b680b0', '', '', '', '2018-10-03 10:37:49', '2018-10-03 10:37:49'),
(129, 'make10', 'airovamakedonka@gmail.com', 'MK', 0, '$2y$10$0vIFbguNFK1Tjd71mpptbuLJQwrR..VuZfnpZlxo484WXCfr5YHMW', 0, '0d3df0a14397eb3c2eebc353b9d8095fc7da2124fc2d89e6a1e3060c3fee9afc', '', '', '', '2018-10-03 10:40:45', '2018-10-03 10:39:59'),
(130, 'make', 'make.makedonka10@gmail.com', 'MK', 0, '$2y$10$3yBC4FPm8m4GgFSZuaNEBOX4ftwiYxvC8TqBtHLohiN/SJCfkuwxO', 1, '', '', '', '', '2018-10-03 10:51:30', '2018-10-03 10:50:55'),
(131, 'Pepi', 'vodno2007@gmail.com', 'MK', 1, '$2y$10$O5qTDyrQRYcA6CMlqE8kKOm4vHgOe1z4x2mDYdNU3Pa2/TDCsBqra', 0, '741cc7770800010127c247f5bf687d8957d3749a6250262c36b7fcf4ecc4acb9', '', '', '', '2018-10-06 08:59:00', '2018-10-06 08:58:34'),
(132, 'sandra', 'sandra.ivanova78@gmail.com', 'MK', 0, '$2y$10$VSuAYNtmoZ6hT/6u/Ymtg.oqdjHdsZl7htVo2e1SBL1m0zPC9Zd8q', 0, '6aed559088ff0e373fc8f7ee314b83d37eab267b42b05417fe15d2bee9586af5', '', '', '', '2018-10-06 11:39:09', '2018-10-06 11:39:09'),
(133, 'balkanGANG', 'yolegut76@gmail.com', 'MK', 0, '$2y$10$t1FPk.hrWv96BU6cCXb1Yem0ufwZsiMsTyapx9aBHDORWG4SIpVbm', 0, '2a700c7ff5c3b191ea835daa9d390e7dfa6569bddc37a8da2ecf5d7302b83c0c', '', '', '', '2018-10-06 13:34:16', '2018-10-06 13:33:26'),
(134, 'Bruno', 'martinkozle@yahoo.com', 'MK', 1, '$2y$10$rUzQzGeXxKVz5O28tq2eFucVxpO0AgCjSYxzfOuj4Q1QNvou9rPV2', 1, '', '', 'DqnWrJspVreUvmvL4Gj7aw8BjV/NOEUWqEKm3sCYszwr4dkYKBByqvewN5L/uDhdEMc9OTb6iTEyactI5bhZC/k0i2HofNwdacneLr/hu2MLo4j9XczNQuQwnCY0hUIg', 'e479bc2a5bcf98c5f0d3fd472961e28cfac12ae6c4aa22d6dde4e00ac8e8603e', '2018-10-07 19:15:34', '2018-10-07 19:10:27'),
(135, 'anodimki', 'ano.dimitrievski7@gmail.com', 'MK', 1, '$2y$10$MxlB0tlffSU0FwP/EuRh3u3sigOsgPAflxWgcGqPH6nmx4YgPFiDG', 1, '', '', '', '', '2018-10-07 19:37:58', '2018-10-07 19:30:04'),
(136, 'Mitkasin', 'ct-1231@live.com', 'MK', 1, '$2y$10$CVXGXUsZ/I1qjyHNwX9q2.JrC7AMtFGqtHlKRqUdVBHNCIw0J62k6', 1, '', '', 'NJfbdUj6qWeNWXZq3MsSoW/CK+04sb2OhghilyJ14Ug6BN4XRCqNMt1sGg84Uh69myslQ4XRYyr4dXzE8Au3xbYVBNJXV6w5mPG5JYifDG5ThRXpbk97eTyKEGLRRMJ4', '58eced7dda0a0a7a071f4ba97994bf3cdf9caab27ab2d5000a13f97b4ffac49e', '2018-10-08 17:24:27', '2018-10-08 17:23:34'),
(137, 'HeavyMetal', 'ineffable339@gmail.com', 'MK', 1, '$2y$10$u5qG.G5anXD0ELjeHVPAPuzXbUYeAsuPuW4U2xLL2f0K6HBWqoule', 1, '', '', 'txrq51jK1z9cEzWpH/DaI3KmElF//2/QdL62B3DmhvhKcQ1XGpjB4UrYOReVII5QGFAwRiC0kz6m10AINnh4i00fdlNMlraUgZDDfyfOFC08PClDmca/kXpTYZVV/gva', '52880c01140e4325e17f5e8c7cde06b0fc702251d8dd3e8ec4565a4d811ad02f', '2018-10-09 03:05:06', '2018-10-09 03:03:57'),
(138, 'kodrafura', 'demo1@demo.com', 'AF', 1, '$2y$10$pcBGmupl915bVTbbr9XZ.u52cz/yNGRPsGBZRfYnH6OD21SEXzdjS', 0, '88faed431ed3a0e37d86a0089f863ee0c221a5b72f3dd788fc00f1299c4ae8ef', '', '', '', '2018-10-09 16:22:45', '2018-10-09 16:21:02'),
(139, 'Martinn', 'martin4emitrovski@gmail.com', 'MK', 1, '$2y$10$JB/Q5qE52BgBenwBL6feaOvXUabBgvLZT.alM93NgriVScKZPCMuG', 1, '', '', '', '', '2018-10-11 15:25:46', '2018-10-11 15:25:19'),
(140, 'Pusete_KUR', 'ljutvizahriev@hotmail.com', 'AF', 1, '$2y$10$es27bK0dk7Sw9Dco31dMrumPNnYXVNaW4emiRxxSuXCw.KZvYTAy.', 0, 'df0c00ae01f1c4ece83e1e6855db042b49904b460b1dd958691c426e24564365', '', '', '', '2018-10-17 05:10:36', '2018-10-17 05:10:36'),
(141, 'ak47', 'aleksparker51@gmail.com', 'MK', 1, '$2y$10$lUiS2G/Dn4OHTos8KQ7PYeEpPF6zcPYWsi/6YIiStFx/Z.J9Kp1NS', 1, '', '', '', '', '2018-10-19 05:11:22', '2018-10-19 05:07:23'),
(142, 'pecula', 'makemann123@gmail.com', 'CH', 1, '$2y$10$4ZWkehZAqBZY.8G9VgF2ze/5TjR66SvU3G/3gbWPYs48tzzrjBUma', 0, '2977cacbe09a19368335f54164f772bb1b5b59eda97ccdc761ffa16541cb4042', '', '', '', '2018-10-25 11:00:39', '2018-10-25 11:00:08'),
(143, 'Krcoski', 'petarkrcoski@gmail.com', 'MK', 1, '$2y$10$a0Tfu7wrcZH6nlPmZdoNeOYs6bDDAhbY8WcRS0FYpKhaiap86/UA2', 0, '4adf4c406cbae72c774023b48fc8ed2dfd2d7f1f92bf893cbd2260274f9d03ae', '', '', '', '2018-10-26 06:57:45', '2018-10-26 06:55:24'),
(144, 'Maceeehc', 'maceeehc@gmail.com', 'MK', 1, '$2y$10$FDqWX2cXN6PUdFKivaUVJe9wnmXle40VypfmO5ySTs7YUa2zmH6K.', 1, '', '', 'RWb/QbBLQ64jh4/HNfhS6nCYrfk14vt7tDa705JabnOLfp1X2YnCgCY5pV0xvkdARwwA1W37JvgzQKzjgv1lQ+t1/rjIygBGWkqFCbppQW3nzXrUcSUbBuiNIObLz73l', 'f32e402e42f708ce709544ad04e1ac70b76fe3dc211d06ed051714ca6a5ca246', '2018-10-28 17:41:27', '2018-10-28 17:40:12'),
(145, 'mgjorgiev', 'mladenco.gjorgiev78@gmail.com', 'MK', 1, '$2y$10$Kb2qPyQtL3jHq1p/QKFHYOxvsU7PZCVFSSIy4w8dc51D4Kk.e0XBW', 1, '', '', '', '', '2018-11-04 09:21:56', '2018-11-04 09:21:11'),
(146, 'kys123', 'balab1@hotmail.com', 'AF', 0, '$2y$10$iLskBZo7AIdSrZBlKFWxoO1621AWy29rvK7.zGmhs5lc/LRFyzUuC', 0, '5df38b7226b17aaadc92f230162384ad21daec1fbbc7456d80d07d6526b02a5c', '', '', '', '2018-11-09 18:35:08', '2018-11-09 18:35:08'),
(147, 'gokys132', 'shasan.kadoumig@h7xbkl9glkh.gq', 'AF', 0, '$2y$10$nnrjMuxvH4x5P9TkoQ/4k.2ggOxEAz8fXFPqlEPA1yKf9oyTqpcGW', 1, '', '', '', '', '2018-11-09 18:36:51', '2018-11-09 18:36:42'),
(148, 'Johan_Cale', 'aleksandartr@email.com', 'AF', 1, '$2y$10$DOBqoC..EiOsFrogR2nP8ecGlCTfC7dj5GennibVco.EZzTDiRSX2', 0, '635ba7b7661e72e15c04288302249e1bfdf5acd866d5baac5a97fceabb224940', '', '', '', '2018-11-15 15:44:36', '2018-11-15 15:26:39'),
(149, 'TheBeast', 'filip20023622@gmail.com', 'US', 1, '$2y$10$IAZf1LF70zkl32XiDSXRUuGlJVOLATuhyl7dvGDiR3HrntX9K5GTi', 0, '113ed69ef8e73f5cdd26b5da04f587911a5c31781bea8fb5ecb937081575d998', '', '', '', '2018-11-28 19:47:38', '2018-11-28 19:45:35'),
(150, 'ligma21', 'philip3622@gmail.com', 'US', 1, '$2y$10$4S7Xd7C4VDxRCMacWMUp9ubqX83Yn5SZAg4jGQ3F3n3PZGjqScc9K', 1, '', '', '/b+am+xOEkuuzE9QWQAiwvkYsovuACHf4Vw36PKQ1q9SNSIpXuiFrv9RHiZh7hnpEOWd1Q4Enz0ofbBQiEHMclpyLsN0BU4wiaeI+dGHOablFShgHscnIqyOEpHe34U4', '704aa8e6bbf021fe8184134a049ff57c7bf4422e17eeb81af59b5ee91982f29d', '2018-12-28 21:22:28', '2018-11-28 19:50:11'),
(151, 'hunterve99', 'armin99.ab@gmail.com', 'MK', 1, '$2y$10$vL8vDuZB0Ky/tcriOeRwnOkmTXNmb4Dw0b2sqsREjiAZKcADCC.aC', 1, '', '', '', '', '2018-11-30 08:09:01', '2018-11-30 08:08:41'),
(152, 'Roren', 'harizanovpetar4@gmail.com', 'MK', 1, '$2y$10$ZXYctLzp2x6Tk5hP5xWvWOthAnH1guAoUBg.WWiNVIo3aj6QGUAv2', 1, '', '', 'HX9Aeg+VcqENjA75slIRYxzK8dvRKmp8evo0PGWwa7yybn654KFnF/tQVmnggyBi/kMGeAfWBPXjX0VGIMvmZjJiOvpdlKCCTZbPDQibIBURpbQUKTMoxQjIqCJ1qPtH', 'd5d14463b86627b57e25739bfb0f6eb132c40b078c1a04fec52fcc59fb7b8638', '2018-12-06 07:36:35', '2018-12-06 07:28:54'),
(153, 'teo12', 'teodor.veskovski@gmail.com', 'MK', 1, '$2y$10$u3OBSsWHzIQSBX.aHIYTjOfLQoBCGgoOsgF4aaiXkfYhl3hOUG.X2', 0, '680a1019f4d1f9fc1074bb9fc7d9987040d53cea586b4399acfa38fccc2b6e6e', '', '', '', '2019-01-17 14:31:10', '2019-01-17 14:31:10'),
(154, 'DanielJ', 'daniel_hitman4e@outlook.com', 'MK', 1, '$2y$10$jJRXqAgIMgM.iF0.wRpfG.WhtsC1xRgzip00IeKDJPPe9EnuNP49O', 1, '', '', 'N8yIAW2/UO/QcUw2OfTgcp+dCQUN1YpMD6JaHnYtVFo4E5/6ExfradUPRFBixyHosf5F8STaYD1yTJvzHy8r78pO1BCPN4e290awVPe7xDYizWHPfIb8Z5fJH39fEgD2', 'da2d1bee7280dc0e9d248c0f86fac5d7992de11466a54cebc37429400be5e609', '2019-01-17 16:45:09', '2019-01-17 16:43:17'),
(155, 'Kurle', 'q2995520@nwytg.net', 'MK', 1, '$2y$10$uQm.tvYB0VyHPAimEdajo.n5aiNNlazMkFmiOyM25UQIteWtDt6ee', 0, '47ea33266f8187298aa2b92b0f2949e3c207b5bb171c3ee99e13c66bf325427e', '', '', '', '2019-03-28 17:28:23', '2019-03-28 17:28:01'),
(156, 'Genia', 'pnk87058@zoqqa.com', 'BG', 0, '$2y$10$LvD8wTZq.zUgecRKF4i18.H3ZE30SKGH6rPwRH.am3oALQNsgWqJe', 1, '', '', '', '', '2019-03-28 17:30:29', '2019-03-28 17:29:26'),
(157, 'starrafiqk', 'starrafiqk@outlook.com', 'CN', 1, '$2y$10$yrvDKmRhMz.JywAoxWsDa.cd4O8COEfJ8VX/nD8Ie3/Vlp1tygzdO', 1, '', '', '', '', '2019-05-16 23:18:20', '2019-05-16 23:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `users_banks`
--

CREATE TABLE `users_banks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `drzavna` text NOT NULL,
  `svetska` text NOT NULL,
  `small` text NOT NULL,
  `big` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_banks`
--

INSERT INTO `users_banks` (`id`, `user_id`, `drzavna`, `svetska`, `small`, `big`, `updated_at`, `created_at`) VALUES
(1, 1, '{\"permission\":1,\"pari\":0,\"transakcii\":8}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-27 09:10:10', '2018-09-21 17:50:42'),
(2, 2, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-21 17:54:33', '2018-09-21 17:54:33'),
(3, 3, '{\"permission\":1,\"pari\":0,\"transakcii\":9}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-04 05:23:09', '2018-09-21 17:54:50'),
(4, 4, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-21 18:00:24', '2018-09-21 18:00:24'),
(5, 5, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-21 18:07:20', '2018-09-21 18:07:20'),
(6, 6, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-21 18:16:31', '2018-09-21 18:16:31'),
(7, 7, '{\"permission\":1,\"pari\":0,\"transakcii\":9}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-29 22:26:11', '2018-09-21 18:18:28'),
(8, 8, '{\"permission\":1,\"pari\":0,\"transakcii\":8}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-28 19:38:50', '2018-09-21 18:23:09'),
(9, 9, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-21 18:57:51', '2018-09-21 18:57:51'),
(10, 10, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-21 18:58:25', '2018-09-21 18:58:25'),
(11, 11, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-21 20:26:13', '2018-09-21 20:26:13'),
(12, 12, '{\"permission\":1,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-25 23:47:46', '2018-09-21 20:29:57'),
(13, 13, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-21 22:08:10', '2018-09-21 22:08:10'),
(14, 14, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-21 22:11:38', '2018-09-21 22:11:38'),
(15, 15, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-21 22:39:38', '2018-09-21 22:39:38'),
(16, 16, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-21 23:42:39', '2018-09-21 23:42:39'),
(17, 17, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-22 00:13:00', '2018-09-22 00:13:00'),
(18, 18, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-22 00:58:41', '2018-09-22 00:58:41'),
(19, 19, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-22 08:08:44', '2018-09-22 08:08:44'),
(20, 20, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-22 08:11:25', '2018-09-22 08:11:25'),
(21, 21, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-22 08:49:54', '2018-09-22 08:49:54'),
(22, 22, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-22 08:50:03', '2018-09-22 08:50:03'),
(23, 23, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-22 09:40:49', '2018-09-22 09:40:49'),
(24, 24, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-22 09:52:21', '2018-09-22 09:52:21'),
(25, 25, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-22 10:01:53', '2018-09-22 10:01:53'),
(26, 26, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-22 10:07:51', '2018-09-22 10:07:51'),
(27, 27, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-22 10:32:20', '2018-09-22 10:32:20'),
(28, 28, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-22 10:35:55', '2018-09-22 10:35:55'),
(29, 29, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-22 14:19:59', '2018-09-22 14:19:59'),
(30, 30, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-22 14:22:40', '2018-09-22 14:22:40'),
(32, 32, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-22 15:52:27', '2018-09-22 15:52:27'),
(33, 33, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-22 18:27:17', '2018-09-22 18:27:17'),
(34, 34, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-22 19:02:14', '2018-09-22 19:02:14'),
(35, 35, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-22 21:23:48', '2018-09-22 21:23:48'),
(36, 36, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-22 21:43:28', '2018-09-22 21:43:28'),
(37, 37, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 05:48:24', '2018-09-23 05:48:24'),
(38, 38, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 05:49:27', '2018-09-23 05:49:27'),
(39, 39, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 06:02:17', '2018-09-23 06:02:17'),
(40, 40, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 06:19:30', '2018-09-23 06:19:30'),
(41, 41, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 06:43:51', '2018-09-23 06:43:51'),
(42, 42, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 06:43:57', '2018-09-23 06:43:57'),
(43, 43, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 06:59:28', '2018-09-23 06:59:28'),
(44, 44, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 07:00:38', '2018-09-23 07:00:38'),
(45, 45, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 07:06:17', '2018-09-23 07:06:17'),
(46, 46, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 07:20:49', '2018-09-23 07:20:49'),
(47, 47, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 07:23:31', '2018-09-23 07:23:31'),
(48, 48, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 07:43:05', '2018-09-23 07:43:05'),
(49, 49, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 07:45:09', '2018-09-23 07:45:09'),
(50, 50, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 07:45:29', '2018-09-23 07:45:29'),
(51, 51, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 08:07:25', '2018-09-23 08:07:25'),
(52, 52, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 08:21:07', '2018-09-23 08:21:07'),
(53, 53, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 08:49:09', '2018-09-23 08:49:09'),
(54, 54, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 08:58:58', '2018-09-23 08:58:58'),
(55, 55, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 09:04:43', '2018-09-23 09:04:43'),
(56, 56, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 09:35:35', '2018-09-23 09:35:35'),
(57, 57, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 10:22:30', '2018-09-23 10:22:30'),
(58, 58, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 12:48:16', '2018-09-23 12:48:16'),
(59, 59, '{\"permission\":1,\"pari\":0,\"transakcii\":6}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-07 09:07:57', '2018-09-23 14:47:48'),
(60, 60, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 14:47:50', '2018-09-23 14:47:50'),
(61, 61, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 15:47:03', '2018-09-23 15:47:03'),
(62, 62, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 16:46:06', '2018-09-23 16:46:06'),
(63, 63, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 17:07:13', '2018-09-23 17:07:13'),
(64, 64, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 19:13:31', '2018-09-23 19:13:31'),
(65, 65, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 19:33:01', '2018-09-23 19:33:01'),
(66, 66, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 20:00:03', '2018-09-23 20:00:03'),
(67, 67, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-23 22:15:45', '2018-09-23 22:15:45'),
(68, 68, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-24 05:10:26', '2018-09-24 05:10:26'),
(69, 69, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-24 07:18:41', '2018-09-24 07:18:41'),
(70, 70, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-24 08:45:07', '2018-09-24 08:45:07'),
(71, 71, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-24 08:48:53', '2018-09-24 08:48:53'),
(72, 72, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-24 08:49:46', '2018-09-24 08:49:46'),
(73, 73, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-24 12:05:57', '2018-09-24 12:05:57'),
(74, 74, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-24 12:49:48', '2018-09-24 12:49:48'),
(75, 75, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-24 13:27:11', '2018-09-24 13:27:11'),
(76, 76, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-24 17:24:57', '2018-09-24 17:24:57'),
(77, 77, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-24 17:52:28', '2018-09-24 17:52:28'),
(78, 78, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-24 18:38:22', '2018-09-24 18:38:22'),
(79, 79, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-24 18:55:18', '2018-09-24 18:55:18'),
(80, 80, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-24 19:47:48', '2018-09-24 19:47:48'),
(81, 81, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-24 20:07:43', '2018-09-24 20:07:43'),
(82, 82, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-24 20:33:53', '2018-09-24 20:33:53'),
(83, 83, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-25 02:56:41', '2018-09-25 02:56:41'),
(84, 84, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-25 06:44:45', '2018-09-25 06:44:45'),
(85, 85, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-25 08:33:46', '2018-09-25 08:33:46'),
(86, 86, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-25 08:53:37', '2018-09-25 08:53:37'),
(87, 87, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-25 10:20:41', '2018-09-25 10:20:41'),
(88, 88, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-25 14:52:50', '2018-09-25 14:52:50'),
(89, 89, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-25 15:12:39', '2018-09-25 15:12:39'),
(90, 90, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-25 16:27:28', '2018-09-25 16:27:28'),
(91, 91, '{\"permission\":1,\"pari\":126448,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2019-06-14 22:00:01', '2018-09-25 18:02:19'),
(92, 92, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-25 18:29:11', '2018-09-25 18:29:11'),
(93, 93, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-25 18:39:49', '2018-09-25 18:39:49'),
(94, 94, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-25 19:10:06', '2018-09-25 19:10:06'),
(95, 95, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-25 21:14:33', '2018-09-25 21:14:33'),
(96, 96, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-25 21:19:31', '2018-09-25 21:19:31'),
(97, 97, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-26 03:49:07', '2018-09-26 03:49:07'),
(98, 98, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-26 06:26:42', '2018-09-26 06:26:42'),
(99, 99, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-26 07:46:06', '2018-09-26 07:46:06'),
(100, 100, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-26 07:59:34', '2018-09-26 07:59:34'),
(101, 101, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-26 08:06:35', '2018-09-26 08:06:35'),
(102, 102, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-26 08:52:40', '2018-09-26 08:52:40'),
(103, 103, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-26 10:09:08', '2018-09-26 10:09:08'),
(104, 104, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-26 10:14:32', '2018-09-26 10:14:32'),
(105, 105, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-26 17:07:15', '2018-09-26 17:07:15'),
(106, 106, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-26 17:15:43', '2018-09-26 17:15:43'),
(107, 107, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-26 18:19:53', '2018-09-26 18:19:53'),
(108, 108, '{\"permission\":1,\"pari\":0,\"transakcii\":9}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-07 22:39:32', '2018-09-26 18:34:59'),
(109, 109, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-26 19:00:40', '2018-09-26 19:00:40'),
(110, 110, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-26 19:08:35', '2018-09-26 19:08:35'),
(111, 111, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-26 19:57:21', '2018-09-26 19:57:21'),
(112, 112, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-26 20:01:14', '2018-09-26 20:01:14'),
(113, 113, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-27 09:04:40', '2018-09-27 09:04:40'),
(114, 114, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-27 12:40:07', '2018-09-27 12:40:07'),
(115, 115, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-27 14:03:37', '2018-09-27 14:03:37'),
(116, 116, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-27 15:10:14', '2018-09-27 15:10:14'),
(117, 117, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-27 15:46:18', '2018-09-27 15:46:18'),
(118, 118, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-28 12:39:25', '2018-09-28 12:39:25'),
(119, 119, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-28 15:45:32', '2018-09-28 15:45:32'),
(120, 120, '{\"permission\":1,\"pari\":64482.5,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2019-06-14 22:00:01', '2018-09-28 20:23:22'),
(121, 121, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-29 08:10:51', '2018-09-29 08:10:51'),
(122, 122, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-29 10:35:15', '2018-09-29 10:35:15'),
(123, 123, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-09-30 09:15:18', '2018-09-30 09:15:18'),
(124, 124, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-01 12:54:44', '2018-10-01 12:54:44'),
(125, 125, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-01 15:05:32', '2018-10-01 15:05:32'),
(126, 126, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-02 15:34:38', '2018-10-02 15:34:38'),
(127, 127, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-02 15:36:26', '2018-10-02 15:36:26'),
(128, 128, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-03 10:37:50', '2018-10-03 10:37:50'),
(129, 129, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-03 10:39:59', '2018-10-03 10:39:59'),
(130, 130, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-03 10:50:55', '2018-10-03 10:50:55'),
(131, 131, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-06 08:58:34', '2018-10-06 08:58:34'),
(132, 132, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-06 11:39:09', '2018-10-06 11:39:09'),
(133, 133, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-06 13:33:26', '2018-10-06 13:33:26'),
(134, 134, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-07 19:10:27', '2018-10-07 19:10:27'),
(135, 135, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-07 19:30:04', '2018-10-07 19:30:04'),
(136, 136, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-08 17:23:34', '2018-10-08 17:23:34'),
(137, 137, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-09 03:03:57', '2018-10-09 03:03:57'),
(138, 138, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-09 16:21:02', '2018-10-09 16:21:02'),
(139, 139, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-11 15:25:19', '2018-10-11 15:25:19'),
(140, 140, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-17 05:10:36', '2018-10-17 05:10:36'),
(141, 141, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-19 05:07:23', '2018-10-19 05:07:23'),
(142, 142, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-25 11:00:08', '2018-10-25 11:00:08'),
(143, 143, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-26 06:55:24', '2018-10-26 06:55:24'),
(144, 144, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-10-28 17:40:12', '2018-10-28 17:40:12'),
(145, 145, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-11-04 09:21:11', '2018-11-04 09:21:11'),
(146, 146, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-11-09 18:35:08', '2018-11-09 18:35:08'),
(147, 147, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-11-09 18:36:42', '2018-11-09 18:36:42'),
(148, 148, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-11-15 15:26:39', '2018-11-15 15:26:39'),
(149, 149, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-11-28 19:45:35', '2018-11-28 19:45:35'),
(150, 150, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-11-28 19:50:11', '2018-11-28 19:50:11'),
(151, 151, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-11-30 08:08:41', '2018-11-30 08:08:41'),
(152, 152, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2018-12-06 07:28:54', '2018-12-06 07:28:54'),
(153, 153, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2019-01-17 14:31:10', '2019-01-17 14:31:10'),
(154, 154, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2019-01-17 16:43:17', '2019-01-17 16:43:17'),
(155, 155, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2019-03-28 17:28:01', '2019-03-28 17:28:01'),
(156, 156, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2019-03-28 17:29:26', '2019-03-28 17:29:26'),
(157, 157, '{\"permission\":0,\"pari\":0,\"transakcii\":10}', '{\"permission\":0,\"pari\":0,\"transakcii\":15}', '{\"permission\":0,\"pari\":0,\"limit\":15000000}', '{\"permission\":0,\"pari\":0,\"limit\":50000000}', '2019-05-16 23:14:19', '2019-05-16 23:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `users_contacts`
--

CREATE TABLE `users_contacts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `friends` int(11) NOT NULL,
  `friends_ids` varchar(1000) NOT NULL,
  `friends_pending` varchar(500) NOT NULL,
  `crime_pending` text NOT NULL,
  `clan` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `blacklist` varchar(500) NOT NULL,
  `unread_msg` varchar(500) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_contacts`
--

INSERT INTO `users_contacts` (`id`, `user_id`, `friends`, `friends_ids`, `friends_pending`, `crime_pending`, `clan`, `blacklist`, `unread_msg`, `updated_at`, `created_at`) VALUES
(1, 1, 3, '_59_66_35', '', '', 'La Mafia', '', '_3', '2019-04-16 10:53:24', '2018-09-21 17:50:42'),
(2, 2, 2, '_59_56_22_123_49_20', '', '[]', '', '', '', '2019-01-07 13:02:38', '2018-09-21 17:54:33'),
(3, 3, 5, '_8_12_63_91_123', '', '[]', '', '', '_2', '2018-10-03 04:46:44', '2018-09-21 17:54:50'),
(4, 4, 1, '', '_1_7_9', '', '', '', '', '2018-09-25 12:14:01', '2018-09-21 18:00:24'),
(5, 5, 3, '_33', '_1', '', 'La Mafia', '', '_1', '2018-09-25 18:46:03', '2018-09-21 18:07:20'),
(6, 6, 2, '_20', '', '', '', '', '', '2018-09-26 22:30:36', '2018-09-21 18:16:31'),
(7, 7, 4, '_13_22_9_8_59_108_91', '', '{\"8\":\"hitmen\",\"59\":\"sofer\"}', 'Veleski Sindikat', '', '_59', '2018-10-14 19:59:41', '2018-09-21 18:18:28'),
(8, 8, 6, '_3_63_7_59_120', '', '[]', '', '', '', '2018-10-11 11:06:08', '2018-09-21 18:23:09'),
(9, 9, 5, '_13_22_1_7_123', '', '', 'Veleski Sindikat', '_7', '', '2018-09-30 10:35:32', '2018-09-21 18:57:51'),
(10, 10, 0, '', '_2', '', '', '', '', '2018-09-26 22:30:42', '2018-09-21 18:58:25'),
(11, 11, 0, '', '', '', '', '', '', '2018-09-21 20:26:13', '2018-09-21 20:26:13'),
(12, 12, 4, '_3', '', '{\"3\":\"sofer\"}', 'La Mafia', '', '', '2018-09-26 11:07:46', '2018-09-21 20:29:57'),
(13, 13, 2, '_9_7', '', '', 'Veleski Sindikat', '', '', '2018-09-27 07:48:19', '2018-09-21 22:08:10'),
(14, 14, 2, '', '_2', '', 'La Mafia', '', '', '2018-09-27 13:50:27', '2018-09-21 22:11:38'),
(15, 15, 0, '', '', '', '', '', '', '2018-09-21 22:39:38', '2018-09-21 22:39:38'),
(16, 16, 0, '', '_2', '', '', '', '', '2018-09-25 18:00:28', '2018-09-21 23:42:39'),
(17, 17, 0, '', '', '', '', '', '', '2018-09-22 00:13:00', '2018-09-22 00:13:00'),
(18, 18, 0, '', '_33_2', '', '', '', '', '2018-09-25 18:00:59', '2018-09-22 00:58:41'),
(19, 19, 0, '', '', '', '', '', '', '2018-09-22 08:08:43', '2018-09-22 08:08:43'),
(20, 20, 4, '_6_2', '', '', '', '', '_2', '2019-04-16 10:53:24', '2018-09-22 08:11:25'),
(21, 21, 0, '', '_33_2', '', '', '', '', '2018-09-25 18:01:04', '2018-09-22 08:49:54'),
(22, 22, 3, '_9_7_2', '', '', '', '', '', '2018-09-26 18:19:21', '2018-09-22 08:50:03'),
(23, 23, 0, '', '', '', '', '', '', '2018-09-22 09:40:49', '2018-09-22 09:40:49'),
(24, 24, 0, '', '', '', '', '', '', '2018-09-22 09:52:21', '2018-09-22 09:52:21'),
(25, 25, 0, '', '', '', '', '', '', '2018-09-22 10:01:53', '2018-09-22 10:01:53'),
(26, 26, 0, '', '', '', '', '', '', '2018-09-26 22:31:07', '2018-09-22 10:07:51'),
(27, 27, 1, '_114', '', '', '', '', '', '2018-09-27 15:19:28', '2018-09-22 10:32:20'),
(28, 28, 0, '', '_33', '', '', '', '', '2018-09-22 19:47:23', '2018-09-22 10:35:55'),
(29, 29, 0, '', '_35', '', '', '', '', '2018-09-22 21:36:56', '2018-09-22 14:19:59'),
(30, 30, 0, '', '', '', '', '', '', '2018-09-25 17:40:53', '2018-09-22 14:22:40'),
(32, 32, 0, '', '', '', '', '', '', '2018-09-22 15:52:27', '2018-09-22 15:52:27'),
(33, 33, 2, '_5', '', '', '', '', '', '2018-09-26 22:30:55', '2018-09-22 18:27:17'),
(34, 34, 0, '', '', '', '', '', '', '2018-09-22 19:02:14', '2018-09-22 19:02:14'),
(35, 35, 3, '_1', '', '', 'La Mafia', '_14', '', '2018-09-30 09:20:54', '2018-09-22 21:23:48'),
(36, 36, 0, '', '_2', '', '', '', '', '2018-09-25 18:00:40', '2018-09-22 21:43:28'),
(37, 37, 0, '', '', '', '', '', '', '2018-09-23 05:48:24', '2018-09-23 05:48:24'),
(38, 38, 0, '', '', '', '', '', '', '2018-09-23 05:49:27', '2018-09-23 05:49:27'),
(39, 39, 0, '', '', '', '', '', '', '2018-09-23 06:02:17', '2018-09-23 06:02:17'),
(40, 40, 0, '', '', '', '', '', '', '2018-09-26 10:14:37', '2018-09-23 06:19:30'),
(41, 41, 0, '', '', '', '', '', '', '2018-09-26 22:31:42', '2018-09-23 06:43:51'),
(42, 42, 0, '', '', '', '', '', '', '2018-09-23 06:43:57', '2018-09-23 06:43:57'),
(43, 43, 0, '', '', '', '', '', '', '2018-09-26 22:31:26', '2018-09-23 06:59:28'),
(44, 44, 0, '', '', '', '', '', '', '2018-09-23 07:00:38', '2018-09-23 07:00:38'),
(45, 45, 0, '', '', '', '', '', '', '2018-09-23 07:06:17', '2018-09-23 07:06:17'),
(46, 46, 0, '', '', '', '', '', '', '2018-09-26 22:31:48', '2018-09-23 07:20:49'),
(47, 47, 0, '', '_9', '', 'Veleski Sindikat', '', '', '2018-09-23 09:01:33', '2018-09-23 07:23:31'),
(48, 48, 0, '', '', '', 'Veleski Sindikat', '', '', '2018-09-23 10:57:48', '2018-09-23 07:43:05'),
(49, 49, 1, '_2', '', '', 'La Mafia', '', '', '2018-10-10 13:28:04', '2018-09-23 07:45:09'),
(50, 50, 0, '', '', '', '', '', '', '2018-09-23 07:45:29', '2018-09-23 07:45:29'),
(51, 51, 0, '', '', '', '', '', '', '2018-09-23 08:07:25', '2018-09-23 08:07:25'),
(52, 52, 0, '', '', '', '', '', '', '2018-09-23 08:21:07', '2018-09-23 08:21:07'),
(53, 53, 0, '', '', '', '', '', '', '2018-09-23 08:49:09', '2018-09-23 08:49:09'),
(54, 54, 0, '', '', '', '', '', '', '2018-09-23 08:58:58', '2018-09-23 08:58:58'),
(55, 55, 0, '', '', '', '', '', '', '2018-09-23 09:04:43', '2018-09-23 09:04:43'),
(56, 56, 0, '_2', '', '', '', '', '', '2018-09-30 14:53:48', '2018-09-23 09:35:35'),
(57, 57, 0, '', '', '', '', '', '', '2018-09-23 10:22:30', '2018-09-23 10:22:30'),
(58, 58, 0, '', '_2', '', '', '', '', '2018-09-26 22:31:13', '2018-09-23 12:48:16'),
(59, 59, 6, '_1_8_2_7_106_108', '', '', '', '', '', '2018-10-14 19:58:53', '2018-09-23 14:47:48'),
(60, 60, 0, '', '_2', '', '', '', '', '2018-09-26 22:31:35', '2018-09-23 14:47:50'),
(61, 61, 0, '', '', '', '', '', '', '2018-09-23 15:47:03', '2018-09-23 15:47:03'),
(62, 62, 0, '', '', '', '', '', '', '2018-09-23 16:46:06', '2018-09-23 16:46:06'),
(63, 63, 2, '_3_8', '_123', '', '', '', '', '2018-09-30 12:00:20', '2018-09-23 17:07:13'),
(64, 64, 0, '', '', '', '', '', '', '2018-09-23 19:13:31', '2018-09-23 19:13:31'),
(65, 65, 0, '', '', '', '', '', '', '2018-09-23 19:33:01', '2018-09-23 19:33:01'),
(66, 66, 1, '_1', '', '', 'La Mafia', '', '_1', '2018-09-27 08:58:06', '2018-09-23 20:00:03'),
(67, 67, 0, '', '', '', '', '', '', '2018-09-23 22:15:45', '2018-09-23 22:15:45'),
(68, 68, 0, '', '_9', '', '', '', '', '2018-09-24 10:49:33', '2018-09-24 05:10:26'),
(69, 69, 0, '', '', '', '', '', '', '2018-09-24 07:18:41', '2018-09-24 07:18:41'),
(70, 70, 0, '', '', '', '', '', '', '2018-09-24 08:45:07', '2018-09-24 08:45:07'),
(71, 71, 0, '', '', '', '', '', '', '2018-09-24 08:48:53', '2018-09-24 08:48:53'),
(72, 72, 0, '', '', '', '', '', '', '2018-09-24 08:49:46', '2018-09-24 08:49:46'),
(73, 73, 0, '', '', '', '', '', '', '2018-09-24 12:05:57', '2018-09-24 12:05:57'),
(74, 74, 0, '', '', '', '', '', '', '2018-09-24 12:49:48', '2018-09-24 12:49:48'),
(75, 75, 1, '', '_7', '', '', '', '', '2018-09-26 15:15:00', '2018-09-24 13:27:11'),
(76, 76, 0, '', '', '', 'Veleski Sindikat', '', '', '2018-09-24 22:52:06', '2018-09-24 17:24:57'),
(77, 77, 0, '', '', '', '', '', '', '2018-09-24 17:52:28', '2018-09-24 17:52:28'),
(78, 78, 0, '', '', '', '', '', '', '2018-09-24 18:38:22', '2018-09-24 18:38:22'),
(79, 79, 0, '', '', '', '', '', '', '2018-09-24 18:55:18', '2018-09-24 18:55:18'),
(80, 80, 0, '', '', '', '', '', '', '2018-09-24 19:47:48', '2018-09-24 19:47:48'),
(81, 81, 0, '', '', '', '', '', '', '2018-09-24 20:07:43', '2018-09-24 20:07:43'),
(82, 82, 0, '', '', '', '', '', '', '2018-09-24 20:33:53', '2018-09-24 20:33:53'),
(83, 83, 0, '', '', '', 'Veleski Sindikat', '', '', '2018-09-29 22:29:11', '2018-09-25 02:56:41'),
(84, 84, 0, '', '', '', '', '', '', '2018-09-25 06:44:45', '2018-09-25 06:44:45'),
(85, 85, 0, '', '', '', '', '', '', '2018-09-25 08:33:46', '2018-09-25 08:33:46'),
(86, 86, 0, '', '', '', 'Veleski Sindikat', '', '', '2018-09-25 09:59:23', '2018-09-25 08:53:37'),
(87, 87, 0, '', '', '', '', '', '', '2018-09-25 10:20:41', '2018-09-25 10:20:41'),
(88, 88, 0, '', '', '', '', '', '', '2018-09-25 14:52:50', '2018-09-25 14:52:50'),
(89, 89, 0, '', '', '', '', '', '', '2018-09-25 15:12:39', '2018-09-25 15:12:39'),
(90, 90, 0, '', '', '', '', '', '', '2018-09-25 16:27:28', '2018-09-25 16:27:28'),
(91, 91, 2, '_7_120_3', '_120', '[]', 'Veleski Sindikat', '', '', '2018-10-02 04:49:35', '2018-09-25 18:02:19'),
(92, 92, 0, '', '_1', '', '', '', '', '2018-09-25 18:33:44', '2018-09-25 18:29:11'),
(93, 93, 0, '', '', '', 'La Mafia', '', '', '2018-09-25 20:50:29', '2018-09-25 18:39:49'),
(94, 94, 0, '', '', '', 'La Mafia', '', '', '2018-09-25 20:50:31', '2018-09-25 19:10:06'),
(95, 95, 0, '', '', '', '', '', '', '2018-09-25 21:14:33', '2018-09-25 21:14:33'),
(96, 96, 0, '', '', '', '', '', '', '2018-09-25 21:19:31', '2018-09-25 21:19:31'),
(97, 97, 0, '', '', '', '', '', '', '2018-09-26 03:49:07', '2018-09-26 03:49:07'),
(98, 98, 0, '', '', '', '', '', '', '2018-09-26 06:26:42', '2018-09-26 06:26:42'),
(99, 99, 0, '', '', '', '', '', '', '2018-09-26 07:46:06', '2018-09-26 07:46:06'),
(100, 100, 0, '', '', '', '', '', '', '2018-09-26 07:59:34', '2018-09-26 07:59:34'),
(101, 101, 0, '', '', '', '', '', '', '2018-09-26 08:06:35', '2018-09-26 08:06:35'),
(102, 102, 0, '', '', '', '', '', '', '2018-09-26 08:52:40', '2018-09-26 08:52:40'),
(103, 103, -1, '', '_1', '', 'La Mafia', '_1', '', '2018-09-26 10:20:45', '2018-09-26 10:09:08'),
(104, 104, 0, '', '', '', '', '', '', '2018-09-26 10:14:32', '2018-09-26 10:14:32'),
(105, 105, 0, '', '', '', '', '', '', '2018-09-26 17:07:15', '2018-09-26 17:07:15'),
(106, 106, 1, '_59', '', '', '', '', '_59', '2018-09-26 20:12:01', '2018-09-26 17:15:43'),
(107, 107, 0, '', '', '', '', '', '', '2018-09-26 18:19:53', '2018-09-26 18:19:53'),
(108, 108, 3, '_7_59', '', '{\"7\":\"sofer\"}', 'Veleski Sindikat', '', '', '2018-10-11 10:30:57', '2018-09-26 18:34:59'),
(109, 109, 0, '', '', '', '', '', '', '2018-09-26 19:00:40', '2018-09-26 19:00:40'),
(110, 110, 0, '', '', '', '', '', '', '2018-09-26 19:08:35', '2018-09-26 19:08:35'),
(111, 111, 0, '', '', '', '', '', '', '2018-09-26 19:57:21', '2018-09-26 19:57:21'),
(112, 112, 0, '', '', '', '', '', '', '2018-09-26 20:01:14', '2018-09-26 20:01:14'),
(113, 113, 0, '', '', '', '', '', '', '2018-09-27 09:04:40', '2018-09-27 09:04:40'),
(114, 114, 1, '_27', '', '', '', '', '', '2018-09-27 15:25:24', '2018-09-27 12:40:07'),
(115, 115, 0, '', '', '', '', '', '', '2018-09-27 14:03:37', '2018-09-27 14:03:37'),
(116, 116, 0, '', '', '', '', '', '', '2018-09-27 15:10:14', '2018-09-27 15:10:14'),
(117, 117, 0, '', '', '', '', '', '', '2018-09-27 15:46:18', '2018-09-27 15:46:18'),
(118, 118, 0, '', '', '', 'La Mafia', '', '', '2018-09-29 07:48:15', '2018-09-28 12:39:25'),
(119, 119, 0, '', '', '', '', '', '', '2018-09-28 15:45:32', '2018-09-28 15:45:32'),
(120, 120, 2, '_8_91', '', '{\"91\":\"sofer\"}', '', '', '', '2018-10-04 19:24:23', '2018-09-28 20:23:22'),
(121, 121, 0, '', '', '', '', '', '', '2018-09-29 08:10:51', '2018-09-29 08:10:51'),
(122, 122, 0, '', '', '', '', '', '', '2018-09-29 10:35:15', '2018-09-29 10:35:15'),
(123, 123, 4, '_2_9_3', '', '', 'Veleski Sindikat', '', '', '2018-10-02 04:49:39', '2018-09-30 09:15:18'),
(124, 124, 0, '', '', '', '', '', '', '2018-10-01 12:54:44', '2018-10-01 12:54:44'),
(125, 125, 0, '', '', '', 'La Mafia', '', '', '2018-10-04 08:51:19', '2018-10-01 15:05:32'),
(126, 126, 0, '', '', '', '', '', '', '2018-10-02 15:34:38', '2018-10-02 15:34:38'),
(127, 127, 0, '', '', '', 'Veleski Sindikat', '', '', '2018-10-04 15:37:29', '2018-10-02 15:36:26'),
(128, 128, 0, '', '', '', '', '', '', '2018-10-03 10:37:50', '2018-10-03 10:37:50'),
(129, 129, 0, '', '', '', '', '', '', '2018-10-03 10:39:59', '2018-10-03 10:39:59'),
(130, 130, 0, '', '', '', 'Veleski Sindikat', '', '', '2018-10-04 15:37:31', '2018-10-03 10:50:55'),
(131, 131, 0, '', '', '', '', '', '', '2018-10-06 08:58:34', '2018-10-06 08:58:34'),
(132, 132, 0, '', '', '', '', '', '', '2018-10-06 11:39:09', '2018-10-06 11:39:09'),
(133, 133, 0, '', '', '', '', '', '', '2018-10-06 13:33:26', '2018-10-06 13:33:26'),
(134, 134, 0, '', '', '', '', '', '', '2018-10-07 19:10:27', '2018-10-07 19:10:27'),
(135, 135, 0, '', '', '', '', '', '', '2018-10-07 19:30:04', '2018-10-07 19:30:04'),
(136, 136, 0, '', '', '', '', '', '', '2018-10-08 17:23:34', '2018-10-08 17:23:34'),
(137, 137, 0, '', '', '', '', '', '', '2018-10-09 03:03:57', '2018-10-09 03:03:57'),
(138, 138, 0, '', '', '', '', '', '', '2018-10-09 16:21:02', '2018-10-09 16:21:02'),
(139, 139, 0, '', '', '', '', '', '', '2018-10-11 15:25:19', '2018-10-11 15:25:19'),
(140, 140, 0, '', '', '', '', '', '', '2018-10-17 05:10:36', '2018-10-17 05:10:36'),
(141, 141, 0, '', '', '', '', '', '', '2018-10-19 05:07:23', '2018-10-19 05:07:23'),
(142, 142, 0, '', '', '', '', '', '', '2018-10-25 11:00:08', '2018-10-25 11:00:08'),
(143, 143, 0, '', '', '', '', '', '', '2018-10-26 06:55:24', '2018-10-26 06:55:24'),
(144, 144, 0, '', '', '', '', '', '', '2018-10-28 17:40:12', '2018-10-28 17:40:12'),
(145, 145, 0, '', '', '', '', '', '', '2018-11-04 09:21:11', '2018-11-04 09:21:11'),
(146, 146, 0, '', '', '', '', '', '', '2018-11-09 18:35:08', '2018-11-09 18:35:08'),
(147, 147, 0, '', '', '', 'La Mafia', '', '', '2018-11-12 14:44:41', '2018-11-09 18:36:42'),
(148, 148, 0, '', '', '', '', '', '', '2018-11-15 15:26:39', '2018-11-15 15:26:39'),
(149, 149, 0, '', '', '', '', '', '', '2018-11-28 19:45:35', '2018-11-28 19:45:35'),
(150, 150, 0, '', '', '', '', '', '', '2018-11-28 19:50:11', '2018-11-28 19:50:11'),
(151, 151, 0, '', '', '', '', '', '', '2018-11-30 08:08:41', '2018-11-30 08:08:41'),
(152, 152, 0, '', '', '', '', '', '', '2018-12-06 07:28:54', '2018-12-06 07:28:54'),
(153, 153, 0, '', '', '', '', '', '', '2019-01-17 14:31:10', '2019-01-17 14:31:10'),
(154, 154, 0, '', '', '', 'La Mafia', '', '', '2019-03-25 13:42:35', '2019-01-17 16:43:17'),
(155, 155, 0, '', '', '', '', '', '', '2019-03-28 17:28:01', '2019-03-28 17:28:01'),
(156, 156, 0, '', '', '', '', '', '', '2019-03-28 17:29:26', '2019-03-28 17:29:26'),
(157, 157, 0, '', '', '', '', '', '', '2019-05-16 23:14:19', '2019-05-16 23:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `users_crimes`
--

CREATE TABLE `users_crimes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `sofer` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hitmen` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `invest` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_crimes`
--

INSERT INTO `users_crimes` (`id`, `user_id`, `type`, `sofer`, `hitmen`, `invest`, `updated_at`, `created_at`) VALUES
(3, 2, 'kill', '{\"accept\":1,\"id\":3,\"car\":\"1_100\"}', '{\"accept\":1,\"id\":8,\"guns\":\"\"}', 5000, '2018-09-27 13:57:36', '2018-09-26 09:40:07'),
(4, 120, 'kill', '{\"accept\":1,\"id\":8,\"car\":\"1_100\"}', '{\"accept\":1,\"id\":91,\"guns\":\"\"}', 5000, '2018-10-04 14:49:30', '2018-10-01 15:11:28'),
(5, 59, 'kill', '{\"accept\":0,\"id\":7,\"car\":\"\"}', '{\"accept\":1,\"id\":8,\"guns\":\"\"}', 60000, '2018-10-07 06:47:04', '2018-10-06 19:07:35'),
(6, 7, 'kill', '{\"accept\":0,\"id\":108,\"car\":\"\"}', '{\"accept\":1,\"id\":8,\"guns\":\"\"}', 20102, '2018-10-11 11:06:08', '2018-10-11 10:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `users_energy`
--

CREATE TABLE `users_energy` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `energija` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `pocit` int(1) NOT NULL,
  `atack` int(1) NOT NULL,
  `trkalo` int(1) NOT NULL,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_energy`
--

INSERT INTO `users_energy` (`id`, `user_id`, `energija`, `status`, `pocit`, `atack`, `trkalo`, `updated_at`, `created_at`) VALUES
(1, 1, 100, 0, 2, 5, 2, '2019-04-21 08:01:36', '2018-09-21 17:50:42'),
(2, 2, 94, 0, 2, 5, 2, '2019-06-14 05:02:43', '2018-09-21 17:54:33'),
(3, 3, 100, 0, 2, 5, 2, '2019-05-06 18:30:33', '2018-09-21 17:54:50'),
(4, 4, 100, 0, 2, 5, 2, '2018-09-24 11:00:05', '2018-09-21 18:00:24'),
(5, 5, 96, 0, 2, 5, 2, '2018-09-25 20:06:04', '2018-09-21 18:07:20'),
(6, 6, 99, 0, 2, 5, 2, '2018-09-27 11:17:02', '2018-09-21 18:16:31'),
(7, 7, 100, 0, 2, 5, 2, '2018-10-14 08:29:16', '2018-09-21 18:18:28'),
(8, 8, 100, 0, 2, 5, 2, '2018-11-08 15:07:15', '2018-09-21 18:23:09'),
(9, 9, 100, 0, 2, 5, 2, '2019-06-05 22:01:53', '2018-09-21 18:57:51'),
(10, 10, 100, 0, 2, 5, 2, '2018-09-22 17:12:01', '2018-09-21 18:58:25'),
(11, 11, 100, 0, 2, 5, 2, '2018-09-21 20:26:13', '2018-09-21 20:26:13'),
(12, 12, 97, 0, 2, 5, 2, '2019-04-24 07:47:15', '2018-09-21 20:29:57'),
(13, 13, 98, 0, 2, 5, 2, '2018-12-05 10:41:22', '2018-09-21 22:08:10'),
(14, 14, 100, 0, 2, 5, 2, '2018-09-22 22:00:01', '2018-09-21 22:11:38'),
(15, 15, 100, 0, 2, 5, 2, '2018-09-21 22:39:38', '2018-09-21 22:39:38'),
(16, 16, 100, 0, 2, 5, 2, '2018-09-22 01:50:05', '2018-09-21 23:42:39'),
(17, 17, 100, 0, 2, 5, 2, '2018-09-22 22:00:01', '2018-09-22 00:13:00'),
(18, 18, 100, 0, 2, 5, 2, '2018-09-22 03:10:05', '2018-09-22 00:58:41'),
(19, 19, 100, 0, 2, 5, 2, '2018-09-22 08:08:43', '2018-09-22 08:08:43'),
(20, 20, 100, 0, 2, 5, 2, '2019-01-07 13:02:43', '2018-09-22 08:11:25'),
(21, 21, 100, 0, 2, 5, 2, '2018-09-22 22:00:01', '2018-09-22 08:49:54'),
(22, 22, 95, 0, 2, 5, 2, '2019-04-16 20:28:12', '2018-09-22 08:50:03'),
(23, 23, 100, 0, 2, 5, 2, '2018-09-22 09:40:49', '2018-09-22 09:40:49'),
(24, 24, 100, 0, 2, 5, 2, '2018-09-22 09:52:21', '2018-09-22 09:52:21'),
(25, 25, 100, 0, 2, 5, 2, '2018-09-22 13:33:01', '2018-09-22 10:01:53'),
(26, 26, 100, 0, 2, 5, 2, '2018-09-22 22:00:01', '2018-09-22 10:07:51'),
(27, 27, 97, 0, 2, 5, 2, '2018-10-02 09:11:06', '2018-09-22 10:32:20'),
(28, 28, 100, 0, 2, 5, 2, '2018-09-22 10:35:55', '2018-09-22 10:35:55'),
(29, 29, 100, 0, 2, 5, 2, '2018-09-22 14:19:59', '2018-09-22 14:19:59'),
(30, 30, 94, 0, 2, 5, 2, '2018-09-24 09:50:56', '2018-09-22 14:22:40'),
(32, 32, 100, 0, 2, 5, 2, '2018-09-22 22:00:01', '2018-09-22 15:52:27'),
(33, 33, 100, 0, 2, 5, 2, '2018-09-22 22:00:01', '2018-09-22 18:27:17'),
(34, 34, 100, 0, 2, 5, 2, '2018-09-22 22:00:01', '2018-09-22 19:02:14'),
(35, 35, 73, 0, 2, 5, 2, '2018-09-27 21:13:55', '2018-09-22 21:23:48'),
(36, 36, 100, 0, 2, 5, 2, '2018-09-23 22:00:07', '2018-09-22 21:43:28'),
(37, 37, 100, 0, 2, 5, 2, '2018-09-23 22:00:07', '2018-09-23 05:48:24'),
(38, 38, 100, 0, 2, 5, 2, '2018-09-23 05:50:10', '2018-09-23 05:49:27'),
(39, 39, 100, 0, 2, 5, 2, '2018-09-23 08:15:02', '2018-09-23 06:02:17'),
(40, 40, 100, 0, 2, 5, 2, '2018-09-23 08:30:05', '2018-09-23 06:19:30'),
(41, 41, 100, 0, 2, 5, 2, '2018-09-23 22:00:07', '2018-09-23 06:43:51'),
(42, 42, 100, 0, 2, 5, 2, '2018-11-24 23:33:59', '2018-09-23 06:43:57'),
(43, 43, 92, 0, 2, 5, 2, '2018-09-23 22:00:07', '2018-09-23 06:59:28'),
(44, 44, 100, 0, 2, 5, 2, '2018-09-23 09:03:01', '2018-09-23 07:00:38'),
(45, 45, 100, 0, 2, 5, 2, '2018-09-23 22:00:07', '2018-09-23 07:06:17'),
(46, 46, 100, 0, 2, 5, 2, '2018-09-23 22:00:07', '2018-09-23 07:20:49'),
(47, 47, 100, 0, 2, 5, 2, '2018-09-23 22:00:07', '2018-09-23 07:23:31'),
(48, 48, 100, 0, 2, 5, 2, '2018-09-25 19:34:23', '2018-09-23 07:43:05'),
(49, 49, 100, 0, 2, 5, 2, '2019-06-14 12:05:04', '2018-09-23 07:45:09'),
(50, 50, 100, 0, 2, 5, 2, '2018-09-23 07:45:29', '2018-09-23 07:45:29'),
(51, 51, 100, 0, 2, 5, 2, '2018-09-23 08:07:25', '2018-09-23 08:07:25'),
(52, 52, 100, 0, 2, 5, 2, '2018-09-23 22:00:07', '2018-09-23 08:21:07'),
(53, 53, 100, 0, 2, 5, 2, '2018-10-12 17:18:53', '2018-09-23 08:49:09'),
(54, 54, 100, 0, 2, 5, 2, '2018-09-23 22:00:07', '2018-09-23 08:58:58'),
(55, 55, 93, 0, 2, 5, 2, '2018-09-24 20:49:26', '2018-09-23 09:04:43'),
(56, 56, 100, 0, 2, 5, 2, '2018-11-09 20:11:48', '2018-09-23 09:35:35'),
(57, 57, 100, 0, 2, 5, 2, '2018-09-23 22:00:07', '2018-09-23 10:22:30'),
(58, 58, 100, 0, 2, 5, 2, '2018-09-23 22:00:07', '2018-09-23 12:48:16'),
(59, 59, 100, 0, 2, 5, 2, '2018-10-14 20:04:54', '2018-09-23 14:47:48'),
(60, 60, 100, 0, 2, 5, 2, '2018-09-23 17:00:05', '2018-09-23 14:47:50'),
(61, 61, 100, 0, 2, 5, 2, '2018-09-23 22:00:07', '2018-09-23 15:47:03'),
(62, 62, 100, 0, 2, 5, 2, '2018-09-23 22:00:07', '2018-09-23 16:46:06'),
(63, 63, 100, 0, 2, 5, 2, '2018-09-23 17:13:24', '2018-09-23 17:07:13'),
(64, 64, 100, 0, 2, 5, 2, '2018-09-23 19:13:31', '2018-09-23 19:13:31'),
(65, 65, 63, 0, 2, 5, 2, '2018-09-23 20:34:59', '2018-09-23 19:33:01'),
(66, 66, 100, 0, 2, 5, 2, '2018-09-28 21:29:13', '2018-09-23 20:00:03'),
(67, 67, 100, 0, 2, 5, 2, '2018-09-24 02:14:01', '2018-09-23 22:15:45'),
(68, 68, 100, 0, 2, 5, 2, '2018-09-24 05:16:16', '2018-09-24 05:10:26'),
(69, 69, 100, 0, 2, 5, 2, '2018-09-24 07:18:41', '2018-09-24 07:18:41'),
(70, 70, 100, 0, 2, 5, 2, '2018-09-24 10:52:17', '2018-09-24 08:45:07'),
(71, 71, 87, 0, 2, 5, 2, '2018-09-24 08:57:37', '2018-09-24 08:48:53'),
(72, 72, 94, 0, 2, 5, 2, '2018-09-24 09:00:30', '2018-09-24 08:49:46'),
(73, 73, 98, 0, 2, 5, 2, '2018-09-24 12:08:17', '2018-09-24 12:05:57'),
(74, 74, 100, 0, 2, 5, 2, '2018-09-24 13:02:59', '2018-09-24 12:49:48'),
(75, 75, 91, 0, 2, 5, 2, '2018-09-25 19:46:05', '2018-09-24 13:27:11'),
(76, 76, 93, 0, 2, 5, 2, '2018-09-24 17:34:18', '2018-09-24 17:24:57'),
(77, 77, 100, 0, 2, 5, 2, '2018-09-24 17:52:28', '2018-09-24 17:52:28'),
(78, 78, 90, 0, 2, 5, 2, '2018-09-24 20:00:29', '2018-09-24 18:38:22'),
(79, 79, 100, 0, 2, 5, 2, '2018-09-24 18:55:18', '2018-09-24 18:55:18'),
(80, 80, 100, 0, 2, 5, 2, '2018-09-24 19:47:48', '2018-09-24 19:47:48'),
(81, 81, 100, 0, 2, 5, 2, '2018-09-24 20:07:43', '2018-09-24 20:07:43'),
(82, 82, 96, 0, 2, 5, 2, '2018-09-24 20:38:07', '2018-09-24 20:33:53'),
(83, 83, 100, 0, 2, 5, 2, '2018-09-29 11:43:10', '2018-09-25 02:56:41'),
(84, 84, 100, 0, 2, 5, 2, '2018-09-25 06:51:50', '2018-09-25 06:44:45'),
(85, 85, 97, 0, 2, 5, 2, '2018-09-25 08:39:03', '2018-09-25 08:33:46'),
(86, 86, 95, 0, 2, 5, 2, '2018-09-25 09:02:28', '2018-09-25 08:53:37'),
(87, 87, 100, 0, 2, 5, 2, '2018-09-25 10:43:04', '2018-09-25 10:20:41'),
(88, 88, 95, 0, 2, 5, 2, '2018-09-28 04:21:57', '2018-09-25 14:52:50'),
(89, 89, 93, 0, 2, 5, 2, '2018-11-04 13:23:16', '2018-09-25 15:12:39'),
(90, 90, 100, 0, 2, 5, 2, '2018-09-26 13:21:51', '2018-09-25 16:27:28'),
(91, 91, 100, 0, 2, 5, 2, '2019-01-01 22:56:19', '2018-09-25 18:02:19'),
(92, 92, 100, 0, 2, 5, 2, '2018-09-25 18:29:11', '2018-09-25 18:29:11'),
(93, 93, 100, 0, 2, 5, 2, '2018-09-25 19:45:14', '2018-09-25 18:39:49'),
(94, 94, 95, 0, 2, 5, 2, '2018-09-25 19:21:51', '2018-09-25 19:10:06'),
(95, 95, 100, 0, 2, 5, 2, '2018-09-25 21:14:33', '2018-09-25 21:14:33'),
(96, 96, 100, 0, 2, 5, 2, '2018-09-25 21:19:31', '2018-09-25 21:19:31'),
(97, 97, 97, 0, 2, 5, 2, '2018-09-26 03:55:40', '2018-09-26 03:49:07'),
(98, 98, 98, 0, 2, 5, 2, '2018-09-26 06:36:24', '2018-09-26 06:26:42'),
(99, 99, 100, 0, 2, 5, 2, '2018-09-26 07:46:06', '2018-09-26 07:46:06'),
(100, 100, 97, 0, 2, 5, 2, '2018-09-26 10:51:07', '2018-09-26 07:59:34'),
(101, 101, 100, 0, 2, 5, 2, '2018-09-26 08:06:35', '2018-09-26 08:06:35'),
(102, 102, 98, 0, 2, 5, 2, '2018-09-27 09:06:15', '2018-09-26 08:52:40'),
(103, 103, 95, 0, 2, 5, 2, '2018-09-26 10:19:00', '2018-09-26 10:09:08'),
(104, 104, 95, 0, 2, 5, 2, '2018-09-26 10:20:52', '2018-09-26 10:14:32'),
(105, 105, 100, 0, 2, 5, 2, '2018-09-26 17:07:15', '2018-09-26 17:07:15'),
(106, 106, 100, 0, 2, 5, 2, '2018-10-07 19:02:47', '2018-09-26 17:15:43'),
(107, 107, 100, 1, 2, 5, 2, '2018-09-26 18:30:42', '2018-09-26 18:19:53'),
(108, 108, 100, 0, 2, 5, 2, '2018-10-14 12:18:36', '2018-09-26 18:34:59'),
(109, 109, 100, 0, 2, 5, 2, '2018-09-26 19:00:40', '2018-09-26 19:00:40'),
(110, 110, 100, 0, 2, 5, 2, '2018-09-26 19:08:35', '2018-09-26 19:08:35'),
(111, 111, 100, 0, 2, 5, 2, '2018-09-26 19:57:21', '2018-09-26 19:57:21'),
(112, 112, 97, 0, 2, 5, 2, '2018-09-26 20:08:34', '2018-09-26 20:01:14'),
(113, 113, 88, 0, 2, 5, 2, '2018-09-27 09:25:03', '2018-09-27 09:04:40'),
(114, 114, 97, 0, 2, 5, 2, '2018-10-10 16:58:53', '2018-09-27 12:40:07'),
(115, 115, 80, 0, 2, 5, 2, '2018-09-27 14:42:22', '2018-09-27 14:03:37'),
(116, 116, 100, 0, 2, 5, 2, '2018-09-27 15:10:14', '2018-09-27 15:10:14'),
(117, 117, 91, 0, 2, 5, 2, '2018-10-23 16:30:59', '2018-09-27 15:46:18'),
(118, 118, 93, 0, 2, 5, 2, '2018-09-28 12:48:27', '2018-09-28 12:39:25'),
(119, 119, 100, 0, 2, 5, 2, '2018-09-28 15:45:32', '2018-09-28 15:45:32'),
(120, 120, 100, 0, 2, 5, 2, '2018-10-04 19:26:27', '2018-09-28 20:23:22'),
(121, 121, 100, 0, 2, 5, 2, '2018-09-29 08:10:51', '2018-09-29 08:10:51'),
(122, 122, 98, 0, 2, 5, 2, '2018-09-29 21:39:26', '2018-09-29 10:35:15'),
(123, 123, 99, 0, 2, 5, 2, '2018-10-01 12:59:15', '2018-09-30 09:15:18'),
(124, 124, 100, 0, 2, 5, 2, '2018-10-01 12:54:44', '2018-10-01 12:54:44'),
(125, 125, 89, 0, 2, 5, 2, '2018-10-04 08:38:57', '2018-10-01 15:05:32'),
(126, 126, 100, 0, 2, 5, 2, '2018-10-02 15:34:38', '2018-10-02 15:34:38'),
(127, 127, 93, 0, 2, 5, 2, '2018-10-02 15:47:01', '2018-10-02 15:36:26'),
(128, 128, 100, 0, 2, 5, 2, '2018-10-03 10:37:50', '2018-10-03 10:37:50'),
(129, 129, 100, 0, 2, 5, 2, '2018-10-03 10:39:59', '2018-10-03 10:39:59'),
(130, 130, 99, 0, 2, 5, 2, '2018-10-03 11:28:03', '2018-10-03 10:50:55'),
(131, 131, 100, 0, 2, 5, 2, '2018-10-06 08:58:34', '2018-10-06 08:58:34'),
(132, 132, 100, 0, 2, 5, 2, '2018-10-06 11:39:09', '2018-10-06 11:39:09'),
(133, 133, 100, 0, 2, 5, 2, '2018-10-06 13:33:26', '2018-10-06 13:33:26'),
(134, 134, 100, 0, 2, 5, 2, '2018-10-07 19:16:56', '2018-10-07 19:10:27'),
(135, 135, 92, 0, 2, 5, 2, '2018-10-07 19:41:58', '2018-10-07 19:30:04'),
(136, 136, 89, 0, 2, 5, 2, '2018-10-08 17:30:27', '2018-10-08 17:23:34'),
(137, 137, 100, 0, 2, 5, 2, '2018-10-11 08:58:10', '2018-10-09 03:03:57'),
(138, 138, 100, 0, 2, 5, 2, '2018-10-09 16:21:02', '2018-10-09 16:21:02'),
(139, 139, 100, 1, 2, 5, 2, '2018-10-11 15:37:15', '2018-10-11 15:25:19'),
(140, 140, 100, 0, 2, 5, 2, '2018-10-17 05:10:36', '2018-10-17 05:10:36'),
(141, 141, 46, 0, 2, 5, 2, '2018-10-19 07:08:51', '2018-10-19 05:07:23'),
(142, 142, 100, 0, 2, 5, 2, '2018-10-25 11:00:08', '2018-10-25 11:00:08'),
(143, 143, 100, 0, 2, 5, 2, '2018-10-26 06:55:24', '2018-10-26 06:55:24'),
(144, 144, 100, 0, 2, 5, 2, '2018-10-28 17:42:07', '2018-10-28 17:40:12'),
(145, 145, 95, 0, 2, 5, 2, '2018-11-04 09:24:00', '2018-11-04 09:21:11'),
(146, 146, 100, 0, 2, 5, 2, '2018-11-09 18:35:08', '2018-11-09 18:35:08'),
(147, 147, 92, 0, 2, 5, 2, '2018-11-09 18:41:19', '2018-11-09 18:36:42'),
(148, 148, 100, 0, 2, 5, 2, '2018-11-15 15:26:39', '2018-11-15 15:26:39'),
(149, 149, 100, 0, 2, 5, 2, '2018-11-28 19:45:35', '2018-11-28 19:45:35'),
(150, 150, 88, 0, 2, 5, 2, '2018-12-28 21:27:46', '2018-11-28 19:50:11'),
(151, 151, 96, 0, 2, 5, 2, '2018-11-30 08:11:54', '2018-11-30 08:08:41'),
(152, 152, 100, 1, 2, 5, 2, '2018-12-13 07:16:12', '2018-12-06 07:28:54'),
(153, 153, 100, 0, 2, 5, 2, '2019-01-17 14:31:10', '2019-01-17 14:31:10'),
(154, 154, 96, 0, 2, 5, 2, '2019-01-17 16:46:41', '2019-01-17 16:43:17'),
(155, 155, 100, 0, 2, 5, 2, '2019-03-28 17:28:01', '2019-03-28 17:28:01'),
(156, 156, 97, 0, 2, 5, 2, '2019-03-28 17:40:33', '2019-03-28 17:29:26'),
(157, 157, 96, 0, 2, 5, 2, '2019-05-16 23:20:38', '2019-05-16 23:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `users_inventories`
--

CREATE TABLE `users_inventories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `drinks` text NOT NULL,
  `drugs` text NOT NULL,
  `trgovija` text NOT NULL,
  `weapons` text NOT NULL,
  `finished_missions` varchar(200) NOT NULL,
  `crime_chance` varchar(200) NOT NULL,
  `cars` text NOT NULL,
  `car_chance` varchar(200) NOT NULL,
  `asets` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_inventories`
--

INSERT INTO `users_inventories` (`id`, `user_id`, `drinks`, `drugs`, `trgovija`, `weapons`, `finished_missions`, `crime_chance`, `cars`, `car_chance`, `asets`, `updated_at`, `created_at`) VALUES
(1, 1, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":3,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":7,\"2\":6,\"3\":2,\"4\":3,\"5\":3,\"6\":1,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_5_', '27.8_0.6_0.9_3.2_0.6_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"5\":\"0\",\"1\":\"1_100\"}', '0.71_0_0.1_0.1_9.95_0_0_0_0_0_0_0_0_0_0.05_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":1,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2019-03-13 10:43:19', '2018-09-21 17:50:42'),
(2, 2, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":3,\"2\":1,\"3\":1,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '26.3_3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"1\":\"0\"}', '1.3_0.99_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2019-06-14 05:01:28', '2018-09-21 17:54:33'),
(3, 3, '{\"9\":61,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":3,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":4,\"2\":0,\"3\":102,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_5_2_6_', '3.8_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"25\":\"1_90\",\"1\":\"1_100\"}', '0.07_0.04_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":1,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2019-01-29 13:02:40', '2018-09-21 17:54:50'),
(4, 4, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '6.4_4.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '2.19_2.19_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-21 18:00:24'),
(5, 5, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.76_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-21 18:07:20'),
(6, 6, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '3.7_1.8_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.53_0.08_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-27 11:16:17', '2018-09-21 18:16:31'),
(7, 7, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":10,\"2\":1,\"3\":1,\"4\":500,\"5\":1,\"6\":1,\"7\":1,\"8\":1,\"9\":63,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_5_9_10_8_2_7_', '44.8_0.6_0_0.4_100_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"1\":\"0_96_98\"}', '25.14_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":1,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-12 22:00:01', '2018-09-21 18:18:28'),
(8, 8, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":3,\"2\":2,\"3\":67,\"4\":1436,\"5\":145,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_2_6_9_5_8_7_10_', '14_1.8_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"1\":\"0\",\"5\":\"0\"}', '72.2_0_0_0.03_1.17_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":1,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-19 22:00:01', '2018-09-21 18:23:09'),
(9, 9, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":1,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_15.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"1\":\"2_79_100\"}', '2.83_1.36_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-28 16:46:34', '2018-09-21 18:57:51'),
(10, 10, '{\"9\":5,\"10\":3,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":2,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '1.2_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.16_0.04_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-21 18:58:25'),
(11, 11, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-21 20:26:13'),
(12, 12, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":20,\"3\":20,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_5_6_', '0.3_30.4_0_0.2_0.2_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"2\":\"0\",\"1\":\"1_100\"}', '0_6.1_0_0.03_0.48_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":1,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2019-04-24 07:46:57', '2018-09-21 20:29:57'),
(13, 13, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":0,\"3\":1,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '90.8_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.13_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-12-05 10:41:19', '2018-09-21 22:08:10'),
(14, 14, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0.04_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-21 22:11:38'),
(15, 15, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-21 22:39:38'),
(16, 16, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-21 23:42:39'),
(17, 17, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0.6_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0.1_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-22 00:13:00'),
(18, 18, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-22 00:58:41'),
(19, 19, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-22 08:08:43'),
(20, 20, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":0,\"3\":1,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0.9_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-22 08:11:25'),
(21, 21, '{\"9\":12,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.6_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.1_0.1_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-22 08:49:54'),
(22, 22, '{\"9\":70,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":42,\"2\":5,\"3\":0,\"4\":42,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_9_', '3.9_0.6_0_0_0.6_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"1\":\"2_100_100\"}', '0.95_0_0.02_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2019-03-09 14:46:42', '2018-09-22 08:50:03'),
(23, 23, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-22 09:40:49'),
(24, 24, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-22 09:52:21'),
(25, 25, '{\"9\":7,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":1,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.04_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-22 10:01:53'),
(26, 26, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.04_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-22 10:07:51'),
(27, 27, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '20.8_3.9_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"1\":\"0\"}', '4.93_0.26_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-02 22:00:02', '2018-09-22 10:32:20'),
(28, 28, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-22 10:35:55'),
(29, 29, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-22 14:19:59'),
(30, 30, '{\"9\":1,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":1,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0.9_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.04_0.08_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-22 14:22:40'),
(32, 32, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.6_0.9_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.1_0.22_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-22 15:52:27'),
(33, 33, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":4,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '1.5_0.9_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0.1_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-22 18:27:17'),
(34, 34, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-22 19:02:14'),
(35, 35, '{\"9\":4,\"10\":1,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":3,\"2\":2,\"3\":2,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '1.2_4.8_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"1\":\"0\",\"2\":\"0\"}', '2.54_2.29_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-27 21:13:09', '2018-09-22 21:23:48'),
(36, 36, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":0,\"3\":1,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0.9_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.08_0.08_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-22 21:43:28'),
(37, 37, '{\"9\":1,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":1,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.9_0.6_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 05:48:24'),
(38, 38, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 05:49:27'),
(39, 39, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.9_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 06:02:17'),
(40, 40, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 06:19:30'),
(41, 41, '{\"9\":2,\"10\":1,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":1,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.6_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.08_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 06:43:51'),
(42, 42, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 06:43:57'),
(43, 43, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0.9_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.19_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 06:59:28'),
(44, 44, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 07:00:38'),
(45, 45, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0.6_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.04_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 07:06:17'),
(46, 46, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.9_38.6_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.16_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 07:20:49'),
(47, 47, '{\"9\":3,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 07:23:31'),
(48, 48, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":7,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.6_2.7_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.14_0.1_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 07:43:05'),
(49, 49, '{\"9\":11,\"10\":5,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":9,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '5.4_2.1_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"1\":\"3_37_75_100\"}', '0.5_0.26_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2019-06-02 08:25:15', '2018-09-23 07:45:09'),
(50, 50, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 07:45:29'),
(51, 51, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 08:07:25'),
(52, 52, '{\"9\":10,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.6_0.6_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.04_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 08:21:07'),
(53, 53, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":2,\"2\":3,\"3\":4,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '1.5_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '1.21_0.04_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-12 22:00:01', '2018-09-23 08:49:09'),
(54, 54, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.9_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.1_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 08:58:58'),
(55, 55, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":1,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '5.1_1.2_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.07_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 09:04:43'),
(56, 56, '{\"9\":2,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '1.5_100_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"1\":\"1_100\",\"2\":\"1_100\"}', '0.2_2.61_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-11-04 23:07:33', '2018-09-23 09:35:35'),
(57, 57, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_1.2_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 10:22:30'),
(58, 58, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.1_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 12:48:16'),
(59, 59, '{\"9\":0,\"10\":60,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":1,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":2,\"2\":20,\"3\":20,\"4\":670,\"5\":1,\"6\":1,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_2_6_8_9_5_10_7_', '0.9_1.2_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"1\":\"0\"}', '28.31_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":1,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":1}', '2018-10-14 22:00:01', '2018-09-23 14:47:48'),
(60, 60, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 14:47:50');
INSERT INTO `users_inventories` (`id`, `user_id`, `drinks`, `drugs`, `trgovija`, `weapons`, `finished_missions`, `crime_chance`, `cars`, `car_chance`, `asets`, `updated_at`, `created_at`) VALUES
(61, 61, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '1.2_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.03_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 15:47:03'),
(62, 62, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 16:46:06'),
(63, 63, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 17:07:13'),
(64, 64, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 19:13:31'),
(65, 65, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":9,\"2\":1,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 19:33:01'),
(66, 66, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":1,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '1.8_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '1.83_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-27 22:00:01', '2018-09-23 20:00:03'),
(67, 67, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":0,\"3\":1,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.9_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-23 22:15:45'),
(68, 68, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-24 05:10:26'),
(69, 69, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-24 07:18:41'),
(70, 70, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.04_0.02_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-24 08:45:07'),
(71, 71, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.04_0.02_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-24 08:48:53'),
(72, 72, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.6_0.6_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.02_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-24 08:49:46'),
(73, 73, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.02_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-24 12:05:57'),
(74, 74, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-24 12:49:48'),
(75, 75, '{\"9\":2,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '2.7_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-24 13:27:11'),
(76, 76, '{\"9\":1,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.9_0.6_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.02_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-24 17:24:57'),
(77, 77, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-24 17:52:28'),
(78, 78, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":1,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.11_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-24 18:38:22'),
(79, 79, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-24 18:55:18'),
(80, 80, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-24 19:47:48'),
(81, 81, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-24 20:07:43'),
(82, 82, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0.03_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-24 20:33:53'),
(83, 83, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":1,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.6_1.2_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.03_0.02_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-29 07:13:56', '2018-09-25 02:56:41'),
(84, 84, '{\"9\":0,\"10\":1,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-25 06:44:45'),
(85, 85, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.6_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-25 08:33:46'),
(86, 86, '{\"9\":0,\"10\":1,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":1,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"1\":\"1_79\"}', '0_0.03_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-25 08:53:37'),
(87, 87, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.9_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-25 10:20:41'),
(88, 88, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":0,\"3\":1,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-28 04:11:20', '2018-09-25 14:52:50'),
(89, 89, '{\"9\":15,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.6_0.6_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.03_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-11-04 23:00:01', '2018-09-25 15:12:39'),
(90, 90, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 13:20:54', '2018-09-25 16:27:28'),
(91, 91, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":11,\"2\":10,\"3\":85,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_6_9_2_5_', '13_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"1\":\"2_100_99_100_100\"}', '26.54_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":1,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0.1000000000000000055511151231257827021181583404541015625}', '2018-10-07 22:00:01', '2018-09-25 18:02:19'),
(92, 92, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-25 18:29:11'),
(93, 93, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-25 18:39:49'),
(94, 94, '{\"9\":2,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":1,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-25 19:10:06'),
(95, 95, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-25 21:14:33'),
(96, 96, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 00:26:45', '2018-09-25 21:19:31'),
(97, 97, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":2,\"2\":1,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 03:55:36', '2018-09-26 03:49:07'),
(98, 98, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"1\":\"1_100\"}', '0.03_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 06:31:44', '2018-09-26 06:26:42'),
(99, 99, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 12:18:48', '2018-09-26 07:46:06'),
(100, 100, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0.6_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.04_0.03_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 10:49:43', '2018-09-26 07:59:34'),
(101, 101, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 12:18:54', '2018-09-26 08:06:35'),
(102, 102, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":4,\"2\":0,\"3\":1,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 08:59:15', '2018-09-26 08:52:40'),
(103, 103, '{\"9\":20,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.07_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 10:14:53', '2018-09-26 10:09:08'),
(104, 104, '{\"9\":20,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.6_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 10:20:36', '2018-09-26 10:14:32'),
(105, 105, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 17:07:15', '2018-09-26 17:07:15'),
(106, 106, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '6.1_0.6_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"1\":\"0\"}', '5.65_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-27 22:00:01', '2018-09-26 17:15:43'),
(107, 107, '{\"9\":1,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":1,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.6_0.9_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.03_0.03_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 18:30:20', '2018-09-26 18:19:53'),
(108, 108, '{\"9\":0,\"10\":60,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":133,\"4\":485,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_8_5_9_2_6_7_', '99.9_11.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"1\":\"0_96_96_100_98_99_96_99_98\"}', '57.77_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":1,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-13 11:41:06', '2018-09-26 18:34:59'),
(109, 109, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 19:00:40', '2018-09-26 19:00:40'),
(110, 110, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 19:08:35', '2018-09-26 19:08:35'),
(111, 111, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 19:57:21', '2018-09-26 19:57:21'),
(112, 112, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":1,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.9_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-26 20:08:09', '2018-09-26 20:01:14'),
(113, 113, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":3,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-27 22:00:01', '2018-09-27 09:04:40'),
(114, 114, '{\"9\":0,\"10\":31,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":1,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '3.6_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.64_0.03_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-10 16:58:33', '2018-09-27 12:40:07'),
(115, 115, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":1,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.6_0.6_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0.03_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-27 22:00:01', '2018-09-27 14:03:37'),
(116, 116, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-27 15:10:14', '2018-09-27 15:10:14'),
(117, 117, '{\"9\":2,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":0,\"3\":1,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '3.3_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.61_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-23 16:30:16', '2018-09-27 15:46:18'),
(118, 118, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.03_0.06_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-28 12:48:12', '2018-09-28 12:39:25'),
(119, 119, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-28 15:45:32', '2018-09-28 15:45:32');
INSERT INTO `users_inventories` (`id`, `user_id`, `drinks`, `drugs`, `trgovija`, `weapons`, `finished_missions`, `crime_chance`, `cars`, `car_chance`, `asets`, `updated_at`, `created_at`) VALUES
(120, 120, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":30,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":100,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_9_6_5_2_8_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"1\":\"9_100_100_96_97_98_96_98_98_97_100\"}', '34.73_0.03_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":1,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-04 22:00:01', '2018-09-28 20:23:22'),
(121, 121, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-29 08:10:51', '2018-09-29 08:10:51'),
(122, 122, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.9_0.9_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.06_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-29 21:39:01', '2018-09-29 10:35:15'),
(123, 123, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":3,\"2\":1,\"3\":1,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.03_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-09-30 22:00:01', '2018-09-30 09:15:18'),
(124, 124, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-01 12:54:44', '2018-10-01 12:54:44'),
(125, 125, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"1\":\"1_75\"}', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-04 22:00:01', '2018-10-01 15:05:32'),
(126, 126, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-02 15:34:38', '2018-10-02 15:34:38'),
(127, 127, '{\"9\":9,\"10\":1,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":0,\"3\":1,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0.6_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-02 15:51:43', '2018-10-02 15:36:26'),
(128, 128, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-03 10:37:50', '2018-10-03 10:37:50'),
(129, 129, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-03 10:39:59', '2018-10-03 10:39:59'),
(130, 130, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":0,\"3\":1,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0.03_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-03 22:00:02', '2018-10-03 10:50:55'),
(131, 131, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-06 08:58:34', '2018-10-06 08:58:34'),
(132, 132, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-06 11:39:09', '2018-10-06 11:39:09'),
(133, 133, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-06 13:33:26', '2018-10-06 13:33:26'),
(134, 134, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-07 19:15:34', '2018-10-07 19:10:27'),
(135, 135, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":3,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"1\":\"0\"}', '0.03_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-07 19:41:07', '2018-10-07 19:30:04'),
(136, 136, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":4,\"2\":1,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '1.8_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-08 22:00:02', '2018-10-08 17:23:34'),
(137, 137, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":5,\"2\":2,\"3\":1,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '13.8_7.8_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.06_0.18_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-10 13:49:00', '2018-10-09 03:03:57'),
(138, 138, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-09 16:21:02', '2018-10-09 16:21:02'),
(139, 139, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"25\":\"1_1000\"}', '0.07_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-11 17:31:11', '2018-10-11 15:25:19'),
(140, 140, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-17 05:10:36', '2018-10-17 05:10:36'),
(141, 141, '{\"9\":6,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":1,\"2\":1,\"3\":1,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '4.2_1.8_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.03_0.03_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-19 06:46:11', '2018-10-19 05:07:23'),
(142, 142, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-25 11:00:08', '2018-10-25 11:00:08'),
(143, 143, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-26 06:55:24', '2018-10-26 06:55:24'),
(144, 144, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-10-28 17:41:27', '2018-10-28 17:40:12'),
(145, 145, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.03_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-11-04 09:23:39', '2018-11-04 09:21:11'),
(146, 146, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-11-09 18:35:08', '2018-11-09 18:35:08'),
(147, 147, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.6_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-11-09 18:39:01', '2018-11-09 18:36:42'),
(148, 148, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-11-15 15:26:39', '2018-11-15 15:26:39'),
(149, 149, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-11-28 19:45:35', '2018-11-28 19:45:35'),
(150, 150, '{\"9\":15,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.06_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-12-28 21:25:33', '2018-11-28 19:50:11'),
(151, 151, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-11-30 08:11:39', '2018-11-30 08:08:41'),
(152, 152, '{\"9\":0,\"10\":3,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":2,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.9_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2018-12-13 07:16:12', '2018-12-06 07:28:54'),
(153, 153, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2019-01-17 14:31:10', '2019-01-17 14:31:10'),
(154, 154, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2019-01-17 16:46:14', '2019-01-17 16:43:17'),
(155, 155, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2019-03-28 17:28:01', '2019-03-28 17:28:01'),
(156, 156, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0.04_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2019-03-28 23:00:01', '2019-03-28 17:29:26'),
(157, 157, '{\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0}', '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0,\"7\":0,\"8\":0,\"9\":0,\"10\":0,\"11\":0,\"12\":0,\"13\":0,\"14\":0,\"15\":0,\"16\":0,\"17\":0,\"18\":0,\"19\":0,\"20\":0,\"21\":0,\"22\":0}', '1_', '0.3_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '', '0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0', '{\"23\":0,\"24\":0,\"25\":0,\"26\":0,\"27\":0,\"28\":0,\"29\":0,\"30\":0,\"31\":0}', '2019-05-16 23:19:57', '2019-05-16 23:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `users_permissions`
--

CREATE TABLE `users_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_permissions`
--

INSERT INTO `users_permissions` (`id`, `user_id`, `is_admin`, `updated_at`, `created_at`) VALUES
(1, 1, 0, '2018-09-23 10:31:40', '2018-09-21 17:50:42'),
(2, 2, 1, '2018-09-23 10:35:48', '2018-09-21 17:54:33'),
(3, 3, 1, '2018-09-23 10:35:51', '2018-09-21 17:54:50'),
(4, 4, 0, '2018-09-21 18:00:24', '2018-09-21 18:00:24'),
(5, 5, 0, '2018-09-21 18:07:20', '2018-09-21 18:07:20'),
(6, 6, 0, '2018-09-21 18:16:31', '2018-09-21 18:16:31'),
(7, 7, 0, '2018-09-21 18:18:28', '2018-09-21 18:18:28'),
(8, 8, 0, '2018-09-21 18:23:09', '2018-09-21 18:23:09'),
(9, 9, 0, '2018-09-21 18:57:51', '2018-09-21 18:57:51'),
(10, 10, 0, '2018-09-21 18:58:25', '2018-09-21 18:58:25'),
(11, 11, 0, '2018-09-21 20:26:13', '2018-09-21 20:26:13'),
(12, 12, 0, '2018-09-21 20:29:57', '2018-09-21 20:29:57'),
(13, 13, 0, '2018-09-21 22:08:10', '2018-09-21 22:08:10'),
(14, 14, 0, '2018-09-21 22:11:38', '2018-09-21 22:11:38'),
(15, 15, 0, '2018-09-21 22:39:38', '2018-09-21 22:39:38'),
(16, 16, 0, '2018-09-21 23:42:39', '2018-09-21 23:42:39'),
(17, 17, 0, '2018-09-22 00:13:00', '2018-09-22 00:13:00'),
(18, 18, 0, '2018-09-22 00:58:41', '2018-09-22 00:58:41'),
(19, 19, 0, '2018-09-22 08:08:43', '2018-09-22 08:08:43'),
(20, 20, 0, '2018-09-22 08:11:25', '2018-09-22 08:11:25'),
(21, 21, 0, '2018-09-22 08:49:54', '2018-09-22 08:49:54'),
(22, 22, 0, '2018-09-22 08:50:03', '2018-09-22 08:50:03'),
(23, 23, 0, '2018-09-22 09:40:49', '2018-09-22 09:40:49'),
(24, 24, 0, '2018-09-22 09:52:21', '2018-09-22 09:52:21'),
(25, 25, 0, '2018-09-22 10:01:53', '2018-09-22 10:01:53'),
(26, 26, 0, '2018-09-22 10:07:51', '2018-09-22 10:07:51'),
(27, 27, 0, '2018-09-22 10:32:20', '2018-09-22 10:32:20'),
(28, 28, 0, '2018-09-22 10:35:55', '2018-09-22 10:35:55'),
(29, 29, 0, '2018-09-22 14:19:59', '2018-09-22 14:19:59'),
(30, 30, 0, '2018-09-22 14:22:40', '2018-09-22 14:22:40'),
(32, 32, 0, '2018-09-22 15:52:27', '2018-09-22 15:52:27'),
(33, 33, 0, '2018-09-22 18:27:17', '2018-09-22 18:27:17'),
(34, 34, 0, '2018-09-22 19:02:14', '2018-09-22 19:02:14'),
(35, 35, 0, '2018-09-22 21:23:48', '2018-09-22 21:23:48'),
(36, 36, 0, '2018-09-22 21:43:28', '2018-09-22 21:43:28'),
(37, 37, 0, '2018-09-23 05:48:24', '2018-09-23 05:48:24'),
(38, 38, 0, '2018-09-23 05:49:27', '2018-09-23 05:49:27'),
(39, 39, 0, '2018-09-23 06:02:17', '2018-09-23 06:02:17'),
(40, 40, 0, '2018-09-23 06:19:30', '2018-09-23 06:19:30'),
(41, 41, 0, '2018-09-23 06:43:51', '2018-09-23 06:43:51'),
(42, 42, 0, '2018-09-23 06:43:57', '2018-09-23 06:43:57'),
(43, 43, 0, '2018-09-23 06:59:28', '2018-09-23 06:59:28'),
(44, 44, 0, '2018-09-23 07:00:38', '2018-09-23 07:00:38'),
(45, 45, 0, '2018-09-23 07:06:17', '2018-09-23 07:06:17'),
(46, 46, 0, '2018-09-23 07:20:49', '2018-09-23 07:20:49'),
(47, 47, 0, '2018-09-23 07:23:31', '2018-09-23 07:23:31'),
(48, 48, 0, '2018-09-23 07:43:05', '2018-09-23 07:43:05'),
(49, 49, 0, '2018-09-23 07:45:09', '2018-09-23 07:45:09'),
(50, 50, 0, '2018-09-23 07:45:29', '2018-09-23 07:45:29'),
(51, 51, 0, '2018-09-23 08:07:25', '2018-09-23 08:07:25'),
(52, 52, 0, '2018-09-23 08:21:07', '2018-09-23 08:21:07'),
(53, 53, 0, '2018-09-23 08:49:09', '2018-09-23 08:49:09'),
(54, 54, 0, '2018-09-23 08:58:58', '2018-09-23 08:58:58'),
(55, 55, 0, '2018-09-23 09:04:43', '2018-09-23 09:04:43'),
(56, 56, 0, '2018-09-23 09:35:35', '2018-09-23 09:35:35'),
(57, 57, 0, '2018-09-23 10:22:30', '2018-09-23 10:22:30'),
(58, 58, 0, '2018-09-23 12:48:16', '2018-09-23 12:48:16'),
(59, 59, 0, '2018-09-23 14:47:48', '2018-09-23 14:47:48'),
(60, 60, 0, '2018-09-23 14:47:50', '2018-09-23 14:47:50'),
(61, 61, 0, '2018-09-23 15:47:03', '2018-09-23 15:47:03'),
(62, 62, 0, '2018-09-23 16:46:06', '2018-09-23 16:46:06'),
(63, 63, 0, '2018-09-23 17:07:13', '2018-09-23 17:07:13'),
(64, 64, 0, '2018-09-23 19:13:31', '2018-09-23 19:13:31'),
(65, 65, 0, '2018-09-23 19:33:01', '2018-09-23 19:33:01'),
(66, 66, 0, '2018-09-23 20:00:03', '2018-09-23 20:00:03'),
(67, 67, 0, '2018-09-23 22:15:45', '2018-09-23 22:15:45'),
(68, 68, 0, '2018-09-24 05:10:26', '2018-09-24 05:10:26'),
(69, 69, 0, '2018-09-24 07:18:41', '2018-09-24 07:18:41'),
(70, 70, 0, '2018-09-24 08:45:07', '2018-09-24 08:45:07'),
(71, 71, 0, '2018-09-24 08:48:53', '2018-09-24 08:48:53'),
(72, 72, 0, '2018-09-24 08:49:46', '2018-09-24 08:49:46'),
(73, 73, 0, '2018-09-24 12:05:57', '2018-09-24 12:05:57'),
(74, 74, 0, '2018-09-24 12:49:48', '2018-09-24 12:49:48'),
(75, 75, 0, '2018-09-24 13:27:11', '2018-09-24 13:27:11'),
(76, 76, 0, '2018-09-24 17:24:57', '2018-09-24 17:24:57'),
(77, 77, 0, '2018-09-24 17:52:28', '2018-09-24 17:52:28'),
(78, 78, 0, '2018-09-24 18:38:22', '2018-09-24 18:38:22'),
(79, 79, 0, '2018-09-24 18:55:18', '2018-09-24 18:55:18'),
(80, 80, 0, '2018-09-24 19:47:48', '2018-09-24 19:47:48'),
(81, 81, 0, '2018-09-24 20:07:43', '2018-09-24 20:07:43'),
(82, 82, 0, '2018-09-24 20:33:53', '2018-09-24 20:33:53'),
(83, 83, 0, '2018-09-25 02:56:41', '2018-09-25 02:56:41'),
(84, 84, 0, '2018-09-25 06:44:45', '2018-09-25 06:44:45'),
(85, 85, 0, '2018-09-25 08:33:46', '2018-09-25 08:33:46'),
(86, 86, 0, '2018-09-25 08:53:37', '2018-09-25 08:53:37'),
(87, 87, 0, '2018-09-25 10:20:41', '2018-09-25 10:20:41'),
(88, 88, 0, '2018-09-25 14:52:50', '2018-09-25 14:52:50'),
(89, 89, 0, '2018-09-25 15:12:39', '2018-09-25 15:12:39'),
(90, 90, 0, '2018-09-25 16:27:28', '2018-09-25 16:27:28'),
(91, 91, 0, '2018-09-25 18:02:19', '2018-09-25 18:02:19'),
(92, 92, 0, '2018-09-25 18:29:11', '2018-09-25 18:29:11'),
(93, 93, 0, '2018-09-25 18:39:49', '2018-09-25 18:39:49'),
(94, 94, 0, '2018-09-25 19:10:06', '2018-09-25 19:10:06'),
(95, 95, 0, '2018-09-25 21:14:33', '2018-09-25 21:14:33'),
(96, 96, 0, '2018-09-25 21:19:31', '2018-09-25 21:19:31'),
(97, 97, 0, '2018-09-26 03:49:07', '2018-09-26 03:49:07'),
(98, 98, 0, '2018-09-26 06:26:42', '2018-09-26 06:26:42'),
(99, 99, 0, '2018-09-26 07:46:06', '2018-09-26 07:46:06'),
(100, 100, 0, '2018-09-26 07:59:34', '2018-09-26 07:59:34'),
(101, 101, 0, '2018-09-26 08:06:35', '2018-09-26 08:06:35'),
(102, 102, 0, '2018-09-26 08:52:40', '2018-09-26 08:52:40'),
(103, 103, 0, '2018-09-26 10:09:08', '2018-09-26 10:09:08'),
(104, 104, 0, '2018-09-26 10:14:32', '2018-09-26 10:14:32'),
(105, 105, 0, '2018-09-26 17:07:15', '2018-09-26 17:07:15'),
(106, 106, 0, '2018-09-26 17:15:43', '2018-09-26 17:15:43'),
(107, 107, 0, '2018-09-26 18:19:53', '2018-09-26 18:19:53'),
(108, 108, 0, '2018-09-26 18:34:59', '2018-09-26 18:34:59'),
(109, 109, 0, '2018-09-26 19:00:40', '2018-09-26 19:00:40'),
(110, 110, 0, '2018-09-26 19:08:35', '2018-09-26 19:08:35'),
(111, 111, 0, '2018-09-26 19:57:21', '2018-09-26 19:57:21'),
(112, 112, 0, '2018-09-26 20:01:14', '2018-09-26 20:01:14'),
(113, 113, 0, '2018-09-27 09:04:40', '2018-09-27 09:04:40'),
(114, 114, 0, '2018-09-27 12:40:07', '2018-09-27 12:40:07'),
(115, 115, 0, '2018-09-27 14:03:37', '2018-09-27 14:03:37'),
(116, 116, 0, '2018-09-27 15:10:14', '2018-09-27 15:10:14'),
(117, 117, 0, '2018-09-27 15:46:18', '2018-09-27 15:46:18'),
(118, 118, 0, '2018-09-28 12:39:25', '2018-09-28 12:39:25'),
(119, 119, 0, '2018-09-28 15:45:32', '2018-09-28 15:45:32'),
(120, 120, 0, '2018-09-28 20:23:22', '2018-09-28 20:23:22'),
(121, 121, 0, '2018-09-29 08:10:51', '2018-09-29 08:10:51'),
(122, 122, 0, '2018-09-29 10:35:15', '2018-09-29 10:35:15'),
(123, 123, 0, '2018-09-30 09:15:18', '2018-09-30 09:15:18'),
(124, 124, 0, '2018-10-01 12:54:44', '2018-10-01 12:54:44'),
(125, 125, 0, '2018-10-01 15:05:32', '2018-10-01 15:05:32'),
(126, 126, 0, '2018-10-02 15:34:38', '2018-10-02 15:34:38'),
(127, 127, 0, '2018-10-02 15:36:26', '2018-10-02 15:36:26'),
(128, 128, 0, '2018-10-03 10:37:50', '2018-10-03 10:37:50'),
(129, 129, 0, '2018-10-03 10:39:59', '2018-10-03 10:39:59'),
(130, 130, 0, '2018-10-03 10:50:55', '2018-10-03 10:50:55'),
(131, 131, 0, '2018-10-06 08:58:34', '2018-10-06 08:58:34'),
(132, 132, 0, '2018-10-06 11:39:09', '2018-10-06 11:39:09'),
(133, 133, 0, '2018-10-06 13:33:26', '2018-10-06 13:33:26'),
(134, 134, 0, '2018-10-07 19:10:27', '2018-10-07 19:10:27'),
(135, 135, 0, '2018-10-07 19:30:04', '2018-10-07 19:30:04'),
(136, 136, 0, '2018-10-08 17:23:34', '2018-10-08 17:23:34'),
(137, 137, 0, '2018-10-09 03:03:57', '2018-10-09 03:03:57'),
(138, 138, 0, '2018-10-09 16:21:02', '2018-10-09 16:21:02'),
(139, 139, 0, '2018-10-11 15:25:19', '2018-10-11 15:25:19'),
(140, 140, 0, '2018-10-17 05:10:36', '2018-10-17 05:10:36'),
(141, 141, 0, '2018-10-19 05:07:23', '2018-10-19 05:07:23'),
(142, 142, 0, '2018-10-25 11:00:08', '2018-10-25 11:00:08'),
(143, 143, 0, '2018-10-26 06:55:24', '2018-10-26 06:55:24'),
(144, 144, 0, '2018-10-28 17:40:12', '2018-10-28 17:40:12'),
(145, 145, 0, '2018-11-04 09:21:11', '2018-11-04 09:21:11'),
(146, 146, 0, '2018-11-09 18:35:08', '2018-11-09 18:35:08'),
(147, 147, 0, '2018-11-09 18:36:42', '2018-11-09 18:36:42'),
(148, 148, 0, '2018-11-15 15:26:39', '2018-11-15 15:26:39'),
(149, 149, 0, '2018-11-28 19:45:35', '2018-11-28 19:45:35'),
(150, 150, 0, '2018-11-28 19:50:11', '2018-11-28 19:50:11'),
(151, 151, 0, '2018-11-30 08:08:41', '2018-11-30 08:08:41'),
(152, 152, 0, '2018-12-06 07:28:54', '2018-12-06 07:28:54'),
(153, 153, 0, '2019-01-17 14:31:10', '2019-01-17 14:31:10'),
(154, 154, 0, '2019-01-17 16:43:17', '2019-01-17 16:43:17'),
(155, 155, 0, '2019-03-28 17:28:01', '2019-03-28 17:28:01'),
(156, 156, 0, '2019-03-28 17:29:26', '2019-03-28 17:29:26'),
(157, 157, 0, '2019-05-16 23:14:19', '2019-05-16 23:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `users_prom`
--

CREATE TABLE `users_prom` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `place` varchar(10) NOT NULL,
  `rank` int(2) NOT NULL,
  `mok` int(20) NOT NULL,
  `pocit` int(11) NOT NULL,
  `pari` int(20) NOT NULL,
  `iskustvo` int(11) NOT NULL,
  `ubistva` int(11) NOT NULL,
  `health` int(11) NOT NULL,
  `lives` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `atack_wins` int(11) NOT NULL,
  `atack_loses` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_prom`
--

INSERT INTO `users_prom` (`id`, `user_id`, `place`, `rank`, `mok`, `pocit`, `pari`, `iskustvo`, `ubistva`, `health`, `lives`, `points`, `atack_wins`, `atack_loses`, `updated_at`, `created_at`) VALUES
(1, 1, 'SV', 2, 1090, 1, 18480, 3635, 0, 90, 7, 0, 9, 1, '2019-03-13 10:43:19', '2018-09-21 17:50:42'),
(2, 2, 'SV', 1, 390, 6, 112497, 2099, 0, 100, 7, 0, 1, 2, '2019-06-14 05:01:38', '2018-09-21 17:54:33'),
(3, 3, 'SV', 1, 5475, 11, 8599, 658, 0, 80, 7, 17, 0, 3, '2019-01-29 13:02:40', '2018-09-21 17:54:50'),
(4, 4, 'AH', 1, 200, 2, 6820, 887, 0, 100, 7, 2, 0, 0, '2018-09-24 08:58:13', '2018-09-21 18:00:24'),
(5, 5, 'SV', 1, 50, 2, 6790, 54, 0, 90, 7, 0, 0, 1, '2018-09-27 21:04:10', '2018-09-21 18:07:20'),
(6, 6, 'CP', 1, 0, 0, 8488, 340, 0, 100, 7, 0, 0, 0, '2018-09-27 11:16:17', '2018-09-21 18:16:31'),
(7, 7, 'BL', 3, 79485, 15, 323966, 5373, 3, 100, 6, 30, 46, 25, '2018-10-13 21:51:13', '2018-09-21 18:18:28'),
(8, 8, 'VL', 2, 161285, 12, 3108, 4905, 2, 100, 7, 30, 24, 0, '2018-10-19 09:11:50', '2018-09-21 18:23:09'),
(9, 9, 'AH', 1, 140, 3, 47794, 1342, 0, 100, 7, 5, 0, 0, '2018-10-18 15:29:12', '2018-09-21 18:57:51'),
(10, 10, 'SV', 1, 80, 2, 440, 92, 0, 100, 7, 0, 0, 0, '2018-09-22 21:36:20', '2018-09-21 18:58:25'),
(11, 11, 'SV', 1, 0, 0, 5000, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 12:12:22', '2018-09-21 20:26:13'),
(12, 12, 'SV', 2, 10, 4, 112, 2625, 0, 100, 7, 10, 0, 0, '2019-04-24 07:46:57', '2018-09-21 20:29:57'),
(13, 13, 'SV', 1, 80, 1, 25909, 729, 0, 100, 7, 0, 0, 0, '2018-12-05 10:41:19', '2018-09-21 22:08:10'),
(14, 14, 'SV', 1, 75, 3, 5900, 73, 0, 90, 7, 0, 0, 1, '2018-09-27 13:50:42', '2018-09-21 22:11:38'),
(15, 15, 'SV', 1, 0, 0, 5000, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 12:12:20', '2018-09-21 22:39:38'),
(16, 16, 'SV', 1, 0, 0, 5100, 6, 0, 100, 7, 0, 0, 0, '2018-09-21 23:44:39', '2018-09-21 23:42:39'),
(17, 17, 'SV', 1, 0, 0, 4900, 21, 0, 100, 7, 0, 0, 0, '2018-09-22 00:18:03', '2018-09-22 00:13:00'),
(18, 18, 'SV', 1, 0, 0, 5000, 5, 0, 100, 7, 0, 0, 0, '2018-09-22 01:09:52', '2018-09-22 00:58:41'),
(19, 19, 'SV', 1, 0, 0, 5000, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 12:12:11', '2018-09-22 08:08:43'),
(20, 20, 'SV', 1, 55, 0, 1570, 29, 0, 100, 7, 0, 0, 0, '2018-09-22 12:17:46', '2018-09-22 08:11:25'),
(21, 21, 'SV', 1, 0, 0, 272, 81, 0, 100, 7, 0, 0, 0, '2018-09-22 08:57:59', '2018-09-22 08:49:54'),
(22, 22, 'CP', 2, 4710, 4, 109694, 3187, 0, 100, 7, 0, 1, 0, '2019-04-16 20:24:35', '2018-09-22 08:50:03'),
(23, 23, 'SV', 1, 0, 0, 5000, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 12:12:15', '2018-09-22 09:40:49'),
(24, 24, 'SV', 1, 0, 0, 5000, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 12:12:17', '2018-09-22 09:52:21'),
(25, 25, 'SV', 1, 30, 0, 928, 44, 0, 100, 7, 0, 0, 0, '2018-09-22 10:23:49', '2018-09-22 10:01:53'),
(26, 26, 'SV', 1, 20, 0, 5170, 24, 0, 100, 7, 0, 0, 0, '2018-09-22 10:18:38', '2018-09-22 10:07:51'),
(27, 27, 'SV', 1, 0, 0, 3034, 604, 0, 100, 7, 0, 0, 0, '2018-10-02 09:11:02', '2018-09-22 10:32:20'),
(28, 28, 'SV', 1, 0, 0, 5000, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 12:12:29', '2018-09-22 10:35:55'),
(29, 29, 'SV', 1, 0, 0, 5000, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 12:12:31', '2018-09-22 14:19:59'),
(30, 30, 'SV', 1, 65, 0, 1543, 18, 0, 100, 7, 0, 0, 0, '2018-09-24 09:50:22', '2018-09-22 14:22:40'),
(32, 32, 'SV', 1, 0, 0, 5510, 126, 0, 100, 7, 0, 0, 0, '2018-09-22 16:10:50', '2018-09-22 15:52:27'),
(33, 33, 'AH', 1, 60, 0, 560, 100, 0, 100, 7, 1, 0, 0, '2018-09-22 19:38:36', '2018-09-22 18:27:17'),
(34, 34, 'SV', 1, 0, 0, 5070, 13, 0, 100, 7, 0, 0, 0, '2018-09-22 19:06:44', '2018-09-22 19:02:14'),
(35, 35, 'SV', 1, 320, 3, 13019, 327, 0, 100, 7, 0, 1, 0, '2018-09-30 19:26:32', '2018-09-22 21:23:48'),
(36, 36, 'SV', 1, 55, 0, 800, 52, 0, 100, 7, 0, 0, 0, '2018-09-22 21:52:29', '2018-09-22 21:43:28'),
(37, 37, 'SV', 1, 45, 0, 1846, 49, 0, 100, 7, 0, 0, 0, '2018-09-23 06:07:41', '2018-09-23 05:48:24'),
(38, 38, 'SV', 1, 0, 0, 5000, 0, 0, 100, 7, 0, 0, 0, '2018-09-23 05:50:10', '2018-09-23 05:49:27'),
(39, 39, 'SV', 1, 0, 0, 5000, 19, 0, 90, 7, 0, 0, 1, '2018-09-25 20:40:26', '2018-09-23 06:02:17'),
(40, 40, 'SV', 1, 0, 0, 5000, 6, 0, 100, 7, 0, 0, 0, '2018-09-23 06:28:47', '2018-09-23 06:19:30'),
(41, 41, 'SV', 1, 40, 0, 1114, 47, 0, 100, 7, 0, 0, 0, '2018-09-23 07:00:23', '2018-09-23 06:43:51'),
(42, 42, 'SV', 1, 15, 0, 2715, 11, 0, 100, 7, 0, 0, 0, '2018-11-24 23:33:50', '2018-09-23 06:43:57'),
(43, 43, 'SV', 1, 0, 0, 6010, 58, 0, 100, 7, 0, 0, 0, '2018-09-23 18:28:00', '2018-09-23 06:59:28'),
(44, 44, 'SV', 1, 0, 0, 5000, 14, 0, 100, 7, 0, 0, 0, '2018-09-23 07:04:01', '2018-09-23 07:00:38'),
(45, 45, 'SV', 1, 0, 0, 6650, 29, 0, 90, 7, 0, 0, 1, '2018-09-25 20:37:41', '2018-09-23 07:06:17'),
(46, 46, 'SV', 1, 0, 0, 8100, 972, 0, 100, 7, 0, 0, 0, '2018-09-23 09:50:11', '2018-09-23 07:20:49'),
(47, 47, 'SV', 1, 0, 0, 4045, 13, 0, 100, 7, 0, 0, 0, '2018-09-23 08:53:32', '2018-09-23 07:23:31'),
(48, 48, 'AH', 1, 280, 2, 1095, 575, 0, 100, 7, 0, 0, 0, '2018-09-25 10:55:48', '2018-09-23 07:43:05'),
(49, 49, 'SV', 2, 265, 17, 218754, 3060, 0, 90, 7, 0, 0, 1, '2019-06-14 11:51:33', '2018-09-23 07:45:09'),
(50, 50, 'SV', 1, 0, 0, 5000, 2, 0, 90, 7, 0, 0, 1, '2018-09-29 21:54:43', '2018-09-23 07:45:29'),
(51, 51, 'SV', 1, 0, 0, 5000, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 12:12:39', '2018-09-23 08:07:25'),
(52, 52, 'SV', 1, 0, 0, 628, 73, 0, 100, 7, 0, 0, 0, '2018-09-23 08:42:32', '2018-09-23 08:21:07'),
(53, 53, 'SV', 1, 300, 0, 75307, 1066, 0, 100, 7, 0, 0, 0, '2018-10-12 17:18:36', '2018-09-23 08:49:09'),
(54, 54, 'SV', 1, 0, 0, 4900, 73, 0, 100, 7, 0, 0, 0, '2018-09-23 09:04:54', '2018-09-23 08:58:58'),
(55, 55, 'SV', 1, 40, 0, 3600, 138, 0, 100, 7, 0, 0, 0, '2018-09-24 20:49:12', '2018-09-23 09:04:43'),
(56, 56, 'SV', 1, 35, 2, 132989, 637, 0, 100, 7, 0, 0, 0, '2018-11-04 23:07:33', '2018-09-23 09:35:35'),
(57, 57, 'SV', 1, 0, 0, 5860, 60, 0, 100, 7, 0, 0, 0, '2018-09-23 10:36:27', '2018-09-23 10:22:30'),
(58, 58, 'SV', 1, 0, 0, 3973, 3, 0, 100, 7, 0, 0, 0, '2018-09-23 12:52:55', '2018-09-23 12:48:16'),
(59, 59, 'YK', 2, 62615, 21, 4956211, 3384, 4, 100, 0, 5, 45, 84, '2018-10-14 15:50:42', '2018-09-23 14:47:48'),
(60, 60, 'SV', 1, 0, 0, 5150, 2, 0, 100, 7, 0, 0, 0, '2018-09-23 14:53:05', '2018-09-23 14:47:50'),
(61, 61, 'SV', 1, 15, 0, 5070, 13, 0, 100, 7, 0, 0, 0, '2018-09-23 15:57:08', '2018-09-23 15:47:03'),
(62, 62, 'SV', 1, 0, 0, 4900, 0, 0, 100, 7, 0, 0, 0, '2018-09-23 16:52:53', '2018-09-23 16:46:06'),
(63, 63, 'SV', 1, 25, 1, 4050, 35, 0, 100, 6, 0, 0, 10, '2018-09-27 01:16:17', '2018-09-23 17:07:13'),
(64, 64, 'SV', 1, 0, 0, 5000, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 12:12:46', '2018-09-23 19:13:31'),
(65, 65, 'SV', 1, 165, 0, 3130, 21, 0, 100, 7, 0, 0, 0, '2018-09-23 20:34:42', '2018-09-23 19:33:01'),
(66, 66, 'SV', 1, 70, 1, 2670, 83, 0, 90, 7, 0, 0, 1, '2018-09-27 10:23:31', '2018-09-23 20:00:03'),
(67, 67, 'SV', 1, 55, 2, 3020, 29, 0, 100, 7, 0, 0, 0, '2018-09-23 22:38:47', '2018-09-23 22:15:45'),
(68, 68, 'SV', 1, 0, 0, 5000, 0, 0, 100, 7, 0, 0, 0, '2018-09-24 05:14:14', '2018-09-24 05:10:26'),
(69, 69, 'SV', 1, 0, 0, 5000, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 12:12:48', '2018-09-24 07:18:41'),
(70, 70, 'SV', 1, 0, 0, 5000, 6, 0, 100, 7, 0, 0, 0, '2018-09-24 08:54:30', '2018-09-24 08:45:07'),
(71, 71, 'SV', 1, 0, 0, 5300, 10, 0, 100, 7, 0, 0, 0, '2018-09-24 08:55:12', '2018-09-24 08:48:53'),
(72, 72, 'SV', 1, 20, 0, 4900, 7, 0, 100, 7, 0, 0, 0, '2018-09-24 09:00:30', '2018-09-24 08:49:46'),
(73, 73, 'SV', 1, 0, 0, 5000, 3, 0, 100, 7, 0, 0, 0, '2018-09-24 12:07:35', '2018-09-24 12:05:57'),
(74, 74, 'SV', 1, 0, 0, 5400, 8, 0, 100, 7, 0, 0, 0, '2018-09-24 12:55:15', '2018-09-24 12:49:48'),
(75, 75, 'SV', 1, 15, 0, 488, 21, 0, 100, 7, 0, 0, 0, '2018-09-25 19:44:59', '2018-09-24 13:27:11'),
(76, 76, 'SV', 1, 0, 0, 4642, 11, 0, 100, 7, 0, 0, 0, '2018-09-24 17:34:01', '2018-09-24 17:24:57'),
(77, 77, 'SV', 1, 0, 0, 5000, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 12:12:55', '2018-09-24 17:52:28'),
(78, 78, 'SV', 1, 30, 0, 2355, 38, 0, 100, 7, 0, 0, 0, '2018-09-24 19:59:01', '2018-09-24 18:38:22'),
(79, 79, 'SV', 1, 0, 0, 5000, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 12:12:57', '2018-09-24 18:55:18'),
(80, 80, 'SV', 1, 0, 0, 5000, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 12:12:59', '2018-09-24 19:47:48'),
(81, 81, 'SV', 1, 0, 0, 5000, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 12:13:01', '2018-09-24 20:07:43'),
(82, 82, 'SV', 1, 0, 0, 5000, 3, 0, 100, 7, 0, 0, 0, '2018-09-24 20:36:21', '2018-09-24 20:33:53'),
(83, 83, 'SV', 1, 50, 0, 2930, 66, 0, 100, 7, 0, 0, 0, '2018-09-29 07:13:56', '2018-09-25 02:56:41'),
(84, 84, 'SV', 1, 0, 0, 4415, 0, 0, 100, 7, 0, 0, 0, '2018-09-25 06:48:27', '2018-09-25 06:44:45'),
(85, 85, 'SV', 1, 0, 0, 5000, 5, 0, 100, 7, 0, 0, 0, '2018-09-25 08:38:25', '2018-09-25 08:33:46'),
(86, 86, 'SV', 1, 45, 0, 421, 4, 0, 100, 7, 0, 0, 0, '2018-09-25 08:59:44', '2018-09-25 08:53:37'),
(87, 87, 'SV', 1, 0, 0, 2178, 9, 0, 100, 7, 0, 0, 0, '2018-09-25 10:40:01', '2018-09-25 10:20:41'),
(88, 88, 'SV', 1, 65, 0, 760, 13, 0, 100, 7, 0, 0, 0, '2018-09-28 04:21:52', '2018-09-25 14:52:50'),
(89, 89, 'SV', 1, 0, 0, 86240, 9, 0, 100, 7, 0, 0, 0, '2018-11-04 13:21:23', '2018-09-25 15:12:39'),
(90, 90, 'SV', 1, 0, 0, 5000, 2, 0, 100, 7, 0, 0, 0, '2018-09-26 13:20:54', '2018-09-25 16:27:28'),
(91, 91, 'YK', 1, 5040, 8, 393289, 2042, 0, 100, 7, 10, 2, 0, '2018-10-07 13:53:13', '2018-09-25 18:02:19'),
(92, 92, 'SV', 1, 0, 0, 5000, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 12:13:08', '2018-09-25 18:29:11'),
(93, 93, 'SV', 1, 0, 0, 2919, 1, 0, 100, 7, 0, 0, 0, '2018-09-25 18:44:32', '2018-09-25 18:39:49'),
(94, 94, 'SV', 1, 45, 0, 866, 14, 0, 100, 7, 0, 0, 0, '2018-09-25 19:19:12', '2018-09-25 19:10:06'),
(95, 95, 'SV', 1, 0, 0, 5000, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 12:13:11', '2018-09-25 21:14:33'),
(96, 96, 'SV', 1, 0, 0, 5000, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 12:13:13', '2018-09-25 21:19:31'),
(97, 97, 'SV', 1, 60, 0, 4750, 6, 0, 100, 7, 0, 0, 0, '2018-09-26 03:55:36', '2018-09-26 03:49:07'),
(98, 98, 'SV', 1, 0, 0, 9900, 4, 0, 100, 7, 0, 0, 0, '2018-09-26 06:31:44', '2018-09-26 06:26:42'),
(99, 99, 'SV', 1, 0, 0, 5000, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 12:13:16', '2018-09-26 07:46:06'),
(100, 100, 'SV', 1, 0, 0, 65120, 5, 0, 100, 7, 0, 0, 0, '2018-09-26 10:49:43', '2018-09-26 07:59:34'),
(101, 101, 'SV', 1, 0, 0, 5000, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 12:13:19', '2018-09-26 08:06:35'),
(102, 102, 'SV', 1, 110, 0, 550, 14, 0, 100, 7, 0, 0, 0, '2018-09-26 09:06:08', '2018-09-26 08:52:40'),
(103, 103, 'SV', 1, 0, 0, 2930, 8, 0, 100, 7, 0, 0, 0, '2018-09-26 10:17:09', '2018-09-26 10:09:08'),
(104, 104, 'SV', 1, 0, 0, 3000, 7, 0, 100, 7, 0, 0, 0, '2018-09-26 10:20:36', '2018-09-26 10:14:32'),
(105, 105, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 17:07:15', '2018-09-26 17:07:15'),
(106, 106, 'SV', 1, 250, 10, 67380, 326, 0, 100, 7, 0, 0, 0, '2018-10-13 14:54:23', '2018-09-26 17:15:43'),
(107, 107, 'SV', 1, 50, 0, 7201, 10, 0, 100, 7, 0, 0, 0, '2018-09-26 18:30:42', '2018-09-26 18:19:53'),
(108, 108, 'BL', 2, 50365, 3, 19312, 2734, 3, 100, 5, 5, 30, 20, '2018-10-13 20:00:09', '2018-09-26 18:34:59'),
(109, 109, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 19:00:40', '2018-09-26 19:00:40'),
(110, 110, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 19:08:35', '2018-09-26 19:08:35'),
(111, 111, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2018-09-26 19:57:21', '2018-09-26 19:57:21'),
(112, 112, 'SV', 1, 50, 0, 7650, 6, 0, 100, 7, 0, 0, 0, '2018-09-26 20:08:09', '2018-09-26 20:01:14'),
(113, 113, 'SV', 1, 45, 0, 8060, 12, 0, 100, 7, 0, 0, 0, '2018-09-27 09:19:50', '2018-09-27 09:04:40'),
(114, 114, 'SV', 1, 50, 0, 1569, 224, 0, 100, 7, 1, 0, 0, '2018-10-10 16:58:33', '2018-09-27 12:40:07'),
(115, 115, 'SV', 1, 50, 0, 7360, 67, 0, 100, 7, 0, 0, 0, '2018-09-27 14:42:16', '2018-09-27 14:03:37'),
(116, 116, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2018-09-27 15:10:14', '2018-09-27 15:10:14'),
(117, 117, 'SV', 1, 65, 0, 22522, 393, 0, 100, 7, 0, 0, 0, '2018-10-23 16:30:16', '2018-09-27 15:46:18'),
(118, 118, 'SV', 1, 0, 0, 10250, 6, 0, 100, 7, 0, 0, 0, '2018-09-28 12:48:12', '2018-09-28 12:39:25'),
(119, 119, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2018-09-28 15:45:32', '2018-09-28 15:45:32'),
(120, 120, 'AH', 1, 5080, 4, 82166, 1612, 0, 100, 6, 17, 1, 10, '2018-10-04 19:25:41', '2018-09-28 20:23:22'),
(121, 121, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2018-09-29 08:10:51', '2018-09-29 08:10:51'),
(122, 122, 'SV', 1, 0, 0, 11050, 11, 0, 100, 7, 0, 0, 0, '2018-09-29 21:39:01', '2018-09-29 10:35:15'),
(123, 123, 'SV', 1, 175, 2, 4570, 190, 0, 100, 7, 3, 0, 0, '2018-10-01 10:52:48', '2018-09-30 09:15:18'),
(124, 124, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2018-10-01 12:54:44', '2018-10-01 12:54:44'),
(125, 125, 'VL', 1, 0, 0, 790, 4, 0, 100, 7, 0, 0, 0, '2018-10-04 08:41:11', '2018-10-01 15:05:32'),
(126, 126, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2018-10-02 15:34:38', '2018-10-02 15:34:38'),
(127, 127, 'SV', 1, 85, 0, 653, 6, 0, 100, 7, 0, 0, 0, '2018-10-02 15:51:43', '2018-10-02 15:36:26'),
(128, 128, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2018-10-03 10:37:50', '2018-10-03 10:37:50'),
(129, 129, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2018-10-03 10:39:59', '2018-10-03 10:39:59'),
(130, 130, 'SV', 1, 85, 0, 1220, 5, 0, 100, 7, 1, 0, 0, '2018-10-03 11:05:33', '2018-10-03 10:50:55'),
(131, 131, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2018-10-06 08:58:34', '2018-10-06 08:58:34'),
(132, 132, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2018-10-06 11:39:09', '2018-10-06 11:39:09'),
(133, 133, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2018-10-06 13:33:26', '2018-10-06 13:33:26'),
(134, 134, 'SV', 1, 0, 0, 10000, 0, 0, 100, 7, 0, 0, 0, '2018-10-07 19:15:34', '2018-10-07 19:10:27'),
(135, 135, 'SV', 1, 0, 0, 10000, 3, 0, 100, 7, 0, 0, 0, '2018-10-07 19:40:32', '2018-10-07 19:30:04'),
(136, 136, 'SV', 1, 90, 0, 2550, 12, 0, 100, 7, 0, 0, 0, '2018-10-08 17:30:08', '2018-10-08 17:23:34'),
(137, 137, 'SV', 1, 185, 0, 350, 167, 0, 100, 7, 0, 0, 0, '2018-10-10 13:49:00', '2018-10-09 03:03:57'),
(138, 138, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2018-10-09 16:21:02', '2018-10-09 16:21:02'),
(139, 139, 'SV', 1, 0, 0, 10000, 2, 0, 100, 7, 0, 0, 0, '2018-10-11 15:28:11', '2018-10-11 15:25:19'),
(140, 140, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2018-10-17 05:10:36', '2018-10-17 05:10:36'),
(141, 141, 'SV', 1, 95, 0, 1318, 47, 0, 100, 7, 0, 0, 0, '2018-10-19 06:50:25', '2018-10-19 05:07:23'),
(142, 142, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2018-10-25 11:00:08', '2018-10-25 11:00:08'),
(143, 143, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2018-10-26 06:55:24', '2018-10-26 06:55:24'),
(144, 144, 'SV', 1, 0, 0, 10000, 0, 0, 100, 7, 0, 0, 0, '2018-10-28 17:41:27', '2018-10-28 17:40:12'),
(145, 145, 'SV', 1, 0, 0, 10000, 3, 0, 100, 7, 0, 0, 0, '2018-11-04 09:23:39', '2018-11-04 09:21:11'),
(146, 146, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2018-11-09 18:35:08', '2018-11-09 18:35:08'),
(147, 147, 'SV', 1, 0, 0, 10050, 7, 0, 100, 7, 0, 0, 0, '2018-11-09 18:41:19', '2018-11-09 18:36:42'),
(148, 148, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2018-11-15 15:26:39', '2018-11-15 15:26:39'),
(149, 149, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2018-11-28 19:45:35', '2018-11-28 19:45:35'),
(150, 150, 'SV', 1, 0, 0, 5000, 7, 0, 100, 7, 0, 0, 0, '2018-12-28 21:26:31', '2018-11-28 19:50:11'),
(151, 151, 'SV', 1, 0, 0, 10000, 3, 0, 100, 7, 0, 0, 0, '2018-11-30 08:11:39', '2018-11-30 08:08:41'),
(152, 152, 'SV', 1, 100, 0, 548, 11, 0, 100, 7, 0, 0, 0, '2018-12-13 07:16:12', '2018-12-06 07:28:54'),
(153, 153, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2019-01-17 14:31:10', '2019-01-17 14:31:10'),
(154, 154, 'SV', 1, 0, 0, 10000, 3, 0, 100, 7, 0, 0, 0, '2019-01-17 16:46:14', '2019-01-17 16:43:17'),
(155, 155, 'SV', 1, 0, 0, 0, 0, 0, 100, 7, 0, 0, 0, '2019-03-28 17:28:01', '2019-03-28 17:28:01'),
(156, 156, 'SV', 1, 0, 0, 10400, 4, 0, 100, 7, 0, 0, 0, '2019-03-28 17:37:47', '2019-03-28 17:29:26'),
(157, 157, 'SV', 1, 0, 0, 10150, 4, 0, 100, 7, 0, 0, 0, '2019-05-16 23:20:38', '2019-05-16 23:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `users_tasks`
--

CREATE TABLE `users_tasks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` int(3) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_tasks`
--

INSERT INTO `users_tasks` (`id`, `user_id`, `time`, `updated_at`, `created_at`) VALUES
(1, 1, 10, '2019-03-13 10:43:19', '2018-09-21 17:50:42'),
(2, 2, 30, '2019-06-14 05:01:38', '2018-09-21 17:54:33'),
(3, 3, 10, '2019-01-29 13:02:40', '2018-09-21 17:54:50'),
(4, 4, 40, '2018-09-24 08:58:13', '2018-09-21 18:00:24'),
(5, 5, 15, '2018-09-25 20:05:39', '2018-09-21 18:07:20'),
(6, 6, 15, '2018-09-27 11:16:17', '2018-09-21 18:16:31'),
(7, 7, 0, '2018-10-12 16:14:36', '2018-09-21 18:18:28'),
(8, 8, 0, '2018-10-14 21:03:02', '2018-09-21 18:23:09'),
(9, 9, 30, '2018-09-30 10:36:03', '2018-09-21 18:57:51'),
(10, 10, 0, '2018-09-22 15:11:53', '2018-09-21 18:58:25'),
(11, 11, 0, '2018-09-21 20:26:13', '2018-09-21 20:26:13'),
(12, 12, 15, '2019-04-24 07:46:56', '2018-09-21 20:29:57'),
(13, 13, 25, '2018-12-05 10:41:19', '2018-09-21 22:08:10'),
(14, 14, 0, '2018-09-21 22:20:33', '2018-09-21 22:11:38'),
(15, 15, 0, '2018-09-21 22:39:38', '2018-09-21 22:39:38'),
(16, 16, 30, '2018-09-21 23:44:39', '2018-09-21 23:42:39'),
(17, 17, 35, '2018-09-22 00:18:03', '2018-09-22 00:13:00'),
(18, 18, 25, '2018-09-22 01:09:52', '2018-09-22 00:58:41'),
(19, 19, 0, '2018-09-22 08:08:44', '2018-09-22 08:08:44'),
(20, 20, 10, '2018-09-22 12:17:46', '2018-09-22 08:11:25'),
(21, 21, 0, '2018-09-22 08:57:54', '2018-09-22 08:49:54'),
(22, 22, 30, '2019-04-16 20:26:09', '2018-09-22 08:50:03'),
(23, 23, 0, '2018-09-22 09:40:49', '2018-09-22 09:40:49'),
(24, 24, 0, '2018-09-22 09:52:21', '2018-09-22 09:52:21'),
(25, 25, 30, '2018-09-22 10:23:49', '2018-09-22 10:01:53'),
(26, 26, 0, '2018-09-22 10:20:50', '2018-09-22 10:07:51'),
(27, 27, 15, '2018-10-02 09:11:02', '2018-09-22 10:32:20'),
(28, 28, 0, '2018-09-22 10:35:55', '2018-09-22 10:35:55'),
(29, 29, 0, '2018-09-22 14:19:59', '2018-09-22 14:19:59'),
(30, 30, 10, '2018-09-24 09:50:38', '2018-09-22 14:22:40'),
(32, 32, 0, '2018-09-22 16:09:48', '2018-09-22 15:52:27'),
(33, 33, 10, '2018-09-22 19:38:36', '2018-09-22 18:27:17'),
(34, 34, 30, '2018-09-22 19:06:44', '2018-09-22 19:02:14'),
(35, 35, 25, '2018-09-27 21:13:09', '2018-09-22 21:23:48'),
(36, 36, 15, '2018-09-22 21:52:29', '2018-09-22 21:43:28'),
(37, 37, 30, '2018-09-23 06:07:41', '2018-09-23 05:48:24'),
(38, 38, 0, '2018-09-23 05:49:27', '2018-09-23 05:49:27'),
(39, 39, 10, '2018-09-23 06:13:43', '2018-09-23 06:02:17'),
(40, 40, 10, '2018-09-23 06:28:47', '2018-09-23 06:19:30'),
(41, 41, 30, '2018-09-23 07:00:23', '2018-09-23 06:43:51'),
(42, 42, 0, '2018-09-23 06:53:09', '2018-09-23 06:43:57'),
(43, 43, 35, '2018-09-23 18:28:00', '2018-09-23 06:59:28'),
(44, 44, 0, '2018-09-23 07:03:30', '2018-09-23 07:00:38'),
(45, 45, 15, '2018-09-23 07:11:54', '2018-09-23 07:06:17'),
(46, 46, 10, '2018-09-23 09:50:11', '2018-09-23 07:20:49'),
(47, 47, 0, '2018-09-23 08:53:32', '2018-09-23 07:23:31'),
(48, 48, 30, '2018-09-25 10:55:48', '2018-09-23 07:43:05'),
(49, 49, 30, '2019-06-14 11:51:33', '2018-09-23 07:45:09'),
(50, 50, 0, '2018-09-23 07:45:29', '2018-09-23 07:45:29'),
(51, 51, 0, '2018-09-23 08:07:25', '2018-09-23 08:07:25'),
(52, 52, 30, '2018-09-23 08:42:32', '2018-09-23 08:21:07'),
(53, 53, 0, '2018-10-12 17:18:36', '2018-09-23 08:49:09'),
(54, 54, 0, '2018-09-23 09:03:55', '2018-09-23 08:58:58'),
(55, 55, 10, '2018-09-24 20:49:12', '2018-09-23 09:04:43'),
(56, 56, 35, '2018-11-04 23:07:33', '2018-09-23 09:35:35'),
(57, 57, 30, '2018-09-23 10:36:27', '2018-09-23 10:22:30'),
(58, 58, 10, '2018-09-23 12:52:55', '2018-09-23 12:48:16'),
(59, 59, 0, '2018-10-13 20:41:37', '2018-09-23 14:47:48'),
(60, 60, 30, '2018-09-23 14:53:05', '2018-09-23 14:47:50'),
(61, 61, 35, '2018-09-23 15:57:08', '2018-09-23 15:47:03'),
(62, 62, 0, '2018-09-23 16:46:06', '2018-09-23 16:46:06'),
(63, 63, 0, '2018-09-23 17:07:13', '2018-09-23 17:07:13'),
(64, 64, 0, '2018-09-23 19:13:31', '2018-09-23 19:13:31'),
(65, 65, 30, '2018-09-23 20:34:42', '2018-09-23 19:33:01'),
(66, 66, 0, '2018-09-27 08:51:22', '2018-09-23 20:00:03'),
(67, 67, 30, '2018-09-23 22:38:47', '2018-09-23 22:15:45'),
(68, 68, 0, '2018-09-24 05:10:26', '2018-09-24 05:10:26'),
(69, 69, 0, '2018-09-24 07:18:41', '2018-09-24 07:18:41'),
(70, 70, 20, '2018-09-24 08:54:30', '2018-09-24 08:45:07'),
(71, 71, 30, '2018-09-24 08:56:58', '2018-09-24 08:48:53'),
(72, 72, 10, '2018-09-24 09:00:30', '2018-09-24 08:49:46'),
(73, 73, 20, '2018-09-24 12:07:35', '2018-09-24 12:05:57'),
(74, 74, 30, '2018-09-24 12:58:12', '2018-09-24 12:49:48'),
(75, 75, 25, '2018-09-25 19:44:59', '2018-09-24 13:27:11'),
(76, 76, 10, '2018-09-24 17:34:01', '2018-09-24 17:24:57'),
(77, 77, 0, '2018-09-24 17:52:28', '2018-09-24 17:52:28'),
(78, 78, 30, '2018-09-24 19:59:01', '2018-09-24 18:38:22'),
(79, 79, 0, '2018-09-24 18:55:18', '2018-09-24 18:55:18'),
(80, 80, 0, '2018-09-24 19:47:48', '2018-09-24 19:47:48'),
(81, 81, 0, '2018-09-24 20:07:43', '2018-09-24 20:07:43'),
(82, 82, 40, '2018-09-24 20:36:21', '2018-09-24 20:33:53'),
(83, 83, 10, '2018-09-29 07:13:56', '2018-09-25 02:56:41'),
(84, 84, 0, '2018-09-25 06:44:45', '2018-09-25 06:44:45'),
(85, 85, 0, '2018-09-25 08:38:55', '2018-09-25 08:33:46'),
(86, 86, 90, '2018-09-25 09:01:48', '2018-09-25 08:53:37'),
(87, 87, 30, '2018-09-25 10:40:01', '2018-09-25 10:20:41'),
(88, 88, 30, '2018-09-28 04:21:52', '2018-09-25 14:52:50'),
(89, 89, 0, '2018-11-04 13:20:04', '2018-09-25 15:12:39'),
(90, 90, 25, '2018-09-26 13:20:54', '2018-09-25 16:27:28'),
(91, 91, 0, '2019-01-01 22:54:58', '2018-09-25 18:02:19'),
(92, 92, 0, '2018-09-25 18:29:11', '2018-09-25 18:29:11'),
(93, 93, 0, '2018-09-25 18:44:17', '2018-09-25 18:39:49'),
(94, 94, 0, '2018-09-25 19:19:12', '2018-09-25 19:10:06'),
(95, 95, 0, '2018-09-25 21:14:33', '2018-09-25 21:14:33'),
(96, 96, 0, '2018-09-25 21:19:31', '2018-09-25 21:19:31'),
(97, 97, 0, '2018-09-26 03:55:14', '2018-09-26 03:49:07'),
(98, 98, 10, '2018-09-26 06:31:44', '2018-09-26 06:26:42'),
(99, 99, 0, '2018-09-26 07:46:06', '2018-09-26 07:46:06'),
(100, 100, 35, '2018-09-26 10:49:43', '2018-09-26 07:59:34'),
(101, 101, 0, '2018-09-26 08:06:35', '2018-09-26 08:06:35'),
(102, 102, 30, '2018-09-27 09:03:51', '2018-09-26 08:52:40'),
(103, 103, 0, '2018-09-26 10:18:28', '2018-09-26 10:09:08'),
(104, 104, 0, '2018-09-26 10:20:36', '2018-09-26 10:14:32'),
(105, 105, 0, '2018-09-26 17:07:15', '2018-09-26 17:07:15'),
(106, 106, 0, '2018-09-27 11:33:13', '2018-09-26 17:15:43'),
(107, 107, 30, '2018-09-26 18:30:42', '2018-09-26 18:19:53'),
(108, 108, 0, '2018-10-13 11:41:03', '2018-09-26 18:34:59'),
(109, 109, 0, '2018-09-26 19:00:40', '2018-09-26 19:00:40'),
(110, 110, 0, '2018-09-26 19:08:35', '2018-09-26 19:08:35'),
(111, 111, 0, '2018-09-26 19:57:21', '2018-09-26 19:57:21'),
(112, 112, 10, '2018-09-26 20:08:09', '2018-09-26 20:01:14'),
(113, 113, 30, '2018-09-27 09:19:50', '2018-09-27 09:04:40'),
(114, 114, 15, '2018-10-10 16:58:33', '2018-09-27 12:40:07'),
(115, 115, 25, '2018-09-27 14:42:16', '2018-09-27 14:03:37'),
(116, 116, 0, '2018-09-27 15:10:14', '2018-09-27 15:10:14'),
(117, 117, 15, '2018-10-23 16:30:16', '2018-09-27 15:46:18'),
(118, 118, 25, '2018-09-28 12:48:12', '2018-09-28 12:39:25'),
(119, 119, 0, '2018-09-28 15:45:32', '2018-09-28 15:45:32'),
(120, 120, 0, '2018-10-04 19:25:02', '2018-09-28 20:23:22'),
(121, 121, 0, '2018-09-29 08:10:51', '2018-09-29 08:10:51'),
(122, 122, 15, '2018-09-29 21:39:01', '2018-09-29 10:35:15'),
(123, 123, 30, '2018-10-01 12:52:31', '2018-09-30 09:15:18'),
(124, 124, 0, '2018-10-01 12:54:44', '2018-10-01 12:54:44'),
(125, 125, 10, '2018-10-04 08:41:11', '2018-10-01 15:05:32'),
(126, 126, 0, '2018-10-02 15:34:38', '2018-10-02 15:34:38'),
(127, 127, 0, '2018-10-02 15:49:09', '2018-10-02 15:36:26'),
(128, 128, 0, '2018-10-03 10:37:50', '2018-10-03 10:37:50'),
(129, 129, 0, '2018-10-03 10:39:59', '2018-10-03 10:39:59'),
(130, 130, 0, '2018-10-03 11:19:24', '2018-10-03 10:50:55'),
(131, 131, 0, '2018-10-06 08:58:34', '2018-10-06 08:58:34'),
(132, 132, 0, '2018-10-06 11:39:09', '2018-10-06 11:39:09'),
(133, 133, 0, '2018-10-06 13:33:26', '2018-10-06 13:33:26'),
(134, 134, 0, '2018-10-07 19:10:27', '2018-10-07 19:10:27'),
(135, 135, 310, '2018-10-07 19:41:07', '2018-10-07 19:30:04'),
(136, 136, 10, '2018-10-08 17:30:08', '2018-10-08 17:23:34'),
(137, 137, 10, '2018-10-10 13:49:00', '2018-10-09 03:03:57'),
(138, 138, 0, '2018-10-09 16:21:02', '2018-10-09 16:21:02'),
(139, 139, 15, '2018-10-11 15:28:11', '2018-10-11 15:25:19'),
(140, 140, 0, '2018-10-17 05:10:36', '2018-10-17 05:10:36'),
(141, 141, 30, '2018-10-19 06:50:25', '2018-10-19 05:07:23'),
(142, 142, 0, '2018-10-25 11:00:08', '2018-10-25 11:00:08'),
(143, 143, 0, '2018-10-26 06:55:24', '2018-10-26 06:55:24'),
(144, 144, 0, '2018-10-28 17:40:12', '2018-10-28 17:40:12'),
(145, 145, 15, '2018-11-04 09:23:39', '2018-11-04 09:21:11'),
(146, 146, 0, '2018-11-09 18:35:08', '2018-11-09 18:35:08'),
(147, 147, 30, '2018-11-09 18:41:19', '2018-11-09 18:36:42'),
(148, 148, 0, '2018-11-15 15:26:39', '2018-11-15 15:26:39'),
(149, 149, 0, '2018-11-28 19:45:35', '2018-11-28 19:45:35'),
(150, 150, 30, '2018-12-28 21:26:31', '2018-11-28 19:50:11'),
(151, 151, 0, '2018-11-30 08:12:06', '2018-11-30 08:08:41'),
(152, 152, 10, '2018-12-13 07:16:12', '2018-12-06 07:28:54'),
(153, 153, 0, '2019-01-17 14:31:10', '2019-01-17 14:31:10'),
(154, 154, 10, '2019-01-17 16:46:14', '2019-01-17 16:43:17'),
(155, 155, 0, '2019-03-28 17:28:01', '2019-03-28 17:28:01'),
(156, 156, 0, '2019-03-28 17:37:26', '2019-03-28 17:29:26'),
(157, 157, 30, '2019-05-16 23:20:38', '2019-05-16 23:14:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clans`
--
ALTER TABLE `clans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drinks_drugs`
--
ALTER TABLE `drinks_drugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drzavi`
--
ALTER TABLE `drzavi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `missions`
--
ALTER TABLE `missions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raboti`
--
ALTER TABLE `raboti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_banks`
--
ALTER TABLE `users_banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_contacts`
--
ALTER TABLE `users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_crimes`
--
ALTER TABLE `users_crimes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_energy`
--
ALTER TABLE `users_energy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_inventories`
--
ALTER TABLE `users_inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_prom`
--
ALTER TABLE `users_prom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_tasks`
--
ALTER TABLE `users_tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `clans`
--
ALTER TABLE `clans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `drinks_drugs`
--
ALTER TABLE `drinks_drugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `drzavi`
--
ALTER TABLE `drzavi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `missions`
--
ALTER TABLE `missions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `raboti`
--
ALTER TABLE `raboti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `users_banks`
--
ALTER TABLE `users_banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `users_contacts`
--
ALTER TABLE `users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `users_crimes`
--
ALTER TABLE `users_crimes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_energy`
--
ALTER TABLE `users_energy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `users_inventories`
--
ALTER TABLE `users_inventories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `users_permissions`
--
ALTER TABLE `users_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `users_prom`
--
ALTER TABLE `users_prom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `users_tasks`
--
ALTER TABLE `users_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
