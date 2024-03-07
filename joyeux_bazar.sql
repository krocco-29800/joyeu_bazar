-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 07 mars 2024 à 09:29
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `joyeux_bazar`
--

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `jeu_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prenom` varchar(60) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `user_id`, `prenom`, `nom`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'Marc', 'la soud', '', '2024-03-06 11:36:41', '2024-03-06 11:36:41');

-- --------------------------------------------------------

--
-- Structure de la table `editeur`
--

CREATE TABLE `editeur` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `editeur`
--

INSERT INTO `editeur` (`id`, `nom`) VALUES
(1, 'Cocktail game'),
(2, 'Igari'),
(3, 'Eage'),
(4, 'Iello'),
(5, 'Asmodee'),
(6, 'Indie'),
(7, 'Repos production'),
(8, 'Don\'t panic game'),
(9, 'Filosofia'),
(10, 'infinity'),
(11, 'Seatdown'),
(12, 'Gigamic'),
(13, 'Libellud'),
(14, 'Blackplag'),
(15, 'Hurricane'),
(16, 'Spin Masters'),
(17, 'Catchup'),
(18, 'Space cowboys'),
(19, 'Old chap'),
(20, 'Cocktail game'),
(21, 'Igari'),
(22, 'Eage'),
(23, 'Iello'),
(24, 'Asmodee'),
(25, 'Indie'),
(26, 'Repos production'),
(27, 'Don\'t panic game'),
(28, 'Filosofia'),
(29, 'infinity'),
(30, 'Seatdown'),
(31, 'Gigamic'),
(32, 'Libellud'),
(33, 'Blackplag'),
(34, 'Hurricane'),
(35, 'Spin Masters'),
(36, 'Catchup'),
(37, 'Space cowboys'),
(38, 'Old chap'),
(39, 'Cocktail game'),
(40, 'Igari'),
(41, 'Eage'),
(42, 'Iello'),
(43, 'Asmodee'),
(44, 'Indie'),
(45, 'Repos production'),
(46, 'Don\'t panic game'),
(47, 'Filosofia'),
(48, 'infinity'),
(49, 'Seatdown'),
(50, 'Gigamic'),
(51, 'Libellud'),
(52, 'Blackplag'),
(53, 'Hurricane'),
(54, 'Spin Masters'),
(55, 'Catchup'),
(56, 'Space cowboys'),
(57, 'Old chap');

-- --------------------------------------------------------

--
-- Structure de la table `jeu`
--

CREATE TABLE `jeu` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `description` varchar(150) NOT NULL,
  `image` varchar(255) NOT NULL,
  `editeur_id` int(11) NOT NULL,
  `joueurs_min` int(11) NOT NULL,
  `joueurs_max` int(11) NOT NULL,
  `duree` int(11) NOT NULL,
  `age_min` int(11) NOT NULL,
  `style` varchar(60) NOT NULL,
  `difficulte` varchar(60) NOT NULL,
  `univers` varchar(60) NOT NULL,
  `mot_clef` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `jeu`
--

