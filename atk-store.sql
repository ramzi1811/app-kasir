-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 03:28 AM
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
-- Database: `atk-store`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `detail_id` int(11) NOT NULL,
  `kode_produk` varchar(15) DEFAULT NULL,
  `nama_produk` varchar(50) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `penjualan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`detail_id`, `kode_produk`, `nama_produk`, `harga`, `jumlah`, `penjualan_id`) VALUES
(1, 'A.001', 'Buku Tulis Sidu 38 Lembar', 4015, 2, 1),
(81, 'B.002', 'Pensil 2B', 11000, 1, 46),
(82, 'A.001', 'Buku Tulis Sidu 38 Lembar', 31500, 1, 47),
(83, 'A.003', 'Buku Gambar Sidu A4', 8000, 1, 48),
(84, 'B.001', 'Pulpen Standar ', 18000, 4, 49),
(85, 'A.001', 'Buku Tulis Sidu 38 Lembar', 31500, 1, 50),
(86, 'A.002', 'Buku Tulis Sidu 64 Lembar', 48000, 1, 51),
(87, 'A.001', 'Buku Tulis Sidu 38 Lembar', 31500, 1, 52),
(88, 'A.001', 'Buku Tulis Sidu 38 Lembar', 31500, 1, 53),
(89, 'A.004', 'Buku Gambar Sidu A3', 21000, 1, 55),
(90, 'A.001', 'Buku Tulis Sidu 38 Lembar', 31500, 1, 56),
(91, 'A.003', 'Buku Gambar Sidu A4', 8000, 1, 57);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `kode_pelanggan` varchar(15) DEFAULT NULL,
  `nama_pelanggan` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `kode_pelanggan`, `nama_pelanggan`, `alamat`, `no_hp`) VALUES
(1, 'P.001', 'Ana Rudiana', 'Jl. K.H. Abdul Halim No. 2011 Majalengka', '085111222333'),
(2, 'P.002', 'Asep Darmawan', 'Lingk. Dahlia No. 20 Majalengka', '085222333444'),
(3, 'P.003', 'ripal', 'Jl. Sudirman No. 25, Kelurahan Menteng, Jakarta Pusat', '085367890123'),
(4, 'P.004', 'farel', 'Jl. Sultan Hasanuddin No. 77, Kecamatan Makassar, Sulawesi Selatan\r\n', '081122223333'),
(5, 'P.005', 'jehan', 'Jl. Imam Bonjol No. 23, Kelurahan Medan Timur, Medan', '081923456789'),
(6, 'P.006', 'ramzi', 'Jl. HOS Cokroaminoto No. 99, Kecamatan Denpasar Barat, Bali', '083242435434'),
(7, 'P.007', 'rizma', 'Jl. Kartini No. 8, Kecamatan Tegalrejo, Yogyakarta\r\n\r\n', '083242432234'),
(8, 'P.008', 'wanda', 'Jl. Raden Saleh No. 36, Kelurahan Gambir, Jakarta Pusat\r\n', '081923456789'),
(9, 'P.009', 'agung', 'Jl. Ahmad Yani No. 47, Kecamatan Wonokromo, Surabaya\r\n\r\n', '082356789012'),
(10, 'P.010', 'anjas', 'Jl. Pahlawan No. 18, Kecamatan Simpang Lima, Semarang\r\n', '083242435431');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `penjualan_id` int(11) NOT NULL,
  `tanggal` datetime DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL,
  `bayar` int(11) DEFAULT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`penjualan_id`, `tanggal`, `total_harga`, `bayar`, `id_pelanggan`, `id_petugas`, `nama_petugas`) VALUES
(1, '2024-01-25 14:05:09', 130000, 150000, 1, 1, 'Yoga Eryana'),
(7, '2024-01-31 11:46:04', NULL, NULL, NULL, 0, NULL),
(8, '2024-03-02 16:59:56', 135000, 150000, 1, 1, 'Yoga Eryana'),
(9, '2024-03-02 18:02:41', 150000, 200000, 2, 4, 'M. Gibran'),
(10, '2024-03-02 18:17:12', 175000, 200000, 1, 4, 'M. Gibran'),
(11, '2024-03-02 18:44:20', 175000, 200000, 1, 4, 'M. Gibran'),
(12, '2024-03-04 12:21:47', 185000, 200000, 1, 4, 'M. Gibran'),
(13, '2024-03-04 12:28:57', 40000, 50000, NULL, 1, 'Yoga Eryana'),
(14, '2024-03-04 20:23:41', 210000, 220000, 1, 2, 'Aldena Restu'),
(15, '2024-03-04 21:32:27', 85000, 100000, NULL, 1, 'Yoga Eryana'),
(16, '2024-03-05 09:09:39', 90000, 100000, NULL, 1, 'Yoga Eryana'),
(17, '2024-03-05 12:20:59', 95000, 100000, 1, 4, 'M. Gibran'),
(18, '2024-03-05 13:23:30', 60000, 70000, 2, 4, 'M. Gibran'),
(19, '2024-03-09 13:28:47', 145000, 150000, 1, 5, 'Ronaldo'),
(20, '2024-04-30 20:56:25', 65000, 100000, NULL, 4, 'M. Gibran'),
(21, '2024-05-28 12:47:55', 85000, 100000, 1, 1, 'Yoga Eryana'),
(22, '2024-06-08 14:09:44', 225000, 250000, 2, 2, 'Aldena Restu'),
(23, '2024-07-18 22:16:42', 105000, 120000, 2, 1, 'Yoga Eryana'),
(24, '2024-08-09 22:20:44', 95000, 100000, NULL, 1, 'Yoga Eryana'),
(25, '2024-08-09 22:27:04', 65000, 100000, NULL, 4, 'M. Gibran'),
(26, '2024-10-04 12:55:40', NULL, NULL, NULL, 0, NULL),
(27, '2024-10-05 07:18:20', NULL, NULL, NULL, 0, NULL),
(28, '2024-10-08 07:19:48', 125000, 1000000, 2, 1, 'Yoga Eryana'),
(29, '2024-10-08 07:58:13', 80000, 1000000, NULL, 1, 'Yoga Eryana'),
(30, '2024-10-08 08:21:43', NULL, NULL, NULL, 0, NULL),
(31, '2024-10-10 12:45:38', NULL, NULL, NULL, 0, NULL),
(32, '2024-10-10 12:48:19', 25000, 30000, NULL, 1, 'Yoga Eryana'),
(33, '2024-10-11 19:08:51', 1000000, 2147483647, 1, 1, 'Anda Sigma Sekali'),
(34, '2024-10-11 19:10:15', NULL, NULL, NULL, 0, NULL),
(35, '2024-10-15 07:43:21', 45000, 1000000, 1, 1, 'Anda Sigma Sekali'),
(36, '2024-10-15 09:41:28', NULL, NULL, NULL, 0, NULL),
(37, '2024-10-15 09:50:31', 25000, 1000000, NULL, 1, 'Anda Sigma Sekali'),
(38, '2024-10-15 11:38:25', NULL, NULL, NULL, 0, NULL),
(39, '2024-10-15 12:13:00', 10000, 1000000, 3, 1, 'Anda Sigma Sekali'),
(40, '2024-10-16 07:27:08', 1000000, 1000000, 3, 1, 'Anda Sigma Sekali'),
(41, '2024-10-16 08:48:59', 12375000, 120000000, NULL, 1, 'Admin'),
(42, '2024-02-22 15:03:52', 165000, 1700000, 1, 4, 'M. Gibran'),
(43, '2024-10-16 16:53:41', 1025000, 2147483647, NULL, 1, 'Admin'),
(44, '2024-10-16 19:08:10', 4015, 1000000, 2, 1, 'Admin'),
(45, '2024-10-18 08:23:55', 31500, 1000000, 10, 1, 'Admin'),
(46, '2024-10-18 08:25:39', 11000, 1000000, 1, 1, 'Admin'),
(47, '2024-10-18 08:56:37', 31500, 1000000, 1, 1, 'Admin'),
(48, '2024-10-18 10:37:07', 8000, 500000, NULL, 1, 'Admin'),
(49, '2024-10-18 10:37:37', 72000, 1000000, NULL, 1, 'Admin'),
(50, '2024-10-29 07:05:58', 31500, 1000000, NULL, 1, 'Admin'),
(51, '2024-10-29 07:06:22', 48000, 1000000, NULL, 1, 'Admin'),
(52, '2024-10-29 07:16:17', 31500, 1000000, 1, 1, 'Admin'),
(53, '2024-10-31 08:19:01', 31500, 32000, NULL, 1, 'Admin'),
(54, '2024-10-31 08:41:10', NULL, NULL, NULL, 0, NULL),
(55, '2024-10-31 08:41:34', 21000, 21000, NULL, 16, 'kawasaki saki'),
(56, '2024-11-06 07:58:20', NULL, NULL, NULL, 0, NULL),
(57, '2024-11-07 07:49:00', 8000, 10000, NULL, 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nama_petugas` varchar(35) DEFAULT NULL,
  `level` enum('admin','petugas') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
