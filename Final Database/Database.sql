-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2017 at 09:28 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `buys`
--

CREATE TABLE `buys` (
  `pid` int(11) NOT NULL,
  `cid` char(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buys`
--

INSERT INTO `buys` (`pid`, `cid`) VALUES
(101, '19053416'),
(103, '19031915'),
(104, '19031915'),
(201, '19051995'),
(301, '19053416'),
(302, '19072055'),
(303, '19072055'),
(501, '19031915'),
(601, '19031915'),
(1001, '19032017'),
(1003, '19031915'),
(1003, '19032017'),
(1102, '19051995'),
(1103, '19051995');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` char(10) NOT NULL,
  `cname` char(30) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `cname`, `phone`) VALUES
('19051995', 'Private User', '5000000001'),
('19032017', 'Private User', '5000000002'),
('19031915', 'Private User', '5000000003'),
('19072055', 'Private User', '5000000004'),
('19053416', 'Private User', '5000000005');

-- --------------------------------------------------------

--
-- Table structure for table `depart_man`
--

CREATE TABLE `depart_man` (
  `ssn` char(10) NOT NULL,
  `dname` char(20) DEFAULT NULL,
  `did` int(11) NOT NULL,
  `since` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `depart_man`
--

INSERT INTO `depart_man` (`ssn`, `dname`, `did`, `since`) VALUES
('921534542', 'Technology', 1, '2015-12-12'),
('912314777', 'Furniture', 2, '2016-04-13'),
('954544512', 'Vegetables', 3, '2015-02-23'),
('912314777', 'Beverages', 4, '2016-10-30'),
('954544512', 'Household', 5, '2017-02-10'),
('927488956', 'Textile', 6, '2016-03-27'),
('927488956', 'Bakery', 7, '2015-06-06'),
('921534542', 'Meat', 8, '2017-01-24'),
('901212158', 'Spices and Oil', 9, '2015-05-09'),
('901212158', 'Dairy', 10, '2016-05-19'),
('954544512', 'Snacks', 11, '2016-11-21');

-- --------------------------------------------------------

--
-- Table structure for table `dep_policy`
--

CREATE TABLE `dep_policy` (
  `ssn` char(10) NOT NULL,
  `dpname` char(20) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `cost` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dep_policy`
--

INSERT INTO `dep_policy` (`ssn`, `dpname`, `age`, `cost`) VALUES
('921534542', 'Aytac', 15, 1000),
('921534542', 'Hasan', 10, 1000),
('912314777', 'Busra', 18, 1500),
('927488956', 'Mehmet', 7, 1200),
('985151212', 'Rana', 12, 1000),
('935512187', 'Tarik', 13, 900),
('935512187', 'Ali', 13, 900),
('935512187', 'Melis', 3, 900),
('954511512', 'Robin', 5, 800),
('954511512', 'Mahmut', 7, 800),
('912005777', 'Elif', 14, 500),
('927411956', 'Pinar', 9, 600),
('927411956', 'Salih', 4, 600),
('910254512', 'Berkay', 11, 1150),
('910254512', 'Burak', 8, 1150);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `ssn` char(10) NOT NULL,
  `ename` char(20) DEFAULT NULL,
  `gender` char(15) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`ssn`, `ename`, `gender`, `salary`) VALUES
('921534542', 'Private User', 'male', 5000),
('912314777', 'Private User', 'male', 7500),
('901212158', 'Private User', 'male', 4000),
('927488956', 'Private User', 'female', 5000),
('954544512', 'Private User', 'male', 8000),
('985151212', 'Private User', 'male', 2300),
('935512187', 'Private User', 'female', 1500),
('901832258', 'Private User', 'male', 3000),
('927477656', 'Private User', 'female', 1600),
('954511512', 'Private User', 'female', 2000),
('920534142', 'Private User', 'male', 3400),
('912005777', 'Private User', 'male', 1100),
('901212518', 'Private User', 'male', 2800),
('927411956', 'Private User', 'male', 3200),
('910254512', 'Private User', 'female', 4100);

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `ssn` char(10) NOT NULL,
  `email` char(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`ssn`, `email`) VALUES
('921534542', 'pv1@supermarket.com'),
('912314777', 'pv2@supermarket.com'),
('901212158', 'pv3@supermarket.com'),
('927488956', 'pv4@supermarket.com'),
('954544512', 'pv5@supermarket.com');

-- --------------------------------------------------------

--
-- Table structure for table `product_stores_supply`
--

CREATE TABLE `product_stores_supply` (
  `pid` int(11) NOT NULL,
  `pname` char(200) DEFAULT NULL,
  `brand` char(200) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `did` int(11) NOT NULL,
  `sname` char(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_stores_supply`
--

INSERT INTO `product_stores_supply` (`pid`, `pname`, `brand`, `price`, `did`, `sname`) VALUES
(1001, 'Kashar Cheese', 'Pinar', 14.99, 10, 'Pinar Sut Mamulleri A.S'),
(1002, '1L. Milk', 'Pinar', 2.85, 10, 'Pinar Sut Mamulleri A.S'),
(1003, '1KG. Yoghurt', 'Sutas', 2.5, 10, 'Sutas Sut Urunleri A.S'),
(101, 'G4', 'LG', 1750, 1, 'LG Electronics Ticaret A.S.'),
(102, 'G3', 'LG', 1500, 1, 'LG Electronics Ticaret A.S.'),
(103, 'Refrigerator', 'Arcelik', 1990, 1, 'Arcelik A.S'),
(104, 'Washing Machine', 'Arcelik', 1650, 1, 'Arcelik A.S'),
(501, 'Detergent', 'Omo', 13.55, 5, 'Unilever Sanayi ve Ticaret Turk A.S'),
(502, 'Shampoo', 'Elidor', 14.35, 5, 'Unilever Sanayi ve Ticaret Turk A.S'),
(503, 'Detergent', 'Alo', 15.2, 5, 'P&G Tuketim Mallari Sanayi A.S.'),
(504, 'Shampoo', 'Pantene', 12.99, 5, 'P&G Tuketim Mallari Sanayi A.S.'),
(301, 'Coca Cola 2.5L', 'Coca Cola', 4, 3, 'Coca Cola Icecek A.S'),
(302, 'Cherry Juice 1L', 'Cappy', 3.5, 3, 'Coca Cola Icecek A.S'),
(303, 'Erikli Water 0.5L', 'Erikli', 3.5, 3, 'Erikli Su ve Mesrubat A.S'),
(1101, 'Probis Biscuit', 'Ulker', 1.25, 11, 'Yildiz Holding A.S.'),
(1102, 'Rulokat', 'Ulker', 4.5, 11, 'Yildiz Holding A.S.'),
(601, 'Jacket', 'Zara', 119.9, 6, 'Inditex'),
(602, 'Pants', 'Koton', 54.9, 6, 'Inditex'),
(201, 'Wardrop', 'Ikea', 2250, 2, 'Mapa Mobilya A.S.');

-- --------------------------------------------------------

--
-- Table structure for table `sales_rep`
--

CREATE TABLE `sales_rep` (
  `ssn` char(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_rep`
--

INSERT INTO `sales_rep` (`ssn`) VALUES
('901212518'),
('901832258'),
('910254512'),
('912005777'),
('920534142'),
('927411956'),
('927477656'),
('935512187'),
('954511512'),
('985151212');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `sname` char(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`sname`) VALUES
('Arcelik A.S'),
('Brightstar Telekomunikasyon ve Dagitim Ltd.Sti'),
('Coca Cola Icecek A.S'),
('Coskun Et ve Mamulleri Sanayi ve Ticaret A.S.'),
('Erikli Su ve Mesrubat A.S'),
('Inditex'),
('LG Electronics Ticaret A.S.'),
('Mapa Mobilya A.S.'),
('P&G Tuketim Mallari Sanayi A.S.'),
('Pinar Sut Mamulleri A.S'),
('Sutas Sut Urunleri A.S'),
('Unilever Sanayi ve Ticaret Turk A.S'),
('Yildiz Holding A.S.');

-- --------------------------------------------------------

--
-- Table structure for table `works_in`
--

CREATE TABLE `works_in` (
  `ssn` char(10) NOT NULL,
  `did` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `works_in`
--

INSERT INTO `works_in` (`ssn`, `did`) VALUES
('901212518', 1),
('901212518', 8),
('901832258', 3),
('910254512', 10),
('912005777', 2),
('912005777', 7),
('920534142', 6),
('920534142', 11),
('927411956', 9),
('927477656', 4),
('935512187', 2),
('954511512', 5),
('985151212', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buys`
--
ALTER TABLE `buys`
  ADD PRIMARY KEY (`pid`,`cid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `depart_man`
--
ALTER TABLE `depart_man`
  ADD PRIMARY KEY (`did`),
  ADD KEY `ssn` (`ssn`);

--
-- Indexes for table `dep_policy`
--
ALTER TABLE `dep_policy`
  ADD PRIMARY KEY (`dpname`,`ssn`),
  ADD KEY `ssn` (`ssn`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`ssn`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`ssn`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `product_stores_supply`
--
ALTER TABLE `product_stores_supply`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `did` (`did`),
  ADD KEY `sname` (`sname`);

--
-- Indexes for table `sales_rep`
--
ALTER TABLE `sales_rep`
  ADD PRIMARY KEY (`ssn`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`sname`);

--
-- Indexes for table `works_in`
--
ALTER TABLE `works_in`
  ADD PRIMARY KEY (`ssn`,`did`),
  ADD KEY `did` (`did`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
