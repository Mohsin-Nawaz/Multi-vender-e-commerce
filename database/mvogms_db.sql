-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2022 at 06:48 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvogms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `vendor_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `vendor_id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(4, 2, 'Juice', 'Different types of juices', 1, 0, '2022-02-09 11:06:10', '2022-06-23 11:35:15'),
(6, 1, 'Oily_Fish_Tin_pack', 'Nutrient-rich, oily fish widely consumed by humans and as forage fish by larger fish species, seabirds and marine mammals', 1, 0, '2022-02-09 11:09:36', '2022-06-23 11:05:51'),
(7, 1, 'dry_items', 'Soda Juices /drinks and dry items', 1, 0, '2022-02-09 11:09:45', '2022-06-23 11:09:44'),
(9, 1, 'Bread', 'fresh pieces of bread', 1, 0, '2022-02-09 11:10:35', '2022-06-23 11:26:51'),
(10, 2, 'chicken', 'chicken pieces', 1, 0, '2022-06-23 11:37:37', NULL),
(12, 2, 'Burger', 'Different variety of burgers', 1, 0, '2022-07-31 10:32:59', NULL),
(13, 2, 'Fries', 'French fries, chips, finger chips, french-fried potatoes, or simply fries, are batonnet or allumette-cut deep-fried potatoes, disputed origin from Belgium and France. ', 1, 0, '2022-07-31 10:36:21', NULL),
(14, 2, 'Pizza', 'Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven. ', 1, 0, '2022-07-31 10:40:08', NULL),
(15, 1, 'Cookies', 'A biscuit is a flour-based baked and shaped food product. ', 1, 0, '2022-07-31 11:02:36', '2022-07-31 11:03:05'),
(16, 1, 'Milk', 'Milk is a nutrient-rich liquid food produced by the mammary glands of mammals. ', 1, 0, '2022-07-31 11:05:02', NULL),
(17, 1, 'Noodles', 'Noodles are a type of food made from unleavened dough which is rolled flat and cut, stretched or extruded, into long strips or strings.', 1, 0, '2022-07-31 11:10:01', NULL),
(18, 8, 'Lipsticks', 'To make the look of the lips charming and attractive.', 1, 0, '2022-07-31 11:19:21', NULL),
(19, 8, 'Perfumes', 'Best fragnances for men, women and kids', 1, 0, '2022-07-31 11:20:01', NULL),
(20, 8, 'MakeUp Kit', 'Whole Make Up kit for Ladies. Very handy and light weighted.', 1, 0, '2022-07-31 11:20:35', NULL),
(21, 8, 'Nale Polish', 'To make the look of nails very charming and colorful.', 1, 0, '2022-07-31 11:21:13', NULL),
(22, 8, 'Shampoo', 'Best quality of Shampoos for Silky Hairs.', 1, 0, '2022-07-31 11:21:43', NULL),
(23, 8, 'Face Wash', 'Best Facewash for glowing skin.', 1, 0, '2022-07-31 11:23:28', NULL),
(24, 8, 'Soap', 'A body wash.', 1, 0, '2022-07-31 11:24:37', NULL),
(25, 9, 'Hamburger', 'A special Type of Burger with extra topping of cheese.', 1, 0, '2022-07-31 11:58:26', NULL),
(26, 9, 'Hot Tacos', 'Served either on flour or cute, beet-dyed pink corn tortillas, the tacos at Hot Taco are fresh, flavorful and made with high-quality ingredients', 1, 0, '2022-07-31 11:59:40', NULL),
(27, 9, 'Biryani', 'Delicious Biryani', 1, 0, '2022-07-31 12:01:10', NULL),
(28, 9, 'Sandwich', 'A sandwich is a food typically consisting of vegetables, sliced cheese or meat, placed on or between slices of bread', 1, 0, '2022-07-31 12:02:56', NULL),
(29, 2, 'Electronics', 'All electronics staff', 1, 0, '2022-07-31 23:56:27', '2022-07-31 23:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `code`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `avatar`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, '202202-00001', 'Tayyab', 'Jadoon', 'Khan', 'Male', '09123456789', 'club line kahuta', 'tayyab123@gmail.com', 'ea60b43e48f3c2de55e4fc89b3da53dc', 'uploads/clients/1.png?v=1644386016', 1, 0, '2022-02-09 13:53:36', '2022-06-23 11:48:07'),
(16, '202208-00001', 'Ahsan', '', 'Nawaz', 'Male', '03328723712', 'Tehsil Kahuta ', 'ahsan123@gmail.com', '3d68b18bd9042ad3dc79643bde1ff351', 'uploads/clients/16.png?v=1659286404', 1, 0, '2022-07-31 09:53:24', '2022-07-31 09:53:24'),
(17, '202208-00002', 'Sawera', '', 'Masood', 'Female', '0336086342', 'Near THQ Hospital', 'sawera123@gmail.com', 'ee3de220ba17d0f3b75222cf3e67891c', 'uploads/clients/17.png?v=1659286628', 1, 0, '2022-07-31 09:57:08', '2022-07-31 09:57:08');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_id`, `product_id`, `quantity`, `price`, `date_created`) VALUES
(7, 3, 3, 100, '2022-06-23 12:41:47'),
(7, 5, 5, 280, '2022-06-23 12:41:47'),
(8, 6, 10, 80.65, '2022-06-23 12:41:47'),
(9, 5, 4, 280, '2022-07-30 13:33:13'),
(10, 2, 1, 160, '2022-07-31 06:06:45'),
(11, 5, 1, 280, '2022-07-31 06:26:03'),
(12, 74, 1, 400, '2022-07-31 22:52:35'),
(13, 90, 1, 700, '2022-08-01 01:07:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `vendor_id` int(30) NOT NULL,
  `total_amount` double NOT NULL DEFAULT 0,
  `delivery_address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `code`, `client_id`, `vendor_id`, `total_amount`, `delivery_address`, `status`, `date_created`, `date_updated`) VALUES
