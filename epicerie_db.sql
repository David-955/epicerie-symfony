-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : jeu. 05 déc. 2024 à 15:03
-- Version du serveur : 10.10.2-MariaDB
-- Version de PHP : 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `epicerie_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20241205094648', '2024-12-05 09:47:04', 92),
('DoctrineMigrations\\Version20241205112832', '2024-12-05 11:28:43', 18);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prix` double NOT NULL,
  `poids` double NOT NULL,
  `image` varchar(255) NOT NULL,
  `dangereux` tinyint(1) NOT NULL,
  `alias` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `prix`, `poids`, `image`, `dangereux`, `alias`) VALUES
(31, 'Tondeuse à gazon', 150, 7, '/image/produits/tondeuse.jpg', 0, 'tondeuse'),
(32, 'Chauffe-eau', 200, 15, '/image/produits/chauffe-eau.jpg', 0, 'chauffe-eau'),
(33, 'Machette', 45, 1.2, '/image/produits/machette.jpg', 1, 'machette'),
(34, 'Pistolet à colle', 8, 0.3, '/image/produits/pistolet-colle.jpg', 0, 'pistolet-colle'),
(35, 'Masque de ski', 35, 0.5, '/image/produits/masque-ski.jpg', 0, 'masque-ski'),
(36, 'Appareil photo', 250, 0.8, '/image/produits/appareil-photo.jpg', 0, 'appareil-photo'),
(37, 'Détecteur de fumée', 25, 0.2, '/image/produits/detecteur-fumee.jpg', 0, 'detecteur-fumee'),
(38, 'Batterie externe', 30, 0.3, '/image/produits/batterie-externe.jpg', 0, 'batterie-externe'),
(39, 'Scie circulaire', 120, 5, '/image/produits/scie-circulaire.jpg', 1, 'scie-circulaire'),
(40, 'Aspirateur', 90, 4, '/image/produits/aspirateur.jpg', 0, 'aspirateur');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
