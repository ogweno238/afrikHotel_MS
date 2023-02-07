

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `afrik_hotel_db`
--
CREATE DATABASE IF NOT EXISTS `afrik_hotel_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `afrik_hotel_db`;

-- --------------------------------------------------------

--
-- Table structure for table `combo`
--

CREATE TABLE IF NOT EXISTS `combo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comboname` varchar(100) NOT NULL,
  `combolist` varchar(100) NOT NULL,
  `mcat` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `combo`
--

INSERT INTO `combo` (`id`, `comboname`, `combolist`, `mcat`) VALUES
(1, '250', '1 soup/3 main course/1 salad/1 desert/rice/soft drinks', 'lunch_and_dinner'),
(2, '315', '1 soup/4 main course/1 salad/1 desert/rice/soft drinks', 'lunch_and_dinner'),
(3, '400', '1 soup/4 main course/2 salad/2 desert/rice/soft drinks', 'lunch_and_dinner'),
(4, '285', '2 pasta/2 meat/3 bread/2 dessert/softdrinks', 'breakfast');

-- --------------------------------------------------------

--
-- Table structure for table `falied`
--

CREATE TABLE IF NOT EXISTS `falied` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attempt` int(11) NOT NULL,
  `time` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `falied`
--

INSERT INTO `falied` (`id`, `attempt`, `time`) VALUES
(1, 0, '07:26:18');

-- --------------------------------------------------------

--
-- Table structure for table `functionhall`
--

