-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2016 at 12:19 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE IF NOT EXISTS `bids` (
  `ItemID` int(5) NOT NULL,
  `BidderID` int(4) NOT NULL,
  `BidAmount` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`ItemID`, `BidderID`, `BidAmount`) VALUES
(35, 1, 5900),
(59, 1, 3000),
(59, 1, 3200),
(68, 1, 3780);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `CategoryID` int(10) NOT NULL,
  `Category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `Category`) VALUES
(1, 'Electronics'),
(2, 'Watches'),
(3, 'Phones'),
(4, 'Fashion'),
(5, 'Clothes'),
(6, 'Shoes'),
(7, 'Kitchen');

-- --------------------------------------------------------

--
-- Table structure for table `feedbackprofile`
--

CREATE TABLE IF NOT EXISTS `feedbackprofile` (
  `FeedbackID` int(6) NOT NULL,
  `InvoiceNumber` int(6) NOT NULL,
  `Positive` tinyint(1) NOT NULL,
  `Description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `ItemID` int(10) NOT NULL,
  `ItemName` varchar(50) NOT NULL,
  `SellerID` int(10) DEFAULT NULL,
  `StartingPrice` int(6) NOT NULL,
  `ExpectedPrice` int(6) NOT NULL,
  `CurrentPrice` int(6) DEFAULT NULL,
  `PhotosID` varchar(20) DEFAULT NULL,
  `Description` varchar(6000) DEFAULT NULL,
  `CategoryID` int(10) NOT NULL,
  `EndTime` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ItemID`, `ItemName`, `SellerID`, `StartingPrice`, `ExpectedPrice`, `CurrentPrice`, `PhotosID`, `Description`, `CategoryID`, `EndTime`) VALUES
(29, 'Apple iPad 2 16GB', NULL, 56600, 63000, 56600, 'img/phone1.jpg', '\r\nApple iPad 2 16GB, Wi-Fi, 9.7in - Black\r\n\r\nDescription\r\n\r\nThis Ipad is in GOOD condition\r\nThe iPad is fully tested and works perfectly. Battery is still holding charge.\r\nWill show some minor scratching, ding or dent but nothing major. We would give it 7-8 out of 10\r\nThe Ipad does not come in the original retail package. It is repacked in our own box.\r\nIt comes with Apple Certified Wall Adapter and Cable (Brand can be Apple, Belkin, or Rocket-Fish)\r\nThis is the Wifi model. No Sim card required.\r\nManual is not included and can be downloaded from Apple website\r\nWe offer 60 days warranty\r\n\r\nWhat is in the package?\r\n\r\nApple iPad 2 16GB, Wi-Fi, 9.7in - Black\r\nApple Certified Wall Charger/Adapter\r\nApple Certified Data/Sync Cable', 3, '2016-09-30 00:00:00'),
(30, ' Samsung Galaxy S4 i545 4G LTE Smartphone ', NULL, 21500, 23000, 21500, 'img/phone3.jpg', 'Highlight Features:\r\n\r\n5" Super AMOLED Capacitive Multi-Touchscreen w/ Protective Corning Gorilla Glass 3\r\n\r\nQuad-Core 1.9 GHz Krait 300 Processor, Chipset: Qualcomm APQ864T Snapdragon 6, Adreno 320 Graphics\r\n\r\n13 Megapixel Camera (4128 x 3096 pixels) w/ Autofocus, LED flash + Front-Facing 2 ', 3, '2016-09-18 00:00:00'),
(31, 'Samsung Galaxy S4 MINI i257 ', NULL, 18000, 21600, 18000, 'img/phone4.jpg', 'â€œThis cell phone is in NEW Other condition, meaning there is no retail box as it was received in bulk. Cosmetically, the cell phone is in perfect or near condition, The screen is perfect, might be little minor scratches visible or not visible on housing from shipping etc. , The cell phone is tested well functional. The cell phone is UNLOCKED and is ready for all GSM carriers such as AT&T, T-Mobile Straight Talk, MetroPCS etc in the world. It does not work with any CDMA carriers such as Verizon, Sprint, Boost Mobile. Please contact us if there is any question.â€', 3, '2016-09-29 00:00:00'),
(32, 'Apple Iphone 6 Grigio 64Gb', NULL, 59000, 63900, 59000, 'img/phone5.jpg', 'â€œ\r\nApple Iphone 6 Grigio 64Gb in buono stato, con custodia e pellicole applicate....\r\n\r\nThis cell phone is in NEW Other condition, meaning there is no retail box as it was received in bulk. Cosmetically, the cell phone is in perfect or near condition, The screen is perfect, might be little minor scratches visible or not visible on housing from shipping etc. , The cell phone is tested well functional. The cell phone is UNLOCKED and is ready for all GSM carriers such as AT&T, T-Mobile Straight Talk, MetroPCS etc in the world. It does not work with any CDMA carriers such as Verizon, Sprint, Boost Mobile. Please contact us if there is any question.â€', 3, '2016-09-28 00:00:00'),
(33, 'UTStarcom CDM7126 - Silver black', NULL, 15000, 18200, 15000, 'img/phone6.jpg', '\r\nProduct Information\r\nSleek, compact, and powerful, the silver and black Cricket UTStarcom CDM7126 cellular phone is an excellent choice for users who seek reliability and performance. This UTStarcom mobile phone features a stunning color screen, flip style design, tri-band support, and a Li-ion battery with up to 311 minutes of talktime and up to 248 hours of standby time. Surf the Web quickly, connect multiple devices through Bluetooth technology, and enjoy downloading everything from ringtones to games to apps via this cellular phone. Users will be entertained for hours with Cricket games and apps available on this UTStarcom mobile phone. Speakerphone functionality, voice-activated dialing, and predictive text input all make communicating easier, while calculator, alarm, and calendar applications keep users on schedule and productive. The UTStarcom CDM7126 cellular phone keeps contacts organized in an easy-to-access contact directory. Weighing just 3 oz and measuring 3.6 inches high, 1.9 inches wide, and 0.7 inches deep, this UTStarcom mobile phone easily fits into pockets, purses, and briefcases.', 3, '2016-09-26 00:00:00'),
(34, 'Ulefone Paris X Android 5.1', NULL, 13000, 19200, 13000, 'img/phone7.jpg', 'Features:\r\n \r\nAndroid 5.1 (Lollipop) with 1.0GHz MT6735P Quad-Core processor and 2GB RAM +16GB ROM\r\nSupport 2G network: GSM 850/900/1800/1900 MHz\r\nSupport 3G network: WCDMA 900/2100 MHz              \r\nSupport 4G network: FDD-LTE Band 1/3/7/20 (2100/1800/2600/800MHz)\r\nDual SIM Card Dual Standby\r\n5.0 inch 10-point-touch IPS capacitive screen, with 1280*720 HD screen resolution\r\nRear Back Camera 8.0MP(interpolation 13.0MP) with flashlight and auto focus.\r\nFront 5.0 MP(interpolation 8.0MP) camera, make your selfies more distinctive\r\nUltra Experience--Wireless Update. Pre-installed Android 5.1 O.S. Lollipop, download plenty of apps on popular Play Store. Support wireless system update, one-stop, no pain solution for using your Ulefone ParisX.\r\nSupports most APK format Android game and applications.', 3, '2016-10-04 00:00:00'),
(35, 'Makita N3701 6mm (1/4") Electric Trimmer', NULL, 5600, 8400, 5900, 'img/elec1.jpg', '\r\nProduct Details\r\n\r\nModel Number: N3701\r\nProduct Type: 1/4" Trimmer\r\nPower Input: 440W\r\nWeight: 1.7kg\r\nNo Load Speed: 30,000rpm\r\nPower Supply Cord: 2.5m\r\nBase: 82 x 90mm\r\nOverall Length: 220mm\r\nCollet Size: 6mm (1/4")\r\nVoltage: 220V (Corded/Plug Type C)\r\nPlease check if the voltage indicated on the item corresponds with the main voltage in your home.', 1, '2016-09-27 00:00:00'),
(36, 'DeWALT DWE 6000 1/4"(6mm) Trimmer', NULL, 2100, 2900, 2100, 'img/elec2.jpg', 'NEW DeWALT DWE 6000 1/4"(6mm) Trimmer Tool  (AC 220V ) Tools Woodwork\r\n(Bits are not included)\r\n\r\nâ– Specifications\r\nâ–¶Product Type : 1/4" Trimmer \r\nâ–¶Voltage : 220V 390W (Plug Type C) \r\nâ–¶Collet Capacity : 6mm (1/4") \r\nâ–¶Weight : 2.1kg \r\nâ–¶No Load Speed : 30,000rpm \r\nâ–¶Size Length: 110mm x Height: 205mm\r\nâ–¶Plug type : C type\r\n', 1, '2016-09-28 00:00:00'),
(37, 'Rockwell HD Block Planer Model 167 ', NULL, 2100, 2900, 2100, 'img/elec3.jpg', ' We always try to provide the best service and high quality products for every customer and our goal is to make sure you have a pleasant shopping experience with us. If there is any issue, problem or unpleasant experience, please contact us to resolve any issue before leaving us a negative feedback or open any eBay or PayPal dispute. We promise to try our best to resolve the problem and usually that is what we do. Please give us the opportunity to resolve any problem because good communication is always the best way to solve any problem. If you are satisfied with our service, please leave us 5 star positive feedback. Your opinion counts and your recognition will make us more confident to develop a better business and serve you better. We will leave a positive feedback after receiving the full payment. All messages, emails or questions will be answered within 1 business day. If you do not receive our reply, please re-send your email and we will reply to you as soon as possible. We only accept payments via PayPal. So please kindly check if you have a PayPal account before purchasing. We offer 30 days money back guarantee return policy. Shipping & Refund', 1, '2016-09-30 00:00:00'),
(38, ' TERMOMETRO DIGITALE LASER AD INFRAROSSI', NULL, 3400, 4200, 3400, 'img/elec4.jpg', ' We always try to provide the best service and high quality products for every customer and our goal is to make sure you have a pleasant shopping experience with us. If there is any issue, problem or unpleasant experience, please contact us to resolve any issue before leaving us a negative feedback or open any eBay or PayPal dispute. We promise to try our best to resolve the problem and usually that is what we do. Please give us the opportunity to resolve any problem because good communication is always the best way to solve any problem. If you are satisfied with our service, please leave us 5 star positive feedback. Your opinion counts and your recognition will make us more confident to develop a better business and serve you better. We will leave a positive feedback after receiving the full payment. All messages, emails or questions will be answered within 1 business day. If you do not receive our reply, please re-send your email and we will reply to you as soon as possible. We only accept payments via PayPal. So please kindly check if you have a PayPal account before purchasing. We offer 30 days money back guarantee return policy. Shipping & Refund', 1, '2016-09-28 00:00:00'),
(39, 'Makita Akku-Lampe ML 100 10,8V ML100', NULL, 4100, 5100, 4100, 'img/elec5.jpg', ' We always try to provide the best service and high quality products for every customer and our goal is to make sure you have a pleasant shopping experience with us. If there is any issue, problem or unpleasant experience, please contact us to resolve any issue before leaving us a negative feedback or open any eBay or PayPal dispute. We promise to try our best to resolve the problem and usually that is what we do. Please give us the opportunity to resolve any problem because good communication is always the best way to solve any problem. If you are satisfied with our service, please leave us 5 star positive feedback. Your opinion counts and your recognition will make us more confident to develop a better business and serve you better. We will leave a positive feedback after receiving the full payment. All messages, emails or questions will be answered within 1 business day. If you do not receive our reply, please re-send your email and we will reply to you as soon as possible. We only accept payments via PayPal. So please kindly check if you have a PayPal account before purchasing. We offer 30 days money back guarantee return policy. Shipping & Refund', 1, '2016-09-24 00:00:00'),
(40, ' GENERATORE INVERTER MONO STAR MIG', NULL, 56800, 63000, 56800, 'img/elec6.jpg', ' We always try to provide the best service and high quality products for every customer and our goal is to make sure you have a pleasant shopping experience with us. If there is any issue, problem or unpleasant experience, please contact us to resolve any issue before leaving us a negative feedback or open any eBay or PayPal dispute. We promise to try our best to resolve the problem and usually that is what we do. Please give us the opportunity to resolve any problem because good communication is always the best way to solve any problem. If you are satisfied with our service, please leave us 5 star positive feedback. Your opinion counts and your recognition will make us more confident to develop a better business and serve you better. We will leave a positive feedback after receiving the full payment. All messages, emails or questions will be answered within 1 business day. If you do not receive our reply, please re-send your email and we will reply to you as soon as possible. We only accept payments via PayPal. So please kindly check if you have a PayPal account before purchasing. We offer 30 days money back guarantee return policy. Shipping & Refund', 1, '2016-09-26 00:00:00'),
(41, 'Mens Crew Neck Casual T-Shirts Gym Wear', NULL, 1200, 1600, 1200, 'img/cl1.jpg', 'Authentic Mens Causal/Training T-Shirts\r\nFitted Lycra Cotton Blend Material \r\n\r\n\r\n\r\n\r\n       Description \r\nMade From 90% Cotton 10& Elestine \r\nMachine Washable\r\nFitted Material\r\nAvailable In S,M,L,XL, Sizes\r\nIdeal For Training Or Casual Wear\r\nYou Against Yours Self Large Logo\r\nDanimal Wear Logos On side and Back\r\nUsed By Top Pro Body builders In The UK\r\nQuick Delivery', 5, '2016-09-29 00:00:00'),
(42, 'Vibrant Checked Shirt From Crew Clothing', NULL, 1200, 1600, 1200, 'img/cl2.jpg', 'Authentic Mens Causal/Training T-Shirts\r\nFitted Lycra Cotton Blend Material \r\n\r\n\r\n\r\n\r\n       Description \r\nMade From 90% Cotton 10& Elestine \r\nMachine Washable\r\nFitted Material\r\nAvailable In S,M,L,XL, Sizes\r\nIdeal For Training Or Casual Wear\r\nYou Against Yours Self Large Logo\r\nDanimal Wear Logos On side and Back\r\nUsed By Top Pro Body builders In The UK\r\nQuick Delivery', 5, '2016-09-27 00:00:00'),
(43, 'KISS Hockey Jersey', NULL, 2400, 3100, 2400, 'img/cl4.jpg', 'KISS hockey style jersey\r\n\r\nItem is from 1997 but never worn and in great condition!  From a smoke free home. \r\n\r\nJersey is labeled one size fits all on tag.\r\n\r\nIf you have any questions, please ask!', 5, '2016-09-30 00:00:00'),
(44, 'Concert All Over Art T-Shirt XL', NULL, 900, 1500, 900, 'img/cl5.jpg', 'KISS Psycho Circus Larger Than Life Mexico 1999 Concert All Over Art T-Shirt XLarge with chest measurement 44" (armpit to armpit then doubled) and length from collar to hem of 30". Worn and Washed from smoke free pet free home. No holes or stains.', 5, '2016-09-28 00:00:00'),
(45, 'Hose Braun GrÃ¶ÃŸe 152 fÃ¼r Jungen', NULL, 900, 1500, 900, 'img/cl6.jpg', 'KISS Psycho Circus Larger Than Life Mexico 1999 Concert All Over Art T-Shirt XLarge with chest measurement 44" (armpit to armpit then doubled) and length from collar to hem of 30". Worn and Washed from smoke free pet free home. No holes or stains.', 5, '2016-09-27 00:00:00'),
(46, 'TENNIS EVOLUTION OF MAN MENS T-SHIRT', NULL, 900, 1500, 900, 'img/cl7.jpg', 'KISS Psycho Circus Larger Than Life Mexico 1999 Concert All Over Art T-Shirt XLarge with chest measurement 44" (armpit to armpit then doubled) and length from collar to hem of 30". Worn and Washed from smoke free pet free home. No holes or stains.', 5, '2016-09-27 00:00:00'),
(47, ' Fashion Jewelry Pendant Bronze', NULL, 500, 750, 500, 'img/fs1.jpg', ' If you get defective item or we ship you the wrong item ,or the Item is not as described ,\r\n or the Item is damaged because of the international shipping ,do not worry , please contact us , we accept refund,\r\n or reshipment. Any non-received items caused by invalid address registered on PayPal are not in our \r\n full refund or replacement policy.\r\n', 4, '2016-09-28 00:00:00'),
(48, ' Silver Women Crystal Rhinestone Cubic', NULL, 500, 750, 500, 'img/fs2.jpg', ' If you get defective item or we ship you the wrong item ,or the Item is not as described ,\r\n or the Item is damaged because of the international shipping ,do not worry , please contact us , we accept refund,\r\n or reshipment. Any non-received items caused by invalid address registered on PayPal are not in our \r\n full refund or replacement policy.\r\n', 4, '2016-09-29 00:00:00'),
(49, 'Real green Four Leaf Clover', NULL, 600, 1000, 670, 'img/fs3.jpg', ' If you get defective item or we ship you the wrong item ,or the Item is not as described ,\r\n or the Item is damaged because of the international shipping ,do not worry , please contact us , we accept refund,\r\n or reshipment. Any non-received items caused by invalid address registered on PayPal are not in our \r\n full refund or replacement policy.\r\n', 4, '2016-09-18 00:00:00'),
(50, 'Water Drop Pendant Choker Necklace', NULL, 600, 0, 600, 'img/fs4.jpg', ' If you get defective item or we ship you the wrong item ,or the Item is not as described ,\r\n or the Item is damaged because of the international shipping ,do not worry , please contact us , we accept refund,\r\n or reshipment. Any non-received items caused by invalid address registered on PayPal are not in our \r\n full refund or replacement policy.\r\n', 4, '2016-09-28 00:00:00'),
(51, 'Water Drop Pendant Choker Necklace', NULL, 600, 900, 600, 'img/fs5.jpg', ' If you get defective item or we ship you the wrong item ,or the Item is not as described ,\r\n or the Item is damaged because of the international shipping ,do not worry , please contact us , we accept refund,\r\n or reshipment. Any non-received items caused by invalid address registered on PayPal are not in our \r\n full refund or replacement policy.\r\n', 4, '2016-09-29 00:00:00'),
(52, ' DOLLAR POUCH Charm Pendant', NULL, 600, 900, 600, 'img/fs6.jpg', ' If you get defective item or we ship you the wrong item ,or the Item is not as described ,\r\n or the Item is damaged because of the international shipping ,do not worry , please contact us , we accept refund,\r\n or reshipment. Any non-received items caused by invalid address registered on PayPal are not in our \r\n full refund or replacement policy.\r\n', 4, '2016-09-28 00:00:00'),
(53, 'Faucet Filter Water Filter Tap', NULL, 250, 520, 250, 'img/kt1.jpg', 'Features:\r\n100% Brand new and high quality\r\n\r\nColor:Random\r\n\r\nSpecifications:\r\nMaterial: Sponge\r\n\r\nPackage Including:\r\n1 X sponge filter\r\n\r\n', 7, '2016-09-28 00:00:00'),
(54, ' Novelty Fry Cutter Potato Cut into Strips', NULL, 360, 520, 412, 'img/kt2.jpg', 'Features:\r\n100% Brand new and high quality\r\n\r\nColor:Random\r\n\r\nSpecifications:\r\nMaterial: Sponge\r\n\r\nPackage Including:\r\n1 X sponge filter\r\n\r\n', 7, '2016-09-28 00:00:00'),
(55, 'Utensils Set Kitchen Cooking Gadget', NULL, 250, 360, 250, 'img/kt3.jpg', 'A MAGNIFICENT ADAPTATION of a classic design that will bring a touch of elegance with functionality into your home. Set includes a Ladle, Solid Spoon, Meat Fork, Slotted Turner/Spatula and a Skimmer.', 7, '2016-09-29 00:00:00'),
(56, 'Vegetable Fruit Potato Peeler', NULL, 200, 390, 200, 'img/kt4.jpg', 'Item NO.: K3247XX\r\nCondition: 100% Brand New and High Quality\r\nMaterial: Stainless steel+ plastic \r\nColor: Random color\r\nSize: 19.5*8*5cm/7.67*3.14*1.96inch\r\nPackage Includes: 1x Vegetable Fruit Peeler\r\nã€€\r\nFeatures:\r\n(1) Made of high quality stainless steel and plastic---durable \r\n(2) This is a multifunctional peeler with 360 degree rotatable blades.\r\n(3) It has 3 kinds of blades which can grate food into different kinds of shape.\r\n(4) Light weight, easy to use and clean', 7, '2016-09-27 00:00:00'),
(57, 'Kitchen Leaf Shape Rice Wash Sieve', NULL, 350, 580, 350, 'img/kt5.jpg', 'Item NO.: K3247XX\r\nCondition: 100% Brand New and High Quality\r\nMaterial: Stainless steel+ plastic \r\nColor: Random color\r\nSize: 19.5*8*5cm/7.67*3.14*1.96inch\r\nPackage Includes: 1x Vegetable Fruit Peeler\r\nã€€\r\nFeatures:\r\n(1) Made of high quality stainless steel and plastic---durable \r\n(2) This is a multifunctional peeler with 360 degree rotatable blades.\r\n(3) It has 3 kinds of blades which can grate food into different kinds of shape.\r\n(4) Light weight, easy to use and clean', 7, '2016-09-29 00:00:00'),
(58, 'Vegetable Cutter Fruit Cutlery Gadgets', NULL, 350, 580, 350, 'img/kt6.jpg', 'Item NO.: K3247XX\r\nCondition: 100% Brand New and High Quality\r\nMaterial: Stainless steel+ plastic \r\nColor: Random color\r\nSize: 19.5*8*5cm/7.67*3.14*1.96inch\r\nPackage Includes: 1x Vegetable Fruit Peeler\r\nã€€\r\nFeatures:\r\n(1) Made of high quality stainless steel and plastic---durable \r\n(2) This is a multifunctional peeler with 360 degree rotatable blades.\r\n(3) It has 3 kinds of blades which can grate food into different kinds of shape.\r\n(4) Light weight, easy to use and clean', 7, '2016-09-29 00:00:00'),
(59, 'Mens Full gold Luxury Stainless Steel', NULL, 2500, 3600, 3200, 'img/wt1.jpg', 'specifications\r\nBrand Name:CHENXI\r\nItem Type:Quartz Wristwatches\r\nCase Material:Stainless Steel\r\nDial Window Material Type:Glass\r\nWater Resistance Depth:3Bar\r\nMovement:Quartz\r\nDial Diameter:4 mm', 2, '2016-09-30 00:00:00'),
(60, 'Date Sport Quartz Wrist Watch', NULL, 2300, 3600, 2300, 'img/wt2.jpg', 'specifications\r\nBrand Name:CHENXI\r\nItem Type:Quartz Wristwatches\r\nCase Material:Stainless Steel\r\nDial Window Material Type:Glass\r\nWater Resistance Depth:3Bar\r\nMovement:Quartz\r\nDial Diameter:4 mm', 2, '2016-09-28 00:00:00'),
(61, 'Retro Quartz Analog Wrist Watch', NULL, 2300, 3600, 2300, 'img/wt3.jpg', 'specifications\r\nBrand Name:CHENXI\r\nItem Type:Quartz Wristwatches\r\nCase Material:Stainless Steel\r\nDial Window Material Type:Glass\r\nWater Resistance Depth:3Bar\r\nMovement:Quartz\r\nDial Diameter:4 mm', 2, '2016-09-27 00:00:00'),
(62, 'Quartz Black Leather Watch Strap', NULL, 1500, 3600, 1500, 'img/wt4.jpg', 'specifications\r\nBrand Name:CHENXI\r\nItem Type:Quartz Wristwatches\r\nCase Material:Stainless Steel\r\nDial Window Material Type:Glass\r\nWater Resistance Depth:3Bar\r\nMovement:Quartz\r\nDial Diameter:4 mm', 2, '2016-09-27 00:00:00'),
(63, 'Leather Stainless Steel Wrist Watch', NULL, 3100, 3600, 3100, 'img/wt5.jpg', 'specifications\r\nBrand Name:CHENXI\r\nItem Type:Quartz Wristwatches\r\nCase Material:Stainless Steel\r\nDial Window Material Type:Glass\r\nWater Resistance Depth:3Bar\r\nMovement:Quartz\r\nDial Diameter:4 mm', 2, '2016-09-29 00:00:00'),
(64, 'Quartz Dial Leather Wrist Watch Gift', NULL, 3900, 4500, 3900, 'img/wt6.jpg', 'specifications\r\nBrand Name:CHENXI\r\nItem Type:Quartz Wristwatches\r\nCase Material:Stainless Steel\r\nDial Window Material Type:Glass\r\nWater Resistance Depth:3Bar\r\nMovement:Quartz\r\nDial Diameter:4 mm', 2, '2016-09-30 00:00:00'),
(65, 'Nike Men Flyknit Max Air Running Shoes', NULL, 3100, 3600, 3100, 'img/sh1.jpg', 'New Nike Men Flyknit Max Air Premium Running Shoes\r\n\r\n(New with Box)\r\n\r\nStyle #  620469-404\r\n\r\nColor:  Blue/Blck/Concord/Crimson\r\n\r\nSize: 11.5 US, 13 US\r\n\r\nRetails at $225.00\r\n\r\n \r\nBUY THEM FOR $169.99\r\n\r\nSHIPPING /HANDLING CHARGE IS FREE VIA USPS IN THE US.  ADDITIONAL CHARGES FOR INTERNATIONAL SHIPPING.\r\n\r\nI WILL SHIP AS SOON AS PAYMENT IS MADE. I ACCEPT PAYPAL,', 6, '2016-09-28 00:00:00'),
(66, 'Work site SS608SM White Safety Trainer size 8', NULL, 2600, 3600, 2600, 'img/sh2.jpg', 'New Nike Men Flyknit Max Air Premium Running Shoes\r\n\r\n(New with Box)\r\n\r\nStyle #  620469-404\r\n\r\nColor:  Blue/Blck/Concord/Crimson\r\n\r\nSize: 11.5 US, 13 US\r\n\r\nRetails at $225.00\r\n\r\n \r\nBUY THEM FOR $169.99\r\n\r\nSHIPPING /HANDLING CHARGE IS FREE VIA USPS IN THE US.  ADDITIONAL CHARGES FOR INTERNATIONAL SHIPPING.\r\n\r\nI WILL SHIP AS SOON AS PAYMENT IS MADE. I ACCEPT PAYPAL,', 6, '2016-09-29 00:00:00'),
(67, ' Blue White Womens Classic Trainers', NULL, 2900, 3600, 2900, 'img/sh3.jpg', 'New Nike Men Flyknit Max Air Premium Running Shoes\r\n\r\n(New with Box)\r\n\r\nStyle #  620469-404\r\n\r\nColor:  Blue/Blck/Concord/Crimson\r\n\r\nSize: 11.5 US, 13 US\r\n\r\nRetails at $225.00\r\n\r\n \r\nBUY THEM FOR $169.99\r\n\r\nSHIPPING /HANDLING CHARGE IS FREE VIA USPS IN THE US.  ADDITIONAL CHARGES FOR INTERNATIONAL SHIPPING.\r\n\r\nI WILL SHIP AS SOON AS PAYMENT IS MADE. I ACCEPT PAYPAL,', 6, '2016-09-29 00:00:00'),
(68, 'Baretraps Winsom Women Boot', NULL, 3700, 5100, 3780, 'img/sh4.jpg', 'New Nike Men Flyknit Max Air Premium Running Shoes\r\n\r\n(New with Box)\r\n\r\nStyle #  620469-404\r\n\r\nColor:  Blue/Blck/Concord/Crimson\r\n\r\nSize: 11.5 US, 13 US\r\n\r\nRetails at $225.00\r\n\r\n \r\nBUY THEM FOR $169.99\r\n\r\nSHIPPING /HANDLING CHARGE IS FREE VIA USPS IN THE US.  ADDITIONAL CHARGES FOR INTERNATIONAL SHIPPING.\r\n\r\nI WILL SHIP AS SOON AS PAYMENT IS MADE. I ACCEPT PAYPAL,', 6, '2016-09-28 00:00:00'),
(69, 'Women US 9 Multi Color Heels', NULL, 2100, 2600, 2100, 'img/sh5.jpg', 'New Nike Men Flyknit Max Air Premium Running Shoes\r\n\r\n(New with Box)\r\n\r\nStyle #  620469-404\r\n\r\nColor:  Blue/Blck/Concord/Crimson\r\n\r\nSize: 11.5 US, 13 US\r\n\r\nRetails at $225.00\r\n\r\n \r\nBUY THEM FOR $169.99\r\n\r\nSHIPPING /HANDLING CHARGE IS FREE VIA USPS IN THE US.  ADDITIONAL CHARGES FOR INTERNATIONAL SHIPPING.\r\n\r\nI WILL SHIP AS SOON AS PAYMENT IS MADE. I ACCEPT PAYPAL,', 6, '2016-09-28 00:00:00'),
(70, 'Women US 6 Nude Slingback Sandal', NULL, 2100, 2600, 2100, 'img/sh6.jpg', 'New Nike Men Flyknit Max Air Premium Running Shoes\r\n\r\n(New with Box)\r\n\r\nStyle #  620469-404\r\n\r\nColor:  Blue/Blck/Concord/Crimson\r\n\r\nSize: 11.5 US, 13 US\r\n\r\nRetails at $225.00\r\n\r\n \r\nBUY THEM FOR $169.99\r\n\r\nSHIPPING /HANDLING CHARGE IS FREE VIA USPS IN THE US.  ADDITIONAL CHARGES FOR INTERNATIONAL SHIPPING.\r\n\r\nI WILL SHIP AS SOON AS PAYMENT IS MADE. I ACCEPT PAYPAL,', 6, '2016-09-29 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `MessageID` int(6) NOT NULL,
  `SenderID` int(6) NOT NULL,
  `ReceiverID` int(6) NOT NULL,
  `Topic` varchar(500) NOT NULL,
  `Body` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `solditems`
--

CREATE TABLE IF NOT EXISTS `solditems` (
  `InvoiceNumber` int(6) NOT NULL,
  `ItemID` int(6) NOT NULL,
  `BuyerID` int(6) NOT NULL,
  `Date` datetime NOT NULL,
  `FinalValue` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `UserID` int(10) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Contact_No` int(10) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `FName` varchar(20) NOT NULL,
  `LName` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Username`, `Password`, `Contact_No`, `Address`, `FName`, `LName`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 111231231, 'ADD', 'Bid', 'Now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`), ADD UNIQUE KEY `UserID` (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `ItemID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
