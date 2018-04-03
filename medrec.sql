-- phpMyAdmin SQL Dump
-- version 4.6.6deb1+deb.cihar.com~xenial.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 01, 2018 at 08:07 PM
-- Server version: 10.3.5-MariaDB-10.3.5+maria~xenial-log
-- PHP Version: 7.0.28-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medrec`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group`
--

UPDATE `auth_group` SET `id` = 3,`name` = 'Admin' WHERE `auth_group`.`id` = 3;
UPDATE `auth_group` SET `id` = 1,`name` = 'Doctor' WHERE `auth_group`.`id` = 1;
UPDATE `auth_group` SET `id` = 4,`name` = 'Encoder' WHERE `auth_group`.`id` = 4;
UPDATE `auth_group` SET `id` = 2,`name` = 'Secretary' WHERE `auth_group`.`id` = 2;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group_permissions`
--

UPDATE `auth_group_permissions` SET `id` = 7,`group_id` = 1,`permission_id` = 10 WHERE `auth_group_permissions`.`id` = 7;
UPDATE `auth_group_permissions` SET `id` = 8,`group_id` = 1,`permission_id` = 11 WHERE `auth_group_permissions`.`id` = 8;
UPDATE `auth_group_permissions` SET `id` = 9,`group_id` = 1,`permission_id` = 13 WHERE `auth_group_permissions`.`id` = 9;
UPDATE `auth_group_permissions` SET `id` = 10,`group_id` = 1,`permission_id` = 14 WHERE `auth_group_permissions`.`id` = 10;
UPDATE `auth_group_permissions` SET `id` = 11,`group_id` = 1,`permission_id` = 16 WHERE `auth_group_permissions`.`id` = 11;
UPDATE `auth_group_permissions` SET `id` = 12,`group_id` = 1,`permission_id` = 17 WHERE `auth_group_permissions`.`id` = 12;
UPDATE `auth_group_permissions` SET `id` = 13,`group_id` = 1,`permission_id` = 19 WHERE `auth_group_permissions`.`id` = 13;
UPDATE `auth_group_permissions` SET `id` = 14,`group_id` = 1,`permission_id` = 20 WHERE `auth_group_permissions`.`id` = 14;
UPDATE `auth_group_permissions` SET `id` = 15,`group_id` = 1,`permission_id` = 22 WHERE `auth_group_permissions`.`id` = 15;
UPDATE `auth_group_permissions` SET `id` = 16,`group_id` = 1,`permission_id` = 23 WHERE `auth_group_permissions`.`id` = 16;
UPDATE `auth_group_permissions` SET `id` = 17,`group_id` = 1,`permission_id` = 25 WHERE `auth_group_permissions`.`id` = 17;
UPDATE `auth_group_permissions` SET `id` = 18,`group_id` = 1,`permission_id` = 26 WHERE `auth_group_permissions`.`id` = 18;
UPDATE `auth_group_permissions` SET `id` = 19,`group_id` = 1,`permission_id` = 28 WHERE `auth_group_permissions`.`id` = 19;
UPDATE `auth_group_permissions` SET `id` = 20,`group_id` = 1,`permission_id` = 29 WHERE `auth_group_permissions`.`id` = 20;
UPDATE `auth_group_permissions` SET `id` = 21,`group_id` = 1,`permission_id` = 31 WHERE `auth_group_permissions`.`id` = 21;
UPDATE `auth_group_permissions` SET `id` = 22,`group_id` = 1,`permission_id` = 32 WHERE `auth_group_permissions`.`id` = 22;
UPDATE `auth_group_permissions` SET `id` = 23,`group_id` = 1,`permission_id` = 34 WHERE `auth_group_permissions`.`id` = 23;
UPDATE `auth_group_permissions` SET `id` = 24,`group_id` = 1,`permission_id` = 35 WHERE `auth_group_permissions`.`id` = 24;
UPDATE `auth_group_permissions` SET `id` = 25,`group_id` = 1,`permission_id` = 37 WHERE `auth_group_permissions`.`id` = 25;
UPDATE `auth_group_permissions` SET `id` = 26,`group_id` = 1,`permission_id` = 38 WHERE `auth_group_permissions`.`id` = 26;
UPDATE `auth_group_permissions` SET `id` = 27,`group_id` = 1,`permission_id` = 40 WHERE `auth_group_permissions`.`id` = 27;
UPDATE `auth_group_permissions` SET `id` = 28,`group_id` = 1,`permission_id` = 41 WHERE `auth_group_permissions`.`id` = 28;
UPDATE `auth_group_permissions` SET `id` = 29,`group_id` = 1,`permission_id` = 43 WHERE `auth_group_permissions`.`id` = 29;
UPDATE `auth_group_permissions` SET `id` = 30,`group_id` = 1,`permission_id` = 44 WHERE `auth_group_permissions`.`id` = 30;
UPDATE `auth_group_permissions` SET `id` = 31,`group_id` = 1,`permission_id` = 46 WHERE `auth_group_permissions`.`id` = 31;
UPDATE `auth_group_permissions` SET `id` = 32,`group_id` = 1,`permission_id` = 47 WHERE `auth_group_permissions`.`id` = 32;
UPDATE `auth_group_permissions` SET `id` = 33,`group_id` = 1,`permission_id` = 49 WHERE `auth_group_permissions`.`id` = 33;
UPDATE `auth_group_permissions` SET `id` = 34,`group_id` = 1,`permission_id` = 50 WHERE `auth_group_permissions`.`id` = 34;
UPDATE `auth_group_permissions` SET `id` = 35,`group_id` = 1,`permission_id` = 52 WHERE `auth_group_permissions`.`id` = 35;
UPDATE `auth_group_permissions` SET `id` = 36,`group_id` = 1,`permission_id` = 53 WHERE `auth_group_permissions`.`id` = 36;
UPDATE `auth_group_permissions` SET `id` = 37,`group_id` = 1,`permission_id` = 55 WHERE `auth_group_permissions`.`id` = 37;
UPDATE `auth_group_permissions` SET `id` = 38,`group_id` = 1,`permission_id` = 56 WHERE `auth_group_permissions`.`id` = 38;
UPDATE `auth_group_permissions` SET `id` = 39,`group_id` = 1,`permission_id` = 58 WHERE `auth_group_permissions`.`id` = 39;
UPDATE `auth_group_permissions` SET `id` = 40,`group_id` = 1,`permission_id` = 59 WHERE `auth_group_permissions`.`id` = 40;
UPDATE `auth_group_permissions` SET `id` = 41,`group_id` = 1,`permission_id` = 61 WHERE `auth_group_permissions`.`id` = 41;
UPDATE `auth_group_permissions` SET `id` = 42,`group_id` = 1,`permission_id` = 62 WHERE `auth_group_permissions`.`id` = 42;
UPDATE `auth_group_permissions` SET `id` = 43,`group_id` = 1,`permission_id` = 64 WHERE `auth_group_permissions`.`id` = 43;
UPDATE `auth_group_permissions` SET `id` = 44,`group_id` = 1,`permission_id` = 65 WHERE `auth_group_permissions`.`id` = 44;
UPDATE `auth_group_permissions` SET `id` = 45,`group_id` = 1,`permission_id` = 67 WHERE `auth_group_permissions`.`id` = 45;
UPDATE `auth_group_permissions` SET `id` = 46,`group_id` = 1,`permission_id` = 68 WHERE `auth_group_permissions`.`id` = 46;
UPDATE `auth_group_permissions` SET `id` = 47,`group_id` = 1,`permission_id` = 70 WHERE `auth_group_permissions`.`id` = 47;
UPDATE `auth_group_permissions` SET `id` = 48,`group_id` = 1,`permission_id` = 71 WHERE `auth_group_permissions`.`id` = 48;
UPDATE `auth_group_permissions` SET `id` = 49,`group_id` = 1,`permission_id` = 73 WHERE `auth_group_permissions`.`id` = 49;
UPDATE `auth_group_permissions` SET `id` = 50,`group_id` = 1,`permission_id` = 74 WHERE `auth_group_permissions`.`id` = 50;
UPDATE `auth_group_permissions` SET `id` = 51,`group_id` = 1,`permission_id` = 76 WHERE `auth_group_permissions`.`id` = 51;
UPDATE `auth_group_permissions` SET `id` = 52,`group_id` = 1,`permission_id` = 77 WHERE `auth_group_permissions`.`id` = 52;
UPDATE `auth_group_permissions` SET `id` = 53,`group_id` = 1,`permission_id` = 79 WHERE `auth_group_permissions`.`id` = 53;
UPDATE `auth_group_permissions` SET `id` = 54,`group_id` = 1,`permission_id` = 80 WHERE `auth_group_permissions`.`id` = 54;
UPDATE `auth_group_permissions` SET `id` = 55,`group_id` = 1,`permission_id` = 82 WHERE `auth_group_permissions`.`id` = 55;
UPDATE `auth_group_permissions` SET `id` = 56,`group_id` = 1,`permission_id` = 83 WHERE `auth_group_permissions`.`id` = 56;
UPDATE `auth_group_permissions` SET `id` = 57,`group_id` = 1,`permission_id` = 85 WHERE `auth_group_permissions`.`id` = 57;
UPDATE `auth_group_permissions` SET `id` = 58,`group_id` = 1,`permission_id` = 86 WHERE `auth_group_permissions`.`id` = 58;
UPDATE `auth_group_permissions` SET `id` = 59,`group_id` = 1,`permission_id` = 88 WHERE `auth_group_permissions`.`id` = 59;
UPDATE `auth_group_permissions` SET `id` = 60,`group_id` = 1,`permission_id` = 89 WHERE `auth_group_permissions`.`id` = 60;
UPDATE `auth_group_permissions` SET `id` = 61,`group_id` = 1,`permission_id` = 91 WHERE `auth_group_permissions`.`id` = 61;
UPDATE `auth_group_permissions` SET `id` = 62,`group_id` = 1,`permission_id` = 92 WHERE `auth_group_permissions`.`id` = 62;
UPDATE `auth_group_permissions` SET `id` = 63,`group_id` = 1,`permission_id` = 94 WHERE `auth_group_permissions`.`id` = 63;
UPDATE `auth_group_permissions` SET `id` = 64,`group_id` = 1,`permission_id` = 95 WHERE `auth_group_permissions`.`id` = 64;
UPDATE `auth_group_permissions` SET `id` = 77,`group_id` = 2,`permission_id` = 19 WHERE `auth_group_permissions`.`id` = 77;
UPDATE `auth_group_permissions` SET `id` = 78,`group_id` = 2,`permission_id` = 20 WHERE `auth_group_permissions`.`id` = 78;
UPDATE `auth_group_permissions` SET `id` = 79,`group_id` = 2,`permission_id` = 22 WHERE `auth_group_permissions`.`id` = 79;
UPDATE `auth_group_permissions` SET `id` = 80,`group_id` = 2,`permission_id` = 23 WHERE `auth_group_permissions`.`id` = 80;
UPDATE `auth_group_permissions` SET `id` = 81,`group_id` = 2,`permission_id` = 25 WHERE `auth_group_permissions`.`id` = 81;
UPDATE `auth_group_permissions` SET `id` = 82,`group_id` = 2,`permission_id` = 26 WHERE `auth_group_permissions`.`id` = 82;
UPDATE `auth_group_permissions` SET `id` = 83,`group_id` = 2,`permission_id` = 28 WHERE `auth_group_permissions`.`id` = 83;
UPDATE `auth_group_permissions` SET `id` = 84,`group_id` = 2,`permission_id` = 29 WHERE `auth_group_permissions`.`id` = 84;
UPDATE `auth_group_permissions` SET `id` = 85,`group_id` = 2,`permission_id` = 31 WHERE `auth_group_permissions`.`id` = 85;
UPDATE `auth_group_permissions` SET `id` = 86,`group_id` = 2,`permission_id` = 32 WHERE `auth_group_permissions`.`id` = 86;
UPDATE `auth_group_permissions` SET `id` = 87,`group_id` = 2,`permission_id` = 34 WHERE `auth_group_permissions`.`id` = 87;
UPDATE `auth_group_permissions` SET `id` = 88,`group_id` = 2,`permission_id` = 35 WHERE `auth_group_permissions`.`id` = 88;
UPDATE `auth_group_permissions` SET `id` = 89,`group_id` = 2,`permission_id` = 37 WHERE `auth_group_permissions`.`id` = 89;
UPDATE `auth_group_permissions` SET `id` = 90,`group_id` = 2,`permission_id` = 38 WHERE `auth_group_permissions`.`id` = 90;
UPDATE `auth_group_permissions` SET `id` = 91,`group_id` = 2,`permission_id` = 40 WHERE `auth_group_permissions`.`id` = 91;
UPDATE `auth_group_permissions` SET `id` = 92,`group_id` = 2,`permission_id` = 41 WHERE `auth_group_permissions`.`id` = 92;
UPDATE `auth_group_permissions` SET `id` = 93,`group_id` = 2,`permission_id` = 43 WHERE `auth_group_permissions`.`id` = 93;
UPDATE `auth_group_permissions` SET `id` = 94,`group_id` = 2,`permission_id` = 44 WHERE `auth_group_permissions`.`id` = 94;
UPDATE `auth_group_permissions` SET `id` = 95,`group_id` = 2,`permission_id` = 46 WHERE `auth_group_permissions`.`id` = 95;
UPDATE `auth_group_permissions` SET `id` = 96,`group_id` = 2,`permission_id` = 47 WHERE `auth_group_permissions`.`id` = 96;
UPDATE `auth_group_permissions` SET `id` = 97,`group_id` = 2,`permission_id` = 49 WHERE `auth_group_permissions`.`id` = 97;
UPDATE `auth_group_permissions` SET `id` = 98,`group_id` = 2,`permission_id` = 50 WHERE `auth_group_permissions`.`id` = 98;
UPDATE `auth_group_permissions` SET `id` = 99,`group_id` = 2,`permission_id` = 52 WHERE `auth_group_permissions`.`id` = 99;
UPDATE `auth_group_permissions` SET `id` = 100,`group_id` = 2,`permission_id` = 53 WHERE `auth_group_permissions`.`id` = 100;
UPDATE `auth_group_permissions` SET `id` = 101,`group_id` = 2,`permission_id` = 55 WHERE `auth_group_permissions`.`id` = 101;
UPDATE `auth_group_permissions` SET `id` = 102,`group_id` = 2,`permission_id` = 56 WHERE `auth_group_permissions`.`id` = 102;
UPDATE `auth_group_permissions` SET `id` = 103,`group_id` = 2,`permission_id` = 58 WHERE `auth_group_permissions`.`id` = 103;
UPDATE `auth_group_permissions` SET `id` = 104,`group_id` = 2,`permission_id` = 59 WHERE `auth_group_permissions`.`id` = 104;
UPDATE `auth_group_permissions` SET `id` = 105,`group_id` = 2,`permission_id` = 61 WHERE `auth_group_permissions`.`id` = 105;
UPDATE `auth_group_permissions` SET `id` = 106,`group_id` = 2,`permission_id` = 62 WHERE `auth_group_permissions`.`id` = 106;
UPDATE `auth_group_permissions` SET `id` = 107,`group_id` = 2,`permission_id` = 64 WHERE `auth_group_permissions`.`id` = 107;
UPDATE `auth_group_permissions` SET `id` = 108,`group_id` = 2,`permission_id` = 65 WHERE `auth_group_permissions`.`id` = 108;
UPDATE `auth_group_permissions` SET `id` = 109,`group_id` = 2,`permission_id` = 67 WHERE `auth_group_permissions`.`id` = 109;
UPDATE `auth_group_permissions` SET `id` = 110,`group_id` = 2,`permission_id` = 68 WHERE `auth_group_permissions`.`id` = 110;
UPDATE `auth_group_permissions` SET `id` = 111,`group_id` = 2,`permission_id` = 70 WHERE `auth_group_permissions`.`id` = 111;
UPDATE `auth_group_permissions` SET `id` = 112,`group_id` = 2,`permission_id` = 71 WHERE `auth_group_permissions`.`id` = 112;
UPDATE `auth_group_permissions` SET `id` = 113,`group_id` = 2,`permission_id` = 73 WHERE `auth_group_permissions`.`id` = 113;
UPDATE `auth_group_permissions` SET `id` = 114,`group_id` = 2,`permission_id` = 74 WHERE `auth_group_permissions`.`id` = 114;
UPDATE `auth_group_permissions` SET `id` = 115,`group_id` = 2,`permission_id` = 76 WHERE `auth_group_permissions`.`id` = 115;
UPDATE `auth_group_permissions` SET `id` = 116,`group_id` = 2,`permission_id` = 77 WHERE `auth_group_permissions`.`id` = 116;
UPDATE `auth_group_permissions` SET `id` = 117,`group_id` = 2,`permission_id` = 79 WHERE `auth_group_permissions`.`id` = 117;
UPDATE `auth_group_permissions` SET `id` = 118,`group_id` = 2,`permission_id` = 80 WHERE `auth_group_permissions`.`id` = 118;
UPDATE `auth_group_permissions` SET `id` = 119,`group_id` = 2,`permission_id` = 82 WHERE `auth_group_permissions`.`id` = 119;
UPDATE `auth_group_permissions` SET `id` = 120,`group_id` = 2,`permission_id` = 83 WHERE `auth_group_permissions`.`id` = 120;
UPDATE `auth_group_permissions` SET `id` = 121,`group_id` = 2,`permission_id` = 85 WHERE `auth_group_permissions`.`id` = 121;
UPDATE `auth_group_permissions` SET `id` = 122,`group_id` = 2,`permission_id` = 86 WHERE `auth_group_permissions`.`id` = 122;
UPDATE `auth_group_permissions` SET `id` = 123,`group_id` = 2,`permission_id` = 88 WHERE `auth_group_permissions`.`id` = 123;
UPDATE `auth_group_permissions` SET `id` = 124,`group_id` = 2,`permission_id` = 89 WHERE `auth_group_permissions`.`id` = 124;
UPDATE `auth_group_permissions` SET `id` = 129,`group_id` = 3,`permission_id` = 1 WHERE `auth_group_permissions`.`id` = 129;
UPDATE `auth_group_permissions` SET `id` = 130,`group_id` = 3,`permission_id` = 2 WHERE `auth_group_permissions`.`id` = 130;
UPDATE `auth_group_permissions` SET `id` = 131,`group_id` = 3,`permission_id` = 3 WHERE `auth_group_permissions`.`id` = 131;
UPDATE `auth_group_permissions` SET `id` = 132,`group_id` = 3,`permission_id` = 4 WHERE `auth_group_permissions`.`id` = 132;
UPDATE `auth_group_permissions` SET `id` = 133,`group_id` = 3,`permission_id` = 5 WHERE `auth_group_permissions`.`id` = 133;
UPDATE `auth_group_permissions` SET `id` = 134,`group_id` = 3,`permission_id` = 6 WHERE `auth_group_permissions`.`id` = 134;
UPDATE `auth_group_permissions` SET `id` = 135,`group_id` = 3,`permission_id` = 7 WHERE `auth_group_permissions`.`id` = 135;
UPDATE `auth_group_permissions` SET `id` = 136,`group_id` = 3,`permission_id` = 8 WHERE `auth_group_permissions`.`id` = 136;
UPDATE `auth_group_permissions` SET `id` = 137,`group_id` = 3,`permission_id` = 9 WHERE `auth_group_permissions`.`id` = 137;
UPDATE `auth_group_permissions` SET `id` = 138,`group_id` = 3,`permission_id` = 10 WHERE `auth_group_permissions`.`id` = 138;
UPDATE `auth_group_permissions` SET `id` = 139,`group_id` = 3,`permission_id` = 11 WHERE `auth_group_permissions`.`id` = 139;
UPDATE `auth_group_permissions` SET `id` = 140,`group_id` = 3,`permission_id` = 12 WHERE `auth_group_permissions`.`id` = 140;
UPDATE `auth_group_permissions` SET `id` = 141,`group_id` = 3,`permission_id` = 13 WHERE `auth_group_permissions`.`id` = 141;
UPDATE `auth_group_permissions` SET `id` = 142,`group_id` = 3,`permission_id` = 14 WHERE `auth_group_permissions`.`id` = 142;
UPDATE `auth_group_permissions` SET `id` = 143,`group_id` = 3,`permission_id` = 15 WHERE `auth_group_permissions`.`id` = 143;
UPDATE `auth_group_permissions` SET `id` = 144,`group_id` = 3,`permission_id` = 16 WHERE `auth_group_permissions`.`id` = 144;
UPDATE `auth_group_permissions` SET `id` = 145,`group_id` = 3,`permission_id` = 17 WHERE `auth_group_permissions`.`id` = 145;
UPDATE `auth_group_permissions` SET `id` = 146,`group_id` = 3,`permission_id` = 18 WHERE `auth_group_permissions`.`id` = 146;
UPDATE `auth_group_permissions` SET `id` = 147,`group_id` = 3,`permission_id` = 19 WHERE `auth_group_permissions`.`id` = 147;
UPDATE `auth_group_permissions` SET `id` = 148,`group_id` = 3,`permission_id` = 20 WHERE `auth_group_permissions`.`id` = 148;
UPDATE `auth_group_permissions` SET `id` = 149,`group_id` = 3,`permission_id` = 21 WHERE `auth_group_permissions`.`id` = 149;
UPDATE `auth_group_permissions` SET `id` = 150,`group_id` = 3,`permission_id` = 22 WHERE `auth_group_permissions`.`id` = 150;
UPDATE `auth_group_permissions` SET `id` = 151,`group_id` = 3,`permission_id` = 23 WHERE `auth_group_permissions`.`id` = 151;
UPDATE `auth_group_permissions` SET `id` = 152,`group_id` = 3,`permission_id` = 24 WHERE `auth_group_permissions`.`id` = 152;
UPDATE `auth_group_permissions` SET `id` = 153,`group_id` = 3,`permission_id` = 25 WHERE `auth_group_permissions`.`id` = 153;
UPDATE `auth_group_permissions` SET `id` = 154,`group_id` = 3,`permission_id` = 26 WHERE `auth_group_permissions`.`id` = 154;
UPDATE `auth_group_permissions` SET `id` = 155,`group_id` = 3,`permission_id` = 27 WHERE `auth_group_permissions`.`id` = 155;
UPDATE `auth_group_permissions` SET `id` = 156,`group_id` = 3,`permission_id` = 28 WHERE `auth_group_permissions`.`id` = 156;
UPDATE `auth_group_permissions` SET `id` = 157,`group_id` = 3,`permission_id` = 29 WHERE `auth_group_permissions`.`id` = 157;
UPDATE `auth_group_permissions` SET `id` = 158,`group_id` = 3,`permission_id` = 30 WHERE `auth_group_permissions`.`id` = 158;
UPDATE `auth_group_permissions` SET `id` = 159,`group_id` = 3,`permission_id` = 31 WHERE `auth_group_permissions`.`id` = 159;
UPDATE `auth_group_permissions` SET `id` = 160,`group_id` = 3,`permission_id` = 32 WHERE `auth_group_permissions`.`id` = 160;
UPDATE `auth_group_permissions` SET `id` = 161,`group_id` = 3,`permission_id` = 33 WHERE `auth_group_permissions`.`id` = 161;
UPDATE `auth_group_permissions` SET `id` = 162,`group_id` = 3,`permission_id` = 34 WHERE `auth_group_permissions`.`id` = 162;
UPDATE `auth_group_permissions` SET `id` = 163,`group_id` = 3,`permission_id` = 35 WHERE `auth_group_permissions`.`id` = 163;
UPDATE `auth_group_permissions` SET `id` = 164,`group_id` = 3,`permission_id` = 36 WHERE `auth_group_permissions`.`id` = 164;
UPDATE `auth_group_permissions` SET `id` = 165,`group_id` = 3,`permission_id` = 37 WHERE `auth_group_permissions`.`id` = 165;
UPDATE `auth_group_permissions` SET `id` = 166,`group_id` = 3,`permission_id` = 38 WHERE `auth_group_permissions`.`id` = 166;
UPDATE `auth_group_permissions` SET `id` = 167,`group_id` = 3,`permission_id` = 39 WHERE `auth_group_permissions`.`id` = 167;
UPDATE `auth_group_permissions` SET `id` = 168,`group_id` = 3,`permission_id` = 40 WHERE `auth_group_permissions`.`id` = 168;
UPDATE `auth_group_permissions` SET `id` = 169,`group_id` = 3,`permission_id` = 41 WHERE `auth_group_permissions`.`id` = 169;
UPDATE `auth_group_permissions` SET `id` = 170,`group_id` = 3,`permission_id` = 42 WHERE `auth_group_permissions`.`id` = 170;
UPDATE `auth_group_permissions` SET `id` = 171,`group_id` = 3,`permission_id` = 43 WHERE `auth_group_permissions`.`id` = 171;
UPDATE `auth_group_permissions` SET `id` = 172,`group_id` = 3,`permission_id` = 44 WHERE `auth_group_permissions`.`id` = 172;
UPDATE `auth_group_permissions` SET `id` = 173,`group_id` = 3,`permission_id` = 45 WHERE `auth_group_permissions`.`id` = 173;
UPDATE `auth_group_permissions` SET `id` = 174,`group_id` = 3,`permission_id` = 46 WHERE `auth_group_permissions`.`id` = 174;
UPDATE `auth_group_permissions` SET `id` = 175,`group_id` = 3,`permission_id` = 47 WHERE `auth_group_permissions`.`id` = 175;
UPDATE `auth_group_permissions` SET `id` = 176,`group_id` = 3,`permission_id` = 48 WHERE `auth_group_permissions`.`id` = 176;
UPDATE `auth_group_permissions` SET `id` = 177,`group_id` = 3,`permission_id` = 49 WHERE `auth_group_permissions`.`id` = 177;
UPDATE `auth_group_permissions` SET `id` = 178,`group_id` = 3,`permission_id` = 50 WHERE `auth_group_permissions`.`id` = 178;
UPDATE `auth_group_permissions` SET `id` = 179,`group_id` = 3,`permission_id` = 51 WHERE `auth_group_permissions`.`id` = 179;
UPDATE `auth_group_permissions` SET `id` = 180,`group_id` = 3,`permission_id` = 52 WHERE `auth_group_permissions`.`id` = 180;
UPDATE `auth_group_permissions` SET `id` = 181,`group_id` = 3,`permission_id` = 53 WHERE `auth_group_permissions`.`id` = 181;
UPDATE `auth_group_permissions` SET `id` = 182,`group_id` = 3,`permission_id` = 54 WHERE `auth_group_permissions`.`id` = 182;
UPDATE `auth_group_permissions` SET `id` = 183,`group_id` = 3,`permission_id` = 55 WHERE `auth_group_permissions`.`id` = 183;
UPDATE `auth_group_permissions` SET `id` = 184,`group_id` = 3,`permission_id` = 56 WHERE `auth_group_permissions`.`id` = 184;
UPDATE `auth_group_permissions` SET `id` = 185,`group_id` = 3,`permission_id` = 57 WHERE `auth_group_permissions`.`id` = 185;
UPDATE `auth_group_permissions` SET `id` = 186,`group_id` = 3,`permission_id` = 58 WHERE `auth_group_permissions`.`id` = 186;
UPDATE `auth_group_permissions` SET `id` = 187,`group_id` = 3,`permission_id` = 59 WHERE `auth_group_permissions`.`id` = 187;
UPDATE `auth_group_permissions` SET `id` = 188,`group_id` = 3,`permission_id` = 60 WHERE `auth_group_permissions`.`id` = 188;
UPDATE `auth_group_permissions` SET `id` = 189,`group_id` = 3,`permission_id` = 61 WHERE `auth_group_permissions`.`id` = 189;
UPDATE `auth_group_permissions` SET `id` = 190,`group_id` = 3,`permission_id` = 62 WHERE `auth_group_permissions`.`id` = 190;
UPDATE `auth_group_permissions` SET `id` = 191,`group_id` = 3,`permission_id` = 63 WHERE `auth_group_permissions`.`id` = 191;
UPDATE `auth_group_permissions` SET `id` = 192,`group_id` = 3,`permission_id` = 64 WHERE `auth_group_permissions`.`id` = 192;
UPDATE `auth_group_permissions` SET `id` = 193,`group_id` = 3,`permission_id` = 65 WHERE `auth_group_permissions`.`id` = 193;
UPDATE `auth_group_permissions` SET `id` = 194,`group_id` = 3,`permission_id` = 66 WHERE `auth_group_permissions`.`id` = 194;
UPDATE `auth_group_permissions` SET `id` = 195,`group_id` = 3,`permission_id` = 67 WHERE `auth_group_permissions`.`id` = 195;
UPDATE `auth_group_permissions` SET `id` = 196,`group_id` = 3,`permission_id` = 68 WHERE `auth_group_permissions`.`id` = 196;
UPDATE `auth_group_permissions` SET `id` = 197,`group_id` = 3,`permission_id` = 69 WHERE `auth_group_permissions`.`id` = 197;
UPDATE `auth_group_permissions` SET `id` = 198,`group_id` = 3,`permission_id` = 70 WHERE `auth_group_permissions`.`id` = 198;
UPDATE `auth_group_permissions` SET `id` = 199,`group_id` = 3,`permission_id` = 71 WHERE `auth_group_permissions`.`id` = 199;
UPDATE `auth_group_permissions` SET `id` = 200,`group_id` = 3,`permission_id` = 72 WHERE `auth_group_permissions`.`id` = 200;
UPDATE `auth_group_permissions` SET `id` = 201,`group_id` = 3,`permission_id` = 73 WHERE `auth_group_permissions`.`id` = 201;
UPDATE `auth_group_permissions` SET `id` = 202,`group_id` = 3,`permission_id` = 74 WHERE `auth_group_permissions`.`id` = 202;
UPDATE `auth_group_permissions` SET `id` = 203,`group_id` = 3,`permission_id` = 75 WHERE `auth_group_permissions`.`id` = 203;
UPDATE `auth_group_permissions` SET `id` = 204,`group_id` = 3,`permission_id` = 76 WHERE `auth_group_permissions`.`id` = 204;
UPDATE `auth_group_permissions` SET `id` = 205,`group_id` = 3,`permission_id` = 77 WHERE `auth_group_permissions`.`id` = 205;
UPDATE `auth_group_permissions` SET `id` = 206,`group_id` = 3,`permission_id` = 78 WHERE `auth_group_permissions`.`id` = 206;
UPDATE `auth_group_permissions` SET `id` = 207,`group_id` = 3,`permission_id` = 79 WHERE `auth_group_permissions`.`id` = 207;
UPDATE `auth_group_permissions` SET `id` = 208,`group_id` = 3,`permission_id` = 80 WHERE `auth_group_permissions`.`id` = 208;
UPDATE `auth_group_permissions` SET `id` = 209,`group_id` = 3,`permission_id` = 81 WHERE `auth_group_permissions`.`id` = 209;
UPDATE `auth_group_permissions` SET `id` = 210,`group_id` = 3,`permission_id` = 82 WHERE `auth_group_permissions`.`id` = 210;
UPDATE `auth_group_permissions` SET `id` = 211,`group_id` = 3,`permission_id` = 83 WHERE `auth_group_permissions`.`id` = 211;
UPDATE `auth_group_permissions` SET `id` = 212,`group_id` = 3,`permission_id` = 84 WHERE `auth_group_permissions`.`id` = 212;
UPDATE `auth_group_permissions` SET `id` = 213,`group_id` = 3,`permission_id` = 85 WHERE `auth_group_permissions`.`id` = 213;
UPDATE `auth_group_permissions` SET `id` = 214,`group_id` = 3,`permission_id` = 86 WHERE `auth_group_permissions`.`id` = 214;
UPDATE `auth_group_permissions` SET `id` = 215,`group_id` = 3,`permission_id` = 87 WHERE `auth_group_permissions`.`id` = 215;
UPDATE `auth_group_permissions` SET `id` = 216,`group_id` = 3,`permission_id` = 88 WHERE `auth_group_permissions`.`id` = 216;
UPDATE `auth_group_permissions` SET `id` = 217,`group_id` = 3,`permission_id` = 89 WHERE `auth_group_permissions`.`id` = 217;
UPDATE `auth_group_permissions` SET `id` = 218,`group_id` = 3,`permission_id` = 90 WHERE `auth_group_permissions`.`id` = 218;
UPDATE `auth_group_permissions` SET `id` = 219,`group_id` = 3,`permission_id` = 91 WHERE `auth_group_permissions`.`id` = 219;
UPDATE `auth_group_permissions` SET `id` = 220,`group_id` = 3,`permission_id` = 92 WHERE `auth_group_permissions`.`id` = 220;
UPDATE `auth_group_permissions` SET `id` = 221,`group_id` = 3,`permission_id` = 93 WHERE `auth_group_permissions`.`id` = 221;
UPDATE `auth_group_permissions` SET `id` = 222,`group_id` = 3,`permission_id` = 94 WHERE `auth_group_permissions`.`id` = 222;
UPDATE `auth_group_permissions` SET `id` = 223,`group_id` = 3,`permission_id` = 95 WHERE `auth_group_permissions`.`id` = 223;
UPDATE `auth_group_permissions` SET `id` = 224,`group_id` = 3,`permission_id` = 96 WHERE `auth_group_permissions`.`id` = 224;
UPDATE `auth_group_permissions` SET `id` = 226,`group_id` = 4,`permission_id` = 19 WHERE `auth_group_permissions`.`id` = 226;
UPDATE `auth_group_permissions` SET `id` = 228,`group_id` = 4,`permission_id` = 22 WHERE `auth_group_permissions`.`id` = 228;
UPDATE `auth_group_permissions` SET `id` = 225,`group_id` = 4,`permission_id` = 25 WHERE `auth_group_permissions`.`id` = 225;
UPDATE `auth_group_permissions` SET `id` = 227,`group_id` = 4,`permission_id` = 28 WHERE `auth_group_permissions`.`id` = 227;

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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

UPDATE `auth_permission` SET `id` = 1,`name` = 'Can add log entry',`content_type_id` = 1,`codename` = 'add_logentry' WHERE `auth_permission`.`id` = 1;
UPDATE `auth_permission` SET `id` = 2,`name` = 'Can change log entry',`content_type_id` = 1,`codename` = 'change_logentry' WHERE `auth_permission`.`id` = 2;
UPDATE `auth_permission` SET `id` = 3,`name` = 'Can delete log entry',`content_type_id` = 1,`codename` = 'delete_logentry' WHERE `auth_permission`.`id` = 3;
UPDATE `auth_permission` SET `id` = 4,`name` = 'Can add group',`content_type_id` = 2,`codename` = 'add_group' WHERE `auth_permission`.`id` = 4;
UPDATE `auth_permission` SET `id` = 5,`name` = 'Can change group',`content_type_id` = 2,`codename` = 'change_group' WHERE `auth_permission`.`id` = 5;
UPDATE `auth_permission` SET `id` = 6,`name` = 'Can delete group',`content_type_id` = 2,`codename` = 'delete_group' WHERE `auth_permission`.`id` = 6;
UPDATE `auth_permission` SET `id` = 7,`name` = 'Can add permission',`content_type_id` = 3,`codename` = 'add_permission' WHERE `auth_permission`.`id` = 7;
UPDATE `auth_permission` SET `id` = 8,`name` = 'Can change permission',`content_type_id` = 3,`codename` = 'change_permission' WHERE `auth_permission`.`id` = 8;
UPDATE `auth_permission` SET `id` = 9,`name` = 'Can delete permission',`content_type_id` = 3,`codename` = 'delete_permission' WHERE `auth_permission`.`id` = 9;
UPDATE `auth_permission` SET `id` = 10,`name` = 'Can add user',`content_type_id` = 4,`codename` = 'add_user' WHERE `auth_permission`.`id` = 10;
UPDATE `auth_permission` SET `id` = 11,`name` = 'Can change user',`content_type_id` = 4,`codename` = 'change_user' WHERE `auth_permission`.`id` = 11;
UPDATE `auth_permission` SET `id` = 12,`name` = 'Can delete user',`content_type_id` = 4,`codename` = 'delete_user' WHERE `auth_permission`.`id` = 12;
UPDATE `auth_permission` SET `id` = 13,`name` = 'Can add content type',`content_type_id` = 5,`codename` = 'add_contenttype' WHERE `auth_permission`.`id` = 13;
UPDATE `auth_permission` SET `id` = 14,`name` = 'Can change content type',`content_type_id` = 5,`codename` = 'change_contenttype' WHERE `auth_permission`.`id` = 14;
UPDATE `auth_permission` SET `id` = 15,`name` = 'Can delete content type',`content_type_id` = 5,`codename` = 'delete_contenttype' WHERE `auth_permission`.`id` = 15;
UPDATE `auth_permission` SET `id` = 16,`name` = 'Can add session',`content_type_id` = 6,`codename` = 'add_session' WHERE `auth_permission`.`id` = 16;
UPDATE `auth_permission` SET `id` = 17,`name` = 'Can change session',`content_type_id` = 6,`codename` = 'change_session' WHERE `auth_permission`.`id` = 17;
UPDATE `auth_permission` SET `id` = 18,`name` = 'Can delete session',`content_type_id` = 6,`codename` = 'delete_session' WHERE `auth_permission`.`id` = 18;
UPDATE `auth_permission` SET `id` = 19,`name` = 'Can add town',`content_type_id` = 7,`codename` = 'add_town' WHERE `auth_permission`.`id` = 19;
UPDATE `auth_permission` SET `id` = 20,`name` = 'Can change town',`content_type_id` = 7,`codename` = 'change_town' WHERE `auth_permission`.`id` = 20;
UPDATE `auth_permission` SET `id` = 21,`name` = 'Can delete town',`content_type_id` = 7,`codename` = 'delete_town' WHERE `auth_permission`.`id` = 21;
UPDATE `auth_permission` SET `id` = 22,`name` = 'Can add patient',`content_type_id` = 8,`codename` = 'add_patient' WHERE `auth_permission`.`id` = 22;
UPDATE `auth_permission` SET `id` = 23,`name` = 'Can change patient',`content_type_id` = 8,`codename` = 'change_patient' WHERE `auth_permission`.`id` = 23;
UPDATE `auth_permission` SET `id` = 24,`name` = 'Can delete patient',`content_type_id` = 8,`codename` = 'delete_patient' WHERE `auth_permission`.`id` = 24;
UPDATE `auth_permission` SET `id` = 25,`name` = 'Can add province',`content_type_id` = 9,`codename` = 'add_province' WHERE `auth_permission`.`id` = 25;
UPDATE `auth_permission` SET `id` = 26,`name` = 'Can change province',`content_type_id` = 9,`codename` = 'change_province' WHERE `auth_permission`.`id` = 26;
UPDATE `auth_permission` SET `id` = 27,`name` = 'Can delete province',`content_type_id` = 9,`codename` = 'delete_province' WHERE `auth_permission`.`id` = 27;
UPDATE `auth_permission` SET `id` = 28,`name` = 'Can add occupation',`content_type_id` = 10,`codename` = 'add_occupation' WHERE `auth_permission`.`id` = 28;
UPDATE `auth_permission` SET `id` = 29,`name` = 'Can change occupation',`content_type_id` = 10,`codename` = 'change_occupation' WHERE `auth_permission`.`id` = 29;
UPDATE `auth_permission` SET `id` = 30,`name` = 'Can delete occupation',`content_type_id` = 10,`codename` = 'delete_occupation' WHERE `auth_permission`.`id` = 30;
UPDATE `auth_permission` SET `id` = 31,`name` = 'Can add exam result',`content_type_id` = 11,`codename` = 'add_examresult' WHERE `auth_permission`.`id` = 31;
UPDATE `auth_permission` SET `id` = 32,`name` = 'Can change exam result',`content_type_id` = 11,`codename` = 'change_examresult' WHERE `auth_permission`.`id` = 32;
UPDATE `auth_permission` SET `id` = 33,`name` = 'Can delete exam result',`content_type_id` = 11,`codename` = 'delete_examresult' WHERE `auth_permission`.`id` = 33;
UPDATE `auth_permission` SET `id` = 34,`name` = 'Can add visit',`content_type_id` = 12,`codename` = 'add_visit' WHERE `auth_permission`.`id` = 34;
UPDATE `auth_permission` SET `id` = 35,`name` = 'Can change visit',`content_type_id` = 12,`codename` = 'change_visit' WHERE `auth_permission`.`id` = 35;
UPDATE `auth_permission` SET `id` = 36,`name` = 'Can delete visit',`content_type_id` = 12,`codename` = 'delete_visit' WHERE `auth_permission`.`id` = 36;
UPDATE `auth_permission` SET `id` = 37,`name` = 'Can add dose',`content_type_id` = 13,`codename` = 'add_dose' WHERE `auth_permission`.`id` = 37;
UPDATE `auth_permission` SET `id` = 38,`name` = 'Can change dose',`content_type_id` = 13,`codename` = 'change_dose' WHERE `auth_permission`.`id` = 38;
UPDATE `auth_permission` SET `id` = 39,`name` = 'Can delete dose',`content_type_id` = 13,`codename` = 'delete_dose' WHERE `auth_permission`.`id` = 39;
UPDATE `auth_permission` SET `id` = 40,`name` = 'Can add complaint',`content_type_id` = 14,`codename` = 'add_complaint' WHERE `auth_permission`.`id` = 40;
UPDATE `auth_permission` SET `id` = 41,`name` = 'Can change complaint',`content_type_id` = 14,`codename` = 'change_complaint' WHERE `auth_permission`.`id` = 41;
UPDATE `auth_permission` SET `id` = 42,`name` = 'Can delete complaint',`content_type_id` = 14,`codename` = 'delete_complaint' WHERE `auth_permission`.`id` = 42;
UPDATE `auth_permission` SET `id` = 43,`name` = 'Can add complaint name',`content_type_id` = 15,`codename` = 'add_complaintname' WHERE `auth_permission`.`id` = 43;
UPDATE `auth_permission` SET `id` = 44,`name` = 'Can change complaint name',`content_type_id` = 15,`codename` = 'change_complaintname' WHERE `auth_permission`.`id` = 44;
UPDATE `auth_permission` SET `id` = 45,`name` = 'Can delete complaint name',`content_type_id` = 15,`codename` = 'delete_complaintname' WHERE `auth_permission`.`id` = 45;
UPDATE `auth_permission` SET `id` = 46,`name` = 'Can add medicine',`content_type_id` = 16,`codename` = 'add_medicine' WHERE `auth_permission`.`id` = 46;
UPDATE `auth_permission` SET `id` = 47,`name` = 'Can change medicine',`content_type_id` = 16,`codename` = 'change_medicine' WHERE `auth_permission`.`id` = 47;
UPDATE `auth_permission` SET `id` = 48,`name` = 'Can delete medicine',`content_type_id` = 16,`codename` = 'delete_medicine' WHERE `auth_permission`.`id` = 48;
UPDATE `auth_permission` SET `id` = 49,`name` = 'Can add hearing test',`content_type_id` = 17,`codename` = 'add_hearingtest' WHERE `auth_permission`.`id` = 49;
UPDATE `auth_permission` SET `id` = 50,`name` = 'Can change hearing test',`content_type_id` = 17,`codename` = 'change_hearingtest' WHERE `auth_permission`.`id` = 50;
UPDATE `auth_permission` SET `id` = 51,`name` = 'Can delete hearing test',`content_type_id` = 17,`codename` = 'delete_hearingtest' WHERE `auth_permission`.`id` = 51;
UPDATE `auth_permission` SET `id` = 52,`name` = 'Can add exam type',`content_type_id` = 18,`codename` = 'add_examtype' WHERE `auth_permission`.`id` = 52;
UPDATE `auth_permission` SET `id` = 53,`name` = 'Can change exam type',`content_type_id` = 18,`codename` = 'change_examtype' WHERE `auth_permission`.`id` = 53;
UPDATE `auth_permission` SET `id` = 54,`name` = 'Can delete exam type',`content_type_id` = 18,`codename` = 'delete_examtype' WHERE `auth_permission`.`id` = 54;
UPDATE `auth_permission` SET `id` = 55,`name` = 'Can add exam',`content_type_id` = 19,`codename` = 'add_exam' WHERE `auth_permission`.`id` = 55;
UPDATE `auth_permission` SET `id` = 56,`name` = 'Can change exam',`content_type_id` = 19,`codename` = 'change_exam' WHERE `auth_permission`.`id` = 56;
UPDATE `auth_permission` SET `id` = 57,`name` = 'Can delete exam',`content_type_id` = 19,`codename` = 'delete_exam' WHERE `auth_permission`.`id` = 57;
UPDATE `auth_permission` SET `id` = 58,`name` = 'Can add hearing',`content_type_id` = 20,`codename` = 'add_hearing' WHERE `auth_permission`.`id` = 58;
UPDATE `auth_permission` SET `id` = 59,`name` = 'Can change hearing',`content_type_id` = 20,`codename` = 'change_hearing' WHERE `auth_permission`.`id` = 59;
UPDATE `auth_permission` SET `id` = 60,`name` = 'Can delete hearing',`content_type_id` = 20,`codename` = 'delete_hearing' WHERE `auth_permission`.`id` = 60;
UPDATE `auth_permission` SET `id` = 61,`name` = 'Can add reminder',`content_type_id` = 21,`codename` = 'add_reminder' WHERE `auth_permission`.`id` = 61;
UPDATE `auth_permission` SET `id` = 62,`name` = 'Can change reminder',`content_type_id` = 21,`codename` = 'change_reminder' WHERE `auth_permission`.`id` = 62;
UPDATE `auth_permission` SET `id` = 63,`name` = 'Can delete reminder',`content_type_id` = 21,`codename` = 'delete_reminder' WHERE `auth_permission`.`id` = 63;
UPDATE `auth_permission` SET `id` = 64,`name` = 'Can add treatment',`content_type_id` = 22,`codename` = 'add_treatment' WHERE `auth_permission`.`id` = 64;
UPDATE `auth_permission` SET `id` = 65,`name` = 'Can change treatment',`content_type_id` = 22,`codename` = 'change_treatment' WHERE `auth_permission`.`id` = 65;
UPDATE `auth_permission` SET `id` = 66,`name` = 'Can delete treatment',`content_type_id` = 22,`codename` = 'delete_treatment' WHERE `auth_permission`.`id` = 66;
UPDATE `auth_permission` SET `id` = 67,`name` = 'Can add biopsy result',`content_type_id` = 23,`codename` = 'add_biopsyresult' WHERE `auth_permission`.`id` = 67;
UPDATE `auth_permission` SET `id` = 68,`name` = 'Can change biopsy result',`content_type_id` = 23,`codename` = 'change_biopsyresult' WHERE `auth_permission`.`id` = 68;
UPDATE `auth_permission` SET `id` = 69,`name` = 'Can delete biopsy result',`content_type_id` = 23,`codename` = 'delete_biopsyresult' WHERE `auth_permission`.`id` = 69;
UPDATE `auth_permission` SET `id` = 70,`name` = 'Can add finding',`content_type_id` = 24,`codename` = 'add_finding' WHERE `auth_permission`.`id` = 70;
UPDATE `auth_permission` SET `id` = 71,`name` = 'Can change finding',`content_type_id` = 24,`codename` = 'change_finding' WHERE `auth_permission`.`id` = 71;
UPDATE `auth_permission` SET `id` = 72,`name` = 'Can delete finding',`content_type_id` = 24,`codename` = 'delete_finding' WHERE `auth_permission`.`id` = 72;
UPDATE `auth_permission` SET `id` = 73,`name` = 'Can add location',`content_type_id` = 25,`codename` = 'add_location' WHERE `auth_permission`.`id` = 73;
UPDATE `auth_permission` SET `id` = 74,`name` = 'Can change location',`content_type_id` = 25,`codename` = 'change_location' WHERE `auth_permission`.`id` = 74;
UPDATE `auth_permission` SET `id` = 75,`name` = 'Can delete location',`content_type_id` = 25,`codename` = 'delete_location' WHERE `auth_permission`.`id` = 75;
UPDATE `auth_permission` SET `id` = 76,`name` = 'Can add prescription',`content_type_id` = 26,`codename` = 'add_prescription' WHERE `auth_permission`.`id` = 76;
UPDATE `auth_permission` SET `id` = 77,`name` = 'Can change prescription',`content_type_id` = 26,`codename` = 'change_prescription' WHERE `auth_permission`.`id` = 77;
UPDATE `auth_permission` SET `id` = 78,`name` = 'Can delete prescription',`content_type_id` = 26,`codename` = 'delete_prescription' WHERE `auth_permission`.`id` = 78;
UPDATE `auth_permission` SET `id` = 79,`name` = 'Can add hearing result',`content_type_id` = 27,`codename` = 'add_hearingresult' WHERE `auth_permission`.`id` = 79;
UPDATE `auth_permission` SET `id` = 80,`name` = 'Can change hearing result',`content_type_id` = 27,`codename` = 'change_hearingresult' WHERE `auth_permission`.`id` = 80;
UPDATE `auth_permission` SET `id` = 81,`name` = 'Can delete hearing result',`content_type_id` = 27,`codename` = 'delete_hearingresult' WHERE `auth_permission`.`id` = 81;
UPDATE `auth_permission` SET `id` = 82,`name` = 'Can add exam name',`content_type_id` = 28,`codename` = 'add_examname' WHERE `auth_permission`.`id` = 82;
UPDATE `auth_permission` SET `id` = 83,`name` = 'Can change exam name',`content_type_id` = 28,`codename` = 'change_examname' WHERE `auth_permission`.`id` = 83;
UPDATE `auth_permission` SET `id` = 84,`name` = 'Can delete exam name',`content_type_id` = 28,`codename` = 'delete_examname' WHERE `auth_permission`.`id` = 84;
UPDATE `auth_permission` SET `id` = 85,`name` = 'Can add biopsy name',`content_type_id` = 29,`codename` = 'add_biopsyname' WHERE `auth_permission`.`id` = 85;
UPDATE `auth_permission` SET `id` = 86,`name` = 'Can change biopsy name',`content_type_id` = 29,`codename` = 'change_biopsyname' WHERE `auth_permission`.`id` = 86;
UPDATE `auth_permission` SET `id` = 87,`name` = 'Can delete biopsy name',`content_type_id` = 29,`codename` = 'delete_biopsyname' WHERE `auth_permission`.`id` = 87;
UPDATE `auth_permission` SET `id` = 88,`name` = 'Can add biopsy',`content_type_id` = 30,`codename` = 'add_biopsy' WHERE `auth_permission`.`id` = 88;
UPDATE `auth_permission` SET `id` = 89,`name` = 'Can change biopsy',`content_type_id` = 30,`codename` = 'change_biopsy' WHERE `auth_permission`.`id` = 89;
UPDATE `auth_permission` SET `id` = 90,`name` = 'Can delete biopsy',`content_type_id` = 30,`codename` = 'delete_biopsy' WHERE `auth_permission`.`id` = 90;
UPDATE `auth_permission` SET `id` = 91,`name` = 'Can add hospital',`content_type_id` = 31,`codename` = 'add_hospital' WHERE `auth_permission`.`id` = 91;
UPDATE `auth_permission` SET `id` = 92,`name` = 'Can change hospital',`content_type_id` = 31,`codename` = 'change_hospital' WHERE `auth_permission`.`id` = 92;
UPDATE `auth_permission` SET `id` = 93,`name` = 'Can delete hospital',`content_type_id` = 31,`codename` = 'delete_hospital' WHERE `auth_permission`.`id` = 93;
UPDATE `auth_permission` SET `id` = 94,`name` = 'Can add doctor',`content_type_id` = 32,`codename` = 'add_doctor' WHERE `auth_permission`.`id` = 94;
UPDATE `auth_permission` SET `id` = 95,`name` = 'Can change doctor',`content_type_id` = 32,`codename` = 'change_doctor' WHERE `auth_permission`.`id` = 95;
UPDATE `auth_permission` SET `id` = 96,`name` = 'Can delete doctor',`content_type_id` = 32,`codename` = 'delete_doctor' WHERE `auth_permission`.`id` = 96;
UPDATE `auth_permission` SET `id` = 97,`name` = 'Can add office_ hours',`content_type_id` = 33,`codename` = 'add_office_hours' WHERE `auth_permission`.`id` = 97;
UPDATE `auth_permission` SET `id` = 98,`name` = 'Can change office_ hours',`content_type_id` = 33,`codename` = 'change_office_hours' WHERE `auth_permission`.`id` = 98;
UPDATE `auth_permission` SET `id` = 99,`name` = 'Can delete office_ hours',`content_type_id` = 33,`codename` = 'delete_office_hours' WHERE `auth_permission`.`id` = 99;
UPDATE `auth_permission` SET `id` = 100,`name` = 'Can add dr office hour',`content_type_id` = 36,`codename` = 'add_drofficehour' WHERE `auth_permission`.`id` = 100;
UPDATE `auth_permission` SET `id` = 101,`name` = 'Can change dr office hour',`content_type_id` = 36,`codename` = 'change_drofficehour' WHERE `auth_permission`.`id` = 101;
UPDATE `auth_permission` SET `id` = 102,`name` = 'Can delete dr office hour',`content_type_id` = 36,`codename` = 'delete_drofficehour' WHERE `auth_permission`.`id` = 102;

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

UPDATE `auth_user` SET `id` = 1,`password` = 'pbkdf2_sha256$100000$caxT751IE7Up$7hryqEJH1tLraOfF35z24QrCRoJDSSXcNyg796PbmKo=',`last_login` = '2018-04-01 11:59:45.000000',`is_superuser` = 1,`username` = 'gerald',`first_name` = 'Gerald',`last_name` = 'Brown',`email` = 'gsbrown43@gmail.com',`is_staff` = 1,`is_active` = 1,`date_joined` = '2018-03-09 12:10:25.000000' WHERE `auth_user`.`id` = 1;
UPDATE `auth_user` SET `id` = 2,`password` = 'pbkdf2_sha256$100000$zoH1f4vZdH6h$oZ8K1CE+TNknMIQzHTqU+JzrR0onwuS/dmcnM4BoVI0=',`last_login` = '2018-03-10 13:01:30.974655',`is_superuser` = 1,`username` = 'hansdale',`first_name` = 'Hans Dale',`last_name` = 'Pactol',`email` = 'ilyklies@gmail.com',`is_staff` = 1,`is_active` = 1,`date_joined` = '2018-03-10 12:46:09.000000' WHERE `auth_user`.`id` = 2;
UPDATE `auth_user` SET `id` = 3,`password` = 'pbkdf2_sha256$100000$0IYWfBi01T0N$jteg+cQSHuWMayhylRDxhWGZvOyuh9Zlu75HGktU38Y=',`last_login` = '2018-03-27 12:01:12.836075',`is_superuser` = 0,`username` = 'secretary',`first_name` = '',`last_name` = '',`email` = '',`is_staff` = 1,`is_active` = 1,`date_joined` = '2018-03-12 12:58:19.000000' WHERE `auth_user`.`id` = 3;
UPDATE `auth_user` SET `id` = 4,`password` = 'pbkdf2_sha256$100000$rfP9zxI8o02b$RE2yFZBgjQdshMsEx1FinrmnU0s/6W8bNmC2yEf0fTQ=',`last_login` = '2018-03-30 13:05:51.000000',`is_superuser` = 0,`username` = 'doctor',`first_name` = '',`last_name` = '',`email` = '',`is_staff` = 1,`is_active` = 1,`date_joined` = '2018-03-12 13:05:39.000000' WHERE `auth_user`.`id` = 4;
UPDATE `auth_user` SET `id` = 5,`password` = 'pbkdf2_sha256$100000$Lqso8r49fx6L$ufAxdb2o114+XLkScb8BLm9B22t9VqCOhbiB2g+BIec=',`last_login` = '2018-04-01 11:58:43.000000',`is_superuser` = 1,`username` = 'gerry',`first_name` = '',`last_name` = '',`email` = 'gsbrown43@gmail.com',`is_staff` = 1,`is_active` = 1,`date_joined` = '2018-04-01 11:56:28.000000' WHERE `auth_user`.`id` = 5;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_groups`
--