CREATE TABLE IF NOT EXISTS `functionhall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `functionhall`
--

INSERT INTO `functionhall` (`id`, `picture`, `description`) VALUES
(1, '1.jpg', 'welcome to afrik hotel'),
(2, '2.jpg', 'High Quality Tables'),
(3, '3.jpg', 'Reception'),
(4, '4.jpg', 'cool resting place');

-- --------------------------------------------------------

--
-- Table structure for table `maincategory`
--

CREATE TABLE IF NOT EXISTS `maincategory` (
  `mc_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`mc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `maincategory`
--

INSERT INTO `maincategory` (`mc_id`, `name`) VALUES
(1, 'specialty'),
(2, 'breakfast'),
(3, 'lunch_and_dinner');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mcat` varchar(100) NOT NULL,
  `scat` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` varchar(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `mcat`, `scat`, `name`, `description`, `price`, `image`) VALUES
(1, 'lunch_and_dinner', 'chicken', 'Chicken Cordon Bleu', 'Chicken Cordon Bleu', '', '297368_343362655748812_392826044_n.jpg'),
(2, 'lunch_and_dinner', 'chicken', 'Thai Chicken in Pumpkin Curries', 'Thai Chicken in Pumpkin Curries', '', 'Thai Chicken in Pumpkin Curries.jpg'),
(3, 'lunch_and_dinner', 'chicken', 'Chicken Galantina', 'Chicken Galantina', '', 'Chicken Galantina.jpg'),
(4, 'lunch_and_dinner', 'beef', 'Baby Back Ribs', 'Baby Back Ribs', '', 'Baby Back Ribs.jpg'),
(5, 'lunch_and_dinner', 'beef', 'Beef tenderloin with rosemary', 'Beef tenderloin with rosemary', '', 'Beef tenderloin with rosemary.jpg'),
(6, 'lunch_and_dinner', 'beef', 'Savory Spare Ribs', 'Savory Spare Ribs', '', 'Savory Spare Ribs.jpg'),
(7, 'lunch_and_dinner', 'soup', 'Pancit Molo', 'Pancit Molo', '', 'Pancit Molo.jpg'),
(8, 'lunch_and_dinner', 'fish', 'Fish Fillet in Tartar Sauce', 'Fish Fillet in Tartar Sauce', '', 'Fish Fillet in Tartar Sauce.jpg'),
(9, 'lunch_and_dinner', 'fish', 'Fish Shawarma', 'Fish Shawarma', '', 'Fish Shawarma.jpg'),
(10, 'lunch_and_dinner', 'fish', 'Fish Sweet & Sour', 'Fish Sweet & Sour', '', 'Fish Sweet & Sour.jpg'),
(11, 'lunch_and_dinner', 'salad', 'Macaroni Salad', 'Macaroni Salad', '', 'aa.jpg'),
(12, 'lunch_and_dinner', 'soup', 'corn soup', 'corn soup', '', 'corn soup.jpg'),
(13, 'lunch_and_dinner', 'soup', 'cauliflower soup', 'cauliflower soup', '', 'cauliflowersoup.jpg'),
(14, 'lunch_and_dinner', 'soup', 'creamy mushroom soup', 'creamy mushroom soup', '', 'CREAMY MUSHROOM SOUP.jpg'),
(15, 'lunch_and_dinner', 'salad', 'Chicken Macaroni', 'Chicken Macaroni', '', 'Chicken Macaroni.jpg'),
(16, 'lunch_and_dinner', 'salad', 'Vegetable Salad', 'Vegetable Salad', '', 'Vegetable Salad.jpg'),
(17, 'lunch_and_dinner', 'dessert', 'Buko Pandan', 'Buko Pandan', '', 'Buko Pandan,d.jpg'),
(18, 'lunch_and_dinner', 'dessert', 'leche flan', 'leche flan', '', 'leche flan,d.jpg'),
(19, 'lunch_and_dinner', 'dessert', 'Black Sambo', 'Black Sambo', '', 'Black Sambo,d.jpg'),
(20, 'lunch_and_dinner', 'dessert', 'Brazo de Mercedes', 'Brazo de Mercedes', '', 'Brazo de Mercedes,d.jpg'),
(21, 'lunch_and_dinner', 'beef', 'Beef Misono', 'Beef Misono', '', 'b,Beef Misono.jpg'),
(22, 'lunch_and_dinner', 'beef', 'beef  salpicao', 'beef  salpicao', '', 'b,Beef Salpicao.jpg'),
(23, 'lunch_and_dinner', 'beef', 'beef teriyaki', 'beef teriyaki', '', 'b,Beef Teriyaki.jpg'),
(24, 'lunch_and_dinner', 'pork', 'Pork Estofado', 'Pork Estofado', '', 'p,Pork Estofado.jpg'),
(25, 'lunch_and_dinner', 'pork', 'Pork Roast', 'Pork Roast', '', 'Pork Roast.jpg'),
(26, 'lunch_and_dinner', 'fish', 'Steamed Fish', 'Steamed Fish', '', 'f,Steamed Fish.jpg'),
(27, 'lunch_and_dinner', 'fish', 'Fish Salpicao', 'Fish Salpicao', '', 'Fish Salpicao..jpg'),
(28, 'lunch_and_dinner', 'pasta_noddles', 'Pancit Guisado', 'Pancit Guisado\r\n', '', 'Pancit Guisado.jpg'),
(29, 'lunch_and_dinner', 'pasta_noddles', 'lasagna', 'lasagna', '', 's,lasagna.jpg'),
(30, 'lunch_and_dinner', 'vegetables', 'chop suey', 'chop suey', '', 'v,chop suey.jpg'),
(31, 'lunch_and_dinner', 'vegetables', 'Vegetable Salad', 'Vegetable Salad', '', 'Vegetable Salad.jpg'),
(32, 'specialty', 'pork', 'barbequed pork', 'barbequed pork', '100', 'barbequed pork.jpg'),
(33, 'specialty', 'pork', 'glazed pork', 'glazed pork', '200', 'glazed pork.jpg'),
(34, 'specialty', 'chicken', 'Chicken Cordon Bleu', 'Chicken Cordon Bleu', '400', 'Chicken Cordon Bleu.jpg'),
(35, 'specialty', 'dessert', 'chocolate cake', 'chocolate cake', '400', 'chocolate cake..jpg'),
(36, 'specialty', 'dessert', 'empanada', 'empanada', '300', 'empanada.jpg'),
(37, 'specialty', 'chicken', 'chicken lollipop', 'chicken lollipop', '250', 'chicken lollipop.jpg'),
(38, 'specialty', 'fish', 'Rellenong Bangus', 'Rellenong Bangus', '200', 'Rellenong Bangus.jpg'),
(39, 'specialty', 'fish', 'Seafood Thermido', 'Seafood Thermido', '150', 'Seafood Thermido.jpg'),
(40, 'specialty', 'beef', 'tenderloin,', 'tenderloin,', '250', 'tenderloin,.jpg'),
(41, 'specialty', 'chicken', 'Chicken a la King', 'Chicken a la King', '121', 'Chicken a la King.jpg'),
(42, 'specialty', 'chicken', 'Chicken Galantina', 'Chicken Galantina', '200', 'Chicken galintina.jpg'),
(43, 'specialty', 'soup', 'Butternut Squash soup', 'Butternut Squash soup', '75', 'Butternut Squash soup.jpg'),
(44, 'specialty', 'soup', 'Ball soup', 'Ball soup', '75', 'Ball soup.jpg'),
(45, 'specialty', 'soup', 'Cream of Broccoli soup', 'Cream of Broccoli soup', '120', 'Cream of Broccoli soup.jpg'),
(46, 'specialty', 'soup', 'Roasted Carrot Soup', 'Roasted Carrot Soup', '120', 'Roaste Carrot Soup.jpg'),
(47, 'specialty', 'drinks', 'softdrinks', 'softdrinks', '15', 'cola-cola.jpg'),
(48, 'merienda', 'drinks', 'softdrinks', 'softdrinks', '', 'cola-cola.jpg'),
(49, 'lunch_and_dinner', 'drinks', 'softdrinks', 'softdrinks', '', 'cola-cola.jpg'),
(50, 'specialty', 'dessert', 'buko pie', 'buko pie', '50', 'buko pie.jpg'),
(51, 'breakfast', 'pasta_noddles', 'lasagna', 'lasagna', '', 's,lasagna.jpg'),
(52, 'breakfast', 'dessert', 'Brazo de Mercedes', 'Brazo de Mercedes', '', 'Brazo de Mercedes,d.jpg'),
(53, 'breakfast', 'dessert', 'Buko Pandan', 'Buko Pandan\r\n', '', 'Buko Pandan,d.jpg'),
(54, 'breakfast', 'dessert', 'Mango Float ', 'Mango Float', '', 'Mango Float ,d.jpg'),
(55, 'breakfast', 'dessert', 'leche flan', 'leche flan', '', 'leche flan,d.jpg'),
(56, 'breakfast', 'meat', 'barbeque pork', 'barbeque pork', '', 'barbequed pork.jpg'),
(57, 'breakfast', 'meat', 'chicken lollipop', 'chicken lollipop', '', 'chicken lollipop.jpg'),
(58, 'breakfast', 'meat', 'Chicken Cordon Bleu', 'Chicken Cordon Bleu', '', 'Chicken Cordon Bleu.jpg'),
(59, 'breakfast', 'meat', 'Chicken galintina', 'Chicken galintina', '', 'Chicken galintina.jpg'),
(60, 'breakfast', 'bread', 'egg sandwich', 'egg sandwich', '', 'egg sandwich.jpg'),
(61, 'breakfast', 'bread', 'garlic bread', 'garlic bread', '', 'garlic bread.jpg'),
(62, 'breakfast', 'bread', 'garlic cheese  breadgarlic ', 'garlic cheese  bread', '', 'garlic cheese  bread.jpg'),
(63, 'breakfast', 'bread', 'toasted bread', 'toasted bread', '', 'toasted bread.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menu_res`
--

