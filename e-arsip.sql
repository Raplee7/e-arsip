-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2021 at 09:27 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-arsip-ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arsip`
--

CREATE TABLE `tbl_arsip` (
  `id_arsip` int(11) NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `no_arsip` varchar(15) DEFAULT NULL,
  `nama_arsip` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `tgl_upload` date DEFAULT NULL,
  `tgl_update` date DEFAULT NULL,
  `file_arsip` text DEFAULT NULL,
  `ukuran_file` int(11) DEFAULT NULL,
  `id_dep` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_arsip`
--

INSERT INTO `tbl_arsip` (`id_arsip`, `id_kategori`, `no_arsip`, `nama_arsip`, `deskripsi`, `tgl_upload`, `tgl_update`, `file_arsip`, `ukuran_file`, `id_dep`, `id_user`) VALUES
(7, 12, '20100259-sjFJ', 'Sertifikat seminar', NULL, '2020-10-02', '2020-10-02', '1601643438_f6c983f776afce130031.pdf', 1000, 1, 1),
(8, 3, '20100228-PtZ5', 'Surat Keputusan', 'Surat Keputusan', '2020-10-02', '2020-10-02', '1601643665_70cb49d74ee3cdf2ffc0.pdf', 632879, 1, 1),
(9, 2, '20100219-owBC', 'Surat Keluar Ke Kantor Camat', 'Surat Keluar Ke Kantor Camat', '2020-10-02', '2020-10-02', '1601644005_e6dea022fdbf6549db8e.pdf', 632879, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dep`
--

CREATE TABLE `tbl_dep` (
  `id_dep` int(11) NOT NULL,
  `nama_dep` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_dep`
--

INSERT INTO `tbl_dep` (`id_dep`, `nama_dep`) VALUES
(1, 'Keuangan'),
(2, 'Humas'),
(3, 'Pemasaran');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Surat Masuk'),
(2, 'Surat Keluar'),
(3, 'Berkas Kerja'),
(4, 'Surat Keputusan'),
(5, 'Arsip Umum'),
(6, 'Berkas Kesehatan'),
(7, 'Berkas Internal'),
(12, 'Sertifikat');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `id_dep` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `email`, `password`, `foto`, `id_dep`) VALUES
(1, 'Rafli Marian Mirza', 'raflimarianm@gmail.com', '1234', 'user1.jpg', 1),
(2, 'Budi', 'budi@gmail.com', '1234', 'User.png', 2),
(3, 'Andi', 'andi@gmail.com', '1234', 'User.png', 3),
(8, 'Ani', 'ani@gmail.com', '1234', '1601116917_ba4a3e3fd9841cf88fd3.png', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_arsip`
--
ALTER TABLE `tbl_arsip`
  ADD PRIMARY KEY (`id_arsip`) USING BTREE;

--
-- Indexes for table `tbl_dep`
--
ALTER TABLE `tbl_dep`
  ADD PRIMARY KEY (`id_dep`) USING BTREE;

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`) USING BTREE;

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_arsip`
--
ALTER TABLE `tbl_arsip`
  MODIFY `id_arsip` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_dep`
--
ALTER TABLE `tbl_dep`
  MODIFY `id_dep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
