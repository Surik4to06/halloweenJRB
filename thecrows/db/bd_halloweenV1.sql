-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09/08/2024 às 19:58
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `thecrow`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clan`
--

CREATE TABLE `clan` (
  `id` int(11) NOT NULL,
  `leader_id` int(11) NOT NULL,
  `nome_clan` varchar(100) NOT NULL,
  `senha_clan` varchar(100) NOT NULL,
  `clan_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `clan`
--

INSERT INTO `clan` (`id`, `leader_id`, `nome_clan`, `senha_clan`, `clan_picture`) VALUES
(1, 0, 'clan teste', 'clan123', NULL),
(2, 0, '', '', NULL),
(7, 0, 'surubaras', '40028922', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `clan_members`
--

CREATE TABLE `clan_members` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `clan_id` int(11) DEFAULT NULL,
  `cargo` enum('member','admin','leader') DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `clan_messages`
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
-- Estrutura para tabela `crow`
--

CREATE TABLE `crow` (
  `id` int(11) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `tip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `crow`
--

INSERT INTO `crow` (`id`, `hash`, `name`, `tip`) VALUES
(1, 'hash1', 'Hugin', 'Aqui vai ficar o texto com a dica ou uma charada de onde pode estar esse corvo'),
(2, 'hash2', 'Ylva', 'Aqui vai ficar o texto com a dica ou uma charada de onde pode estar esse corvo'),
(3, 'hash3', 'Eartha', 'Aqui vai ficar o texto com a dica ou uma charada de onde pode estar esse corvo'),
(4, 'hash4', 'Grim', 'Aqui vai ficar o texto com a dica ou uma charada de onde pode estar esse corvo'),
(5, 'hash5', 'Caligo', 'Aqui vai ficar o texto com a dica ou uma charada de onde pode estar esse corvo'),
(6, 'hash6', 'Hrafn', 'Aqui vai ficar o texto com a dica ou uma charada de onde pode estar esse corvo'),
(7, 'hash7', 'Yvar', 'Aqui vai ficar o texto com a dica ou uma charada de onde pode estar esse corvo'),
(8, 'hash8', 'Grimnir', 'Aqui vai ficar o texto com a dica ou uma charada de onde pode estar esse corvo'),
(9, 'hash9', 'Arkyn', 'Aqui vai ficar o texto com a dica ou uma charada de onde pode estar esse corvo'),
(10, 'hash10', 'Alfodr', 'Aqui vai ficar o texto com a dica ou uma charada de onde pode estar esse corvo'),
(11, 'hash11', 'Myrkvi', 'Aqui vai ficar o texto com a dica ou uma charada de onde pode estar esse corvo'),
(12, 'hash12', 'Munin', 'Aqui vai ficar o texto com a dica ou uma charada de onde pode estar esse corvo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `rank`
--

CREATE TABLE `rank` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_crow` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `rank`
--

INSERT INTO `rank` (`id`, `id_user`, `id_crow`, `date`) VALUES
(1, 2, 3, '2024-08-05 20:53:10'),
(2, 2, 12, '2024-08-05 20:53:22'),
(3, 3, 3, '2024-08-07 21:08:04'),
(4, 3, 1, '2024-08-07 21:08:40'),
(5, 3, 2, '2024-08-07 21:08:47'),
(6, 2, 1, '2024-08-07 22:04:09'),
(13, 2, 2, '2024-08-08 01:02:46'),
(15, 2, 4, '2024-08-08 01:04:26'),
(26, 2, 5, '2024-08-08 01:26:03'),
(32, 2, 6, '2024-08-08 01:29:58');

-- --------------------------------------------------------

--
-- Estrutura para tabela `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_usertype` int(11) NOT NULL,
  `id_photo` int(11) NOT NULL,
  `clan_id` int(11) NOT NULL,
  `cargo` enum('leader','admin','member') DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `id_usertype`, `id_photo`, `clan_id`, `cargo`) VALUES
(2, 'Surik4to', 'Surik4to06@gmail.com', '$2y$10$IJuSeR1sh8IC9hxzVRcpY.hASYJRyp9zmX/6LCm2.XyeWVPjkGFV.', 1, 12, 0, 'member'),
(3, 'teste', 'teste@gmail.com', '$2y$10$XzF3aheYCssGpgExZwEhP.jO3NOLXWwSB2VfZlmh7Amg7vjtynlOS', 2, 14, 0, 'member');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usertype`
--

CREATE TABLE `usertype` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `usertype`
--

INSERT INTO `usertype` (`id`, `description`) VALUES
(1, 'Admin'),
(2, 'User');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clan`
--
ALTER TABLE `clan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome_clan` (`nome_clan`);

--
-- Índices de tabela `clan_members`
--
ALTER TABLE `clan_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`clan_id`),
  ADD KEY `clan_id` (`clan_id`);

--
-- Índices de tabela `clan_messages`
--
ALTER TABLE `clan_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clan_id` (`clan_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `crow`
--
ALTER TABLE `crow`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_user` (`id_user`,`id_crow`),
  ADD KEY `id_crow` (`id_crow`);

--
-- Índices de tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_usertype` (`id_usertype`),
  ADD KEY `id_photo` (`id_photo`);

--
-- Índices de tabela `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clan`
--
ALTER TABLE `clan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `clan_members`
--
ALTER TABLE `clan_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `clan_messages`
--
ALTER TABLE `clan_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `crow`
--
ALTER TABLE `crow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `usertype`
--
ALTER TABLE `usertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `clan_members`
--
ALTER TABLE `clan_members`
  ADD CONSTRAINT `clan_members_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `clan_members_ibfk_2` FOREIGN KEY (`clan_id`) REFERENCES `clan` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `clan_messages`
--
ALTER TABLE `clan_messages`
  ADD CONSTRAINT `clan_messages_ibfk_1` FOREIGN KEY (`clan_id`) REFERENCES `clan` (`id`),
  ADD CONSTRAINT `clan_messages_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Restrições para tabelas `rank`
--
ALTER TABLE `rank`
  ADD CONSTRAINT `rank_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rank_ibfk_2` FOREIGN KEY (`id_crow`) REFERENCES `crow` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_usertype`) REFERENCES `usertype` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
