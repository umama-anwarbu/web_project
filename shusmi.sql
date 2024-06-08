-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2024 at 12:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shusmi`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `duration` int(90) NOT NULL,
  `contents` text NOT NULL,
  `eligibity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`, `duration`, `contents`, `eligibity`) VALUES
(1, 'web development', 60, 'Html, Css, Database, Php', 'Science and above 3rd years'),
(2, 'Daatabase', 80, 'MySQL, Oracle', 'Science and above 3rd year'),
(3, 'Python', 60, 'Python', 'General and above 3rd year');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `id` int(25) NOT NULL,
  `name` text NOT NULL,
  `designation` text NOT NULL,
  `salary` mediumtext NOT NULL,
  `phone` varchar(20) NOT NULL,
  `joindate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`id`, `name`, `designation`, `salary`, `phone`, `joindate`) VALUES
(1, 'Manindra Nath ', 'Assistant Professor, Department of Mathematics', '50,000', '01917845948', '2024-06-02'),
(2, 'Minati Rani', 'Professor, Department of History', '75,000', '01711907763', '2022-06-01'),
(3, 'Chandan Paul', 'Lecturer, Department of CSE', '20,000', '01552338375', '2020-06-06'),
(4, 'Monika Rani', 'Assistant Professor, Department of Biology', '40,000', '0191737864', '2017-06-08'),
(6, 'Tabassum Sujana', 'Professor, Department of English', '40000', '01976436422', '2024-06-13'),
(7, ' Hridoy Roy', 'Assistant Teacher', '32455', '01966422973', '2020-06-16'),
(8, 'Diti Paul', 'Assistant Teacher', '60765', '0197498593', '2020-02-01'),
(9, 'Mamaearth Hair Serum', '', '', '', '2024-05-29'),
(11, 'Tabassum Sujana', 'Assistant Teacher', '40000', '01913455998', '2024-06-11');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `quantity`, `price`) VALUES
(1, 'Mama Earth Facewash', 'Mamaearth SLS & Paraben freecharcoalface washis your solution for healthy and glowingskin. Activated Charcoal gently draws out dirt, impurities, microparticles,& makeup – leaving skin clean and fresh. Clay deeply penetrates within thepores while removing excess oil from the skin. All this, without irritating orover-drying the skin. Coffee vitalizes the skin by removing dead skin cells andgives the face a glow. This charcoaloil control face washis dermatologically tested and pH balanced, this facewash takes gentle care of your skin. It leaves your skin feeling soft andsmooth as it does not contain any harmful chemicals like SLS, Sulfates,Phthalates or, Artificial Fragrance..\r\n\r\n', 80, 500.00),
(2, 'Pantene Daily Moisture Renewal Shampoo', 'HARD WORKING Fuels hair with a potent blend of Pro-V nutrients and antioxidants so hair is strong against damage\r\nLONG LASTING Gently cleanses hair with a vitamin-rich lather with 2x more nutrients, with results that last 72 plus hou', 400, 1000.00),
(3, 'Dove Hair Therapy Shampoo, Conditioner', 'Dove Hair Therapy Breakage Remedy Shampoo for hair and treatment for damaged hair strengthens your hair\r\nAnti-breakage hair shampoo strengthens for healthy-looking strands\r\nDove Hair Therapy Breakage Remedy Conditioner for hair and treatment for damaged hair strengthens your hair', 500, 1500.00),
(4, 'Mamaearth Ultra Light Sunscreen Lotion', 'PROTECTS AGAINST UVA & UVB RAYS Effective protection against harmful UVA & UVB rays for as long as upto 6 hours. The hardworking ingredients in the sunscreen don\'t let the harmful sunrays penetrate your skin & damage them.\r\nSPF 50+++ , SPF 50 provides sufficient protection for your skin, in the form of a protective layer on skin from both UVA & B rays.\r\nFOR INDIAN SKIN : The lotion is suitable for indian skin tones. It get easily absorbed and can be used under make up too.', 100, 800.00),
(5, 'Mamaearth Vitamin C Face Mask', 'SKIN ILLUMINATION: Vitamin C & Turmeric present in the mask help achieve that radiant glow. They keep away early signs of aging and fine lines.\r\nPROMOTES EVEN SKIN TONE: A strong antioxidant, Vitamin C not just combats dark spots, but also helps in preventing melanin production; thus, promoting an even skin tone.', 250, 1200.00),
(6, 'Mario Badescu Clay Face Mask Skin', 'Pore Minimizer Facial Mask Formulated with Nutrient-Rich Key Ingredients, Purifying and Hydrating Clay Mask for Face.', 325, 650.00);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gpa` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `phone`, `email`, `city`, `dob`, `gpa`) VALUES
(0, 'SHUSMITA TAHASILDER', '019845998', 'shusmikhsc@gmail.com', 'barishal', '2024-05-22', 5.70),
(1, 'Raj', '+88017182737922', 'raj@gamil.com', 'patuakhali', '2002-05-08', 2.25),
(2, 'Adi', '+880171897764', 'www.adi@gmail.com', 'Dhaka', '2001-02-12', 4.00),
(3, 'Setu', '+880181976658', 'www.setu@gmail.com', 'Khulna', '2000-11-28', 3.75),
(4, 'Sujana', '+880175394487', 'www.umme@gmail.com', 'Bhola', '2001-11-17', 3.50),
(5, 'Ahana', '+8801969476322', 'www.ahana@gmail.com', 'Borguna', '2000-05-07', 4.30),
(6, 'Maruf', '+880171907763', 'maruf@gmail.com', 'Barishal', '2001-10-10', 3.50),
(7, 'Diti', '+8801969374', 'diti@gmail.com', 'Dhaka', '2000-10-10', 4.00),
(8, 'Shusmita ', '+8801969536422', 'stshusmita19@gmail.com', 'Dhaka', '2001-07-19', 3.35),
(19, 'Tabassum Sujana', '0196953642254', 'thechandan10@gmail.com', 'Dhaka', '2024-05-12', 2.00),
(22, 'Suga', '+9116274573878', 'sugacat@gmail.com', 'Seoul', '1993-08-13', 2.90),
(23, 'CHANDAN ', '0288753662752', 'thechandan134320@gmail.com', 'Barishal', '2024-06-05', 2.00);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` varchar(15) NOT NULL,
  `selescted_contents` text NOT NULL,
  `classroom` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `phone`, `selescted_contents`, `classroom`) VALUES
(1, 'Rahat Hossain Faisal', 'www.faisal@gmail.com', '+880171907756', 'Office App ', 'classroom-1'),
(2, 'Md. Manjur Ahmed', 'www.manjur@gmail.com', '+8801969537654', 'Python', 'Lot Lab'),
(3, 'Md. Erfan', 'www.erfan@gmail.com', '+8801917845997', 'Database', 'Net. Lab'),
(4, 'Md. Samsuddoha', 'www.doha@gmail.com', '+880171907765', 'Web Development', 'Adv. Prog. Lab'),
(5, 'Dr. Tania Islam', 'www.tania@gmail.com', '+8801969536432', 'Mobile App Development', 'Mobile App'),
(6, 'MANINDRA NATH', 'mntkhsc@gmail.com', '01917845998', 'html', 'lotlab'),
(7, 'Tabassum Sujana', 'sujana@gmail.com', '01974629293', '', 'Net Lab');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
