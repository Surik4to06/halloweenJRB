-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql303.infinityfree.com
-- Tempo de geração: 30/11/2024 às 18:53
-- Versão do servidor: 10.6.19-MariaDB
-- Versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `if0_37454816_halloweenjrb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `abobora`
--

CREATE TABLE `abobora` (
  `id` int(11) NOT NULL,
  `hash` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Despejando dados para a tabela `abobora`
--

INSERT INTO `abobora` (`id`, `hash`, `name`, `tip`) VALUES
(1, 'fe2cb3c29c3bf8c4e963009bcb10ccfd', 'Abobora Tomate', 'As Abobora estao na espalhadas na escola, boa sorte '),
(2, 'f3b076342c9b5663e4ca773b1e92c17c', 'Abobora Fantasma', 'As Abobora estao na espalhadas na escola, boa sorte '),
(3, '3d9686ede228350554451dc2b29c7f59', 'Abobora Fazbear', 'As Abobora estao na espalhadas na escola, boa sorte '),
(4, '014c3a7d24aa4f330fa36f92e2556274', 'Abobora Sonica', 'As Abobora estao na espalhadas na escola, boa sorte '),
(5, '2e55556f43c1c1c998b3f5bb533d72d0', 'Abobora Cartoon', 'As Abobora estao na espalhadas na escola, boa sorte '),
(6, '189434c3d41fcdb2e6f3db971800fa6f', 'Abobora Enstein', 'As Abobora estao na espalhadas na escola, boa sorte '),
(7, 'd532fd0f57b59f842fdb0eddf054d212', 'Abobora Abobora', 'As Abobora estao na espalhadas na escola, boa sorte '),
(8, 'ef26a50af1530065699b2d7654619f7f', 'Abobora Esqueletica', 'As Abobora estao na espalhadas na escola, boa sorte '),
(9, 'b877923ad57a1f6e9a5c9ef21885b1dc', 'Abobora minecraft', 'As Abobora estao na espalhadas na escola, boa sorte '),
(10, 'dcb9f686535b82d762a382949d8ba4b1', 'Abobora Bill Cipher', 'As Abobora estao na espalhadas na escola, boa sorte '),
(11, '0fe701e24253596c87845ace98f2ffd2', 'Abobora Olhos de botoes', 'As Abobora estao na espalhadas na escola, boa sorte '),
(12, '23b6f1e34553f4d94d720ac10dc17e8a', 'Abobora de Doces', 'As Abobora estao na espalhadas na escola, boa sorte '),
(13, '3ff6b7342a3459c238a000da0db3814a', 'Abobora Sonolenta', 'As Abobora estao na espalhadas na escola, boa sorte '),
(14, 'ee85b19a6a933714028ef33d00a82ea6', 'Abobora Amaldicoada', 'As Abobora estao na espalhadas na escola, boa sorte '),
(15, '4338c7e92017ea64be4eefd18b6055db', 'Abobora da Morte', 'As Abobora estao na espalhadas na escola, boa sorte '),
(16, '0c48feb091b5107b24bbeb8534964e9d', 'IT a Abobora', 'As Abobora estao na espalhadas na escola, boa sorte '),
(17, 'b06070b9c761be935c489940b12f4f06', 'Abobora Bruxa', 'As Abobora estao na espalhadas na escola, boa sorte '),
(18, 'a9a026248b568a52398bcd2c070d5f9b', 'Abobora Atingida', 'As Abobora estao na espalhadas na escola, boa sorte '),
(19, 'fa7bd6e44a6dbf4661a8b7407b73f2b9', 'Abobora Retro', 'As Abobora estao na espalhadas na escola, boa sorte '),
(20, '748e0c2ef80f5ac33920d1ff502c034f', 'Abobora destruida', 'As Abobora estao na espalhadas na escola, boa sorte ');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clan`
--

