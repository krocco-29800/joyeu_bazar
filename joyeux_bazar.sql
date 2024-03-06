-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 06 mars 2024 à 08:07
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

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
  `jeu_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 5,
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
  `prenom` varchar(35) NOT NULL,
  `nom` varchar(55) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(19, 'Old chap');

-- --------------------------------------------------------

--
-- Structure de la table `jeu`
--

CREATE TABLE `jeu` (
  `id` int(11) NOT NULL,
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
  `mot_clef` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `jeu`
--

INSERT INTO `jeu` (`id`, `nom`, `description`, `image`, `editeur_id`, `joueurs_min`, `joueurs_max`, `duree`, `age_min`, `style`, `difficulte`, `univers`, `mot_clef`) VALUES
(1, 'Compatibility', '', '', 1, 3, 8, 30, 10, 'Equipe', 'Facile', 'Communication', NULL),
(2, 'Overseems', '', '', 2, 3, 6, 30, 14, 'Compétition', 'Moyenne', 'Bluff', NULL),
(3, 'Munchkin', '', '', 3, 3, 6, 60, 12, 'Compétition', 'Moyenne', 'Fantastique / Cartes', NULL),
(4, 'Time bomb', '', '', 4, 4, 8, 15, 8, 'Equipe', 'Facile', 'Rôle caché / bluff', NULL),
(5, 'Exploding kittens', '', '', 5, 2, 5, 15, 7, 'Compétition', 'Très facile', 'Cartes', NULL),
(6, 'Résistance', '', '', 6, 5, 10, 30, 13, 'Equipe', 'Facile', 'Rôle caché / bluff', NULL),
(7, 'Mascarade', '', '', 7, 2, 13, 30, 10, 'Compétition', 'Facile', 'Rôle caché / bluff / mémoire', NULL),
(8, 'Human punishment', '', '', 8, 4, 16, 45, 14, 'Equipe', 'Facile', 'Changement d\'équipe / futuriste', NULL),
(9, 'Catane', '', '', 9, 3, 4, 75, 10, 'Compétition', 'Facile', 'Commerce / conquête', NULL),
(10, 'Bang', '', '', 5, 3, 8, 30, 8, 'Equipe', 'Moyenne', 'Bluff / western', NULL),
(11, 'Shards', '', '', 10, 2, 4, 30, 10, 'Deck build', 'Moyenne', 'Fantastique', NULL),
(12, 'Magic maze', '', '', 11, 1, 8, 15, 8, 'Coopératif', 'Facile', 'Fantastique', NULL),
(13, 'Galerapagos', '', '', 12, 3, 12, 20, 10, 'Coopérapute', 'Facile', 'Survie', NULL),
(14, 'Alchimist', '', '', 4, 2, 4, 120, 13, 'Compétition', 'Difficile', 'Fantastique', NULL),
(15, 'Dixit', '', '', 13, 3, 12, 30, 8, 'Compétition', 'Très facile', 'Narration / Fantastique', NULL),
(16, 'Zombicide', '', '', 14, 1, 6, 60, 14, 'Coopératif', 'Moyenne', 'Survie', NULL),
(17, 'Mr Jack Pocket', '', '', 15, 2, 2, 15, 12, 'Duel', 'Facile', 'Enquête', NULL),
(18, 'Santorini', '', '', 16, 3, 4, 20, 8, 'Duel', 'Très facile', 'Fantastique', NULL),
(19, 'Sobek', '', '', 17, 2, 2, 20, 10, 'Duel', 'Facile', 'Commerce', NULL),
(20, 'Splandor', '', '', 18, 2, 2, 30, 10, 'Duel', 'Facile', 'Construction', NULL),
(21, '7 Wonders duel', '', '', 7, 2, 2, 30, 10, 'Duel', 'Moyenne', 'Construction / draft', NULL),
(22, 'Acropolis', '', '', 12, 1, 4, 25, 8, 'Compétition', 'Facile', 'Construction / tuiles', NULL),
(23, 'The crew', '', '', 4, 3, 5, 20, 10, 'Coopératif', 'Facile', 'Futuriste / cartes', NULL),
(24, 'Fiesta de los muertos', '', '', 19, 4, 8, 15, 12, 'Coopératif', 'Très facile', 'Communication / drôle', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `jeu_user`
--

CREATE TABLE `jeu_user` (
  `id` int(11) NOT NULL,
  `jeu_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` int(11) NOT NULL,
  `possede` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `roles` varchar(120) NOT NULL DEFAULT '[]',
  `registered_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comment_jeu` (`jeu_id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD KEY `fk_contact_user` (`user_id`);

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
  ADD KEY `fk_jeu_editeur` (`editeur_id`);

--
-- Index pour la table `jeu_user`
--
ALTER TABLE `jeu_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_jeu_user_jeu` (`jeu_id`),
  ADD KEY `fk_jeu_user_user` (`user_id`);

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
-- AUTO_INCREMENT pour la table `editeur`
--
ALTER TABLE `editeur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `jeu`
--
ALTER TABLE `jeu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `jeu_user`
--
ALTER TABLE `jeu_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_comment_jeu` FOREIGN KEY (`jeu_id`) REFERENCES `jeu` (`id`);

--
-- Contraintes pour la table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `fk_contact_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `jeu`
--
ALTER TABLE `jeu`
  ADD CONSTRAINT `fk_jeu_editeur` FOREIGN KEY (`editeur_id`) REFERENCES `editeur` (`id`);

--
-- Contraintes pour la table `jeu_user`
--
ALTER TABLE `jeu_user`
  ADD CONSTRAINT `fk_jeu_user_jeu` FOREIGN KEY (`jeu_id`) REFERENCES `jeu` (`id`),
  ADD CONSTRAINT `fk_jeu_user_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
