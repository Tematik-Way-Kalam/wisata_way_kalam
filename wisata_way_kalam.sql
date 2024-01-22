-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2024 at 11:46 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata_way_kalam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `kategori_admin` varchar(255) DEFAULT NULL,
  `id_wisata` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `kategori_admin`, `id_wisata`) VALUES
(8, 'way-kalam', '202cb962ac59075b964b07152d234b70', 'superadmin', 0),
(9, 'Dikzs', '202cb962ac59075b964b07152d234b70', 'admin', 1),
(12, 'toby', '202cb962ac59075b964b07152d234b70', 'admin', 12);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `id_lokasi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id_contact`, `contact`, `link`, `id_lokasi`) VALUES
(11, 'Instagram', 'instagram.com/miftahulhuda520', 4),
(12, 'Facebook', 'instagram.com/miftahulhuda520', 5),
(13, 'WhatsApp', 'wa.me/628995643121', 7),
(14, 'Instagram', 'instagram.com/miftahulhuda520', 6);

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id_fasilitas` int(11) NOT NULL,
  `fasilitas` varchar(255) DEFAULT NULL,
  `id_lokasi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fasilitas`
--

INSERT INTO `fasilitas` (`id_fasilitas`, `fasilitas`, `id_lokasi`) VALUES
(5, 'Wifi', 5),
(6, 'Makan Gratis', 4),
(7, 'Tidur Nyaman', 6),
(8, 'Wihh', 7);

-- --------------------------------------------------------

--
-- Table structure for table `gambar_katalog`
--

CREATE TABLE `gambar_katalog` (
  `id_gambar_katalog` int(11) NOT NULL,
  `gambar_katalog` varchar(255) DEFAULT NULL,
  `id_lokasi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gambar_katalog`
--

INSERT INTO `gambar_katalog` (`id_gambar_katalog`, `gambar_katalog`, `id_lokasi`) VALUES
(5, 'indukan.svg', 4),
(6, 'camping.svg', 6),
(7, 'bst.jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id_info` int(11) NOT NULL,
  `nomor_telp` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `link_ig` varchar(255) DEFAULT NULL,
  `link_fb` varchar(255) DEFAULT NULL,
  `link_website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id_info`, `nomor_telp`, `alamat`, `link_ig`, `link_fb`, `link_website`) VALUES
(1, '082372825801', 'Way Kalam, Kec. Penengahan, Kabupaten Lampung Selatan, Lampung 35592', '#', '#', '#');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id_lokasi` int(11) NOT NULL,
  `gambar_lokasi` varchar(255) DEFAULT NULL,
  `id_wisata` int(11) DEFAULT NULL,
  `deskripsi_lokasi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id_lokasi`, `gambar_lokasi`, `id_wisata`, `deskripsi_lokasi`) VALUES
(4, 'indukan.svg', 1, 'Air dingin berr'),
(5, 'anakan.svg', 4, 'Air Terjun dingin'),
(6, 'camping.svg', 5, 'Camping Ground ...'),
(7, 'mawar.svg', 7, 'Kups Mawar Bodas ...'),
(8, 'gulaaren.svg', 8, 'Kups Gula Aren ...'),
(9, 'siruppala.svg', 9, 'Kups Sirup Pala ...'),
(10, 'madu.svg', 10, 'Madu ...'),
(11, 'hs1.svg', 11, 'Home Stay ...'),
(12, 'wr1.svg', 12, 'Warung Teh Ayu ...'),
(13, 'pt.svg', 13, 'Kups Sumber Rezeki ...'),
(14, 'masjid.svg', 14, 'Masjid Al-Falah ...');

-- --------------------------------------------------------

--
-- Table structure for table `penghargaan`
--

CREATE TABLE `penghargaan` (
  `id_penghargaan` int(11) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `headline` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penghargaan`
--

INSERT INTO `penghargaan` (`id_penghargaan`, `gambar`, `headline`, `deskripsi`) VALUES
(1, 'bsdt.png', 'Juara 1 Desain Grafis', 'Pada tahun 10000 sebelum masehi desain sangat langka'),
(3, 'penghargaan1.png', 'ANUGRAH DESA WISATA INDONESIA 2023', 'Desa Wisata Way Kalam tak ada henti hentinya mencetak prestasi di tingkat nasional. Kali ini, Way Kalam dipilih oleh Kemenparekraf sebagai Anugerah Desa Wisata Indonesia 2023 dengan tema Desa Sebagai Simbol Kebangkitan Nasional.'),
(4, 'penghargaan2.png', '300 BESAR ANUGRAH DESA WISATA INDONESIA 2022', 'Desa Way Kalam merupakan satu dari 300 besar Anugerah Desa Wisata Indonesia Tahun 2022. Tidak hanya tahun 2022, pada tahun 2021 Desa Way Kalam juga menerima penghargaan yang sama sebagai desa wisata yang berkualitas. ');

-- --------------------------------------------------------

--
-- Table structure for table `penghargaan_ld`
--

