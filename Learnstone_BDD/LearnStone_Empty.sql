-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8889
-- Généré le :  Sam 22 Juillet 2017 à 16:11
-- Version du serveur :  5.6.35
-- Version de PHP :  7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `LearnStone`
--

-- --------------------------------------------------------

--
-- Structure de la table `Answer`
--

CREATE TABLE `Answer` (
  `idAnswer` int(11) NOT NULL,
  `answerText` text NOT NULL,
  `isCorrectAnswer` tinyint(1) NOT NULL,
  `idQuestion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Card`
--

CREATE TABLE `Card` (
  `idCard` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `text` text,
  `attack` int(11) DEFAULT NULL,
  `health` int(11) DEFAULT NULL,
  `manaCost` int(11) DEFAULT NULL,
  `artist` varchar(255) DEFAULT NULL,
  `durability` int(11) DEFAULT NULL,
  `idRefClass` int(11) DEFAULT NULL,
  `idRefCardsSet` int(11) NOT NULL,
  `idRefType` int(11) NOT NULL,
  `idRefRace` int(11) DEFAULT NULL,
  `idRefRarity` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `imgGold` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Definition`
--

CREATE TABLE `Definition` (
  `idDefinition` int(11) NOT NULL,
  `word` varchar(45) NOT NULL,
  `wordText` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Lesson`
--

CREATE TABLE `Lesson` (
  `idLesson` int(11) NOT NULL,
  `numberLesson` int(11) NOT NULL,
  `text` text NOT NULL,
  `img` varchar(2048) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Person`
--

CREATE TABLE `Person` (
  `idPerson` int(4) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `nbGoodAnswer` int(4) NOT NULL,
  `nbQuestionAnswered` int(4) NOT NULL,
  `idRefRole` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `PersonLesson`
--

CREATE TABLE `PersonLesson` (
  `idPersonLesson` int(11) NOT NULL,
  `idPerson` int(11) NOT NULL,
  `idLesson` int(11) NOT NULL,
  `dateRead` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Question`
--

CREATE TABLE `Question` (
  `idQuestion` int(11) NOT NULL,
  `questionText` text NOT NULL,
  `nbUse` int(11) NOT NULL,
  `nbResult` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `QuestionAnswered`
--

CREATE TABLE `QuestionAnswered` (
  `idQuestionAnswered` int(11) NOT NULL,
  `idPerson` int(11) NOT NULL,
  `idQuestion` int(11) NOT NULL,
  `isAnswerWell` tinyint(1) NOT NULL,
  `dateAnswered` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `RefCardsSet`
--

CREATE TABLE `RefCardsSet` (
  `idRefCardsSet` int(11) NOT NULL,
  `lblCardsSet` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `RefCardsSet`
--

INSERT INTO `RefCardsSet` (`idRefCardsSet`, `lblCardsSet`) VALUES
(1, 'Basic'),
(2, 'Classic'),
(3, 'Whispers of the Old Gods'),
(4, 'One Night in Karazhan'),
(5, 'Mean Streets of Gadgetzan'),
(6, 'Journey to Un\'Goro'),
(7, 'Hall of Fame'),
(8, 'Naxxramas'),
(9, 'Goblins vs Gnomes'),
(10, 'Blackrock Mountain'),
(11, 'The Grand Tournament'),
(12, 'The League of Explorers');

-- --------------------------------------------------------

--
-- Structure de la table `RefClass`
--

CREATE TABLE `RefClass` (
  `idRefClass` int(11) NOT NULL,
  `lblClass` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `RefClass`
--

INSERT INTO `RefClass` (`idRefClass`, `lblClass`) VALUES
(1, 'Mage'),
(2, 'Paladin'),
(3, 'Warlock'),
(4, 'Rogue'),
(5, 'Priest'),
(6, 'Druid'),
(7, 'Hunter'),
(8, 'Shaman'),
(9, 'Warrior'),
(10, 'Neutral');

-- --------------------------------------------------------

--
-- Structure de la table `RefRace`
--

CREATE TABLE `RefRace` (
  `idRefRace` int(11) NOT NULL,
  `lblRace` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `RefRace`
--

INSERT INTO `RefRace` (`idRefRace`, `lblRace`) VALUES
(1, 'Totem'),
(2, 'Dragon'),
(3, 'Bete'),
(4, 'Demon'),
(5, 'Elementaire'),
(6, 'Mech'),
(7, 'Murloc'),
(8, 'Pirate');

-- --------------------------------------------------------

--
-- Structure de la table `RefRarity`
--

CREATE TABLE `RefRarity` (
  `idRefRarity` int(11) NOT NULL,
  `lblRarity` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `RefRarity`
--

INSERT INTO `RefRarity` (`idRefRarity`, `lblRarity`) VALUES
(1, 'Free'),
(2, 'Common'),
(3, 'Rare'),
(4, 'Epic'),
(5, 'Legendary');

-- --------------------------------------------------------

--
-- Structure de la table `RefRole`
--

CREATE TABLE `RefRole` (
  `idRefRole` int(11) NOT NULL,
  `lblRole` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `RefRole`
--

INSERT INTO `RefRole` (`idRefRole`, `lblRole`) VALUES
(1, 'Joueur'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `RefType`
--

CREATE TABLE `RefType` (
  `idRefType` int(11) NOT NULL,
  `lblType` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `RefType`
--

INSERT INTO `RefType` (`idRefType`, `lblType`) VALUES
(1, 'Minion'),
(2, 'Weapon'),
(3, 'Spell'),
(4, 'Hero');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Answer`
--
ALTER TABLE `Answer`
  ADD PRIMARY KEY (`idAnswer`),
  ADD KEY `FK_Answer_Question` (`idQuestion`);

--
-- Index pour la table `Card`
--
ALTER TABLE `Card`
  ADD PRIMARY KEY (`idCard`),
  ADD KEY `FK_Card_RefClass` (`idRefClass`),
  ADD KEY `FK_Card_RefCardsSet` (`idRefCardsSet`),
  ADD KEY `FK_Card_RefType` (`idRefType`),
  ADD KEY `FK_Card_RefRace` (`idRefRace`),
  ADD KEY `FK_Card_RefRarity` (`idRefRarity`);

--
-- Index pour la table `Definition`
--
ALTER TABLE `Definition`
  ADD PRIMARY KEY (`idDefinition`);

--
-- Index pour la table `Lesson`
--
ALTER TABLE `Lesson`
  ADD PRIMARY KEY (`idLesson`);

--
-- Index pour la table `Person`
--
ALTER TABLE `Person`
  ADD PRIMARY KEY (`idPerson`),
  ADD KEY `FK_Person_RefRole` (`idRefRole`);

--
-- Index pour la table `PersonLesson`
--
ALTER TABLE `PersonLesson`
  ADD PRIMARY KEY (`idPersonLesson`),
  ADD KEY `FK_PersonLesson_Person` (`idPerson`),
  ADD KEY `FK_PersonLesson_Lesson` (`idLesson`);

--
-- Index pour la table `Question`
--
ALTER TABLE `Question`
  ADD PRIMARY KEY (`idQuestion`);

--
-- Index pour la table `QuestionAnswered`
--
ALTER TABLE `QuestionAnswered`
  ADD PRIMARY KEY (`idQuestionAnswered`),
  ADD KEY `FK_QuestionAnswered_Person` (`idPerson`),
  ADD KEY `FK_QuestionAnswered_Question` (`idQuestion`);

--
-- Index pour la table `RefCardsSet`
--
ALTER TABLE `RefCardsSet`
  ADD PRIMARY KEY (`idRefCardsSet`);

--
-- Index pour la table `RefClass`
--
ALTER TABLE `RefClass`
  ADD PRIMARY KEY (`idRefClass`);

--
-- Index pour la table `RefRace`
--
ALTER TABLE `RefRace`
  ADD PRIMARY KEY (`idRefRace`);

--
-- Index pour la table `RefRarity`
--
ALTER TABLE `RefRarity`
  ADD PRIMARY KEY (`idRefRarity`);

--
-- Index pour la table `RefRole`
--
ALTER TABLE `RefRole`
  ADD PRIMARY KEY (`idRefRole`);

--
-- Index pour la table `RefType`
--
ALTER TABLE `RefType`
  ADD PRIMARY KEY (`idRefType`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Answer`
--
ALTER TABLE `Answer`
  MODIFY `idAnswer` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Card`
--
ALTER TABLE `Card`
  MODIFY `idCard` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Definition`
--
ALTER TABLE `Definition`
  MODIFY `idDefinition` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Lesson`
--
ALTER TABLE `Lesson`
  MODIFY `idLesson` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Person`
--
ALTER TABLE `Person`
  MODIFY `idPerson` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `PersonLesson`
--
ALTER TABLE `PersonLesson`
  MODIFY `idPersonLesson` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Question`
--
ALTER TABLE `Question`
  MODIFY `idQuestion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `QuestionAnswered`
--
ALTER TABLE `QuestionAnswered`
  MODIFY `idQuestionAnswered` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `RefCardsSet`
--
ALTER TABLE `RefCardsSet`
  MODIFY `idRefCardsSet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `RefClass`
--
ALTER TABLE `RefClass`
  MODIFY `idRefClass` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `RefRace`
--
ALTER TABLE `RefRace`
  MODIFY `idRefRace` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `RefRarity`
--
ALTER TABLE `RefRarity`
  MODIFY `idRefRarity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `RefRole`
--
ALTER TABLE `RefRole`
  MODIFY `idRefRole` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `RefType`
--
ALTER TABLE `RefType`
  MODIFY `idRefType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Answer`
--
ALTER TABLE `Answer`
  ADD CONSTRAINT `FK_Answer_Question` FOREIGN KEY (`idQuestion`) REFERENCES `Question` (`idQuestion`);

--
-- Contraintes pour la table `Card`
--
ALTER TABLE `Card`
  ADD CONSTRAINT `FK_Card_RefCardsSet` FOREIGN KEY (`idRefCardsSet`) REFERENCES `RefCardsSet` (`idRefCardsSet`),
  ADD CONSTRAINT `FK_Card_RefClass` FOREIGN KEY (`idRefClass`) REFERENCES `RefClass` (`idRefClass`),
  ADD CONSTRAINT `FK_Card_RefRace` FOREIGN KEY (`idRefRace`) REFERENCES `RefRace` (`idRefRace`),
  ADD CONSTRAINT `FK_Card_RefRarity` FOREIGN KEY (`idRefRarity`) REFERENCES `RefRarity` (`idRefRarity`),
  ADD CONSTRAINT `FK_Card_RefType` FOREIGN KEY (`idRefType`) REFERENCES `RefType` (`idRefType`);

--
-- Contraintes pour la table `Person`
--
ALTER TABLE `Person`
  ADD CONSTRAINT `FK_Person_RefRole` FOREIGN KEY (`idRefRole`) REFERENCES `RefRole` (`idRefRole`);

--
-- Contraintes pour la table `PersonLesson`
--
ALTER TABLE `PersonLesson`
  ADD CONSTRAINT `FK_PersonLesson_Lesson` FOREIGN KEY (`idLesson`) REFERENCES `Lesson` (`idLesson`),
  ADD CONSTRAINT `FK_PersonLesson_Person` FOREIGN KEY (`idPerson`) REFERENCES `Person` (`idPerson`);

--
-- Contraintes pour la table `QuestionAnswered`
--
ALTER TABLE `QuestionAnswered`
  ADD CONSTRAINT `FK_QuestionAnswered_Person` FOREIGN KEY (`idPerson`) REFERENCES `Person` (`idPerson`),
  ADD CONSTRAINT `FK_QuestionAnswered_Question` FOREIGN KEY (`idQuestion`) REFERENCES `Question` (`idQuestion`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
