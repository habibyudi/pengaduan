-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 09, 2024 at 12:27 AM
-- Server version: 8.0.35
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengaduan`
--

-- --------------------------------------------------------

--
-- Table structure for table `datapenduduk`
--

CREATE TABLE `datapenduduk` (
  `id` int NOT NULL,
  `desa` varchar(255) NOT NULL,
  `jumlah` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datapenduduk`
--

INSERT INTO `datapenduduk` (`id`, `desa`, `jumlah`) VALUES
(1, 'Bulutengger', 200),
(2, 'Manyar', 325),
(3, 'Siman', 295),
(4, 'Ngarum', 165),
(5, 'Kendal', 125),
(6, 'Porodeso', 85);

-- --------------------------------------------------------

--
-- Table structure for table `data_desa`
--

CREATE TABLE `data_desa` (
  `id_desa` int NOT NULL,
  `nama_desa` varchar(255) NOT NULL,
  `Jumlah_kk` int NOT NULL,
  `email_desa` varchar(255) NOT NULL,
  `kepala_desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_desa`
--

INSERT INTO `data_desa` (`id_desa`, `nama_desa`, `Jumlah_kk`, `email_desa`, `kepala_desa`) VALUES
(1, 'Desa Bulutengger', 200, 'infobulutengger@gmail.com', 'Muhammad Zainudin'),
(2, 'Desa Manyar', 325, 'infomanyar@gmail.com', 'Dini Widyaningsih'),
(3, 'Desa Siman', 295, 'infosiman@gmail.com', 'Ahmad Mukhlisin'),
(4, 'Desa Ngarum', 165, 'infongarum@gmail.com', 'Jamaludin Mubarok'),
(5, 'Desa Kendal', 125, 'infokendal@gmail.com', 'Anisa Anggarini'),
(6, 'Desa Porodeso', 85, 'infoporodeso@gmail.com', 'Umar Jalaludin');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id` int NOT NULL,
  `instansi_id` int NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `judul_pengaduan` varchar(255) NOT NULL,
  `isi_pengaduan` text NOT NULL,
  `status_pengaduan` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id`, `instansi_id`, `tgl_pengaduan`, `judul_pengaduan`, `isi_pengaduan`, `status_pengaduan`) VALUES
(12, 2, '2021-11-28', 'Pemadaman Listrik', 'Sudah lima hari listrik desa sering bemasalah di malam hari, itu membuat masyarakat resah. Terima Kasih.', 2),
(13, 6, '2021-11-28', 'Sembako', 'Sudah dua bulan sembako di desa belum turun juga, saya makan apa Pak?', 0),
(14, 7, '2021-11-28', 'Sarana Prasarana', 'Jalan raya desa berlubang, kemarin saya hampir terjungkal jungkal. Semoga cepat diperbaiki, terima kasih.', 1),
(15, 8, '2021-11-28', 'Posyandu', 'Posyandu desa sudah tiga bulan belum diadakan, anak saya waktunya vaksin tetanus. Terima kasih.', 1),
(16, 2, '2021-12-03', 'Pembuatan KTP', 'Sudah dua bulan saya mengajukan pembuatan KTP tetapi belum kelar juga. Tolong dipercepat karena saya sangat membutuhkan. Terima Kasih.', 0),
(17, 2, '2021-12-08', 'Pembuatan Akta Kelahiran', 'Sudah tiga bulan saya mengajukan pembuatan Akta Kelahiran anak saya tetapi sampai saat ini masih belum jadi. Tolong dipercepat ya Pak, terima kasih.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_rss`
--

CREATE TABLE `tb_rss` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_rss`
--

INSERT INTO `tb_rss` (`id`, `title`, `link`) VALUES
(1, 'Desa Besur Dongkrak Perekonomian Masyarakat di Segala Aspek', 'https://radarbojonegoro.jawapos.com/tag/219264/desa-besur-kecamatan-sekaran'),
(2, 'HUT TNI Ke-76, Forkopimcam Sekaran Salurkan Ribuan Vaksin', 'https://asatunet.com/asatunet-HUT-TNI-Ke-76--Forkopimcam-Sekaran-Salurkan-Ribuan-Vaksin'),
(3, 'Pokja Relawan Desa Bulutengger Jadi yang Pertama Rampungkan Pendataan SDGs Desa di Kabupaten Lamongan', 'https://beritajatim.com/politik-pemerintahan/pokja-relawan-desa-bulutengger-jadi-yang-pertama-rampungkan-pendataan-sdgs-desa-di-kabupaten-lamongan/');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `nama_instansi` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama_instansi`, `email`, `alamat`, `username`, `password`, `role_id`) VALUES
(1, '1234567890', 'admin@gmail.com', 'Desa', 'admin', '$2y$10$29hzvIzxyWsLGp.LgsnA6e08p6gg1bvRR3fHos7NvOqjwr8gMFfGe', 1),
(2, '3120521019', 'rakyat@gmail.com', 'Desa Bulutengger', 'rakyat', '$2y$10$uQ6prU6umMQMx70WjuX/hOaZmt9.lV.wT02Ja9CvfSfUGMGOVGsvm', 2),
(6, '3120521029', 'nikenanggun@gmail.com', 'Desa Manyar', 'Niken Anggun', '$2y$10$IsHmE1EGl3oD20c32ix8p.pO5mSYNQ2PX2xZX.vTAkQtSzN195LrW', 2),
(7, '3120521039', 'royazwan@gmail.com', 'Desa Siman', 'Roy Azwan Saputra', '$2y$10$IkdCndZhlELUKcjNZNjYfelTniT9i58af91uGOVTK4pUkEI/wC8Z6', 2),
(8, '3120521049', 'alfinameiyanti@gmail.com', 'Desa Ngarum', 'Alfina Meiyanti', '$2y$10$hMAohki6.N2fvRSASNQ.Uuab1667AJjAo35QBGgSnrJ3d51auiwhS', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datapenduduk`
--
ALTER TABLE `datapenduduk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_desa`
--
ALTER TABLE `data_desa`
  ADD PRIMARY KEY (`id_desa`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_rss`
--
ALTER TABLE `tb_rss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datapenduduk`
--
ALTER TABLE `datapenduduk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_desa`
--
ALTER TABLE `data_desa`
  MODIFY `id_desa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_rss`
--
ALTER TABLE `tb_rss`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
