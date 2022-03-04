-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 04 Mar 2022 pada 06.29
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'redaksi@bukulokomedia.com', '08238923848', 'admin', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungi`
--

CREATE TABLE IF NOT EXISTS `hubungi` (
`id_hubungi` int(5) NOT NULL,
  `id_kustomer` int(5) NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=24 ;

--
-- Dumping data untuk tabel `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `id_kustomer`, `subjek`, `pesan`, `tanggal`) VALUES
(18, 12, 'pulsator mesin cuci', 'saya memesan 2', '2022-01-18'),
(19, 12, 'mengganti jumlah barang', 'saya ingin mengganti jumlah barang menjadi 2 unit', '2022-03-03'),
(22, 12, 'mengganti jumlah barang', 'saya ingin mengganti jumlah obeh menjadi 3 unit', '2022-03-03'),
(23, 12, 'mengganti jumlah barang', 'saya ingin mengganti jumlah obeh menjadi 3 unit', '2022-03-03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
`id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=22 ;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(16, 'Kulkas'),
(17, 'Televisi'),
(18, 'Laptop'),
(19, 'Mesin Cuci'),
(21, 'Produk lain');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE IF NOT EXISTS `kota` (
`id_kota` int(3) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `ongkos_kirim` int(10) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`id_kota`, `nama_kota`, `ongkos_kirim`) VALUES
(1, 'Jakarta', 13000),
(2, 'Bandung', 13500),
(3, 'Semarang', 10000),
(4, 'Medan', 20000),
(5, 'Aceh', 25000),
(6, 'Banjarmasin', 17500),
(7, 'Balikpapan', 18500),
(8, 'Samarinda', 19500),
(9, 'Lainnya', 10000),
(10, 'Palembang', 23000),
(11, 'Surabaya', 13000),
(12, 'Padang', 5000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kustomer`
--

CREATE TABLE IF NOT EXISTS `kustomer` (
`id_kustomer` int(5) NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat` text COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `telepon` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `id_kota` int(5) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=13 ;

--
-- Dumping data untuk tabel `kustomer`
--

INSERT INTO `kustomer` (`id_kustomer`, `password`, `nama_lengkap`, `alamat`, `email`, `telepon`, `id_kota`) VALUES
(1, 'e10adc3949ba59abbe56e057f20f883e', 'Lukmanul Hakim', 'Jl. Prof. Dr. Soepomo No. 178, Tebet, Jakarta Timur 17280', 'algosigma@gmail.com', '081804396000', 1),
(2, 'cec1de94b66011a1cfed0a45f8ba8e16', 'budiono', 'Jl. Dipenogoro', 'budiono_114@yahoo.com', '083242233323', 5),
(3, '4b0cf71ac4f5267ae87e1092e98395ba', 'budionokompas1', 'Jl. Dorak, Selatpanjang1', 'budiono.115@gmail.com', '081275371724', 3),
(4, '4b0cf71ac4f5267ae87e1092e98395ba', 'budionokompas', 'tes', 'budiono.114@gmail.com', '081275371724', 5),
(8, '7346bb28a937a5c4a5373834518a3d2b', 'Iqbal Dwiansyah', 'lubuk begalung , padang', 'iqbaldwiansyah@gmail.com', '112233445566', 9),
(10, 'e10adc3949ba59abbe56e057f20f883e', 'Fadeli Surya', 'Kediri', 'fadelisurya@gmail.com', '085462315489', 9),
(11, '827ccb0eea8a706c4c34a16891f84e7b', 'rizal', 'Padang', 'rizal@gmail.com', '086768574893', 12),
(12, '202cb962ac59075b964b07152d234b70', 'Rizal Wardana', 'padang', 'rizal11@gmail.com', '081372143737', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
`id_modul` int(5) NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=58 ;

--
-- Dumping data untuk tabel `modul`
--

INSERT INTO `modul` (`id_modul`, `static_content`, `gambar`) VALUES
(1, '<p>\r\n<font color="#ff0000">Frista Elektronik , Menjual Berbagai Sparepart elektronik rumah anda.</font>\r\n</p>\r\n', 'fffff.png'),
(2, '', ''),
(3, '<p>\r\nPembayaran dilakukan Melalui Rekening Toko Kami di bawah ini :\r\n</p>\r\n<p>\r\n<strong>BRI :1909.8099.00.11</strong>\r\n</p>\r\n<p>\r\nA/n &nbsp; : Acuan \r\n</p>\r\n<p>\r\n<strong>Mandiri : 503.0292.22</strong>\r\n</p>\r\n<p>\r\nA/n : Acuan\r\n</p>\r\n<p>\r\n<strong>BNI :&nbsp; 09.8099.00.</strong>\r\n</p>\r\n<p>\r\nA/n : Acuan\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`id_orders` int(5) NOT NULL,
  `status_order` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'Baru',
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `id_kustomer` int(5) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=37 ;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id_orders`, `status_order`, `tgl_order`, `jam_order`, `id_kustomer`) VALUES
(26, 'Lunas', '2021-12-15', '16:29:28', 8),
(27, 'Lunas', '2021-12-15', '16:59:36', 10),
(28, 'Lunas', '2021-12-16', '10:19:47', 11),
(29, 'Baru', '2021-12-22', '08:41:13', 11),
(30, 'Baru', '2022-01-18', '14:49:00', 12),
(31, 'Baru', '2022-01-18', '14:51:39', 12),
(32, 'Lunas', '2022-01-30', '07:16:22', 12),
(33, 'Baru', '2022-01-30', '07:22:37', 12),
(34, 'Baru', '2022-03-02', '02:40:54', 12),
(35, 'Baru', '2022-03-02', '02:42:38', 12),
(36, 'Baru', '2022-03-03', '08:58:56', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_detail`
--

CREATE TABLE IF NOT EXISTS `orders_detail` (
  `id_orders` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `orders_detail`
--

INSERT INTO `orders_detail` (`id_orders`, `id_produk`, `jumlah`) VALUES
(26, 34, 1),
(27, 34, 2),
(28, 34, 1),
(30, 34, 2),
(31, 34, 1),
(32, 37, 1),
(32, 44, 2),
(32, 40, 1),
(34, 45, 1),
(36, 46, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_temp`
--

CREATE TABLE IF NOT EXISTS `orders_temp` (
`id_orders_temp` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tgl_order_temp` date NOT NULL,
  `jam_order_temp` time NOT NULL,
  `stok_temp` int(5) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=195 ;

--
-- Dumping data untuk tabel `orders_temp`
--

INSERT INTO `orders_temp` (`id_orders_temp`, `id_produk`, `id_session`, `jumlah`, `tgl_order_temp`, `jam_order_temp`, `stok_temp`) VALUES
(194, 46, 'rizal11@gmail.com', 1, '2022-03-03', '08:59:22', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
`id_produk` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `berat` decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  `tgl_masuk` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibeli` int(5) NOT NULL DEFAULT '1',
  `diskon` int(5) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=47 ;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `deskripsi`, `harga`, `stok`, `berat`, `tgl_masuk`, `gambar`, `dibeli`, `diskon`) VALUES
(34, 19, 'Pulsator Mesin Cuci', '&nbsp;Pulsator Mesin Cuci LG 2tabung\r\n', 250000, 1, '1.00', '2021-12-15', '205628998_4af24252-a800-4df3-a2a3-dba6aec4d49d.jpg', 5, 0),
(35, 19, 'Knob Mesin Cuci', '', 5000, 10, '0.00', '2022-01-30', '64Knob Mesin Cuci.jpg', 1, 0),
(36, 19, 'Selang Pembuangan Air', '', 30000, 8, '0.00', '2022-01-30', '31Selang Pembuangan Air.jpg', 1, 0),
(37, 19, 'Karet Mesin Cuci', '', 7000, 19, '0.00', '2022-01-30', '40Karet Mesin Cuci.jpg', 2, 0),
(38, 16, 'Bimetal Defrost Kulkas 2 Pintu', '', 15000, 5, '0.00', '2022-01-30', '77Bimetal Defrost Kulkas 2 Pintu.jpg', 1, 0),
(39, 16, 'Embraco NEK 6170', '', 275000, 3, '0.00', '2022-01-30', '40Embraco NEK 6170.jpg', 1, 0),
(40, 16, 'Evaporator Kulkas', '', 30000, 6, '0.00', '2022-01-30', '25Evaporator Kulkas.jpg', 2, 0),
(41, 17, 'Kapasitor Tv', '', 5000, 20, '0.00', '2022-01-30', '93Kapasitor Tv.jpg', 1, 0),
(42, 0, 'Resistor', '', 7000, 20, '0.00', '2022-01-30', '68Resistor.jpg', 1, 0),
(43, 17, 'Transistor', '', 15000, 10, '0.00', '2022-01-30', '77Transistor.jpg', 1, 0),
(44, 21, 'Multitester', '', 70000, 3, '0.00', '2022-01-30', '65multitester.jpg', 3, 0),
(45, 21, 'Solder Listrik', '', 30000, 7, '0.00', '2022-01-30', '10solder_listrik.jpg', 1, 0),
(46, 21, 'Obeng', '', 10000, 9, '0.00', '2022-01-30', '8Obeng.jpg', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `hubungi`
--
ALTER TABLE `hubungi`
 ADD PRIMARY KEY (`id_hubungi`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
 ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
 ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `kustomer`
--
ALTER TABLE `kustomer`
 ADD PRIMARY KEY (`id_kustomer`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
 ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id_orders`);

--
-- Indexes for table `orders_temp`
--
ALTER TABLE `orders_temp`
 ADD PRIMARY KEY (`id_orders_temp`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
 ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hubungi`
--
ALTER TABLE `hubungi`
MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
MODIFY `id_kota` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `kustomer`
--
ALTER TABLE `kustomer`
MODIFY `id_kustomer` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `id_orders` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `orders_temp`
--
ALTER TABLE `orders_temp`
MODIFY `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=195;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
MODIFY `id_produk` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
