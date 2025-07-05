-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2025 at 05:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoatk`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` varchar(16) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis` varchar(16) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `jenis`, `harga`, `stok`) VALUES
('B624230103', 'Sweater', 'Pakaian', 200000, 50),
('B624230104', 'Mie', 'Makanan', 5000, 10),
('B624230105', 'Makroni', 'Makanan', 10000, 53),
('BR001', 'Botol minum', 'Plastik', 10000, 43),
('BR002', 'jendela', 'Kayu', 500000, 51),
('BR003', 'KURSI', 'Kayu', 500000, 50),
('BR004', 'pintu', 'Kayu', 500000, 50),
('BR006', 'binder', 'kertas', 5000, 52),
('BR624230103', 'Celana', 'Pakaian', 200000, 44),
('BRG001', 'Pulpen Standard', 'Alat Tulis', 2500, 55),
('BRG002', 'Pensil 2B', 'Alat Tulis', 1500, 60),
('BRG003', 'Penghapus', 'Alat Tulis', 1000, 53),
('BRG004', 'Kertas HVS A4', 'Kertas', 35000, 52),
('BRG005', 'Stapler', 'Peralatan', 15000, 50),
('BRG006', 'Isi Stapler', 'Peralatan', 3000, 50),
('BRG007', 'Spidol Board', 'Alat Tulis', 8000, 52),
('BRG008', 'Buku Tulis', 'Kertas', 3500, 53),
('BRG009', 'Map Plastik', 'Peralatan', 2000, 50),
('BRG010', 'Tip-Ex', 'Alat Tulis', 4000, 50),
('BRG0624223052', 'Obat', 'obatan', 20000, 50),
('BRG0624224827', 'Kacamata', 'Plastik', 10000, 48),
('BRG0624224859', 'Pouch', 'Kain', 2000, 50),
('BRG0624230102', 'Handuk', 'Kain', 200000, 45);

-- --------------------------------------------------------

--
-- Table structure for table `salesd`
--

CREATE TABLE `salesd` (
  `id` int(11) NOT NULL,
  `salesId` varchar(16) NOT NULL,
  `barangId` varchar(16) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salesd`
--

INSERT INTO `salesd` (`id`, `salesId`, `barangId`, `qty`, `harga`) VALUES
(60, 'SLS1750872631602', 'BRG0624224827', 2, 10000),
(61, 'SLS1750904739294', 'B624230104', 2, 5000),
(62, 'SLS1750937130474', 'BR001', 2, 10000),
(63, 'SLS1750990411148', 'BR001', 5, 10000),
(69, 'SLS1750995224785', 'BRG008', 8, 3500),
(71, 'SLS1750999244304', 'B624230103', 9, 200000),
(73, 'SLS1751011572091', 'BRG008', 2, 3500);

-- --------------------------------------------------------

--
-- Table structure for table `salesm`
--