UPDATE `auth_user_groups` SET `id` = 1,`user_id` = 1,`group_id` = 3 WHERE `auth_user_groups`.`id` = 1;
UPDATE `auth_user_groups` SET `id` = 2,`user_id` = 2,`group_id` = 3 WHERE `auth_user_groups`.`id` = 2;
UPDATE `auth_user_groups` SET `id` = 3,`user_id` = 3,`group_id` = 2 WHERE `auth_user_groups`.`id` = 3;
UPDATE `auth_user_groups` SET `id` = 4,`user_id` = 4,`group_id` = 1 WHERE `auth_user_groups`.`id` = 4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_user_permissions`
--

UPDATE `auth_user_user_permissions` SET `id` = 1,`user_id` = 1,`permission_id` = 1 WHERE `auth_user_user_permissions`.`id` = 1;
UPDATE `auth_user_user_permissions` SET `id` = 2,`user_id` = 1,`permission_id` = 2 WHERE `auth_user_user_permissions`.`id` = 2;
UPDATE `auth_user_user_permissions` SET `id` = 3,`user_id` = 1,`permission_id` = 3 WHERE `auth_user_user_permissions`.`id` = 3;
UPDATE `auth_user_user_permissions` SET `id` = 4,`user_id` = 1,`permission_id` = 4 WHERE `auth_user_user_permissions`.`id` = 4;
UPDATE `auth_user_user_permissions` SET `id` = 5,`user_id` = 1,`permission_id` = 5 WHERE `auth_user_user_permissions`.`id` = 5;
UPDATE `auth_user_user_permissions` SET `id` = 6,`user_id` = 1,`permission_id` = 6 WHERE `auth_user_user_permissions`.`id` = 6;
UPDATE `auth_user_user_permissions` SET `id` = 7,`user_id` = 1,`permission_id` = 7 WHERE `auth_user_user_permissions`.`id` = 7;
UPDATE `auth_user_user_permissions` SET `id` = 8,`user_id` = 1,`permission_id` = 8 WHERE `auth_user_user_permissions`.`id` = 8;
UPDATE `auth_user_user_permissions` SET `id` = 9,`user_id` = 1,`permission_id` = 9 WHERE `auth_user_user_permissions`.`id` = 9;
UPDATE `auth_user_user_permissions` SET `id` = 10,`user_id` = 1,`permission_id` = 10 WHERE `auth_user_user_permissions`.`id` = 10;
UPDATE `auth_user_user_permissions` SET `id` = 11,`user_id` = 1,`permission_id` = 11 WHERE `auth_user_user_permissions`.`id` = 11;
UPDATE `auth_user_user_permissions` SET `id` = 12,`user_id` = 1,`permission_id` = 12 WHERE `auth_user_user_permissions`.`id` = 12;
UPDATE `auth_user_user_permissions` SET `id` = 13,`user_id` = 1,`permission_id` = 13 WHERE `auth_user_user_permissions`.`id` = 13;
UPDATE `auth_user_user_permissions` SET `id` = 14,`user_id` = 1,`permission_id` = 14 WHERE `auth_user_user_permissions`.`id` = 14;
UPDATE `auth_user_user_permissions` SET `id` = 15,`user_id` = 1,`permission_id` = 15 WHERE `auth_user_user_permissions`.`id` = 15;
UPDATE `auth_user_user_permissions` SET `id` = 16,`user_id` = 1,`permission_id` = 16 WHERE `auth_user_user_permissions`.`id` = 16;
UPDATE `auth_user_user_permissions` SET `id` = 17,`user_id` = 1,`permission_id` = 17 WHERE `auth_user_user_permissions`.`id` = 17;
UPDATE `auth_user_user_permissions` SET `id` = 18,`user_id` = 1,`permission_id` = 18 WHERE `auth_user_user_permissions`.`id` = 18;
UPDATE `auth_user_user_permissions` SET `id` = 19,`user_id` = 1,`permission_id` = 19 WHERE `auth_user_user_permissions`.`id` = 19;
UPDATE `auth_user_user_permissions` SET `id` = 20,`user_id` = 1,`permission_id` = 20 WHERE `auth_user_user_permissions`.`id` = 20;
UPDATE `auth_user_user_permissions` SET `id` = 21,`user_id` = 1,`permission_id` = 21 WHERE `auth_user_user_permissions`.`id` = 21;
UPDATE `auth_user_user_permissions` SET `id` = 22,`user_id` = 1,`permission_id` = 22 WHERE `auth_user_user_permissions`.`id` = 22;
UPDATE `auth_user_user_permissions` SET `id` = 23,`user_id` = 1,`permission_id` = 23 WHERE `auth_user_user_permissions`.`id` = 23;
UPDATE `auth_user_user_permissions` SET `id` = 24,`user_id` = 1,`permission_id` = 24 WHERE `auth_user_user_permissions`.`id` = 24;
UPDATE `auth_user_user_permissions` SET `id` = 25,`user_id` = 1,`permission_id` = 25 WHERE `auth_user_user_permissions`.`id` = 25;
UPDATE `auth_user_user_permissions` SET `id` = 26,`user_id` = 1,`permission_id` = 26 WHERE `auth_user_user_permissions`.`id` = 26;
UPDATE `auth_user_user_permissions` SET `id` = 27,`user_id` = 1,`permission_id` = 27 WHERE `auth_user_user_permissions`.`id` = 27;
UPDATE `auth_user_user_permissions` SET `id` = 28,`user_id` = 1,`permission_id` = 28 WHERE `auth_user_user_permissions`.`id` = 28;
UPDATE `auth_user_user_permissions` SET `id` = 29,`user_id` = 1,`permission_id` = 29 WHERE `auth_user_user_permissions`.`id` = 29;
UPDATE `auth_user_user_permissions` SET `id` = 30,`user_id` = 1,`permission_id` = 30 WHERE `auth_user_user_permissions`.`id` = 30;
UPDATE `auth_user_user_permissions` SET `id` = 31,`user_id` = 1,`permission_id` = 31 WHERE `auth_user_user_permissions`.`id` = 31;
UPDATE `auth_user_user_permissions` SET `id` = 32,`user_id` = 1,`permission_id` = 32 WHERE `auth_user_user_permissions`.`id` = 32;
UPDATE `auth_user_user_permissions` SET `id` = 33,`user_id` = 1,`permission_id` = 33 WHERE `auth_user_user_permissions`.`id` = 33;
UPDATE `auth_user_user_permissions` SET `id` = 34,`user_id` = 1,`permission_id` = 34 WHERE `auth_user_user_permissions`.`id` = 34;
UPDATE `auth_user_user_permissions` SET `id` = 35,`user_id` = 1,`permission_id` = 35 WHERE `auth_user_user_permissions`.`id` = 35;
UPDATE `auth_user_user_permissions` SET `id` = 36,`user_id` = 1,`permission_id` = 36 WHERE `auth_user_user_permissions`.`id` = 36;
UPDATE `auth_user_user_permissions` SET `id` = 37,`user_id` = 1,`permission_id` = 37 WHERE `auth_user_user_permissions`.`id` = 37;
UPDATE `auth_user_user_permissions` SET `id` = 38,`user_id` = 1,`permission_id` = 38 WHERE `auth_user_user_permissions`.`id` = 38;
UPDATE `auth_user_user_permissions` SET `id` = 39,`user_id` = 1,`permission_id` = 39 WHERE `auth_user_user_permissions`.`id` = 39;
UPDATE `auth_user_user_permissions` SET `id` = 40,`user_id` = 1,`permission_id` = 40 WHERE `auth_user_user_permissions`.`id` = 40;
UPDATE `auth_user_user_permissions` SET `id` = 41,`user_id` = 1,`permission_id` = 41 WHERE `auth_user_user_permissions`.`id` = 41;
UPDATE `auth_user_user_permissions` SET `id` = 42,`user_id` = 1,`permission_id` = 42 WHERE `auth_user_user_permissions`.`id` = 42;
UPDATE `auth_user_user_permissions` SET `id` = 43,`user_id` = 1,`permission_id` = 43 WHERE `auth_user_user_permissions`.`id` = 43;
UPDATE `auth_user_user_permissions` SET `id` = 44,`user_id` = 1,`permission_id` = 44 WHERE `auth_user_user_permissions`.`id` = 44;
UPDATE `auth_user_user_permissions` SET `id` = 45,`user_id` = 1,`permission_id` = 45 WHERE `auth_user_user_permissions`.`id` = 45;
UPDATE `auth_user_user_permissions` SET `id` = 46,`user_id` = 1,`permission_id` = 46 WHERE `auth_user_user_permissions`.`id` = 46;
UPDATE `auth_user_user_permissions` SET `id` = 47,`user_id` = 1,`permission_id` = 47 WHERE `auth_user_user_permissions`.`id` = 47;
UPDATE `auth_user_user_permissions` SET `id` = 48,`user_id` = 1,`permission_id` = 48 WHERE `auth_user_user_permissions`.`id` = 48;
UPDATE `auth_user_user_permissions` SET `id` = 49,`user_id` = 1,`permission_id` = 49 WHERE `auth_user_user_permissions`.`id` = 49;
UPDATE `auth_user_user_permissions` SET `id` = 50,`user_id` = 1,`permission_id` = 50 WHERE `auth_user_user_permissions`.`id` = 50;
UPDATE `auth_user_user_permissions` SET `id` = 51,`user_id` = 1,`permission_id` = 51 WHERE `auth_user_user_permissions`.`id` = 51;
UPDATE `auth_user_user_permissions` SET `id` = 52,`user_id` = 1,`permission_id` = 52 WHERE `auth_user_user_permissions`.`id` = 52;
UPDATE `auth_user_user_permissions` SET `id` = 53,`user_id` = 1,`permission_id` = 53 WHERE `auth_user_user_permissions`.`id` = 53;
UPDATE `auth_user_user_permissions` SET `id` = 54,`user_id` = 1,`permission_id` = 54 WHERE `auth_user_user_permissions`.`id` = 54;
UPDATE `auth_user_user_permissions` SET `id` = 55,`user_id` = 1,`permission_id` = 55 WHERE `auth_user_user_permissions`.`id` = 55;
UPDATE `auth_user_user_permissions` SET `id` = 56,`user_id` = 1,`permission_id` = 56 WHERE `auth_user_user_permissions`.`id` = 56;
UPDATE `auth_user_user_permissions` SET `id` = 57,`user_id` = 1,`permission_id` = 57 WHERE `auth_user_user_permissions`.`id` = 57;
UPDATE `auth_user_user_permissions` SET `id` = 58,`user_id` = 1,`permission_id` = 58 WHERE `auth_user_user_permissions`.`id` = 58;
UPDATE `auth_user_user_permissions` SET `id` = 59,`user_id` = 1,`permission_id` = 59 WHERE `auth_user_user_permissions`.`id` = 59;
UPDATE `auth_user_user_permissions` SET `id` = 60,`user_id` = 1,`permission_id` = 60 WHERE `auth_user_user_permissions`.`id` = 60;
UPDATE `auth_user_user_permissions` SET `id` = 61,`user_id` = 1,`permission_id` = 61 WHERE `auth_user_user_permissions`.`id` = 61;
UPDATE `auth_user_user_permissions` SET `id` = 62,`user_id` = 1,`permission_id` = 62 WHERE `auth_user_user_permissions`.`id` = 62;
UPDATE `auth_user_user_permissions` SET `id` = 63,`user_id` = 1,`permission_id` = 63 WHERE `auth_user_user_permissions`.`id` = 63;
UPDATE `auth_user_user_permissions` SET `id` = 64,`user_id` = 1,`permission_id` = 64 WHERE `auth_user_user_permissions`.`id` = 64;
UPDATE `auth_user_user_permissions` SET `id` = 65,`user_id` = 1,`permission_id` = 65 WHERE `auth_user_user_permissions`.`id` = 65;
UPDATE `auth_user_user_permissions` SET `id` = 66,`user_id` = 1,`permission_id` = 66 WHERE `auth_user_user_permissions`.`id` = 66;
UPDATE `auth_user_user_permissions` SET `id` = 67,`user_id` = 1,`permission_id` = 67 WHERE `auth_user_user_permissions`.`id` = 67;
UPDATE `auth_user_user_permissions` SET `id` = 68,`user_id` = 1,`permission_id` = 68 WHERE `auth_user_user_permissions`.`id` = 68;
UPDATE `auth_user_user_permissions` SET `id` = 69,`user_id` = 1,`permission_id` = 69 WHERE `auth_user_user_permissions`.`id` = 69;
UPDATE `auth_user_user_permissions` SET `id` = 70,`user_id` = 1,`permission_id` = 70 WHERE `auth_user_user_permissions`.`id` = 70;
UPDATE `auth_user_user_permissions` SET `id` = 71,`user_id` = 1,`permission_id` = 71 WHERE `auth_user_user_permissions`.`id` = 71;
UPDATE `auth_user_user_permissions` SET `id` = 72,`user_id` = 1,`permission_id` = 72 WHERE `auth_user_user_permissions`.`id` = 72;
UPDATE `auth_user_user_permissions` SET `id` = 73,`user_id` = 1,`permission_id` = 73 WHERE `auth_user_user_permissions`.`id` = 73;
UPDATE `auth_user_user_permissions` SET `id` = 74,`user_id` = 1,`permission_id` = 74 WHERE `auth_user_user_permissions`.`id` = 74;
UPDATE `auth_user_user_permissions` SET `id` = 75,`user_id` = 1,`permission_id` = 75 WHERE `auth_user_user_permissions`.`id` = 75;
UPDATE `auth_user_user_permissions` SET `id` = 76,`user_id` = 1,`permission_id` = 76 WHERE `auth_user_user_permissions`.`id` = 76;
UPDATE `auth_user_user_permissions` SET `id` = 77,`user_id` = 1,`permission_id` = 77 WHERE `auth_user_user_permissions`.`id` = 77;
UPDATE `auth_user_user_permissions` SET `id` = 78,`user_id` = 1,`permission_id` = 78 WHERE `auth_user_user_permissions`.`id` = 78;
UPDATE `auth_user_user_permissions` SET `id` = 79,`user_id` = 1,`permission_id` = 79 WHERE `auth_user_user_permissions`.`id` = 79;
UPDATE `auth_user_user_permissions` SET `id` = 80,`user_id` = 1,`permission_id` = 80 WHERE `auth_user_user_permissions`.`id` = 80;
UPDATE `auth_user_user_permissions` SET `id` = 81,`user_id` = 1,`permission_id` = 81 WHERE `auth_user_user_permissions`.`id` = 81;
UPDATE `auth_user_user_permissions` SET `id` = 82,`user_id` = 1,`permission_id` = 82 WHERE `auth_user_user_permissions`.`id` = 82;
UPDATE `auth_user_user_permissions` SET `id` = 83,`user_id` = 1,`permission_id` = 83 WHERE `auth_user_user_permissions`.`id` = 83;
UPDATE `auth_user_user_permissions` SET `id` = 84,`user_id` = 1,`permission_id` = 84 WHERE `auth_user_user_permissions`.`id` = 84;
UPDATE `auth_user_user_permissions` SET `id` = 85,`user_id` = 1,`permission_id` = 85 WHERE `auth_user_user_permissions`.`id` = 85;
UPDATE `auth_user_user_permissions` SET `id` = 86,`user_id` = 1,`permission_id` = 86 WHERE `auth_user_user_permissions`.`id` = 86;
UPDATE `auth_user_user_permissions` SET `id` = 87,`user_id` = 1,`permission_id` = 87 WHERE `auth_user_user_permissions`.`id` = 87;
UPDATE `auth_user_user_permissions` SET `id` = 88,`user_id` = 1,`permission_id` = 88 WHERE `auth_user_user_permissions`.`id` = 88;
UPDATE `auth_user_user_permissions` SET `id` = 89,`user_id` = 1,`permission_id` = 89 WHERE `auth_user_user_permissions`.`id` = 89;
UPDATE `auth_user_user_permissions` SET `id` = 90,`user_id` = 1,`permission_id` = 90 WHERE `auth_user_user_permissions`.`id` = 90;
UPDATE `auth_user_user_permissions` SET `id` = 91,`user_id` = 1,`permission_id` = 91 WHERE `auth_user_user_permissions`.`id` = 91;
UPDATE `auth_user_user_permissions` SET `id` = 92,`user_id` = 1,`permission_id` = 92 WHERE `auth_user_user_permissions`.`id` = 92;
UPDATE `auth_user_user_permissions` SET `id` = 93,`user_id` = 1,`permission_id` = 93 WHERE `auth_user_user_permissions`.`id` = 93;
UPDATE `auth_user_user_permissions` SET `id` = 94,`user_id` = 1,`permission_id` = 94 WHERE `auth_user_user_permissions`.`id` = 94;
UPDATE `auth_user_user_permissions` SET `id` = 95,`user_id` = 1,`permission_id` = 95 WHERE `auth_user_user_permissions`.`id` = 95;
UPDATE `auth_user_user_permissions` SET `id` = 96,`user_id` = 1,`permission_id` = 96 WHERE `auth_user_user_permissions`.`id` = 96;
UPDATE `auth_user_user_permissions` SET `id` = 97,`user_id` = 2,`permission_id` = 1 WHERE `auth_user_user_permissions`.`id` = 97;
UPDATE `auth_user_user_permissions` SET `id` = 98,`user_id` = 2,`permission_id` = 2 WHERE `auth_user_user_permissions`.`id` = 98;
UPDATE `auth_user_user_permissions` SET `id` = 99,`user_id` = 2,`permission_id` = 3 WHERE `auth_user_user_permissions`.`id` = 99;
UPDATE `auth_user_user_permissions` SET `id` = 100,`user_id` = 2,`permission_id` = 4 WHERE `auth_user_user_permissions`.`id` = 100;
UPDATE `auth_user_user_permissions` SET `id` = 101,`user_id` = 2,`permission_id` = 5 WHERE `auth_user_user_permissions`.`id` = 101;
UPDATE `auth_user_user_permissions` SET `id` = 102,`user_id` = 2,`permission_id` = 6 WHERE `auth_user_user_permissions`.`id` = 102;
UPDATE `auth_user_user_permissions` SET `id` = 103,`user_id` = 2,`permission_id` = 7 WHERE `auth_user_user_permissions`.`id` = 103;
UPDATE `auth_user_user_permissions` SET `id` = 104,`user_id` = 2,`permission_id` = 8 WHERE `auth_user_user_permissions`.`id` = 104;
UPDATE `auth_user_user_permissions` SET `id` = 105,`user_id` = 2,`permission_id` = 9 WHERE `auth_user_user_permissions`.`id` = 105;
UPDATE `auth_user_user_permissions` SET `id` = 106,`user_id` = 2,`permission_id` = 10 WHERE `auth_user_user_permissions`.`id` = 106;
UPDATE `auth_user_user_permissions` SET `id` = 107,`user_id` = 2,`permission_id` = 11 WHERE `auth_user_user_permissions`.`id` = 107;
UPDATE `auth_user_user_permissions` SET `id` = 108,`user_id` = 2,`permission_id` = 12 WHERE `auth_user_user_permissions`.`id` = 108;
UPDATE `auth_user_user_permissions` SET `id` = 109,`user_id` = 2,`permission_id` = 13 WHERE `auth_user_user_permissions`.`id` = 109;
UPDATE `auth_user_user_permissions` SET `id` = 110,`user_id` = 2,`permission_id` = 14 WHERE `auth_user_user_permissions`.`id` = 110;
UPDATE `auth_user_user_permissions` SET `id` = 111,`user_id` = 2,`permission_id` = 15 WHERE `auth_user_user_permissions`.`id` = 111;
UPDATE `auth_user_user_permissions` SET `id` = 112,`user_id` = 2,`permission_id` = 16 WHERE `auth_user_user_permissions`.`id` = 112;
UPDATE `auth_user_user_permissions` SET `id` = 113,`user_id` = 2,`permission_id` = 17 WHERE `auth_user_user_permissions`.`id` = 113;
UPDATE `auth_user_user_permissions` SET `id` = 114,`user_id` = 2,`permission_id` = 18 WHERE `auth_user_user_permissions`.`id` = 114;
UPDATE `auth_user_user_permissions` SET `id` = 115,`user_id` = 2,`permission_id` = 19 WHERE `auth_user_user_permissions`.`id` = 115;
UPDATE `auth_user_user_permissions` SET `id` = 116,`user_id` = 2,`permission_id` = 20 WHERE `auth_user_user_permissions`.`id` = 116;
UPDATE `auth_user_user_permissions` SET `id` = 117,`user_id` = 2,`permission_id` = 21 WHERE `auth_user_user_permissions`.`id` = 117;
UPDATE `auth_user_user_permissions` SET `id` = 118,`user_id` = 2,`permission_id` = 22 WHERE `auth_user_user_permissions`.`id` = 118;
UPDATE `auth_user_user_permissions` SET `id` = 119,`user_id` = 2,`permission_id` = 23 WHERE `auth_user_user_permissions`.`id` = 119;
UPDATE `auth_user_user_permissions` SET `id` = 120,`user_id` = 2,`permission_id` = 24 WHERE `auth_user_user_permissions`.`id` = 120;
UPDATE `auth_user_user_permissions` SET `id` = 121,`user_id` = 2,`permission_id` = 25 WHERE `auth_user_user_permissions`.`id` = 121;
UPDATE `auth_user_user_permissions` SET `id` = 122,`user_id` = 2,`permission_id` = 26 WHERE `auth_user_user_permissions`.`id` = 122;
UPDATE `auth_user_user_permissions` SET `id` = 123,`user_id` = 2,`permission_id` = 27 WHERE `auth_user_user_permissions`.`id` = 123;
UPDATE `auth_user_user_permissions` SET `id` = 124,`user_id` = 2,`permission_id` = 28 WHERE `auth_user_user_permissions`.`id` = 124;
UPDATE `auth_user_user_permissions` SET `id` = 125,`user_id` = 2,`permission_id` = 29 WHERE `auth_user_user_permissions`.`id` = 125;
UPDATE `auth_user_user_permissions` SET `id` = 126,`user_id` = 2,`permission_id` = 30 WHERE `auth_user_user_permissions`.`id` = 126;
UPDATE `auth_user_user_permissions` SET `id` = 127,`user_id` = 2,`permission_id` = 31 WHERE `auth_user_user_permissions`.`id` = 127;
UPDATE `auth_user_user_permissions` SET `id` = 128,`user_id` = 2,`permission_id` = 32 WHERE `auth_user_user_permissions`.`id` = 128;
UPDATE `auth_user_user_permissions` SET `id` = 129,`user_id` = 2,`permission_id` = 33 WHERE `auth_user_user_permissions`.`id` = 129;
UPDATE `auth_user_user_permissions` SET `id` = 130,`user_id` = 2,`permission_id` = 34 WHERE `auth_user_user_permissions`.`id` = 130;
UPDATE `auth_user_user_permissions` SET `id` = 131,`user_id` = 2,`permission_id` = 35 WHERE `auth_user_user_permissions`.`id` = 131;
UPDATE `auth_user_user_permissions` SET `id` = 132,`user_id` = 2,`permission_id` = 36 WHERE `auth_user_user_permissions`.`id` = 132;
UPDATE `auth_user_user_permissions` SET `id` = 133,`user_id` = 2,`permission_id` = 37 WHERE `auth_user_user_permissions`.`id` = 133;
UPDATE `auth_user_user_permissions` SET `id` = 134,`user_id` = 2,`permission_id` = 38 WHERE `auth_user_user_permissions`.`id` = 134;
UPDATE `auth_user_user_permissions` SET `id` = 135,`user_id` = 2,`permission_id` = 39 WHERE `auth_user_user_permissions`.`id` = 135;
UPDATE `auth_user_user_permissions` SET `id` = 136,`user_id` = 2,`permission_id` = 40 WHERE `auth_user_user_permissions`.`id` = 136;
UPDATE `auth_user_user_permissions` SET `id` = 137,`user_id` = 2,`permission_id` = 41 WHERE `auth_user_user_permissions`.`id` = 137;
UPDATE `auth_user_user_permissions` SET `id` = 138,`user_id` = 2,`permission_id` = 42 WHERE `auth_user_user_permissions`.`id` = 138;
UPDATE `auth_user_user_permissions` SET `id` = 139,`user_id` = 2,`permission_id` = 43 WHERE `auth_user_user_permissions`.`id` = 139;
UPDATE `auth_user_user_permissions` SET `id` = 140,`user_id` = 2,`permission_id` = 44 WHERE `auth_user_user_permissions`.`id` = 140;
UPDATE `auth_user_user_permissions` SET `id` = 141,`user_id` = 2,`permission_id` = 45 WHERE `auth_user_user_permissions`.`id` = 141;
UPDATE `auth_user_user_permissions` SET `id` = 142,`user_id` = 2,`permission_id` = 46 WHERE `auth_user_user_permissions`.`id` = 142;
UPDATE `auth_user_user_permissions` SET `id` = 143,`user_id` = 2,`permission_id` = 47 WHERE `auth_user_user_permissions`.`id` = 143;
UPDATE `auth_user_user_permissions` SET `id` = 144,`user_id` = 2,`permission_id` = 48 WHERE `auth_user_user_permissions`.`id` = 144;
UPDATE `auth_user_user_permissions` SET `id` = 145,`user_id` = 2,`permission_id` = 49 WHERE `auth_user_user_permissions`.`id` = 145;
UPDATE `auth_user_user_permissions` SET `id` = 146,`user_id` = 2,`permission_id` = 50 WHERE `auth_user_user_permissions`.`id` = 146;
UPDATE `auth_user_user_permissions` SET `id` = 147,`user_id` = 2,`permission_id` = 51 WHERE `auth_user_user_permissions`.`id` = 147;
UPDATE `auth_user_user_permissions` SET `id` = 148,`user_id` = 2,`permission_id` = 52 WHERE `auth_user_user_permissions`.`id` = 148;
UPDATE `auth_user_user_permissions` SET `id` = 149,`user_id` = 2,`permission_id` = 53 WHERE `auth_user_user_permissions`.`id` = 149;
UPDATE `auth_user_user_permissions` SET `id` = 150,`user_id` = 2,`permission_id` = 54 WHERE `auth_user_user_permissions`.`id` = 150;
UPDATE `auth_user_user_permissions` SET `id` = 151,`user_id` = 2,`permission_id` = 55 WHERE `auth_user_user_permissions`.`id` = 151;
UPDATE `auth_user_user_permissions` SET `id` = 152,`user_id` = 2,`permission_id` = 56 WHERE `auth_user_user_permissions`.`id` = 152;
UPDATE `auth_user_user_permissions` SET `id` = 153,`user_id` = 2,`permission_id` = 57 WHERE `auth_user_user_permissions`.`id` = 153;
UPDATE `auth_user_user_permissions` SET `id` = 154,`user_id` = 2,`permission_id` = 58 WHERE `auth_user_user_permissions`.`id` = 154;
UPDATE `auth_user_user_permissions` SET `id` = 155,`user_id` = 2,`permission_id` = 59 WHERE `auth_user_user_permissions`.`id` = 155;
UPDATE `auth_user_user_permissions` SET `id` = 156,`user_id` = 2,`permission_id` = 60 WHERE `auth_user_user_permissions`.`id` = 156;
UPDATE `auth_user_user_permissions` SET `id` = 157,`user_id` = 2,`permission_id` = 61 WHERE `auth_user_user_permissions`.`id` = 157;
UPDATE `auth_user_user_permissions` SET `id` = 158,`user_id` = 2,`permission_id` = 62 WHERE `auth_user_user_permissions`.`id` = 158;
UPDATE `auth_user_user_permissions` SET `id` = 159,`user_id` = 2,`permission_id` = 63 WHERE `auth_user_user_permissions`.`id` = 159;
UPDATE `auth_user_user_permissions` SET `id` = 160,`user_id` = 2,`permission_id` = 64 WHERE `auth_user_user_permissions`.`id` = 160;
UPDATE `auth_user_user_permissions` SET `id` = 161,`user_id` = 2,`permission_id` = 65 WHERE `auth_user_user_permissions`.`id` = 161;
UPDATE `auth_user_user_permissions` SET `id` = 162,`user_id` = 2,`permission_id` = 66 WHERE `auth_user_user_permissions`.`id` = 162;
UPDATE `auth_user_user_permissions` SET `id` = 163,`user_id` = 2,`permission_id` = 67 WHERE `auth_user_user_permissions`.`id` = 163;
UPDATE `auth_user_user_permissions` SET `id` = 164,`user_id` = 2,`permission_id` = 68 WHERE `auth_user_user_permissions`.`id` = 164;
UPDATE `auth_user_user_permissions` SET `id` = 165,`user_id` = 2,`permission_id` = 69 WHERE `auth_user_user_permissions`.`id` = 165;
UPDATE `auth_user_user_permissions` SET `id` = 166,`user_id` = 2,`permission_id` = 70 WHERE `auth_user_user_permissions`.`id` = 166;
UPDATE `auth_user_user_permissions` SET `id` = 167,`user_id` = 2,`permission_id` = 71 WHERE `auth_user_user_permissions`.`id` = 167;
UPDATE `auth_user_user_permissions` SET `id` = 168,`user_id` = 2,`permission_id` = 72 WHERE `auth_user_user_permissions`.`id` = 168;
UPDATE `auth_user_user_permissions` SET `id` = 169,`user_id` = 2,`permission_id` = 73 WHERE `auth_user_user_permissions`.`id` = 169;
UPDATE `auth_user_user_permissions` SET `id` = 170,`user_id` = 2,`permission_id` = 74 WHERE `auth_user_user_permissions`.`id` = 170;
UPDATE `auth_user_user_permissions` SET `id` = 171,`user_id` = 2,`permission_id` = 75 WHERE `auth_user_user_permissions`.`id` = 171;
UPDATE `auth_user_user_permissions` SET `id` = 172,`user_id` = 2,`permission_id` = 76 WHERE `auth_user_user_permissions`.`id` = 172;
UPDATE `auth_user_user_permissions` SET `id` = 173,`user_id` = 2,`permission_id` = 77 WHERE `auth_user_user_permissions`.`id` = 173;
UPDATE `auth_user_user_permissions` SET `id` = 174,`user_id` = 2,`permission_id` = 78 WHERE `auth_user_user_permissions`.`id` = 174;
UPDATE `auth_user_user_permissions` SET `id` = 175,`user_id` = 2,`permission_id` = 79 WHERE `auth_user_user_permissions`.`id` = 175;
UPDATE `auth_user_user_permissions` SET `id` = 176,`user_id` = 2,`permission_id` = 80 WHERE `auth_user_user_permissions`.`id` = 176;
UPDATE `auth_user_user_permissions` SET `id` = 177,`user_id` = 2,`permission_id` = 81 WHERE `auth_user_user_permissions`.`id` = 177;
UPDATE `auth_user_user_permissions` SET `id` = 178,`user_id` = 2,`permission_id` = 82 WHERE `auth_user_user_permissions`.`id` = 178;
UPDATE `auth_user_user_permissions` SET `id` = 179,`user_id` = 2,`permission_id` = 83 WHERE `auth_user_user_permissions`.`id` = 179;
UPDATE `auth_user_user_permissions` SET `id` = 180,`user_id` = 2,`permission_id` = 84 WHERE `auth_user_user_permissions`.`id` = 180;
UPDATE `auth_user_user_permissions` SET `id` = 181,`user_id` = 2,`permission_id` = 85 WHERE `auth_user_user_permissions`.`id` = 181;
UPDATE `auth_user_user_permissions` SET `id` = 182,`user_id` = 2,`permission_id` = 86 WHERE `auth_user_user_permissions`.`id` = 182;
UPDATE `auth_user_user_permissions` SET `id` = 183,`user_id` = 2,`permission_id` = 87 WHERE `auth_user_user_permissions`.`id` = 183;
UPDATE `auth_user_user_permissions` SET `id` = 184,`user_id` = 2,`permission_id` = 88 WHERE `auth_user_user_permissions`.`id` = 184;
UPDATE `auth_user_user_permissions` SET `id` = 185,`user_id` = 2,`permission_id` = 89 WHERE `auth_user_user_permissions`.`id` = 185;
UPDATE `auth_user_user_permissions` SET `id` = 186,`user_id` = 2,`permission_id` = 90 WHERE `auth_user_user_permissions`.`id` = 186;
UPDATE `auth_user_user_permissions` SET `id` = 187,`user_id` = 2,`permission_id` = 91 WHERE `auth_user_user_permissions`.`id` = 187;
UPDATE `auth_user_user_permissions` SET `id` = 188,`user_id` = 2,`permission_id` = 92 WHERE `auth_user_user_permissions`.`id` = 188;
UPDATE `auth_user_user_permissions` SET `id` = 189,`user_id` = 2,`permission_id` = 93 WHERE `auth_user_user_permissions`.`id` = 189;
UPDATE `auth_user_user_permissions` SET `id` = 190,`user_id` = 2,`permission_id` = 94 WHERE `auth_user_user_permissions`.`id` = 190;
UPDATE `auth_user_user_permissions` SET `id` = 191,`user_id` = 2,`permission_id` = 95 WHERE `auth_user_user_permissions`.`id` = 191;
UPDATE `auth_user_user_permissions` SET `id` = 192,`user_id` = 2,`permission_id` = 96 WHERE `auth_user_user_permissions`.`id` = 192;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

UPDATE `django_admin_log` SET `id` = 1,`action_time` = '2018-03-10 12:31:02.015185',`object_id` = '1',`object_repr` = 'Doctor',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 2,`user_id` = 1 WHERE `django_admin_log`.`id` = 1;
UPDATE `django_admin_log` SET `id` = 2,`action_time` = '2018-03-10 12:33:02.386774',`object_id` = '2',`object_repr` = 'Secretary',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 2,`user_id` = 1 WHERE `django_admin_log`.`id` = 2;
UPDATE `django_admin_log` SET `id` = 3,`action_time` = '2018-03-10 12:33:18.161544',`object_id` = '1',`object_repr` = 'Doctor',`action_flag` = 2,`change_message` = '[]',`content_type_id` = 2,`user_id` = 1 WHERE `django_admin_log`.`id` = 3;
UPDATE `django_admin_log` SET `id` = 4,`action_time` = '2018-03-10 12:35:51.328550',`object_id` = '1',`object_repr` = 'gerald',`action_flag` = 2,`change_message` = '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"user_permissions\"]}}]',`content_type_id` = 4,`user_id` = 1 WHERE `django_admin_log`.`id` = 4;
UPDATE `django_admin_log` SET `id` = 5,`action_time` = '2018-03-10 12:36:24.468895',`object_id` = '3',`object_repr` = 'Admin',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 2,`user_id` = 1 WHERE `django_admin_log`.`id` = 5;
UPDATE `django_admin_log` SET `id` = 6,`action_time` = '2018-03-10 12:39:49.828535',`object_id` = '1',`object_repr` = 'Negros Oriental',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 9,`user_id` = 1 WHERE `django_admin_log`.`id` = 6;
UPDATE `django_admin_log` SET `id` = 7,`action_time` = '2018-03-10 12:39:52.634481',`object_id` = '1',`object_repr` = 'Dumaguete City',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 7,`user_id` = 1 WHERE `django_admin_log`.`id` = 7;
UPDATE `django_admin_log` SET `id` = 8,`action_time` = '2018-03-10 12:40:33.723357',`object_id` = '1',`object_repr` = 'Retired',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 10,`user_id` = 1 WHERE `django_admin_log`.`id` = 8;
UPDATE `django_admin_log` SET `id` = 9,`action_time` = '2018-03-10 12:40:59.214857',`object_id` = '1',`object_repr` = 'Brown, Gerald',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 8,`user_id` = 1 WHERE `django_admin_log`.`id` = 9;
UPDATE `django_admin_log` SET `id` = 10,`action_time` = '2018-03-10 12:41:38.214577',`object_id` = '1',`object_repr` = 'Brown, Gerald',`action_flag` = 2,`change_message` = '[]',`content_type_id` = 8,`user_id` = 1 WHERE `django_admin_log`.`id` = 10;
UPDATE `django_admin_log` SET `id` = 11,`action_time` = '2018-03-10 12:42:13.751274',`object_id` = '1',`object_repr` = 'gerald',`action_flag` = 2,`change_message` = '[{\"changed\": {\"fields\": [\"groups\"]}}]',`content_type_id` = 4,`user_id` = 1 WHERE `django_admin_log`.`id` = 11;
UPDATE `django_admin_log` SET `id` = 12,`action_time` = '2018-03-10 12:44:22.330228',`object_id` = '3',`object_repr` = 'Admin',`action_flag` = 2,`change_message` = '[]',`content_type_id` = 2,`user_id` = 1 WHERE `django_admin_log`.`id` = 12;
UPDATE `django_admin_log` SET `id` = 13,`action_time` = '2018-03-10 12:45:10.811191',`object_id` = '1',`object_repr` = 'Doctor',`action_flag` = 2,`change_message` = '[]',`content_type_id` = 2,`user_id` = 1 WHERE `django_admin_log`.`id` = 13;
UPDATE `django_admin_log` SET `id` = 14,`action_time` = '2018-03-10 12:46:09.233978',`object_id` = '2',`object_repr` = 'hansdale',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 4,`user_id` = 1 WHERE `django_admin_log`.`id` = 14;
UPDATE `django_admin_log` SET `id` = 15,`action_time` = '2018-03-10 12:47:47.969943',`object_id` = '2',`object_repr` = 'hansdale',`action_flag` = 2,`change_message` = '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"is_staff\", \"is_superuser\", \"groups\"]}}]',`content_type_id` = 4,`user_id` = 1 WHERE `django_admin_log`.`id` = 15;
UPDATE `django_admin_log` SET `id` = 16,`action_time` = '2018-03-10 12:48:15.140293',`object_id` = '2',`object_repr` = 'hansdale',`action_flag` = 2,`change_message` = '[{\"changed\": {\"fields\": [\"user_permissions\"]}}]',`content_type_id` = 4,`user_id` = 1 WHERE `django_admin_log`.`id` = 16;
UPDATE `django_admin_log` SET `id` = 17,`action_time` = '2018-03-10 12:53:09.722810',`object_id` = '1',`object_repr` = 'Brown, Gerald',`action_flag` = 2,`change_message` = '[]',`content_type_id` = 8,`user_id` = 1 WHERE `django_admin_log`.`id` = 17;
UPDATE `django_admin_log` SET `id` = 18,`action_time` = '2018-03-11 13:06:04.597832',`object_id` = '1',`object_repr` = 'Ears',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 25,`user_id` = 1 WHERE `django_admin_log`.`id` = 18;
UPDATE `django_admin_log` SET `id` = 19,`action_time` = '2018-03-11 13:06:27.815790',`object_id` = '1',`object_repr` = 'Excessive ear wax',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 24,`user_id` = 1 WHERE `django_admin_log`.`id` = 19;
UPDATE `django_admin_log` SET `id` = 20,`action_time` = '2018-03-11 13:06:41.531033',`object_id` = '1',`object_repr` = 'Hearing problem',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 15,`user_id` = 1 WHERE `django_admin_log`.`id` = 20;
UPDATE `django_admin_log` SET `id` = 21,`action_time` = '2018-03-11 13:07:01.646905',`object_id` = '1',`object_repr` = 'Removed ear wax',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 22,`user_id` = 1 WHERE `django_admin_log`.`id` = 21;
UPDATE `django_admin_log` SET `id` = 22,`action_time` = '2018-03-11 13:07:21.888487',`object_id` = '1',`object_repr` = 'Brown, Gerald, 2018-03-11',`action_flag` = 1,`change_message` = '[{\"added\": {}}, {\"added\": {\"name\": \"complaint\", \"object\": \"Hearing problem\"}}]',`content_type_id` = 12,`user_id` = 1 WHERE `django_admin_log`.`id` = 22;
UPDATE `django_admin_log` SET `id` = 23,`action_time` = '2018-03-11 13:46:47.381983',`object_id` = '2',`object_repr` = 'Retired Housewife',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 10,`user_id` = 1 WHERE `django_admin_log`.`id` = 23;
UPDATE `django_admin_log` SET `id` = 24,`action_time` = '2018-03-11 13:46:52.280426',`object_id` = '2',`object_repr` = 'Brown, Brenda',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 8,`user_id` = 1 WHERE `django_admin_log`.`id` = 24;
UPDATE `django_admin_log` SET `id` = 25,`action_time` = '2018-03-11 13:47:56.699275',`object_id` = '2',`object_repr` = 'Brown, Brenda, 2018-03-11',`action_flag` = 1,`change_message` = '[{\"added\": {}}, {\"added\": {\"name\": \"complaint\", \"object\": \"Hearing problem\"}}]',`content_type_id` = 12,`user_id` = 1 WHERE `django_admin_log`.`id` = 25;
UPDATE `django_admin_log` SET `id` = 26,`action_time` = '2018-03-12 10:45:28.988363',`object_id` = '2',`object_repr` = 'Siquijor',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 9,`user_id` = 1 WHERE `django_admin_log`.`id` = 26;
UPDATE `django_admin_log` SET `id` = 27,`action_time` = '2018-03-12 10:45:32.239826',`object_id` = '2',`object_repr` = 'Larena',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 7,`user_id` = 1 WHERE `django_admin_log`.`id` = 27;
UPDATE `django_admin_log` SET `id` = 28,`action_time` = '2018-03-12 10:45:54.371517',`object_id` = '3',`object_repr` = 'Unknown',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 10,`user_id` = 1 WHERE `django_admin_log`.`id` = 28;
UPDATE `django_admin_log` SET `id` = 29,`action_time` = '2018-03-12 10:45:58.497634',`object_id` = '3',`object_repr` = 'Test1, Test1',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 8,`user_id` = 1 WHERE `django_admin_log`.`id` = 29;
UPDATE `django_admin_log` SET `id` = 30,`action_time` = '2018-03-12 10:59:21.409765',`object_id` = '3',`object_repr` = 'Test1, Test1',`action_flag` = 3,`change_message` = '',`content_type_id` = 8,`user_id` = 1 WHERE `django_admin_log`.`id` = 30;
UPDATE `django_admin_log` SET `id` = 31,`action_time` = '2018-03-12 11:00:08.036550',`object_id` = '4',`object_repr` = 'Test1, test1',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 8,`user_id` = 1 WHERE `django_admin_log`.`id` = 31;
UPDATE `django_admin_log` SET `id` = 32,`action_time` = '2018-03-12 12:55:38.176080',`object_id` = '2',`object_repr` = 'Secretary',`action_flag` = 2,`change_message` = '[{\"changed\": {\"fields\": [\"permissions\"]}}]',`content_type_id` = 2,`user_id` = 1 WHERE `django_admin_log`.`id` = 32;
UPDATE `django_admin_log` SET `id` = 33,`action_time` = '2018-03-12 12:56:26.238088',`object_id` = '1',`object_repr` = 'Doctor',`action_flag` = 2,`change_message` = '[{\"changed\": {\"fields\": [\"permissions\"]}}]',`content_type_id` = 2,`user_id` = 1 WHERE `django_admin_log`.`id` = 33;
UPDATE `django_admin_log` SET `id` = 34,`action_time` = '2018-03-12 12:58:19.465770',`object_id` = '3',`object_repr` = 'secretary',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 4,`user_id` = 1 WHERE `django_admin_log`.`id` = 34;
UPDATE `django_admin_log` SET `id` = 35,`action_time` = '2018-03-12 12:58:59.030891',`object_id` = '3',`object_repr` = 'secretary',`action_flag` = 2,`change_message` = '[{\"changed\": {\"fields\": [\"is_staff\", \"groups\"]}}]',`content_type_id` = 4,`user_id` = 1 WHERE `django_admin_log`.`id` = 35;
UPDATE `django_admin_log` SET `id` = 36,`action_time` = '2018-03-12 13:05:39.988580',`object_id` = '4',`object_repr` = 'doctor',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 4,`user_id` = 1 WHERE `django_admin_log`.`id` = 36;
UPDATE `django_admin_log` SET `id` = 37,`action_time` = '2018-03-12 13:06:07.615738',`object_id` = '4',`object_repr` = 'doctor',`action_flag` = 2,`change_message` = '[{\"changed\": {\"fields\": [\"is_staff\", \"groups\"]}}]',`content_type_id` = 4,`user_id` = 1 WHERE `django_admin_log`.`id` = 37;
UPDATE `django_admin_log` SET `id` = 38,`action_time` = '2018-03-12 13:06:45.290325',`object_id` = '1',`object_repr` = 'Doctor',`action_flag` = 2,`change_message` = '[]',`content_type_id` = 2,`user_id` = 1 WHERE `django_admin_log`.`id` = 38;
UPDATE `django_admin_log` SET `id` = 39,`action_time` = '2018-03-12 13:12:31.266317',`object_id` = '2',`object_repr` = 'Secretary',`action_flag` = 2,`change_message` = '[]',`content_type_id` = 2,`user_id` = 1 WHERE `django_admin_log`.`id` = 39;
UPDATE `django_admin_log` SET `id` = 40,`action_time` = '2018-03-12 13:13:48.910888',`object_id` = '5',`object_repr` = 'test2, test2',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 8,`user_id` = 1 WHERE `django_admin_log`.`id` = 40;
UPDATE `django_admin_log` SET `id` = 41,`action_time` = '2018-03-12 13:14:52.546405',`object_id` = '3',`object_repr` = 'Cebu',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 9,`user_id` = 1 WHERE `django_admin_log`.`id` = 41;
UPDATE `django_admin_log` SET `id` = 42,`action_time` = '2018-03-12 13:14:55.274011',`object_id` = '3',`object_repr` = 'Cebu',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 7,`user_id` = 1 WHERE `django_admin_log`.`id` = 42;
UPDATE `django_admin_log` SET `id` = 43,`action_time` = '2018-03-12 13:15:05.891254',`object_id` = '6',`object_repr` = 'test3, test3',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 8,`user_id` = 1 WHERE `django_admin_log`.`id` = 43;
UPDATE `django_admin_log` SET `id` = 44,`action_time` = '2018-03-21 11:51:03.133865',`object_id` = '1',`object_repr` = '10:00 A.M - 12:00 NN 2:00 P.M. -4:00 Pm',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 36,`user_id` = 1 WHERE `django_admin_log`.`id` = 44;
UPDATE `django_admin_log` SET `id` = 45,`action_time` = '2018-03-21 11:51:26.271328',`object_id` = '2',`object_repr` = '10:00 A.M - 12:00 NN None',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 36,`user_id` = 1 WHERE `django_admin_log`.`id` = 45;
UPDATE `django_admin_log` SET `id` = 46,`action_time` = '2018-03-21 11:52:05.906975',`object_id` = '1',`object_repr` = 'SUMC',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 31,`user_id` = 1 WHERE `django_admin_log`.`id` = 46;
UPDATE `django_admin_log` SET `id` = 47,`action_time` = '2018-03-21 11:52:27.060758',`object_id` = '2',`object_repr` = 'Holy Child Hospital',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 31,`user_id` = 1 WHERE `django_admin_log`.`id` = 47;
UPDATE `django_admin_log` SET `id` = 48,`action_time` = '2018-03-21 11:52:41.008824',`object_id` = '3',`object_repr` = 'NOPH',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 31,`user_id` = 1 WHERE `django_admin_log`.`id` = 48;
UPDATE `django_admin_log` SET `id` = 49,`action_time` = '2018-03-21 11:56:02.846610',`object_id` = '1',`object_repr` = 'SIMON JOHN ERIC T., FLORES',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 32,`user_id` = 1 WHERE `django_admin_log`.`id` = 49;
UPDATE `django_admin_log` SET `id` = 50,`action_time` = '2018-03-21 11:57:59.526960',`object_id` = '1',`object_repr` = 'SIMON JOHN ERIC T., FLORES',`action_flag` = 2,`change_message` = '[{\"changed\": {\"fields\": [\"dr_suffix\", \"dr_telephone\"]}}]',`content_type_id` = 32,`user_id` = 1 WHERE `django_admin_log`.`id` = 50;
UPDATE `django_admin_log` SET `id` = 51,`action_time` = '2018-03-21 12:06:02.040311',`object_id` = '3',`object_repr` = 'test2, test2, 2018-03-21',`action_flag` = 1,`change_message` = '[{\"added\": {}}, {\"added\": {\"object\": \"Hearing problem\", \"name\": \"complaint\"}}]',`content_type_id` = 12,`user_id` = 1 WHERE `django_admin_log`.`id` = 51;
UPDATE `django_admin_log` SET `id` = 52,`action_time` = '2018-03-21 13:08:37.421151',`object_id` = '1',`object_repr` = 'Med1',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 16,`user_id` = 1 WHERE `django_admin_log`.`id` = 52;
UPDATE `django_admin_log` SET `id` = 53,`action_time` = '2018-03-21 13:08:53.581155',`object_id` = '1',`object_repr` = '25 mg',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 13,`user_id` = 1 WHERE `django_admin_log`.`id` = 53;
UPDATE `django_admin_log` SET `id` = 54,`action_time` = '2018-03-21 13:09:14.291041',`object_id` = '1',`object_repr` = 'Take twice a day',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 21,`user_id` = 1 WHERE `django_admin_log`.`id` = 54;
UPDATE `django_admin_log` SET `id` = 55,`action_time` = '2018-03-21 13:09:47.529316',`object_id` = '1',`object_repr` = 'Brown, Gerald, 2018-03-11',`action_flag` = 2,`change_message` = '[{\"added\": {\"name\": \"prescription\", \"object\": \"Prescription object (1)\"}}]',`content_type_id` = 12,`user_id` = 1 WHERE `django_admin_log`.`id` = 55;
UPDATE `django_admin_log` SET `id` = 56,`action_time` = '2018-03-21 15:28:40.794286',`object_id` = '7',`object_repr` = 'Some, One',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 8,`user_id` = 1 WHERE `django_admin_log`.`id` = 56;
UPDATE `django_admin_log` SET `id` = 57,`action_time` = '2018-03-21 15:30:16.121067',`object_id` = '8',`object_repr` = 'Another, One',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 8,`user_id` = 1 WHERE `django_admin_log`.`id` = 57;
UPDATE `django_admin_log` SET `id` = 58,`action_time` = '2018-03-24 12:59:39.879738',`object_id` = '4',`object_repr` = 'Dumaguete City',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 7,`user_id` = 1 WHERE `django_admin_log`.`id` = 58;
UPDATE `django_admin_log` SET `id` = 59,`action_time` = '2018-03-24 12:59:48.833669',`object_id` = '9',`object_repr` = 'Last Name, First Name',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 8,`user_id` = 1 WHERE `django_admin_log`.`id` = 59;
UPDATE `django_admin_log` SET `id` = 60,`action_time` = '2018-03-27 11:49:53.967098',`object_id` = '4',`object_repr` = 'Encoder',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 2,`user_id` = 1 WHERE `django_admin_log`.`id` = 60;
UPDATE `django_admin_log` SET `id` = 61,`action_time` = '2018-03-30 11:58:56.000000',`object_id` = '2',`object_repr` = 'Med2',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 16,`user_id` = 1 WHERE `django_admin_log`.`id` = 61;
UPDATE `django_admin_log` SET `id` = 62,`action_time` = '2018-03-30 11:59:12.000000',`object_id` = '2',`object_repr` = '10 mg',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 13,`user_id` = 1 WHERE `django_admin_log`.`id` = 62;
UPDATE `django_admin_log` SET `id` = 63,`action_time` = '2018-03-30 11:59:39.000000',`object_id` = '2',`object_repr` = 'Take once a day',`action_flag` = 1,`change_message` = '[{\"added\": {}}]',`content_type_id` = 21,`user_id` = 1 WHERE `django_admin_log`.`id` = 63;
UPDATE `django_admin_log` SET `id` = 64,`action_time` = '2018-04-01 11:59:24.000000',`object_id` = '1',`object_repr` = 'gerald',`action_flag` = 2,`change_message` = '[{\"changed\": {\"fields\": [\"password\"]}}]',`content_type_id` = 4,`user_id` = 5 WHERE `django_admin_log`.`id` = 64;

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

UPDATE `django_content_type` SET `id` = 1,`app_label` = 'admin',`model` = 'logentry' WHERE `django_content_type`.`id` = 1;
UPDATE `django_content_type` SET `id` = 2,`app_label` = 'auth',`model` = 'group' WHERE `django_content_type`.`id` = 2;
UPDATE `django_content_type` SET `id` = 3,`app_label` = 'auth',`model` = 'permission' WHERE `django_content_type`.`id` = 3;
UPDATE `django_content_type` SET `id` = 4,`app_label` = 'auth',`model` = 'user' WHERE `django_content_type`.`id` = 4;
UPDATE `django_content_type` SET `id` = 5,`app_label` = 'contenttypes',`model` = 'contenttype' WHERE `django_content_type`.`id` = 5;
UPDATE `django_content_type` SET `id` = 32,`app_label` = 'doctor',`model` = 'doctor' WHERE `django_content_type`.`id` = 32;
UPDATE `django_content_type` SET `id` = 36,`app_label` = 'doctor',`model` = 'drofficehour' WHERE `django_content_type`.`id` = 36;
UPDATE `django_content_type` SET `id` = 31,`app_label` = 'doctor',`model` = 'hospital' WHERE `django_content_type`.`id` = 31;
UPDATE `django_content_type` SET `id` = 35,`app_label` = 'doctor',`model` = 'officehour' WHERE `django_content_type`.`id` = 35;
UPDATE `django_content_type` SET `id` = 34,`app_label` = 'doctor',`model` = 'officehours' WHERE `django_content_type`.`id` = 34;
UPDATE `django_content_type` SET `id` = 33,`app_label` = 'doctor',`model` = 'office_hours' WHERE `django_content_type`.`id` = 33;
UPDATE `django_content_type` SET `id` = 10,`app_label` = 'patient',`model` = 'occupation' WHERE `django_content_type`.`id` = 10;
UPDATE `django_content_type` SET `id` = 8,`app_label` = 'patient',`model` = 'patient' WHERE `django_content_type`.`id` = 8;
UPDATE `django_content_type` SET `id` = 9,`app_label` = 'patient',`model` = 'province' WHERE `django_content_type`.`id` = 9;
UPDATE `django_content_type` SET `id` = 7,`app_label` = 'patient',`model` = 'town' WHERE `django_content_type`.`id` = 7;
UPDATE `django_content_type` SET `id` = 6,`app_label` = 'sessions',`model` = 'session' WHERE `django_content_type`.`id` = 6;
UPDATE `django_content_type` SET `id` = 30,`app_label` = 'visit',`model` = 'biopsy' WHERE `django_content_type`.`id` = 30;
UPDATE `django_content_type` SET `id` = 29,`app_label` = 'visit',`model` = 'biopsyname' WHERE `django_content_type`.`id` = 29;
UPDATE `django_content_type` SET `id` = 23,`app_label` = 'visit',`model` = 'biopsyresult' WHERE `django_content_type`.`id` = 23;
UPDATE `django_content_type` SET `id` = 14,`app_label` = 'visit',`model` = 'complaint' WHERE `django_content_type`.`id` = 14;
UPDATE `django_content_type` SET `id` = 15,`app_label` = 'visit',`model` = 'complaintname' WHERE `django_content_type`.`id` = 15;
UPDATE `django_content_type` SET `id` = 13,`app_label` = 'visit',`model` = 'dose' WHERE `django_content_type`.`id` = 13;
UPDATE `django_content_type` SET `id` = 19,`app_label` = 'visit',`model` = 'exam' WHERE `django_content_type`.`id` = 19;
UPDATE `django_content_type` SET `id` = 28,`app_label` = 'visit',`model` = 'examname' WHERE `django_content_type`.`id` = 28;
UPDATE `django_content_type` SET `id` = 11,`app_label` = 'visit',`model` = 'examresult' WHERE `django_content_type`.`id` = 11;
UPDATE `django_content_type` SET `id` = 18,`app_label` = 'visit',`model` = 'examtype' WHERE `django_content_type`.`id` = 18;
UPDATE `django_content_type` SET `id` = 24,`app_label` = 'visit',`model` = 'finding' WHERE `django_content_type`.`id` = 24;
UPDATE `django_content_type` SET `id` = 20,`app_label` = 'visit',`model` = 'hearing' WHERE `django_content_type`.`id` = 20;
UPDATE `django_content_type` SET `id` = 27,`app_label` = 'visit',`model` = 'hearingresult' WHERE `django_content_type`.`id` = 27;
UPDATE `django_content_type` SET `id` = 17,`app_label` = 'visit',`model` = 'hearingtest' WHERE `django_content_type`.`id` = 17;
UPDATE `django_content_type` SET `id` = 25,`app_label` = 'visit',`model` = 'location' WHERE `django_content_type`.`id` = 25;
UPDATE `django_content_type` SET `id` = 16,`app_label` = 'visit',`model` = 'medicine' WHERE `django_content_type`.`id` = 16;
UPDATE `django_content_type` SET `id` = 26,`app_label` = 'visit',`model` = 'prescription' WHERE `django_content_type`.`id` = 26;
UPDATE `django_content_type` SET `id` = 21,`app_label` = 'visit',`model` = 'reminder' WHERE `django_content_type`.`id` = 21;
UPDATE `django_content_type` SET `id` = 22,`app_label` = 'visit',`model` = 'treatment' WHERE `django_content_type`.`id` = 22;
UPDATE `django_content_type` SET `id` = 12,`app_label` = 'visit',`model` = 'visit' WHERE `django_content_type`.`id` = 12;

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

UPDATE `django_migrations` SET `id` = 1,`app` = 'contenttypes',`name` = '0001_initial',`applied` = '2018-03-09 12:08:34.879546' WHERE `django_migrations`.`id` = 1;
UPDATE `django_migrations` SET `id` = 2,`app` = 'auth',`name` = '0001_initial',`applied` = '2018-03-09 12:08:39.095360' WHERE `django_migrations`.`id` = 2;
UPDATE `django_migrations` SET `id` = 3,`app` = 'admin',`name` = '0001_initial',`applied` = '2018-03-09 12:08:39.970390' WHERE `django_migrations`.`id` = 3;
UPDATE `django_migrations` SET `id` = 4,`app` = 'admin',`name` = '0002_logentry_remove_auto_add',`applied` = '2018-03-09 12:08:39.999977' WHERE `django_migrations`.`id` = 4;
UPDATE `django_migrations` SET `id` = 5,`app` = 'contenttypes',`name` = '0002_remove_content_type_name',`applied` = '2018-03-09 12:08:40.532075' WHERE `django_migrations`.`id` = 5;
UPDATE `django_migrations` SET `id` = 6,`app` = 'auth',`name` = '0002_alter_permission_name_max_length',`applied` = '2018-03-09 12:08:40.609258' WHERE `django_migrations`.`id` = 6;
UPDATE `django_migrations` SET `id` = 7,`app` = 'auth',`name` = '0003_alter_user_email_max_length',`applied` = '2018-03-09 12:08:40.687014' WHERE `django_migrations`.`id` = 7;
UPDATE `django_migrations` SET `id` = 8,`app` = 'auth',`name` = '0004_alter_user_username_opts',`applied` = '2018-03-09 12:08:40.733267' WHERE `django_migrations`.`id` = 8;
UPDATE `django_migrations` SET `id` = 9,`app` = 'auth',`name` = '0005_alter_user_last_login_null',`applied` = '2018-03-09 12:08:40.965487' WHERE `django_migrations`.`id` = 9;
UPDATE `django_migrations` SET `id` = 10,`app` = 'auth',`name` = '0006_require_contenttypes_0002',`applied` = '2018-03-09 12:08:40.982003' WHERE `django_migrations`.`id` = 10;
UPDATE `django_migrations` SET `id` = 11,`app` = 'auth',`name` = '0007_alter_validators_add_error_messages',`applied` = '2018-03-09 12:08:41.003151' WHERE `django_migrations`.`id` = 11;
UPDATE `django_migrations` SET `id` = 12,`app` = 'auth',`name` = '0008_alter_user_username_max_length',`applied` = '2018-03-09 12:08:41.466270' WHERE `django_migrations`.`id` = 12;
UPDATE `django_migrations` SET `id` = 13,`app` = 'auth',`name` = '0009_alter_user_last_name_max_length',`applied` = '2018-03-09 12:08:41.544466' WHERE `django_migrations`.`id` = 13;
UPDATE `django_migrations` SET `id` = 14,`app` = 'patient',`name` = '0001_initial',`applied` = '2018-03-09 12:08:46.171299' WHERE `django_migrations`.`id` = 14;
UPDATE `django_migrations` SET `id` = 15,`app` = 'sessions',`name` = '0001_initial',`applied` = '2018-03-09 12:08:46.286815' WHERE `django_migrations`.`id` = 15;
UPDATE `django_migrations` SET `id` = 16,`app` = 'visit',`name` = '0001_initial',`applied` = '2018-03-09 12:09:16.589364' WHERE `django_migrations`.`id` = 16;
UPDATE `django_migrations` SET `id` = 18,`app` = 'visit',`name` = '0002_visit_patient',`applied` = '2018-03-10 14:08:37.143371' WHERE `django_migrations`.`id` = 18;
UPDATE `django_migrations` SET `id` = 19,`app` = 'visit',`name` = '0003_prescription_patient',`applied` = '2018-03-10 14:15:42.594888' WHERE `django_migrations`.`id` = 19;
UPDATE `django_migrations` SET `id` = 20,`app` = 'visit',`name` = '0004_auto_20180310_2217',`applied` = '2018-03-10 14:17:31.214413' WHERE `django_migrations`.`id` = 20;
UPDATE `django_migrations` SET `id` = 22,`app` = 'patient',`name` = '0002_auto_20180312_1858',`applied` = '2018-03-12 10:58:46.025098' WHERE `django_migrations`.`id` = 22;
UPDATE `django_migrations` SET `id` = 23,`app` = 'visit',`name` = '0005_auto_20180313_1917',`applied` = '2018-03-13 11:17:28.830962' WHERE `django_migrations`.`id` = 23;
UPDATE `django_migrations` SET `id` = 26,`app` = 'patient',`name` = '0003_remove_patient_age',`applied` = '2018-03-14 15:16:21.578901' WHERE `django_migrations`.`id` = 26;
UPDATE `django_migrations` SET `id` = 35,`app` = 'doctor',`name` = '0001_initial',`applied` = '2018-03-18 10:05:59.261095' WHERE `django_migrations`.`id` = 35;
UPDATE `django_migrations` SET `id` = 36,`app` = 'doctor',`name` = '0002_auto_20180321_1927',`applied` = '2018-03-21 11:28:17.816816' WHERE `django_migrations`.`id` = 36;
UPDATE `django_migrations` SET `id` = 37,`app` = 'doctor',`name` = '0003_auto_20180321_1956',`applied` = '2018-03-21 11:56:48.536056' WHERE `django_migrations`.`id` = 37;
UPDATE `django_migrations` SET `id` = 38,`app` = 'patient',`name` = '0002_remove_patient_pic',`applied` = '2018-03-29 12:59:43.000000' WHERE `django_migrations`.`id` = 38;
UPDATE `django_migrations` SET `id` = 39,`app` = 'patient',`name` = '0003_patient_pic',`applied` = '2018-03-29 12:59:43.000000' WHERE `django_migrations`.`id` = 39;
UPDATE `django_migrations` SET `id` = 40,`app` = 'patient',`name` = '0004_remove_patient_pic',`applied` = '2018-03-29 13:01:05.000000' WHERE `django_migrations`.`id` = 40;
UPDATE `django_migrations` SET `id` = 41,`app` = 'visit',`name` = '0002_remove_prescription_pres_paper',`applied` = '2018-03-30 11:48:53.000000' WHERE `django_migrations`.`id` = 41;
UPDATE `django_migrations` SET `id` = 42,`app` = 'visit',`name` = '0003_remove_prescription_pprint',`applied` = '2018-03-30 12:21:58.000000' WHERE `django_migrations`.`id` = 42;
UPDATE `django_migrations` SET `id` = 43,`app` = 'visit',`name` = '0004_remove_prescription_patient_prescpt',`applied` = '2018-03-30 13:04:50.000000' WHERE `django_migrations`.`id` = 43;
UPDATE `django_migrations` SET `id` = 44,`app` = 'visit',`name` = '0005_auto_20180331_1751',`applied` = '2018-03-31 09:51:34.000000' WHERE `django_migrations`.`id` = 44;

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

UPDATE `django_session` SET `session_key` = '0eni2t3j857dkkh6j0i3vrg1ub8oxwpt',`session_data` = 'M2RmMzkzN2JhM2U0YmIzZGVhZDhiMmUzOGU1YjA4ZjkzNjdkNzI4NDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjQiLCJfYXV0aF91c2VyX2hhc2giOiI5MjdlNjM2Nzg2NDhhNDJhNmRjOGI3Y2Y3NWRhNDQ2MzI3MTU3YjkyIn0=',`expire_date` = '2018-03-30 11:26:40.370977' WHERE `django_session`.`session_key` = '0eni2t3j857dkkh6j0i3vrg1ub8oxwpt';
UPDATE `django_session` SET `session_key` = 'eo67voy4htwz8w6bnhxwrretryh8h3q8',`session_data` = 'ZGM2MDNmNWExM2RlM2Q3Y2RiYzJlODAxY2M1YzYzZmVhNTIwNDljMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjVlOGI4NDQ2NTdmYWQ2ZTQwZWIyNGQzNWRkYzg3ZWY2YzUwOWQ1OGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=',`expire_date` = '2018-03-23 14:05:07.466585' WHERE `django_session`.`session_key` = 'eo67voy4htwz8w6bnhxwrretryh8h3q8';
UPDATE `django_session` SET `session_key` = 'fzskc2o5tsg1a6e5bvovz5cgjgiz5qex',`session_data` = 'NDA2ZjEwYTBhYmE5YWY2YjY2NDJiMmU3ZDUyOGQ2ZTE2NDMzMmU1OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjgzYTYzZDZmMDY4ZDc2M2U0YjNjMzI0YTUzNDM0M2Q1NzIyMmEwMjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=',`expire_date` = '2018-03-24 13:01:30.984575' WHERE `django_session`.`session_key` = 'fzskc2o5tsg1a6e5bvovz5cgjgiz5qex';
UPDATE `django_session` SET `session_key` = 'gufo1sdp3jsg9cnlb7m6nhg5j3oy75gb',`session_data` = 'NzM4N2Y1NTQ2ZjI3NzY0NjcwZTM5YzQ2MmEzODZjOGYxZTc1NTE4MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NjJlMzFkNTllMGFkYWY0MTFhOTM4M2FkZjExNjAwOTA5YjY5MjJhIn0=',`expire_date` = '2018-04-15 11:59:45.000000' WHERE `django_session`.`session_key` = 'gufo1sdp3jsg9cnlb7m6nhg5j3oy75gb';
UPDATE `django_session` SET `session_key` = 'i33st1hkzzat74oaxoxtunu16cfdkyhk',`session_data` = 'ZGM2MDNmNWExM2RlM2Q3Y2RiYzJlODAxY2M1YzYzZmVhNTIwNDljMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjVlOGI4NDQ2NTdmYWQ2ZTQwZWIyNGQzNWRkYzg3ZWY2YzUwOWQ1OGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=',`expire_date` = '2018-03-23 12:11:39.850597' WHERE `django_session`.`session_key` = 'i33st1hkzzat74oaxoxtunu16cfdkyhk';
UPDATE `django_session` SET `session_key` = 'ipsqskxofysjq34yjmsmocvpzpq9wk3n',`session_data` = 'NmM1ODYyNjFhY2Q1MmVlMTgwODhkOGUwMDJjZDc3MWE1ZWQwN2EzMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWU4Yjg0NDY1N2ZhZDZlNDBlYjI0ZDM1ZGRjODdlZjZjNTA5ZDU4YSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=',`expire_date` = '2018-04-07 12:57:49.022932' WHERE `django_session`.`session_key` = 'ipsqskxofysjq34yjmsmocvpzpq9wk3n';
UPDATE `django_session` SET `session_key` = 'q089mzo2u6rfj3adb5h77go0r57an4o4',`session_data` = 'NmM1ODYyNjFhY2Q1MmVlMTgwODhkOGUwMDJjZDc3MWE1ZWQwN2EzMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWU4Yjg0NDY1N2ZhZDZlNDBlYjI0ZDM1ZGRjODdlZjZjNTA5ZDU4YSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=',`expire_date` = '2018-04-07 13:02:46.835517' WHERE `django_session`.`session_key` = 'q089mzo2u6rfj3adb5h77go0r57an4o4';
UPDATE `django_session` SET `session_key` = 'qvsehrrst001vd82euipmq2c6xkvidbl',`session_data` = 'Yzc0NGJiOWY4MTI4OGJmOThkZDQ4YTRhMTM3MzBjM2ZhMGE5NWM5Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI1ZThiODQ0NjU3ZmFkNmU0MGViMjRkMzVkZGM4N2VmNmM1MDlkNThhIn0=',`expire_date` = '2018-03-30 12:15:52.309210' WHERE `django_session`.`session_key` = 'qvsehrrst001vd82euipmq2c6xkvidbl';
UPDATE `django_session` SET `session_key` = 'sw7aalm0y2oqec2qqfndohzw59syn9ff',`session_data` = 'YjY4ZTgxYWNhNmZmMmJjMDI1MGZmOWUxZmI1NjFkYTA0ZjQ2MTJmYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NGJjZWE4YzEwM2U3OTE2OWRhMzc5ZTA0YTIwNTI0OGU0NTllYjRmIn0=',`expire_date` = '2018-04-14 10:40:27.000000' WHERE `django_session`.`session_key` = 'sw7aalm0y2oqec2qqfndohzw59syn9ff';
UPDATE `django_session` SET `session_key` = 'zz2m4qmevit8ter6tqnt07qxlkbya65v',`session_data` = 'YTI1ZmQ2OThhODdmMGQ1NTYzNTcxMGNiNDc0MjU0ZGUwZGIzNDBlODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZThiODQ0NjU3ZmFkNmU0MGViMjRkMzVkZGM4N2VmNmM1MDlkNThhIn0=',`expire_date` = '2018-03-26 13:20:08.294063' WHERE `django_session`.`session_key` = 'zz2m4qmevit8ter6tqnt07qxlkbya65v';

-- --------------------------------------------------------

--
-- Table structure for table `doctor_doctor`
--

CREATE TABLE IF NOT EXISTS `doctor_doctor` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `dr_id` int(11) NOT NULL AUTO_INCREMENT,
  `dr_fname` varchar(20) NOT NULL,
  `dr_lname` varchar(15) NOT NULL,
  `dr_cred` varchar(20) DEFAULT NULL,
  `dr_telephone` varchar(12) DEFAULT NULL,
  `dr_lic_no` varchar(25) DEFAULT NULL,
  `dr_ptr_no` varchar(25) DEFAULT NULL,
  `dr_s2_no` varchar(25) DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  `dr_off_hour_id` int(11) NOT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  `dr_suffix` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`dr_id`),
  KEY `doctor_doctor_dr_off_hour_id_ee5b9dfa_fk_doctor_drofficehour_id` (`dr_off_hour_id`),
  KEY `doctor_doctor_modified_by_id_0b04972c_fk_auth_user_id` (`modified_by_id`),
  KEY `doctor_doctor_created_by_id_3ee06f4e_fk_auth_user_id` (`created_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_doctor`
--

UPDATE `doctor_doctor` SET `is_active` = 1,`created_on` = '2018-03-21 11:56:02.843322',`modified_on` = '2018-03-21 11:57:59.525299',`dr_id` = 1,`dr_fname` = 'SIMON JOHN ERIC T.',`dr_lname` = 'FLORES',`dr_cred` = 'M.D., DPBO-HNS',`dr_telephone` = '420-2217',`dr_lic_no` = '0092579',`dr_ptr_no` = NULL,`dr_s2_no` = NULL,`created_by_id` = 1,`dr_off_hour_id` = 1,`modified_by_id` = 1,`dr_suffix` = 'Diplomate - Ears, Nose, Throat - Head and neck Surgery' WHERE `doctor_doctor`.`dr_id` = 1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_doctor_dr_afil`
--