INSERT INTO `jeu` (`id`, `user_id`, `nom`, `description`, `image`, `editeur_id`, `joueurs_min`, `joueurs_max`, `duree`, `age_min`, `style`, `difficulte`, `univers`, `mot_clef`, `created_at`, `updated_at`) VALUES
(1, 1, 'Compatibility', '', './assets/images/Compatibility.jpg', 1, 3, 8, 30, 10, 'Equipe', 'Facile', 'Communication', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(2, 1, 'Overseems', '', ' ./assets/images/Overseems.jpg', 2, 3, 6, 30, 14, 'Compétition', 'Moyenne', 'Bluff', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(3, 1, 'Munchkin', '', ' ./assets/images/Munchkin.jpg', 3, 3, 6, 60, 12, 'Compétition', 'Moyenne', 'Fantastique / Cartes', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(5, 0, 'Exploding kittens', '', '', 5, 2, 5, 15, 7, 'Compétition', 'Très facile', 'Cartes', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(6, 0, 'Résistance', '', '', 6, 5, 10, 30, 13, 'Equipe', 'Facile', 'Rôle caché / bluff', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(7, 0, 'Mascarade', '', '', 7, 2, 13, 30, 10, 'Compétition', 'Facile', 'Rôle caché / bluff / mémoire', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(8, 0, 'Human punishment', '', '', 8, 4, 16, 45, 14, 'Equipe', 'Facile', 'Changement d\'équipe / futuriste', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(9, 0, 'Catane', '', '', 9, 3, 4, 75, 10, 'Compétition', 'Facile', 'Commerce / conquête', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(10, 0, 'Bang', '', '', 5, 3, 8, 30, 8, 'Equipe', 'Moyenne', 'Bluff / western', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(11, 0, 'Shards', '', '', 10, 2, 4, 30, 10, 'Deck build', 'Moyenne', 'Fantastique', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(12, 0, 'Magic maze', '', '', 11, 1, 8, 15, 8, 'Coopératif', 'Facile', 'Fantastique', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(13, 0, 'Galerapagos', '', '', 12, 3, 12, 20, 10, 'Coopérapute', 'Facile', 'Survie', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(14, 0, 'Alchimist', '', '', 4, 2, 4, 120, 13, 'Compétition', 'Difficile', 'Fantastique', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(15, 0, 'Dixit', '', '', 13, 3, 12, 30, 8, 'Compétition', 'Très facile', 'Narration / Fantastique', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(16, 0, 'Zombicide', '', '', 14, 1, 6, 60, 14, 'Coopératif', 'Moyenne', 'Survie', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(17, 0, 'Mr Jack Pocket', '', '', 15, 2, 2, 15, 12, 'Duel', 'Facile', 'Enquête', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(18, 0, 'Santorini', '', '', 16, 3, 4, 20, 8, 'Duel', 'Très facile', 'Fantastique', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(19, 0, 'Sobek', '', '', 17, 2, 2, 20, 10, 'Duel', 'Facile', 'Commerce', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(20, 0, 'Splandor', '', '', 18, 2, 2, 30, 10, 'Duel', 'Facile', 'Construction', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(21, 0, '7 Wonders duel', '', '', 7, 2, 2, 30, 10, 'Duel', 'Moyenne', 'Construction / draft', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(22, 0, 'Acropolis', '', '', 12, 1, 4, 25, 8, 'Compétition', 'Facile', 'Construction / tuiles', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(23, 0, 'The crew', '', '', 4, 3, 5, 20, 10, 'Coopératif', 'Facile', 'Futuriste / cartes', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22'),
(24, 0, 'Fiesta de los muertos', '', '', 19, 4, 8, 15, 12, 'Coopératif', 'Très facile', 'Communication / drôle', '', '2024-03-06 11:45:22', '2024-03-06 11:45:22');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `roles` varchar(120) NOT NULL DEFAULT '[]',
  `registered_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `roles`, `registered_at`) VALUES
(1, 'marc.lesoudier@gmail.com', '$2y$10$R9L.T3JpH861RjaziU7KPOkepcJiGQvmKbGF7A34358A.NXsjLfra', '[\"ROLE_ADMIN\",\"ROLE_MEMBER\"]', '2024-03-06 11:36:41');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_jeu_id` (`jeu_id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_contact_user_id` (`user_id`);

--
-- Index pour la table `editeur`
--
ALTER TABLE `editeur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jeu`
--
ALTER TABLE `jeu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`),
  ADD KEY `fk_editeur_id` (`editeur_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `editeur`
--
ALTER TABLE `editeur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `jeu`
--
ALTER TABLE `jeu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_jeu_id` FOREIGN KEY (`jeu_id`) REFERENCES `jeu` (`id`);

--
-- Contraintes pour la table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `fk_contact_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `jeu`
--
ALTER TABLE `jeu`
  ADD CONSTRAINT `fk_editeur_id` FOREIGN KEY (`editeur_id`) REFERENCES `editeur` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
