-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 05:34 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pariwisata_semarang`
--

-- --------------------------------------------------------

--
-- Table structure for table `tempat_wisata`
--

CREATE TABLE `tempat_wisata` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempat_wisata`
--

INSERT INTO `tempat_wisata` (`id`, `nama`, `deskripsi`, `alamat`) VALUES
(3, 'Mohamad Satya', 'Sampokong', 'JL.wiroto 3 no 8 Semarang'),
(4, 'Angelina Putri', 'Lawang Sewu', 'JL.Minatroewo selatan no 6 Bandung'),
(5, 'Agus Yatnoret', 'Kota Lama', 'JL.pegangsaan timur  3 Jakarta Selatan'),
(6, 'Aliyyah sinta', 'Brown Canyon', 'JL.semawis selatan 10 Semarang'),
(7, 'Sherina Agustina', 'Umbul Sidomukti', 'JL.Sambiroto gang 97 Surabaya'),
(8, 'Atha Fathiyah', 'Kampung Batik', 'JL.Thamrin 45 selatan Yogyakarta'),
(9, 'Indah', 'Candi Gedong Songo', 'JL.klton nimpur,Surabaya'),
(10, 'Rina Melati', 'Museum Ambarawa', 'JL. Slamet Riyadi,Solo'),
(11, 'Siti Badriah', 'plosotan pelangi', 'JL werkudoro 34 Semarang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tempat_wisata`
--
ALTER TABLE `tempat_wisata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tempat_wisata`
--
ALTER TABLE `tempat_wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
