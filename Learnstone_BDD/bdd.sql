-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8889
-- Généré le :  Sam 24 Juin 2017 à 16:54
-- Version du serveur :  5.6.33
-- Version de PHP :  7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `LearnStone`
--

-- --------------------------------------------------------

--
-- Structure de la table `Answers`
--

CREATE TABLE `Answers` (
  `IdAnswers` int(11) NOT NULL,
  `IdUsers` int(11) NOT NULL,
  `IdQuestions` int(11) NOT NULL,
  `AnswerText` text NOT NULL,
  `AnswerNumeric` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Cards`
--

CREATE TABLE `Cards` (
  `IdCards` int(11) NOT NULL,
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
  `IdRefRarity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `KeyWords`
--

CREATE TABLE `KeyWords` (
  `IdKeyWords` int(11) NOT NULL,
  `LblKeyWords` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Lessons`
--

CREATE TABLE `Lessons` (
  `IdLessons` int(11) NOT NULL,
  `NumberLesson` int(11) NOT NULL,
  `Text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Questions`
--

CREATE TABLE `Questions` (
  `IdQuestions` int(11) NOT NULL,
  `QuestionText` text NOT NULL,
  `NbGoodAnswer` int(11) NOT NULL,
  `NbUse` int(11) NOT NULL,
  `NbResult` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `RefCardsKeyWords`
--

CREATE TABLE `RefCardsKeyWords` (
  `IdRefCardsKeyWords` int(11) NOT NULL,
  `IdKeyWords` int(11) NOT NULL,
  `IdCards` int(11) NOT NULL
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

-- --------------------------------------------------------

--
-- Structure de la table `RefUsersLessons`
--

CREATE TABLE `RefUsersLessons` (
  `IdRefUsersLessons` int(11) NOT NULL,
  `IdUsers` int(11) NOT NULL,
  `IdLessons` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Users`
--

CREATE TABLE `Users` (
  `IdUsers` int(4) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `Lastname` varchar(255) NOT NULL,
  `NbGoodAnswer` int(4) NOT NULL,
  `NbQuestionAnswered` int(4) NOT NULL,
  `IdRefRole` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Answers`
--
ALTER TABLE `Answers`
  ADD PRIMARY KEY (`IdAnswers`),
  ADD KEY `FK_Answers_Users` (`IdUsers`),
  ADD KEY `FK_Answers_Questions` (`IdQuestions`);

--
-- Index pour la table `Cards`
--
ALTER TABLE `Cards`
  ADD PRIMARY KEY (`IdCards`),
  ADD KEY `FK_Cards_RefClass` (`IdRefClass`),
  ADD KEY `FK_Cards_RefCardsSet` (`IdRefCardsSet`),
  ADD KEY `FK_Cards_RefRace` (`IdRefRace`),
  ADD KEY `FK_Cards_RefRarity` (`IdRefRarity`),
  ADD KEY `FK_Cards_RefType` (`IdRefType`);

--
-- Index pour la table `KeyWords`
--
ALTER TABLE `KeyWords`
  ADD PRIMARY KEY (`IdKeyWords`);

--
-- Index pour la table `Lessons`
--
ALTER TABLE `Lessons`
  ADD PRIMARY KEY (`IdLessons`);

--
-- Index pour la table `Questions`
--
ALTER TABLE `Questions`
  ADD PRIMARY KEY (`IdQuestions`);

--
-- Index pour la table `RefCardsKeyWords`
--
ALTER TABLE `RefCardsKeyWords`
  ADD PRIMARY KEY (`IdRefCardsKeyWords`),
  ADD KEY `FK_RefCardsKeyWords_Cards` (`IdCards`),
  ADD KEY `FK_RefCardsKeyWords_KeyWords` (`IdKeyWords`);

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
-- Index pour la table `RefUsersLessons`
--
ALTER TABLE `RefUsersLessons`
  ADD PRIMARY KEY (`IdRefUsersLessons`),
  ADD KEY `FK_RefUsersLessons_Users` (`IdUsers`),
  ADD KEY `FK_RefUsersLessons_Lessons` (`IdLessons`);

--
-- Index pour la table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`IdUsers`),
  ADD KEY `FK_Users_RefRole` (`IdRefRole`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Answers`
--
ALTER TABLE `Answers`
  MODIFY `IdAnswers` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Cards`
--
ALTER TABLE `Cards`
  MODIFY `IdCards` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `KeyWords`
--
ALTER TABLE `KeyWords`
  MODIFY `IdKeyWords` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Lessons`
--
ALTER TABLE `Lessons`
  MODIFY `IdLessons` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Questions`
--
ALTER TABLE `Questions`
  MODIFY `IdQuestions` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `RefCardsKeyWords`
--
ALTER TABLE `RefCardsKeyWords`
  MODIFY `IdRefCardsKeyWords` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT pour la table `RefUsersLessons`
--
ALTER TABLE `RefUsersLessons`
  MODIFY `IdRefUsersLessons` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `Users`
--
ALTER TABLE `Users`
  MODIFY `IdUsers` int(4) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Answers`
--
ALTER TABLE `Answers`
  ADD CONSTRAINT `FK_Answers_Questions` FOREIGN KEY (`IdQuestions`) REFERENCES `Questions` (`IdQuestions`),
  ADD CONSTRAINT `FK_Answers_Users` FOREIGN KEY (`IdUsers`) REFERENCES `Users` (`IdUsers`);

--
-- Contraintes pour la table `Cards`
--
ALTER TABLE `Cards`
  ADD CONSTRAINT `FK_Cards_RefCardsSet` FOREIGN KEY (`IdRefCardsSet`) REFERENCES `RefCardsSet` (`IdRefCardsSet`),
  ADD CONSTRAINT `FK_Cards_RefClass` FOREIGN KEY (`IdRefClass`) REFERENCES `RefClass` (`IdRefClass`),
  ADD CONSTRAINT `FK_Cards_RefRace` FOREIGN KEY (`IdRefRace`) REFERENCES `RefRace` (`IdRefRace`),
  ADD CONSTRAINT `FK_Cards_RefRarity` FOREIGN KEY (`IdRefRarity`) REFERENCES `RefRarity` (`IdRefRarity`),
  ADD CONSTRAINT `FK_Cards_RefType` FOREIGN KEY (`IdRefType`) REFERENCES `RefType` (`IdRefType`);

--
-- Contraintes pour la table `RefCardsKeyWords`
--
ALTER TABLE `RefCardsKeyWords`
  ADD CONSTRAINT `FK_RefCardsKeyWords_Cards` FOREIGN KEY (`IdCards`) REFERENCES `Cards` (`IdCards`),
  ADD CONSTRAINT `FK_RefCardsKeyWords_KeyWords` FOREIGN KEY (`IdKeyWords`) REFERENCES `KeyWords` (`IdKeyWords`);

--
-- Contraintes pour la table `RefUsersLessons`
--
ALTER TABLE `RefUsersLessons`
  ADD CONSTRAINT `FK_RefUsersLessons_Lessons` FOREIGN KEY (`IdLessons`) REFERENCES `Lessons` (`IdLessons`),
  ADD CONSTRAINT `FK_RefUsersLessons_Users` FOREIGN KEY (`IdUsers`) REFERENCES `Users` (`IdUsers`);

--
-- Contraintes pour la table `Users`
--
ALTER TABLE `Users`
  ADD CONSTRAINT `FK_Users_RefRole` FOREIGN KEY (`IdRefRole`) REFERENCES `RefRole` (`IdRefRole`);