CREATE TABLE IF NOT EXISTS `doctor_doctor_dr_afil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `doctor_doctor_dr_afil_doctor_id_hospital_id_72080c41_uniq` (`doctor_id`,`hospital_id`),
  KEY `doctor_doctor_dr_afil_hospital_id_b6acbe1d_fk_doctor_hospital_id` (`hospital_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_drofficehour`
--

CREATE TABLE IF NOT EXISTS `doctor_drofficehour` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `days` varchar(20) DEFAULT NULL,
  `hours_am` varchar(20) DEFAULT NULL,
  `hours_pm` varchar(20) DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_drofficehour_modified_by_id_e8f5700f_fk_auth_user_id` (`modified_by_id`),
  KEY `doctor_drofficehour_created_by_id_859637cb_fk_auth_user_id` (`created_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_drofficehour`
--

UPDATE `doctor_drofficehour` SET `is_active` = 1,`created_on` = '2018-03-21 11:51:03.133301',`modified_on` = '2018-03-21 11:51:03.133350',`id` = 1,`days` = 'Mon - Fri',`hours_am` = '10:00 A.M - 12:00 NN',`hours_pm` = '2:00 P.M. -4:00 Pm',`created_by_id` = 1,`modified_by_id` = 1 WHERE `doctor_drofficehour`.`id` = 1;
UPDATE `doctor_drofficehour` SET `is_active` = 1,`created_on` = '2018-03-21 11:51:26.270872',`modified_on` = '2018-03-21 11:51:26.270910',`id` = 2,`days` = 'Saturday',`hours_am` = '10:00 A.M - 12:00 NN',`hours_pm` = NULL,`created_by_id` = 1,`modified_by_id` = 1 WHERE `doctor_drofficehour`.`id` = 2;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_hospital`
--

CREATE TABLE IF NOT EXISTS `doctor_hospital` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hosp_name` varchar(50) DEFAULT NULL,
  `hosp_addr` varchar(50) DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  `hosp_city_id` int(11) NOT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_hospital_hosp_city_id_dffb5915_fk_patient_town_id` (`hosp_city_id`),
  KEY `doctor_hospital_modified_by_id_d637e35d_fk_auth_user_id` (`modified_by_id`),
  KEY `doctor_hospital_created_by_id_49f57cf5_fk_auth_user_id` (`created_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_hospital`
--

UPDATE `doctor_hospital` SET `is_active` = 1,`created_on` = '2018-03-21 11:52:05.906251',`modified_on` = '2018-03-21 11:52:05.906311',`id` = 1,`hosp_name` = 'SUMC',`hosp_addr` = NULL,`created_by_id` = 1,`hosp_city_id` = 1,`modified_by_id` = 1 WHERE `doctor_hospital`.`id` = 1;
UPDATE `doctor_hospital` SET `is_active` = 1,`created_on` = '2018-03-21 11:52:27.059985',`modified_on` = '2018-03-21 11:52:27.060045',`id` = 2,`hosp_name` = 'Holy Child Hospital',`hosp_addr` = NULL,`created_by_id` = 1,`hosp_city_id` = 1,`modified_by_id` = 1 WHERE `doctor_hospital`.`id` = 2;
UPDATE `doctor_hospital` SET `is_active` = 1,`created_on` = '2018-03-21 11:52:41.008380',`modified_on` = '2018-03-21 11:52:41.008423',`id` = 3,`hosp_name` = 'NOPH',`hosp_addr` = NULL,`created_by_id` = 1,`hosp_city_id` = 1,`modified_by_id` = 1 WHERE `doctor_hospital`.`id` = 3;

-- --------------------------------------------------------

--
-- Table structure for table `patient_occupation`
--

CREATE TABLE IF NOT EXISTS `patient_occupation` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `patient_occupation_created_by_id_91c7b6a4_fk_auth_user_id` (`created_by_id`),
  KEY `patient_occupation_modified_by_id_4791874e_fk_auth_user_id` (`modified_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_occupation`
--

UPDATE `patient_occupation` SET `is_active` = 1,`created_on` = '2018-03-10 12:40:33.669242',`modified_on` = '2018-03-24 12:40:33.669285',`id` = 1,`name` = 'Retired',`created_by_id` = 1,`modified_by_id` = 1 WHERE `patient_occupation`.`id` = 1;
UPDATE `patient_occupation` SET `is_active` = 1,`created_on` = '2018-03-11 13:46:47.378991',`modified_on` = '2018-03-24 13:46:47.379096',`id` = 2,`name` = 'Retired Housewife',`created_by_id` = 1,`modified_by_id` = 1 WHERE `patient_occupation`.`id` = 2;
UPDATE `patient_occupation` SET `is_active` = 1,`created_on` = '2018-03-12 10:45:54.371042',`modified_on` = '2018-03-24 10:45:54.371078',`id` = 3,`name` = 'Unknown',`created_by_id` = 1,`modified_by_id` = 1 WHERE `patient_occupation`.`id` = 3;

-- --------------------------------------------------------

--
-- Table structure for table `patient_patient`
--

CREATE TABLE IF NOT EXISTS `patient_patient` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(25) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `middle_initial` varchar(1) DEFAULT NULL,
  `contact_num` varchar(15) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `pat_pic` varchar(100) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `gender` varchar(1) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  `occupation_id` int(11) DEFAULT NULL,
  `town_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `patient_patient_occupation_id_ff08a0af_fk_patient_occupation_id` (`occupation_id`),
  KEY `patient_patient_last_name_445358b0` (`last_name`),
  KEY `patient_patient_first_name_038093bf` (`first_name`),
  KEY `patient_patient_town_id_bf66e711_fk_patient_town_id` (`town_id`),
  KEY `patient_patient_created_by_id_7ffa06e3_fk_auth_user_id` (`created_by_id`),
  KEY `patient_patient_modified_by_id_2743a240_fk_auth_user_id` (`modified_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_patient`
--

UPDATE `patient_patient` SET `is_active` = 1,`created_on` = '2018-03-10 12:40:59.121323',`modified_on` = '2018-03-10 12:53:09.721503',`id` = 1,`last_name` = 'Brown',`first_name` = 'Gerald',`middle_initial` = 'S',`contact_num` = '0355220731',`address` = 'El Pueblo Genovivo, Candau-ay',`date_of_birth` = '1943-01-24',`pat_pic` = '',`email` = 'gsbrown43@gmail.com',`gender` = 'M',`created_by_id` = 1,`modified_by_id` = 1,`occupation_id` = 1,`town_id` = 4 WHERE `patient_patient`.`id` = 1;
UPDATE `patient_patient` SET `is_active` = 1,`created_on` = '2018-03-11 13:46:52.278955',`modified_on` = '2018-03-11 13:46:52.278993',`id` = 2,`last_name` = 'Brown',`first_name` = 'Brenda',`middle_initial` = 'G',`contact_num` = '522-0731',`address` = 'El Pueblo Genovivo, Candau-ay',`date_of_birth` = '1948-10-20',`pat_pic` = '',`email` = NULL,`gender` = 'F',`created_by_id` = 1,`modified_by_id` = 1,`occupation_id` = 2,`town_id` = 4 WHERE `patient_patient`.`id` = 2;
UPDATE `patient_patient` SET `is_active` = 1,`created_on` = '2018-03-12 11:00:08.035926',`modified_on` = '2018-03-12 11:00:08.035960',`id` = 4,`last_name` = 'Test1',`first_name` = 'test1',`middle_initial` = 'T',`contact_num` = NULL,`address` = NULL,`date_of_birth` = '2018-03-12',`pat_pic` = '',`email` = NULL,`gender` = 'F',`created_by_id` = 1,`modified_by_id` = 1,`occupation_id` = 3,`town_id` = 4 WHERE `patient_patient`.`id` = 4;
UPDATE `patient_patient` SET `is_active` = 1,`created_on` = '2018-03-12 13:13:48.910349',`modified_on` = '2018-03-12 13:13:48.910381',`id` = 5,`last_name` = 'test2',`first_name` = 'test2',`middle_initial` = 't',`contact_num` = NULL,`address` = NULL,`date_of_birth` = '2018-03-12',`pat_pic` = '',`email` = NULL,`gender` = 'M',`created_by_id` = 1,`modified_by_id` = 1,`occupation_id` = 3,`town_id` = 4 WHERE `patient_patient`.`id` = 5;
UPDATE `patient_patient` SET `is_active` = 1,`created_on` = '2018-03-12 13:15:05.890642',`modified_on` = '2018-03-12 13:15:05.890675',`id` = 6,`last_name` = 'test3',`first_name` = 'test3',`middle_initial` = NULL,`contact_num` = NULL,`address` = NULL,`date_of_birth` = '2018-03-12',`pat_pic` = '',`email` = NULL,`gender` = 'F',`created_by_id` = 1,`modified_by_id` = 1,`occupation_id` = 3,`town_id` = 4 WHERE `patient_patient`.`id` = 6;
UPDATE `patient_patient` SET `is_active` = 1,`created_on` = '2018-03-21 15:28:40.747229',`modified_on` = '2018-03-21 15:28:40.747269',`id` = 7,`last_name` = 'Some',`first_name` = 'One',`middle_initial` = 'X',`contact_num` = NULL,`address` = '123 Main St',`date_of_birth` = '2018-03-21',`pat_pic` = '',`email` = NULL,`gender` = 'F',`created_by_id` = 1,`modified_by_id` = 1,`occupation_id` = 3,`town_id` = 4 WHERE `patient_patient`.`id` = 7;
UPDATE `patient_patient` SET `is_active` = 1,`created_on` = '2018-03-21 15:30:16.119896',`modified_on` = '2018-03-21 15:30:16.119952',`id` = 8,`last_name` = 'Another',`first_name` = 'One',`middle_initial` = 'Z',`contact_num` = NULL,`address` = '456 Main Ave',`date_of_birth` = '2018-03-21',`pat_pic` = '',`email` = NULL,`gender` = 'M',`created_by_id` = 1,`modified_by_id` = 1,`occupation_id` = 1,`town_id` = 4 WHERE `patient_patient`.`id` = 8;
UPDATE `patient_patient` SET `is_active` = 1,`created_on` = '2018-03-24 12:59:48.832488',`modified_on` = '2018-03-24 12:59:48.832551',`id` = 9,`last_name` = 'Last Name',`first_name` = 'First Name',`middle_initial` = 'M',`contact_num` = NULL,`address` = NULL,`date_of_birth` = '2018-03-24',`pat_pic` = '',`email` = NULL,`gender` = 'F',`created_by_id` = 1,`modified_by_id` = 1,`occupation_id` = 3,`town_id` = 4 WHERE `patient_patient`.`id` = 9;

-- --------------------------------------------------------

--
-- Table structure for table `patient_province`
--

CREATE TABLE IF NOT EXISTS `patient_province` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `patient_province_created_by_id_b08306fb_fk_auth_user_id` (`created_by_id`),
  KEY `patient_province_modified_by_id_ac59790d_fk_auth_user_id` (`modified_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_province`
--

UPDATE `patient_province` SET `is_active` = 1,`created_on` = '2018-03-10 12:39:49.788447',`modified_on` = '2018-03-10 12:39:49.788501',`id` = 1,`name` = 'Negros Oriental',`created_by_id` = NULL,`modified_by_id` = NULL WHERE `patient_province`.`id` = 1;
UPDATE `patient_province` SET `is_active` = 1,`created_on` = '2018-03-12 10:45:28.966602',`modified_on` = '2018-03-12 10:45:28.966637',`id` = 2,`name` = 'Siquijor',`created_by_id` = NULL,`modified_by_id` = NULL WHERE `patient_province`.`id` = 2;
UPDATE `patient_province` SET `is_active` = 1,`created_on` = '2018-03-12 13:14:52.545939',`modified_on` = '2018-03-12 13:14:52.545970',`id` = 3,`name` = 'Cebu',`created_by_id` = NULL,`modified_by_id` = NULL WHERE `patient_province`.`id` = 3;

-- --------------------------------------------------------

--
-- Table structure for table `patient_town`
--

CREATE TABLE IF NOT EXISTS `patient_town` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  `prov_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `patient_town_prov_id_8ff9c86f_fk_patient_province_id` (`prov_id`),
  KEY `patient_town_created_by_id_3836a9a4_fk_auth_user_id` (`created_by_id`),
  KEY `patient_town_modified_by_id_d341c2c2_fk_auth_user_id` (`modified_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_town`
--

UPDATE `patient_town` SET `is_active` = 1,`created_on` = '2018-03-24 12:59:39.877938',`modified_on` = '2018-03-24 12:59:39.877992',`id` = 4,`name` = 'Dumaguete City',`zip_code` = NULL,`created_by_id` = 1,`modified_by_id` = 1,`prov_id` = 1 WHERE `patient_town`.`id` = 4;

-- --------------------------------------------------------

--
-- Table structure for table `visit_biopsy`
--

CREATE TABLE IF NOT EXISTS `visit_biopsy` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `biopsy_text` longtext DEFAULT NULL,
  `biopsy_location_id` int(11) DEFAULT NULL,
  `biopsy_name_id` int(11) DEFAULT NULL,
  `biopsy_result_id` int(11) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  `visit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visit_biopsy_biopsy_location_id_14884e0c_fk_visit_location_id` (`biopsy_location_id`),
  KEY `visit_biopsy_biopsy_name_id_69a3221c_fk_visit_biopsyname_id` (`biopsy_name_id`),
  KEY `visit_biopsy_biopsy_result_id_7698974f_fk_visit_biopsyresult_id` (`biopsy_result_id`),
  KEY `visit_biopsy_created_by_id_e5844de5_fk_auth_user_id` (`created_by_id`),
  KEY `visit_biopsy_modified_by_id_41636f07_fk_auth_user_id` (`modified_by_id`),
  KEY `visit_biopsy_visit_id_ca8cc008_fk_visit_visit_id` (`visit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visit_biopsyname`
--

CREATE TABLE IF NOT EXISTS `visit_biopsyname` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `biopsy_name` varchar(25) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `biopsy_name` (`biopsy_name`),
  KEY `visit_biopsyname_created_by_id_b45fa312_fk_auth_user_id` (`created_by_id`),
  KEY `visit_biopsyname_modified_by_id_6d5150bb_fk_auth_user_id` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visit_biopsyresult`
--

CREATE TABLE IF NOT EXISTS `visit_biopsyresult` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `biopsy_result` varchar(25) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visit_biopsyresult_created_by_id_cbf49da6_fk_auth_user_id` (`created_by_id`),
  KEY `visit_biopsyresult_modified_by_id_c25de50b_fk_auth_user_id` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visit_complaint`
--

CREATE TABLE IF NOT EXISTS `visit_complaint` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaint_location_id` int(11) NOT NULL,
  `complaint_name_id` int(11) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  `visit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visit_complaint_complaint_location_i_eea2a84c_fk_visit_loc` (`complaint_location_id`),
  KEY `visit_complaint_complaint_name_id_6e10196e_fk_visit_com` (`complaint_name_id`),
  KEY `visit_complaint_created_by_id_c68c42b3_fk_auth_user_id` (`created_by_id`),
  KEY `visit_complaint_modified_by_id_e027d2a2_fk_auth_user_id` (`modified_by_id`),
  KEY `visit_complaint_visit_id_847d6537_fk_visit_visit_id` (`visit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit_complaint`
--

UPDATE `visit_complaint` SET `is_active` = 1,`created_on` = '2018-03-11 13:07:21.795594',`modified_on` = '2018-03-11 13:07:21.795617',`id` = 1,`complaint_location_id` = 1,`complaint_name_id` = 1,`created_by_id` = 1,`modified_by_id` = 1,`visit_id` = 1 WHERE `visit_complaint`.`id` = 1;
UPDATE `visit_complaint` SET `is_active` = 1,`created_on` = '2018-03-11 13:47:56.653587',`modified_on` = '2018-03-11 13:47:56.653613',`id` = 2,`complaint_location_id` = 1,`complaint_name_id` = 1,`created_by_id` = 1,`modified_by_id` = 1,`visit_id` = 2 WHERE `visit_complaint`.`id` = 2;
UPDATE `visit_complaint` SET `is_active` = 1,`created_on` = '2018-03-21 12:06:02.005504',`modified_on` = '2018-03-21 12:06:02.005551',`id` = 3,`complaint_location_id` = 1,`complaint_name_id` = 1,`created_by_id` = 1,`modified_by_id` = 1,`visit_id` = 3 WHERE `visit_complaint`.`id` = 3;

-- --------------------------------------------------------

--
-- Table structure for table `visit_complaintname`
--

CREATE TABLE IF NOT EXISTS `visit_complaintname` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaint_name` varchar(255) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `complaint_name` (`complaint_name`),
  KEY `visit_complaintname_created_by_id_ca17b8f5_fk_auth_user_id` (`created_by_id`),
  KEY `visit_complaintname_modified_by_id_e2bd6848_fk_auth_user_id` (`modified_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit_complaintname`
--

UPDATE `visit_complaintname` SET `is_active` = 1,`created_on` = '2018-03-11 13:06:41.519001',`modified_on` = '2018-03-11 13:06:41.519063',`id` = 1,`complaint_name` = 'Hearing problem',`created_by_id` = NULL,`modified_by_id` = NULL WHERE `visit_complaintname`.`id` = 1;

-- --------------------------------------------------------

--
-- Table structure for table `visit_complaint_finding`
--

CREATE TABLE IF NOT EXISTS `visit_complaint_finding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaint_id` int(11) NOT NULL,
  `finding_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `visit_complaint_finding_complaint_id_finding_id_4b311d39_uniq` (`complaint_id`,`finding_id`),
  KEY `visit_complaint_finding_finding_id_3b56644d_fk_visit_finding_id` (`finding_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit_complaint_finding`
--

UPDATE `visit_complaint_finding` SET `id` = 1,`complaint_id` = 1,`finding_id` = 1 WHERE `visit_complaint_finding`.`id` = 1;
UPDATE `visit_complaint_finding` SET `id` = 2,`complaint_id` = 2,`finding_id` = 1 WHERE `visit_complaint_finding`.`id` = 2;
UPDATE `visit_complaint_finding` SET `id` = 3,`complaint_id` = 3,`finding_id` = 1 WHERE `visit_complaint_finding`.`id` = 3;

-- --------------------------------------------------------

--
-- Table structure for table `visit_complaint_treatment`
--

CREATE TABLE IF NOT EXISTS `visit_complaint_treatment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaint_id` int(11) NOT NULL,
  `treatment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `visit_complaint_treatmen_complaint_id_treatment_i_38cf473c_uniq` (`complaint_id`,`treatment_id`),
  KEY `visit_complaint_trea_treatment_id_ae981dcc_fk_visit_tre` (`treatment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit_complaint_treatment`
--

UPDATE `visit_complaint_treatment` SET `id` = 1,`complaint_id` = 1,`treatment_id` = 1 WHERE `visit_complaint_treatment`.`id` = 1;
UPDATE `visit_complaint_treatment` SET `id` = 2,`complaint_id` = 2,`treatment_id` = 1 WHERE `visit_complaint_treatment`.`id` = 2;
UPDATE `visit_complaint_treatment` SET `id` = 3,`complaint_id` = 3,`treatment_id` = 1 WHERE `visit_complaint_treatment`.`id` = 3;

-- --------------------------------------------------------

--
-- Table structure for table `visit_dose`
--

CREATE TABLE IF NOT EXISTS `visit_dose` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dose_name` varchar(25) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dose_name` (`dose_name`),
  KEY `visit_dose_created_by_id_96ae0181_fk_auth_user_id` (`created_by_id`),
  KEY `visit_dose_modified_by_id_41e95596_fk_auth_user_id` (`modified_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit_dose`
--

UPDATE `visit_dose` SET `is_active` = 1,`created_on` = '2018-03-21 13:08:53.557439',`modified_on` = '2018-03-21 13:08:53.557504',`id` = 1,`dose_name` = '25 mg',`created_by_id` = 1,`modified_by_id` = 1 WHERE `visit_dose`.`id` = 1;
UPDATE `visit_dose` SET `is_active` = 1,`created_on` = '2018-03-30 11:59:12.000000',`modified_on` = '2018-03-30 11:59:12.000000',`id` = 2,`dose_name` = '10 mg',`created_by_id` = 1,`modified_by_id` = 1 WHERE `visit_dose`.`id` = 2;

-- --------------------------------------------------------

--
-- Table structure for table `visit_exam`
--

CREATE TABLE IF NOT EXISTS `visit_exam` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_date` date DEFAULT NULL,
  `exam_text` longtext DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `exam_name_id` int(11) DEFAULT NULL,
  `exam_result_id` int(11) DEFAULT NULL,
  `exam_type_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  `visit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visit_exam_created_by_id_609e6733_fk_auth_user_id` (`created_by_id`),
  KEY `visit_exam_exam_name_id_6496c2d9_fk_visit_examname_id` (`exam_name_id`),
  KEY `visit_exam_exam_result_id_72da4df8_fk_visit_examresult_id` (`exam_result_id`),
  KEY `visit_exam_exam_type_id_d7346d53_fk_visit_examtype_id` (`exam_type_id`),
  KEY `visit_exam_modified_by_id_0ce2ea2b_fk_auth_user_id` (`modified_by_id`),
  KEY `visit_exam_visit_id_2dcd1b25_fk_visit_visit_id` (`visit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visit_examname`
--

CREATE TABLE IF NOT EXISTS `visit_examname` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_name` varchar(25) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  `visit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `exam_name` (`exam_name`),
  KEY `visit_examname_created_by_id_c64a84ba_fk_auth_user_id` (`created_by_id`),
  KEY `visit_examname_modified_by_id_696b9793_fk_auth_user_id` (`modified_by_id`),
  KEY `visit_examname_visit_id_a00e9e1a_fk_visit_visit_id` (`visit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visit_examresult`
--

CREATE TABLE IF NOT EXISTS `visit_examresult` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_result` varchar(25) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `exam_result` (`exam_result`),
  KEY `visit_examresult_created_by_id_e6621ae9_fk_auth_user_id` (`created_by_id`),
  KEY `visit_examresult_modified_by_id_1cc49d00_fk_auth_user_id` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visit_examtype`
--

CREATE TABLE IF NOT EXISTS `visit_examtype` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_type` varchar(25) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `exam_type` (`exam_type`),
  KEY `visit_examtype_created_by_id_8431a5dc_fk_auth_user_id` (`created_by_id`),
  KEY `visit_examtype_modified_by_id_f0e31b09_fk_auth_user_id` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visit_finding`
--

CREATE TABLE IF NOT EXISTS `visit_finding` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finding_name` varchar(255) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  `visit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visit_finding_created_by_id_1484c700_fk_auth_user_id` (`created_by_id`),
  KEY `visit_finding_modified_by_id_c1954af1_fk_auth_user_id` (`modified_by_id`),
  KEY `visit_finding_visit_id_73665c15_fk_visit_visit_id` (`visit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit_finding`
--

UPDATE `visit_finding` SET `is_active` = 1,`created_on` = '2018-03-11 13:06:27.769821',`modified_on` = '2018-03-11 13:06:27.769856',`id` = 1,`finding_name` = 'Excessive ear wax',`created_by_id` = NULL,`modified_by_id` = NULL,`visit_id` = NULL WHERE `visit_finding`.`id` = 1;

-- --------------------------------------------------------

--
-- Table structure for table `visit_hearing`
--

CREATE TABLE IF NOT EXISTS `visit_hearing` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hearing_text` longtext DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `hearing_result_id` int(11) DEFAULT NULL,
  `hearing_test_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  `visit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visit_hearing_created_by_id_ce9bd852_fk_auth_user_id` (`created_by_id`),
  KEY `visit_hearing_hearing_result_id_fafdd81d_fk_visit_hea` (`hearing_result_id`),
  KEY `visit_hearing_hearing_test_id_de48abf3_fk_visit_hearingtest_id` (`hearing_test_id`),
  KEY `visit_hearing_modified_by_id_9564b9c1_fk_auth_user_id` (`modified_by_id`),
  KEY `visit_hearing_visit_id_913f70cf_fk_visit_visit_id` (`visit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visit_hearingresult`
--

CREATE TABLE IF NOT EXISTS `visit_hearingresult` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hearing_result` varchar(25) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hearing_result` (`hearing_result`),
  KEY `visit_hearingresult_created_by_id_f5e11fd8_fk_auth_user_id` (`created_by_id`),
  KEY `visit_hearingresult_modified_by_id_ab8b0852_fk_auth_user_id` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visit_hearingtest`
--

CREATE TABLE IF NOT EXISTS `visit_hearingtest` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hearing_name` varchar(50) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hearing_name` (`hearing_name`),
  KEY `visit_hearingtest_created_by_id_33416889_fk_auth_user_id` (`created_by_id`),
  KEY `visit_hearingtest_modified_by_id_be3ec6db_fk_auth_user_id` (`modified_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visit_location`
--

CREATE TABLE IF NOT EXISTS `visit_location` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(25) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location` (`location`),
  KEY `visit_location_created_by_id_bb6ce950_fk_auth_user_id` (`created_by_id`),
  KEY `visit_location_modified_by_id_60dab43b_fk_auth_user_id` (`modified_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit_location`
--

UPDATE `visit_location` SET `is_active` = 1,`created_on` = '2018-03-11 13:06:04.576248',`modified_on` = '2018-03-11 13:06:04.576303',`id` = 1,`location` = 'Ears',`created_by_id` = NULL,`modified_by_id` = NULL WHERE `visit_location`.`id` = 1;

-- --------------------------------------------------------

--
-- Table structure for table `visit_medicine`
--

CREATE TABLE IF NOT EXISTS `visit_medicine` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(50) DEFAULT NULL,
  `generic_name` varchar(50) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brand_name` (`brand_name`),
  KEY `visit_medicine_created_by_id_71ef9aa9_fk_auth_user_id` (`created_by_id`),
  KEY `visit_medicine_modified_by_id_74ab0a59_fk_auth_user_id` (`modified_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit_medicine`
--

UPDATE `visit_medicine` SET `is_active` = 1,`created_on` = '2018-03-21 13:08:37.419375',`modified_on` = '2018-03-21 13:08:37.419422',`id` = 1,`brand_name` = 'Med1',`generic_name` = 'med1',`created_by_id` = 1,`modified_by_id` = 1 WHERE `visit_medicine`.`id` = 1;
UPDATE `visit_medicine` SET `is_active` = 1,`created_on` = '2018-03-30 11:58:56.000000',`modified_on` = '2018-03-30 11:58:56.000000',`id` = 2,`brand_name` = 'Med2',`generic_name` = 'Med2',`created_by_id` = 1,`modified_by_id` = 1 WHERE `visit_medicine`.`id` = 2;

-- --------------------------------------------------------

--
-- Table structure for table `visit_prescription`
--

CREATE TABLE IF NOT EXISTS `visit_prescription` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medicine_quantity` int(11) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `medicine_id` int(11) DEFAULT NULL,
  `medicine_dose_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  `prescription_reminder_id` int(11) DEFAULT NULL,
  `visit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visit_prescription_created_by_id_41810e30_fk_auth_user_id` (`created_by_id`),
  KEY `visit_prescription_medicine_id_c82dc68f_fk_visit_medicine_id` (`medicine_id`),
  KEY `visit_prescription_medicine_dose_id_120047de_fk_visit_dose_id` (`medicine_dose_id`),
  KEY `visit_prescription_modified_by_id_868e6204_fk_auth_user_id` (`modified_by_id`),
  KEY `visit_prescription_prescription_reminde_93a724fb_fk_visit_rem` (`prescription_reminder_id`),
  KEY `visit_prescription_visit_id_4c1a431d_fk_visit_visit_id` (`visit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit_prescription`
--

UPDATE `visit_prescription` SET `is_active` = 1,`created_on` = '2018-03-21 13:09:47.368927',`modified_on` = '2018-03-21 13:09:47.368960',`id` = 1,`medicine_quantity` = 14,`created_by_id` = 1,`medicine_id` = 1,`medicine_dose_id` = 1,`modified_by_id` = 1,`prescription_reminder_id` = 1,`visit_id` = 1 WHERE `visit_prescription`.`id` = 1;

-- --------------------------------------------------------

--
-- Table structure for table `visit_reminder`
--

CREATE TABLE IF NOT EXISTS `visit_reminder` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prescription_reminder` varchar(50) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `prescription_reminder` (`prescription_reminder`),
  KEY `visit_reminder_created_by_id_fe52085f_fk_auth_user_id` (`created_by_id`),
  KEY `visit_reminder_modified_by_id_cbe79c8e_fk_auth_user_id` (`modified_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit_reminder`
--

UPDATE `visit_reminder` SET `is_active` = 1,`created_on` = '2018-03-21 13:09:14.253695',`modified_on` = '2018-03-21 13:09:14.253809',`id` = 1,`prescription_reminder` = 'Take twice a day',`created_by_id` = 1,`modified_by_id` = 1 WHERE `visit_reminder`.`id` = 1;
UPDATE `visit_reminder` SET `is_active` = 1,`created_on` = '2018-03-30 11:59:39.000000',`modified_on` = '2018-03-30 11:59:39.000000',`id` = 2,`prescription_reminder` = 'Take once a day',`created_by_id` = 1,`modified_by_id` = 1 WHERE `visit_reminder`.`id` = 2;

-- --------------------------------------------------------

--
-- Table structure for table `visit_treatment`
--

CREATE TABLE IF NOT EXISTS `visit_treatment` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `treatment_name` varchar(255) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  `visit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visit_treatment_created_by_id_d807bd9c_fk_auth_user_id` (`created_by_id`),
  KEY `visit_treatment_modified_by_id_286f5588_fk_auth_user_id` (`modified_by_id`),
  KEY `visit_treatment_visit_id_f90e9e42_fk_visit_visit_id` (`visit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit_treatment`
--

UPDATE `visit_treatment` SET `is_active` = 1,`created_on` = '2018-03-11 13:07:01.605858',`modified_on` = '2018-03-11 13:07:01.605894',`id` = 1,`treatment_name` = 'Removed ear wax',`created_by_id` = NULL,`modified_by_id` = NULL,`visit_id` = NULL WHERE `visit_treatment`.`id` = 1;

-- --------------------------------------------------------

--
-- Table structure for table `visit_visit`
--

CREATE TABLE IF NOT EXISTS `visit_visit` (
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visit_date` date NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `modified_by_id` int(11) DEFAULT NULL,
  `patient_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `visit_visit_created_by_id_629adb86_fk_auth_user_id` (`created_by_id`),
  KEY `visit_visit_modified_by_id_c4ba55c8_fk_auth_user_id` (`modified_by_id`),
  KEY `visit_visit_patient_id_369358a0_fk_patient_patient_id` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit_visit`
--

UPDATE `visit_visit` SET `is_active` = 1,`created_on` = '2018-03-11 13:07:21.794949',`modified_on` = '2018-03-21 13:09:47.367952',`id` = 1,`visit_date` = '2018-03-11',`created_by_id` = NULL,`modified_by_id` = 1,`patient_id` = 1 WHERE `visit_visit`.`id` = 1;
UPDATE `visit_visit` SET `is_active` = 1,`created_on` = '2018-03-11 13:47:56.652938',`modified_on` = '2018-03-11 13:47:56.652972',`id` = 2,`visit_date` = '2018-03-11',`created_by_id` = NULL,`modified_by_id` = NULL,`patient_id` = 2 WHERE `visit_visit`.`id` = 2;
UPDATE `visit_visit` SET `is_active` = 1,`created_on` = '2018-03-21 12:06:01.990291',`modified_on` = '2018-03-21 12:06:01.990349',`id` = 3,`visit_date` = '2018-03-21',`created_by_id` = 1,`modified_by_id` = 1,`patient_id` = 5 WHERE `visit_visit`.`id` = 3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `doctor_doctor`
--
ALTER TABLE `doctor_doctor`
  ADD CONSTRAINT `doctor_doctor_created_by_id_3ee06f4e_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `doctor_doctor_dr_off_hour_id_ee5b9dfa_fk_doctor_drofficehour_id` FOREIGN KEY (`dr_off_hour_id`) REFERENCES `doctor_drofficehour` (`id`),
  ADD CONSTRAINT `doctor_doctor_modified_by_id_0b04972c_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `doctor_doctor_dr_afil`
--
ALTER TABLE `doctor_doctor_dr_afil`
  ADD CONSTRAINT `doctor_doctor_dr_afil_doctor_id_7530ec2c_fk_doctor_doctor_dr_id` FOREIGN KEY (`doctor_id`) REFERENCES `doctor_doctor` (`dr_id`),
  ADD CONSTRAINT `doctor_doctor_dr_afil_hospital_id_b6acbe1d_fk_doctor_hospital_id` FOREIGN KEY (`hospital_id`) REFERENCES `doctor_hospital` (`id`);

--
-- Constraints for table `doctor_drofficehour`
--
ALTER TABLE `doctor_drofficehour`
  ADD CONSTRAINT `doctor_drofficehour_created_by_id_859637cb_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `doctor_drofficehour_modified_by_id_e8f5700f_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `doctor_hospital`
--
ALTER TABLE `doctor_hospital`
  ADD CONSTRAINT `doctor_hospital_created_by_id_49f57cf5_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `doctor_hospital_hosp_city_id_dffb5915_fk_patient_town_id` FOREIGN KEY (`hosp_city_id`) REFERENCES `patient_town` (`id`),
  ADD CONSTRAINT `doctor_hospital_modified_by_id_d637e35d_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `patient_occupation`
--
ALTER TABLE `patient_occupation`
  ADD CONSTRAINT `patient_occupation_created_by_id_91c7b6a4_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `patient_occupation_modified_by_id_4791874e_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `patient_patient`
--
ALTER TABLE `patient_patient`
  ADD CONSTRAINT `patient_patient_created_by_id_7ffa06e3_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `patient_patient_modified_by_id_2743a240_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `patient_patient_occupation_id_ff08a0af_fk_patient_occupation_id` FOREIGN KEY (`occupation_id`) REFERENCES `patient_occupation` (`id`),
  ADD CONSTRAINT `patient_patient_town_id_bf66e711_fk_patient_town_id` FOREIGN KEY (`town_id`) REFERENCES `patient_town` (`id`);

--
-- Constraints for table `patient_province`
--
ALTER TABLE `patient_province`
  ADD CONSTRAINT `patient_province_created_by_id_b08306fb_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `patient_province_modified_by_id_ac59790d_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `patient_town`
--
ALTER TABLE `patient_town`
  ADD CONSTRAINT `patient_town_created_by_id_3836a9a4_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `patient_town_modified_by_id_d341c2c2_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `patient_town_prov_id_8ff9c86f_fk_patient_province_id` FOREIGN KEY (`prov_id`) REFERENCES `patient_province` (`id`);

--
-- Constraints for table `visit_biopsy`
--
ALTER TABLE `visit_biopsy`
  ADD CONSTRAINT `visit_biopsy_biopsy_location_id_14884e0c_fk_visit_location_id` FOREIGN KEY (`biopsy_location_id`) REFERENCES `visit_location` (`id`),
  ADD CONSTRAINT `visit_biopsy_biopsy_name_id_69a3221c_fk_visit_biopsyname_id` FOREIGN KEY (`biopsy_name_id`) REFERENCES `visit_biopsyname` (`id`),
  ADD CONSTRAINT `visit_biopsy_biopsy_result_id_7698974f_fk_visit_biopsyresult_id` FOREIGN KEY (`biopsy_result_id`) REFERENCES `visit_biopsyresult` (`id`),
  ADD CONSTRAINT `visit_biopsy_created_by_id_e5844de5_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_biopsy_modified_by_id_41636f07_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_biopsy_visit_id_ca8cc008_fk_visit_visit_id` FOREIGN KEY (`visit_id`) REFERENCES `visit_visit` (`id`);

--
-- Constraints for table `visit_biopsyname`
--
ALTER TABLE `visit_biopsyname`
  ADD CONSTRAINT `visit_biopsyname_created_by_id_b45fa312_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_biopsyname_modified_by_id_6d5150bb_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `visit_biopsyresult`
--
ALTER TABLE `visit_biopsyresult`
  ADD CONSTRAINT `visit_biopsyresult_created_by_id_cbf49da6_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_biopsyresult_modified_by_id_c25de50b_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `visit_complaint`
--
ALTER TABLE `visit_complaint`
  ADD CONSTRAINT `visit_complaint_complaint_location_i_eea2a84c_fk_visit_loc` FOREIGN KEY (`complaint_location_id`) REFERENCES `visit_location` (`id`),
  ADD CONSTRAINT `visit_complaint_complaint_name_id_6e10196e_fk_visit_com` FOREIGN KEY (`complaint_name_id`) REFERENCES `visit_complaintname` (`id`),
  ADD CONSTRAINT `visit_complaint_created_by_id_c68c42b3_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_complaint_modified_by_id_e027d2a2_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_complaint_visit_id_847d6537_fk_visit_visit_id` FOREIGN KEY (`visit_id`) REFERENCES `visit_visit` (`id`);

--
-- Constraints for table `visit_complaintname`
--
ALTER TABLE `visit_complaintname`
  ADD CONSTRAINT `visit_complaintname_created_by_id_ca17b8f5_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_complaintname_modified_by_id_e2bd6848_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `visit_complaint_finding`
--
ALTER TABLE `visit_complaint_finding`
  ADD CONSTRAINT `visit_complaint_find_complaint_id_7cf4da80_fk_visit_com` FOREIGN KEY (`complaint_id`) REFERENCES `visit_complaint` (`id`),
  ADD CONSTRAINT `visit_complaint_finding_finding_id_3b56644d_fk_visit_finding_id` FOREIGN KEY (`finding_id`) REFERENCES `visit_finding` (`id`);

--
-- Constraints for table `visit_complaint_treatment`
--
ALTER TABLE `visit_complaint_treatment`
  ADD CONSTRAINT `visit_complaint_trea_complaint_id_97f7ec8b_fk_visit_com` FOREIGN KEY (`complaint_id`) REFERENCES `visit_complaint` (`id`),
  ADD CONSTRAINT `visit_complaint_trea_treatment_id_ae981dcc_fk_visit_tre` FOREIGN KEY (`treatment_id`) REFERENCES `visit_treatment` (`id`);

--
-- Constraints for table `visit_dose`
--
ALTER TABLE `visit_dose`
  ADD CONSTRAINT `visit_dose_created_by_id_96ae0181_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_dose_modified_by_id_41e95596_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `visit_exam`
--
ALTER TABLE `visit_exam`
  ADD CONSTRAINT `visit_exam_created_by_id_609e6733_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_exam_exam_name_id_6496c2d9_fk_visit_examname_id` FOREIGN KEY (`exam_name_id`) REFERENCES `visit_examname` (`id`),
  ADD CONSTRAINT `visit_exam_exam_result_id_72da4df8_fk_visit_examresult_id` FOREIGN KEY (`exam_result_id`) REFERENCES `visit_examresult` (`id`),
  ADD CONSTRAINT `visit_exam_exam_type_id_d7346d53_fk_visit_examtype_id` FOREIGN KEY (`exam_type_id`) REFERENCES `visit_examtype` (`id`),
  ADD CONSTRAINT `visit_exam_modified_by_id_0ce2ea2b_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_exam_visit_id_2dcd1b25_fk_visit_visit_id` FOREIGN KEY (`visit_id`) REFERENCES `visit_visit` (`id`);

--
-- Constraints for table `visit_examname`
--
ALTER TABLE `visit_examname`
  ADD CONSTRAINT `visit_examname_created_by_id_c64a84ba_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_examname_modified_by_id_696b9793_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_examname_visit_id_a00e9e1a_fk_visit_visit_id` FOREIGN KEY (`visit_id`) REFERENCES `visit_visit` (`id`);

--
-- Constraints for table `visit_examresult`
--
ALTER TABLE `visit_examresult`
  ADD CONSTRAINT `visit_examresult_created_by_id_e6621ae9_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_examresult_modified_by_id_1cc49d00_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `visit_examtype`
--
ALTER TABLE `visit_examtype`
  ADD CONSTRAINT `visit_examtype_created_by_id_8431a5dc_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_examtype_modified_by_id_f0e31b09_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `visit_finding`
--
ALTER TABLE `visit_finding`
  ADD CONSTRAINT `visit_finding_created_by_id_1484c700_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_finding_modified_by_id_c1954af1_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_finding_visit_id_73665c15_fk_visit_visit_id` FOREIGN KEY (`visit_id`) REFERENCES `visit_visit` (`id`);

--
-- Constraints for table `visit_hearing`
--
ALTER TABLE `visit_hearing`
  ADD CONSTRAINT `visit_hearing_created_by_id_ce9bd852_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_hearing_hearing_result_id_fafdd81d_fk_visit_hea` FOREIGN KEY (`hearing_result_id`) REFERENCES `visit_hearingresult` (`id`),
  ADD CONSTRAINT `visit_hearing_hearing_test_id_de48abf3_fk_visit_hearingtest_id` FOREIGN KEY (`hearing_test_id`) REFERENCES `visit_hearingtest` (`id`),
  ADD CONSTRAINT `visit_hearing_modified_by_id_9564b9c1_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_hearing_visit_id_913f70cf_fk_visit_visit_id` FOREIGN KEY (`visit_id`) REFERENCES `visit_visit` (`id`);

--
-- Constraints for table `visit_hearingresult`
--
ALTER TABLE `visit_hearingresult`
  ADD CONSTRAINT `visit_hearingresult_created_by_id_f5e11fd8_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_hearingresult_modified_by_id_ab8b0852_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `visit_hearingtest`
--
ALTER TABLE `visit_hearingtest`
  ADD CONSTRAINT `visit_hearingtest_created_by_id_33416889_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_hearingtest_modified_by_id_be3ec6db_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `visit_location`
--
ALTER TABLE `visit_location`
  ADD CONSTRAINT `visit_location_created_by_id_bb6ce950_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_location_modified_by_id_60dab43b_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `visit_medicine`
--
ALTER TABLE `visit_medicine`
  ADD CONSTRAINT `visit_medicine_created_by_id_71ef9aa9_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_medicine_modified_by_id_74ab0a59_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `visit_prescription`
--
ALTER TABLE `visit_prescription`
  ADD CONSTRAINT `visit_prescription_created_by_id_41810e30_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_prescription_medicine_dose_id_120047de_fk_visit_dose_id` FOREIGN KEY (`medicine_dose_id`) REFERENCES `visit_dose` (`id`),
  ADD CONSTRAINT `visit_prescription_medicine_id_c82dc68f_fk_visit_medicine_id` FOREIGN KEY (`medicine_id`) REFERENCES `visit_medicine` (`id`),
  ADD CONSTRAINT `visit_prescription_modified_by_id_868e6204_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_prescription_prescription_reminde_93a724fb_fk_visit_rem` FOREIGN KEY (`prescription_reminder_id`) REFERENCES `visit_reminder` (`id`),
  ADD CONSTRAINT `visit_prescription_visit_id_4c1a431d_fk_visit_visit_id` FOREIGN KEY (`visit_id`) REFERENCES `visit_visit` (`id`);

--
-- Constraints for table `visit_reminder`
--
ALTER TABLE `visit_reminder`
  ADD CONSTRAINT `visit_reminder_created_by_id_fe52085f_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_reminder_modified_by_id_cbe79c8e_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `visit_treatment`
--
ALTER TABLE `visit_treatment`
  ADD CONSTRAINT `visit_treatment_created_by_id_d807bd9c_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_treatment_modified_by_id_286f5588_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_treatment_visit_id_f90e9e42_fk_visit_visit_id` FOREIGN KEY (`visit_id`) REFERENCES `visit_visit` (`id`);

--
-- Constraints for table `visit_visit`
--
ALTER TABLE `visit_visit`
  ADD CONSTRAINT `visit_visit_created_by_id_629adb86_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_visit_modified_by_id_c4ba55c8_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `visit_visit_patient_id_369358a0_fk_patient_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `patient_patient` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
