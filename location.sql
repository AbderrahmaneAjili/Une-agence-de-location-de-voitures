-- phpMyAdmin SQL Dump
-- version 2.9.1.1
-- http://www.phpmyadmin.net
-- 
-- Serveur: localhost
-- Généré le : Mardi 01 Février 2022 à 20:18
-- Version du serveur: 5.0.27
-- Version de PHP: 5.2.0
-- 
-- Base de données: `location`
-- 

-- --------------------------------------------------------

-- 
-- Structure de la table `client`
-- 

CREATE TABLE `client` (
  `ncin` varchar(8) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `tel` varchar(8) NOT NULL,
  PRIMARY KEY  (`ncin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `client`
-- 

INSERT INTO `client` (`ncin`, `nom`, `prenom`, `tel`) VALUES 
('11111111', 'Abidi', 'Anis', '99999999'),
('11111122', 'Louiz', 'Radhia', '88888888');

-- --------------------------------------------------------

-- 
-- Structure de la table `louer`
-- 

CREATE TABLE `louer` (
  `ncin` varchar(8) NOT NULL,
  `imat` varchar(9) NOT NULL,
  `dateloc` datetime NOT NULL,
  `dateret` datetime NOT NULL,
  PRIMARY KEY  (`ncin`,`imat`,`dateloc`),
  KEY `imat` (`imat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `louer`
-- 

INSERT INTO `louer` (`ncin`, `imat`, `dateloc`, `dateret`) VALUES 
('11111111', '250TU3998', '2021-05-01 00:00:00', '2021-05-04 00:00:00'),
('11111111', '251TU8721', '2022-01-13 00:00:00', '2000-01-01 00:00:00'),
('11111122', '254TU352', '2022-01-14 00:00:00', '2000-01-01 00:00:00');

-- --------------------------------------------------------

-- 
-- Structure de la table `voiture`
-- 

CREATE TABLE `voiture` (
  `imat` varchar(9) NOT NULL,
  `model` varchar(20) NOT NULL,
  `prixloc` int(11) NOT NULL,
  `disponible` char(1) NOT NULL,
  PRIMARY KEY  (`imat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `voiture`
-- 

INSERT INTO `voiture` (`imat`, `model`, `prixloc`, `disponible`) VALUES 
('250TU3998', 'Clio', 90, 'D'),
('251TU8721', 'Q8', 300, 'N'),
('254TU352', 'Rio', 100, 'N');

-- 
-- Contraintes pour les tables exportées
-- 

-- 
-- Contraintes pour la table `louer`
-- 
ALTER TABLE `louer`
  ADD CONSTRAINT `louer_ibfk_1` FOREIGN KEY (`ncin`) REFERENCES `client` (`ncin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `louer_ibfk_2` FOREIGN KEY (`imat`) REFERENCES `voiture` (`imat`) ON DELETE CASCADE ON UPDATE CASCADE;
