-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2022 at 06:25 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inven`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_barang`
--

CREATE TABLE `m_barang` (
  `kode_brg` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tipeID` int(11) NOT NULL,
  `subtipeID` int(11) NOT NULL,
  `harga_umum` int(11) NOT NULL,
  `harga_promo` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_barang`
--

INSERT INTO `m_barang` (`kode_brg`, `nama`, `status`, `tipeID`, `subtipeID`, `harga_umum`, `harga_promo`, `harga_beli`, `stok`) VALUES
(1, 'ADVANCE AX7', 'AKTIF', 1, 1, 43000, 45000, 41000, 0),
(2, 'ADVANCE X5', 'AKTIF', 2, 5, 40000, 38000, 20000, 0),
(3, '89 - 2939 - TL', 'AKTIF', 4, 4, 40000, 38000, 35000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `m_karyawan`
--

CREATE TABLE `m_karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `nama_karyawan` varchar(255) NOT NULL,
  `office` varchar(255) NOT NULL,
  `divisi` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_karyawan`
--

INSERT INTO `m_karyawan` (`id_karyawan`, `nik`, `nama_karyawan`, `office`, `divisi`, `jabatan`, `status`) VALUES
(1, '3201120302032', 'LUIZ DIAS', 'BSS TEKNO', 'IRC', 'IT', 'AKTIF'),
(2, '3201112929192', 'ANDRE RAHWANA', 'BSS TEKNO', 'IRC', 'IT', 'TIDAK AKTIF');

-- --------------------------------------------------------

--
-- Table structure for table `m_subtipe`
--

CREATE TABLE `m_subtipe` (
  `id_sub` int(11) NOT NULL,
  `tipeID` int(11) NOT NULL,
  `nama_sub` varchar(255) NOT NULL,
  `status_sub` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_subtipe`
--

INSERT INTO `m_subtipe` (`id_sub`, `tipeID`, `nama_sub`, `status_sub`) VALUES
(1, 1, 'ADVANCE AX7', 'AKTIF'),
(2, 2, 'BAN LUAR TL', 'AKTIF'),
(3, 1, 'ADVANCE 10W-40', 'AKTIF'),
(5, 2, 'TUBELESS', 'AKTIF'),
(6, 4, 'SYNTETHIC MOTOR OIL', 'AKTIF');

-- --------------------------------------------------------

--
-- Table structure for table `m_supplier`
--

CREATE TABLE `m_supplier` (
  `id_supplier` int(11) NOT NULL,
  `kode_sup` varchar(255) NOT NULL,
  `nama_sup` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_supplier`
--

INSERT INTO `m_supplier` (`id_supplier`, `kode_sup`, `nama_sup`, `alamat`, `kota`, `status`, `no_telp`, `fax`, `pic`) VALUES
(1, 'BSSTNG001', 'PT BSS TEKNO', 'JLN TEKNO INDUSTRI', 'TANGERANG SELATAN', 'AKTIF', '081249392932', '02123932992', 'ELVA'),
(2, 'GALAKSIBAN002', 'PT GALAKSI BAN', 'Dk. Wora Wari', 'CIMAHI', 'AKTIF', '025192392332', '0212230232', 'ELVA');

-- --------------------------------------------------------

--
-- Table structure for table `m_tipe`
--

CREATE TABLE `m_tipe` (
  `id_tipe` int(11) NOT NULL,
  `nama_tipe` varchar(255) NOT NULL,
  `status_tipe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_tipe`
--

INSERT INTO `m_tipe` (`id_tipe`, `nama_tipe`, `status_tipe`) VALUES
(1, 'OLI SHELL', 'AKTIF'),
(2, 'BAN MOTOR', 'AKTIF'),
(3, 'BAN MOBIL', 'AKTIF'),
(4, 'OLI TOP1', 'AKTIF');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `contents` text NOT NULL,
  `admin` varchar(20) NOT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'aktif'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `contents`, `admin`, `status`) VALUES
(21, 'Disini bisa tulis notes', 'Stock', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `sbrg_keluar`
--

CREATE TABLE `sbrg_keluar` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `so` varchar(255) NOT NULL,
  `po` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `penerima` varchar(255) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sbrg_keluar`
--

INSERT INTO `sbrg_keluar` (`id`, `idx`, `tgl`, `so`, `po`, `jumlah`, `penerima`, `keterangan`) VALUES
(15, 244, '2020-08-29', '', '', 1000, 'Kasmina', 'Laku'),
(16, 246, '2022-06-16', '2233122', '2131231', 200, 'Cipta Otopartss', 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `sbrg_masuk`
--

CREATE TABLE `sbrg_masuk` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `so` varchar(255) NOT NULL,
  `po` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sbrg_masuk`
--

INSERT INTO `sbrg_masuk` (`id`, `idx`, `tgl`, `supplier`, `so`, `po`, `jumlah`, `keterangan`) VALUES
(14, 246, '2022-06-16', 'PT. GAJAH TUNGGAL', '121122', '2233122', 500, 'dummy'),
(15, 247, '2022-06-16', 'PT. GAJAH TUNGGAL', '2131231', '12312', 400, 'dummy'),
(16, 247, '2022-06-16', 'PT. GAJAH MUNCUL', '2131231', '123122', 100, 'dummy');

-- --------------------------------------------------------

--
-- Table structure for table `slogin`
--

CREATE TABLE `slogin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slogin`
--

INSERT INTO `slogin` (`id`, `username`, `password`, `nickname`, `role`) VALUES
(7, 'guest', '084e0343a0486ff05530df6c705c8bb4', 'Admin', 'stock');

-- --------------------------------------------------------

--
-- Table structure for table `sstock_brg`
--

CREATE TABLE `sstock_brg` (
  `idx` int(11) NOT NULL,
  `kode_brg` varchar(255) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `harga` int(255) NOT NULL,
  `diskon` int(255) NOT NULL,
  `stock` int(12) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `subtype` varchar(255) NOT NULL,
  `merk` varchar(40) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `tgl_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sstock_brg`
--

INSERT INTO `sstock_brg` (`idx`, `kode_brg`, `nama`, `harga`, `diskon`, `stock`, `jenis`, `subtype`, `merk`, `keterangan`, `tgl_input`) VALUES
(246, '1', '89 - 2939 - TL', 40000, 12, 611, 'Ban', 'TL', 'IRC', 'ya', '2022-06-16 08:06:47'),
(247, '2', '82 - 2939 - TL', 40000, 12, 900, 'Ban', 'TL', 'IRC', 'ya', '2022-06-16 08:41:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_barang`
--
ALTER TABLE `m_barang`
  ADD PRIMARY KEY (`kode_brg`);

--
-- Indexes for table `m_karyawan`
--
ALTER TABLE `m_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `m_subtipe`
--
ALTER TABLE `m_subtipe`
  ADD PRIMARY KEY (`id_sub`);

--
-- Indexes for table `m_supplier`
--
ALTER TABLE `m_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `m_tipe`
--
ALTER TABLE `m_tipe`
  ADD PRIMARY KEY (`id_tipe`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sbrg_keluar`
--
ALTER TABLE `sbrg_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sbrg_masuk`
--
ALTER TABLE `sbrg_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slogin`
--
ALTER TABLE `slogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sstock_brg`
--
ALTER TABLE `sstock_brg`
  ADD PRIMARY KEY (`idx`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_barang`
--
ALTER TABLE `m_barang`
  MODIFY `kode_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_karyawan`
--
ALTER TABLE `m_karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `m_subtipe`
--
ALTER TABLE `m_subtipe`
  MODIFY `id_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `m_supplier`
--
ALTER TABLE `m_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `m_tipe`
--
ALTER TABLE `m_tipe`
  MODIFY `id_tipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sbrg_keluar`
--
ALTER TABLE `sbrg_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sbrg_masuk`
--
ALTER TABLE `sbrg_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `slogin`
--
ALTER TABLE `slogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sstock_brg`
--
ALTER TABLE `sstock_brg`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
