-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2019 at 03:20 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rfk_agenda`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` varchar(10) NOT NULL,
  `tempat` varchar(70) NOT NULL,
  `acara` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `tanggal`, `waktu`, `tempat`, `acara`) VALUES
(24, '2019-07-22', '08.00', 'Ruang S.3.3', 'Ujian Bahasa Inggris'),
(25, '2019-07-24', '24 jam', 'kosan', 'libur UAS'),
(26, '2019-07-20', '10.00', 'Aula Universitas Ahmad Dahlan', 'Wisuda');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `konten` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `tanggal`, `gambar`, `judul`, `konten`) VALUES
(6, '2019-07-16', '1', 'UAS', '<p>UAS pada tanggal 15 juli 2019 sampai 2 agustus 2019</p>'),
(7, '2019-07-16', '7', 'Pergi Keluar kota', '<p>supirin orang, waktu 24 jam, tanggal 27 juli 2019 tujuan cilacap</p>'),
(8, '2019-07-16', '8', 'Pendakian Gunung Argopuro', '<p>melakukan pendakian selama 7 hari di gunung argupuro, Banyuwangi, Jawa Timur. Tanggal 4 Agustus 2019.</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
