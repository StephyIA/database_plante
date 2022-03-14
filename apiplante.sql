-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 14 mars 2022 à 10:20
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `apiplante`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `Nom_client` varchar(60) NOT NULL,
  `prenom_client` varchar(25) NOT NULL,
  `email_client` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `Nom_client`, `prenom_client`, `email_client`) VALUES
(8, 'ZANLE', 'STEPHANE', 'zanlestephane78@gmail.com'),
(9, 'DO', 'YASMINE', 'doyasmine@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id-commande` varchar(10) NOT NULL,
  `id-client` varchar(10) NOT NULL,
  `id-produit` varchar(10) NOT NULL,
  `Date-commande` date NOT NULL,
  `quantité-commande` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`id-commande`, `id-client`, `id-produit`, `Date-commande`, `quantité-commande`) VALUES
('cmd1', 'C1', 'P1', '2022-03-09', 10),
('cmd2', 'C2', 'P2', '2022-03-09', 15);

-- --------------------------------------------------------

--
-- Structure de la table `nom_produit`
--

CREATE TABLE `nom_produit` (
  `id_plante` int(100) NOT NULL,
  `nom_plante` varchar(25) NOT NULL,
  `Quantite_produit` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `nom_produit`
--

INSERT INTO `nom_produit` (`id_plante`, `nom_plante`, `Quantite_produit`) VALUES
(1, 'Sansevière', 200),
(2, 'Aloès', 100),
(3, 'Pilea', 70),
(4, 'Abelia', 100),
(5, 'Abutilon', 50),
(6, 'Acanthe.', 40),
(7, 'Ache odorante', 60),
(8, 'Achillée', 25),
(9, 'Le cormier', 33);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `nom_produit`
--
ALTER TABLE `nom_produit`
  ADD PRIMARY KEY (`id_plante`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `nom_produit`
--
ALTER TABLE `nom_produit`
  MODIFY `id_plante` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