CREATE TABLE IF NOT EXISTS `menu_res` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `res_id` varchar(100) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=272 ;

--
-- Dumping data for table `menu_res`
--

INSERT INTO `menu_res` (`id`, `res_id`, `menu`, `price`) VALUES
(245, 'RS-ON5K6QU0', '13', ''),
(246, 'RS-ON5K6QU0', '18', ''),
(247, 'RS-ON5K6QU0', '23', ''),
(248, 'RS-WNV73FKW', '33', '100'),
(249, 'RS-WNV73FKW', '34', '200'),
(250, 'RS-RMV0W5HK', '40', '100'),
(251, 'RS-C5SLOT5W', '60', ''),
(252, 'RS-C5SLOT5W', '61', ''),
(253, 'RS-C5SLOT5W', '53', ''),
(254, 'RS-K3BVHWKH', '60', ''),
(255, 'RS-RVCRLVRE', '32', '100'),
(256, 'RS-RVCRLVRE', '33', '200'),
(257, 'RS-RVCRLVRE', '34', '400'),
(258, 'RS-RVCRLVRE', '35', '400'),
(259, 'RS-RVCRLVRE', '36', '300'),
(260, 'RS-RVCRLVRE', '37', '250'),
(261, 'RS-RVCRLVRE', '38', '200'),
(262, 'RS-RVCRLVRE', '39', '150'),
(263, 'RS-RVCRLVRE', '40', '250'),
(264, 'RS-RVCRLVRE', '41', '121'),
(265, 'RS-RVCRLVRE', '42', '200'),
(266, 'RS-RVCRLVRE', '43', '75'),
(267, 'RS-RVCRLVRE', '44', '75'),
(268, 'RS-RVCRLVRE', '45', '120'),
(269, 'RS-RVCRLVRE', '46', '120'),
(270, 'RS-RVCRLVRE', '47', '15'),
(271, 'RS-RVCRLVRE', '50', '50');

