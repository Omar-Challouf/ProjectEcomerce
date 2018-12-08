-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Sam 08 Décembre 2018 à 19:49
-- Version du serveur :  10.1.35-MariaDB-1
-- Version de PHP :  7.0.31-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ecomerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `category`
--

INSERT INTO `category` (`id`, `created_at`, `name`, `updated_at`) VALUES
(1, '2018-11-21 19:14:15', 'Ordinateur Portable', '2018-11-21 19:14:15'),
(2, '2018-11-21 22:03:46', 'Périphérique', '2018-11-21 22:03:46'),
(3, '2018-11-21 22:04:17', 'Stockage', '2018-11-21 22:04:17'),
(4, '2018-11-21 22:04:26', 'Serveurs', '2018-11-21 22:04:26'),
(5, '2018-11-21 22:04:51', 'Smart Phone & Mobile', '2018-11-21 22:04:51'),
(6, '2018-11-21 22:05:24', 'Accesoires Téléphonie', '2018-11-21 22:05:24'),
(7, '2018-11-21 22:06:17', 'Composants Informatique', '2018-11-21 22:06:17');

-- --------------------------------------------------------

--
-- Structure de la table `category_products`
--

CREATE TABLE `category_products` (
  `category_id` bigint(20) NOT NULL,
  `products_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `category_products`
--

INSERT INTO `category_products` (`category_id`, `products_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` bigint(20) NOT NULL,
  `cin` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id`, `cin`, `created_at`, `email`, `nom`, `prenom`, `updated_at`) VALUES