(7, '202206-00001', 1, 1, 1700, 'Club line Kahuta District Rawalpindi', 1, '2022-06-23 12:41:46', '2022-06-23 12:48:56'),
(8, '202206-00002', 1, 2, 806.5, 'Club line Kahuta District Rawalpindi', 4, '2022-06-23 12:41:47', '2022-06-23 12:51:57'),
(9, '202207-00001', 1, 1, 1120, 'club line kahuta', 0, '2022-07-30 13:33:13', '2022-07-30 13:33:13'),
(10, '202207-00002', 1, 1, 160, 'club line kahuta', 4, '2022-07-31 06:06:45', '2022-08-01 01:10:27'),
(11, '202207-00003', 1, 1, 280, 'club line kahuta', 1, '2022-07-31 06:26:03', '2022-08-01 01:10:09'),
(12, '202208-00001', 1, 2, 400, 'club line kahuta', 0, '2022-07-31 22:52:35', '2022-07-31 22:52:35'),
(13, '202208-00002', 1, 9, 700, 'club line kahuta', 0, '2022-08-01 01:07:22', '2022-08-01 01:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `vendor_id` int(30) DEFAULT NULL,
  `category_id` int(30) DEFAULT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `vendor_id`, `category_id`, `name`, `description`, `price`, `image_path`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(2, 1, 9, 'Loaf Bread', '&lt;h6&gt;&lt;span style=&quot;font-size: 1rem; color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;A loaf of bread is&amp;nbsp;&lt;/span&gt;&lt;b style=&quot;font-size: 1rem; color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;bread which has been shaped and baked in one piece&lt;/b&gt;&lt;span style=&quot;font-size: 1rem; color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;. It is usually large enough for more than one person and can be cut into slices&lt;/span&gt;&lt;/h6&gt;', 160, 'uploads/products/2.png?v=1644382715', 1, 0, '2022-02-09 12:58:35', '2022-06-23 11:29:39'),
(3, 1, 7, 'Canned Soda', '&lt;p&gt;&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;A drink can (or beverage can) is&nbsp;&lt;/span&gt;&lt;b style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;a metal container designed to hold a fixed portion of liquid such as carbonated soft drinks, alcoholic drinks, fruit juices, teas, herbal teas, energy drinks, etc&lt;/b&gt;&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;. Drink cans are made of aluminum (75% of worldwide production) or tin-plated steel (25% worldwide production)&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 100, 'uploads/products/3.png?v=1644382753', 1, 0, '2022-02-09 12:59:13', '2022-06-23 11:08:41'),
(4, 1, 6, 'Canned Sardines', '&lt;div class=&quot;wDYxhc&quot; data-md=&quot;61&quot; lang=&quot;en-PK&quot; style=&quot;clear: none; padding-top: 0px; border-radius: 8px; padding-left: 0px; padding-right: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&lt;div class=&quot;LGOjhe&quot; data-attrid=&quot;wa:/description&quot; aria-level=&quot;3&quot; role=&quot;heading&quot; data-hveid=&quot;CA0QAA&quot; style=&quot;overflow: hidden; padding-bottom: 20px;&quot;&gt;&lt;span class=&quot;ILfuVd&quot; lang=&quot;en&quot; style=&quot;font-size: 16px; line-height: 24px;&quot;&gt;&lt;span class=&quot;hgKElc&quot; style=&quot;padding: 0px 8px 0px 0px;&quot;&gt;Sardines (&quot;pilchards&quot;) are&amp;nbsp;&lt;b&gt;a nutrient-rich, small, oily fish widely consumed by humans and as forage fish by larger fish species, seabirds and marine mammals&lt;/b&gt;. Sardines are a source of omega-3 fatty acids. Sardines are often served in cans, but can also be eaten grilled, pickled, or smoked when fresh.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;wDYxhc&quot; data-attrid=&quot;ss:/webfacts:protein&quot; data-md=&quot;1001&quot; lang=&quot;en-PK&quot; data-hveid=&quot;CBEQAA&quot; data-ved=&quot;2ahUKEwi5vsLQlMT4AhXohv0HHQ-RB5MQkCl6BAgREAA&quot; style=&quot;clear: none; padding-left: 0px; padding-right: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&lt;div class=&quot;Z1hOCe&quot;&gt;&lt;div class=&quot;zloOqf PZPZlf&quot; data-ved=&quot;2ahUKEwi5vsLQlMT4AhXohv0HHQ-RB5MQyxMoAHoECBEQAQ&quot; style=&quot;margin-top: -8px; font-size: 16px; margin-bottom: 16px;&quot;&gt;&lt;span class=&quot;w8qArf&quot; style=&quot;font-weight: bolder;&quot;&gt;Protein:&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;LrzXr kno-fv wHYlTd z8gr9e&quot; style=&quot;font-size: 14px; line-height: 22px; color: rgb(60, 64, 67);&quot;&gt;20.86 g&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;wDYxhc&quot; data-attrid=&quot;ss:/webfacts:other_constitu&quot; data-md=&quot;1001&quot; lang=&quot;en-PK&quot; data-hveid=&quot;CBIQAA&quot; data-ved=&quot;2ahUKEwi5vsLQlMT4AhXohv0HHQ-RB5MQkCl6BAgSEAA&quot; style=&quot;clear: none; padding-left: 0px; padding-right: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&lt;div class=&quot;Z1hOCe&quot;&gt;&lt;div class=&quot;zloOqf PZPZlf&quot; data-ved=&quot;2ahUKEwi5vsLQlMT4AhXohv0HHQ-RB5MQyxMoAHoECBIQAQ&quot; style=&quot;margin-top: -8px; font-size: 16px; margin-bottom: 16px;&quot;&gt;&lt;span class=&quot;w8qArf&quot; style=&quot;font-weight: bolder;&quot;&gt;Other constituents:&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;LrzXr kno-fv wHYlTd z8gr9e&quot; style=&quot;font-size: 14px; line-height: 22px; color: rgb(60, 64, 67);&quot;&gt;Quantity&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;wDYxhc&quot; data-attrid=&quot;ss:/webfacts:water&quot; data-md=&quot;1001&quot; lang=&quot;en-PK&quot; data-hveid=&quot;CBMQAA&quot; data-ved=&quot;2ahUKEwi5vsLQlMT4AhXohv0HHQ-RB5MQkCl6BAgTEAA&quot; style=&quot;clear: none; padding-left: 0px; padding-right: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&lt;div class=&quot;Z1hOCe&quot;&gt;&lt;div class=&quot;zloOqf PZPZlf&quot; data-ved=&quot;2ahUKEwi5vsLQlMT4AhXohv0HHQ-RB5MQyxMoAHoECBMQAQ&quot; style=&quot;margin-top: -8px; font-size: 16px; margin-bottom: 16px;&quot;&gt;&lt;span class=&quot;w8qArf&quot; style=&quot;font-weight: bolder;&quot;&gt;Water:&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;LrzXr kno-fv wHYlTd z8gr9e&quot; style=&quot;font-size: 14px; line-height: 22px; color: rgb(60, 64, 67);&quot;&gt;66.86 g&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', 150, 'uploads/products/4.png?v=1644382779', 1, 0, '2022-02-09 12:59:38', '2022-06-23 11:06:54'),
(5, 1, 7, 'Vegetables', '&lt;p&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;Vegetables are parts of plants that are consumed by humans or other animals as food. The original meaning is still commonly used and is applied to plants collectively to refer to all edible plant matter,&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 280, 'uploads/products/5.png?v=1644382802', 1, 0, '2022-02-09 13:00:02', '2022-06-23 11:13:46'),
(6, 2, 4, 'Bottled Juice', '&lt;p&gt;&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;&nbsp;Bottled juices are&nbsp;&lt;/span&gt;&lt;b style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;usually treated to kill pathogenic organisms to extend the shelf life of the product&lt;/b&gt;&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;. A newer process called HPP (High Pressure Processing), makes drinking certain bottled juices a great choice when you can&#039;t find fresh&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 80, 'uploads/products/6.png?v=1644382977', 1, 1, '2022-02-09 13:02:57', '2022-08-01 01:05:50'),
(7, 2, 10, 'Chicken Wings', '&lt;p&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;Chicken wings&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&nbsp;are white meat, even though they&#039;re juicier and have a more concentrated poultry flavor, like dark meat.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 285, 'uploads/products/7.png?v=1644383066', 1, 0, '2022-02-09 13:04:25', '2022-07-31 10:29:23'),
(8, 2, 10, 'Fried Chicken Pieces', '&lt;p&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;These &lt;b&gt;Chicken Pieces&lt;/b&gt; are very juicy and very delicious and available in reasonable prices.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 225, 'uploads/products/8.png?v=1644383112', 1, 0, '2022-02-09 13:05:12', '2022-07-31 10:28:56'),
(74, 2, 12, 'Zinger Burger', '&lt;p&gt;&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;A Zinger Burger is&amp;nbsp;&lt;/span&gt;&lt;b style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;KFC&#039;s original fried chicken recipe with a spicy twist&lt;/b&gt;&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 400, 'uploads/products/74.png?v=1659288864', 1, 0, '2022-07-31 10:34:24', '2022-07-31 10:34:24'),
(75, 2, 13, 'Fries', '&lt;p&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;French fries, chips, finger chips, french-fried potatoes, or simply fries, are batonnet or allumette-cut deep-fried potatoes, disputed origin from Belgium and France.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 250, 'uploads/products/75.png?v=1659289096', 1, 0, '2022-07-31 10:38:16', '2022-07-31 10:38:16'),
(76, 2, 14, 'Hot and Spicy Pizza', '&lt;p&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1100, 'uploads/products/76.png?v=1659289286', 1, 0, '2022-07-31 10:41:26', '2022-07-31 10:41:26'),
(77, 1, 9, 'Apple Jam', '&lt;p&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;Jam&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;is a thick sweet food that is made by cooking fruit with a large amount of sugar, and that is usually spread on bread.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 200, 'uploads/products/77.png?v=1659290440', 1, 0, '2022-07-31 11:00:40', '2022-07-31 11:00:40'),
(78, 1, 15, 'Cookies', '&lt;p&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;A biscuit is a flour-based baked and shaped food product. In most countries biscuits are typically hard, flat, and unleavened. They are usually sweet and may be made with sugar, chocolate, icing, jam, ginger, or cinnamon.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 150, 'uploads/products/78.png?v=1659290649', 1, 0, '2022-07-31 11:04:09', '2022-07-31 11:04:09'),
(79, 1, 16, 'Milk', '&lt;p&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;Milk is a nutrient-rich liquid food produced by the mammary glands of mammals.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 140, 'uploads/products/79.png?v=1659290776', 1, 0, '2022-07-31 11:06:16', '2022-07-31 11:06:16'),
(80, 1, 17, 'Noodles', '&lt;p&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;Noodles are a type of food made from unleavened dough which is rolled flat and cut, stretched or extruded, into long strips or strings.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 50, 'uploads/products/80.png?v=1659291027', 1, 0, '2022-07-31 11:10:27', '2022-07-31 11:10:27'),
(81, 8, 24, 'Soap', '&lt;p&gt;A hydrating body wash.&lt;/p&gt;', 100, 'uploads/products/81.png?v=1659292033', 1, 0, '2022-07-31 11:27:13', '2022-07-31 11:27:13'),
(82, 8, 23, 'Face Wash', '&lt;p&gt;For Glowing facial skin.&lt;/p&gt;', 300, 'uploads/products/82.png?v=1659292159', 1, 0, '2022-07-31 11:29:19', '2022-07-31 11:29:19'),
(83, 8, 18, 'Lipsticks', '&lt;p&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;Lipstick&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;is a cosmetic that applies color, texture, and protection to the lips. A young woman applying red&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;lipstick&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 300, 'uploads/products/83.png?v=1659292279', 1, 0, '2022-07-31 11:31:19', '2022-07-31 11:31:19'),
(84, 8, 20, 'Make Up Kit', '&lt;p&gt;&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;Make-up consists of things such as lipstick, eye shadow, and powder which some women put on their faces to make themselves look more attractive or which actors use to change or improve their appearance.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 2000, 'uploads/products/84.png?v=1659292450', 1, 0, '2022-07-31 11:34:10', '2022-07-31 11:34:10'),
(85, 8, 19, 'Perfumes', '&lt;p&gt;High Quality Perfumes for men and women.&lt;/p&gt;', 5000, 'uploads/products/85.png?v=1659292618', 1, 0, '2022-07-31 11:36:58', '2022-07-31 11:36:58'),
(86, 8, 21, 'Nail Polish', '&lt;p&gt;Beautiful Nail Polishes and of Best Quality.&lt;/p&gt;', 500, 'uploads/products/86.png?v=1659292746', 1, 0, '2022-07-31 11:39:06', '2022-07-31 11:39:06'),
(87, 8, 22, 'Head and Shoulders Shampoo', '&lt;p&gt;For Silky Long Hair.&lt;/p&gt;', 500, 'uploads/products/87.png?v=1659292962', 1, 0, '2022-07-31 11:42:42', '2022-07-31 11:42:42'),
(88, 9, 27, 'Mutton Biryani', '&lt;p&gt;A delicious Mutton with tendor meat.&lt;/p&gt;', 300, 'uploads/products/88.png?v=1659294477', 1, 0, '2022-07-31 12:07:52', '2022-07-31 12:07:57'),
(89, 9, 27, 'Vegetable Biryani', 'Hygenic Vegetables Biryani&amp;nbsp;', 350, 'uploads/products/89.png?v=1659294661', 1, 0, '2022-07-31 12:10:55', '2022-07-31 12:11:01'),
(90, 9, 25, 'Hamburger', '&lt;p&gt;&lt;b style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;They are made from minced beef, pork&lt;/b&gt;&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;&nbsp;or a blend of the two mixed with minced onions, egg, breadcrumbs and spices&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 700, 'uploads/products/90.png?v=1659326249', 1, 0, '2022-07-31 20:30:59', '2022-07-31 20:57:29'),
(91, 9, 26, 'Hot Tacos', '&lt;p&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;Hot Tacos&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;offers authentic Mexican food, prepped and cooked daily from scratch offering tacos, burritos, and quesadillas with meat options like steak&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 400, 'uploads/products/91.png?v=1659326457', 1, 0, '2022-07-31 21:00:57', '2022-07-31 21:00:57'),
(92, 9, 28, 'Wrap Sandwich', '&lt;p&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;These easy BLT&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;wrap sandwiches&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;start with bagged salad greens, tomatoes, mayonnaise, and avocado, wrapped in tortillas for a delicious lunch recipe.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 800, 'uploads/products/92.png?v=1659326807', 1, 0, '2022-07-31 21:06:47', '2022-07-31 21:06:47'),
(100, 2, 29, 'Controller', '&lt;p&gt;Very fast Wireless gaming controller&lt;/p&gt;', 450, 'uploads/products/100.png?v=1659337039', 1, 0, '2022-07-31 23:57:19', '2022-07-31 23:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `shop_type_list`
--

CREATE TABLE `shop_type_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop_type_list`
--

INSERT INTO `shop_type_list` (`id`, `name`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Bakery Products', 1, 0, '2022-02-09 08:49:34', '2022-07-31 10:46:21'),
(2, 'Cosmetics', 1, 0, '2022-02-09 08:49:46', NULL),
(6, 'Fast Food', 1, 0, '2022-07-31 10:03:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Mini Infinity Business App'),
(6, 'short_name', 'MIBA '),
(11, 'logo', 'uploads/logo-1644367440.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1644367404.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Mohsin', 'Nawaz', 'MohsinNawaz', 'd38509b02c3af7545dc345630382cdeb', 'uploads/avatar-1.png?v=1644472635', NULL, 1, '2021-01-20 14:02:37', '2022-07-31 09:41:27'),
(11, 'Ali', 'Muhammad Khan', 'ali123', '984d8144fa08bfc637d2825463e184fa', 'uploads/avatar-11.png?v=1644472553', NULL, 2, '2022-02-10 13:55:52', '2022-07-17 09:34:19');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_list`
--

CREATE TABLE `vendor_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `shop_type_id` int(30) NOT NULL,
  `shop_name` text NOT NULL,
  `shop_owner` text NOT NULL,
  `contact` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor_list`
--

INSERT INTO `vendor_list` (`id`, `code`, `shop_type_id`, `shop_name`, `shop_owner`, `contact`, `username`, `password`, `avatar`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, '202202-00001', 1, 'King Bakers', 'MoinHaider', '09123456788', 'Moin123', 'b5374e7e995f12aab43be9dd67907a4e', 'uploads/vendors/1.png?v=1644375053', 1, 0, '2022-02-09 10:50:53', '2022-07-31 10:55:21'),
(2, '202202-00002', 6, 'Pizzeria Yard', 'Raja Fawwad ', '009237813', 'Fawwad123', 'c504f3b96ea6129e88e41200eaa448a3', 'uploads/vendors/2.png?v=1659287959', 1, 0, '2022-02-09 10:52:09', '2022-07-31 10:19:19'),
(8, '202208-00001', 2, 'Nykaa Cosmetics', 'Nayab Malik', '0323456789', 'Nayyab123', '22b1260811f18f9f69bf62b1608e2cfa', 'uploads/vendors/8.png?v=1659291464', 1, 0, '2022-07-31 11:17:44', '2022-07-31 11:17:44'),
(9, '202208-00002', 6, 'Crunchy Chicks', 'Hammad Tahir', '01328384839', 'Hammad123', '3d58301d074ddafde51a23f9cf18b4a6', 'uploads/vendors/9.png?v=1659293798', 1, 1, '2022-07-31 11:56:38', '2022-08-01 01:03:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_id` (`vendor_id`),
  ADD KEY `category_id` (`category_id`) USING BTREE;

--
-- Indexes for table `shop_type_list`
--
ALTER TABLE `shop_type_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_list`
--
ALTER TABLE `vendor_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_type_id` (`shop_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `shop_type_list`
--
ALTER TABLE `shop_type_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vendor_list`
--
ALTER TABLE `vendor_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD CONSTRAINT `cart_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_list_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_list`
--
ALTER TABLE `category_list`
  ADD CONSTRAINT `category_list_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_list_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `product_list_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_list` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_list_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vendor_list`
--
ALTER TABLE `vendor_list`
  ADD CONSTRAINT `vendor_list_ibfk_1` FOREIGN KEY (`shop_type_id`) REFERENCES `shop_type_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
