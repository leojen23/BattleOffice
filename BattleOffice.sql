-- phpMyAdmin SQL Dump
-- version 5.0.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Nov 25, 2020 at 01:47 PM
-- Server version: 10.3.22-MariaDB-1:10.3.22+maria~bionic
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BattleOffice`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `firstname`, `lastname`, `address`, `additional_address`, `city`, `postcode`, `phone`, `email`, `created_at`, `country_id`) VALUES
(1, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', 'olivierjean.guillemot@googlemail.com', NULL, 2),
(2, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', 'olivierjean.guillemot@googlemail.com', NULL, 2),
(3, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', 'olivierjean.guillemot@googlemail.com', NULL, 2),
(4, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', 'olivierjean.guillemot@googlemail.com', NULL, 2),
(5, 'Maryon', 'Valls', '34 route de chirassimont', 'Sint velit dolores porro elit et in ut dicta sit esse aliqua Fugiat dicta assumenda ullam minim', 'Machézal', '42114', '0634449319', 'votavimet@mailinator.com', NULL, 2),
(6, 'Maxime', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', 'olivierjean.guillemot@googlemail.com', NULL, 2),
(7, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', 'olivierjean.guillemot@googlemail.com', NULL, 2),
(8, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', 'olivierjean.guillemot@googlemail.com', NULL, 2),
(9, 'Morues', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', 'olivierjean.guillemot@googlemail.com', NULL, 2),
(10, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', 'olivierjean.guillemot@googlemail.com', NULL, 2),
(11, 'Guinevere', 'Ramsey', 'Delectus labore incidunt ad rerum', 'Quo et laboriosam beatae aspernatur qui adipisci lorem consectetur voluptas aliquip impedit ut sequi dolor est et dignissimos', 'Quia iste sed nisi anim', 'Recusandae Fugiat veritatis inventore laborum Ipsum laborum non hic sed est cupidatat natus nemo deleniti rem', '+1 (206) 939-4905', 'zamahuzyxo@mailinator.com', NULL, 1),
(12, 'Armando', 'Marsh', 'Maxime voluptate elit perspiciatis temporibus ab tempora iste libero qui labore iste ut veritatis blanditiis voluptatem sit', 'Dignissimos enim provident qui ducimus cumque alias ut quibusdam possimus ipsum cumque dolor laborum Nesciunt sapiente', 'Omnis incidunt esse voluptate quis impedit aliquip molestiae quia sit fugit nostrum ipsa nostrum voluptatum dolore ducimus ullam eu voluptas', 'Distinctio Repellendus Nihil dolore nobis aliquip minus ad', '+1 (509) 608-8321', 'risopivik@mailinator.com', NULL, 3),
(13, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', 'olivierjean.guillemot@googlemail.com', NULL, 1),
(14, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', 'olivierjean.guillemot@googlemail.com', NULL, 1),
(15, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', 'olivierjean.guillemot@googlemail.com', NULL, 1),
(16, 'Maryon', 'Valls', '34 route de chirassimont', 'Sint velit dolores porro elit et in ut dicta sit esse aliqua Fugiat dicta assumenda ullam minim', 'Machézal', '42114', '+32634449319', 'votavimet@mailinator.com', NULL, 2),
(17, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', 'olivierjean.guillemot@googlemail.com', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'France'),
(2, 'Belgique'),
(3, 'Luxembourg');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200731082305', '2020-07-31 10:23:08', 95),
('DoctrineMigrations\\Version20200731100703', '2020-07-31 12:07:09', 2417);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Stripe',
  `is_paid` tinyint(1) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `api_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `payment_method`, `is_paid`, `product_id`, `client_id`, `api_id`, `payment_id`) VALUES
