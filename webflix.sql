-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 31 oct. 2018 à 16:43
-- Version du serveur :  10.1.26-MariaDB
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `webflix`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'comédie'),
(2, '	action'),
(3, 'science-fiction'),
(4, 'documentaire');

-- --------------------------------------------------------

--
-- Structure de la table `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `video_link` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `released_at` date NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `movie`
--

INSERT INTO `movie` (`id`, `titre`, `description`, `video_link`, `cover`, `released_at`, `category_id`) VALUES
(1, 'La famille Addams', 'Dans un vieux et lugubre manoir vit la famille Addams, dont les membres, tous plus fous et délirants les uns que les autres, ressemblent d\'avantage à des morts qu\'à des vivants.', 'https://www.youtube.com/watch?v=kPQuiixmvHA', 'img/cover-lafamilleaddams.jpg', '1992-04-15', 1),
(2, 'Les Trois Frères', 'Le même jour, 3 hommes découvrent qu\'ils sont frères et héritent de 3.000.000 de francs...', 'http://ww1.tfarjo.pro/stream/13402.html', 'img/cover-lestroisfreres.jpg', '1995-12-13', 1),
(3, 'Le Pari', 'Bernard est professeur dans une banlieue et vit avec Victoria. Didier est un riche pharmacien du XIXe arrondissement de Paris, marié à Murielle, la soeur de Victoria. Tout oppose les deux beaux-frères et ils se détestent...', 'http://cinemay.ws/films/le-pari-bkc8fu-7o/', 'img/cover-lepari.jpg', '1997-10-15', 1),
(4, 'Mary à tout prix', 'Ted, le loser, décide de retrouver son amour de jeunesse, la splendide Mary. Il engage un détective privé, Pat Healy, pour la retrouver...', 'http://filmcomplet.la/9584-mary-a-tout-prix.html', 'img/cover-maryatoutprix.jpg', '1998-07-15', 1),
(5, 'Collateral', 'Max est taxi de nuit à Los Angeles. Un soir, il se lie d\'amitié avec une dénommée Annie Farrell, une belle femme procureur montée à l\'arrière de son véhicule...', 'https://streamcomplet.me/collateral/', 'img/cover-collateral.jpg', '2004-08-06', 2),
(6, 'La mémoire dans le peau', 'Sur la côte adriatique, un bateau de pêche repère le corps inanimé d\'un homme ballotté par les flots...', 'http://filmcomplet.la/3157-la-memoire-dans-la-peau.html', 'img/cover-lamemoiredanslapeau.jpg', '2002-09-25', 2),
(7, 'Casino Royal', 'Pour sa première mission, James Bond affronte le tout-puissant banquier privé du terrorisme international, Le Chiffre...', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/fl5WHj0bZ2Q\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'img/cover-casinoroyal.jpg', '2006-11-14', 2),
(8, 'Street-Fighter II', 'Dans un futur proche, les assassinats d\'hommes politiques se multiplient. Derrière ces attentats se cache un plan machiavélique monté par Bison, le chef suprême du plus grand syndicat du crime...', '\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/hPQHy1vvpL8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n', 'img/cover-streetfighter.jpg', '1996-01-16', 2),
(9, 'Les fils de l\'homme', 'Dans une société futuriste où les êtres humains ne parviennent plus à se reproduire, l\'annonce de la mort de la plus jeune personne, âgée de 18 ans, met la population en émoi...', 'http://filmcomplet.la/18683-les-fils-de-l-homme.html', 'img/cover-lesfilsdelhomme.jpg', '2006-10-18', 3),
(10, 'Seul sur Mars', 'Lors d\'une expédition sur Mars, l\'astronaute Mark Watney est laissé pour mort par ses coéquipiers, une tempête les ayant obligés à décoller en urgence.', 'http://filmcomplet.la/26287-seul-sur-mars.html', 'img/cover-seulsurmars.jpg', '2015-10-21', 3),
(11, 'Matrix', 'Programmeur anonyme dans un service administratif le jour, Thomas Anderson devient Neo la nuit venue. Sous ce pseudonyme, il est l\'un des pirates les plus recherchés du cyber-espace...', 'http://filmcomplet.la/26186-matrix.html', 'img/cover-matrix.jpg', '1999-06-23', 3),
(12, 'Interstellar', 'Dans un futur proche, la Terre est de moins en moins accueillante pour l\'humanité qui connaît une grave crise alimentaire...', 'http://filmcomplet.la/25213-interstellar.html', 'img/cover-interstellar.jpg', '2014-11-05', 3),
(13, 'Tyson', 'A travers des images d\'archives et son témoignage, Mike Tyson retrace sa carrière. De ses premiers souvenirs d\'enfance jusqu\'à ses dilemmes actuels, l\'athlète controversé revient sur son enfance difficile et son ascension professionnelle qui fera de lui le plus grand champion poids lourds de l\'Histoire de la boxe.', 'https://www.youtube.com/watch?v=GOpEK3ejuHA', 'img/cover-tyson.jpg', '0000-00-00', 4),
(14, 'Vivre dans l\'espace', '\r\nLes records de l’univers: le plus chaud, le plus froid, le plus loin…', 'http://www.les-docus.com/les-records-de-lunivers/', 'img/cover-lesrecordsdelunivers.jpg', '0000-00-00', 4),
(15, 'Un jour sur terre', 'Périple spectaculaire à travers les saisons, qui nous transporte de l\'océan Arctique au printemps à l\'Antarctique en plein hiver. Des images d\'une beauté à couper le souffle, la vie qui palpite et bouillonne à chaque instant, sur le moindre centimètre carré de notre planète.', 'https://www.youtube.com/watch?v=k86dUKqqO0M', 'img/cover-unjoursurterre.jpg', '0000-00-00', 4),
(16, 'Toutes les forces', 'Découverte d\'un monde méconnu et controversé : le MMA.', 'https://www.youtube.com/watch?v=ws-Ld9lVH40', 'img/cover-mma.jpg', '0000-00-00', 4);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `token_expiration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
