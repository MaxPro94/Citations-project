-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 10 mars 2024 à 15:26
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
  `nom` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prenom` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_start` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_end` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_auteur`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`id_auteur`, `nom`, `prenom`, `description`, `date_start`, `date_end`, `photo`) VALUES
(1, 'Nietzsche', 'Friedrich Wilhelm', 'Friedrich Wilhelm Nietzsche (1844-1900) était un philosophe allemand dont les travaux portent principalement sur la culture, la philosophie, la science et la critique de la religion. Il est célèbre pour ses idées sur la volonté de puissance, l\'éternel retour et la mort de Dieu. Nietzsche est considéré comme l\'un des philosophes les plus influents de l\'ère moderne.', '1844', '1900', 'assets/img/nietzsche.jfif'),
(2, 'Schopenhauer', 'Arthur', 'Arthur Schopenhauer (1788-1860) était un philosophe allemand reconnu pour son pessimisme et son œuvre majeure \"Le Monde comme Volonté et comme Représentation\". Il était un penseur majeur dans la tradition philosophique allemande et a influencé de nombreux autres penseurs, notamment Nietzsche.', '1788', '1860', 'assets/img/schopenhauer.jfif'),
(3, 'Marc-Aurèle', 'Marcus Aurelius', 'Marcus Aurelius (121-180) était un empereur romain stoïcien, connu pour ses \"Pensées pour moi-même\", un recueil de réflexions sur la philosophie stoïcienne. Son règne est souvent considéré comme la fin de la période de prospérité de l\'Empire romain.', '121', '180', 'assets/img/marc_aurele.jfif'),
(4, 'Pascal', 'Blaise', 'Blaise Pascal (1623-1662) était un mathématicien, physicien, inventeur, philosophe, moraliste et théologien français, célèbre pour ses travaux en sciences et sa \"Pensées\". Il est connu pour sa contribution au calcul des probabilités et à la géométrie projective, ainsi que pour ses écrits sur la religion et la philosophie.', '1623', '1662', 'assets/img/pascal.jfif'),
(5, 'Platon', 'Platon', 'Platon (427-348 av. J.-C.) était un philosophe grec antique, élève de Socrate et fondateur de l\'Académie d\'Athènes. Il est considéré comme l\'un des plus grands penseurs de l\'histoire occidentale et est célèbre pour ses dialogues philosophiques, tels que \"La République\" et \"Le Banquet\".', '428', '348', 'assets/img/platon.jfif'),
(6, 'Aristote', 'Aristote', 'Aristote (384-322 av. J.-C.) était un philosophe grec antique, élève de Platon et précepteur d\'Alexandre le Grand. Il est connu pour ses contributions à de nombreux domaines, notamment la logique, la métaphysique et la politique. Son œuvre a eu une influence immense sur la philosophie occidentale.', '-384', '-322av JC', 'assets/img/aristote.jfif'),
(7, 'Epictète', 'Benoît', 'Épictète (50-135) était un philosophe stoïcien d\'origine phrygienne, connu pour son \"Manuel\" qui enseigne une éthique de vie en accord avec la nature. Il est célèbre pour son enseignement sur le contrôle de soi, la résilience et la sagesse.', '50', '135', 'assets/img/epictete.jfif'),
(8, 'Spinoza', 'Baruch', 'Baruch Spinoza (1632-1677) était un philosophe néerlandais de la période post-médiévale, connu pour son ouvrage majeur \"Éthique\" et sa conception moniste de Dieu et de la nature. Il est souvent considéré comme l\'un des philosophes les plus importants de l\'ère moderne.', '1632', '1677', 'assets/img/spinoza.jpg'),
(9, 'Socrate', 'Socrate', 'Socrate (470-399 av. J.-C.) était un philosophe grec classique considéré comme l\'un des pères fondateurs de la philosophie occidentale. Il est célèbre pour sa méthode d\'enseignement basée sur le questionnement, connue sous le nom de \"méthode socratique\", qui encourageait la discussion et la réflexion.', '-470', '-399av JC', 'assets/img/socrate.jpg'),
(10, 'Descartes', 'René', 'René Descartes (1596-1650) était un philosophe, mathématicien et scientifique français du 17ème siècle, considéré comme l\'un des pères fondateurs de la philosophie moderne et de la rationalisme. Il est célèbre pour sa phrase \"Cogito, ergo sum\" (\"Je pense, donc je suis\") et sa méthode de doute cartésien.', '1596', '1650', 'assets/img/descartes.jpg'),
(11, 'Kant', 'Immanuel', 'Immanuel Kant (1724-1804) était un philosophe allemand de l\'ère des Lumières, célèbre pour ses contributions à la métaphysique, à l\'épistémologie et à la philosophie morale, notamment avec son ouvrage \"Critique de la raison pure\".', '1724', '1804', 'assets/img/kant.jpg'),
(12, 'Rousseau', 'Jean-Jacques', 'Jean-Jacques Rousseau (1712-1778) était un philosophe, écrivain et compositeur genevois du 18ème siècle, célèbre pour ses idées sur la démocratie directe et ses écrits politiques comme \"Le Contrat social\".', '1712', '1778', 'assets/img/rousseau.jpg');

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
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
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
  `citation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `année` date DEFAULT NULL,
  `id_auteur` int DEFAULT NULL,
  PRIMARY KEY (`id_citations`),
  KEY `id_auteur` (`id_auteur`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(60, 'L\'éducation consiste à apprendre à se passer des choses superflues.', NULL, 12),
(61, 'La vie sans musique est tout simplement une erreur, une fatigue, un exil.', '1889-01-01', 1),
(62, 'Quand on regarde longtemps dans un abîme, l\'abîme regarde aussi dans l\'âme.', '1886-01-01', 1),
(63, 'Le monde est profond - et plus haut que dans le jour peut comprendre votre sagesse.', '1883-01-01', 1),
(64, 'L\'homme est une corde, tendue entre la bête et le surhomme - une corde au-dessus d\'un abîme.', '1883-01-01', 1),
(65, 'Il y a toujours un peu de folie dans l\'amour, mais il y a toujours un peu de raison dans la folie.', '1887-01-01', 1),
(66, 'Ce qui est fait par amour est bien fait, même si ce n\'est pas bien fait.', '1887-01-01', 1),
(67, 'Je ne sais pas ce que l\'avenir nous réserve, mais je sais que je ne veux pas devenir ce que les autres attendent de moi.', '1886-01-01', 1),
(68, 'La morale est la meilleure des alliées des impuissants.', '1886-01-01', 1),
(69, 'Toute grande pensée est intuitive.', '1885-01-01', 1),
(70, 'Celui qui combat les monstres doit prendre garde de ne pas devenir lui-même un monstre.', '1886-01-01', 1),
(71, 'La vie est une longue préparation à de bonnes-byes.', '1851-01-01', 2),
(72, 'Le bonheur est une illusion, le malheur est une illusion.', '1819-01-01', 2),
(73, 'La santé est pas tout, mais sans santé, tout le reste est rien.', '1819-01-01', 2),
(74, 'L\'intelligence est le seul élément qui fait la différence entre l\'homme et l\'animal.', '1819-01-01', 2),
(75, 'La vie est un mal à supporter ou un bien à perdre.', '1819-01-01', 2),
(76, 'La plupart des hommes, dans l’action comme dans la pensée, se laissent guider par l’exemple d’autrui et par l’imitation.', '1819-01-01', 2),
(77, 'La solitude est l\'aspect le plus terrible de la vie humaine.', '1819-01-01', 2),
(78, 'La vie est une tâche qui doit être accomplie.', '1819-01-01', 2),
(79, 'La solitude est la destinée de tout grand esprit.', '1819-01-01', 2),
(80, 'La philosophie ne repose pas sur les lois de la nature, mais sur l\'intuition.', '1819-01-01', 2),
(81, 'N\'attendez pas que la vie soit juste, selon vous. Acceptez-la telle qu\'elle est.', '0180-01-01', 3),
(82, 'La vraie grandeur consiste à être ce que vous êtes. Ne prétendez pas être autre chose que ce que vous êtes.', '0180-01-01', 3),
(83, 'L\'obstacle est le chemin.', '0180-01-01', 3),
(84, 'Choisissez non pas de vivre longtemps, mais de vivre pleinement.', '0180-01-01', 3),
(85, 'Ne vous laissez pas emporter par votre imagination, ne vous laissez pas emporter non plus par votre raison.', '0180-01-01', 3),
(86, 'La vertu est la seule chose qui ne puisse être retirée de nous.', '0180-01-01', 3),
(87, 'Si tu es distrait, chaque objet te fera du mal.', '0180-01-01', 3),
(88, 'L\'âme devient teinte de la couleur de ses pensées.', '0180-01-01', 3),
(89, 'Si vous vivez au jour le jour, vous pouvez lutter contre le désespoir et la crainte.', '0180-01-01', 3),
(90, 'Ne pas céder à la colère, c\'est une grande force.', '0180-01-01', 3),
(91, 'L\'homme n\'est qu\'un roseau, le plus faible de la nature; mais c\'est un roseau pensant.', '1654-01-01', 4),
(92, 'Le cœur a ses raisons, que la raison ne connaît point.', '1670-01-01', 4),
(93, 'La vraie éloquence consiste à dire tout ce qu\'il faut, et à ne dire que ce qu\'il faut.', '1654-01-01', 4),
(94, 'Tout le malheur des hommes vient d\'une seule chose, qui est de ne pas savoir demeurer en repos, dans une chambre.', '1654-01-01', 4),
(95, 'L\'homme passe infiniment l\'homme.', '1654-01-01', 4),
(96, 'La justice sans la force est impuissante; la force sans la justice est tyrannique.', '1654-01-01', 4),
(97, 'La coutume est une seconde nature, qui détruit la première. Mais ce que nous appelons hasard est peut-être la raison suprême, laquelle ordonne tout secrètement.', '1654-01-01', 4),
(98, 'Le moi est haïssable.', '1654-01-01', 4),
(99, 'Tout le malheur des hommes vient d\'une seule chose, qui est de ne pas savoir demeurer en repos, dans une chambre.', '1654-01-01', 4),
(100, 'Rien ne nous révolte plus que de voir et d\'entendre un homme qui se flatte de n\'avoir point d\'autre talent que celui de bien vivre.', '1654-01-01', 4),
(101, 'La plus grande des gloires n\'est pas de ne jamais tomber, mais de se relever à chaque chute.', '0000-00-00', 5),
(102, 'L\'ignorant affirme, le savant doute, le sage réfléchit.', '0000-00-00', 5),
(103, 'L\'homme est la mesure de toute chose.', '0000-00-00', 5),
(104, 'La démocratie conduit inévitablement à une forme de démagogie puis à l\'anarchie.', '0000-00-00', 5),
(105, 'Rien ne résiste à la force de l\'habitude.', '0000-00-00', 5),
(106, 'La pire des tyrannies est celle qui se pare des habits de la liberté.', '0000-00-00', 5),
(107, 'L\'homme, quand il est jeune, doit éduquer son âme ; lorsqu\'il est vieux, il doit s\'appliquer à la nourrir.', '0000-00-00', 5),
(108, 'Le plus grand bien que vous puissiez faire à un enfant est de l\'exercer à s\'habituer à supporter des choses difficiles.', '0000-00-00', 5),
(109, 'La vérité est le chemin vers la liberté.', '0000-00-00', 5),
(110, 'Le commencement est la partie la plus importante du travail.', '0000-00-00', 5),
(111, 'La vertu est une disposition à agir selon la raison.', '0000-00-00', 6),
(112, 'La colère est une courte folie.', '0000-00-00', 6),
(113, 'La différence entre l\'impossible et le possible réside dans la détermination.', '0000-00-00', 6),
(114, 'La nature n\'a rien créé de superflu.', '0000-00-00', 6),
(115, 'L\'éducation est l\'ornement dans la prospérité et un refuge dans l\'adversité.', '0000-00-00', 6),
(116, 'La sagesse est la connaissance des causes.', '0000-00-00', 6),
(117, 'La musique adoucit les mœurs.', '0000-00-00', 6),
(118, 'La critique est facile, mais l\'art est difficile.', '0000-00-00', 6),
(119, 'La connaissance de soi-même est le commencement de toute sagesse.', '0000-00-00', 6),
(120, 'Le bonheur dépend de l\'âme.', '0000-00-00', 6),
(121, 'Le bonheur est une disposition de l\'âme, et non une condition extérieure.', '0000-00-00', 7),
(122, 'Ce qui trouble les hommes, ce ne sont pas les choses, mais les jugements qu\'ils portent sur les choses.', '0000-00-00', 7),
(123, 'Ne cherche pas à ce que les événements arrivent comme tu le veux, mais veuille que les événements arrivent comme ils arrivent, et tu seras heureux.', '0000-00-00', 7),
(124, 'Ce qui dépend de nous et ce qui ne dépend pas de nous, ce qui est à nous et ce qui n\'est pas à nous.', '0000-00-00', 7),
(125, 'Ce qui t\'appartient, c\'est la maîtrise de la volonté; ne cherche donc pas à vouloir ce qui ne dépend pas de toi.', '0000-00-00', 7),
(126, 'La plus grande liberté, c\'est de ne pas être esclave de soi-même.', '0000-00-00', 7),
(127, 'Se libérer de toutes les passions, c\'est s\'affranchir de toutes les servitudes.', '0000-00-00', 7),
(128, 'Ce qui trouble les hommes, ce ne sont pas les choses, mais les jugements qu\'ils portent sur les choses.', '0000-00-00', 7),
(129, 'Il n\'y a pas de malheur dans le monde, il n\'y a que des opinions sur le malheur.', '0000-00-00', 7),
(130, 'Ne dis pas que les choses sont mauvaises parce qu\'elles te sont désagréables.', '0000-00-00', 7),
(131, 'L\'homme n\'est pas un empire dans un empire.', '0000-00-00', 8),
(132, 'Le but de l\'État est la liberté.', '0000-00-00', 8),
(133, 'L\'amour de Dieu ne consiste pas à aimer Dieu dans la mesure où nous l\'aimons, mais dans la mesure où il peut être aimé de chacun de nous.', '0000-00-00', 8),
(134, 'Il n\'y a rien de plus utile à l\'homme que l\'homme.', '0000-00-00', 8),
(135, 'Tout ce qui est vraiment grand et excellent est en soi une cause de joie.', '0000-00-00', 8),
(136, 'La paix n\'est pas l\'absence de guerre, mais une vertu, un état d\'esprit, une volonté de bienveillance, de confiance, de justice.', '0000-00-00', 8),
(137, 'Il ne faut pas pleurer sur les choses qui n\'ont pas été faites, mais plutôt se réjouir de celles qui l\'ont été.', '0000-00-00', 8),
(138, 'Il n\'y a rien de bon ni de mauvais en soi, mais c\'est notre pensée qui le rend ainsi.', '0000-00-00', 8),
(139, 'La liberté est conçue non pas comme un bien extérieur, mais comme la vertu même de l\'âme.', '0000-00-00', 8),
(140, 'La béatitude n\'est pas la récompense de la vertu, mais la vertu elle-même.', '0000-00-00', 8),
(141, 'Connais-toi toi-même.', '0000-00-00', 9),
(142, 'Je sais que je ne sais rien.', '0000-00-00', 9),
(143, 'La vie non examinée ne vaut pas la peine d\'être vécue.', '0000-00-00', 9),
(144, 'Le secret du bonheur est de voir chaque fin comme un début.', '0000-00-00', 9),
(145, 'Un homme sage parle parce qu\'il a quelque chose à dire ; un imbécile parce qu\'il doit dire quelque chose.', '0000-00-00', 9),
(146, 'La vraie sagesse vient de savoir que vous ne savez rien.', '0000-00-00', 9),
(147, 'Il est préférable de changer son esprit plutôt que le monde entier.', '0000-00-00', 9),
(148, 'Les hommes mauvais vivent pour manger, tandis que les hommes bons mangent pour vivre.', '0000-00-00', 9),
(149, 'Je ne sais qu\'une chose : c\'est que je ne sais rien.', '0000-00-00', 9),
(150, 'La vraie sagesse réside dans la reconnaissance de l\'ignorance.', '0000-00-00', 9),
(152, 'Le doute est le commencement de la sagesse.', '0000-00-00', 10),
(153, 'Il n\'est rien au monde d\'aussi étrange et d\'aussi difficile à réussir que de continuer à voir.', '0000-00-00', 10),
(154, 'Diviser chaque difficulté en autant de parties qu\'il est possible et nécessaire pour la résoudre.', '0000-00-00', 10),
(155, 'La lecture de tous les bons livres est comme une conversation avec les plus honnêtes gens des siècles passés.', '0000-00-00', 10),
(156, 'La meilleure preuve de la justesse de notre jugement est de pouvoir supporter les jugements contraires.', '0000-00-00', 10),
(157, 'Il est bon de conserver l\'esprit tranquille et détaché, comme s\'il nous était permis de jouer à ce jeu du monde, sans être trop attachés à aucun de ses événements.', '0000-00-00', 10),
(158, 'Cherchez toujours, et ne vous fiez jamais à votre propre jugement.', '0000-00-00', 10),
(159, 'Le plus grand avantage de la conversation est d\'apprendre à discerner l\'opinion des autres et à discerner nos propres erreurs.', '0000-00-00', 10),
(160, 'La raison est la seule chose qui nous rend vraiment humains et qui nous distingue des animaux.', '0000-00-00', 10),
(161, 'L\'homme est l\'unique animal qui doit être éduqué.', '0000-00-00', 11),
(162, 'Agis de telle sorte que la maxime de ta volonté puisse toujours valoir en même temps comme principe d\'une législation universelle.', '0000-00-00', 11),
(163, 'L\'homme est la seule créature qui doit être éduquée.', '0000-00-00', 11),
(164, 'Il n\'y a rien de plus dangereux que la raison sans la foi.', '0000-00-00', 11),
(165, 'La moralité n\'est pas la doctrine des actions, mais des motivations qui déterminent ces actions.', '0000-00-00', 11),
(166, 'L\'expérience sans la théorie est aveugle, mais la théorie sans l\'expérience est seulement intellectuelle.', '0000-00-00', 11),
(167, 'La justice est le premier devoir envers les autres, et la charité envers nous-mêmes.', '0000-00-00', 11),
(168, 'Aie le courage de te servir de ton propre entendement.', '0000-00-00', 11),
(169, 'La seule chose qui puisse nous consoler de nos misères est l\'amour de la vérité et la volonté de la chercher.', '0000-00-00', 11),
(170, 'Nous sommes des êtres raisonnables, nous sommes aussi des êtres moraux.', '0000-00-00', 11),
(171, 'L\'homme est né libre, et partout il est dans les fers.', '0000-00-00', 12),
(172, 'La liberté est le droit de faire tout ce que les lois permettent.', '0000-00-00', 12),
(173, 'La nature ne fait rien en vain.', '0000-00-00', 12),
(174, 'L\'homme est naturellement bon, c\'est la société qui le corrompt.', '0000-00-00', 12),
(175, 'La propriété est le plus sacré de tous les droits et le plus inviolable des pactes.', '0000-00-00', 12),
(176, 'La plus belle règle de conduite est de rendre les autres heureux.', '0000-00-00', 12),
(177, 'Le monde de la réalité a ses limites ; le monde de l\'imagination est sans frontières.', '0000-00-00', 12),
(178, 'On n\'est pas le maître du bien qu\'on aime.', '0000-00-00', 12),
(179, 'La première loi de la nature est de veiller à sa propre conservation.', '0000-00-00', 12),
(180, 'Le premier homme qui, ayant enclos un terrain, s\'avisa de dire : Ceci est à moi, et trouva des gens assez simples pour le croire, fut le vrai fondateur de la société civile.', '0000-00-00', 12),
(181, 'Celui qui a un pourquoi pour vivre peut supporter presque n\'importe comment.', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `droits`
--

DROP TABLE IF EXISTS `droits`;
CREATE TABLE IF NOT EXISTS `droits` (
  `id_droit` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_droit`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `droits`
--

INSERT INTO `droits` (`id_droit`, `name`) VALUES
(1, 'L\'empereur'),
(2, 'Le peuple');

-- --------------------------------------------------------

--
-- Structure de la table `nationalité`
--

DROP TABLE IF EXISTS `nationalité`;
CREATE TABLE IF NOT EXISTS `nationalité` (
  `id_nationalité` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
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
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `motdepasse` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nom_compte` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_droit` int NOT NULL,
  PRIMARY KEY (`id_utilisateur`),
  KEY `id_droit` (`id_droit`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom`, `prenom`, `mail`, `motdepasse`, `nom_compte`, `id_droit`) VALUES
(11, 'Thomé', 'Maxime', 'thomemaximepro@gmail.com', '$2y$10$T//xZUh3tsc.QiZI56xNoOSPcdgsJF88cowEnSwOoQ1gAO.XD.qN6', 'Le GOAT', 1);

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
