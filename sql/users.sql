-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 29 Novembre 2019 à 16:54
-- Version du serveur :  5.7.28-0ubuntu0.16.04.2
-- Version de PHP :  7.0.33-0ubuntu0.16.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `idusers` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8_estonian_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_estonian_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_estonian_ci NOT NULL,
  `firstname` varchar(45) COLLATE utf8_estonian_ci NOT NULL,
  `lastname` varchar(45) COLLATE utf8_estonian_ci NOT NULL,
  `bio` text COLLATE utf8_estonian_ci,
  `created_date` datetime DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `role` varchar(25) COLLATE utf8_estonian_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_estonian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`idusers`, `username`, `email`, `password`, `firstname`, `lastname`, `bio`, `created_date`, `last_login_date`, `role`, `avatar`) VALUES
(2, 'azeaze', 'azaze@gmail.com', 'eeeeee', 'zaz', 'zaz', '', NULL, NULL, 'role_admin', NULL),
(5, 'vvvvvvfv', 'deeeeeeee@gmail.com', 'vvvvvv', 'zaz', 'zaz', '', '2019-11-28 16:29:52', NULL, 'role_admin', NULL),
(6, 'vvvvvvfvf', 'deeeedeeee@gmail.com', 'vvvvvv', 'zaz', 'zaz', '', '2019-11-28 00:00:00', NULL, 'role_admin', NULL),
(7, 'vvvvvvfvfa', 'deeeedeeeea@gmail.com', 'aaaaaa', 'zaz', 'zaz', '', '2019-11-28 00:00:00', NULL, 'role_autor', NULL),
(21, '3wa', 'lazeazoeajea@gmail.com', 'eeeeee', 'azeazeaze', 'azeazeaze', '', '2019-11-29 10:43:31', NULL, 'role_admin', NULL),
(32, 'boule', 'zaeazeknsd@gmail.com', 'eeeeeee', 'aaaa', 'aaaaa', '', '2019-11-29 12:10:07', NULL, 'role_admin', NULL),
(33, 'boulette', 'zaeazeksnsd@gmail.com', '$2y$10$IUNVZ25SBDL8gvmO4kg0rO5NFPgS9ldmKPpeL5BqNN/LtIsXFVPuu', 'aaaa', 'aaaaa', '', '2019-11-29 12:11:25', NULL, 'role_admin', NULL),
(34, 'ouioui', 'ouioui@gmail.com', '$2y$10$T1DIGZL3EvtX6N1ipRLELOh5tESkF3O5XKdkbtO.I3Tg1SrTIFnLG', 'oui', 'non', '', '2019-11-29 14:15:20', NULL, 'role_admin', NULL),
(35, 'longduzboub', 'zboub@hotmail.fr', '$2y$10$nF/F0CzRFdr/w3S9q.t/6utLvmsxg7L3qhB5R2qhdN4xaan.KIIB2', 'zboubi', 'zboubo', '', '2019-11-29 14:20:10', NULL, 'role_admin', NULL),
(36, 'fab', 'fab@fab.fr', '$2y$10$Rux4AbLQTYsftRZ6mhPpQOXkam.PGvb8qNsznQ/./G.n4iwHUP3ji', 'ghfghf', 'htfghf', '', '2019-11-29 14:35:50', NULL, 'role_admin', NULL),
(37, 'azeazeaze', 'e@hotmail.fr', '$2y$10$PnijBDOnuGlNJnuPWLtKHe8yTgYfYAFoJ1sMMdhe/3vYJqyaky2fm', 'zz', 'eee', '', '2019-11-29 14:40:32', NULL, 'role_admin', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idusers`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `idusers` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