CREATE TABLE `salesm` (
  `id` varchar(16) NOT NULL,
  `waktu` datetime NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salesm`
--

INSERT INTO `salesm` (`id`, `waktu`, `username`) VALUES
('SLS1750872631602', '2025-06-26 00:30:31', 'naida'),
('SLS1750904739294', '2025-06-26 09:25:39', 'Rinda'),
('SLS1750937130474', '2025-06-26 18:25:30', 'naida'),
('SLS1750990411148', '2025-06-27 09:13:31', 'naida'),
('SLS1750995224785', '2025-06-27 10:33:44', 'naida'),
('SLS1750999244304', '2025-06-27 11:40:44', 'admin'),
('SLS1751011572091', '2025-06-27 15:06:12', 'naida');

-- --------------------------------------------------------

--
-- Table structure for table `stockd`
--

CREATE TABLE `stockd` (
  `id` int(11) NOT NULL,
  `stockId` varchar(16) NOT NULL,
  `barangId` varchar(16) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stockd`
--

INSERT INTO `stockd` (`id`, `stockId`, `barangId`, `qty`, `harga`) VALUES
(6, 'STK20250616002', 'BRG006', 100, 3000),
(7, 'STK20250616002', 'BRG007', 75, 8000),
(8, 'STK20250616002', 'BRG008', 200, 3500),
(9, 'STK20250616002', 'BRG009', 150, 2000),
(10, 'STK20250616002', 'BRG010', 80, 4000),
(16, 'STK0624224827', 'BRG0624224827', 50, 10000),
(18, 'STK0624230102', 'BRG0624230102', 50, 200000),
(22, 'STK20250626002', 'B624230103', 2, 200000),
(23, 'STK20250626003', 'BR002', 1, 500000),
(25, 'STK20250626004', 'B624230103', 2, 200000),
(26, 'STK20250627001', 'B624230105', 1, 10000),
(27, 'STK20250627002', 'B624230105', 2, 10000),
(28, 'STK20250627003', 'B624230103', 5, 200000);

-- --------------------------------------------------------

--
-- Table structure for table `stockm`
--

CREATE TABLE `stockm` (
  `id` varchar(16) NOT NULL,
  `waktu` datetime NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stockm`
--

INSERT INTO `stockm` (`id`, `waktu`, `username`) VALUES
('STK0624223121', '2025-06-24 22:31:21', 'admin'),
('STK0624224239', '2025-06-24 22:42:39', 'admin'),
('STK0624224434', '2025-06-24 22:44:34', 'admin'),
('STK0624224820', '2025-06-24 22:48:20', 'admin'),
('STK0624224827', '2025-06-24 22:48:27', 'admin'),
('STK0624230102', '2025-06-24 23:01:03', 'admin'),
('STK1750768055418', '2025-06-24 19:27:35', 'admin'),
('STK1750768062890', '2025-06-24 19:27:42', 'admin'),
('STK1750768687975', '2025-06-24 19:38:07', 'admin'),
('STK1750768887194', '2025-06-24 19:41:27', 'Naida'),
('STK1750768904683', '2025-06-24 19:41:44', 'Naida'),
('STK1750769192979', '2025-06-24 19:46:32', 'rina putri'),
('STK20250616002', '2025-06-16 10:30:00', 'admin'),
('STK20250626002', '2025-06-26 08:42:55', 'naida'),
('STK20250626003', '2025-06-26 08:45:06', 'Rinda'),
('STK20250626004', '2025-06-26 21:03:55', 'naida'),
('STK20250627001', '2025-06-27 11:43:00', 'admin'),
('STK20250627002', '2025-06-27 14:31:31', 'naida'),
('STK20250627003', '2025-06-27 14:32:54', 'naida');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `password` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `fullname`, `password`) VALUES
('admin', 'naida putri ', '202cb962ac59075b964b07152d234b70'),
('ALIYA', 'ALIYA PURNAMASRI', 'ad7e3a275c6c5e8a4a9b0867f88b85d3'),
('bunga', 'bunga matahari', 'e10adc3949ba59abbe56e057f20f883e'),
('Fitria', 'Fitria Nurhayati', '123'),
('Intan', 'Nurlatifah', '123'),
('naida', 'admin123', '202cb962ac59075b964b07152d234b70'),
('naidaaaa', 'naida putri asyaidah', '25d55ad283aa400af464c76d713c07ad'),
('naidaaaaaaa', 'putri asyaidah', '25f9e794323b453885f5181f1b624d0b'),
('rina putri', 'rina mentari', '5e1ddfa79b7f16f76b12e13a68e57f62'),
('Rinda', 'Rinda Tiara', '827ccb0eea8a706c4c34a16891f84e7b'),
('sari', 'sari putri', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesd`
--
ALTER TABLE `salesd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salesId` (`salesId`),
  ADD KEY `barangId` (`barangId`);

--
-- Indexes for table `salesm`
--
ALTER TABLE `salesm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `stockd`
--
ALTER TABLE `stockd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stockId` (`stockId`),
  ADD KEY `barangId` (`barangId`);

--
-- Indexes for table `stockm`
--
ALTER TABLE `stockm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `salesd`
--
ALTER TABLE `salesd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `stockd`
--
ALTER TABLE `stockd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `salesd`
--
ALTER TABLE `salesd`
  ADD CONSTRAINT `salesd_ibfk_1` FOREIGN KEY (`salesId`) REFERENCES `salesm` (`id`),
  ADD CONSTRAINT `salesd_ibfk_2` FOREIGN KEY (`barangId`) REFERENCES `barang` (`id`);

--
-- Constraints for table `salesm`
--
ALTER TABLE `salesm`
  ADD CONSTRAINT `salesm_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `stockd`
--
ALTER TABLE `stockd`
  ADD CONSTRAINT `stockd_ibfk_1` FOREIGN KEY (`stockId`) REFERENCES `stockm` (`id`),
  ADD CONSTRAINT `stockd_ibfk_2` FOREIGN KEY (`barangId`) REFERENCES `barang` (`id`);

--
-- Constraints for table `stockm`
--
ALTER TABLE `stockm`
  ADD CONSTRAINT `stockm_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