(1, 'admin', '$2y$10$fLm0bttQzBRjSg/if/zO4.KegWHsYJ.C3E5aXkPzI/s32sV/Ub3l6', 'Admin', 'admin'),
(8, 'admin2', '$2y$10$RkdXSe3JXBSjovYHTEZkXeS6Qka3lj522qg0clWexXOZa3Q1M1iBC', 'rizma', 'admin'),
(9, 'kasir', '$2y$10$gXN0Esmf.8b8ozhd6kQNGOPaAf6GJNESVc0MBKXU1wIh9uLxIiBUO', 'Ramzi Musthofa', 'petugas'),
(10, 'kasir2', '$2y$10$tlrrobY0X75ZAiETRESNiOw7xxtLJSdc1uME6eKlFdBaeycsS62Ia', 'ripal', 'petugas'),
(11, 'admin3', '$2y$10$bvHdVooOOZsxu.LeUipt..2GNK9iOtbVC5bpmZyjirRzcpqsBv8H2', 'fathan', 'admin'),
(12, 'kasir4', '$2y$10$WR.m0UxIGrRulAJi40UKn.x2zPB3O.hbbk/Q69FtLR4CbK0NkiaJ.', 'rizma', 'petugas'),
(13, 'kasir5', '$2y$10$Ko/sLqo9ke6BqLtSKj7qouYD0dEYPshSFRHk6iKc3nhSPLs036mW2', 'agung', 'petugas'),
(14, 'kasir6', '$2y$10$.uC1n7/QW57hiTuOkQLs3e5nohwADfNQqOZkzxEvOoRAX1aGM55qW', 'wanda', 'petugas'),
(15, 'admin3', '$2y$10$3ZUXAWDk9c.1s83iEIFRAOXFrcbusFXBvy7qpnSoLwmSw5kJLUxyO', 'Ripaldi', 'admin'),
(16, 'kasir7', '$2y$10$3jc/7ASHbrMIyZ5puzfeEOkACnUEszUD4eju3/T6UGeYdMtQCbnfW', 'kawasaki saki', 'petugas'),
(17, 'ramzi', '$2y$10$Md5B0Wzu4DC.or2PCZ/HJeefMldbY9EQ/GNNF3LIpWheXqVNKMBIC', 'ramzi', 'petugas'),
(18, 'admin', '$2y$10$XZJV6j0/DQPUjdaTvPcfROeJZqjY2otbAspy69y/JJRFdO2loZXGa', 'admin3', 'admin'),
(19, 'wawi', '$2y$10$LmXM4ZOxOK/5cCWo3MA1ruUuBRQo01Zpqd6ZTYeJcVveZoUyHjAcK', 'wawi', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `kode_produk` varchar(15) DEFAULT NULL,
  `nama_produk` varchar(50) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `kode_produk`, `nama_produk`, `harga`, `stok`) VALUES
