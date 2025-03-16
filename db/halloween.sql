-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql303.infinityfree.com
-- Generation Time: Mar 16, 2025 at 02:48 PM
-- Server version: 10.6.19-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_37454816_halloween`
--

-- --------------------------------------------------------

--
-- Table structure for table `abobora`
--

CREATE TABLE `abobora` (
  `id` int(11) NOT NULL,
  `hash` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `abobora`
--

INSERT INTO `abobora` (`id`, `hash`, `name`, `tip`) VALUES
(1, 'fe2cb3c29c3bf8c4e963009bcb10ccfd', 'Abobora Tomate', 'As Aboboras estao na espalhadas na escola! boa sorte :)'),
(2, 'f3b076342c9b5663e4ca773b1e92c17c', 'Abobora Fantasma', 'As Aboboras estao na espalhadas na escola! boa sorte :)'),
(3, '3d9686ede228350554451dc2b29c7f59', 'Abobora Fazbear', 'As Aboboras estao na espalhadas na escola! boa sorte :)'),
(4, '014c3a7d24aa4f330fa36f92e2556274', 'Abobora Sonica', 'As Aboboras estao na espalhadas na escola! boa sorte :)'),
(5, '2e55556f43c1c1c998b3f5bb533d72d0', 'Abobora Cartoon', 'As Aboboras estao na espalhadas na escola! boa sorte :)'),
(6, '189434c3d41fcdb2e6f3db971800fa6f', 'Abobora Enstein', 'As Aboboras estao na espalhadas na escola! boa sorte :)'),
(7, 'd532fd0f57b59f842fdb0eddf054d212', 'Abobora Abobora', 'As Aboboras estao na espalhadas na escola! boa sorte :)'),
(8, 'ef26a50af1530065699b2d7654619f7f', 'Abobora Esqueletica', 'As Aboboras estao na espalhadas na escola! boa sorte :)'),
(9, 'b877923ad57a1f6e9a5c9ef21885b1dc', 'Abobora minecraft', 'As Aboboras estao na espalhadas na escola! boa sorte :)'),
(10, 'dcb9f686535b82d762a382949d8ba4b1', 'Abobora Bill Cipher', 'As Aboboras estao na espalhadas na escola! boa sorte :)'),
(11, '0fe701e24253596c87845ace98f2ffd2', 'Abobora Olhos de botoes', 'As Aboboras estao na espalhadas na escola! boa sorte :)'),
(12, '23b6f1e34553f4d94d720ac10dc17e8a', 'Abobora de Doces', 'As Aboboras estao na espalhadas na escola! boa sorte :)'),
(13, '3ff6b7342a3459c238a000da0db3814a', 'Abobora Sonolenta', 'As Aboboras estao na espalhadas na escola! boa sorte :)'),
(14, 'ee85b19a6a933714028ef33d00a82ea6', 'Abobora Amaldicoada', 'As Aboboras estao na espalhadas na escola! boa sorte :)'),
(15, '4338c7e92017ea64be4eefd18b6055db', 'Abobora da Morte', 'As Aboboras estao na espalhadas na escola! boa sorte :)'),
(16, '0c48feb091b5107b24bbeb8534964e9d', 'IT a Abobora', 'As Aboboras estao na espalhadas na escola! boa sorte :)'),
(17, 'b06070b9c761be935c489940b12f4f06', 'Abobora Bruxa', 'As Aboboras estao na espalhadas na escola! boa sorte :)'),
(18, 'a9a026248b568a52398bcd2c070d5f9b', 'Abobora Atingida', 'As Aboboras estao na espalhadas na escola! boa sorte :)'),
(19, 'fa7bd6e44a6dbf4661a8b7407b73f2b9', 'Abobora Retro', 'As Aboboras estao na espalhadas na escola! boa sorte :)'),
(20, '748e0c2ef80f5ac33920d1ff502c034f', 'Abobora destruida', 'As Aboboras estao na espalhadas na escola! boa sorte :)');

-- --------------------------------------------------------

--
-- Table structure for table `clan`
--

CREATE TABLE `clan` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `codigo_clan` varchar(10) NOT NULL,
  `id_lider` int(11) NOT NULL,
  `id_foto_clan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `clan`
--

