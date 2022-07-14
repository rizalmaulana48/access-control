-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2021 at 08:07 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_akseskontrol`
--

-- --------------------------------------------------------

--
-- Table structure for table `akses_kontrol`
--

CREATE TABLE `akses_kontrol` (
  `id_akses` int(10) NOT NULL,
  `id_ruang` int(11) NOT NULL,
  `kode_mk` char(11) NOT NULL,
  `npm` varchar(11) NOT NULL,
  `kd_dos` char(11) NOT NULL,
  `nokartu` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_masuk` time NOT NULL,
  `waktu_keluar` time NOT NULL,
  `status` char(20) NOT NULL,
  `gambar` varchar(20) NOT NULL,
  `status_aktifasi` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akses_kontrol`
--

INSERT INTO `akses_kontrol` (`id_akses`, `id_ruang`, `kode_mk`, `npm`, `kd_dos`, `nokartu`, `nama`, `tanggal`, `waktu_masuk`, `waktu_keluar`, `status`, `gambar`, `status_aktifasi`) VALUES
(1, 1, '', '', '', '12457534545423', 'Rizal Maulana', '2021-07-01', '10:17:59', '11:08:59', 'Mahasiswa', 'defaul.jpg', 0),
(2, 4, '', '', '', '18282212444', 'Fajar Refa', '2021-07-09', '08:34:10', '10:34:10', 'Mahasiswa', 'defaul.jpg', 0),
(3, 5, '', '', '', '1245753454542312', 'Gunawan Sehru', '2021-07-01', '10:17:59', '11:53:07', 'Mahasiswa', 'defaul.jpg', 0),
(4, 6, '', '', '', '5214745893134534', 'Muhamad Fahri', '2021-07-02', '07:02:11', '08:02:11', 'Mahasiswa', 'defaul.jpg', 0),
(6, 4, '680PK1801', '085017011', '12345678910', '12457534545423', 'Diki Chandra', '2021-07-01', '09:01:18', '11:08:59', 'Mahasiswa', 'defaul.jpg', 1),
(8, 1, '', '085018001', '', '12345678910', 'Tazki Qodri Alwi', '2021-09-08', '09:38:40', '11:38:40', 'Mahasiswa', 'defaul.jpg', 0),
(9, 1, '', '085018002', '', '12345678911', 'Fachri Nugraha', '2021-09-08', '09:10:20', '10:11:00', 'Mahasiswa', 'defaul.jpg', 0),
(10, 1, '', '085018003', '', '12345678912', 'Livia Annisa Fajri', '2021-09-08', '09:02:00', '09:58:03', 'Mahasiswa', 'defaul.jpg', 0),
(11, 1, '', '085018004', '', '12345678913', 'Muhamad Falah Rifki Al Rasyid', '2021-09-08', '09:08:00', '10:20:00', 'Mahasiswa', 'defaul.jpg', 0),
(12, 1, '', '085018007', '', '12345678915', 'Fajar Refapratama', '2021-09-08', '08:59:00', '10:00:00', 'Mahasiswa', 'defaul.jpg', 0),
(13, 1, '', '085018008', '', '12345678916', 'Gunawan Sehru', '2021-09-08', '09:00:10', '10:02:00', 'Mahasiswa', 'defaul.jpg', 0),
(14, 1, '', '085018009', '', '12345678917', 'Zeolita Adenia Badriani', '2021-09-08', '09:10:10', '10:10:10', 'Mahasiswa', 'defaul.jpg', 0),
(15, 1, '', '085018010', '', '12345678918', 'Elinda Puspita', '2021-09-08', '09:10:12', '09:50:00', 'Mahasiswa', 'defaul.jpg', 0),
(16, 1, '', '085018011', '', '12345678919', 'Bunga Anggi Safitri', '2021-09-08', '19:00:00', '20:00:00', 'Mahasiswa', 'defaul.jpg', 0),
(17, 1, '', '085018012', '', '12345678920', 'Teddy Setiawan', '2021-09-08', '09:00:00', '10:02:00', 'Mahasiswa', 'defaul.jpg', 0),
(18, 6, '', '084018002', '', '9876543210', 'Hana M Tekege', '2021-09-10', '06:57:44', '09:57:44', 'Mahasiswa', 'defaul.jpg', 0),
(19, 6, '', '084018005', '', '9876543212', 'M. Aziz', '2021-09-10', '08:57:44', '09:57:44', 'Mahasiswa', 'defaul.jpg', 0),
(20, 6, '', '084018006', '', '9876543212', 'Ferdi Wardana', '2021-09-10', '08:02:41', '11:08:59', 'Mahasiswa', 'defaul.jpg', 0),
(21, 6, '680KB2807', '084018007', '12345678917', '9876543213', 'Tasya Aprilia', '2021-09-01', '09:03:41', '11:34:10', 'Mahasiswa', 'defaul.jpg', 1),
(22, 6, '680KB2807', '084018008', '12345678917', '9876543214', 'M. Indra Supriyadi', '2021-09-08', '10:10:10', '11:11:11', 'Mahasiswa', 'defaul.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `aktivasi`
--

CREATE TABLE `aktivasi` (
  `id_aktiv` int(11) NOT NULL,
  `id_ruang` int(11) NOT NULL,
  `id_matkul` int(11) NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aktivasi`
--

