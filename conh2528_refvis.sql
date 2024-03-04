-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 04, 2024 at 10:14 AM
-- Server version: 10.2.44-MariaDB-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `conh2528_refvis`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `desk` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `nama`, `desk`, `foto`, `id_user`, `created_at`, `updated_at`, `deleted_at`) VALUES
(22, 'default_album', 'default_album', '', 1234, '2024-02-27 04:02:57', '2024-02-27 04:02:57', '2024-02-27 04:02:57'),
(26, 'a', 'a', 'cover85043.jpg', 28, '2024-03-03 02:28:56', '2024-03-03 02:28:56', '0000-00-00 00:00:00'),
(27, '', '', 'cover11684.png', 29, '2024-03-04 03:06:03', '2024-03-04 03:06:03', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `albumdata`
--

CREATE TABLE `albumdata` (
  `id_data` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_foto` int(11) NOT NULL,
  `id_album` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `albumdata`
--

INSERT INTO `albumdata` (`id_data`, `id_user`, `id_foto`, `id_album`, `created_at`, `updated_at`, `deleted_at`) VALUES
(44, 28, 214, 22, '2024-03-03 02:40:51', '2024-03-03 02:40:51', '0000-00-00 00:00:00'),
(45, 28, 214, 26, '2024-03-03 02:41:10', '2024-03-03 02:41:10', '0000-00-00 00:00:00'),
(46, 29, 215, 22, '2024-03-03 13:09:03', '2024-03-03 13:09:03', '0000-00-00 00:00:00'),
(47, 29, 216, 22, '2024-03-03 13:09:37', '2024-03-03 13:09:37', '0000-00-00 00:00:00'),
(48, 29, 217, 22, '2024-03-03 13:09:58', '2024-03-03 13:09:58', '0000-00-00 00:00:00'),
(49, 29, 218, 22, '2024-03-03 13:10:18', '2024-03-03 13:10:18', '0000-00-00 00:00:00'),
(50, 29, 219, 22, '2024-03-04 02:05:24', '2024-03-04 02:05:24', '0000-00-00 00:00:00'),
(51, 29, 220, 22, '2024-03-04 02:06:01', '2024-03-04 02:06:01', '0000-00-00 00:00:00'),
(52, 29, 221, 22, '2024-03-04 02:06:26', '2024-03-04 02:06:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `id_foto` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `desk` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`id_foto`, `judul`, `desk`, `kategori`, `foto`, `id_user`, `created_at`, `updated_at`, `deleted_at`) VALUES
(214, 'Toyota Supra', 'Toyota Supra', '4', '1709433651_e333ef115536bd3dd78a.jpg', 28, '2024-03-03 02:40:51', '2024-03-03 02:40:51', '0000-00-00 00:00:00'),
(215, '', '', '12', '1709471343_7254f5c6613fe8fd1b03.jpg', 29, '2024-03-03 13:09:03', '2024-03-03 13:09:03', '0000-00-00 00:00:00'),
(216, '', '', '12', '1709471377_bf9e009ed98c84956f3e.jpg', 29, '2024-03-03 13:09:37', '2024-03-03 13:09:37', '0000-00-00 00:00:00'),
(217, 'Ruang Angkasa', '', '10', '1709471398_3170ec5abb5933c1dedc.jpg', 29, '2024-03-03 13:09:58', '2024-03-03 13:09:58', '0000-00-00 00:00:00'),
(218, '', '', '3', '1709471418_e132311cd7ae0f47374a.jpg', 29, '2024-03-03 13:10:18', '2024-03-03 13:10:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komen` int(11) NOT NULL,
  `isi_komen` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_foto` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komen`, `isi_komen`, `id_user`, `id_foto`, `created_at`, `updated_at`, `deleted_at`) VALUES
(74, 'halo', 28, 214, '2024-03-03 12:50:22', '2024-03-03 12:50:22', '0000-00-00 00:00:00'),
(75, 'sugoi', 29, 216, '2024-03-04 02:45:24', '2024-03-04 02:45:24', '0000-00-00 00:00:00'),
(76, 'sugoi', 29, 214, '2024-03-04 02:45:58', '2024-03-04 02:45:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `laike`
--

CREATE TABLE `laike` (
  `id_like` int(11) NOT NULL,
  `id_foto` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laike`
--

INSERT INTO `laike` (`id_like`, `id_foto`, `id_user`, `created_at`, `updated_at`, `deleted_at`) VALUES
(52, 210, 27, '2024-03-02 03:13:01', '2024-03-02 03:13:01', '0000-00-00 00:00:00'),
(53, 212, 29, '2024-03-02 03:16:48', '2024-03-02 03:16:48', '0000-00-00 00:00:00'),
(54, 210, 28, '2024-03-02 03:18:14', '2024-03-02 03:18:14', '0000-00-00 00:00:00'),
(56, 213, 29, '2024-03-02 05:14:30', '2024-03-02 05:14:30', '0000-00-00 00:00:00'),
(57, 212, 28, '2024-03-03 02:28:41', '2024-03-03 02:28:41', '0000-00-00 00:00:00'),
(58, 214, 28, '2024-03-03 02:41:06', '2024-03-03 02:41:06', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `resetpw`
--

CREATE TABLE `resetpw` (
  `id_reset` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(2555) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resetpw`
--

INSERT INTO `resetpw` (`id_reset`, `email`, `token`, `id_user`, `created_at`, `updated_at`, `deleted_at`) VALUES
(0, 'haiii123@gmail.com', '58d6e53b6a2a990658c2', 0, '2024-03-03 12:53:52', '2024-03-03 12:53:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `actv` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `email`, `alamat`, `password`, `foto`, `actv`, `created_at`, `updated_at`, `deleted_at`) VALUES
(26, 'yati', 'yatinibos', 'mahadewisabrinaputri@gmail.com', 'Jogja ', '$2y$10$4YvXn5fLEs5bk3k19UkO9O6MMg03Tt0CHFYKNE9RMovnOgrP5sFrq', 'user.png', 'true', '2024-03-02 03:06:45', '2024-03-02 03:07:26', '0000-00-00 00:00:00'),
(27, 'amell', 'amell', 'melindaamelia553@gmail.com', 'yogya', '$2y$10$PDfco4nioBjkvyMdeevjwOGSGNe4vFfW/HlAByAY68m1n8aZ1Qh2O', 'user.png', 'true', '2024-03-02 03:07:37', '2024-03-02 03:08:17', '0000-00-00 00:00:00'),
(28, 'Rehannn Aja', 'rehan', 'ryuezzx@gmail.com', 'Pandeyan', '$2y$10$pfdFF0ouaMcIsARiv52FYOl2rAaAFvgM1GseeJQUoLA5nTgHYI9rO', '1709348990_1723487b8b8b1687f557.gif', 'true', '2024-03-02 03:08:43', '2024-03-02 03:09:50', '0000-00-00 00:00:00'),
(29, 'Zao', 'user01', 'lintangnata4@gmail.com', 'jgoioioi', '$2y$10$sMRi95EHm6VPwi2Bevhfve2oArKPPl/K8snDBjsFx9qAELCGfUvPW', '1709519982_0877eecc856e297286bd.png', 'true', '2024-03-02 03:10:51', '2024-03-04 02:39:42', '0000-00-00 00:00:00'),
(30, 'ahlfs', 'ahlfs', 'ahlulffirdaus@gmail.com', 'ppp', '$2y$10$18LEBNdda/Ls.XIcl9x4/O0PZEayIvSc9LvHeT.9AJjLUkokiow0a', 'user.png', 'true', '2024-03-02 04:18:12', '2024-03-02 04:18:47', '0000-00-00 00:00:00'),
(31, 'Ren', 'Ren30', 'andy65@gmail.com', 'Tuban', '$2y$10$KuwiSo1s8Vem4yynQEMi8OYUXk8pgsb8wYCwoxQr.hrguyS8KlVUy', 'user.png', 'e768a50b979efdc1d12c', '2024-03-02 04:53:33', '2024-03-02 04:53:33', '0000-00-00 00:00:00'),
(32, 'Tazz', 'Stazz', 'husaintama08@gmail.com', 'Di sana', '$2y$10$l13Qx6U.crqN97xZxKRmbOVXqGQVOlt..TqnJYK9aXX/YmxqsWJPS', 'user.png', '1c4d4fb5f92e0528a011', '2024-03-02 06:01:51', '2024-03-02 06:01:51', '0000-00-00 00:00:00'),
(37, 'Haii', 'Haii', 'haiii123@gmail.com', 'Yogyakarta ', '$2y$10$WJpoVydDhRo.YLhqs4R9.e9INEcAPBvrKbVhEIiTEzWd8zLxJxQFq', 'user.png', '337b2e68e352e80f7302', '2024-03-03 12:52:57', '2024-03-03 12:52:57', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `albumdata`
--
ALTER TABLE `albumdata`
  ADD PRIMARY KEY (`id_data`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_foto`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komen`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_galeri` (`id_foto`);

--
-- Indexes for table `laike`
--
ALTER TABLE `laike`
  ADD PRIMARY KEY (`id_like`);

--
-- Indexes for table `resetpw`
--
ALTER TABLE `resetpw`
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `albumdata`
--
ALTER TABLE `albumdata`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `laike`
--
ALTER TABLE `laike`
  MODIFY `id_like` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