-- --------------------------------------------------------

--
-- Table structure for table `afrik_member`
--

CREATE TABLE IF NOT EXISTS `afrik_member` (
  `prm_id` int(11) NOT NULL AUTO_INCREMENT,
  `pt_name` varchar(200) NOT NULL,
  `prm_member` varchar(200) NOT NULL,
  PRIMARY KEY (`prm_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `afrik_member`
--

INSERT INTO `afrik_member` (`prm_id`, `pt_name`, `prm_member`) VALUES
(1, 'rodgy', 'Paradox');

-- --------------------------------------------------------

--
-- Table structure for table `afrik_team`
--

CREATE TABLE IF NOT EXISTS `afrik_team` (
  `pt_id` int(11) NOT NULL AUTO_INCREMENT,
  `pt_name` varchar(200) NOT NULL,
  `pt_leader` varchar(200) NOT NULL,
  PRIMARY KEY (`pt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `afrik_team`
--

INSERT INTO `afrik_team` (`pt_id`, `pt_name`, `pt_leader`) VALUES
(1, 'rodgy', 'rodgers');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `res_id` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `type_res` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `pax` varchar(100) NOT NULL,
  `combo` int(11) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `type_catering` varchar(100) NOT NULL,
  `team` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `resdate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=155 ;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `res_id`, `firstname`, `lastname`, `address`, `contact`, `type_res`, `date`, `pax`, `combo`, `amount`, `type_catering`, `team`, `status`, `time`, `resdate`) VALUES
(142, 'RS-JRTCYWBT', 'rodgy', 'oduor', '56808-00200', '0704445453', 'catering', '07/14/2019', '30', 0, '0', 'lunch_and_dinner', '', 'Pending', '12AM', '07/14/2019'),
(143, 'RS-ON5K6QU0', 'JAVA', 'oduor', '56808-00200', '0704445453', 'catering', '07/15/2019', '30', 2, '9450', 'lunch_and_dinner', '', 'Pending', '12AM', '07/14/2019'),
(144, 'RS-WNV73FKW', 'Rodgers Oduor', 'oduor', '56808-00200', '0704445453', 'catering', '07/15/2019', '30', 0, '300', 'specialty', '', 'Pending', '12AM', '07/14/2019'),
(145, 'RS-RMV0W5HK', 'rodgy', 'oduor', '56808-00200', '0704445453', 'food', '07/14/2019', '60', 0, '100', 'specialty', '', 'Pending', '12AM', '07/14/2019'),
(146, 'RS-EHBAXZ5Z', 'rodgy', 'oduor', '56808-00200, 48', '09797', 'food', '07/15/2019', '30', 4, '8550', 'specialty', '', 'Pending', '12AM', '07/15/2019'),
(147, 'RS-EHBAXZ5Z', 'rodgy', 'oduor', '56808-00200, 48', '09797', 'food', '07/15/2019', '30', 4, '8550', 'merienda', '', 'Pending', '12AM', '07/15/2019'),
(148, 'RS-EHBAXZ5Z', 'rodgy', 'oduor', '56808-00200, 48', '09797', 'food', '07/15/2019', '30', 4, '8550', 'merienda', '', 'Pending', '12AM', '07/15/2019'),
(149, 'RS-EHBAXZ5Z', 'rodgy', 'oduor', '56808-00200, 48', '09797', 'food', '07/15/2019', '30', 4, '8550', 'breakfast', '', 'Pending', '12AM', '07/15/2019'),
(150, 'RS-C5SLOT5W', 'rodgy', 'oduor', '56808-00200, 48', '4454544', 'food', '07/15/2019', '34', 4, '9690', 'breakfast', '', 'Pending', '12AM', '07/15/2019'),
(151, 'RS-K3BVHWKH', 'rodgy', 'oduor', '56808-00200, 48', '3434', 'food', '07/15/2019', '30', 4, '8550', 'specialty', '', 'Pending', '12AM', '07/15/2019'),
(152, 'RS-K3BVHWKH', 'rodgy', 'oduor', '56808-00200, 48', '3434', 'food', '07/15/2019', '30', 4, '8550', 'breakfast', '', 'Pending', '12AM', '07/15/2019'),
(153, 'RS-RVCRLVRE', 'rodgy', 'oduor', '56808-00200', '0704445453', 'food', '07/23/2019', '30', 0, '3026', 'specialty', '', 'Pending', '12AM', '07/23/2019'),
(154, 'RS-RVCRLVRE', 'rodgy', 'oduor', '56808-00200', '0704445453', 'food', '07/23/2019', '30', 0, '3026', 'specialty', '', 'Pending', '12AM', '07/23/2019');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `sc_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`sc_id`, `name`) VALUES
(1, 'soup'),
(2, 'salad'),
(3, 'bread'),
(4, 'meat'),
(5, 'drinks'),
(6, 'dessert'),
(7, 'beef'),
(8, 'pork'),
(9, 'chicken'),
(10, 'fish'),
(11, 'pasta_noddles'),
(12, 'vegetables');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE IF NOT EXISTS `suggestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `type_of_reservation`
--

CREATE TABLE IF NOT EXISTS `type_of_reservation` (
  `tr_id` int(11) NOT NULL AUTO_INCREMENT,
  `tr_description` varchar(100) NOT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=88 ;

--
-- Dumping data for table `type_of_reservation`
--

INSERT INTO `type_of_reservation` (`tr_id`, `tr_description`) VALUES
(1, 'catering'),
(2, 'catering'),
(3, 'catering'),
(4, 'catering'),
(5, 'catering'),
(6, 'catering'),
(7, 'catering'),
(8, 'catering'),
(9, 'functionroom'),
(10, 'functionroom'),
(11, 'functionroom'),
(12, 'functionroom'),
(13, 'catering'),
(14, 'catering'),
(15, 'catering'),
(16, 'functionroom'),
(17, 'catering'),
(18, 'catering'),
(19, 'catering'),
(20, 'catering'),
(21, 'catering'),
(22, 'catering'),
(23, 'functionroom'),
(24, 'catering'),
(25, 'catering'),
(26, 'catering'),
(27, 'catering'),
(28, 'catering'),
(29, 'catering'),
(30, 'catering'),
(31, 'catering'),
(32, 'catering'),
(33, 'catering'),
(34, 'catering'),
(35, 'catering'),
(36, 'catering'),
(37, 'catering'),
(38, 'catering'),
(39, 'catering'),
(40, 'catering'),
(41, 'catering'),
(42, 'catering'),
(43, 'functionroom'),
(44, 'catering'),
(45, 'catering'),
(46, 'catering'),
(47, 'catering'),
(48, 'catering'),
(49, 'catering'),
(50, 'catering'),
(51, 'catering'),
(52, 'catering'),
(53, 'catering'),
(54, 'functionroom'),
(55, 'catering'),
(56, 'functionroom'),
(57, 'catering'),
(58, 'catering'),
(59, 'catering'),
(60, 'catering'),
(61, 'catering'),
(62, 'catering'),
(63, 'catering'),
(64, 'functionroom'),
(65, 'catering'),
(66, 'afrik-meals'),
(67, 'catering'),
(68, 'catering'),
(69, 'catering'),
(70, 'catering'),
(71, 'catering'),
(72, 'catering'),
(73, 'catering'),
(74, 'catering'),
(75, 'catering'),
(76, 'catering'),
(77, 'catering'),
(78, 'food'),
(79, 'food'),
(80, 'food'),
(81, 'food'),
(82, 'food'),
(83, 'food'),
(84, 'food'),
(85, 'food'),
(86, 'food'),
(87, 'food');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `power` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `power`) VALUES
(1, 'admin', 'admin', 1),
(2, 'user', 'user', 0);