CREATE TABLE `penghargaan_ld` (
  `id_p` int(11) NOT NULL,
  `id_penghargaan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penghargaan_ld`
--

INSERT INTO `penghargaan_ld` (`id_p`, `id_penghargaan`) VALUES
(1, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `gambar_produk` varchar(255) DEFAULT NULL,
  `nama_produk` varchar(255) DEFAULT NULL,
  `id_wisata` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `gambar_produk`, `nama_produk`, `id_wisata`) VALUES
(4, 'sukro.jpg', 'Sukro Goreng', 6),
(5, 'g.jpg', 'Sukro Goreng Krispi', 6),
(6, 'bst.jpeg', 'd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id_slide` int(11) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `headline` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id_slide`, `gambar`, `headline`, `deskripsi`) VALUES
(3, 'gambar1.png', 'AIR TERJUN WAY KALAM', 'Di sini, terbentang cerita petualangan, desa wisata memikat hati. Dari air terjun yang menjulang tinggi hingga berkemah di hutan alami. Rencanakan perjalananmu, temukan pengalaman dan kebahagiaan, di setiap klik halaman kami.'),
(4, 'gambar2.png', 'AIR TERJUN ANAKAN', 'Di sini, terbentang cerita petualangan, desa wisata memikat hati. Dari air terjun yang menjulang tinggi hingga berkemah di hutan alami. Rencanakan perjalananmu, temukan pengalaman dan kebahagiaan, di setiap klik halaman kami.'),
(5, 'gambar3.png', 'CAMPING GROUND', 'Di sini, terbentang cerita petualangan, desa wisata memikat hati. Dari air terjun yang menjulang tinggi hingga berkemah di hutan alami. Rencanakan perjalananmu, temukan pengalaman dan kebahagiaan, di setiap klik halaman kami.');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `id_statistik` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `hari` varchar(50) DEFAULT NULL,
  `bulan` varchar(255) DEFAULT NULL,
  `jumlah_pengunjung_air_terjun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`id_statistik`, `tanggal`, `hari`, `bulan`, `jumlah_pengunjung_air_terjun`) VALUES
(6, '2024-01-20', 'Saturday', 'January', 30),
(15, '2024-01-19', 'Friday', 'January', 22),
(36, '2024-02-18', 'Sunday', 'February', 40);

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id_testimoni` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `komen` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id_testimoni`, `foto`, `nama`, `status`, `komen`) VALUES
(2, 'user.png', 'Yondika Fadillah', 'Mahasiswa ITERA', 'Keren'),
(3, 'user.png', 'Ardi Vio Landa', 'Mahasiswa ITB', 'Keren Boss'),
(4, 'user-online.png', 'Agil Kharisma', 'Mahasiswa UI', 'Keren Bang');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `link`) VALUES
(1, 'https://drive.google.com/file/d/1AVUQN7lWLPwGtA1c-EjdJjRkD_9u4etG/preview');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(11) NOT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `headline` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `kategori`, `gambar`, `headline`, `deskripsi`) VALUES
(1, 'Wisata', 'gambar1.png', 'Air Terjun Way Kalam', 'Air Terjun adalah air yang mengalir dari atas ke bawah'),
(4, 'Wisata', 'gambar2.png', 'Air Terjun Anakan', 'Air Terjun adalah air yang mengalir dari atas ke bawah'),
(5, 'Wisata', 'gambar3.png', 'Camping Ground', 'Air Terjun adalah air yang mengalir dari atas ke bawah'),
(6, 'Warung/Toko', 'pakde.jpg', 'Warung Pakde Ardi', 'Warung pakde ardi berdiri sejak tahun 1000 sebelum masehi warung ini masih berjaya sampai saat ini, visi dari warung inipun untuk menguasai dunia'),
(7, 'UMKM', 'mawar.svg', 'Kups Mawar Bodas', 'Kups Mawar Bodas ....'),
(8, 'UMKM', 'gulaaren.svg', 'Kups Gula Aren', 'Kups Gula Aren ...'),
(9, 'UMKM', 'siruppala.svg', 'Kups Sirup Pala', 'Kups Sirup Pala ...'),
(10, 'UMKM', 'madu.svg', 'Madu', 'Madu ...'),
(11, 'Home Stay', 'hs1.svg', 'Home Stay', 'Home Stay ...'),
(12, 'Warung/Toko', 'wr1.svg', 'Warung Teh Ayu', 'Warung Teh Ayu ...'),
(13, 'Peternakan', 'pt.svg', 'Kups Sumber Rezeki', 'Kups Sumber Rezeki ...'),
(14, 'Lainnya', 'masjid.svg', 'Masjid Al-Falah', 'Masjid Al-Falah ...'),
(15, 'Home Stay', 'hs1.svg', 'Penginapan AK', 'Penginapan AK ...');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id_fasilitas`);

--
-- Indexes for table `gambar_katalog`
--
ALTER TABLE `gambar_katalog`
  ADD PRIMARY KEY (`id_gambar_katalog`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `penghargaan`
--
ALTER TABLE `penghargaan`
  ADD PRIMARY KEY (`id_penghargaan`);

--
-- Indexes for table `penghargaan_ld`
--
ALTER TABLE `penghargaan_ld`
  ADD PRIMARY KEY (`id_p`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `statistik`
--
ALTER TABLE `statistik`
  ADD PRIMARY KEY (`id_statistik`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id_testimoni`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id_fasilitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gambar_katalog`
--
ALTER TABLE `gambar_katalog`
  MODIFY `id_gambar_katalog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id_lokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `penghargaan`
--
ALTER TABLE `penghargaan`
  MODIFY `id_penghargaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penghargaan_ld`
--
ALTER TABLE `penghargaan_ld`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `statistik`
--
ALTER TABLE `statistik`
  MODIFY `id_statistik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id_testimoni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