(1, 8776653, '2018-11-22 18:59:10', 'mohamed.tounsi@gmail.com', 'Mohamed', 'Tounsi', '2018-11-22 18:59:10'),
(2, 8297652, '2018-11-22 18:59:39', 'mariem.tounsi@gmail.com', 'Mariem', 'Tounsi', '2018-11-22 18:59:39'),
(3, 8297653, '2018-11-22 18:59:47', 'dalila.tounsi@gmail.com', 'Dalila', 'Tounsi', '2018-11-22 18:59:47');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `date` datetime DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `statut` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `client_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`id`, `created_at`, `date`, `reference`, `statut`, `updated_at`, `client_id`) VALUES
(5, '2018-11-25 12:04:13', '1970-01-18 21:35:10', 'Ord625/19', 'new', '2018-11-25 12:04:13', 1),
(6, '2018-11-25 12:04:59', '1970-01-18 21:35:10', 'Ord625/20', 'new', '2018-11-25 12:04:59', 1),
(7, '2018-11-25 12:06:25', '1970-01-18 21:35:10', 'Ord625/21', 'new', '2018-11-25 12:06:25', 1),
(8, '2018-11-25 12:21:52', '1970-01-18 21:35:10', 'Ord625/23', 'new', '2018-11-25 12:21:52', 1),
(9, '2018-12-03 16:29:17', '1970-01-18 21:35:10', 'Ord625/22', 'new', '2018-12-03 16:29:17', 1),
(10, '2018-12-03 16:30:12', '1970-01-18 21:35:10', 'Ord625/23', 'new', '2018-12-03 16:30:12', 1),
(11, '2018-12-03 16:30:26', '1970-01-18 21:35:10', 'Ord625/25', 'new', '2018-12-03 16:30:26', 1),
(12, '2018-12-03 16:38:27', '1970-01-18 21:35:10', 'Ord625/26', 'new', '2018-12-03 16:38:27', 1),
(13, '2018-12-03 16:38:29', '1970-01-18 21:35:10', 'Ord625/24', 'new', '2018-12-03 16:38:29', 1),
(14, '2018-12-03 16:41:40', '1970-01-18 21:35:10', 'Ord625/29', 'new', '2018-12-03 16:41:40', 1),
(15, '2018-12-03 16:42:58', '1970-01-18 21:35:10', 'Ord625/29', 'new', '2018-12-03 16:42:58', 1),
(16, '2018-12-03 17:22:34', '1970-01-01 05:17:36', 'okoko', 'new', '2018-12-03 17:22:34', 1),
(17, '2018-12-04 06:46:22', '1970-01-01 05:17:36', 'test', 'new', '2018-12-04 06:46:22', 1),
(18, '2018-12-04 06:51:11', '1970-01-01 05:17:36', 'test', 'new', '2018-12-04 06:51:11', 1),
(19, '2018-12-04 06:53:32', '1970-01-01 05:17:36', 'testOrder', 'new', '2018-12-04 06:53:32', 1),
(20, '2018-12-04 06:55:54', '1970-01-01 05:17:36', 'testOrder', 'new', '2018-12-04 06:55:54', 1),
(21, '2018-12-04 06:56:02', '1970-01-01 05:17:36', 'testOrder', 'new', '2018-12-04 06:56:02', 1),
(22, '2018-12-04 07:00:22', '1970-01-01 05:17:36', 'testOrder', 'new', '2018-12-04 07:00:22', 1),
(23, '2018-12-04 07:00:51', '1970-01-01 05:17:36', 'testOrder', 'new', '2018-12-04 07:00:51', 1),
(24, '2018-12-04 07:01:51', '1970-01-01 05:17:36', 'testOrder', 'new', '2018-12-04 07:01:51', 1),
(25, '2018-12-04 08:18:03', '1970-01-01 06:36:21', 'Ord625/30', 'new', '2018-12-04 08:18:03', 1),
(26, '2018-12-04 08:22:01', '1970-01-07 01:52:35', 'Ord625/3030', 'new', '2018-12-04 08:22:01', 1),
(27, '2018-12-04 08:22:51', '1970-01-07 01:52:35', 'Ord625/30', 'new', '2018-12-04 08:22:51', 1),
(28, '2018-12-04 08:27:38', '1970-01-07 01:52:35', 'Ord625/31', 'new', '2018-12-04 08:27:38', 1),
(29, '2018-12-04 08:28:46', '1970-01-07 01:52:35', 'Ord625/32', 'new', '2018-12-04 08:28:46', 1),
(30, '2018-12-04 11:47:58', '1970-01-07 01:52:35', 'Ord625/33', 'new', '2018-12-04 11:47:58', 1),
(31, '2018-12-05 10:45:17', '1970-01-07 01:52:35', 'Ord625/34', 'new', '2018-12-05 10:45:17', 1);

-- --------------------------------------------------------

--
-- Structure de la table `commande_product`
--

CREATE TABLE `commande_product` (
  `commande_id` bigint(20) NOT NULL,
  `prodcut_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commande_product`
--

INSERT INTO `commande_product` (`commande_id`, `prodcut_id`) VALUES
(5, 3),
(6, 3),
(6, 5),
(7, 3),
(7, 6),
(8, 3),
(8, 6),
(9, 3),
(9, 5),
(10, 3),
(10, 5),
(11, 3),
(11, 5),
(12, 2),
(12, 1),
(13, 3),
(13, 6),
(14, 1),
(14, 6),
(15, 4),
(15, 6),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `date_sortie` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `disponible` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `prix` bigint(20) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `PathUrlImage` varchar(500) NOT NULL,
  `path_url_image` varchar(255) DEFAULT NULL,
  `remise` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `product`
--

INSERT INTO `product` (`id`, `created_at`, `date_sortie`, `description`, `disponible`, `name`, `prix`, `updated_at`, `category_id`, `PathUrlImage`, `path_url_image`, `remise`) VALUES
(1, '2018-11-21 19:20:46', '2018-11-21 19:20:46', 'Pc Portable HP Notebook 15-bw003nk Dual Core 4Go 500Go Noir (2YN15EA) Ecran: 15.6 HD LED  Processeur:AMD E2-9000e(1,5 GHz Up To 2 GHz, 1 Mo de mémoire cache, Dual-Core) RAM: 4 Go DDR4 - Disque Dur: 500 Go ', b'1', 'Pc Portable HP Notebook', 559, '2018-11-21 19:20:46', 1, './assets/pxxxx1.png', './assets/product_1.png', 'False'),
(2, '2018-11-21 22:15:03', '2018-11-21 22:15:03', 'Pc Portable LENOVO IP 110-15IBR Dual Core 4Go 500Go (80T7004PFG) Ecran 15.6\" HD LED, Intel Celeron Dual Core N3060 (1.60 GHz up to 2,48 GHz ,2Mo mémoire cache), RAM: 4Go, Disque Dur: 500Go', b'1', 'Pc Portable LENOVO ', 575, '2018-11-21 22:15:03', 1, './assets/product_2.png', './assets/product_2.png', 'True'),
(3, '2018-11-21 22:17:06', '2018-11-21 22:17:06', 'Pc Portable HP STREAM 11-y000nk Dual Core 2Go 32Go Bleu (Y3W44EA)Ecran 11,6\" HD LED - Processeur: Intel® Celeron® N3060 (1,6 GHz, jusqu à 2,48 GHz, 2 Mo de mémoire cache, 2 cœurs)  RAM: 4Go, Disque Dur: 500Go', b'1', 'Pc Portable HP ', 692, '2018-11-21 22:17:06', 1, './assets/product_3.jpeg', './assets/product_3.jpeg', 'False'),
(4, '2018-11-21 22:18:49', '2018-11-21 22:18:49', 'PC Portable LENOVO IP330-15IGM Dual Core 4Go 500Go Noir (81D100B9FG) Ecran 15.6\" LED HD (1366 x 768) - Processeur: Intel Celeron N4000 (1.10 GHz Up To 2.60 GHz) RAM: 4Go, Disque Dur: 500Go', b'1', 'PC Portable LENOVO IP330-', 752, '2018-11-21 22:18:49', 1, './assets/product_4.jpg', './assets/product_4.jpg', 'True'),
(5, '2018-11-22 01:21:55', '2018-11-22 01:21:55', 'Clavier HP Sans Fil', b'1', 'Clavier HP', 53, '2018-11-22 01:21:55', 2, './assets/product_5.jpg', './assets/product_5.jpg', 'False'),
(6, '2018-11-22 01:23:04', '2018-11-22 01:23:04', 'Disque Dur Dell 1 TO', b'1', 'Disque Dur Dell', 102, '2018-11-22 01:23:04', 3, './assets/product_6.jpg', './assets/product_6.jpg', 'True'),
(7, '2018-11-22 01:24:52', '2018-11-22 01:24:52', 'Serveur LENOVO SYSTEM X3250 M6 E3-1220 8Go (3633-ENG) X3250 M6 - Format: Rack 1U -Intel Xeon E3-1220 v6 4C (3.0 GHz up to 3.5 GHz, 8 Mo de mémoire cache, 4 cœurs) - Mémoire: 8Go DDR4 2400 MHz', b'1', 'Serveur LENOVO SYSTEM ', 2000, '2018-11-22 01:24:52', 4, './assets/product_7.jpg', './assets/product_7.jpg', 'False'),
(8, '2018-11-22 01:27:45', '2018-11-22 01:27:45', 'Ecran 5,8\" Super Retina HD 3D Touch-Face ID - -Resolution :2436 x 1125 pixels- Processeur: Apple A11 Bionic Hexa-core 2,39 GHz  RAM 3 Go', b'1', 'iPhone X 64Go - SpaceGrey ', 3200, '2018-11-22 01:27:45', 5, './assets/product_8.jpeg', './assets/product_8.jpeg', 'True'),
(9, '2018-11-22 01:29:01', '2018-11-22 01:29:01', 'Câble Iphone INKAX CK-49 data 3m White ', b'1', 'Câble Iphone 3m White ', 66, '2018-11-22 01:29:01', 6, './assets/product_9.jpeg', './assets/product_9.jpeg', 'Fasle'),
(10, '2018-11-22 01:31:00', '2018-11-22 01:31:00', 'Carte Graphique MANLI GeForce GT730  - Bus Standard: PCI-Express 2.0 - CUDA Cores: 96 - Taille mémoire vidéo: 4Go (4096 Mo)-  DDR3 - 64 Bits - Interfaces: 1 x Dual-Link DVI-I , 1 x HDMI , 1 x VGA', b'1', 'Carte Graphique GeForce  GT730 ', 66, '2018-11-22 01:31:00', 7, './assets/product_10.png', './assets/product_10.png', 'True');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category_products`
--
ALTER TABLE `category_products`
  ADD UNIQUE KEY `UK_fdnk3mk70n1rc08vw1cj65kqw` (`products_id`),
  ADD KEY `FKqwkr0l0xbluhhkm7s0c1tg8en` (`category_id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK79q1nginx2k3m83vi3bt3rlon` (`client_id`);

--
-- Index pour la table `commande_product`
--
ALTER TABLE `commande_product`
  ADD KEY `FKlq1dt7n2cf057jogwghy26xd7` (`prodcut_id`),
  ADD KEY `FKojvy3yrsnpje6xjlgp41os9nt` (`commande_id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `category_products`
--
ALTER TABLE `category_products`
  ADD CONSTRAINT `FKe9irm5a62pmolhvr468cip3v3` FOREIGN KEY (`products_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKqwkr0l0xbluhhkm7s0c1tg8en` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK79q1nginx2k3m83vi3bt3rlon` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `commande_product`
--
ALTER TABLE `commande_product`
  ADD CONSTRAINT `FKlq1dt7n2cf057jogwghy26xd7` FOREIGN KEY (`prodcut_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKojvy3yrsnpje6xjlgp41os9nt` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
