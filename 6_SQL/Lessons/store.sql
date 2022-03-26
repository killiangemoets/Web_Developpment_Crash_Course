-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2016 at 05:01 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `avatar` varchar(150) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email`, `password`, `avatar`, `join_date`) VALUES
(1, 'Michelle', 'Smith', 'michelle@gmail.com', '1234', 'images/sandy.jpg', '2014-02-18 20:17:26'),
(2, 'Ben', 'Barro', 'ben@gmail.com', '1234', 'images/ben.jpg', '2014-02-18 20:17:26'),
(3, 'William', 'Terry', 'william@gmail.com', '1234', 'images/william.jpg', '2014-02-18 20:17:26'),
(4, 'Sarah', 'Thompson', 'sarah@gmail.com', '1234', 'images/sarah.jpg', '2014-02-18 20:17:26'),
(5, 'Donald', 'Duck', 'donald@gmail.com', '1234', 'images/donald.jpg', '2014-02-18 20:17:26'),
(6, 'Beth', 'McAdams', 'beth@gmail.com', '1234', 'images/beth.jpg', '2014-02-18 20:17:26'),
(7, 'Henry', 'Wallace', 'henry@gmail.com', '1234', 'images/henry.jpg', '2014-02-20 19:58:41'),
(8, 'Corin', 'Sabbath', 'corin@gmail.com', '1234', 'images/corin.jpg', '2014-02-20 19:58:41'),
(9, 'George', 'Harris', 'george@yahoo.com', '1234', 'images/george.jpg', '2014-02-20 20:02:28'),
(10, 'Karen', 'White', 'karen@aol.com', '1234', 'images/karen.jpg', '2014-02-20 20:02:28'),
(11, 'Warren', 'Bartlet', 'warren@gmail.com', '1234', 'images/warren.jpg', '2014-02-20 20:07:19'),
(12, 'Steven', 'Wright', 'stevewright@aol.com', '1234', 'images/steve.jpg', '2014-02-20 20:07:19'),
(13, 'Bob', 'Sacramento', 'bob@yahoo.com', '1234', 'images/bob.jpg', '2014-02-20 20:07:19'),
(14, 'Shawn', 'Hurley', 'hurley@gmail.com', '1234', 'images/hurley.jpg', '2014-02-20 20:07:19'),
(15, 'Mark', 'Roast', 'mark@gmail.com', '1234', 'images/mark.jpg', '2014-02-20 20:07:19'),
(16, 'Barry', 'White', 'barrywhite@gmail.com', '1234', 'images/barry.jpg', '2014-02-20 20:07:19'),
(17, 'Roland', 'Groburg', 'roland@yahoo.com', '1234', 'images/roland.jpg', '2014-02-20 20:07:19'),
(18, 'Christian', 'Hayhouse', 'christian@gmail.com', '1234', 'images/christian.jpg', '2014-02-20 20:07:19'),
(19, 'Kelly', 'Bark', 'kelly@gmail.com', '1234', 'images/kelly.jpg', '2014-02-20 20:07:19'),
(20, 'Greg', 'Thompson', 'greg@yahoo.com', '1234', 'images/greg.jpg', '2014-02-20 20:07:19'),
(21, 'Brad', 'Traversy', 'brad@techguywebsolutions.com', '81dc9bdb52d04dc20036dbd8313ed055', '', '2014-02-22 20:52:50'),
(22, 'Peter', 'Smith', 'petersmith@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '', '2014-02-22 21:01:52'),
(23, 'Steven', 'Thompson', 'steventhompson@gmail.com', '74be16979710d4c4e7c6647856088456', '', '2014-02-22 21:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `address2` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zipcode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `customer`, `address`, `address2`, `city`, `state`, `zipcode`) VALUES
(1, 1, '10 Albany st', '', 'Boston', 'MA', '02201'),
(2, 2, '12 Rushmont st', 'Apt 3', 'New York City', 'NY', '10026'),
(3, 3, '33 Vernon st', '', 'Seaside Heights', 'NJ', '08751'),
(4, 4, '22 Market st', 'Unit 10', 'Baltimore', 'MD', '21075'),
(5, 5, '404 Dorch Ave', 'Apt 18', 'Miami', 'FL', '33010'),
(6, 6, '110 Montvale Ave', '', 'Chicago', 'IL', '60652'),
(25, 7, '605 Mass Ave', 'Apt 12', 'Boston', 'MA', '02201'),
(26, 8, '99 Pots Way', '', 'Chicago', 'IL', '60632'),
(27, 9, '55 Pond St', 'Unit 66', 'Miami', 'FL', '33010'),
(28, 10, '777 Moxy Rd', '', 'Baltimore', 'MD', '21075'),
(29, 11, '44 Main St', '', 'Amesbury', 'MA', '01913'),
(30, 12, '77 Carriage Hill Rd', 'Building 4, Apt 8', 'Amesbury', 'MA', '01913'),
(31, 13, '77 Seymore Lane', '', 'Chicago', 'IL', '60632'),
(32, 14, '99 Barns Ave', 'Building 12, Apt 22', 'New York City', 'NY', '10026'),
(33, 15, '88 Woodbury Ave', 'Apt 6', 'New York City', 'NY', '10027'),
(34, 16, '444 Vale Rd', '', 'New York City', 'NY', '10028'),
(35, 21, '89 West Main st', 'Tech Guy Computer Services', 'Merrimac', 'Massachusetts', '01860'),
(36, 22, '555 Washington st', '', 'Boston', 'MA', '01311'),
(37, 23, '555 School st', '', 'Boston', 'MA', '01311');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer`, `product`) VALUES
(1, 1, 5),
(2, 2, 6),
(3, 1, 12),
(4, 6, 10),
(5, 1, 7),
(6, 2, 12),
(7, 3, 6),
(8, 4, 13),
(9, 18, 1),
(10, 11, 5),
(11, 12, 10),
(12, 8, 5),
(13, 18, 5),
(14, 17, 8),
(15, 16, 5),
(16, 10, 12),
(17, 16, 1),
(18, 15, 12),
(19, 12, 12),
(20, 10, 5),
(21, 11, 4),
(22, 14, 13),
(23, 15, 4),
(24, 13, 11),
(25, 1, 11),
(26, 3, 4),
(27, 15, 3),
(28, 16, 1),
(29, 2, 11);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `category` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category`, `image`, `create_date`) VALUES
(1, 'Android Phone', 'This is an Android based smartphone', '300', 1, '', '2014-02-18 12:34:13'),
(3, 'Microsoft Surface Tablet', 'Microsoft Surface Pro with 128GB Memory', '500', 1, 'images/surface.jpg', '2014-02-18 19:51:47'),
(4, 'Nextbook Tablet', 'Nextbook 7 inch Tablet 8GB Memory', '100', 1, 'images/nextbook.jpg', '2014-02-18 19:51:47'),
(5, 'Philips BTM2180/37 Micro Music System', 'Wireless music streaming via Bluetooth', '150', 1, 'images/stereo.jpg', '2014-02-18 19:51:47'),
(6, 'Memorex Boombox', 'Memorex MP3142 - Boombox', '46', 1, 'images/boombox.jpg', '2014-02-18 19:51:47'),
(7, 'Mossy Oak Infinity Seat Cover', 'High quality, heavy Mossy Oak Infinity Seat Cover', '20', 6, 'images/seatcover1.jpg', '2014-02-18 19:51:47'),
(8, 'Remington Floor Mat Set', 'Remington Best Fashion Carpet Floor Mat Set Tan 4pc', '30', 1, 'images/floormat1.jpg', '2014-02-18 19:51:47'),
(9, 'Rawlings RBG36 Baseball Glove', 'Rawlings RBG36 Baseball Glove 12 inch', '30', 5, 'images/glove1.jpg', '2014-02-18 19:51:47'),
(10, 'Franklin Pro Batting Gloves', 'Franklin Sports MLB Shok-Sorb Pro Batting Glove Pair', '20', 5, 'images/glove2.jpg', '2014-02-18 19:51:47'),
(11, 'Golds Gym Trainer 420', 'NEW Gold''s Gym Trainer 420 Treadmill with Bonus Puzzle Mat', '377', 5, 'images/treadmill1.jpg', '2014-02-18 19:51:47'),
(12, 'Weslo Cadence G 5.9 Treadmill', 'Weslo Cadence G 5.9 Treadmill', '287', 5, 'images/treadmill2.jpg', '2014-02-18 19:51:47'),
(13, 'Golds Gym Trainer 315 Treadmill', 'Gold''s Gym Trainer 315 New Model Treadmill', '258', 5, 'images/treadmill3.jpg', '2014-02-18 19:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `description`, `image`) VALUES
(1, 'Electronics', 'This is the electronics category', 'images/electronics.jpg'),
(3, 'Fashion', 'The latest fashions and accessories', 'images/fashion.jpg'),
(4, 'Music', 'Music instruments and albums', 'images/music.jpg'),
(5, 'Sporting Goods', 'Jerseys, equipment and more', 'images/sports.jpg'),
(6, 'Auto', 'Auto parts and accessories', 'images/auto.jpg'),
(7, 'Home & Garden', 'Products for your home', 'images/home.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `rating` int(2) NOT NULL,
  `customer` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `review_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `title`, `body`, `rating`, `customer`, `product`, `review_date`) VALUES
(9, 'Great Product', 'This product was great', 9, 2, 6, '2014-02-18 20:22:33'),
(10, 'Okay Product', 'This product was okay', 6, 1, 5, '2014-02-18 20:22:33'),
(11, 'Decent Product', 'This product was decent', 8, 1, 12, '2014-02-18 20:22:33'),
(12, 'Bad Product', 'This product was really bad', 2, 6, 10, '2014-02-18 20:22:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer` (`customer`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer` (`customer`),
  ADD KEY `product` (`product`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer` (`customer`),
  ADD KEY `product` (`product`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD CONSTRAINT `customer_addresses_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `customers` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category`) REFERENCES `product_categories` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`product`) REFERENCES `products` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
