-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 07 mars 2024 à 16:58
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `citations`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

DROP TABLE IF EXISTS `auteur`;
CREATE TABLE IF NOT EXISTS `auteur` (
  `id_auteur` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(70) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_auteur`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`id_auteur`, `nom`, `date_start`, `date_end`, `photo`) VALUES
(1, 'Nietzsche', '1844-10-15', '1900-08-25', 'nietzsche.jfif'),
(2, 'Schopenhauer', '1788-02-22', '1860-09-21', 'schopenhauer.jfif'),
(3, 'Marc-Aurèle', '0121-04-26', '180-03-17', 'marc_aurele.jpg'),
(4, 'Pascal', '1623-06-19', '1662-08-19', 'pascal.jfif'),
(5, 'Platon', '0000-00-00', '-348-04-07', 'platon.jfif'),
(6, 'Aristote', '0000-00-00', '-322-04-07', 'aristote.jfif'),
(7, 'Epictète', '2050-01-01', '135-01-01', 'epictete.jfif'),
(8, 'Spinoza', '1632-11-24', '1677-02-21', 'spinoza.jfif'),
(9, 'Socrate', '0000-00-00', '-399-03-10', 'socrate.jpg'),
(10, 'Descartes', '1596-03-31', '1650-02-11', 'descartes.jpg'),
(11, 'Kant', '1724-04-22', '1804-02-12', 'kant.jpg'),
(12, 'Rousseau', '1712-06-28', '1778-07-02', 'rousseau.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `auteur_nationnalité`
--

DROP TABLE IF EXISTS `auteur_nationnalité`;
CREATE TABLE IF NOT EXISTS `auteur_nationnalité` (
  `id_auteur` int NOT NULL,
  `id_nationalité` int NOT NULL,
  PRIMARY KEY (`id_auteur`,`id_nationalité`),
  KEY `id_nationalité` (`id_nationalité`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auteur_nationnalité`
--

INSERT INTO `auteur_nationnalité` (`id_auteur`, `id_nationalité`) VALUES
(1, 1),
(2, 1),
(8, 1),
(11, 1),
(3, 2),
(4, 3),
(10, 3),
(12, 3),
(5, 4),
(6, 4),
(7, 4),
(9, 4);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categorie` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom`) VALUES
(1, 'Philosophie'),
(2, 'Littérature');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_citation`
--

DROP TABLE IF EXISTS `categorie_citation`;
CREATE TABLE IF NOT EXISTS `categorie_citation` (
  `id_citations` int NOT NULL,
  `id_categorie` int NOT NULL,
  PRIMARY KEY (`id_citations`,`id_categorie`),
  KEY `id_categorie` (`id_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categorie_citation`
--

INSERT INTO `categorie_citation` (`id_citations`, `id_categorie`) VALUES
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1);

-- --------------------------------------------------------

--
-- Structure de la table `citations`
--

DROP TABLE IF EXISTS `citations`;
CREATE TABLE IF NOT EXISTS `citations` (
  `id_citations` int NOT NULL AUTO_INCREMENT,
  `citation` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `année` date DEFAULT NULL,
  `id_auteur` int DEFAULT NULL,
  PRIMARY KEY (`id_citations`),
  KEY `id_auteur` (`id_auteur`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `citations`
--

INSERT INTO `citations` (`id_citations`, `citation`, `année`, `id_auteur`) VALUES
(41, 'Ce qui ne me tue pas me rend plus fort.', '1889-01-01', 1),
(42, 'Dieu est mort.', '1882-01-01', 1),
(43, 'Devient ce que tu es.', '1883-01-01', 1),
(44, 'L\'homme est quelque chose qui doit être dépassé.', '1886-01-01', 1),
(45, 'La vie est une affaire trop sérieuse pour être confiée à des adultes.', '1846-01-01', 2),
(46, 'Le bonheur n\'est pas chose aisée : il est très difficile de le trouver en nous, il est impossible de le trouver ailleurs.', '1851-01-01', 2),
(47, 'La vie est une longue préparation à être un jour un homme vraiment utile.', '1851-01-01', 2),
(48, 'La vie est une lutte et une marche.', '0180-03-17', 3),
(49, 'Ne te laisse pas emporter par le passé, ne te laisse pas distraire par l\'avenir ; concentre ton esprit sur le moment présent.', NULL, 3),
(50, 'Tout est éphémère - ce qui utilise bien le temps est éternel.', NULL, 3),
(51, 'Le silence éternel de ces espaces infinis m\'effraie.', NULL, 4),
(52, 'Le cœur a ses raisons que la raison ne connaît point.', NULL, 4),
(53, 'L\'homme n\'est qu\'\'un roseau, le plus faible de la nature, mais c\'est un roseau pensant.', NULL, 4),
(54, 'Connais-toi toi-même.', NULL, 9),
(55, 'Je pense, donc je suis.', '1637-01-01', 10),
(56, 'Agis de telle sorte que la maxime de ton action puisse être érigée en loi universelle.', NULL, 11),
(57, 'L\'homme est né libre, et partout il est dans les fers.', '1762-01-01', 12),
(58, 'La raison est la seule chose qui rend l\'homme libre.', NULL, 11),
(59, 'Le doute est le commencement de la sagesse.', NULL, 12),
(60, 'L\'éducation consiste à apprendre à se passer des choses superflues.', NULL, 12);

-- --------------------------------------------------------

--
-- Structure de la table `droits`
--

DROP TABLE IF EXISTS `droits`;
CREATE TABLE IF NOT EXISTS `droits` (
  `id_droit` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_droit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `nationalité`
--

DROP TABLE IF EXISTS `nationalité`;
CREATE TABLE IF NOT EXISTS `nationalité` (
  `id_nationalité` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_nationalité`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `nationalité`
--

INSERT INTO `nationalité` (`id_nationalité`, `nom`) VALUES
(1, 'Allemande'),
(2, 'Romaine'),
(3, 'Française'),
(4, 'Grecque');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `mail` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `motdepasse` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `nom_compte` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `droits_compte` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `id_droit` int NOT NULL,
  PRIMARY KEY (`id_utilisateur`),
  KEY `id_droit` (`id_droit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auteur_nationnalité`
--
ALTER TABLE `auteur_nationnalité`
  ADD CONSTRAINT `auteur_nationnalité_ibfk_1` FOREIGN KEY (`id_auteur`) REFERENCES `auteur` (`id_auteur`),
  ADD CONSTRAINT `auteur_nationnalité_ibfk_2` FOREIGN KEY (`id_nationalité`) REFERENCES `nationalité` (`id_nationalité`);

--
-- Contraintes pour la table `categorie_citation`
--
ALTER TABLE `categorie_citation`
  ADD CONSTRAINT `categorie_citation_ibfk_1` FOREIGN KEY (`id_citations`) REFERENCES `citations` (`id_citations`),
  ADD CONSTRAINT `categorie_citation_ibfk_2` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`);

--
-- Contraintes pour la table `citations`
--
ALTER TABLE `citations`
  ADD CONSTRAINT `citations_ibfk_1` FOREIGN KEY (`id_auteur`) REFERENCES `auteur` (`id_auteur`);

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_ibfk_1` FOREIGN KEY (`id_droit`) REFERENCES `droits` (`id_droit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