INSERT INTO `clan` (`id`, `nome`, `codigo_clan`, `id_lider`, `id_foto_clan`) VALUES
(26, 'Neri', '04e6c54ee3', 59, '04e6c54ee3.jpg'),
(27, 'claAdm', '006f9f9dce', 53, '006f9f9dce.jpg'),
(28, 'os pikas', 'a5bd6c3217', 65, 'a5bd6c3217.jpg'),
(29, 'os vagabundos', 'b8e6c12187', 66, 'b8e6c12187.jpg'),
(30, 'Teste', 'e2387a85b0', 75, 'e2387a85b0.jpg'),
(31, 'Teste4', 'cd78c45d1f', 74, 'cd78c45d1f.jpg'),
(32, 'Teste 5', '1ffb753bea', 76, '1ffb753bea.jpg'),
(33, 'Teste6cla', 'af785a8a4c', 77, 'af785a8a4c.jpg'),
(34, 'Clan adm', 'ca1f607468', 97, 'ca1f607468.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `clan_messages`
--

CREATE TABLE `clan_messages` (
  `id` int(11) NOT NULL,
  `clan_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crow`
--

CREATE TABLE `crow` (
  `id` int(11) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `tip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crow`
--

INSERT INTO `crow` (`id`, `hash`, `name`, `tip`) VALUES
(1, 'f6b8e61f50f8d6dcd2c6a602ef0cce6ab58b5645', 'Samara', 'Esse e de brinde...'),
(2, '6e60125af8755bfd3cbbc874a2abb2df5a3e8dd3', 'Freddy  Krueger', 'Estou perto do gol, mas estou escondido...'),
(3, '984512ca0af6c846a106b53df5519ac7fc8e764d', 'Jigsaw', 'Estou entre as salas 5 e 6...'),
(4, '21bce0069f0dc7f4b1e4d94936d70c7d3fec3fae', 'Buba', 'Na secretaria, tem algo no minha frente...'),
(5, '8de83d89489202cea9399426e169f6b5c70c8221', 'Freira', '12 e 13... talvez perto delas...'),
(6, 'd5429f5d024f29bc8ff3f759898091a4e7b17700', 'O grito', 'Sala dos professores, se e assim que se chama...'),
(7, 'e7e312fea4c2c1aad2bb075d739111890e1ce08b', 'Jasom', 'Estou de baixo de uma mesa, e aqui normalmente e bem movimentado...'),
(8, 'dfbdb62e0f793e04bc25f27b9c3c1ca1c365b515', 'Slenderman', 'Onde eu estou, posso ver a quadra inteira...'),
(9, '082a67bffe36dd5ac1314361ce57af962137765a', 'annabelle e chucky', 'No meu corredor, posso ver todos que passam por aqui...'),
(10, '7e5a0eed0b762154de9f030f5058b09484e26850', 'Jeff the killer', 'Estou perto da entrada...'),
(11, '50234305056c6f26ae785e5aeabf22b3a600e238', 'Babadook', 'Tem uma arvore bem na minha frente...'),
(12, '5e4f409e4cec1db020b0e1240ef56aaea5642875', 'Vecna', 'Aqui tem muito papel...');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_crow` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `id_user`, `id_crow`, `date`) VALUES
(82, 105, 1, '2024-11-29 17:19:25'),
(83, 105, 10, '2024-11-29 17:19:53'),
(84, 105, 12, '2024-11-29 17:20:21'),
(85, 80, 1, '2024-11-29 17:20:56'),
(86, 105, 7, '2024-11-29 17:23:10'),
(87, 105, 8, '2024-11-29 17:24:28'),
(88, 80, 11, '2024-11-29 17:24:59'),
(90, 105, 6, '2024-11-29 17:25:18'),
(91, 97, 1, '2024-11-29 17:25:57'),
(93, 81, 11, '2024-11-29 17:28:52'),
(94, 104, 6, '2024-11-29 17:29:02'),
(95, 104, 4, '2024-11-29 17:29:37'),
(96, 104, 9, '2024-11-29 17:30:04'),
(97, 81, 8, '2024-11-29 17:30:26'),
(98, 104, 10, '2024-11-29 17:31:07'),
(99, 104, 11, '2024-11-29 17:31:58'),
(100, 105, 5, '2024-11-29 17:32:12'),
(101, 104, 7, '2024-11-29 17:32:45'),
(102, 80, 3, '2024-11-29 17:32:53'),
(103, 81, 7, '2024-11-29 17:33:09'),
(104, 104, 8, '2024-11-29 17:33:33'),
(105, 105, 3, '2024-11-29 17:35:34'),
(106, 80, 10, '2024-11-29 17:37:20'),
(107, 80, 5, '2024-11-29 17:40:57'),
(108, 105, 11, '2024-11-29 17:42:11'),
(109, 80, 8, '2024-11-29 17:42:57'),
(110, 80, 7, '2024-11-29 17:44:11'),
(111, 80, 6, '2024-11-29 17:45:46'),
(112, 111, 8, '2024-11-29 17:45:55'),
(113, 94, 1, '2024-11-29 17:46:59'),
(114, 109, 1, '2024-11-29 17:47:27'),
(115, 111, 6, '2024-11-29 17:48:55'),
(116, 94, 3, '2024-11-29 17:49:05'),
(117, 104, 1, '2024-11-29 17:49:16'),
(118, 94, 4, '2024-11-29 17:50:29'),
(119, 105, 4, '2024-11-29 17:50:48'),
(120, 111, 1, '2024-11-29 17:52:15'),
(121, 94, 10, '2024-11-29 17:52:16'),
(122, 111, 10, '2024-11-29 17:52:31'),
(123, 80, 2, '2024-11-29 17:52:34'),
(124, 94, 5, '2024-11-29 17:54:45'),
(125, 94, 11, '2024-11-29 17:55:31'),
(126, 104, 3, '2024-11-29 17:57:22'),
(127, 113, 3, '2024-11-29 17:57:33'),
(128, 94, 6, '2024-11-29 17:58:06'),
(129, 105, 2, '2024-11-29 17:58:22'),
(130, 111, 5, '2024-11-29 17:58:30'),
(131, 104, 2, '2024-11-29 18:00:05'),
(132, 94, 7, '2024-11-29 18:00:20'),
(134, 113, 10, '2024-11-29 18:01:00'),
(136, 113, 1, '2024-11-29 18:01:51'),
(137, 94, 2, '2024-11-29 18:02:17'),
(138, 105, 9, '2024-11-29 18:02:32'),
(139, 80, 9, '2024-11-29 18:02:37'),
(140, 111, 9, '2024-11-29 18:02:57'),
(141, 80, 4, '2024-11-29 18:03:11'),
(142, 81, 9, '2024-11-29 18:03:13'),
(144, 104, 5, '2024-11-29 18:03:21'),
(145, 94, 8, '2024-11-29 18:03:27'),
(148, 104, 12, '2024-11-29 18:04:56'),
(149, 80, 12, '2024-11-29 18:05:12'),
(150, 113, 12, '2024-11-29 18:05:25'),
(151, 112, 12, '2024-11-29 18:06:21'),
(152, 81, 2, '2024-11-29 18:06:27'),
(153, 111, 11, '2024-11-29 18:06:36'),
(154, 114, 11, '2024-11-29 18:06:50'),
(155, 114, 4, '2024-11-29 18:07:33'),
(156, 111, 4, '2024-11-29 18:07:42'),
(157, 81, 5, '2024-11-29 18:07:48'),
(158, 112, 1, '2024-11-29 18:07:53'),
(159, 112, 10, '2024-11-29 18:08:06'),
(160, 115, 6, '2024-11-29 18:08:24'),
(161, 94, 12, '2024-11-29 18:08:27'),
(162, 115, 4, '2024-11-29 18:08:44'),
(163, 115, 9, '2024-11-29 18:09:10'),
(164, 112, 5, '2024-11-29 18:09:18'),
(165, 115, 8, '2024-11-29 18:09:48'),
(166, 116, 1, '2024-11-29 18:10:15'),
(167, 81, 3, '2024-11-29 18:10:20'),
(168, 116, 10, '2024-11-29 18:10:34'),
(169, 112, 3, '2024-11-29 18:10:37'),
(170, 115, 2, '2024-11-29 18:10:43'),
(171, 116, 12, '2024-11-29 18:10:53'),
(172, 81, 10, '2024-11-29 18:11:01'),
(173, 115, 7, '2024-11-29 18:11:24'),
(174, 111, 2, '2024-11-29 18:11:27'),
(175, 114, 2, '2024-11-29 18:11:30'),
(176, 115, 11, '2024-11-29 18:11:47'),
(177, 115, 12, '2024-11-29 18:12:13'),
(178, 112, 9, '2024-11-29 18:12:15'),
(179, 116, 3, '2024-11-29 18:12:26'),
(180, 113, 9, '2024-11-29 18:12:45'),
(181, 112, 4, '2024-11-29 18:12:48'),
(182, 81, 1, '2024-11-29 18:12:53'),
(183, 94, 9, '2024-11-29 18:12:54'),
(184, 115, 1, '2024-11-29 18:12:59'),
(185, 116, 6, '2024-11-29 18:13:11'),
(186, 115, 10, '2024-11-29 18:13:16'),
(187, 113, 4, '2024-11-29 18:13:20'),
(188, 116, 4, '2024-11-29 18:13:25'),
(189, 102, 11, '2024-11-29 18:13:28'),
(190, 115, 3, '2024-11-29 18:13:44'),
(191, 113, 6, '2024-11-29 18:13:49'),
(192, 115, 5, '2024-11-29 18:14:22'),
(193, 81, 4, '2024-11-29 18:14:31'),
(194, 114, 5, '2024-11-29 18:14:38'),
(195, 81, 6, '2024-11-29 18:15:00'),
(196, 116, 5, '2024-11-29 18:15:24'),
(197, 102, 8, '2024-11-29 18:15:30'),
(198, 112, 7, '2024-11-29 18:15:33'),
(199, 113, 8, '2024-11-29 18:15:55'),
(200, 81, 12, '2024-11-29 18:16:32'),
(201, 117, 5, '2024-11-29 18:16:48'),
(202, 112, 8, '2024-11-29 18:16:48'),
(204, 113, 5, '2024-11-29 18:17:01'),
(205, 102, 1, '2024-11-29 18:17:09'),
(206, 117, 12, '2024-11-29 18:17:26'),
(207, 117, 1, '2024-11-29 18:18:26'),
(208, 117, 10, '2024-11-29 18:18:38'),
(211, 117, 3, '2024-11-29 18:18:58'),
(213, 102, 10, '2024-11-29 18:19:09'),
(214, 117, 11, '2024-11-29 18:19:18'),
(217, 117, 4, '2024-11-29 18:19:45'),
(218, 117, 6, '2024-11-29 18:19:53'),
(219, 117, 9, '2024-11-29 18:20:08'),
(220, 117, 7, '2024-11-29 18:20:40'),
(221, 117, 8, '2024-11-29 18:20:54'),
(222, 102, 3, '2024-11-29 18:21:08'),
(223, 117, 2, '2024-11-29 18:21:17'),
(225, 113, 2, '2024-11-29 18:21:35'),
(226, 116, 2, '2024-11-29 18:21:39'),
(228, 118, 2, '2024-11-29 18:24:38'),
(229, 118, 4, '2024-11-29 18:25:23'),
(230, 116, 8, '2024-11-29 18:25:23'),
(232, 118, 11, '2024-11-29 18:25:48'),
(233, 113, 11, '2024-11-29 18:26:00'),
(234, 102, 2, '2024-11-29 18:26:05'),
(235, 118, 12, '2024-11-29 18:26:45'),
(236, 118, 1, '2024-11-29 18:26:47'),
(237, 118, 3, '2024-11-29 18:27:02'),
(238, 93, 2, '2024-11-29 18:27:09'),
(239, 116, 11, '2024-11-29 18:27:16'),
(240, 118, 8, '2024-11-29 18:27:25'),
(241, 93, 8, '2024-11-29 18:27:28'),
(242, 113, 7, '2024-11-29 18:27:45'),
(243, 118, 6, '2024-11-29 18:27:45'),
(244, 93, 7, '2024-11-29 18:27:57'),
(245, 93, 11, '2024-11-29 18:28:46'),
(246, 116, 7, '2024-11-29 18:28:46'),
(247, 114, 9, '2024-11-29 18:28:55'),
(248, 102, 5, '2024-11-29 18:28:59'),
(249, 93, 3, '2024-11-29 18:29:02'),
(250, 93, 1, '2024-11-29 18:29:24'),
(251, 118, 7, '2024-11-29 18:29:33'),
(252, 93, 10, '2024-11-29 18:29:44'),
(253, 93, 12, '2024-11-29 18:30:03'),
(254, 118, 5, '2024-11-29 18:30:39'),
(255, 102, 7, '2024-11-29 18:31:15'),
(256, 114, 10, '2024-11-29 18:31:37'),
(257, 118, 9, '2024-11-29 18:31:38'),
(258, 93, 5, '2024-11-29 18:31:45'),
(259, 93, 9, '2024-11-29 18:32:01'),
(260, 93, 4, '2024-11-29 18:32:18'),
(261, 93, 6, '2024-11-29 18:32:31'),
(262, 118, 10, '2024-11-29 18:33:18'),
(263, 102, 6, '2024-11-29 18:34:46'),
(264, 119, 3, '2024-11-29 18:35:58'),
(265, 114, 7, '2024-11-29 18:36:04'),
(266, 111, 7, '2024-11-29 18:36:11'),
(267, 119, 1, '2024-11-29 18:36:20'),
(268, 119, 10, '2024-11-29 18:36:37'),
(270, 119, 12, '2024-11-29 18:36:48'),
(271, 102, 4, '2024-11-29 18:37:02'),
(272, 119, 5, '2024-11-29 18:37:06'),
(274, 116, 9, '2024-11-29 18:37:22'),
(275, 119, 7, '2024-11-29 18:37:28'),
(276, 119, 9, '2024-11-29 18:37:39'),
(277, 102, 9, '2024-11-29 18:37:41'),
(278, 119, 4, '2024-11-29 18:37:50'),
(279, 119, 6, '2024-11-29 18:37:56'),
(280, 114, 6, '2024-11-29 18:38:13'),
(282, 119, 8, '2024-11-29 18:38:24'),
(283, 119, 2, '2024-11-29 18:38:40'),
(284, 120, 1, '2024-11-29 18:38:59'),
(285, 119, 11, '2024-11-29 18:39:06'),
(286, 120, 10, '2024-11-29 18:39:08'),
(288, 120, 12, '2024-11-29 18:39:27'),
(289, 102, 12, '2024-11-29 18:39:37'),
(290, 114, 8, '2024-11-29 18:40:01'),
(291, 120, 5, '2024-11-29 18:40:09'),
(292, 120, 7, '2024-11-29 18:40:26'),
(293, 120, 8, '2024-11-29 18:40:40'),
(294, 120, 2, '2024-11-29 18:41:19'),
(295, 120, 4, '2024-11-29 18:41:29'),
(296, 120, 9, '2024-11-29 18:41:47'),
(297, 120, 3, '2024-11-29 18:42:12'),
(298, 121, 5, '2024-11-29 18:42:19'),
(299, 120, 11, '2024-11-29 18:42:23'),
(300, 121, 12, '2024-11-29 18:42:36'),
(301, 121, 10, '2024-11-29 18:42:47'),
(302, 121, 1, '2024-11-29 18:42:54'),
(305, 120, 6, '2024-11-29 18:43:21'),
(306, 121, 4, '2024-11-29 18:43:24'),
(307, 121, 6, '2024-11-29 18:43:30'),
(308, 121, 9, '2024-11-29 18:43:50'),
(309, 121, 7, '2024-11-29 18:44:24'),
(310, 121, 8, '2024-11-29 18:44:34'),
(311, 121, 11, '2024-11-29 18:44:52'),
(313, 121, 2, '2024-11-29 18:45:22'),
(314, 121, 3, '2024-11-29 18:45:52'),
(315, 122, 5, '2024-11-29 18:53:19'),
(317, 122, 12, '2024-11-29 18:53:34'),
(319, 123, 2, '2024-11-29 18:53:36'),
(320, 122, 1, '2024-11-29 18:53:42'),
(321, 122, 10, '2024-11-29 18:53:50'),
(322, 123, 6, '2024-11-29 18:53:53'),
(323, 123, 8, '2024-11-29 18:54:07'),
(324, 122, 3, '2024-11-29 18:54:08'),
(325, 123, 4, '2024-11-29 18:54:16'),
(326, 122, 11, '2024-11-29 18:54:17'),
(327, 123, 9, '2024-11-29 18:54:23'),
(328, 122, 9, '2024-11-29 18:54:28'),
(329, 123, 3, '2024-11-29 18:54:30'),
(330, 122, 4, '2024-11-29 18:54:35'),
(331, 123, 1, '2024-11-29 18:54:38'),
(332, 122, 6, '2024-11-29 18:54:42'),
(334, 123, 10, '2024-11-29 18:54:46'),
(335, 123, 12, '2024-11-29 18:54:57'),
(336, 122, 7, '2024-11-29 18:55:04'),
(337, 123, 11, '2024-11-29 18:55:08'),
(338, 122, 8, '2024-11-29 18:55:13'),
(340, 123, 7, '2024-11-29 18:55:18'),
(341, 123, 5, '2024-11-29 18:55:25'),
(342, 122, 2, '2024-11-29 18:55:27'),
(345, 92, 5, '2024-11-29 18:59:08'),
(346, 124, 3, '2024-11-29 19:00:38'),
(347, 124, 1, '2024-11-29 19:00:49'),
(349, 124, 10, '2024-11-29 19:00:55'),
(350, 92, 1, '2024-11-29 19:01:04'),
(351, 124, 12, '2024-11-29 19:01:07'),
(352, 124, 5, '2024-11-29 19:01:26'),
(353, 92, 10, '2024-11-29 19:01:31'),
(354, 124, 11, '2024-11-29 19:01:41'),
(355, 124, 9, '2024-11-29 19:01:55'),
(356, 124, 4, '2024-11-29 19:02:05'),
(357, 124, 6, '2024-11-29 19:02:11'),
(359, 124, 7, '2024-11-29 19:02:36'),
(360, 92, 12, '2024-11-29 19:02:37'),
(361, 124, 8, '2024-11-29 19:02:46'),
(363, 124, 2, '2024-11-29 19:02:59'),
(367, 92, 11, '2024-11-29 19:04:50'),
(371, 125, 5, '2024-11-29 19:17:37'),
(372, 125, 3, '2024-11-29 19:17:47'),
(373, 125, 9, '2024-11-29 19:17:57'),
(374, 125, 6, '2024-11-29 19:18:06'),
(375, 125, 2, '2024-11-29 19:18:17'),
(376, 125, 1, '2024-11-29 19:18:28'),
(379, 125, 7, '2024-11-29 19:18:52'),
(380, 125, 11, '2024-11-29 19:19:00'),
(381, 125, 4, '2024-11-29 19:19:10'),
(382, 125, 8, '2024-11-29 19:19:22'),
(383, 125, 10, '2024-11-29 19:19:29'),
(384, 125, 12, '2024-11-29 19:19:40'),
(396, 112, 6, '2024-11-29 19:44:42'),
(402, 112, 11, '2024-11-29 19:45:40'),
(403, 126, 5, '2024-11-29 20:00:23'),
(404, 126, 3, '2024-11-29 20:00:27'),
(405, 126, 9, '2024-11-29 20:00:30'),
(406, 126, 6, '2024-11-29 20:00:33'),
(407, 126, 2, '2024-11-29 20:00:37'),
(408, 126, 1, '2024-11-29 20:00:41'),
(409, 126, 7, '2024-11-29 20:01:01'),
(410, 126, 11, '2024-11-29 20:01:05'),
(411, 126, 4, '2024-11-29 20:01:08'),
(412, 126, 12, '2024-11-29 20:01:12'),
(413, 126, 8, '2024-11-29 20:01:16'),
(414, 126, 10, '2024-11-29 20:01:20'),
(415, 127, 5, '2024-11-29 20:21:46'),
(416, 127, 3, '2024-11-29 20:21:51'),
(417, 127, 9, '2024-11-29 20:21:57'),
(418, 127, 6, '2024-11-29 20:22:04'),
(419, 127, 2, '2024-11-29 20:22:10'),
(420, 127, 1, '2024-11-29 20:22:17'),
(421, 127, 7, '2024-11-29 20:22:23'),
(422, 127, 11, '2024-11-29 20:22:28'),
(423, 127, 10, '2024-11-29 20:22:34'),
(424, 127, 8, '2024-11-29 20:22:40'),
(425, 127, 12, '2024-11-29 20:22:46'),
(426, 127, 4, '2024-11-29 20:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `rank_clan`
--

CREATE TABLE `rank_clan` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_abobora` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `rank_clan`
--

INSERT INTO `rank_clan` (`id`, `id_user`, `id_abobora`, `date`) VALUES
(128, 56, 20, '2024-11-07 21:31:54'),
(129, 53, 20, '2024-11-13 23:21:26'),
(130, 97, 20, '2024-11-29 16:49:50'),
(131, 97, 8, '2024-11-29 16:51:12');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_usertype` int(11) NOT NULL,
  `clan_id` int(11) NOT NULL,
  `cargo` enum('leader','admin','member') DEFAULT 'member',
  `foto` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `id_usertype`, `clan_id`, `cargo`, `foto`) VALUES
(80, 'LÃ­via', 'liviadonascimentovieira3838@gmail.com', '$2y$10$305fWGKz.rUp51341Ecp9uErZOJH0evheXliwJoL5XK0ycBam.76u', 2, 0, 'member', '04-11-51.jpg'),
(81, 'Nicholas', 'Nicholas.gdj@gmail.com', '$2y$10$wffqEC2X7oi0BAY82JUEPepwrX63.f8uetM3dYyNnrzHSbQ1T/Rpq', 2, 0, 'member', '05-11-42.jpg'),
(82, 'Ana Laura Amaral', 'nahlauramaral@gmail.com', '$2y$10$v0t3YgBNMC2fDQ0JU.2hOO2L6Ao1Oe5NfUZO7CMa45HmDB/Yay3km', 2, 0, 'member', '06-11-32.jpg'),
(83, 'Emilly Gabriele', 'marcosgalego1351@gmail.com', '$2y$10$/Z0c0n1/8OKDGDCM/gmLQeAxNPW323SCH58ezPNtaefOC.lrt4vR.', 2, 0, 'member', '06-11-22.jpg'),
(85, 'Guilherme gering camilo', 'guilhermegering936@gmail.com', '$2y$10$5kqU91gazAbruVDR.Wsn9ucf/AQ8VW10vQZ.UZDmhfTH/eWuTP6Ha', 2, 0, 'member', '06-11-08.jpg'),
(86, 'Ana Carolina', 'anacarolina198063202@gmail.com', '$2y$10$v7X.v5bDyYTyqhEMBkDXPu4mxmPH6UdVyjDo9e0bTc03qHyftj/GO', 2, 0, 'member', '06-11-38.jpg'),
(88, 'Nicoly Pires', 'nicolypms18@gmail.com', '$2y$10$dRf92PRcFp6Rx2EJmPbpD.o1.y9Yp6uCOSs4C7KjtZ7OYW3pUSj0e', 2, 0, 'member', '07-11-01.jpg'),
(89, 'Neri', 'rafaelanerirodrigues@gmail.com', '$2y$10$x1wBiWsh42UCaJNGIlf4jetmzCANdMKJNqoQGzykVo9Ac0TGPPywC', 2, 0, 'member', '07-11-05.jpg'),
(90, 'Maluh', 'malu012007@gmail.com', '$2y$10$h0A6fE5MfOXG2aHOUr/yee5WB18SqbALr1ZebZEMe/PsOHLeFlyby', 2, 0, 'member', '07-11-18.jpg'),
(91, 'Jose', 'caua.c.gferreira@gmail.com', '$2y$10$08Dk.yZgpmVhBdw1tzppde0dioSF1/qDs6XcMz0Z4xHS0lF8caHmq', 2, 0, 'member', '07-11-47.jpg'),
(92, 'Anna Beatriz Zuin', 'annabzmd@gmail.com', '$2y$10$6Rlv4plNKCilqs4glstlpOKz/nr8M2B.z19jjIYmCIJtVSoIK7rlW', 2, 0, 'member', '07-11-34.jpg'),
(93, 'Max 1D', 'hilariomaxsuel@gmail.com', '$2y$10$aQRxF3VM1BR4qZcGNjIa6eh6f/RXsoCL15xRk8fYiTBZ3oi6X6Y4e', 2, 0, 'member', '07-11-23.jpg'),
(94, 'Claudio', 'claudiolaureano08@gmail.com', '$2y$10$bIbqhYCLt/MSTtJUjaPaaOMSGSmuspM/S.mGYw8krod6YTe1BoJ0W', 2, 0, 'member', '07-11-53.jpg'),
(96, 'Lithysa Silva', 'silvalithysa@gmail.com', '$2y$10$DJf2X0ifCf03TgaGE5Wlhuaff1JWp8Dw7PV4L6ZP5r.pVAwq6IAne', 2, 0, 'member', '08-11-13.jpg'),
(97, 'Surik4to06', 'surik4to06@g.com', '$2y$10$NB/ApzC3oq6wsomFlOJDneC4T6BmXBJNNU.BvH21Y/eY9ZendbYLC', 1, 34, 'leader', '08-11-17.jpg'),
(98, 'Matheus Xavier 3A', 'suspirozin123@email.com', '$2y$10$3cnLJ89iq1x06osBd3wQmuE124sogmKnzgBApR92NM/oXiFQaz.PW', 2, 0, 'member', '01-11-11.jpg'),
(99, 'Ã‰vilyn', 'evilynkazumisekiya@gmail.com', '$2y$10$fZ7arSKSjw8JRxem/aEC.eomOpO9KK3vz9yqX70tfV21O07tWC.d6', 2, 0, 'member', '03-11-27.jpg'),
(100, 'Luizito Soares', 'luiz_diniz2004@yahoo.com.br', '$2y$10$02cASs.oFY6VHOtG0fPpsudsHwcm/ujmoGLMdx5.3LBWE0OcgpN22', 2, 0, 'member', '03-11-18.jpg'),
(101, 'Vo maria', 'Aliceortiz2105@gmail.com', '$2y$10$oZYHF.2FH2J0mxjZ/Tje0uJ/EASKHe9IaWVrkMd6QhCbLL4I1U7oG', 2, 0, 'member', '04-11-56.jpg'),
(102, 'Pedro Ernesto', 'Sallescastropedroernesto@gmail.com', '$2y$10$p7GDgVR5AU658Po2jm8lY.mKd/W3xngKdh.fNOkRm/UdkmBqP11g6', 2, 0, 'member', '07-11-20.jpg'),
(103, 'Ortiz', 'vitorortizlolattajoaovitor@gmail.com', '$2y$10$LUJalj6DHP3r5Z.I0ASMhuLo4dVqpc7OtaHUtREwE/slCIGEK84Ym', 2, 0, 'member', '11-11-18.jpg'),
(104, 'Gabriel Augusto', 'bielsiqueiracoelho123@gmail.com', '$2y$10$5GjsOTGxhfGhub7qVqKHA.R7JT.AiF0vd9wPOh6Vy8YIZMca6K7F6', 2, 0, 'member', '12-11-41.jpg'),
(105, 'Felipe Eduardo', 'felipelindode@gmail.com', '$2y$10$BL6nxtgyd3kDcqjR4rqIK.lOlG1aFQlJ46dBbLPDEaMzD/2hlsKBK', 2, 34, 'member', '11-11-17.jpg'),
(106, 'Ken takakura', 'magaroterafael@gmail.com', '$2y$10$iaIz.TpPy8eFMUwIhQRex.lsdKUcp.dH8hTTUVnpXvqdqSwCfIO.e', 2, 0, 'member', '11-11-13.jpg'),
(107, 'Richard LeÃ£o', 'surik4to@g.com', '$2y$10$bdlrD.sMONlA8EoT1z.24e2NwrrA5In7fZhWZ7Jct2ENLSVaz1nUi', 2, 0, 'member', '12-11-39.jpg'),
(108, 'Igor Henrique de Oliveira lopes', '00001117746082sp@al.educacao.sp.gov.br', '$2y$10$gFl5cgyUQUQEcmGa4sUdROFGdLyZiOiN3VqrePVxOjSEHjw29Oopy', 2, 0, 'member', '12-11-46.jpg'),
(109, 'Juan Joia', 'juanjoiaoliveira@gmail.com', '$2y$10$8B1Fi/97eOJaOBwLXSJbZO7XxD0T/SliWw/aHMCFR8lwqY/rJ97ji', 2, 0, 'member', '12-11-55.jpg'),
(110, 'Camilly', 'camilly0615j@gmail.com', '$2y$10$q0RQsfB/kECM9JMPsnNUL.T4dVm5UDtsYF6XXr6rJ/daJZS0y24XC', 2, 0, 'member', '12-11-25.jpg'),
(111, 'Rebecca Xavier', 'rebecca.depaula0704@gmail.com', '$2y$10$K/p/wPmIx7PgPMVi2t3PYeS/OJdD083W0H2J8jKZdm5Szt.NBn/Hq', 2, 0, 'member', '12-11-35.jpg'),
(112, 'Lua', 'mariannevitoriamartins@gmail.com', '$2y$10$WRJ/3mnjAPW.W.tj9sypBOFN8eS220rjy0MLX6WRvvUE1d7edaMUC', 2, 0, 'member', '12-11-07.jpg'),
(113, 'Sanss', 'sanssabc@gmail.com', '$2y$10$7RLJRhyPeIvCeixV9c17juz85sTR3xvjoFV7MLp9PSzsRVIo/641q', 2, 0, 'member', '12-11-12.jpg'),
(114, 'Julia', 'julialmeidasil157@gmail.com', '$2y$10$3NmLUhugicQVi/XoM6PaqO9gPw5dN2gXSqTV4o/WSDlXtWQR4gziC', 2, 0, 'member', '01-11-27.jpg'),
(115, 'Igor Henrique de Oliveira lopes', 'Igor1Oliveira7Lopes@gmail.com', '$2y$10$ce6x.ihGuEP1uApcHuVBy.JS9MG6XYEdz9mkaVDG6c3bi4aqUmT.2', 2, 0, 'member', '01-11-43.jpg'),
(116, 'Yuri', 'yurifernando288@gmail.com', '$2y$10$jSBSdjdGzKPDmdnLXz84kOIu00tkDJHXOcS9tRwKc4xB9fTF6oPMy', 2, 0, 'member', '01-11-51.jpg'),
(117, 'Felipe Eduardo 2(o verdadeiro)', 'aparecidoalexandre212@gmail.com', '$2y$10$sub4bq8.Grmq4xCxAXu/GuLW8zJZ8KdEJW6ntyAgaB5C9s6BdSedC', 2, 0, 'member', '01-11-28.jpg'),
(118, 'Nick do grau', 'rafinhagomes2413@gmail.com', '$2y$10$chJSoMQu5RHuSGebAHHj2uQn71mSejPUJAHorv/d0CDoAQHYx7986', 2, 0, 'member', '01-11-15.jpg'),
(119, 'Nini', 'rafinhaoliveira2476@gmail.com', '$2y$10$mGeTQ11M7L6M54Na7dEM6uqXrOafVjPRM7iw2QTNFMLupf9o7IKty', 2, 0, 'member', '01-11-42.jpg'),
(120, 'Yuri o brabo', 'yuriffsouza@gmail.com', '$2y$10$f1HR9eDzcBoaYDsbyMHHQebV6rZP5p0MW5C1qR5S9A5q8O7.8oFUm', 2, 0, 'member', '01-11-48.jpg'),
(121, 'Felipe(NICOLAS NÃƒO VAI GANHAR)', 'oithau35@gmail.com', '$2y$10$yAKDct/5RC4ZNzXbGqAk8OM0ch5wZFIrnsNrDwwrMsUUGpzH7uG7i', 2, 0, 'member', '01-11-08.jpg'),
(122, 'Zbain', 'felipeeduardotrabalho@gmail.com', '$2y$10$UqBSCgZ.O1Dfc.LZg8c52ecUOvgT1QslTeA3lLpChpf6Rtha4a7kS', 2, 0, 'member', '01-11-02.jpg'),
(123, 'Juan uchiha 1D', 'rodriguesjoia76@gmail.com', '$2y$10$Ccf0uT.y1Y5rHqyuTymyS.31ZWafblOjRysJ0PcDwmoSvDlUvwHx6', 2, 0, 'member', '01-11-04.jpg'),
(124, 'Nop', 'xenox120contato@gmail.com', '$2y$10$aLJHLJyWeXNNFggJ//5AnuhwXE9QXp0RTqwWE9Ufl/YeUP2Tlw/bK', 2, 0, 'member', '02-11-17.jpg'),
(125, 'Dragonower 777', 'nickgg157@gmail.com', '$2y$10$6zEWjxoqP60ZAM6qRfdwyO/y6GofrnM39.Mc8pjBWoFK263EJfWdG', 2, 0, 'member', '02-11-21.jpg'),
(126, 'Felipe Eduardo the God', 'felipeganhou82@gmail.coml', '$2y$10$8kRCrvdETXpdnzinTkfozOQBU7z32MPt0P9JX2J0PRnG7ucebjFrS', 2, 0, 'member', '02-11-43.jpg'),
(127, 'Nickinho', 'yureba64927@gmail.com', '$2y$10$lpaO9T/7WQqf.dorOg83N.tLSSXFt0jKM/cxyCR.j8JlzopCerI2q', 2, 0, 'member', '03-11-56.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`id`, `description`) VALUES
(1, 'Admin'),
(2, 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abobora`
--
ALTER TABLE `abobora`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clan`
--
ALTER TABLE `clan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_users` (`id_lider`);

--
-- Indexes for table `clan_messages`
--
ALTER TABLE `clan_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clan_id` (`clan_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `crow`
--
ALTER TABLE `crow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_user` (`id_user`,`id_crow`),
  ADD KEY `id_crow` (`id_crow`);

--
-- Indexes for table `rank_clan`
--
ALTER TABLE `rank_clan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abobora` (`id_abobora`),
  ADD KEY `id_rank` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_usertype` (`id_usertype`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abobora`
--
ALTER TABLE `abobora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `clan`
--
ALTER TABLE `clan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `clan_messages`
--
ALTER TABLE `clan_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crow`
--
ALTER TABLE `crow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;

--
-- AUTO_INCREMENT for table `rank_clan`
--
ALTER TABLE `rank_clan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clan`
--
ALTER TABLE `clan`
  ADD CONSTRAINT `id_users` FOREIGN KEY (`id_lider`) REFERENCES `user` (`id`);

--
-- Constraints for table `rank_clan`
--
ALTER TABLE `rank_clan`
  ADD CONSTRAINT `abobora` FOREIGN KEY (`id_abobora`) REFERENCES `abobora` (`id`),
  ADD CONSTRAINT `id_rank` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