CREATE TABLE `clan` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `codigo_clan` varchar(10) NOT NULL,
  `id_lider` int(11) NOT NULL,
  `id_foto_clan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Despejando dados para a tabela `clan`
--

INSERT INTO `clan` (`id`, `nome`, `codigo_clan`, `id_lider`, `id_foto_clan`) VALUES
(34, 'clan do otavio slkðŸ”¥ðŸ”¥', '20a5f616f1', 106, '20a5f616f1.jpg'),
(36, 'Mostrando rank do cla kk', 'ff71107255', 107, 'ff71107255.jpg');

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
(1, 'f6b8e61f50f8d6dcd2c6a602ef0cce6ab58b5645', 'Samara', 'Esse e de brinde e esta na entrada...'),
(2, '6e60125af8755bfd3cbbc874a2abb2df5a3e8dd3', 'Freddy  Krueger', 'Estou perto do gol, porem escondido...'),
(3, '984512ca0af6c846a106b53df5519ac7fc8e764d', 'Jigsaw', 'Estou entre as salas 5 e 6...'),
(4, '21bce0069f0dc7f4b1e4d94936d70c7d3fec3fae', 'Buba', 'Na secretaria, tem algo na minha frente...'),
(5, '8de83d89489202cea9399426e169f6b5c70c8221', 'Freira', '12 e 13... talvez proximo delas?'),
(6, 'd5429f5d024f29bc8ff3f759898091a4e7b17700', 'O grito', 'Sala dos professores, se e assim que se chama...'),
(7, 'e7e312fea4c2c1aad2bb075d739111890e1ce08b', 'Jasom', 'Estou em baixo de uma mesa, e por sinal esta sempre movimentado aqui...'),
(8, 'dfbdb62e0f793e04bc25f27b9c3c1ca1c365b515', 'Slenderman', 'De onde estou, posso ver a quadra toda...'),
(9, '082a67bffe36dd5ac1314361ce57af962137765a', 'annabelle e chucky', 'No meu corredor posso ver todos que passam por aqui...'),
(10, '7e5a0eed0b762154de9f030f5058b09484e26850', 'Jeff the killer', 'Estou perto do portao...'),
(11, '50234305056c6f26ae785e5aeabf22b3a600e238', 'Babadook', 'Tem uma arvore bem na minha frente ,_,'),
(12, '5e4f409e4cec1db020b0e1240ef56aaea5642875', 'Vecna', 'Aqui tem muito papel...');

-- --------------------------------------------------------

--
-- Estrutura para tabela `rank`
--

CREATE TABLE `rank` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_crow` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `rank_clan`
--

CREATE TABLE `rank_clan` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_abobora` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Despejando dados para a tabela `rank_clan`
--

INSERT INTO `rank_clan` (`id`, `id_user`, `id_abobora`, `date`) VALUES
(130, 106, 3, '2024-11-30 20:12:03'),
(131, 107, 3, '2024-11-30 20:15:55'),
(132, 107, 1, '2024-11-30 20:16:45');

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
  `clan_id` int(11) NOT NULL,
  `cargo` enum('leader','admin','member') DEFAULT 'member',
  `foto` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `id_usertype`, `clan_id`, `cargo`, `foto`) VALUES
(105, 'Surik4to06', 'Surik4to06@g.com', '$2y$10$mFRxgaC1vnCWlhZicSiG6uyXZNseGZO/rHhdxGBv3xj9JetGM8y3e', 2, 34, 'member', '02-11-05.jpg'),
(106, 'otavio lindo', 'otavio@otavio.otavio', '$2y$10$guLf3x.DiHnxbWs885hbwOan.VcFSXoLiDd2WutpsWHRUog.97PoS', 2, 34, 'leader', '03-11-23.jpg'),
(107, 'Mostrar cla pro otavio', 'claotavio@g.com', '$2y$10$O3mjgie1J.iB1APJcqhOLOOSDCnsa4ohos5sakmixSczgFbOek1Eu', 2, 36, 'leader', '03-11-14.jpg');

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
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `abobora`
--
ALTER TABLE `abobora`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `clan`
--
ALTER TABLE `clan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_users` (`id_lider`);

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
-- Índices de tabela `rank_clan`
--
ALTER TABLE `rank_clan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abobora` (`id_abobora`),
  ADD KEY `id_rank` (`id_user`);

--
-- Índices de tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_usertype` (`id_usertype`);

--
-- Índices de tabela `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `abobora`
--
ALTER TABLE `abobora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `clan`
--
ALTER TABLE `clan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de tabela `rank_clan`
--
ALTER TABLE `rank_clan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT de tabela `usertype`
--
ALTER TABLE `usertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