(1, NULL, NULL, 3, 1, NULL, NULL),
(2, NULL, NULL, 3, 2, 486, NULL),
(3, NULL, NULL, 3, 3, 498, NULL),
(4, NULL, NULL, 2, 4, 523, NULL),
(5, NULL, NULL, 2, 5, 549, NULL),
(6, NULL, NULL, 3, 6, 561, NULL),
(7, NULL, NULL, 2, 7, 571, NULL),
(8, NULL, NULL, 2, 8, 576, NULL),
(9, NULL, NULL, 2, 9, 577, NULL),
(10, NULL, NULL, 1, 10, 582, NULL),
(11, NULL, NULL, NULL, 11, NULL, NULL),
(12, NULL, NULL, NULL, 12, NULL, NULL),
(13, NULL, NULL, 1, 13, NULL, NULL),
(14, NULL, NULL, 1, 14, NULL, NULL),
(15, NULL, NULL, 1, 15, 593, NULL),
(16, NULL, NULL, 2, 16, 603, NULL),
(17, NULL, NULL, 1, 17, 606, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `email`, `amount`) VALUES
(1, 'votavimet@mailinator.com', 51.9),
(2, 'votavimet@mailinator.com', 51.9),
(3, 'olivierjean.guillemot@googlemail.com', 39.9),
(4, 'olivierjean.guillemot@googlemail.com', 51.9),
(5, 'olivierjean.guillemot@googlemail.com', 51.9),
(6, 'olivierjean.guillemot@googlemail.com', 51.9),
(7, 'olivierjean.guillemot@googlemail.com', 51.9),
(8, 'olivierjean.guillemot@googlemail.com', 51.9),
(9, 'olivierjean.guillemot@googlemail.com', 51.9),
(10, 'olivierjean.guillemot@googlemail.com', 51.9),
(11, 'olivierjean.guillemot@googlemail.com', 64.9),
(12, 'olivierjean.guillemot@googlemail.com', 64.9),
(13, 'votavimet@mailinator.com', 51.9),
(14, 'olivierjean.guillemot@googlemail.com', 64.9);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`) VALUES
(1, 'Nerf Elite Jolt', 64.9),
(2, 'Nerf Elite Disruptor', 51.9),
(3, 'Nerf Elite Rapid Strike', 39.9);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `firstname`, `lastname`, `address`, `additional_address`, `city`, `postcode`, `phone`, `created_at`, `country_id`, `client_id`) VALUES
(1, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', NULL, 2, 1),
(2, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', NULL, 2, 2),
(3, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', NULL, 2, 3),
(4, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', NULL, 2, 4),
(5, 'Maryon', 'Valls', '34 route de chirassimont', 'Sint velit dolores porro elit et in ut dicta sit esse aliqua Fugiat dicta assumenda ullam minim', 'Machézal', '42114', '0634449319', NULL, 2, 5),
(6, 'Maxime', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', NULL, 2, 6),
(7, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', NULL, 2, 7),
(8, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', NULL, 2, 8),
(9, 'Morues', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', NULL, 2, 9),
(10, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', NULL, 2, 10),
(11, 'Guinevere', 'Ramsey', 'Delectus labore incidunt ad rerum', 'Quo et laboriosam beatae aspernatur qui adipisci lorem consectetur voluptas aliquip impedit ut sequi dolor est et dignissimos', 'Quia iste sed nisi anim', 'Recusandae Fugiat veritatis inventore laborum Ipsum laborum non hic sed est cupidatat natus nemo deleniti rem', '+1 (206) 939-4905', NULL, 1, 11),
(12, 'Armando', 'Marsh', 'Maxime voluptate elit perspiciatis temporibus ab tempora iste libero qui labore iste ut veritatis blanditiis voluptatem sit', 'Dignissimos enim provident qui ducimus cumque alias ut quibusdam possimus ipsum cumque dolor laborum Nesciunt sapiente', 'Omnis incidunt esse voluptate quis impedit aliquip molestiae quia sit fugit nostrum ipsa nostrum voluptatum dolore ducimus ullam eu voluptas', 'Distinctio Repellendus Nihil dolore nobis aliquip minus ad', '+1 (509) 608-8321', NULL, 3, 12),
(13, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', NULL, 1, 13),
(14, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', NULL, 1, 14),
(15, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', NULL, 1, 15),
(16, 'Maryon', 'Valls', '34 route de chirassimont', 'Sint velit dolores porro elit et in ut dicta sit esse aliqua Fugiat dicta assumenda ullam minim', 'Machézal', '42114', '+32634449319', NULL, 2, 16),
(17, 'Olivier', 'Guillemot', '56 Cours Gambetta', 'QFS', 'Le Thor', '84250', '0629308097', NULL, 1, 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C7440455F92F3E70` (`country_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_F529939819EB6921` (`client_id`),
  ADD UNIQUE KEY `UNIQ_F52993984C3A3BB` (`payment_id`),
  ADD KEY `IDX_F52993984584665A` (`product_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2D1C172419EB6921` (`client_id`),
  ADD KEY `IDX_2D1C1724F92F3E70` (`country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `FK_C7440455F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_F529939819EB6921` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `FK_F52993984584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_F52993984C3A3BB` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`);

--
-- Constraints for table `shipping`
--
ALTER TABLE `shipping`
  ADD CONSTRAINT `FK_2D1C172419EB6921` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `FK_2D1C1724F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