INSERT INTO `aktivasi` (`id_aktiv`, `id_ruang`, `id_matkul`, `waktu_mulai`, `waktu_selesai`, `status`) VALUES
(1, 4, 69, '10:17:59', '11:08:59', 1),
(2, 1, 1, '10:00:00', '11:00:00', 1),
(4, 2, 5, '10:10:00', '11:11:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `asdos`
--

CREATE TABLE `asdos` (
  `id_asdos` int(11) NOT NULL,
  `kode_asdos` char(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `nokartu` varchar(30) NOT NULL,
  `jk` enum('Laki-laki','Perempuan','','') NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `alamat` char(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `asdos`
--

INSERT INTO `asdos` (`id_asdos`, `kode_asdos`, `nama`, `nokartu`, `jk`, `nohp`, `alamat`, `foto`, `status`) VALUES
(2, '1827282', 'Fajar Refapratama', '18319013334', 'Laki-laki', '1212121', '  bogor', 'defaul.jpg', ''),
(7, '1818', 'Mohammad Rexsy Surya Pratama', '1212', 'Laki-laki', '08271639133', '  bogor', 'defaul.jpg', ''),
(9, '18272826', 'Diki Chandra Suandi', '999281723', 'Laki-laki', '08261728312', ' Bogor', 'defaul.jpg', ''),
(10, '2525591', 'Mauladani Adi Gasbara', '18319012224', 'Laki-laki', '0827162781', ' Bogor', 'defaul.jpg', ''),
(11, '982877', 'Mona Nabila', '2231827181', 'Perempuan', '0895718212', ' Bogor', 'defaul.jpg', ''),
(12, '1827225', 'Chelsy Putri Melani', '128390281', 'Perempuan', '0898282824', ' Bogor', 'defaul.jpg', ''),
(13, '111', 'Kaprodi', '111', 'Laki-laki', '11111', ' 1111', 'defaul.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dos` int(11) NOT NULL,
  `kd_dos` char(11) NOT NULL,
  `nokartu` varchar(50) NOT NULL,
  `nama_dos` varchar(40) NOT NULL,
  `jk` enum('Laki-laki','Perempuan') CHARACTER SET utf8 NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `no_hp` char(12) NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dos`, `kd_dos`, `nokartu`, `nama_dos`, `jk`, `alamat`, `no_hp`, `foto`) VALUES
(1, '12345678910', '', 'Drs. Sasongko, MM', 'Laki-laki', 'Jakarta', '081209879876', 'd1.jpg'),
(2, '12345678900', '', 'Dr. Henny Suharyati, M.a', 'Laki-laki', ' Jakarta ', '081234832712', ''),
(3, '12345678901', '', 'Dr Tjut Awaliyah Zuraiyah, M.Kom', '', ' Bogor ', '081574510041', 'd2.jpg'),
(4, '12345678902', '', 'Lia Dahlia Iryani, S.E., Si', '', ' Bogor', '081311128757', ''),
(5, '12345678903', '', 'Yetty Husnul Haryati, S.E., MM', '', ' Bogor', '081314361342', ''),
(6, '12345678904', '', 'Prof. Dr. Ing Soewarto H', 'Laki-laki', ' Jakarta', '08128371016', ''),
(7, '12345678905', '', 'Dr. Sri Setyaningsih, M.Si', '', ' Sukabumi', '081282613390', ''),
(8, '12345678906', '', 'Aries Maesya, M. Kom.', 'Laki-laki', 'Bogor ', '083948292812', ''),
(9, '12345678907', '', 'Jemy Arieswanto, M. Kom.', 'Laki-laki', ' Bogor', '087687892712', ''),
(10, '12345678908', '', 'Eneng Tita Tosida, M. Si.', '', ' Bogor  ', '087627837212', ''),
(11, '12345678909', '', 'Arie Qur\'ania, M.Kom', '', ' Bogor', '089872615231', ''),
(12, '12345678911', '', 'Tatang Muhajang, M.A', 'Laki-laki', ' Bogor', '081234523123', 'd4.jpg'),
(13, '12345678912', '', 'Agung Prajuhana Putra, M. Kom.', 'Laki-laki', ' Bogor ', '087637262716', ''),
(14, '12345678913', '', 'Dinar Muggaran Akhmad, M.kom', 'Laki-laki', 'bogor ', '08872615', ''),
(15, '12345678914', '', 'Dini Suhartini, S.Kom., MMSI.', '', 'bogor', '0899384442', ''),
(16, '12345678915', '', 'EmaKurnia,S.Kom.,M.Sc', '', 'Cibonong', '089938444211', 'default.jpg'),
(17, '12345678916', '', 'HalimahTusSadiah,M.Kom.', '', 'Cibonong', '08993844234', 'default.jpg'),
(20, '12345678917', '', 'SufiatulMaryana,M.Kom.', '', 'Cibonong', '089938890', 'default.jpg'),
(21, '12345678918', '', 'DianKartikaUtami,MKom.', '', 'bogor', '089900000', 'jpg'),
(22, '12345678919', '', 'M. Saad NurulIshlah,M.Comp.', 'Laki-laki', 'Cibonong', '089000000', 'jpg'),
(23, '02345678901', '', 'Akbar Sugih Miftahul Huda, M.Kom.', 'Laki-laki', 'Cibonong  ', '08600000001', 'defaul.jpg'),
(24, '02345678902', '', ' Yuli Wahyuni, M.T. ', '', 'Bogor', '0800000', 'jpg'),
(25, '02345678903', '', 'Victor Ilys Sugara, M.Kom.', 'Laki-laki', 'Cibonong', '0860000000', 'jpg'),
(26, '12345678920', '', ' Yunita Rahma, M.Kom.', '', 'Cibonong', '086000000', 'png'),
(27, '12345678921', '', ' M. Iqbal Suriansyah, M.Kom.', 'Laki-laki', 'Bogor ', '08000000', ''),
(29, '02345678904', '', ' Deden Ardiansyah, M.Kom. ', 'Laki-laki', 'Cibonong', '086000000', 'jpg'),
(30, '12345678922', '', 'Lita Karlita Sari, MMSI', '', 'Cibonong', '0860000000', 'jpg'),
(32, '12345678923', '', 'Suhermanto, S.H, M.H.', 'Laki-laki', 'Cibonong', '0860000000', 'JPG'),
(33, '02445678901', '', 'Fitra Syafaat, SE.,M.M.', '', 'kp.bogor', '0860000000', 'jpg'),
(34, '02445678902', '', 'Dewi Taurusyanti, S.E.,M.M.', '', 'Bogor', '0210000000', 'jpg'),
(35, '02445678903', '', 'Zul Azhar, Ir., M.M', 'Laki-laki', 'Bogor', '021000000', 'jpg'),
(36, '02445678904', '', 'Sri Rosanti, S.E., M.Sc.', '', 'Bogor', '02100000', 'jpg'),
(37, '02445678905', '', 'Yossie Yuliasanti, S.H., M.Kn.', '', 'Cibonong', '086000000', 'jpg'),
(38, '02445678906', '', 'Iman Santoso, S.E., M.M.', 'Laki-laki', 'Bogor', '', 'jpg'),
(49, '02445678907', '', 'Haqi Fadillah,S.E.,M.Ak.', 'Laki-laki', 'Cibonong', '0899384442', 'jpg'),
(50, '02445678908', '', 'Bambang Wahyudiono, SE.,M.M.', 'Laki-laki', 'Bogor', '0210000000', 'jpg'),
(51, '02445678909', '', 'Dr. Edhi Asmirantho, S.E.,M.M.', 'Laki-laki', 'Bogor', '021000000', 'jpg'),
(52, '02445678910', '', 'Setiawan Kriswanto,Ak.,S.E., M.M.,CA., C', 'Laki-laki', 'Bogor', '02100000', 'jpg'),
(53, '02445678911', '', 'Andreas Murti, S.E., M.M.', 'Laki-laki', 'bogor', '02100000', 'jpg'),
(54, '02445678912', '', 'Chandra Pribadi, Ak., M.Si., CPSAK., CPA', 'Laki-laki', 'bogor', '021100000', 'jpg'),
(55, '02445678913', '', 'Drs. M. Sumardi Sulaeman, M.M.', 'Laki-laki', 'cibinong', '021100000', 'jpg'),
(56, '02445678914', '', 'Drs. Nugroho Arimuljarto,M.M', 'Laki-laki', 'cibinong', '02100000', 'jpg'),
(57, '02445678915', '', 'Jamilah Salahuddin, S.S., M.M. ', 'Laki-laki', 'bogor', '021000000', 'jpg'),
(72, '03123456701', '', 'Patar Simamora, S.E., M.Si.', 'Laki-laki', 'Cibonong', '0860000000', 'jpg'),
(73, '03123456702', '', 'Selvi Arsanti, S.Sos., M.A.', '', 'Bogor', '0210000000', 'jpg'),
(74, '03123456703', '', 'Dr. Edhi Asmirantho, SE.,M.M.', 'Laki-laki', 'Bogor', '021000000', 'jpg'),
(75, '03123456704', '', 'Sigit Edi Surono, S.E., M.M.', 'Laki-laki', 'Bogor', '02100000', 'jpg'),
(76, '03123456705', '', 'Fitra Syafaat, S.E, M.M.', 'Laki-laki', 'bogor', '021000000', 'jpg'),
(77, '03123456706', '', 'Tiara Timuriana, S.E..,M.M.', '', 'bogor', '021000000', 'jpg'),
(78, '03123456707', '', 'Miftahudin, S.E., M.M.', 'Laki-laki', 'bogor', '02100000', 'jpg'),
(79, '03123456708', '1837461267', 'Sari Rejeki, M.Hum', 'Perempuan', 'cibinong', '02100000', 'defaul.jpg'),
(80, '03123456709', '098247162', 'Dewi Taurusyanti, S.E.,M.M.', 'Perempuan', 'bogor', '021000000', 'defaul.jpg'),
(81, '03123456710', '99274618222', 'Haqi Fadillah, S.E., M. Ak.', 'Laki-laki', 'bogor', '021000000', 'defaul.jpg'),
(82, '03123456711', '6987548711', 'Dessy  Herlisnawati, S.E., M.Si.', 'Perempuan', 'cibinong', '02100000', 'defaul.jpg'),
(83, '03123456712', '3589747478', 'Delta Hadi Purnama, S.E, M.E.Sy.', 'Laki-laki', 'bogor', '021000000', 'defaul.jpg'),
(84, '03123456713', '1212373841', 'Amelia Rahmi, S.E., M.Ak.', 'Perempuan', 'bogor', '0898566355', 'defaul.jpg'),
(91, '03123456714', '7274615274', 'Djoko Hardjanto, S.Pt., M.Si.', 'Laki-laki', 'Cibonong', '0860000000', 'defaul.jpg'),
(92, '03123456715', '989283761824', 'Erwin, Ak., MBA., CA.', 'Laki-laki', 'Bogor', '080000000', 'defaul.jpg'),
(93, '03123456716', '9897671231', 'Dedi Yusar, S.S., M.Pd.', 'Laki-laki', 'Bogor', '021000000', 'defaul.jpg'),
(94, '03123456717', '9878972812', 'Siti Maimunah, S.E., M.Si.', 'Perempuan', ' Bogor', '02100000', 'defaul.jpg'),
(95, '03123456718', '1123247812', 'Satsangkaryon, Drs., M.M., Akt.', 'Laki-laki', 'bogor', '0210000000', 'defaul.jpg'),
(96, '03123456719', '98782784712', 'Siti Maimunah, S.E., M.Si.', 'Perempuan', '   bogor', '0210000000', 'defaul.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `waktu` varchar(30) NOT NULL,
  `hari` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `waktu`, `hari`) VALUES
(9, '10.00-11.40 ', 'Jumat'),
(10, '08.00-09.40\r\n', ''),
(11, '13.00-14.40', ''),
(12, '16.00-17.40 ', ''),
(13, '17.00-18.40', ''),
(14, '18.30-20.00', ''),
(15, '15.00-16.40', ''),
(16, '18.30-20.00', ''),
(17, '20.00', ''),
(18, '08:00:00-12:50:00', 'senin'),
(19, '13:00-15:00', 'sabtu'),
(20, '07:30-12:20', 'Kamis'),
(21, '13:00:00-16:40:00', 'Kamis'),
(22, '08:00:00-11:40:00', 'senin'),
(23, '09:00:00 - 11:50:00', 'selasa'),
(24, '13:00:00 - 16:40:00', 'selasa'),
(25, '08:00:00-11:40:00', 'Rabu'),
(26, '08:00:00-11.40:00', 'Kamis'),
(27, '13:00:00-16:40:00', 'Jum\'at'),
(28, '08:00:00-11:40:00', 'Selasa'),
(29, '10:15:00-12:30:00', 'Selasa'),
(30, '13:00:00-16:40:00', 'selasa'),
(31, ' 08:00:00-10:50:00', 'Senin'),
(32, ' 07:30:00-12:20:00 ', 'Senin');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama` varchar(60) CHARACTER SET utf8 NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `nokartu` varchar(30) NOT NULL,
  `jk` enum('Laki-laki','Perempuan') CHARACTER SET utf8 NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama`, `no_hp`, `nokartu`, `jk`, `jabatan`, `alamat`, `foto`) VALUES
(3, 'Muhammad Saipul', '0898283712', '0911562819', 'Laki-laki', 'Office Boy', ' Bogor', 'defaul.jpg'),
(4, 'Dinda Kirana', '0895718212', '082712K1928', 'Perempuan', 'Office girl', '   Bogor barat', 'defaul.jpg'),
(9, 'Rifki Ali', '08218387167', '9898976781', 'Laki-laki', 'Office boy', ' Bogor', 'defaul.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kode_kel` int(11) NOT NULL,
  `kode_ruang` char(11) NOT NULL,
  `nama_ruang` varchar(20) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `waktu` char(30) NOT NULL,
  `kode_mk` char(11) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `kd_dos` char(11) NOT NULL,
  `nama_dos` varchar(50) NOT NULL,
  `id_status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kode_kel`, `kode_ruang`, `nama_ruang`, `id_jadwal`, `waktu`, `kode_mk`, `nama_mk`, `kd_dos`, `nama_dos`, `id_status`) VALUES
(1, 'RK.3.1', 'Banpres', 1, '10:00 - 11:40', '680PK1801', '', '12345678910', 'Drs. Sasongko, MM', 0),
(2, 'R.K3.2', 'Banpres', 6, '2019/05/28 15:58:48', '680KB2812', '', '12345678901', '', 0),
(3, 'RK.3.1', 'Banpres', 9, '', '680KB2810', 'Sistem Operasi', '12345678912', '', 1),
(4, 'RK.3.1', 'Banpres', 1, '', '680KB2813', '', '12345678915', '', 0),
(5, 'RK.3.3', '', 9, '', '680PK1803', '', '12345678914', '', 0),
(6, 'RK.3.1', '', 9, '2019/05/28 10:00:00', '680KB2814', '', '12345678915', '', 0),
(7, 'RK.3.3', 'Banpres', 9, '', '680PK1804', '', '12345678909', '', 0),
(8, 'RK.3.3', 'Banpres', 11, '', '680PK1805', '', '12345678913', '', 0),
(9, 'RK.3.1', 'Banpres', 9, '', '680PK1806', '', '12345678914', '', 0),
(10, 'RK.3.1', 'Banpres', 6, '2019/05/28 10:00:00', '680KB2815', '', '12345678916', '', 0),
(11, 'RK.3.1', 'Banpres', 6, '', '680KB2816', '', '12345678916', '', 0),
(12, 'RK.3.3', 'Banpres', 6, '', '680KB2817', '', '12345678917', '', 0),
(13, 'RK.3.1', 'Banpres', 6, '2019/05/03 16:00:00', '680PK1818', '', '12345678906', '', 0),
(14, 'RK.3.1', 'Banpres', 6, '', '680KB2815', '', '12345678918', '', 0),
(15, 'RK.3.1', 'Banpres', 6, '2019/05/06 10:00:00', '680KB2819', '', '12345678918', '', 0),
(16, 'RK.3.1', 'Banpres', 6, '2019/05/28 13:00:00', '680KB2820', '', '12345678906', '', 0),
(17, 'RK.3.3', 'Banpres', 6, '2020/04/28 08:00:00', '680KB2821', '', '12345678919', '', 0),
(18, 'RK.3.2', 'Banpres', 6, '', '680TK2801', '', '02345678901', '', 0),
(19, 'RK.3.3', 'Banpres', 6, '2019/05/07 08:00:00', '680TK2810', '', '02345678', '', 0),
(20, 'RK.3.2', 'Banpres', 11, '', '680TK2802', '', '12345678906', '', 0),
(21, 'RK.3.3', '', 17, '', '680TK2803', '', '12345678920', '', 0),
(22, 'RK.3.2', 'Banpres', 11, '', '680TK2804', '', '02345678902', '', 1),
(23, 'RK.3.2', 'Banpres', 9, '', '680TK2805', '', '12345678921', '', 0),
(24, 'RK.3.2', 'Banpres', 6, '', '680TK2806', '', '12345678906', '', 0),
(25, 'RK.3.2', 'Banpres', 6, '2019/05/10 13:00:00', '680TK2807', '', '12345678914', '', 0),
(26, 'RK.3.2', 'Banpres', 6, '', '680TK2808', '', '02345678904', '', 0),
(27, 'RK.3.2', 'Banpres', 9, '2019/05/08 18:30:00', '680TK2809', '', '02345678901', '', 1),
(29, 'RK.3.2', 'Banpres', 11, '2019/05/11 08:00:00', '680TK2810', '', '12345678922', '', 0),
(30, 'R.2.7', 'Banpres', 11, '', '680BK1801', '', '12345678923', '', 0),
(31, 'R.2.4', '', 6, '', '680BK1802', '', '02445678901', '', 0),
(32, 'R.2.7', '', 10, '', '680BK1803', '', '02445678902', '', 0),
(33, 'R.2.7', 'Banpres', 10, '', '680BK1804', '', '02445678903', '', 0),
(34, 'R.2.4', '', 11, '', '680BK1805', '', '02445678904', '', 0),
(35, 'R.2.4', 'Banpres', 11, '', '680BK1806', '', '02445678905', '', 0),
(36, 'R. 6.1.3', '', 18, '', '680BK1807', '', '02445678906', '', 0),
(37, 'R. 6.1.3', '', 10, '', '680BK1808', '', '02445678908', '', 0),
(38, 'R.2.4', 'Banpres', 11, '', '680BK1809', '', '02445678909', '', 0),
(39, 'R. 6.1.3', 'Banpres', 10, '', '680BK1810', '', '02445678910', '', 0),
(40, 'R. 6.1.3', 'Banpres', 9, '', '680BK1811', '', '02445678911', '', 0),
(41, 'R. 6.1.3', 'Banpres', 19, '', '680BK1812', '', '02445678912', '', 0),
(42, 'R.2.4', 'Banpres', 12, '', '680BK1813', '', '02445678913', '', 0),
(43, 'R. 6.1.3', 'Banpres', 9, '', '680BK1814', '', '02445678914', '', 0),
(44, 'R.2.4', 'Banpres', 12, '', '680BK1815', '', '02445678906', '', 0),
(45, 'R.2.4', 'Banpres', 22, '', '680PJK2801', '', '03123456701', '', 0),
(46, 'LABKOM', '', 26, '', '680PJK2811', '', '03123456711', '', 0),
(47, 'R. 6.1.2', '', 22, '', '680PJK2802', '', '03123456702', '', 1),
(48, 'R. 6.1.2', '', 23, '', '680PJK2806', '', '03123456705', '', 0),
(49, 'R.2.7', '', 24, '', '680PJK2808', '', '03123456702', '', 0),
(50, 'R.2.7', '', 25, '', '680PJK2809', '', '03123456709', '', 0),
(51, 'R.2.2', '', 26, '', '680PJK2812', '', '03123456713', '', 0),
(52, 'R.2.4', 'Banpres', 27, '', '680PJK2814', '', '03123456708', '', 0),
(53, 'R.2.4', '', 28, '', '680PJK2803', '', '03123456703', '', 0),
(54, 'R.2.2', '', 29, '', '680PJK2804', '', '03123456704', '', 0),
(55, 'R.2.7', '', 30, '', '680PJK2807', '', '03123456706', '', 0),
(56, 'R.2.2', '', 30, '', '680AK1801', '', '03123456714', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `keterangan`
--

CREATE TABLE `keterangan` (
  `id` int(11) NOT NULL,
  `kd_ket` int(11) NOT NULL,
  `keterangan` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keterangan`
--

INSERT INTO `keterangan` (`id`, `kd_ket`, `keterangan`) VALUES
(1, 1, 'Izin'),
(2, 2, 'Sakit'),
(3, 3, 'Alfa'),
(4, 4, 'UTS'),
(5, 5, 'UAS');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mhs` int(11) NOT NULL,
  `nokartu` varchar(30) NOT NULL,
  `npm` varchar(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `smt` int(1) NOT NULL,
  `periode` int(11) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `jk` enum('Laki-laki','Perempuan') NOT NULL,
  `foto` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mhs`, `nokartu`, `npm`, `nama`, `smt`, `periode`, `jurusan`, `alamat`, `jk`, `foto`, `status`) VALUES
(1, '', '085017011', 'Diki Candra Suandi', 4, 0, '', 'Cicurug-Sukabumi', 'Laki-laki', 'me.jpg', ''),
(2, '', '085017004', 'Mauladani Adi Gasbara', 4, 0, '', 'cileungsi-Bogor    ', 'Laki-laki', 'person_4.jpg', ''),
(4, '', '085017001', 'Hediyansyah Arifin', 4, 0, '', ' Bogor  ', 'Laki-laki', 'WhatsApp Image 2019-05-09 at 11.32.11.jpeg', ''),
(5, '', '085017005', 'Adam Maulana Sahid', 4, 0, '', 'Sentul-Bogor ', 'Laki-laki', 'no-user.jpg', ''),
(6, '', '085017007', 'Dina Oktaviani', 4, 0, '', 'Ciomas-Bogor ', '', 'no-user.jpg', ''),
(7, '', '085017009', 'Ghoniyyatul Nabilah', 4, 0, '', 'Cibinong-Bogor ', '', 'no-user.jpg', ''),
(8, '', '085017010', 'Ryan Eriawan', 4, 0, '', 'Tajur-Bogor ', 'Laki-laki', 'no-user.jpg', ''),
(9, '', '085017013', 'Muhammad Burdah', 4, 0, '', ' Sentul-Bogor ', 'Laki-laki', 'WhatsApp Image 2019-05-09 at 17.26.48.jpeg', ''),
(11, '', '085017003', 'Aristian', 4, 0, '', 'Cigombong-Bogor ', 'Laki-laki', 'no-user.jpg', ''),
(18, '', '085017018', 'Ryan Abdu Rochman', 4, 0, '', 'Cibinong-Bogor  ', 'Laki-laki', 'no-user.jpg', ''),
(28, '', '085017002', 'Aprian Hidayat', 4, 0, '', 'Puncak, Bogor ', 'Laki-laki', 'no-user.jpg', ''),
(33, '', '085017099', 'Salma Efliana Rahmi', 4, 0, '', 'Sukabumi', 'Laki-laki', 'observasi-itu-penting-lho.jpg', ''),
(34, '12345678910', '085018001', 'TAZKI QODRI ALWI', 6, 2018, 'Sistem Informasi', ' bogor', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(35, '12345678911', '085018002', 'Fachri Nugraha', 6, 2018, 'Sistem Informasi', 'cibinong', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(36, '12345678912', '085018003', 'LIVIA ANNISA FAJRI', 6, 2018, 'Sistem Informasi', ' cibonong', 'Perempuan', 'defaul.jpg', 'Mahasiswa'),
(37, '12345678913', '085018004', 'Muhamad Falah Rifki Al Rasyid', 6, 2018, 'Sistem Informasi', 'bogor', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(38, '12345678914', '085018005', 'Farhan Taufikurrahman', 6, 2018, 'Sistem Informasi', 'bogor', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(39, '12345678915', '085018007', 'Fajar Refratama', 6, 2018, 'Sistem Informasi', 'Bogor', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(40, '12345678916', '085018008', 'Gunawan Sehru', 6, 2018, 'Sistem Informasi', 'Bogor', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(41, '12345678917', '085018009', 'Zeolita Adenia Badriani', 6, 2018, 'Sistem Informasi', 'Cibinong', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(42, '12345678918', '085018010', 'Elinda Puspita', 6, 2018, 'Sistem Informasi', 'Cibinong', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(43, '12345678919', '085018011', 'Bunga Anggi Safitri', 6, 2018, 'Sistem Informasi', 'Bogor', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(44, '12345678920', '085018012', 'Teddy Setiawan', 6, 2018, 'Sistem Informasi', 'Cibinong', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(45, '12345678921', '085018013', 'Aurelia Safitri', 6, 2018, 'Sistem Informasi', 'Kp. Ciomas, Bogor', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(46, '12345678922', '085018014', 'Mohamad Rexsy Surya Pratama', 6, 2018, 'Sistem Informasi', 'Cibinong', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(47, '12345678923', '085018015', 'Muhamad Aditiya', 6, 2018, 'Sistem Informasi', 'Cibinong', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(48, '12345678924', '085018017', 'Kevin Hendrawan', 6, 2018, 'Sistem Informasi', 'Bogor', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(49, '12345678925', '085018018', 'Aldi Irsya Almenra', 6, 2018, 'Sistem Informasi', 'Bogor', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(50, '12345678926', '085018019', 'Rexsa Sandri Prayoga', 6, 2018, 'Sistem Informasi', 'Bogor', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(51, '12345678927', '085018020', 'Prayoga Laksono', 6, 2018, 'Sistem Informasi', 'Cibinong', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(52, '12345678928', '085018021', 'Luthfiyana Nur Alifa', 6, 2018, 'Sistem Informasi', 'Bogor', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(53, '12345678929', '085018022', 'Muchamad Suhendra', 6, 2018, 'Sistem Informasi', 'Bogor', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(54, '12345678930', '085018024', 'Dimas Valentino', 6, 2018, 'Sistem Informasi', 'Cibinong', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(55, '12345678931', '085018025', 'Muhamad Agung Ibrahim', 6, 2018, 'Sistem Informasi', 'Cibinong', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(56, '12345678932', '085018027', 'Muhamad Fadli', 6, 2018, 'Sistem Informasi', 'Cibinong', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(57, '12345678933', '085018028', 'Mohamad Arief Santaya Budi', 6, 2018, 'Sistem Informasi', 'Cibinong', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(59, '', '082018001', 'Nadya Putri Utami', 4, 0, 'Manajemen Pajak', 'Cibinong', '', 'defaul.jpg', ''),
(60, '', '082018002', 'Fajarsyah Maulana Yusuf', 4, 0, 'Manajemen Pajak', 'Cibinong', 'Laki-laki', 'defaul.jpg', ''),
(61, '', '082018003', 'Muhamad Wahyudin Fazrin', 4, 0, 'Manajemen Pajak', 'Bogor', 'Laki-laki', 'defaul.jpg', ''),
(62, '', '082018004', 'Taufan Ibrahim Ponto', 4, 0, 'Manajemen Pajak', 'Cibinong', 'Laki-laki', 'defaul.jpg', ''),
(63, '', '082018006', 'Mona Nabila', 4, 0, 'Manajemen Pajak', 'Cibinong', 'Laki-laki', 'defaul.jpg', ''),
(64, '', '082018007', 'Nuni Hardianti', 4, 0, 'Manajemen Pajak', 'Cibinong', 'Laki-laki', 'defaul.jpg', ''),
(65, '', '082018008', 'Raden Syahrul Rhamadhan', 4, 0, 'Manajemen Pajak', 'Cibinong', 'Laki-laki', 'defaul.jpg', ''),
(66, '', '082018009', 'Dinda Maulida', 4, 0, 'Manajemen Pajak', 'Cibonong', 'Laki-laki', 'defaul.jpg', ''),
(67, '', '082018010', 'Firni Carlina', 4, 0, 'Manajemen Pajak', 'Cibinong ', '', 'defaul.jpg', ''),
(68, '', '082018011', 'Aya Anugraha Subkti', 4, 0, 'Manajemen Pajak', 'Cibinong ', '', 'defaul.jpg', ''),
(70, '', '082018012', 'Abizar Achmad', 4, 0, 'Manajemen Pajak', 'Cibinong', 'Laki-laki', 'defaul.jpg', ''),
(71, '', '082018013', 'Dhea Aulia', 4, 0, 'Manajemen Pajak', 'Bogor', '', 'defaul.jpg', ''),
(72, '', '082018014', 'Andri Rachmadi', 4, 0, 'Manajemen Pajak', 'Bogor', 'Laki-laki', 'defaul.jpg', ''),
(73, '', '082018015', 'Hedita Razbani', 4, 0, 'Manajemen Pajak', 'Bogor', 'Laki-laki', 'defaul.jpg', ''),
(74, '', '082018016', 'Detya Putri Julitha', 4, 0, 'Manajemen Pajak', 'Bogor', '', 'defaul.jpg', ''),
(75, '', '082018017', 'Hani Nurhaliza', 4, 0, 'Manajemen Pajak', 'Bogor', '', 'defaul.jpg', ''),
(76, '', '082018018', 'Erika Putri Rachmadia', 4, 0, 'Manajemen Pajak', 'Bogor', '', 'defaul.jpg', ''),
(77, '', '082018019', 'Salsabila Alkausar', 4, 0, 'Manajemen Pajak', 'Bogor', '', 'defaul.jpg', ''),
(78, '', '082018020', 'Sri Mulyani', 4, 0, 'Manajemen Pajak', 'Bogor', '', 'defaul.jpg', ''),
(79, '', '082018021', 'Ilham Pramudya Ananta Rahman', 4, 0, 'Manajemen Pajak', 'Bogor', 'Laki-laki', 'defaul.jpg', ''),
(80, '', '082018022', 'Bella Restu Pertiwi Sutendi', 4, 0, 'Manajemen Pajak', 'Bogor', '', 'defaul.jpg', ''),
(81, '', '082018023', 'Saeful Bahri', 4, 0, 'Manajemen Pajak', 'Bogor', 'Laki-laki', 'defaul.jpg', ''),
(82, '', '082018024', 'Ananda Gustina', 4, 0, 'Manajemen Pajak', 'Cibinong', '', 'defaul.jpg', ''),
(83, '', '082018025', 'Gina Oktaviani', 4, 0, 'Manajemen Pajak', 'Bogor', '', 'defaul.jpg', ''),
(84, '', '082018026', 'Siti Aulia Rachmah', 4, 0, 'Manajemen Pajak', 'Cibinong', '', 'defaul.jpg', ''),
(85, '', '082018027', 'Muhamad Rifat Fajari', 4, 0, 'Manajemen Pajak', 'Cibinong', 'Laki-laki', 'defaul.jpg', ''),
(86, '', '084018001', 'Yudi', 4, 0, 'Teknik Komputer', 'Jakarta', 'Laki-laki', 'defaul.jpg', ''),
(87, '9876543210', '084018002', 'Hana M Tekege', 6, 2018, 'Teknik Komputer', 'Jakarta', 'Perempuan', 'defaul.jpg', 'Mahasiswa'),
(88, '9876543211', '084018005', 'M. Aziz', 6, 2018, 'Teknik Komputer', 'Bogor', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(89, '9876543212', '084018006', 'Ferdi Wardana', 6, 0, 'Teknik Komputer', 'Bogor', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(90, '9876543213', '084018007', 'Tasya Aprilia', 6, 2018, 'Teknik Komputer', 'Bogor', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(91, '9876543214', '084018008', 'M. Indra Supriyadi', 6, 2018, 'Teknik Komputer', 'Bogor', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(92, '9876543215', '084018010', 'Nur Saudi Maulana', 6, 2018, 'Teknik Komputer', 'Bogor', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(93, '9876543216', '084018013', 'Alliyah Irhama Azmi', 4, 6, 'Teknik Komputer', 'Jakarta ', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(94, '9876543217', '084018014', 'Rio Setiawan', 6, 2018, 'Teknik Komputer', 'Jakarta ', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(95, '9876543218', '084018016', 'Naufhal Rachmansyah', 6, 2018, 'Teknik Komputer', 'Jakarta  ', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(96, '9876543219', '084018017', 'Chesarina Dyah Utami', 6, 2018, 'Teknik Komputer', 'Jakarta ', 'Perempuan', 'defaul.jpg', 'Mahasiswa'),
(97, '98765432120', '08401819', 'Rizky Pratama', 6, 2018, 'Teknik Komptuter', 'Jakarta', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(98, '9876543220', '08401820', 'Nenden Sinta', 6, 2018, 'Teknik Komputer', 'Jakarta', 'Laki-laki', 'defaul.jpg', 'Mahasiswa'),
(99, '', '08401821', 'syifa', 4, 0, 'Teknik Komputer', 'Bogor', 'Laki-laki', 'defaul.jpg', ''),
(100, '', '08401822', 'Chelsy Putri Meilani', 4, 0, 'Teknik Komputer', 'Jakarta', 'Laki-laki', 'defaul.jpg', ''),
(101, '', '08401825', 'Sigit Permana', 4, 0, 'Teknik Komputer', 'Jakarta', 'Laki-laki', 'defaul.jpg', ''),
(102, '', '084018026', 'Irfan Maulana', 4, 0, 'Teknik Komputer', 'Jakarta ', 'Laki-laki', 'defaul.jpg', ''),
(103, '', '08401827', 'Moch. Chafied Afrilian', 4, 0, 'Teknik Komputer', 'Bogor', 'Laki-laki', 'defaul.jpg', ''),
(104, '', '084018030', 'Ahmad Izzuddin', 4, 0, 'Teknik Komputer', 'Bogor ', 'Laki-laki', 'defaul.jpg', ''),
(105, '', '08401832', 'Moch Irfan Eriyadi', 4, 0, 'Teknik Komputer', 'Bogor', 'Laki-laki', 'defaul.jpg', ''),
(106, '', '084018033', 'Attalarik Zidan', 4, 0, 'Teknik Komputer', 'Jakarta ', 'Laki-laki', 'defaul.jpg', ''),
(107, '', '081017001', 'Muhamad Nawawi', 0, 0, 'Akuntansi', 'Bogor', 'Laki-laki', 'defaul.jpg', ''),
(108, '', '081017002', 'Tidar Ekawati', 0, 0, 'Akuntansi', 'Jakarta', '', 'defaul.jpg', ''),
(109, '', '081017003', 'Putri Nabilah', 0, 0, 'Akuntansi', 'Bogor', '', 'defaul.jpg', ''),
(110, '', '081017004', 'Audita Inda Betanda', 0, 0, 'Akuntasi', 'Jakarta', '', 'default.jpg', ''),
(111, '', '081017005', 'Aprilia Maharani Puspita', 0, 0, 'Akuntasi', 'Cibinong', '', 'defaul.jpg', ''),
(112, '', '081017006', 'Incah Melinda', 0, 0, 'Akuntansi', 'Bogor', '', 'defaul.jpg', ''),
(113, '', '081017007', 'Ryan Syawalludin', 0, 0, 'Akuntansi', 'Cibinong', 'Laki-laki', 'defaul.jpg', ''),
(114, '', '081017008', 'Nadila Tiara Millenia', 0, 0, 'Akuntansi', 'Jakarta', '', 'defaul.jpg', ''),
(115, '', '081017009', 'Yusuf Tegar Prastya Putra', 0, 0, 'Akuntansi', 'Sukabumi', 'Laki-laki', 'defaul.jpg', ''),
(116, '', '081017010', 'Maulana Malik Ibrahim', 0, 0, 'Akuntansi', 'Sukabumi', 'Laki-laki', 'defaul.jpg', ''),
(117, '', '081017011', 'Dica Rafka Salsabila', 0, 0, 'Akuntansi', 'Cibinong', '', 'defaul.jpg', ''),
(118, '', '081017012', 'Jeremy Seattley Umbas', 0, 0, 'Akuntansi', 'Sukabumi', 'Laki-laki', 'defaul.jpg', ''),
(119, '', '081017013', 'Muhammad Akmal', 4, 0, '', 'bogor', 'Laki-laki', 'defaul.jpg', ''),
(120, '', '081017014', 'Zahara Ramadanti', 4, 0, '', 'bogor', '', 'defaul.jpg', ''),
(121, '', '081017015', 'Setio Danur Fadillah', 4, 0, '', 'bogor', 'Laki-laki', 'defaul.jpg', ''),
(122, '', '081017016', 'Afiana Purnamawati', 4, 0, '', 'bogor', '', 'defaul.jpg', ''),
(123, '', '081017017', 'Rizka Putri Novianti', 4, 0, '', 'bogor ', '', 'defaul.jpg', ''),
(124, '', '081017019', 'Derry Wijaya', 4, 0, '', 'jakarta ', 'Laki-laki', 'defaul.jpg', ''),
(125, '', '081017018', 'Asri Najmiati', 4, 0, '', 'jakarta', '', 'defaul.jpg', ''),
(126, '', '081017020', 'Nindi Dwi Larasita', 4, 0, '', 'cibinong', '', 'defaul.jpg', ''),
(127, '', '081017021', 'Raden Fariha Zulfa', 4, 0, '', 'cibinong', '', 'defaul.jpg', ''),
(128, '', '081017022', 'R. Febriana Suci Rachma', 4, 0, '', 'cibinong', '', 'defaul.jpg', ''),
(129, '', '081017023', 'Risma Riskilah', 4, 0, '', 'cibinong', '', 'defaul.jpg', ''),
(130, '1831901322', '0680160006', 'Rizal maulana', 6, 2016, 'Sistem Informasi', '  bogor', 'Laki-laki', 'defaul.jpg', 'Mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id_m` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `matakuliah` varchar(50) NOT NULL,
  `pertemuan` int(11) NOT NULL,
  `materi` text NOT NULL,
  `dosen` varchar(50) NOT NULL,
  `komti` varchar(20) NOT NULL,
  `jumlah` int(30) NOT NULL,
  `sakit` int(11) NOT NULL,
  `Izin` int(11) NOT NULL,
  `alfa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id_m`, `tanggal`, `matakuliah`, `pertemuan`, `materi`, `dosen`, `komti`, `jumlah`, `sakit`, `Izin`, `alfa`) VALUES
(8, '2018-02-02', 'Sistem Operasi', 1, 'Pengenalan Sistem Operasi', 'Agung Prajuhana Putra,M.Kom.', 'Aurelia Safitri', 22, 1, 2, 0),
(9, '2018-02-09', 'Sistem Operasi', 2, 'jenis sistem operasi', 'Agung Prajuhana Putra,M.Kom.', 'Aurelia Safitri', 22, 2, 0, 1),
(10, '2018-02-16', 'Sistem Operasi', 3, 'Pengenalan Jaringan', 'Agung Prajuhana Putra,M.Kom.', 'Aurelia Safitri', 25, 0, 0, 0),
(11, '2018-02-23', 'Sistem Operasi', 4, 'Pengenalan Jaringan', 'Agung Prajuhana Putra,M.Kom.', 'Aurelia Safitri', 23, 0, 0, 0),
(12, '2018-03-02', 'Sistem Operasi', 5, 'Pengenalan Jaringan', 'Agung Prajuhana Putra,M.Kom.', 'Aurelia Safitri', 25, 0, 0, 0),
(13, '2018-03-09', 'Sistem Operasi', 6, 'Pengenalan Jaringan', 'Agung Prajuhana Putra,M.Kom.', 'Aurelia Safitri', 25, 0, 0, 0),
(14, '2018-03-16', 'Sistem Operasi', 7, 'Pengenalan Jaringan', 'Agung Prajuhana Putra,M.Kom.', 'Aurelia Safitri', 25, 0, 0, 0),
(15, '2018-03-23', 'Sistem Operasi', 8, 'Pengenalan Jaringan', 'Agung Prajuhana Putra,M.Kom.', 'Aurelia Safitri', 25, 0, 0, 0),
(16, '2018-03-30', 'Sistem Operasi', 9, 'Pengenalan Jaringan', 'Agung Prajuhana Putra,M.Kom.', 'Aurelia Safitri', 25, 0, 0, 0),
(17, '2018-04-06', 'Sistem Operasi', 10, 'Pengenalan Jaringan', 'Agung Prajuhana Putra,M.Kom.', 'Aurelia Safitri', 24, 0, 0, 0),
(18, '2018-04-13', 'Sistem Operasi', 11, 'Pengenalan Jaringan', 'Agung Prajuhana Putra,M.Kom.', 'Aurelia Safitri', 25, 0, 0, 0),
(19, '2018-04-20', 'Sistem Operasi', 12, 'Pengenalan Jaringan', 'Agung Prajuhana Putra,M.Kom.', 'Aurelia Safitri', 25, 0, 0, 0),
(20, '2018-04-27', 'Sistem Operasi', 13, 'Pengenalan Jaringan', 'Agung Prajuhana Putra,M.Kom.', 'Aurelia Safitri', 25, 0, 0, 0),
(21, '2018-05-04', 'Sistem Operasi', 14, 'Pengenalan Jaringan', 'Agung Prajuhana Putra,M.Kom.', 'Aurelia Safitri', 25, 0, 0, 0),
(22, '2018-02-02', 'Sistem Operasi', 2, 'Pengenalan Jaringan', 'Agung Prajuhana Putra,M.Kom.', 'Aurelia Safitri', 22, 0, 0, 0),
(23, '2018-02-02', 'Sistem Operasi', 2, 'Pengenalan Sistem Operasi', 'Agung Prajuhana Putra,M.Kom.', 'Aurelia Safitri', 22, 0, 0, 0),
(24, '2018-02-02', 'Sistem Operasi', 2, 'Pengenalan Sistem Operasi', 'Agung Prajuhana Putra,M.Kom.', 'Aurelia Safitri', 22, 0, 0, 0),
(25, '2018-02-02', 'Sistem Operasi', 3, 'Pengenalan Sistem Operasi', 'Agung Prajuhana Putra,M.Kom.', 'Aurelia Safitri', 22, 0, 0, 0),
(26, '2018-02-02', 'Sistem Operasi', 2, 'Pengenalan Jaringan', 'Agung Prajuhana Putra,M.Kom.', 'Aurelia Safitri', 22, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `id_matkul` int(11) NOT NULL,
  `kode_mk` char(11) NOT NULL,
  `nama_mk` varchar(60) NOT NULL,
  `sks` int(1) NOT NULL,
  `smt` int(1) NOT NULL,
  `kd_dos` char(11) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`id_matkul`, `kode_mk`, `nama_mk`, `sks`, `smt`, `kd_dos`, `status`) VALUES
(1, '680PK1801', 'Bahasa Indonesia', 2, 1, '12345678910', 0),
(2, '680PK1802', 'Bahasa Inggris', 2, 1, '12345678900', 0),
(3, '680PK2809', 'Agama', 2, 2, '12345678911', 0),
(4, '680KB2810', 'Sistem Operasi', 3, 2, '12345678912', 0),
(5, '680KB2812', 'Basis Data', 3, 2, '12345678901', 0),
(7, '680PK1803', 'Sistem Informasi Manajemen', 3, 2, '12345678914', 0),
(8, '680PK1804', 'logika informatika', 2, 2, '12345678909', 0),
(9, '680PK1805', 'algoritma & pemograman 2', 3, 2, '12345678913', 0),
(10, '680PK1806', 'Pengantar ekonomi & akutansi', 3, 2, '12345678914', 0),
(12, '680KB2813', 'E Technology', 3, 2, '12345678915', 0),
(13, '680KB2814', 'Stuktur Data', 3, 2, '12345678915', 0),
(14, '680KB2815', 'Pemrograman Berbasis Web2', 3, 4, '12345678916', 0),
(15, '680KB2807', 'Rekayasa Perangkat Lunak ', 3, 4, '12345678917', 0),
(16, '680KB2816', 'Rekayasa Perangkat Lunak ', 3, 4, '12345678916', 0),
(17, '680KB2817', 'Metode Penelitian', 2, 4, '12345678917', 0),
(18, '680PK1818', 'Pemograman Oracle', 3, 4, '12345678906', 0),
(19, '680KB2819', 'Otomatisasi Perkantoran', 3, 4, '12345678918', 0),
(21, '680KB2820', 'Pemrograman Visual 2', 3, 4, '12345678906', 0),
(22, '680KB2821', 'Pemrograman Mobile', 3, 4, '12345678919', 0),
(23, '680TK2801', 'Elektronika', 3, 2, '02345678901', 0),
(24, '680TK2802', 'Algoritme & Pemrograman Lanjut', 3, 2, '12345678906', 0),
(25, '680TK2803', 'Dasar-Dasar Instrumentasi', 3, 2, '12345678920', 0),
(27, '680TK2804', 'Organisasi Komputer', 3, 2, '02345678902', 0),
(28, '680TK2805', 'Desain Grafis & Multimedia', 3, 2, '12345678921', 0),
(29, '680TK2806', 'Pemrograman Web Lanjut', 3, 4, '12345678906', 0),
(31, '680TK2807', 'Sistem Interface & Mikrokontroller', 3, 4, '02345678901', 0),
(33, '680TK2808', 'Analisa & Desain Sistem Jaringan Komputer', 3, 4, '02345678904', 0),
(34, '680TK2809', 'Rangkaian Digital', 3, 4, '02345678901', 0),
(35, '680TK2810', 'Pemrogramman Mobile', 3, 4, '12345678922', 0),
(36, '680BK1801', 'Pendidikan Kewarganegaraan', 2, 2, '12345678923', 0),
(37, '680BK1802', 'Lembaga Keuangan Non Bank', 3, 2, '02445678901', 0),
(38, '680BK1803', 'Pengantar Manajemen & Bisnis', 3, 2, '02445678902', 0),
(40, '680BK1804', 'Matematika Keuangan', 3, 2, '02445678903', 0),
(41, '680BK1805', 'Praktik Pengantar Akuntansi II', 3, 2, '02445678904', 0),
(42, '680BK1806', 'Aspek Hukum Keuangan & Perbankan', 3, 2, '02445678905', 0),
(44, '680BK1807', 'Pengantar Perpajakan', 3, 2, '02445678906', 0),
(45, '680BK1808', 'Pasar Modal', 3, 2, '02445678908', 0),
(46, '680BK1809', 'Manajemen Keuangan', 3, 4, '02445678909', 0),
(47, '680BK1810', 'Akutansi Bank', 3, 4, '02445678910', 0),
(48, '680BK1811', 'Praktik Akuntansi Bank', 2, 4, '02445678911', 0),
(49, '680BK1812', 'Akuntansi Keuangan', 3, 4, '02445678912', 0),
(50, '680BK1813', 'Analisis & Pengelolaan Kredit I', 3, 4, '02445678913', 0),
(51, '680BK1814', 'Prosedur Operasional Bank', 3, 4, '02445678914', 0),
(52, '680BK1815', 'Etika Perbankan', 3, 4, '02445678906', 0),
(53, '680PJK2801', 'PBB, BPHTB, & BEA MATERAI', 3, 4, '03123456701', 0),
(54, '680PJK2802', 'Pajak Penghasilan Pot/Put', 3, 2, '03123456702', 0),
(55, '680PJK2803', 'Analisis Laporan Keuangan', 3, 4, '03123456703', 0),
(56, '680PJK2804', 'Kepabeanan dan Cukai', 3, 4, '03123456704', 0),
(57, '680PJK2805', 'Praktik Komputerisasi Akuntansi', 3, 4, '03123456711', 0),
(58, '680PJK2806', 'Matematika Ekonomi', 2, 2, '03123456705', 0),
(59, '680PJK2807', 'Akuntansi Keuangan Menengah II', 3, 4, '03123456706', 0),
(60, '680PJK2808', 'Ketentuan Umum dan Tata Cara Perpajakan', 3, 2, '03123456702', 0),
(61, '680PJK2809', 'Pengantar Manajemen dan Bisnis ', 3, 2, '03123456709', 0),
(62, '680PJK2810', 'Praktik PPN dan PPn BM', 2, 2, '03123456708', 0),
(63, '680PJK2811', 'Akuntansi Biaya', 3, 4, '03123456711', 0),
(64, '680PJK2812', 'Pengantar Akuntansi II', 3, 2, '03123456713', 0),
(65, '680PJK2813', 'Praktik Pajak Penghasilan Pot/Put', 2, 2, '03123456709', 0),
(67, '680PJK2814', 'Bahasa Inggris Bisnis', 3, 2, '03123456708', 0),
(68, '680AK1801', 'Bank dan Lembaga Keuangan', 2, 2, '03123456714', 0),
(69, '680AK1802', 'Bahasa Indonesia dan Teknik Penulisan Laporan', 3, 2, '03123456716', 0),
(70, '680AK1803', 'Komunikasi Bisnis', 2, 2, '12345678903', 0),
(71, '680AK1804', 'Praktik Auditing', 2, 4, '12345678902', 0),
(72, '680AK1805', 'Bahasa Inggris Bisnis dan Korespondensi', 2, 2, '03123456708', 0),
(73, '680AK1806', 'Akuntansi Perpajakan', 3, 4, '03123456707', 0),
(74, '680AK1807', 'Auditing', 2, 4, '12345678902', 0),
(75, '680AK1808', ' Hukum Bisnis ', 2, 2, '02445678905', 0),
(76, '680AK1809', 'Perpajakan 1', 3, 2, '03123456702', 0),
(77, '680AK1810', ' Lab. Komputerisasi Perpajakan ', 2, 4, '03123456701', 0),
(78, '680AK1811', ' Dasar Akuntansi Manajemen ', 3, 4, '03123456713', 0),
(79, '', '', 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mode`
--

CREATE TABLE `mode` (
  `mode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `kd_presensi` int(11) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `kode_mk` char(11) NOT NULL,
  `npm` char(11) NOT NULL,
  `kd_dos` char(11) NOT NULL,
  `kd_aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `presensi`
--

INSERT INTO `presensi` (`kd_presensi`, `waktu`, `kode_mk`, `npm`, `kd_dos`, `kd_aktif`) VALUES
(23, '2019/05/28 15:44:00', '680PK1802', '085017008', '12345678900', 0),
(24, '2019/05/28 15:58:48', '680PK1801', '085017011', '12345678910', 0),
(25, '2019/05/28 15:58:48', '680PK1801', '085017013', '12345678910', 0),
(26, '2019/05/28 16:12:00', '680PK1801', '085017004', '1234567891', 0),
(27, '2019/05/28 16:13:18', '680KB2812', '085017004', '12345678901', 0),
(28, '2019/05/28 16:13:53', '680PK1802', '085017004', '12345678910', 0),
(29, '2019/06/11 11:47:45', '680PK1801', '085017011', '12345678910', 0),
(30, '2018/02/02 10:01:16', '680KB2810', '085018001', '1234567891', 0),
(31, '2018/02/02 10:01:16', '680KB2810', '085018021', '123456789', 0),
(32, '2018/02/02 10:01:16', '680KB2810', '085018002', '123456789', 0),
(33, '2018/02/02 10:01:18', '680KB2810', '085018003', '123456789', 0),
(34, '2018/02/02 10:01:19', '680KB2810', '085018005', '123456789', 0),
(35, '2018/03/09 10:01:21', '680KB2810', '085018010', '123456789', 0),
(36, '2018/02/02 10:01:22', '680KB2810', '085018007', '', 0),
(37, '2018/02/02 10:01:23', '680KB2810', '085018008', '123456789', 0),
(38, '2018/02/02 10:01:27', '680KB2810', '085018009', '123456789', 0),
(39, '2018/02/02 10:01:31', '680KB2810', '085018010', '123456789', 0),
(40, '2018/02/02 10:01:33', '680KB2810', '085018011', '123456789', 0),
(41, '2018/02/02 10:01:16', '680KB2810', '085018012', '123456789', 0),
(42, '2018/02/02 10:01:37', '680KB2810', '085018020', '123456789', 0),
(43, '2018/02/02 10:01:40', '680KB2810', '085018013', '12345678', 0),
(44, '2018/02/02 10:01:42', '680KB2810', '085018014', '12345678', 0),
(45, '2018/02/02 10:01:43', '680KB2810', '085018015', '123456789', 0),
(46, '2018/02/02 10:01:50', '680KB2810', '085018016', '123456789', 0),
(47, '2018/02/02 10:01:43', '680KB2810', '085018017', '123456789', 0),
(48, '2018/02/02 10:01:43', '680KB2810', '085018019', '1234', 0),
(49, '08.00-09.42 ', '680KB2813', '085018002', '12345678915', 0),
(50, '', '680KB2813', '085018001', '12345678', 0),
(51, '2020/05/20 08:00:48', '680KB2813', '085018003', '123456789', 0),
(52, '2020/05/20 08:01:00', '680KB2813', '085018004', '123456789', 0),
(53, '', '680PK1813', '085018005', '', 0),
(54, '', '680KB2813', '085018008', '123456789', 0),
(55, '', '680KB2813', '085018007', '123456789', 0),
(56, '2019/05/20 08:00:50', '680KB2813', '085018009', '123456789', 0),
(57, '2019/05/20 08:00:50', '680KB2813', '085018010', '1234567891', 0),
(58, '2018/02/05 10:00:48', '680PK1803', '085018001', '12345678914', 0),
(59, '2018/02/06 10:01:0', '680KB2814', '085018001', '12345678915', 0),
(60, '2018/02/06 08:00:4', '680PK1804', '085018001', '12345678909', 0),
(61, '2018/02/06 08:00:8', '680PK1804', '085018002', '123456789', 0),
(62, '2018/02/06 08:00:10', '680PK1804', '085018003', '12345678909', 0),
(63, '2019/02/06 08:00:09', '680PK1804', '085018004', '12345678', 0),
(64, '2018/02/08 13:00:00', '680PK1805', '085018001', '12345678913', 0),
(65, '2018/02/08 13:00:00', '680PK1805', '085018002', '12345678', 0),
(66, '2018/02/02 08:00:00', '680PK1806', '085018001', '12345678914', 0),
(67, '2018/02/02 08:00:10', '680PK1806', '085018002', '123456789', 0),
(68, '2018/02/09 08:00:48', '680PK1806', '085018003', '12345678914', 0),
(69, '2019/05/28 08:00:9', '680PK1806', '085018004', '123456789', 0),
(70, '2019/05/08 10:00:00', '680KB2815', '085018001', '12345678916', 0),
(71, '2019/05/08 10:00:8', '680KB2815', '085018002', '1234567891', 0),
(72, '', '680KB2816', '085018001', '12345678915', 0),
(73, '', '680KB2816', '085018002', '12345678915', 0),
(74, '', '680KB2816', '085018003', '12345678915', 0),
(75, '', '680KB2816', '085018004', '12345678915', 0),
(76, '2019/05/21 10:00:00', '680KB2817', '085018001', '12345678917', 0),
(77, '2019/05/21 10:05:00', '680KB2817', '085018002', '12345678917', 0),
(78, '2019/05/03 16:00:00', '680PK1818', '085018001', '12345678906', 0),
(79, '2019/05/03 16:02:00', '680PK1818', '085018002', '123456789', 0),
(80, '2019/05/06 10:00:00', '680KB2819', '085018001', '12345678918', 0),
(81, '2019/05/06 10:05:00', '680KB2819', '085018002', '12345678918', 0),
(82, '', '680KB2820', '085018001', '12345678906', 0),
(83, '', '680KB2820', '085018002', '123456789', 0),
(84, '2019/05/07 00:00:00', '680KB2821', '085018001', '12345678919', 0),
(85, '2019/05/07 08:00:8', '680KB2821', '085018002', '1234567891', 0),
(86, '2018/02/05 15:00:00 ', '680TK2801', '084018001', '02345678901', 0),
(87, '2018/02/05 15:00:05', '680TK2801', '084018002', '02345678901', 0),
(88, '2018/02/05 15:00:07', '680TK2801', '084018005', '023456789', 0),
(89, '2018/02/05 15:00:09', '680TK2801', '084018006', '', 0),
(90, '2019/05/07 20:00:01', '680KB2810', '084018006', '02345678912', 0),
(91, '2019/05/07 08:00:8', '680KB2810', '084018002', '023456789', 0),
(92, '', '680KB2810', '084018010', '', 0),
(93, '2019/05/10 13:00:10', '680TK2802', '084018001', '12345678906', 0),
(94, '2019/05/10 13:00:11', '680TK2802', '084018002', '1234567890', 0),
(95, '2019/05/10 13:00:12', '680TK2802', '084018005', '1234567890', 0),
(96, '2019/05/10 13:00:14', '680TK2802', '084018007', '1234567890', 0),
(97, '2019/05/11 20:00:00', '680TK2803', '084018001', '12345678920', 0),
(98, '2019/05/11 20:00:20', '680TK2803', '084018002', '1234567892', 0),
(99, '2019/05/11 20:00:22', '680TK2803', '084018005', '1234567892', 0),
(100, '2019/05/11 20:00:24', '680TK2803', '084018006', '1234567892', 0),
(101, '2020/05/15 08:00:00', '680TK2804', '084018001', '02345678902', 0),
(102, '2020/05/15 08:00:02', '680TK2804', '084018002', '0234567890', 0),
(103, '2020/05/15 08:00:06', '680TK2804', '084018005', '0234567890', 0),
(104, '2020/05/15 08:00:10', '680TK2804', '084018006', '0234567890', 0),
(105, '2019/05/25 10:00:00', '680TK2805', '084018001', '12345678921', 0),
(106, '2019/05/25 10:00:02', '680TK2805', '084018002', '123456789', 0),
(107, '2019/05/25 10:00:04', '680TK2805', '084018005', '123456789', 0),
(108, '2019/05/25 10:00:07', '680TK2805', '084018006', '123456789', 0),
(109, '2019/05/11 10:06:00', '680KB2817', '084018001', '12345678917', 0),
(110, '2019/05/11 10:05:00', '680KB2817', '084018002', '1234567891', 0),
(111, '2019/05/11 10:00:04', '680KB2817', '084018005', '1234567890', 0),
(112, '', '680KB2817', '084018006', '1234567890', 0),
(113, '2019/05/22 08:00:00', '680TK2806', '084018001', '12345678906', 0),
(114, '2019/05/22 08:03:00', '680TK2806', '084018002', '1234567890', 0),
(115, '2019/05/22 08:04:00', '680TK2806', '084018005', '1234567890', 0),
(116, '2019/05/22 08:05:00', '680TK2806', '084018006', '1234567890', 0),
(117, '2019/05/22 08:06:00', '680TK2806', '084018007', '1234567890', 0),
(118, '2019/05/22 08:07:00', '680TK2806', '084018008', '1234567890', 0),
(119, '2019/05/22 08:08:00', '680TK2806', '084018010', '1234567890', 0),
(120, '2020/05/10 13:01:00', '680TK2807', '084018001	', '02345678901', 0),
(121, '2020/05/10 13:01:50', '680TK2807', '084018001', '023456789', 0),
(122, '2020/05/10 13:02:00', '680TK2807', '084018002', '023456789', 0),
(123, '2020/05/10 13:02:00', '680TK2807', '084018005', '0234567890', 0),
(124, '2020/05/10 13:05:00', '680TK2807', '084018006', '0234567890', 0),
(125, '2020/05/10 13:07:00', '680TK2807', '084018007', '1234567890', 0),
(126, '2020/05/10 13:08:00', '680TK2807', '084018013', '1234567890', 0),
(127, '2020/05/10 13:09:00', '680TK2807', '084018008', '1234567890', 0),
(128, '2020/05/10 13:10:00', '680TK2807', '084018010', '1234567890', 0),
(129, '2019/05/07 18:20:00', '680TK2808', '084018001', '02345678904', 0),
(130, '2019/05/07 18:20:05', '680TK2808', '084018002', '12345678', 0),
(131, '2019/05/07 18:30:48', '680TK2808', '084018005', '0234567890', 0),
(132, '2019/05/07 18:30:48', '680TK2808', '084018006', '0234567890', 0),
(133, '2019/05/07 18:30:48', '680TK2808', '084018007', '1234567890', 0),
(134, '2019/05/07 18:31:00', '680TK2808', '084018008', '1234567890', 0),
(135, '2019/05/07 18:32:00', '680TK2808', '084018010', '1234567890', 0),
(136, '2019/05/08 18:30:00', '680TK2809', '084018001', '02345678901', 0),
(137, '2019/05/08 18:30:11', '680TK2809', '084018003', '680TK280', 0),
(138, '2019/05/08 18:30:13', '680TK2809', '084018005', '0234567890', 0),
(139, '2019/05/08 18:30:13', '680TK2809', '084018006', '0234567890', 0),
(140, '2019/05/08 18:30:15', '680TK2809', '084018007', '0234567890', 0),
(141, '2019/05/11 08:00:00', '680TK2810', '084018001', '12345678922', 0),
(142, '2019/05/11 08:00:06', '680TK2810', '084018002', '123456789', 0),
(143, '2019/05/11 08:00:08', '680TK2810', '084018005', '123456789', 0),
(144, '2019/05/11 08:00:06', '680TK2810', '084018006', '123456789', 0),
(145, '2019/05/11 13:00:00', '680BK1801', '082018001', '12345678923', 0),
(146, '2019/05/11 13:00:03', '680BK1801', '082018002', '1234567892', 0),
(147, '2019/05/11 13:00:04', '680BK1801', '082018003', '12345678923', 0),
(148, '2019/05/11 13:00:04', '680BK1801', '082018004', '123456789', 0),
(149, '2019/05/11 13:00:05', '680BK1801', '082018006', '123456789', 0),
(150, '2019/05/11 13:00:07', '680BK1801', '082018007', '123456789', 0),
(151, '2019/05/11 13:00:08', '680BK1801', '082018008', '123456789', 0),
(152, '2019/05/28 13:00:05', '680BK1802', '082018001', '02445678901', 0),
(153, '2019/05/28 13:00:09', '680BK1802', '082018002', '024456789', 0),
(154, '2019/05/28 13:00:10', '680BK1802', '082018003', '024456789', 0),
(155, '2019/05/28 13:00:12', '680BK1802', '082018004', '024456789', 0),
(156, '2019/05/28 13:00:13', '680BK1802', '082018006', '024456789', 0),
(157, '2019/05/28 13:00:14', '680BK1802', '082018007', '024456789', 0),
(158, '2019/05/28 13:00:15', '680BK1802', '082018008', '024456789', 0),
(159, '2019/05/27 08:00:03', '680BK1804', '082018001', '02445678903', 0),
(160, '2019/05/27 08:00:05', '680BK1804', '082018002', '0244567890', 0),
(161, '2019/05/27 08:00:06', '680BK1804', '082018003', '0244567890', 0),
(162, '2019/05/27 08:00:07', '680BK1804', '082018004', '0244567890', 0),
(163, '2019/05/27 08:00:08', '680BK1804', '082018005', '0244567890', 0),
(164, '2019/05/27 08:00:09', '680BK1804', '082018006', '0244567890', 0),
(165, '2019/05/27 08:02:00', '680BK1804', '082018007', '0244567890', 0),
(166, '2019/05/27 08:04:00', '680BK1804', '082018010', '', 0),
(167, '2019/05/27 08:07:00', '680BK1804', '082018008', '1234567890', 0),
(168, '2019/05/27 08:08:00', '680BK1804', '082018009', '1234567890', 0),
(169, '2020/04/28 13:58:48', '680BK1805', '082018001', '02445678904', 0),
(170, '2019/05/15 08:00:00', '680BK1806', '082018001', '02445678905', 0),
(171, '2019/05/15 08:00:05', '680BK1806', '082018002', '0244567890', 0),
(172, '2019/05/15 08:00:07', '680BK1806', '082018003', '1234567890', 0),
(173, '2019/05/15 08:00:09', '680BK1806', '082018004', '1234567890', 0),
(174, '2019/05/15 08:00:10', '680BK1806', '082018006', '1234567890', 0),
(175, '2019/05/15 08:00:17', '680BK1806', '082018007', '1234567890', 0),
(176, '2019/05/15 08:00:20', '680BK1806', '082018008', '1234567890', 0),
(177, '2019/05/15 08:00:25', '680BK1806', '082018009', '', 0),
(178, '2019/05/15 08:00:27', '680BK1806', '082018009', '', 0),
(179, '2019/05/15 08:00:27', '680BK1806', '082018009', '', 0),
(180, '2019/05/16 08:00:00', '680BK1807', '082018001', '680BK1807', 0),
(181, '2019/05/16 08:00:03', '680BK1807', '082018002', '', 0),
(182, '2019/05/16 08:00:05', '680BK1807', '082018003', '', 0),
(183, '2019/05/16 08:00:05', '680BK1807', '082018004', '', 0),
(184, '2019/05/16 08:00:07', '680BK1807', '082018006', '', 0),
(185, '2019/05/16 08:00:07', '680BK1807', '082018007', '', 0),
(186, '2019/05/16 08:00:08', '680BK1807', '082018007', '', 0),
(187, '2019/05/16 08:00:07', '680BK1807', '082018007', '', 0),
(188, '2019/05/16 08:00:09', '680BK1807', '082018007', '', 0),
(189, '2019/05/16 08:00:10', '680BK1807', '082018008', '', 0),
(190, '2019/05/16 08:00:15', '680BK1807', '082018009', '', 0),
(191, '2019/05/16 08:00:18', '680BK1807', '082018010', '', 0),
(192, '2019/05/19 08:00:09', '680BK1808', '082018001', '02445678908', 0),
(193, '2019/05/19 08:00:12', '680BK1808', '082018002', '0244567890', 0),
(194, '2019/05/19 08:00:15', '680BK1808', '082018003', '', 0),
(195, '2019/05/19 08:00:15', '680BK1808', '082018004', '', 0),
(196, '2019/05/19 08:00:17', '680BK1808', '082018006', '', 0),
(197, '2019/05/19 08:00:17', '680BK1808', '082018007', '', 0),
(198, '2019/05/19 08:00:18', '680BK1808', '082018008', '', 0),
(199, '2019/05/19 08:00:19', '680BK1808', '082018009', '', 0),
(200, '2019/05/19 08:00:19', '680BK1808', '082018010', '', 0),
(201, '2019/05/19 08:00:19', '680BK1808', '082018011', '', 0),
(202, '2020/04/31 13:00:00', '680BK1809', '082018001', '02445678909', 0),
(203, '2020/04/31 13:00:05', '680BK1809', '082018002', '0244567890', 0),
(204, '2020/04/31 13:00:07', '680BK1809', '082018010', '', 0),
(205, '2020/04/31 13:00:08', '680BK1809', '082018011', '', 0),
(206, '2020/04/31 13:00:09', '680BK1809', '082018009', '', 0),
(207, '2020/04/31 13:00:10', '680BK1809', '082018012', '', 0),
(208, '2020/04/31 13:00:10', '680BK1809', '082018013', '', 0),
(209, '2020/04/31 13:00:14', '680BK1809', '082018014', '', 0),
(210, '2020/04/31 13:00:16', '680BK1809', '082018007', '', 0),
(211, '2020/04/31 13:00:17', '680BK1809', '082018008', '', 0),
(212, '2019/05/11 08:00:00', '680BK1810', '082018001', '02445678910', 0),
(213, '2019/05/11 08:00:03', '680BK1810', '082018002', '0244567891', 0),
(214, '2019/05/11 08:00:05', '680BK1810', '082018003', '0244567891', 0),
(215, '2019/05/11 08:00:07', '680BK1810', '082018004', '0244567891', 0),
(216, '2019/05/11 08:00:09', '680BK1810', '082018006', '0244567891', 0),
(217, '2019/05/11 08:00:11', '680BK1810', '082018007', '0244567891', 0),
(218, '2019/05/11 08:00:11', '680BK1810', '082018008', '0244567891', 0),
(219, '2019/05/11 08:00:14', '680BK1810', '082018008', '0244567891', 0),
(220, '2019/05/11 08:00:16', '680BK1810', '082018009', '0244567891', 0),
(221, '2019/05/11 08:00:18', '680BK1810', '082018010', '0244567891', 0),
(222, '2020/05/30 10:00:00', '680BK1811', '082018001', '02445678911', 0),
(223, '2020/05/30 10:00:04', '680BK1811', '082018002', '', 0),
(224, '2020/01/27 13:00:06', '680BK1812', '082018001', '02445678912', 0),
(225, '2020/01/27 13:00:07', '680BK1812', '082018002', '0244567891', 0),
(226, '2020/01/27 13:00:08', '680BK1812', '082018003', '', 0),
(227, '2020/01/27 13:00:10', '680BK1812', '082018004', '', 0),
(228, '2020/01/27 13:00:12', '680BK1812', '082018006', '', 0),
(229, '2020/01/27 13:00:14', '680BK1812', '082018008', '', 0),
(230, '2020/01/27 13:00:14', '680BK1812', '082018009', '', 0),
(231, '2020/01/27 13:00:14', '680BK1812', '082018010', '', 0),
(232, '2020/01/27 13:00:17', '680BK1812', '082018011', '', 0),
(233, '2020/01/27 13:00:20', '680BK1812', '082018012', '', 0),
(234, '2020/04/28 07:00:00', '680BK1813', '082018001', '02445678913', 0),
(235, '2020/04/28 07:00:04', '680BK1813', '082018010', '', 0),
(236, '2020/04/28 07:00:04', '680BK1813', '082018002', '', 0),
(237, '2020/04/28 07:00:08', '680BK1813', '082018003', '', 0),
(238, '2020/04/28 07:00:09', '680BK1813', '082018004', '', 0),
(239, '2020/04/28 07:00:10', '680BK1813', '082018006', '', 0),
(240, '2020/04/28 07:00:10', '680BK1813', '082018009', '', 0),
(241, '2020/04/28 07:00:12', '680BK1813', '082018007', '', 0),
(242, '2020/04/28 07:00:12', '680BK1813', '082018008', '', 0),
(243, '2020/04/28 07:00:13', '680BK1813', '082018011', '', 0),
(244, '2020/01/04 13:00:00', '680BK1814', '082018001', '02445678914', 0),
(245, '2020/01/04 13:00:03', '680BK1814', '082018002', '', 0),
(246, '2020/01/04 13:00:04', '680BK1814', '082018003', '', 0),
(247, '2020/01/04 13:00:06', '680BK1814', '082018004', '', 0),
(248, '2020/01/04 13:00:08', '680BK1814', '082018005', '', 0),
(249, '2020/01/04 13:00:09', '680BK1814', '082018006', '', 0),
(250, '2020/01/04 13:00:09', '680BK1814', '082018007', '', 0),
(251, '2020/01/04 13:00:11', '680BK1814', '082018008', '', 0),
(252, '2020/01/04 13:00:13', '680BK1814', '082018009', '', 0),
(253, '2020/01/04 13:00:17', '680BK1814', '082018010', '', 0),
(254, '2020/01/08 13:00:00', '680BK1815', '082018001', '02445678906', 0),
(255, '2020/01/08 13:00:14', '680BK1815', '082018002', '', 0),
(256, '2020/01/08 13:00:15', '680BK1815', '082018010', '', 0),
(257, '2020/01/08 13:00:16', '680BK1815', '082018003', '', 0),
(258, '2020/01/08 13:00:16', '680BK1815', '082018004', '', 0),
(259, '2020/01/08 13:00:18', '680BK1815', '082018005', '', 0),
(260, '2020/01/08 13:00:19', '680BK1815', '082018006', '', 0),
(261, '2020/01/08 13:00:20', '680BK1815', '082018007', '', 0),
(262, '2020/01/08 13:00:22', '680BK1815', '082018008', '', 0),
(263, '2020/01/08 13:00:25', '680BK1815', '082018009', '', 0),
(264, '2020/01/08 08:00:00', '680PJK2801', '082018001', '03123456701', 0),
(265, '2020/01/08 08:00:06', '680PJK2801', '082018002', '', 0),
(266, '2019/05/12 08:00:08', '680PJK2811', '082018001', '03123456711', 0),
(267, '2019/05/11 08:00:08', '680PJK2802', '082018001', '03123456702', 0),
(268, '2019/05/11 08:00:10', '680PJK2802	', '082018002', '', 0),
(269, '2019/05/11 08:00:12', '680PJK2802	', '082018003', '', 0),
(270, '2019/05/11 08:00:15', '680PJK2802', '082018004', '', 0),
(271, '2019/05/11 08:00:18', '680PJK2802', '082018006', '', 0),
(272, '2019/05/11 08:00:20', '680PJK2802', '082018007', '', 0),
(273, '2019/05/11 08:00:22', '680PJK2802', '082018011', '', 0),
(274, '2019/05/11 08:00:22', '680PJK2802', '082018008', '', 0),
(275, '2019/05/11 08:00:24', '680PJK2802', '082018009', '', 0),
(276, '2019/05/11 08:00:26', '680PJK2802', '082018012', '', 0),
(277, '2019/05/11 08:00:28', '680PJK2802', '082018010', '', 0),
(278, '2019/05/13 09:00:00', '680PJK2806', '082018010', '03123456705', 0),
(279, '2019/05/13 09:00:05', '680PJK2806', '082018001', '', 0),
(280, '2019/05/13 09:00:07', '680PJK2806', '082018002', '', 0),
(281, '2019/05/13 09:00:09', '680PJK2806', '082018003', '', 0),
(282, '2019/05/13 09:00:10', '680PJK2806', '082018012', '', 0),
(283, '2019/05/13 09:00:13', '680PJK2806', '082018009', '', 0),
(284, '2019/05/13 09:00:16', '680PJK2806', '082018004', '', 0),
(285, '2019/05/13 09:00:16', '680PJK2806', '082018006', '', 0),
(286, '2019/05/13 09:00:19', '680PJK2806', '082018007', '', 0),
(287, '2019/05/13 09:00:25', '680PJK2806', '082018011', '', 0),
(288, '2019/05/13 09:00:27', '680PJK2806', '082018008', '', 0),
(289, '2019/05/14 13:00:09', '680PJK2808', '082018001', '03123456702', 0),
(290, '2019/05/14 13:00:10', '680PJK2808', '082018002', '', 0),
(291, '2019/05/14 13:00:15', '680PJK2808', '082018003', '', 0),
(292, '2019/05/14 13:05:00', '680PJK2808', '082018004', '', 0),
(293, '2019/05/14 13:07:00', '680PJK2808', '082018006', '', 0),
(294, '2019/05/14 13:08:00', '680PJK2808', '082018007', '', 0),
(295, '2019/05/14 13:09:00', '680PJK2808', '082018008', '', 0),
(296, '2019/05/14 13:09:02', '680PJK2808', '082018013', '', 0),
(297, '2019/05/14 13:09:07', '680PJK2808', '082018009', '', 0),
(298, '2019/05/14 13:09:09', '680PJK2808', '082018010', '', 0),
(299, '2019/05/14 13:09:10', '680PJK2808', '082018012', '', 0),
(300, '2019/05/14 13:09:10', '680PJK2808', '082018011', '', 0),
(301, '2019/05/20 08:00:00', '680PJK2809', '082018001', '03123456709', 0),
(302, '2019/05/20 08:00:08', '680PJK2809', '082018002', '', 0),
(303, '2019/05/20 08:00:10', '680PJK2809', '082018003', '', 0),
(304, '2019/05/20 08:00:10', '680PJK2809', '082018004', '', 0),
(305, '2019/05/20 08:00:14', '680PJK2809', '082018006', '', 0),
(306, '2019/05/20 08:00:14', '680PJK2809', '082018007', '', 0),
(307, '2019/05/20 08:00:14', '680PJK2809', '082018008', '', 0),
(308, '2019/05/20 08:00:16', '680PJK2809', '082018009', '', 0),
(309, '2019/05/20 08:00:19', '680PJK2809', '082018010', '', 0),
(310, '2019/05/20 08:00:19', '680PJK2809', '082018011', '', 0),
(311, '2019/05/20 08:00:21', '680PJK2809', '082018012', '', 0),
(312, '2019/05/20 08:00:30', '680PJK2809', '082018013', '', 0),
(313, '2019/05/19 08:00:00', '680PJK2812', '082018001', '03123456713', 0),
(314, '2019/05/19 08:00:05', '680PJK2812', '082018002', '', 0),
(315, '2019/05/19 08:00:08', '680PJK2812', '082018003', '', 0),
(316, '2019/05/19 08:00:10', '680PJK2812', '082018004', '', 0),
(317, '2019/05/19 08:00:15', '680PJK2812', '082018006', '', 0),
(318, '2019/05/19 08:00:15', '680PJK2812', '082018007', '', 0),
(319, '2019/05/19 08:00:17', '680PJK2812', '082018008', '', 0),
(320, '2019/05/19 08:00:19', '680PJK2812', '082018009', '', 0),
(321, '2019/05/19 08:00:19', '680PJK2812', '082018010', '', 0),
(322, '2019/05/19 08:00:24', '680PJK2812', '082018011', '', 0),
(323, '2019/05/03 13:00:00', '680PJK2814', '082018001', '03123456708', 0),
(324, '2019/05/03 13:00:09', '680PJK2814', '082018002', '', 0),
(325, '2019/05/03 13:00:10', '680PJK2814', '082018003', '', 0),
(326, '2019/05/03 13:00:10', '680PJK2814', '082018004', '', 0),
(327, '2019/05/03 13:00:14', '680PJK2814', '082018011', '', 0),
(328, '2019/05/03 13:00:14', '680PJK2814', '082018006', '', 0),
(329, '2019/05/03 13:00:16', '680PJK2814', '082018010', '', 0),
(330, '2019/05/03 13:00:18', '680PJK2814', '082018007', '', 0),
(331, '2019/05/03 13:00:20', '680PJK2814', '082018008', '', 0),
(332, '2019/05/03 13:00:20', '680PJK2814', '082018009', '', 0),
(333, '2019/05/28 08:00:00', '680PJK2803', '082018001', '03123456703', 0),
(334, '2019/05/28 08:00:10', '680PJK2803', '082018002', '', 0),
(335, '2019/05/28 08:00:13', '680PJK2803', '082018003', '', 0),
(336, '2019/05/28 08:00:15', '680PJK2803', '082018004', '', 0),
(337, '2019/05/28 08:00:17', '680PJK2803', '082018006', '', 0),
(338, '2019/05/28 08:00:20', '680PJK2803', '082018007', '', 0),
(339, '2019/05/28 08:00:22', '680PJK2803', '082018008', '', 0),
(340, '2019/05/28 08:00:25', '680PJK2803', '082018010', '', 0),
(341, '2019/05/28 08:00:27', '680PJK2803', '082018009', '', 0),
(342, '2019/05/28 08:00:29', '680PJK2803', '082018011', '', 0),
(343, '2019/05/03 10:00:00', '680PJK2804', '082018001', '03123456704', 0),
(344, '2019/05/03 10:00:12', '680PJK2804', '082018002', '', 0),
(345, '2019/05/03 10:00:16', '680PJK2804', '082018003', '', 0),
(346, '2019/05/03 10:00:19', '680PJK2804', '082018004', '', 0),
(347, '2019/05/03 10:00:20', '680PJK2804', '082018006', '', 0),
(348, '2019/05/03 10:00:22', '680PJK2804', '082018010', '', 0),
(349, '2019/05/03 10:00:24', '680PJK2804', '082018011', '', 0),
(350, '2019/05/03 10:00:27', '680PJK2804', '082018012', '', 0),
(351, '2019/05/03 10:00:27', '680PJK2804', '082018009', '', 0),
(352, '2019/05/03 10:00:27', '680PJK2804', '082018008', '', 0),
(353, '2019/05/03 13:00:00', '680PJK2807', '082018001', '03123456706', 0),
(354, '2019/05/03 13:00:08', '680PJK2807', '082018002', '0312345670', 0),
(355, '2019/05/03 13:00:09', '680PJK2807', '082018003', '0312345670', 0),
(356, '2019/05/03 13:00:10', '680PJK2807', '082018004', '', 0),
(357, '2019/05/03 13:00:14', '680PJK2807', '082018005', '', 0),
(358, '2019/05/03 13:00:16', '680PJK2807', '082018006', '', 0),
(359, '2019/05/03 13:00:16', '680PJK2807', '082018010', '', 0),
(360, '2019/05/03 13:00:19', '680PJK2807', '082018007', '', 0),
(361, '2019/05/03 13:00:19', '680PJK2807', '082018008', '', 0),
(362, '2019/05/03 13:00:21', '680PJK2807', '082018009', '', 0),
(363, '2019/05/11 08:00:08', '680PJK2811', '082018002', '03123456711', 0),
(364, '2019/05/11 08:00:08', '680PJK2811', '082018003', '0312345671', 0),
(365, '2019/05/11 08:00:10', '680PJK2811', '082018011', '', 0),
(366, '2019/05/11 08:00:12', '680PJK2811', '082018004', '', 0),
(367, '2019/05/11 08:00:14', '680PJK2811', '082018005', '', 0),
(368, '2019/05/11 08:00:16', '680PJK2811', '082018006', '', 0),
(369, '2019/05/11 08:00:17', '680PJK2811', '082018007', '', 0),
(370, '2019/05/11 08:00:18', '680PJK2811', '082018010', '', 0),
(371, '2019/05/11 08:00:20', '680PJK2811', '082018008', '', 0),
(372, '2019/05/11 08:00:23', '680PJK2811', '082018009', '', 0),
(373, '2018/02/05 08:00:00', '680AK1801', '081017001', '03123456714', 0),
(374, '2018/02/05 08:00:10', '680AK1801', '081017002', '', 0),
(375, '2018/02/05 08:00:11', '680AK1801', '081017003', '', 0),
(376, '2018/02/05 08:00:15', '680AK1801', '081017004', '', 0),
(377, '2018/02/05 08:00:18', '680AK1801', '081017005', '', 0),
(378, '2018/02/05 08:00:20', '680AK1801', '081017006', '', 0),
(379, '2018/02/05 08:00:22', '680AK1801', '081017007', '', 0),
(380, '2018/02/05 08:00:25', '680AK1801', '081017008', '', 0),
(381, '2018/02/05 08:01:25', '680AK1801', '081017009', '', 0),
(382, '2018/02/05 08:00:27', '680AK1801', '081017010', '', 0),
(383, '2018/02/05 08:05:00', '680AK1801', '081017011', '', 0),
(384, '2018/02/05 08:05:08', '680AK1801', '081017012', '', 0),
(385, '2018/02/05 08:05:10', '680AK1801', '081017013', '', 0),
(386, '2018/02/05 08:05:14', '680AK1801', '081017014', '', 0),
(387, '2018/02/05 08:05:17', '680AK1801', '081017015', '', 0),
(388, '2018/02/12 08:05:19', '680AK1801', '081017015', '', 0),
(389, '2018/02/05 08:05:17', '680AK1801', '081017016', '', 0),
(390, '2018/02/12 08:05:20', '680AK1801', '081017016', '', 0),
(391, '2018/02/05 08:05:21', '680AK1801', '081017017', '', 0),
(392, '2018/02/05 08:05:21', '680AK1801', '081017018', '', 0),
(393, '2018/02/05 08:05:23', '680AK1801', '081017019', '', 0),
(394, '2018/02/05 08:05:23', '680AK1801', '081017020', '', 0),
(395, '2018/02/05 08:05:23', '680AK1801', '081017022', '', 0),
(396, '2018/02/05 08:05:27', '680AK1801', '081017023', '', 0),
(397, '2018/02/12 08:00:00', '680AK1801', '081017001', '03123456714', 0),
(398, '2018/02/12 08:00:06', '680AK1801', '081017002', '', 0),
(399, '2018/02/12 08:00:10', '680AK1801', '081017003', '', 0),
(400, '2018/02/12 08:00:20', '680AK1801', '081017007', '', 0),
(401, '2018/02/12 08:00:29', '680AK1801', '081017008', '', 0),
(402, '2018/02/12 08:02:00', '680AK1801', '081017004', '', 0),
(403, '2018/02/12 08:02:05', '680AK1801', '081017005', '', 0),
(404, '2018/02/12 08:02:07', '680AK1801', '081017006', '', 0),
(405, '2018/02/12 08:02:23', '680AK1801', '081017006', '', 0),
(406, '2018/02/12 08:02:27', '680AK1801', '081017008', '', 0),
(407, '2018/02/12 08:02:30', '680AK1801', '081017007', '', 0),
(408, '2018/02/12 08:02:30', '680AK1801', '081017009', '', 0),
(409, '2018/02/12 08:02:34', '680AK1801', '081017010', '', 0),
(410, '2018/02/12 08:02:40', '680AK1801', '081017012', '', 0),
(411, '2018/02/12 08:02:49', '680AK1801', '081017012', '', 0),
(412, '2018/02/12 08:03:00', '680AK1801', '081017013', '', 0),
(413, '2018/02/12 08:03:05', '680AK1801', '081017013', '', 0),
(414, '2018/02/12 08:03:05', '680AK1801', '081017014', '', 0),
(415, '2018/02/08 13:00:08', '680PK1805', '085018003', '', 0),
(416, '2018/02/08 13:00:08', '680PK1805', '085018004', '', 0),
(417, '2018/02/08 13:00:10', '680PK1805', '085018005', '', 0),
(418, '2018/02/08 13:00:12', '680PK1805', '085018007', '', 0),
(419, '2018/02/08 13:00:12', '680PK1805', '085018008', '', 0),
(420, '2018/02/08 13:00:17', '680PK1805', '085018008', '', 0),
(421, '2018/02/08 13:00:17', '680PK1805', '085018009', '', 0),
(422, '2018/02/08 13:00:19', '680PK1805', '085018010', '', 0),
(423, '2018/02/08 13:00:19', '680PK1805', '085018012', '', 0),
(424, '2018/02/08 13:00:25', '680PK1805', '085018013', '', 0),
(425, '2018/02/08 13:00:27', '680PK1805', '085018014', '', 0),
(426, '2018/02/08 13:00:29', '680PK1805', '085018015', '', 0),
(427, '2018/02/08 13:00:29', '680PK1805', '085018016', '', 0),
(428, '2018/02/08 13:00:32', '680PK1805', '085018017', '', 0),
(429, '2018/02/08 13:00:36', '680PK1805', '085018018', '', 0),
(430, '2018/02/08 13:00:36', '680PK1805', '085018019', '', 0),
(431, '2018/02/08 13:00:40', '680PK1805', '085018020', '', 0),
(432, '2018/02/08 13:00:47', '680PK1805', '085018021', '', 0),
(433, '2018/02/08 13:00:50', '680PK1805', '085018021', '', 0),
(434, '2018/02/08 13:00:55', '680PK1805', '085018022', '', 0),
(435, '2018/02/08 13:01:00', '680PK1805', '08501802', '', 0),
(436, '2018/02/08 13:01:02', '680PK1805', '085018025', '', 0),
(437, '2018/02/08 13:01:05', '680PK1805', '085018027', '', 0),
(438, '2018/02/08 13:01:06', '680PK1805', '085018028', '', 0),
(439, '2018/02/06 08:00:12', '680PK1804', '085018019', '', 0),
(440, '2018/02/06 08:00:13', '680PK1804', '085018007', '', 0),
(441, '2018/02/06 08:00:15', '680PK1804', '085018009', '', 0),
(442, '2018/02/06 08:00:19', '680PK1804', '085018016', '', 0),
(443, '2018/02/06 08:00:19', '680PK1804', '085018010', '', 0),
(444, '2018/02/06 08:00:19', '680PK1804', '085018011', '', 0),
(445, '2018/02/06 08:00:20', '680PK1804', '085018012', '', 0),
(446, '2018/02/06 08:00:20', '680PK1804', '085018013', '', 0),
(447, '2018/02/06 08:00:20', '680PK1804', '085018014', '', 0),
(448, '2018/02/06 08:00:24', '680PK1804', '085018015', '', 0),
(449, '2018/02/05 10:00:50', '680PK1803', '085018002', '', 0),
(450, '2018/02/05 10:00:50', '680PK1803', '085018004', '', 0),
(451, '2018/02/05 10:01:00', '680PK1803', '085018013', '', 0),
(452, '2018/02/05 10:01:03', '680PK1803', '085018005', '', 0),
(453, '2018/02/05 10:01:08', '680PK1803', '085018007', '', 0),
(454, '2018/02/05 10:01:08', '680PK1803', '085018008', '', 0),
(455, '2018/02/05 10:01:08', '680PK1803', '085018009', '', 0),
(456, '2018/02/05 10:01:08', '680PK1803', '085018010', '', 0),
(457, '2018/02/05 10:01:09', '680PK1803', '085018011', '', 0),
(458, '2018/02/05 10:01:12', '680PK1803', '085018012', '', 0),
(459, '2018/02/06 10:01:0', '680KB2814', '085018002', '', 0),
(460, '2018/02/06 10:01:02', '680KB2814', '085018003', '', 0),
(461, '2018/02/06 10:01:04', '680KB2814', '085018004', '', 0),
(462, '2018/02/06 10:01:09', '680KB2814', '085018006', '', 0),
(463, '2018/02/06 10:01:10', '680KB2814', '085018007', '', 0),
(464, '2018/02/06 10:01:10', '680KB2814', '085018008', '', 0),
(465, '2018/02/06 10:01:15', '680KB2814', '085018008', '', 0),
(466, '2018/02/06 10:01:16', '680KB2814', '085018009', '', 0),
(467, '2018/02/06 10:01:16', '680KB2814', '085018010', '', 0),
(468, '2018/02/06 10:01:16', '680KB2814', '085018011', '', 0),
(469, '2018/02/05 15:00:09', '680TK2801', '084018007', '', 0),
(470, '2018/02/05 15:00:10', '680TK2801', '084018008', '', 0),
(471, '2018/02/05 15:00:19', '680TK2801', '084018009', '', 0),
(472, '2018/02/05 15:00:19', '680TK2801', '084018010', '', 0),
(473, '2018/02/05 15:00:20', '680TK2801', '084018013', '', 0),
(474, '2018/02/05 15:00:25', '680TK2801', '084018030', '', 0),
(475, '2018/02/05 15:00:28', '680TK2801', '084018014', '', 0),
(476, '2018/02/05 15:00:28', '680TK2801', '084018015', '', 0),
(477, '2018/02/05 15:00:30', '680TK2801', '08401825', '', 0),
(478, '2018/02/05 15:00:30', '680TK2801', '084018016', '', 0),
(479, '2018/02/05 15:00:30', '680TK2801', '084018017', '', 0),
(480, '2018/02/05 15:00:39', '680TK2801', '08401826', '', 0),
(481, '2018/02/05 15:00:39', '680TK2801', '08401827', '', 0),
(482, '2018/02/05 15:00:40', '680TK2801', '084018019', '', 0),
(483, '2018/02/09 10:01:00', '680KB2810', '085018001', '12345678912', 0),
(484, '2018/02/09 10:01:02', '680KB2810', '085018002', '', 0),
(485, '2018/02/09 10:01:02', '680KB2810', '085018003', '', 0),
(486, '2018/02/09 10:01:02', '680KB2810', '085018005', '', 0),
(487, '2018/03/23 10:01:09', '680KB2810', '085018002', '', 0),
(488, '2018/02/09 10:01:09', '680KB2810', '085018007', '', 0),
(489, '2018/02/09 10:01:15', '680KB2810', '085018008', '', 0),
(490, '2018/02/09 10:01:18', '680KB2810', '085018009', '', 0),
(491, '2018/02/09 10:01:20', '680KB2810', '085018010', '', 0),
(492, '2018/02/09 10:01:24', '680KB2810', '085018011', '', 0),
(493, '2018/02/09 10:01:27', '680KB2810', '085018012', '', 0),
(494, '2018/02/09 10:01:30', '680KB2810', '085018013', '', 0),
(495, '2018/02/09 10:01:33', '680KB2810', '085018014', '', 0),
(496, '2018/02/09 10:01:35', '680KB2810', '085018015', '', 0),
(497, '2018/02/09 10:01:40', '680KB2810', '085018018', '', 0),
(498, '2018/02/09 10:01:43', '680KB2810', '085018017', '', 0),
(499, '2018/02/09 10:01:44', '680KB2810', '085018019', '', 0),
(500, '2018/02/09 10:01:46', '680KB2810', '085018020', '', 0),
(501, '2018/02/09 10:01:49', '680KB2810', '085018021', '', 0),
(503, '2018/02/09 10:01:51', '680KB2810', '085018024', '', 0),
(504, '2018/02/09 10:01:60', '680KB2810', '085018004', '', 0),
(505, '2018/02/09 10:01:60', '680KB2810', '085018025', '', 0),
(506, '2018/02/09 10:02:00', '680KB2810', '085018027', '', 0),
(507, '2018/02/16 10:01:00', '680KB2810', '085018001', '12345678912', 0),
(508, '2018/02/16 10:01:00', '680KB2810', '085018002', '', 0),
(509, '2018/02/16 10:01:06', '680KB2810', '085018015', '', 0),
(510, '2018/02/16 10:01:00', '680KB2810', '085018016', '', 0),
(511, '2018/02/16 10:01:00', '680KB2810', '085018017', '', 0),
(512, '2018/02/16 10:01:09', '680KB2810', '085018005', '', 0),
(513, '2018/02/16 10:01:10', '680KB2810', '085018019', '', 0),
(514, '2018/02/16 10:01:10', '680KB2810', '085018007', '', 0),
(515, '2018/02/16 10:01:10', '680KB2810', '085018003', '', 0),
(516, '2018/02/16 10:01:10', '680KB2810', '085018008', '', 0),
(517, '2018/02/16 10:01:10', '680KB2810', '085018009', '', 0),
(518, '2018/02/16 10:01:13', '680KB2810', '085018010', '', 0),
(519, '2018/02/16 10:01:10', '680KB2810', '085018011', '', 0),
(520, '2018/02/16 10:01:15', '680KB2810', '085018012', '', 0),
(521, '2018/02/16 10:01:17', '680KB2810', '085018013', '', 0),
(522, '2018/02/16 10:01:19', '680KB2810', '085018014', '', 0),
(523, '2018/03/23 10:01:22', '680KB2810', '085018015', '', 0),
(524, '2018/03/16 10:01:25', '680KB2810', '085018019', '', 0),
(525, '2018/02/16 10:01:25', '680KB2810', '085018018', '', 0),
(526, '2018/02/16 10:01:27', '680KB2810', '085018022', '', 0),
(527, '2018/02/16 10:01:27', '680KB2810', '085018020', '', 0),
(528, '2018/03/09 10:01:29', '680KB2810', '085018022', '12345678912', 0),
(529, '2018/02/16 10:01:30', '680KB2810', '085018023', '', 0),
(530, '2018/02/16 10:01:30', '680KB2810', '085018024', '', 0),
(531, '2018/02/16 10:01:35', '680KB2810', '085018028', '', 0),
(532, '2018/02/16 10:01:36', '680KB2810', '085018027', '', 0),
(533, '2018/02/16 10:01:37', '680KB2810', '085018029', '', 0),
(534, '2018/02/23 10:01:48', '680KB2810', '085018001', '', 0),
(535, '2018/02/02 10:01:51', '680KB2810', '085018024', '', 0),
(536, '2018/02/23 10:01:04', '680KB2810', '085018002', '12345678912', 0),
(537, '2018/02/23 10:01:08', '680KB2810', '085018003', '', 0),
(538, '2018/02/23 10:01:10', '680KB2810', '085018004', '', 0),
(539, '2018/02/23 10:01:12', '680KB2810', '085018005', '', 0),
(540, '2018/04/20 10:01:13', '680KB2810', '085018024', '', 0),
(541, '2018/02/23 10:01:15', '680KB2810', '085018007', '', 0),
(542, '2018/02/23 10:01:16', '680KB2810', '085018008', '', 0),
(543, '2018/02/23 10:01:19', '680KB2810', '085018011', '', 0),
(544, '2018/02/23 10:01:20', '680KB2810', '085018009', '', 0),
(545, '2018/02/23 10:01:22', '680KB2810', '085018010', '', 0),
(546, '2018/02/23 10:01:17', '680KB2811', '085018010', '', 0),
(547, '2018/02/23 10:01:17', '680KB2811', '085018010', '', 0),
(548, '2018/02/23 10:01:17', '680KB2811', '085018010', '', 0),
(549, '2018/02/23 10:01:19', '680KB2812', '085018011', '', 0),
(550, '2018/02/23 10:01:21', '680KB2812', '085018012', '', 0),
(551, '2018/02/23 10:01:23', '680KB2812', '085018013', '', 0),
(552, '2018/02/23 10:01:24', '680KB2812', '085018014', '', 0),
(553, '2018/02/23 10:01:24', '680KB2812', '085018015', '', 0),
(554, '2018/02/23 10:01:25', '680KB2812', '085018020', '', 0),
(555, '2018/02/23 10:01:27', '680KB2812', '085018017', '', 0),
(556, '2018/02/23 10:01:29', '680KB2812', '085018018', '', 0),
(557, '2018/02/23 10:01:30', '680KB2812', '085018019', '', 0),
(558, '2018/02/23 10:01:30', '680KB2812', '085018021', '', 0),
(559, '2018/02/23 10:01:32', '680KB2812', '085018022', '', 0),
(560, '2018/02/23 10:01:32', '680KB2812', '085018024', '', 0),
(561, '2018/02/23 10:01:34', '680KB2812', '085018025', '', 0),
(562, '2018/02/23 10:01:36', '680KB2812', '085018026', '', 0),
(563, '2018/02/23 10:01:39', '680KB2812', '085018027', '', 0),
(564, '2018/02/23 10:01:39', '680KB2812', '085018028', '', 0),
(565, '2018/02/23 10:01:40', '680KB2812', '085018029', '', 0),
(566, '2018/02/02 10:00:12', '680KB2810', '085018029', '12345678912', 0),
(567, '2018/03/02 10:00:16', '680KB2810', '085018001', '', 0),
(568, '2018/03/02 10:00:16', '680KB2810', '085018002', '', 0),
(569, '2018/03/02 10:00:18', '680KB2810', '085018003', '', 0),
(570, '2018/03/02 10:00:18', '680KB2810', '085018004', '', 0),
(571, '2018/03/02 10:00:19', '680KB2810', '085018005', '', 0),
(572, '2018/03/02 10:00:20', '680KB2810', '085018007', '', 0),
(573, '2018/03/02 10:00:20', '680KB2810', '085018008', '', 0),
(574, '2018/03/02 10:00:24', '680KB2810', '085018009', '', 0),
(575, '2018/03/02 10:00:25', '680KB2810', '085018010', '', 0),
(576, '2018/03/02 10:00:29', '680KB2810', '085018011', '', 0),
(577, '2018/03/02 10:00:27', '680KB2810', '085018012', '', 0),
(578, '2018/03/02 10:00:30', '680KB2810', '085018013', '', 0),
(579, '2018/03/02 10:00:32', '680KB2810', '085018014', '', 0),
(580, '2018/03/02 10:00:34', '680KB2810', '085018015', '', 0),
(581, '2018/03/02 10:00:34', '680KB2810', '085018017', '', 0),
(582, '2018/03/02 10:00:36', '680KB2810', '085018018', '', 0),
(583, '2018/03/02 10:00:38', '680KB2810', '085018019', '', 0),
(584, '2018/03/02 10:00:38', '680KB2810', '085018020', '', 0),
(585, '2018/03/02 10:00:40', '680KB2810', '085018021', '', 0),
(586, '2018/03/02 10:00:44', '680KB2810', '085018022', '', 0),
(587, '2018/03/02 10:00:46', '680KB2810', '085018023', '', 0),
(588, '2018/03/02 10:00:48', '680KB2810', '085018025', '', 0),
(589, '2018/03/02 10:00:50', '680KB2810', '085018027', '', 0),
(590, '2018/03/02 10:00:53', '680KB2810', '085018028', '', 0),
(591, '2018/03/02 10:01:00', '680KB2810', '085018029', '', 0),
(592, '2018/02/16 10:02:00', '680KB2810', '085018004', '', 0),
(593, '2018/02/02 10:02:15', '680KB2810', '085018018', '', 0),
(594, '2018/02/02 10:02:30', '680KB2810', '085018022', '', 0),
(595, '2018/03/16 10:02:10', '680KB2810', '085018020', '', 0),
(596, '2018/02/16 10:02:13', '680KB2810', '085018021', '', 0),
(597, '2018/02/09 10:02:14', '680KB2810', '085018022', '', 0),
(598, '2018/03/16 10:02:14', '680KB2810', '085018023', '', 0),
(599, '2018/03/16 10:02:15', '680KB2810', '085018024', '', 0),
(600, '2018/02/16 10:02:17', '680KB2810', '085018025', '', 0),
(601, '2018/03/16 10:02:20', '680KB2810', '085018027', '', 0),
(602, '2018/03/16 10:02:22', '680KB2810', '085018028', '', 0),
(603, '2018/03/16 10:02:22', '680KB2810', '085018029', '', 0),
(604, '2018/02/23 10:01:30', '680KB2810', '085018012', '', 0),
(605, '2018/02/23 10:01:33', '680KB2810', '085018013', '', 0),
(606, '2018/02/23 10:01:34', '680KB2810', '085018014', '', 0),
(608, '2018/02/23 10:01:36', '680KB2810', '085018016', '', 0),
(609, '2018/02/23 10:01:38', '680KB2810', '085018017', '', 0),
(610, '2018/02/23 10:01:39', '680KB2810', '085018018', '', 0),
(611, '2018/02/23 10:01:41', '680KB2810', '085018019', '', 0),
(612, '2018/02/23 10:01:43', '680KB2810', '085018020', '', 0),
(613, '2018/02/23 10:01:45', '680KB2810', '085018021', '', 0),
(614, '2018/02/23 10:01:47', '680KB2810', '085018022', '', 0),
(615, '2018/02/23 10:01:49', '680KB2810', '085018023', '', 0),
(616, '2018/02/23 10:01:51', '680KB2810', '085018024', '', 0),
(617, '2018/02/23 10:01:52', '680KB2810', '085018025', '', 0),
(618, '2018/02/23 10:01:53', '680KB2810', '085018027', '', 0),
(619, '2018/02/23 10:01:56', '680KB2810', '085018028', '', 0),
(620, '2018/02/23 10:01:60', '680KB2810', '085018029', '', 0),
(621, '2018/03/09 10:01:00', '680KB2810', '085018001', '', 0),
(622, '2018/03/09 10:01:03', '680KB2810', '085018002', '', 0),
(623, '2018/03/09 10:01:06', '680KB2810', '085018003', '', 0),
(624, '2018/03/09 10:01:08', '680KB2810', '085018004', '', 0),
(625, '2018/03/09 10:01:10', '680KB2810', '085018005', '', 0),
(626, '2018/03/09 10:01:13', '680KB2810', '085018007', '', 0),
(627, '2018/03/09 10:01:15', '680KB2810', '085018008', '', 0),
(628, '2018/03/09 10:01:17', '680KB2810', '085018009', '', 0),
(629, '2018/03/09 10:01:19', '680KB2810', '085018011', '', 0),
(630, '2018/03/09 10:01:20', '680KB2810', '085018012', '', 0),
(631, '2018/03/09 10:01:23', '680KB2810', '085018013', '', 0),
(632, '2018/03/09 10:01:24', '680KB2810', '085018014', '', 0),
(633, '2018/03/09 10:01:26', '680KB2810', '085018015', '', 0),
(634, '2018/03/09 10:01:27', '680KB2810', '085018017', '', 0),
(635, '2018/03/09 10:01:20', '680KB2810', '085018018', '', 0),
(636, '2018/03/09 10:01:34', '680KB2810', '085018019', '', 0),
(637, '2018/03/09 10:01:32', '680KB2810', '085018020', '', 0),
(638, '2018/03/09 10:01:32', '680KB2810', '085018021', '', 0),
(639, '2018/02/02 10:01:34', '680KB2810', '085018004', '', 0),
(640, '2018/03/09 10:01:35', '680KB2810', '085018023', '', 0),
(641, '2018/03/09 10:01:35', '680KB2810', '085018024', '', 0),
(642, '2018/03/09 10:01:35', '680KB2810', '085018025', '', 0),
(643, '2018/03/09 10:01:35', '680KB2810', '085018027', '', 0),
(644, '2018/03/09 10:01:39', '680KB2810', '085018028', '', 0),
(645, '2018/03/09 10:01:37', '680KB2810', '085018029', '', 0),
(646, '2018/03/16 10:01:00', '680KB2810', '085018001', '12345678912', 0),
(647, '2018/03/16 10:01:03', '680KB2810', '085018002', '', 0),
(648, '2018/03/16 10:01:03', '680KB2810', '085018003', '', 0),
(649, '2018/03/16 10:01:05', '680KB2810', '085018004', '', 0),
(650, '2018/03/16 10:01:08', '680KB2810', '085018005', '', 0),
(651, '2018/03/16 10:01:10', '680KB2810', '085018007', '', 0),
(652, '2018/03/16 10:01:12', '680KB2810', '085018008', '', 0),
(653, '2018/03/16 10:01:14', '680KB2810', '085018009', '', 0),
(654, '2018/03/16 10:01:14', '680KB2810', '085018010', '', 0),
(655, '2018/03/16 10:01:16', '680KB2810', '085018011', '', 0),
(656, '2018/03/16 10:01:18', '680KB2810', '085018012', '', 0),
(657, '2018/03/16 10:01:20', '680KB2810', '085018013', '', 0),
(658, '2018/03/16 10:01:20', '680KB2810', '085018014', '', 0),
(659, '2018/03/16 10:01:22', '680KB2810', '085018015', '', 0),
(660, '2018/03/23 10:01:22', '680KB2810', '085018029', '', 0),
(661, '2018/03/16 10:01:22', '680KB2810', '085018017', '', 0),
(662, '2018/03/16 10:01:24', '680KB2810', '085018018', '', 0),
(663, '2018/03/16 10:01:26', '680KB2810', '085018021', '', 0),
(664, '2018/03/16 10:01:28', '680KB2810', '085018022', '', 0),
(665, '2018/03/16 10:01:30', '680KB2810', '085018025', '', 0),
(666, '2018/03/23 10:01:13', '680KB2810', '085018001', '12345678912', 0),
(667, '2018/03/23 10:01:16', '680KB2810', '085018003', '', 0),
(668, '2018/03/23 10:01:18', '680KB2810', '085018004', '', 0),
(669, '2018/03/23 10:01:20', '680KB2810', '085018005', '', 0),
(670, '2018/04/13 10:01:22', '680KB2810', '085018002', '', 0),
(671, '2018/03/23 10:01:23', '680KB2810', '085018007', '', 0),
(672, '2018/03/23 10:01:25', '680KB2810', '085018008', '', 0),
(673, '2018/03/23 10:01:23', '680KB2810', '085018009', '', 0),
(674, '2018/03/23 10:01:23', '680KB2810', '085018010', '', 0),
(675, '2018/03/23 10:01:25', '680KB2810', '085018011', '', 0),
(676, '2018/03/23 10:01:25', '680KB2810', '085018012', '', 0),
(677, '2018/03/23 10:01:27', '680KB2810', '085018013', '', 0),
(678, '2018/03/23 10:01:28', '680KB2810', '085018014', '', 0),
(679, '2018/03/30 10:01:30', '680KB2810', '085018015', '', 0),
(680, '2018/03/23 10:01:30', '680KB2810', '085018017', '', 0),
(681, '2018/03/23 10:01:30', '680KB2810', '085018018', '', 0),
(682, '2018/03/23 10:01:33', '680KB2810', '085018019', '', 0),
(683, '2018/03/23 10:01:35', '680KB2810', '085018020', '', 0),
(684, '2018/03/23 10:01:37', '680KB2810', '085018021', '', 0),
(685, '2018/03/23 10:01:40', '680KB2810', '085018022', '', 0),
(686, '2018/03/23 10:01:42', '680KB2810', '085018023', '', 0),
(687, '2018/03/23 10:01:44', '680KB2810', '085018024', '', 0),
(688, '2018/03/23 10:01:47', '680KB2810', '085018025', '', 0),
(689, '2018/03/23 10:01:50', '680KB2810', '085018027', '', 0),
(690, '2018/03/23 10:01:50', '680KB2810', '085018028', '', 0),
(691, '2018/03/30 10:01:00', '680KB2810', '085018001', '12345678912', 0),
(692, '2018/03/30 10:01:03', '680KB2810', '085018002', '', 0),
(693, '2018/03/30 10:01:07', '680KB2810', '085018003', '', 0),
(694, '2018/03/30 10:01:10', '680KB2810', '085018004', '', 0),
(695, '2018/03/30 10:01:10', '680KB2810', '085018005', '', 0),
(696, '2018/03/30 10:01:12', '680KB2810', '085018007', '', 0),
(697, '2018/03/30 10:01:12', '680KB2810', '085018008', '', 0),
(698, '2018/03/30 10:01:19', '680KB2810', '085018009', '', 0),
(699, '2018/03/30 10:01:18', '680KB2810', '085018010', '', 0),
(700, '2018/03/30 10:01:22', '680KB2810', '085018011', '', 0),
(701, '2018/03/30 10:01:24', '680KB2810', '085018012', '', 0),
(702, '2018/03/30 10:01:27', '680KB2810', '085018013', '', 0),
(703, '2018/03/30 10:01:24', '680KB2810', '085018014', '', 0),
(704, '2018/03/30 10:01:28', '680KB2810', '085018023', '', 0),
(705, '2018/03/30 10:01:30', '680KB2810', '085018017', '', 0),
(706, '2018/03/30 10:01:35', '680KB2810', '085018018', '', 0),
(707, '2018/03/30 10:01:37', '680KB2810', '085018019', '', 0),
(708, '2018/03/30 10:01:40', '680KB2810', '085018020', '', 0),
(709, '2018/03/30 10:01:38', '680KB2810', '085018021', '', 0),
(710, '2018/03/30 10:01:42', '680KB2810', '085018022', '', 0),
(711, '2018/03/30 10:01:42', '680KB2810', '085018024', '', 0),
(712, '2018/03/30 10:01:44', '680KB2810', '085018025', '', 0),
(713, '2018/03/30 10:01:46', '680KB2810', '085018027', '', 0),
(714, '2018/03/30 10:01:46', '680KB2810', '085018028', '', 0),
(715, '2018/03/30 10:01:47', '680KB2810', '085018029', '', 0),
(716, '2018/04/06 10:01:00', '680KB2810', '085018001', '12345678912', 0),
(717, '2018/04/06 10:01:05', '680KB2810', '085018002', '', 0),
(718, '2018/04/06 10:01:07', '680KB2810', '085018003', '', 0),
(719, '2018/04/06 10:01:09', '680KB2810', '085018004', '', 0),
(720, '2018/04/06 10:01:10', '680KB2810', '085018005', '', 0),
(721, '2018/04/06 10:01:16', '680KB2810', '085018007', '', 0),
(722, '2018/04/06 10:01:18', '680KB2810', '085018008', '', 0),
(723, '2018/04/06 10:01:14', '680KB2810', '085018009', '', 0),
(724, '2018/04/06 10:01:20', '680KB2810', '085018010', '', 0),
(725, '2018/04/06 10:01:22', '680KB2810', '085018011', '', 0),
(726, '2018/04/06 10:01:24', '680KB2810', '085018012', '', 0),
(727, '2018/04/06 10:01:26', '680KB2810', '085018013', '', 0),
(728, '2018/04/06 10:01:28', '680KB2810', '085018014', '', 0),
(729, '2018/04/06 10:01:30', '680KB2810', '085018015', '', 0),
(730, '2018/04/06 10:01:34', '680KB2810', '085018021', '', 0),
(731, '2018/04/06 10:01:36', '680KB2810', '085018018', '', 0),
(732, '2018/04/06 10:01:37', '680KB2810', '085018019', '', 0),
(733, '2018/04/06 10:01:37', '680KB2810', '085018020', '', 0),
(734, '2018/04/06 10:01:40', '680KB2810', '085018022', '', 0),
(735, '2018/04/06 10:01:42', '680KB2810', '085018023', '', 0),
(736, '2018/04/06 10:01:46', '680KB2810', '085018024', '', 0),
(737, '2018/04/06 10:01:47', '680KB2810', '085018025', '', 0),
(738, '2018/04/06 10:01:49', '680KB2810', '085018027', '', 0),
(739, '2018/04/06 10:01:51', '680KB2810', '085018028', '', 0),
(740, '2018/04/06 10:01:52', '680KB2810', '085018029', '', 0),
(741, '2018/04/13 10:01:00', '680KB2810', '085018001', '12345678912', 0),
(742, '2018/04/13 10:01:03', '680KB2810', '085018003', '', 0),
(743, '2018/04/13 10:01:04', '680KB2810', '085018004', '', 0),
(744, '2018/04/13 10:01:04', '680KB2810', '085018005', '', 0),
(745, '2018/04/13 10:01:04', '680KB2810', '085018007', '', 0),
(746, '2018/04/13 10:01:08', '680KB2810', '085018008', '', 0),
(747, '2018/04/13 10:01:10', '680KB2810', '085018009', '', 0),
(748, '2018/04/13 10:01:12', '680KB2810', '085018010', '', 0),
(749, '2018/04/13 10:01:13', '680KB2810', '085018011', '', 0),
(750, '2018/04/13 10:01:17', '680KB2810', '085018012', '', 0),
(751, '2018/04/13 10:01:15', '680KB2810', '085018013', '', 0),
(752, '2018/04/13 10:01:14', '680KB2810', '085018014', '', 0),
(753, '2018/04/13 10:01:18', '680KB2810', '085018015', '', 0),
(754, '2018/04/13 10:01:20', '680KB2810', '085018017', '', 0),
(755, '2018/04/13 10:01:22', '680KB2810', '085018018', '', 0),
(756, '2018/04/13 10:01:27', '680KB2810', '085018019', '', 0),
(757, '2018/04/13 10:01:23', '680KB2810', '085018020', '', 0),
(758, '2018/04/13 10:01:25', '680KB2810', '085018021', '', 0),
(759, '2018/04/13 10:01:28', '680KB2810', '085018022', '', 0),
(760, '2018/04/13 10:01:29', '680KB2810', '085018023', '', 0),
(761, '2018/04/13 10:01:31', '680KB2810', '085018024', '', 0),
(762, '2018/04/13 10:01:33', '680KB2810', '085018025', '', 0),
(763, '2018/04/13 10:01:35', '680KB2810', '085018027', '', 0),
(764, '2018/04/13 10:01:38', '680KB2810', '085018028', '', 0),
(765, '2018/04/13 10:01:40', '680KB2810', '085018029', '', 0),
(766, '2018/04/20 10:01:02', '680KB2810', '085018001', '12345678912', 0),
(767, '2018/04/20 10:01:04', '680KB2810', '085018002', '', 0),
(768, '2018/04/20 10:01:06', '680KB2810', '085018003', '', 0),
(769, '2018/04/20 10:01:08', '680KB2810', '085018004', '', 0),
(770, '2018/04/20 10:01:10', '680KB2810', '085018005', '', 0),
(771, '2018/04/20 10:01:13', '680KB2810', '085018007', '', 0),
(772, '2018/04/20 10:01:15', '680KB2810', '085018008', '', 0),
(773, '2018/04/20 10:01:15', '680KB2810', '085018009', '', 0),
(774, '2018/04/20 10:01:15', '680KB2810', '085018029', '', 0),
(775, '2018/04/20 10:02:17', '680KB2810', '085018010', '', 0),
(776, '2018/04/20 10:02:17', '680KB2810', '085018011', '', 0),
(777, '2018/04/20 10:02:19', '680KB2810', '085018012', '', 0),
(778, '2018/04/20 10:02:22', '680KB2810', '085018013', '', 0),
(779, '2018/04/20 10:02:23', '680KB2810', '085018014', '', 0),
(780, '2018/04/20 10:02:25', '680KB2810', '085018015', '', 0),
(781, '2018/04/20 10:02:26', '680KB2810', '085018017', '', 0),
(782, '2018/04/20 10:02:27', '680KB2810', '085018018', '', 0),
(783, '2018/04/20 10:02:29', '680KB2810', '085018019', '', 0),
(784, '2018/04/20 10:02:30', '680KB2810', '085018020', '', 0),
(785, '2018/04/20 10:02:34', '680KB2810', '085018021', '', 0),
(786, '2018/04/20 10:02:34', '680KB2810', '085018022', '', 0),
(787, '2018/04/20 10:02:36', '680KB2810', '085018023', '', 0),
(788, '2018/04/20 10:02:38', '680KB2810', '085018025', '', 0),
(789, '2018/04/20 10:02:38', '680KB2810', '085018027', '', 0),
(790, '2018/04/20 10:02:39', '680KB2810', '085018028', '', 0),
(791, '2018/04/27 10:01:00', '680KB2810', '085018001', '12345678912', 0),
(792, '2018/04/27 10:01:05', '680KB2810', '085018002', '', 0),
(793, '2018/04/27 10:01:07', '680KB2810', '085018003', '', 0),
(794, '2018/04/27 10:01:09', '680KB2810', '085018004', '', 0),
(795, '2018/04/27 10:01:12', '680KB2810', '085018005', '', 0),
(796, '2018/04/27 10:01:14', '680KB2810', '085018007', '', 0),
(797, '2018/04/27 10:01:15', '680KB2810', '085018008', '', 0),
(798, '2018/04/27 10:01:17', '680KB2810', '085018009', '', 0),
(799, '2018/04/27 10:01:20', '680KB2810', '085018010', '', 0),
(800, '2018/04/27 10:01:19', '680KB2810', '085018011', '', 0),
(801, '2018/04/27 10:01:21', '680KB2810', '085018012', '', 0),
(802, '2018/04/27 10:01:23', '680KB2810', '085018013', '', 0),
(803, '2018/04/27 10:01:25', '680KB2810', '085018014', '', 0),
(804, '2018/04/27 10:01:27', '680KB2810', '085018015', '', 0),
(805, '2018/04/27 10:01:28', '680KB2810', '085018017', '', 0),
(806, '2018/04/27 10:01:30', '680KB2810', '085018018', '', 0),
(807, '2018/04/27 10:01:32', '680KB2810', '085018019', '', 0),
(808, '2018/04/27 10:01:33', '680KB2810', '085018020', '', 0),
(809, '2018/04/27 10:01:35', '680KB2810', '085018021', '', 0),
(810, '2018/04/27 10:01:35', '680KB2810', '085018022', '', 0),
(811, '2018/04/27 10:01:37', '680KB2810', '085018023', '', 0),
(812, '2018/04/27 10:01:39', '680KB2810', '085018024', '', 0);
INSERT INTO `presensi` (`kd_presensi`, `waktu`, `kode_mk`, `npm`, `kd_dos`, `kd_aktif`) VALUES
(813, '2018/04/27 10:01:41', '680KB2810', '085018025', '', 0),
(814, '2018/04/27 10:01:43', '680KB2810', '085018027', '', 0),
(815, '2018/04/27 10:01:45', '680KB2810', '085018028', '', 0),
(816, '2018/04/27 10:01:47', '680KB2810', '085018029', '', 0),
(817, '2018/05/04 10:01:00', '680KB2810', '085018001', '12345678912', 0),
(818, '2018/05/04 10:01:03', '680KB2810', '085018002', '', 0),
(819, '2018/05/04 10:01:05', '680KB2810', '085018003', '', 0),
(820, '2018/05/04 10:01:06', '680KB2810', '085018029', '', 0),
(821, '2018/05/04 10:01:07', '680KB2810', '085018004', '', 0),
(822, '2018/05/04 10:01:09', '680KB2810', '085018028', '', 0),
(823, '2018/05/04 10:01:12', '680KB2810', '085018005', '', 0),
(824, '2018/05/04 10:01:14', '680KB2810', '085018007', '', 0),
(825, '2018/05/04 10:01:17', '680KB2810', '085018008', '', 0),
(826, '2018/05/04 10:01:19', '680KB2810', '085018009', '', 0),
(827, '2018/05/04 10:01:20', '680KB2810', '085018010', '', 0),
(828, '2018/05/04 10:01:23', '680KB2810', '085018011', '', 0),
(829, '2018/05/04 10:01:26', '680KB2810', '085018012', '', 0),
(830, '2018/05/04 10:01:27', '680KB2810', '085018013', '', 0),
(831, '2018/05/04 10:01:29', '680KB2810', '085018014', '', 0),
(832, '2018/05/04 10:01:32', '680KB2810', '085018015', '', 0),
(833, '2018/05/04 10:01:34', '680KB2810', '085018017', '', 0),
(834, '2018/05/04 10:01:36', '680KB2810', '085018018', '', 0),
(835, '2018/05/04 10:01:38', '680KB2810', '085018019', '', 0),
(836, '2018/05/04 10:01:40', '680KB2810', '085018020', '', 0),
(837, '2018/05/04 10:01:42', '680KB2810', '085018021', '', 0),
(838, '2018/05/04 10:01:43', '680KB2810', '085018022', '', 0),
(839, '2018/05/04 10:01:45', '680KB2810', '085018027', '', 0),
(840, '2018/05/04 10:01:46', '680KB2810', '085018024', '', 0),
(841, '2018/05/04 10:01:50', '680KB2810', '085018025', '', 0),
(842, '2018/05/11 10:01:00', '680KB2810', '08501801', '12345678912', 0),
(843, '2018/05/11 10:01:12', '680KB281', '085018002', '', 0),
(844, '2018/05/11 10:01:10', '680KB281', '085018003', '', 0),
(845, '2018/05/11 10:01:12', '680KB281', '085018004', '', 0),
(846, '2018/05/11 10:01:15', '680KB281', '085018005', '', 0),
(847, '2018/05/11 10:01:18', '680KB281', '085018007', '', 0),
(848, '2018/05/11 10:01:20', '680KB281', '085018008', '', 0),
(849, '2018/05/11 10:01:18', '680KB281', '085018009', '', 0),
(850, '2018/03/02 10:01:18', '680KB2810', '085018024', '', 0),
(851, '2018/02/09 10:01:18', '680KB2810', '085018029', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `id_ruang` int(11) NOT NULL,
  `kode_ruang` char(11) NOT NULL,
  `nama_ruang` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`id_ruang`, `kode_ruang`, `nama_ruang`) VALUES
(1, 'RK.3.1', 'Banpres'),
(2, 'RK.3.2', 'Banpres'),
(3, 'RK.3.3', 'Banpres'),
(4, 'LabkomSI-1', 'LABKOM'),
(5, 'LabkomSI-2', 'LABKOM'),
(6, 'LabkomTK-1', 'LABKOM'),
(7, 'LabkomTK-2', 'LABKOM'),
(8, 'R. 6.1.2', 'Banpres'),
(9, 'R.2.2', 'Banpres'),
(10, 'LABKOM', 'LAB'),
(11, 'Rk.2.2', 'Banpres'),
(12, 'Rk.6.1.1', 'Banpres'),
(13, 'Rk.2.9', 'Banpres'),
(14, 'Lab. Ekonom', 'Lab Ekonomi');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `mode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`mode`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `status_kehadiran`
--

CREATE TABLE `status_kehadiran` (
  `id_status` int(11) NOT NULL,
  `npm` char(20) NOT NULL,
  `kode_mk` varchar(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_ket` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_kehadiran`
--

INSERT INTO `status_kehadiran` (`id_status`, `npm`, `kode_mk`, `tanggal`, `id_ket`) VALUES
(1, '85017013', '680PK1801', '2020-05-06', 'Izin'),
(2, '68016041', '680PK1801', '2020-05-06', '1'),
(3, '68016041', '680PK1801', '2020-05-13', '3'),
(4, '68016041', '680PK1802', '2019-04-08', '2'),
(5, '85017013', '680PK1801', '2020-05-06', 'Sakit'),
(6, '85017013', '680KB2812', '2019-04-08', 'Sakit'),
(7, '85017013', '680PK1801', '2020-05-08', 'Sakit'),
(8, '85017011', '680PK1801', '2020-05-09', 'Alfa'),
(9, '85017001', '680PK1801', '2020-05-08', 'Izin'),
(10, '85017013', '680PK1801', '2020-05-10', '1'),
(11, '85017011', '680PK1802', '2020-05-17', '2'),
(12, '085018028', '680KB2810', '2018-02-09', 'Izin'),
(13, '85018010', '680KB2810', '2018-02-05', 'UTS'),
(14, '085018027', '680KB2810', '2018-02-02', 'Izin'),
(15, '085018025', '680KB2810', '2018-02-02', 'Sakit'),
(16, '085018028', '680KB2810', '2018-02-02', 'Izin'),
(17, '085018015', '680KB2810', '2018-02-23', 'Izin'),
(18, '85018001', '680KB2810', '2018-03-28', 'UTS'),
(19, '85018002', '680KB2810', '2018-03-28', 'UAS'),
(20, '85018002', '680KB2810', '2018-03-28', 'UTS'),
(21, '85018003', '680KB2810', '2018-03-28', 'UTS'),
(22, '085018017', '680KB2810', '2018-04-06', 'Izin'),
(23, '085018004', '680KB2810', '2018-02-09', 'Alfa'),
(24, '085018025', '680KB2810', '2018-02-09', 'Sakit'),
(25, '085018004', '680PK1801', '2020-09-07', 'Alfa');

-- --------------------------------------------------------

--
-- Table structure for table `tmprfid`
--

CREATE TABLE `tmprfid` (
  `nokartu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `group_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `pass`, `group_user`) VALUES
(16, 'Admin', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', 1),
(19, 'Kaprodi', 'kaprodi@gmail.com', '202cb962ac59075b964b07152d234b70', 0),
(20, 'KALAB', 'kalab@gmail.com', '202cb962ac59075b964b07152d234b70', 5),
(21, 'Staff Tata Usaha', 'stafftu@gmail.com', '202cb962ac59075b964b07152d234b70', 4),
(22, 'dosen', 'dosen@gmail.com', '202cb962ac59075b964b07152d234b70', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akses_kontrol`
--
ALTER TABLE `akses_kontrol`
  ADD PRIMARY KEY (`id_akses`),
  ADD KEY `id_ruang` (`id_ruang`);

--
-- Indexes for table `aktivasi`
--
ALTER TABLE `aktivasi`
  ADD PRIMARY KEY (`id_aktiv`),
  ADD UNIQUE KEY `id_ruang` (`id_ruang`),
  ADD UNIQUE KEY `id_matkul` (`id_matkul`);

--
-- Indexes for table `asdos`
--
ALTER TABLE `asdos`
  ADD PRIMARY KEY (`id_asdos`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dos`),
  ADD UNIQUE KEY `kd_dos` (`kd_dos`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kode_kel`);

--
-- Indexes for table `keterangan`
--
ALTER TABLE `keterangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mhs`),
  ADD UNIQUE KEY `npm` (`npm`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_m`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id_matkul`),
  ADD UNIQUE KEY `kode_mk` (`kode_mk`);

--
-- Indexes for table `mode`
--
ALTER TABLE `mode`
  ADD PRIMARY KEY (`mode`);

--
-- Indexes for table `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`kd_presensi`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id_ruang`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`mode`);

--
-- Indexes for table `status_kehadiran`
--
ALTER TABLE `status_kehadiran`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tmprfid`
--
ALTER TABLE `tmprfid`
  ADD PRIMARY KEY (`nokartu`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akses_kontrol`
--
ALTER TABLE `akses_kontrol`
  MODIFY `id_akses` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `aktivasi`
--
ALTER TABLE `aktivasi`
  MODIFY `id_aktiv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `asdos`
--
ALTER TABLE `asdos`
  MODIFY `id_asdos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `kode_kel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `keterangan`
--
ALTER TABLE `keterangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id_m` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `matkul`
--
ALTER TABLE `matkul`
  MODIFY `id_matkul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `presensi`
--
ALTER TABLE `presensi`
  MODIFY `kd_presensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=852;

--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id_ruang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `status_kehadiran`
--
ALTER TABLE `status_kehadiran`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `akses_kontrol`
--
ALTER TABLE `akses_kontrol`
  ADD CONSTRAINT `akses_kontrol_ibfk_1` FOREIGN KEY (`id_ruang`) REFERENCES `ruang` (`id_ruang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `aktivasi`
--
ALTER TABLE `aktivasi`
  ADD CONSTRAINT `aktivasi_ibfk_1` FOREIGN KEY (`id_matkul`) REFERENCES `matkul` (`id_matkul`),
  ADD CONSTRAINT `aktivasi_ibfk_2` FOREIGN KEY (`id_ruang`) REFERENCES `ruang` (`id_ruang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
