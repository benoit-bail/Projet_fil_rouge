-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 07 oct. 2022 à 10:26
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `autoscout24`
--

-- --------------------------------------------------------

--
-- Structure de la table `avoir`
--

CREATE TABLE `avoir` (
  `ID_voitures` varchar(50) NOT NULL,
  `ID_caracteristiques` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `avoir`
--

INSERT INTO `avoir` (`ID_voitures`, `ID_caracteristiques`) VALUES
('1', '1'),
('2', '2'),
('3', '3'),
('4', '4'),
('5', '5');

-- --------------------------------------------------------

--
-- Structure de la table `caracteristiques`
--

CREATE TABLE `caracteristiques` (
  `ID_caracteristiques` varchar(50) NOT NULL,
  `nom_couleur_carosserie` varchar(50) NOT NULL,
  `kilometrage` int(11) NOT NULL,
  `puissance_en_CH` int(11) NOT NULL,
  `Transmission` varchar(50) NOT NULL,
  `Equipements` varchar(50) NOT NULL,
  `nom_neuf_occaz` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `caracteristiques`
--

INSERT INTO `caracteristiques` (`ID_caracteristiques`, `nom_couleur_carosserie`, `kilometrage`, `puissance_en_CH`, `Transmission`, `Equipements`, `nom_neuf_occaz`) VALUES
('1', 'violet', 200350, 6, 'manuelle', 'toutes options', 'occasion'),
('2', 'rouge', 265000, 5, 'manuelle', 'toutes options', 'occasion'),
('3', 'noir', 125365, 8, 'manuelle', 'toutes options', 'occasion'),
('4', 'vert', 160874, 10, 'manuelle', 'toutes options', 'occasion'),
('5', 'blanche', 0, 7, 'automatique', 'toutes options', 'neuf');

-- --------------------------------------------------------

--
-- Structure de la table `modeles`
--

CREATE TABLE `modeles` (
  `ID_modele` varchar(50) NOT NULL,
  `nom_modèle` varchar(50) NOT NULL,
  `prix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `modeles`
--

INSERT INTO `modeles` (`ID_modele`, `nom_modèle`, `prix`) VALUES
('1', 'fiesta', 1550),
('2', 'type 901', 45000),
('3', '3008', 6000),
('4', '208', 3500),
('5', 'corolla 5', 6500);

-- --------------------------------------------------------

--
-- Structure de la table `vendeur`
--

CREATE TABLE `vendeur` (
  `ID_vendeur` varchar(50) NOT NULL,
  `nom_Pro_Particulier` varchar(50) NOT NULL,
  `telephone_vendeur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `vendeur`
--

INSERT INTO `vendeur` (`ID_vendeur`, `nom_Pro_Particulier`, `telephone_vendeur`) VALUES
('1', 'Robert', '0321547895'),
('2', 'Harchi', '0326598745'),
('3', 'Hubert', '0215487410'),
('4', 'Dupon', '0451287963'),
('5', 'Gilles', '0258745962');

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `ID_ville` varchar(50) NOT NULL,
  `Nom_ville` varchar(50) NOT NULL,
  `code_postal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`ID_ville`, `Nom_ville`, `code_postal`) VALUES
('1', 'Maubeuge', 59600),
('2', 'Louvroil', 59720),
('3', 'Hautmont', 59330),
('4', 'Lille', 59000),
('5', 'Liessies', 59740);

-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE `voitures` (
  `ID_voitures` varchar(50) NOT NULL,
  `marque` varchar(50) NOT NULL,
  `Premiere_immatriculation` date NOT NULL,
  `carburant` varchar(50) NOT NULL,
  `photo_vehicule` varchar(255) DEFAULT NULL,
  `ID_vendeur` varchar(50) DEFAULT NULL,
  `ID_ville` varchar(50) DEFAULT NULL,
  `ID_modele` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `voitures`
--

INSERT INTO `voitures` (`ID_voitures`, `marque`, `Premiere_immatriculation`, `carburant`, `photo_vehicule`, `ID_vendeur`, `ID_ville`, `ID_modele`) VALUES
('1', 'Peugeot', '2015-07-23', 'essence', 'C:\\Users\\afpa\\Desktop\\Benoit', '1', '1', '3'),
('2', 'Peugeot', '2016-08-13', 'diesel', 'C:\\Users\\afpa\\Desktop\\Benoit', '2', '2', '4'),
('3', 'Toyota', '1998-10-10', 'essence', 'C:\\Users\\afpa\\Desktop\\Benoit', '3', '3', '5'),
('4', 'Porsche', '1986-10-03', 'essence', 'C:\\Users\\afpa\\Desktop\\Benoit\\Porsche 911 type 901.', '4', '4', '2'),
('5', 'Ford', '2017-12-13', 'diesel', 'C:\\Users\\afpa\\Desktop\\Benoit', '5', '5', '1');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `avoir`
--
ALTER TABLE `avoir`
  ADD PRIMARY KEY (`ID_voitures`,`ID_caracteristiques`),
  ADD KEY `ID_caracteristiques` (`ID_caracteristiques`);

--
-- Index pour la table `caracteristiques`
--
ALTER TABLE `caracteristiques`
  ADD PRIMARY KEY (`ID_caracteristiques`);

--
-- Index pour la table `modeles`
--
ALTER TABLE `modeles`
  ADD PRIMARY KEY (`ID_modele`);

--
-- Index pour la table `vendeur`
--
ALTER TABLE `vendeur`
  ADD PRIMARY KEY (`ID_vendeur`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`ID_ville`);

--
-- Index pour la table `voitures`
--
ALTER TABLE `voitures`
  ADD PRIMARY KEY (`ID_voitures`),
  ADD KEY `ID_vendeur` (`ID_vendeur`),
  ADD KEY `ID_ville` (`ID_ville`),
  ADD KEY `ID_modele` (`ID_modele`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `avoir`
--
ALTER TABLE `avoir`
  ADD CONSTRAINT `avoir_ibfk_1` FOREIGN KEY (`ID_voitures`) REFERENCES `voitures` (`ID_voitures`),
  ADD CONSTRAINT `avoir_ibfk_2` FOREIGN KEY (`ID_caracteristiques`) REFERENCES `caracteristiques` (`ID_caracteristiques`);

--
-- Contraintes pour la table `voitures`
--
ALTER TABLE `voitures`
  ADD CONSTRAINT `voitures_ibfk_1` FOREIGN KEY (`ID_vendeur`) REFERENCES `vendeur` (`ID_vendeur`),
  ADD CONSTRAINT `voitures_ibfk_2` FOREIGN KEY (`ID_ville`) REFERENCES `villes` (`ID_ville`),
  ADD CONSTRAINT `voitures_ibfk_3` FOREIGN KEY (`ID_modele`) REFERENCES `modeles` (`ID_modele`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
