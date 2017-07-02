-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8889
-- Généré le :  Dim 02 Juillet 2017 à 12:45
-- Version du serveur :  5.6.35
-- Version de PHP :  7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `LearnStone`
--

-- --------------------------------------------------------

--
-- Structure de la table `Answer`
--

CREATE TABLE `Answer` (
  `IdAnswer` int(11) NOT NULL,
  `AnswerText` text NOT NULL,
  `IsCorrectAnswer` tinyint(1) NOT NULL,
  `IdQuestion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Card`
--

CREATE TABLE `Card` (
  `IdCard` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Text` text NOT NULL,
  `Attack` int(11) NOT NULL,
  `Health` int(11) NOT NULL,
  `ManaCost` int(11) NOT NULL,
  `Artist` int(11) NOT NULL,
  `Durability` int(11) NOT NULL,
  `IdRefClass` int(11) NOT NULL,
  `IdRefCardsSet` int(11) NOT NULL,
  `IdRefType` int(11) NOT NULL,
  `IdRefRace` int(11) NOT NULL,
  `IdRefRarity` int(11) NOT NULL,
  `Img` varchar(255) DEFAULT NULL,
  `ImgGold` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `CardKeyWord`
--

CREATE TABLE `CardKeyWord` (
  `IdRefCardKeyWord` int(11) NOT NULL,
  `IdKeyWord` int(11) NOT NULL,
  `IdCard` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `KeyWord`
--

CREATE TABLE `KeyWord` (
  `IdKeyWord` int(11) NOT NULL,
  `LblKeyWord` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Lesson`
--

CREATE TABLE `Lesson` (
  `IdLesson` int(11) NOT NULL,
  `NumberLesson` int(11) NOT NULL,
  `Text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Person`
--

CREATE TABLE `Person` (
  `IdPerson` int(4) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `Lastname` varchar(255) NOT NULL,
  `NbGoodAnswer` int(4) NOT NULL,
  `NbQuestionAnswered` int(4) NOT NULL,
  `IdRefRole` int(11) NOT NULL,
  `Username` int(11) NOT NULL,
  `Password` int(11) NOT NULL,
  `Mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `PersonLesson`
--

CREATE TABLE `PersonLesson` (
  `IdPersonLesson` int(11) NOT NULL,
  `IdPerson` int(11) NOT NULL,
  `IdLesson` int(11) NOT NULL,
  `DateRead` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Question`
--

CREATE TABLE `Question` (
  `IdQuestion` int(11) NOT NULL,
  `QuestionText` text NOT NULL,
  `NbUse` int(11) NOT NULL,
  `NbResult` int(11) NOT NULL,
  `Img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `QuestionAnswered`
--

CREATE TABLE `QuestionAnswered` (
  `IdQuestionAnswered` int(11) NOT NULL,
  `IdPerson` int(11) NOT NULL,
  `IdQuestion` int(11) NOT NULL,
  `IsAnswerWell` tinyint(1) NOT NULL,
  `DateAnswered` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `RefCardsSet`
--

CREATE TABLE `RefCardsSet` (
  `IdRefCardsSet` int(11) NOT NULL,
  `LblCardsSet` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `RefClass`
--

CREATE TABLE `RefClass` (
  `IdRefClass` int(11) NOT NULL,
  `LblClass` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `RefRace`
--

CREATE TABLE `RefRace` (
  `IdRefRace` int(11) NOT NULL,
  `LblRace` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `RefRarity`
--

CREATE TABLE `RefRarity` (
  `IdRefRarity` int(11) NOT NULL,
  `LblRarity` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `RefRole`
--

CREATE TABLE `RefRole` (
  `IdRefRole` int(4) NOT NULL,
  `LblRole` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `RefType`
--

CREATE TABLE `RefType` (
  `IdRefType` int(11) NOT NULL,
  `LblType` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Answer`
--
ALTER TABLE `Answer`
  ADD PRIMARY KEY (`IdAnswer`),
  ADD KEY `FK_Answer_Question` (`IdQuestion`);

--
-- Index pour la table `Card`
--
ALTER TABLE `Card`
  ADD PRIMARY KEY (`IdCard`),
  ADD KEY `FK_Card_RefClass` (`IdRefClass`),
  ADD KEY `FK_Card_RefCardsSet` (`IdRefCardsSet`),
  ADD KEY `FK_Card_RefType` (`IdRefType`),
  ADD KEY `FK_Card_RefRace` (`IdRefRace`),
  ADD KEY `FK_Card_RefRarity` (`IdRefRarity`);

--
-- Index pour la table `CardKeyWord`
--
ALTER TABLE `CardKeyWord`
  ADD PRIMARY KEY (`IdRefCardKeyWord`),
  ADD KEY `FK_CardKeyWord_Card` (`IdCard`),
  ADD KEY `FK_CardKeyWord_KeyWord` (`IdKeyWord`);

--
-- Index pour la table `KeyWord`
--
ALTER TABLE `KeyWord`
  ADD PRIMARY KEY (`IdKeyWord`);

--
-- Index pour la table `Lesson`
--
ALTER TABLE `Lesson`
  ADD PRIMARY KEY (`IdLesson`);

--
-- Index pour la table `Person`
--
ALTER TABLE `Person`
  ADD PRIMARY KEY (`IdPerson`),
  ADD KEY `FK_Person_RefRole` (`IdRefRole`);

--
-- Index pour la table `PersonLesson`
--
ALTER TABLE `PersonLesson`
  ADD PRIMARY KEY (`IdPersonLesson`),
  ADD KEY `FK_PersonLesson_Person` (`IdPerson`),
  ADD KEY `FK_PersonLesson_Lesson` (`IdLesson`);

--
-- Index pour la table `Question`
--
ALTER TABLE `Question`
  ADD PRIMARY KEY (`IdQuestion`);

--
-- Index pour la table `QuestionAnswered`
--
ALTER TABLE `QuestionAnswered`
  ADD PRIMARY KEY (`IdQuestionAnswered`),
  ADD KEY `FK_QuestionAnswered_Person` (`IdPerson`),
  ADD KEY `FK_QuestionAnswered_Question` (`IdQuestion`);

--
-- Index pour la table `RefCardsSet`
--
ALTER TABLE `RefCardsSet`
  ADD PRIMARY KEY (`IdRefCardsSet`);

--
-- Index pour la table `RefClass`
--
ALTER TABLE `RefClass`
  ADD PRIMARY KEY (`IdRefClass`);

--
-- Index pour la table `RefRace`
--
ALTER TABLE `RefRace`
  ADD PRIMARY KEY (`IdRefRace`);

--
-- Index pour la table `RefRarity`
--
ALTER TABLE `RefRarity`
  ADD PRIMARY KEY (`IdRefRarity`);

--
-- Index pour la table `RefRole`
--
ALTER TABLE `RefRole`
  ADD PRIMARY KEY (`IdRefRole`);

--
-- Index pour la table `RefType`
--
ALTER TABLE `RefType`
  ADD PRIMARY KEY (`IdRefType`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Answer`
--
ALTER TABLE `Answer`
  MODIFY `IdAnswer` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Card`
--
ALTER TABLE `Card`
  MODIFY `IdCard` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `CardKeyWord`
--
ALTER TABLE `CardKeyWord`
  MODIFY `IdRefCardKeyWord` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `KeyWord`
--
ALTER TABLE `KeyWord`
  MODIFY `IdKeyWord` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Lesson`
--
ALTER TABLE `Lesson`
  MODIFY `IdLesson` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Person`
--
ALTER TABLE `Person`
  MODIFY `IdPerson` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `PersonLesson`
--
ALTER TABLE `PersonLesson`
  MODIFY `IdPersonLesson` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Question`
--
ALTER TABLE `Question`
  MODIFY `IdQuestion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `QuestionAnswered`
--
ALTER TABLE `QuestionAnswered`
  MODIFY `IdQuestionAnswered` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `RefCardsSet`
--
ALTER TABLE `RefCardsSet`
  MODIFY `IdRefCardsSet` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `RefClass`
--
ALTER TABLE `RefClass`
  MODIFY `IdRefClass` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `RefRace`
--
ALTER TABLE `RefRace`
  MODIFY `IdRefRace` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `RefRarity`
--
ALTER TABLE `RefRarity`
  MODIFY `IdRefRarity` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `RefRole`
--
ALTER TABLE `RefRole`
  MODIFY `IdRefRole` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `RefType`
--
ALTER TABLE `RefType`
  MODIFY `IdRefType` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Answer`
--
ALTER TABLE `Answer`
  ADD CONSTRAINT `FK_Answer_Question` FOREIGN KEY (`IdQuestion`) REFERENCES `Question` (`IdQuestion`);

--
-- Contraintes pour la table `Card`
--
ALTER TABLE `Card`
  ADD CONSTRAINT `FK_Card_RefCardsSet` FOREIGN KEY (`IdRefCardsSet`) REFERENCES `RefCardsSet` (`IdRefCardsSet`),
  ADD CONSTRAINT `FK_Card_RefClass` FOREIGN KEY (`IdRefClass`) REFERENCES `RefClass` (`IdRefClass`),
  ADD CONSTRAINT `FK_Card_RefRace` FOREIGN KEY (`IdRefRace`) REFERENCES `RefRace` (`IdRefRace`),
  ADD CONSTRAINT `FK_Card_RefRarity` FOREIGN KEY (`IdRefRarity`) REFERENCES `RefRarity` (`IdRefRarity`),
  ADD CONSTRAINT `FK_Card_RefType` FOREIGN KEY (`IdRefType`) REFERENCES `RefType` (`IdRefType`);

--
-- Contraintes pour la table `CardKeyWord`
--
ALTER TABLE `CardKeyWord`
  ADD CONSTRAINT `FK_CardKeyWord_Card` FOREIGN KEY (`IdCard`) REFERENCES `Card` (`IdCard`),
  ADD CONSTRAINT `FK_CardKeyWord_KeyWord` FOREIGN KEY (`IdKeyWord`) REFERENCES `KeyWord` (`IdKeyWord`);

--
-- Contraintes pour la table `Person`
--
ALTER TABLE `Person`
  ADD CONSTRAINT `FK_Person_RefRole` FOREIGN KEY (`IdRefRole`) REFERENCES `RefRole` (`IdRefRole`);

--
-- Contraintes pour la table `PersonLesson`
--
ALTER TABLE `PersonLesson`
  ADD CONSTRAINT `FK_PersonLesson_Lesson` FOREIGN KEY (`IdLesson`) REFERENCES `Lesson` (`IdLesson`),
  ADD CONSTRAINT `FK_PersonLesson_Person` FOREIGN KEY (`IdPerson`) REFERENCES `Person` (`IdPerson`);

--
-- Contraintes pour la table `QuestionAnswered`
--
ALTER TABLE `QuestionAnswered`
  ADD CONSTRAINT `FK_QuestionAnswered_Person` FOREIGN KEY (`IdPerson`) REFERENCES `Person` (`IdPerson`),
  ADD CONSTRAINT `FK_QuestionAnswered_Question` FOREIGN KEY (`IdQuestion`) REFERENCES `Question` (`IdQuestion`);