(2, 'A.001', 'Buku Tulis Sidu 38 Lembar', 31500, 10),
(4, 'A.002', 'Buku Tulis Sidu 64 Lembar', 48000, 10),
(5, 'A.003', 'Buku Gambar Sidu A4', 8000, 10),
(6, 'A.004', 'Buku Gambar Sidu A3', 21000, 10),
(7, 'A.005', 'Buku Tulis BigBoos 34 Lembar', 55700, 10),
(8, 'B.001', 'Pulpen Standar ', 18000, 5),
(9, 'B.002', 'Pensil 2B', 11000, 10),
(11, 'B.003', 'Pensil Warna 12 Warna', 11000, 10),
(12, 'B.004', 'Spidol Warna 12 warna', 14500, 10),
(13, 'B.005', 'Pulpen Joyko', 21000, 10),
(14, 'C.001', 'Kertas HVS Paper One A4 80 Gr All Purpose', 50500, 10),
(15, 'C.002', 'Kertas Double Folio 100lbr Sidu', 30000, 10),
(16, 'C.003', '1 Pak Sampul Buku Batik Campus TEBAL Isi 20 Lembar', 12152, 20),
(17, 'C.004', '1 pack Sampul Buku Coklat POLOS Kwarto dan Boxy 20', 9500, 7),
(18, 'D.001', 'Stabilo Joyko Warna Kuning | Highlighter ', 10000, 5),
(19, 'D.002', 'Stabilo Joyko Pastel (Hl-7) Pink', 10000, 20),
(20, 'D.003', 'Stabillo Joyko Highlighter - Hijau', 10000, 7),
(24, 'E.001', 'OYKO Penghapus 526-B40P Warna Putih / Eraser Kecil', 14500, 5),
(25, 'E.002', 'Tip Ex Cair Kenko KE 01 Tipex Correction Pen - 1 B', 66250, 7),
(26, 'E.003', 'Penghapus Joyko Eb 30 Panjang - Putih, 1 Pack', 35800, 29),
(27, 'M.001', 'Penggaris', 3000, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tambah_stok`
--

CREATE TABLE `tambah_stok` (
  `tambah_id` int(11) NOT NULL,
  `tanggal` datetime DEFAULT NULL,
  `kode_produk` varchar(15) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tambah_stok`
--

INSERT INTO `tambah_stok` (`tambah_id`, `tanggal`, `kode_produk`, `jumlah`) VALUES
(1, '2024-01-31 08:39:02', 'M.001', 20),
(2, '2024-01-31 08:39:48', 'M.002', 10),
(3, '2024-01-31 08:41:23', 'M.003', 20),
(4, '2024-01-31 08:43:53', 'M.005', 10),
(5, '0000-00-00 00:00:00', 'M.001', 10),
(6, '0000-00-00 00:00:00', 'M.001', 50),
(7, '0000-00-00 00:00:00', 'D.002', 10),
(8, '0000-00-00 00:00:00', 'M.003', 2),
(9, '0000-00-00 00:00:00', 'D.001', 10),
(10, '0000-00-00 00:00:00', 'A.001', 10),
(11, '0000-00-00 00:00:00', 'E.001', 6),
(12, '0000-00-00 00:00:00', 'E.001', 10),
(13, '0000-00-00 00:00:00', 'C.001', 7),
(14, '0000-00-00 00:00:00', 'E.001', 7),
(15, '0000-00-00 00:00:00', '', 7),
(16, '0000-00-00 00:00:00', '', 7),
(17, '0000-00-00 00:00:00', 'E.001', 70),
(18, '0000-00-00 00:00:00', 'E.001', 50),
(19, '0000-00-00 00:00:00', 'C.004', 7),
(20, '0000-00-00 00:00:00', 'M.001', 5),
(21, '0000-00-00 00:00:00', 'M.001', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`penjualan_id`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tambah_stok`
--
ALTER TABLE `tambah_stok`
  ADD PRIMARY KEY (`tambah_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `penjualan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tambah_stok`
--
ALTER TABLE `tambah_stok`
  MODIFY `tambah_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
