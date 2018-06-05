-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 23, 2016 at 10:09 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `private_hani`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `gambar` varchar(255) NOT NULL DEFAULT 'default.png',
  `theme` varchar(20) NOT NULL DEFAULT 'sb_admin'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `nama`, `status`, `gambar`, `theme`) VALUES
(2, 'admin@catherine.com', 'admin', 'adminsatu', 1, 'default.png', 'sb_admin');

-- --------------------------------------------------------

--
-- Table structure for table `diskusi`
--

CREATE TABLE `diskusi` (
  `id_diskusi` int(11) NOT NULL,
  `id_forum` int(11) NOT NULL,
  `diskusi` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `diskusi`
--

INSERT INTO `diskusi` (`id_diskusi`, `id_forum`, `diskusi`) VALUES
(1, 1, '<p>\r\n	koperasi adalaj hsjjask</p>\r\n'),
(2, 2, '<p>\r\n	Pengumuman</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `id_forum` int(11) NOT NULL,
  `kelas` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `id_guru` varchar(5) NOT NULL,
  `id_mata_pelajaran` int(5) NOT NULL,
  `tanggal_dibuat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` (`id_forum`, `kelas`, `judul`, `id_guru`, `id_mata_pelajaran`, `tanggal_dibuat`, `status`) VALUES
(1, 4, 'Koperasi', '01', 1, '2016-04-06 23:08:23', 1),
(2, 5, 'Pengumuman', '01', 1, '2016-04-11 22:18:00', 1),
(3, 0, 'Latihan Murid', '', 1, '2016-07-18 06:46:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(20) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `keterangan`, `foto`) VALUES
(4, 'Setiap guru mendampingi beberapa siswa', '03dc3-img_7085.jpg'),
(5, 'Sistem belajar seperti private', '70ce9-img_7084.jpg'),
(6, 'Satu kelas didampingi lebih dari 3 guru', 'db0af-img_7086.jpg'),
(7, 'Ruangan Belajar - 1', 'afdcf-img_6067.jpg'),
(8, 'Ruangan Belajar - 2', 'e12cc-img_6068.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `TTL` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nama`, `TTL`, `alamat`, `password`, `tanggal_masuk`, `status`) VALUES
('', '', '0000-00-00', '', '', '0000-00-00', 0),
('01', 'Hani Nurliyani', '1970-01-01', 'Jl. Kp. Kelapa Gg. Masjid Al-Inayah No 8a rt 04/11 cikokol - tangerang 15117', 'hanigendut', '2014-06-01', 1),
('02', 'Nita Purnamasari A', '1970-01-01', 'Jl. Peta selatan jakarta barat', 'nitapu', '2015-08-01', 1),
('03', 'Mia', '0000-00-00', 'jurumudi', 'mia', '2016-02-27', 1),
('04', 'Joshua', '0000-00-00', 'Citra pos 8', 'josh', '2013-02-17', 0),
('05', 'Sulaiman', '0000-00-00', 'Daan Mogot', 'kaksul', '2006-02-01', 1),
('06', 'Ruli', '0000-00-00', 'Poris', 'missuli', '2006-03-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id_home` int(5) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isi` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id_home`, `judul`, `gambar`, `tanggal`, `isi`) VALUES
(5, 'Pelajar Indonesia Raih Emas dalam Kompetisi Ilmiah', '4768b-pelajar-indonesia-raih-emas-dalam-kompetisi-ilmiah-di-tiongkok.jpg', '2016-07-28 18:20:19', '<h1 class="name post-title entry-title" itemprop="itemReviewed" itemscope="" itemtype="http://schema.org/Thing" style="padding: 0px; margin: 0px 0px 10px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; font-weight: normal; font-family: Oswald; font-size: 28px;">\r\n	<span itemprop="name" style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">Pelajar Indonesia Raih Emas dalam Kompetisi Ilmiah di Tiongkok</span></h1>\r\n<p class="post-meta" style="padding: 0px 0px 5px; margin: 7px 0px 10px; outline: none; list-style: none; border-width: 0px 0px 1px; border-style: none none solid; border-bottom-color: rgb(242, 242, 242); box-sizing: border-box; color: rgb(136, 136, 136); font-size: 11.05px;">\r\n	<span class="tie-date" style="padding: 0px; margin: 0px 15px 0px 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; display: inline-block;">25 Juli 2016</span> <span class="post-comments" style="padding: 0px; margin: 0px 15px 0px 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; display: inline-block;"><a href="http://edupost.id/berita-pendidikan/pelajar-indonesia-raih-emas-dalam-kompetisi-ilmiah-di-tiongkok/#respond" style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(136, 136, 136); text-decoration: none; font-weight: bold; transition: all 0.2s ease-in-out;">Leave a comment</a></span>&nbsp;<span class="post-views" style="padding: 0px; margin: 0px 15px 0px 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; display: inline-block;">38 Views</span></p>\r\n<div class="clear" style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; clear: both;">\r\n	&nbsp;</div>\r\n<div class="entry" style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; word-wrap: break-word; line-height: 22px; font-family: Arial, Helvetica, sans-serif; font-size: 16px;">\r\n	<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">\r\n		Edupost.id &ndash; Lima pelajar Indonesia berhasil meraih medali emas dan berbagai penghargaan di ajang&nbsp;<em style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">International Exibition for Young Inventors</em>&nbsp;(IEYI) 2016. Kompetisi yang digelar di Harbin, Tiongkok&nbsp;pada 16 &ndash; 19 Juli lalu ini memperlombakan enam kategori yaitu&nbsp;<em style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">disaster management, education and recreation, foods and agriculture, green technology, safety and health</em>, serta&nbsp;<em style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">technology for special needs.</em>.</p>\r\n	<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">\r\n		Medali emas diberikan untuk karya inovasi berjudul D-box CC (<em style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">Detector Box for CO and CO<sub style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">2</sub></em>) untuk kategori&nbsp;<em style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">safety and health</em>. Invensi tersebut merupakan karya Aan Aria Nanda dan Feriawan Tan dari SMA Negeri 1 Tarakan, Kalimantan Utara yang mampu mendeteksi kadar kandungan gas CO dan CO<sub style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">2</sub>&nbsp;yang berbahaya bagi manusia.</p>\r\n	<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">\r\n		Sedangkan, medali perak berhasil diraih invensi berjudul<em style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">&nbsp;&ldquo;Smart Trash Bin</em>&rdquo; dalam kategori&nbsp;<em style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">green technology&nbsp;</em>yang merupakan karya Ryan Timothy Abisha dari Sampoerna Academy Jakarta. Alat ini dapat memberikan petunjuk jenis sampah yang akan dibuang. Selain meraih medali perak, penemuan tersebut berhasil memperoleh&nbsp;<em style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">Special Award from Japan</em>&nbsp;dan&nbsp;<em style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">Special Award from Macau.</em></p>\r\n	<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">\r\n		Selain itu,&nbsp;<em style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">Special Award from Singapore</em>&nbsp;dan&nbsp;<em style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">Special Award from Thailand</em>&nbsp;berhasil diraih invensi &ldquo;<em style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">Flood Mitigation System&rdquo;</em>&nbsp;atau Sistem Mitigasi Banjir untuk kategori<em style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">disaster management</em>. Alat ini merupakan invensi Asep Muhamady Anwar Salim bersama Muchammad Alfarisi dari SMK Negeri 2 Cimahi, Jawa Barat. Penemuan tersebut merupakan sistem informasi peringatan dini bencana banjir yang disampaikan melalui pesan singkat.</p>\r\n	<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">\r\n		IEYI merupakan kompetisi ilmiah remaja internasional yang diadakan di negara-negara anggota secara bergantian. Ajang ini bertujuan untuk mendorong inovasi dan penemuan serta meningkatkan konsep orisinalitas untuk pengembangan invensi dan kegunaan ide asli. &nbsp;(LIPI/IK-SS)</p>\r\n</div>\r\n<div class="share-post" style="padding: 8px 0px 6px 10px; margin: 10px -20px -20px; outline: none; list-style: none; border-width: 1px 0px 0px; border-style: solid none none; border-top-color: rgb(234, 234, 234); box-sizing: border-box; clear: both; background: rgb(247, 247, 247);">\r\n	&nbsp;</div>\r\n<p>\r\n	sumber :&nbsp;http://edupost.id/berita-pendidikan/pelajar-indonesia-raih-emas-dalam-kompetisi-ilmiah-di-tiongkok/</p>\r\n'),
(6, 'Belajar Mengenal Bilangan dengan Permainan Gundu T', '50101-belajar-mengenal-bilangan-dengan-permainan-gundu-tuyul.jpg', '2016-07-28 18:22:06', '<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Edupost.id &ndash; Belajar mengenal bilangan dapat menjadi menyenangkan jika dengan permainan gundu tuyul.&nbsp;Seperti yang dijelaskan Doni Hardiyanto&nbsp;dalam buku Ruang Belajar, metode ini dapat digunakan untuk melatih kreativitas siswa di kelas.</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Alat dan bahan :</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	1. Jika dilakukan di luar kelas</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Lapangan ukuran 10 m x 10 m (minimal). Diutamakan&nbsp;lapangan tanah.</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Kayu</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Gundu (batu, potongan sandal, penghapus)</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Buku</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Uang&nbsp;mainan</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	2. Jika dimainkan di dalam kelas</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Kapur berwarna</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Gundu (batu, potongan sandal, penghapus)</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Buku</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Uang mainan</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Cara bermain :</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Pertama, guru menjelaskan materi mengenai pengenalan konsep bilangan dan menekankan jumlah angka pada nilai yang tertera, kemudian pendidik&nbsp;membimbing siswa&nbsp;agar menyebutkan setiap angka secara&nbsp;benar sesuai tempatnya satuan, puluhan, ribuan, puluh ribuan sampai jutaan.</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Kedua, guru meminta peserta didik&nbsp;membuat kotak besar berjumlah 6 atau 8 kotak, disesuaikan dengan luas ruangan atau lapangan sepertigambar&nbsp;di bawah ini (kotak bisa divariasikan).&nbsp;Berikan kesempatan siswa&nbsp;berkreasi mengambar bentuk tuyul pada kotak tuyul.&nbsp;Setelah selesai, pendidik&nbsp;menuliskan nominal angka pada kotak harta karun (nominal angka bisa divariasikan)</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Ketiga, guru membagi siswa menjadi duaperan&nbsp;yaitu&nbsp;Tuyul,&nbsp;mengumpulkan uang jika ada gundu pemain yang masuk ke kotak dan menyebutkan jika semua pemain selesai bermain satu putaran. Pelempar Gundu, siswa yang akan melemparkan gundu untuk mengumpulkan uang sebanyak-banyaknya.&nbsp;Siswa sebagai pelempar gundu meletakan gundu yang sudah dicarinya untuk dilempar menggunakan satu kaki sampai ke kotak lemparan untuk mengenai kotak harta karun.</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Keempat, siswa melakukan hom pimpa untuk menentukan giliran bermain.&nbsp;Gundu siswa yang masuk ke kotak harta karun akan mendapatkan uang sebesar nominal yang tertera pada kotak, jika masuk ke kotak tuyul juga membayar sebesar nominal yang ada di kotak tuyul.&nbsp;Intruksikan siswa untuk menyebutkan nominal yang di dapatkan dan menulisnya ke dalam tulisan.&nbsp;Bila sudah berjalan dengan baik, guru bisa mengawasi jalanya permainan sembari melihat kondisi catatan keuangan siswa.</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Pendidikan karakter&nbsp;yang bisa disisipkan dalam metode permainan ini adalah kejujuran saat siswa menuliskan angka yang didapatkanya ke dalam buku catatannya, budaya&nbsp;disiplin&nbsp;untuk belajar menunggu giliran bermain dan bertanggung jawab akan konsekuensi ketika gundu berhenti di kotak tuyul.&nbsp;Mengenali angka haruslah bersifat&nbsp;konstruktif&nbsp;dan kontekstual kepada peserta didik. Pembelajaran mengenalkan angka dengan cara yang menyenangkan akan membantu pemahaman siswa dalam menerimanya.</p>\r\n'),
(7, 'Empat Cara Menguasai Kosakata Bahasa Inggris', '08c07-empat-cara-menguasai-kosakata-bahasa-inggris.jpg', '2016-07-28 18:23:01', '<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 18pt;">\r\n	<span style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; font-family: Arial, sans-serif;">Edupost.id &ndash; Belajar kosakata merupakan bagian yang sangat penting dari belajar Bahasa Inggris. Semakin banyak kata yang anda tahu, maka mampu memahami apa yang didengan dan baca. Seperti dlansir Eslfisedu, terdapat empat cara untuk menguasai kosakata Bahasa inggris.</span></p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 18pt;">\r\n	<span style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; font-family: Arial, sans-serif;">Berikut cara yang dapat dipraktekkan di rumah:</span></p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 18pt;">\r\n	<span style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; font-family: Arial, sans-serif;">1. Belajar kata</span></p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 18pt;">\r\n	<span style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; font-family: Arial, sans-serif;">Setiap hari, ketika anda mendengar atau membaca kata baru dalam Bahasa Inggris, maka carilah segera di kamus. Kemudian pelajarilah kosakata yang penting untuk mata pelajaran yang dipelajari. Anda juga dapat mempelajari kosakata yang didengar atau dibaca secara terus-menerus. Belajar kosakata baru wajib sesuai keingainan sendiri dan tinggalkanlah kosakata yang tidak terlalu bermanfaat.</span></p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 18pt;">\r\n	Baca Juga:&nbsp;<a href="http://edupost.id/belajar/cara-mudah-belajar-bahasa-inggris/" style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(34, 34, 34); text-decoration: none; font-weight: bold; transition: all 0.2s ease-in-out;" target="_blank"><span style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(51, 102, 255);">Cara Mudah Belajar Bahasa Inggris</span></a></p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 18pt;">\r\n	<span style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; font-family: Arial, sans-serif;">2. Memilih metode belajar</span></p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 18pt;">\r\n	<span style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; font-family: Arial, sans-serif;">Setelah anda memilih kosakata untuk dipelajari, maka tentukan metode belajarnya. Seperti menulis kosakata dalam buku catatan atau &nbsp;pada kartu kecil, mengucapkan kosakata berkali-kali, menempatkan kosakata dalam kelompok yang berbeda, menyimpan tulisan dalam sebuah file untuk digunakan pada program komputer, membuat asosiasi, meminta seseorang untuk mengetes kemampuan anda, dan menggunakan kosakata dalam percakapan atau penulisan sehari-hari.</span></p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 18pt;">\r\n	<span style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; font-family: Arial, sans-serif;">3. Ikut kuis atau tes</span></p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 18pt;">\r\n	<span style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; font-family: Arial, sans-serif;">Sejumlah kuis atau tes dapat anda ambil di internet atau ketika diberikan guru di sekolah atau tempat les. Biasanya soal ujian berisi tentang menulis definisi kata, menggunakannya dalam contoh kalimat, menerjemahkan ke dalam bahasa lain, serta menuliskannya dalam Bahasa Inggris.</span></p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 18pt;">\r\n	<span style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; font-family: Arial, sans-serif;">4. Belajar kosakata dengan membaca</span></p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 18pt;">\r\n	<span style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; font-family: Arial, sans-serif;">Membaca buku, majalah atau koran baik yang berjenis fiksi atau non fiksi merupakan cara terbaik untuk belajar kosakata Bahasa Inggris yang baru. Tapi, pilihlah bacaan yang mudah dibaca. Teks yang terlalu sulit tidak dapat mengembangkan kosakata anda. (Nisa)</span></p>\r\n'),
(8, 'Hari Pertama Sekolah, Ini Tradisi di Berbagai Nega', 'c9ca4-hari-pertama-sekolah-ini-tradisi-diberbagai-negara.jpg', '2016-07-28 18:24:41', '<p>\r\n	<span style="color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">Edupost.id &ndash; Momen menyambut hari pertama sekolah, khususnya di jenjang taman kanak-kanak dan sekolah dasar, tidak hanya meriah di Indonesia, melainkan juga di negara lain. Seperti halnya di Jepang, Rusia, Selandia Baru, Jerman, dan India. Berikut tradisi hari pertama sekolah di berbagai negara.</span></p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	1. Jepang</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Sekolah di Jepang memulai hari pertamanya di pada 1 April. &nbsp;Tanggal ini ditetapkan karena simbol dari mekarnya bunga sakura. Saat musim semi dimulai, murid baru itu bagaikan bunga sakura, harapan bangsa. Hari pertama sekolah menjadi sebuah perayaan di Jepang. Para kerabat memberi hadiah pada anak yang jadi siswa baru.</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Hadiah utama yaitu tas kotak dan keras yang disebut&nbsp;<em style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">randoseru</em>. Hadiah lainnya yaitu&nbsp;meja belajar baru di dalam rumah. Kemudian sekolah di Jepang, siswa baru dan para orangtua disambut&nbsp;<em style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">nyugakushiki</em>, &nbsp;yaitu seremoni pintu masuk yang ditandai dengan potong pita. Kemudian para siswa dan orangtua dipandu berkeliling sekolah diiringi nyanyian selamat datang dari kakak kelas yang berbaris layaknya pagar ayu/pagar bagus dalam pernikahan Jawa.</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	2. Rusia</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Sekolah dimulai pada 1 September. Hari pertama sekolah disebut sebagai H<em style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">ari Pengetahuan</em>. Merupakan hari yang sangat penting bagi anak yang kali pertama masuk ke sekolah. Sekolah mengadakan upacara penyambutan khusus untuk para murid baru beserta keluarganya.</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Anak akan memakai baju terbagus miliknya dan membawa bunga untuk guru mereka. Di hari pertama ini, anak mengikuti tradisi lonceng pertama. Salah satu anak di kelas satu SD akan naik di pundak kakak kelasnya. Kemudian mereka akan memutari halaman sekolah sambil membunyikan lonceng sekolah. Semua orangtua yang datang akan bertepuk tangan memberikan semangat.</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	3. Selandia Baru</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Hari pertama sekolah di Selandia Baru dimulai pada bulan Februari. Di Selandia baru ada suku asli yang bernama Maori, oleh karena itu upacara penyambutan anak sekolah menggunakan adat suku Maori, yang disebut dengan&nbsp;<em style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">Powhiri</em>.</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Pada acara ini ada guru yang meneriakkan panggilan semangat selamat datang. Setelah itu sekelompok kakak kelas akan menarikan tarian selamat datang dengan penuh semangat. Tarian ini diikuti dengan hentakan kaki, tepuk tangan, dan teriakan penuh semangat. Semua yang menyaksikan menjadi terbawa semangat baru pada tahun ajaran baru.</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	4. Jerman</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Hari pertama sekolah di Jerman bernama&nbsp;<em style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">Einschulung</em>. Tradisi ini hanya dilaksanakan oleh anak kelas satu SD. Ketika hari pertama datang ke sekolah, mereka akan menerima tas yang berbentuk kerucut. Tas ini namanya&nbsp;<em style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">schultute</em>, yang berarti tas sekolah. Di dalamnya terdapat permen, hadiah, dan perlengkapan sekolah. Setelah isi di dalam tas kerucut itu diambil anak, kemudian tas yang sudah kosong tersebut dikumpulkan kembali ke sekolah. Tujuannya untuk digantung di langit kelas sehingga mengingatkan murid bahwa sekolah itu menyenangkan.</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	5. India</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Upacara penyambutan anak baru di India disebut dengan&nbsp;<em style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">praveshanolsavam</em>. Berbagai cara yang dilakukan sekolah dalam menyambut murid barunya. Ada yang menyelenggarakan pawai sekolah, semua anak baru akan berkeliling lingkungan sekolah dengan iringan arakan musik dan balon.</p>\r\n<p style="padding: 0px; margin: 0px 0px 20px; outline: none; list-style: none; border: 0px none; box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 22px;">\r\n	Ada juga yang menyelenggarakan&nbsp;<em style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; box-sizing: border-box;">chendamelan</em>, yaitu pertunjukan musik drum yang dilakukan sekelompak kakak kelas laki-laki untuk menyambut adik kelas mereka. Semua area sekolah dihias dengan indah dan murid baru akan mendapatkan hadiah permen. (Kemdikbud/Nisa)</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id_info` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `info` text NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id_info`, `judul`, `info`, `tanggal`) VALUES
(2, 'a', '<p>PENGUMUMAN <br>\nDiberitahukan untuk siswa kelas 6 SD akan diadakan pelajaran tambahan yang akan diadakan pada<br>\nHari         : Sabtu<br>\nTanggal  : 09 - April - 2016<br>\nJam         : 09.00 - selesai<br>\nTempat   : Ruko Ext 2 Citra 2<br>\n</p>', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `infoweb`
--

CREATE TABLE `infoweb` (
  `id_infoweb` int(5) NOT NULL,
  `nama_info` varchar(50) NOT NULL,
  `deskripsi_info` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `infoweb`
--

INSERT INTO `infoweb` (`id_infoweb`, `nama_info`, `deskripsi_info`) VALUES
(1, 'History', '<p>\r\n	Di tengah-tengah kebutuhan akan belajar tambahan dan semakin tajam minat dalam industri bimbingan belajar, pada tahun 2003 &nbsp;Catherine Course didirikan di Jakarta Barat. Berkat kegigihan dan konsistensinya kini&nbsp;Catherine Course sudah berkembang pesat dan memiliki 2 cabang. Latar belakang berdirinya Catherine Course melihat kurangnya lembaga bimbingan belajar di daerah tempat dimana pendiri Catherine Course tinggal. Berkembang pesatnya Catherine Course didukung dengan sistem yang seperti private.</p>\r\n<p>\r\n	Pada saat awal berdirinya Catherine Course hanya khusus untuk tingkat SD saja, tetapi semakin besar peminat maka sampai saat ini dibuka kelas dari tingkat Kindegarten hingga Sekolah Menengah Atas. Catherine Course sudah meluluskan lebih dari 200 lebih siswa sejak awal berdiri dan masuk ke sekolah favourite di daerah Jakarta.&nbsp;</p>\r\n'),
(2, 'Vision Mission', '<p style="margin-left:1.0cm;">\r\n	<strong>Visi :</strong></p>\r\n<p style="margin-left:1.0cm;">\r\n	Menjadikan bimbingan belajar yang unggul, mengajarkan cara belajar sistem JUARA serta mengedepankan pendidikan berkarakter bermental juara.</p>\r\n<p style="margin-left:1.0cm;">\r\n	<strong>Misi:</strong></p>\r\n<p style="margin-left:53.5pt;">\r\n	1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Menciptakan metode belajar yang efektif dan terencana</p>\r\n<p style="margin-left:53.5pt;">\r\n	2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jelas dan tuntas dalam penyampaian materi</p>\r\n<p style="margin-left:53.5pt;">\r\n	3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Untuk setiap siswa digunakan metode spesifik</p>\r\n<p style="margin-left:53.5pt;">\r\n	4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Adanya motivasi antara pengajar dan siswa</p>\r\n<p style="margin-left:53.5pt;">\r\n	5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rapi berjalan secara sistematis dan mengajarkan sikap belajar mandiri.</p>\r\n<p style="margin-left:53.5pt;">\r\n	6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Adanya latihan untuk mengembangkan pengetahuan siswa</p>\r\n'),
(3, 'Consept', '<p>\r\n	<span style="font-size:22px;"><strong>Studies Mapping</strong></span></p>\r\n<p>\r\n	<span style="font-size:16px;">Konsep yang diterapkan Catherine Course dalam proses belajar mengajar menggunakan konsep studies mapping. Studies mapping merupakan konsep dimana otak kanan dan otak kiri dioptimalisasikan. Otak manusia memiliki kapasitas yang sama yang membedakan bagaimana menggunakan kapasitas yang sudah disediakan oleh Tuhan YME.&nbsp;</span></p>\r\n<p>\r\n	<span style="font-size:16px;">Pada teori mengatakan penyimpanan otak kanan jauh lebih lama dibandingkan otak kiri karena otak kanan bersifat long term memory. Dengan memperhatikan teori di atas, maka pembelajaran akan lebih menyenangkan dan lebih menarik jika dilibatkan otak kanan. Itulah alasan di Ganesha Operation, setiap pembelajaran menggunakan metode yang melibatkan otak kanan dengan tetap mengikutkan otak kiri karena dalam pembelajaran logika berpikir siswa tetap harus diasah.</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style="font-size:22px;"><b>Repeat your mind</b></span></p>\r\n<p>\r\n	<span style="font-size:16px;">Konsep selanjutnya adalah menggunakan konsep pengulangan, dimana siswa akan mengulangi apa yang dia pelajari di sekolah dan akan mempelajari untuk keesokan harinya. Sehingga jika setiap hari diulang dan diberikan latihan soal siswa akan mengasah kemampuan otak kanan dan kiri nya dalam menyimpan dan mengingat materi yang sudah diberikan.</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n'),
(4, 'Kindegarten', '<p>\r\n	<span style="font-size: 22px;"><span lucida="" sans="" style="font-family: "><strong>TARGET</strong></span></span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<ul>\r\n	<li>\r\n		<p>\r\n			<strong><span style="font-size:14px;"><span style="font-family:lucida sans unicode,lucida grande,sans-serif;">Lancar CALISTUNG</span></span></strong></p>\r\n	</li>\r\n	<li>\r\n		<p>\r\n			<strong><span style="font-size:14px;"><span style="font-family:lucida sans unicode,lucida grande,sans-serif;">Mengenal warna</span></span></strong></p>\r\n	</li>\r\n	<li>\r\n		<p>\r\n			<strong><span style="font-size:14px;"><span style="font-family:lucida sans unicode,lucida grande,sans-serif;">Menganal hewan</span></span></strong></p>\r\n	</li>\r\n	<li>\r\n		<p>\r\n			<strong><span style="font-size:14px;"><span style="font-family:lucida sans unicode,lucida grande,sans-serif;">Mengenal tumbuhan</span></span></strong></p>\r\n	</li>\r\n	<li>\r\n		<p>\r\n			<strong><span style="font-size:14px;"><span style="font-family:lucida sans unicode,lucida grande,sans-serif;">Mewarnai</span></span></strong></p>\r\n	</li>\r\n	<li>\r\n		<h4>\r\n			<span style="font-size:14px;"><span style="font-family:lucida sans unicode,lucida grande,sans-serif;">Melatih motorik</span></span></h4>\r\n	</li>\r\n</ul>\r\n<p>\r\n	&nbsp;</p>\r\n<article class="post-1226 page type-page status-publish hentry" id="post-1226" style="margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 20.8px; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);">\r\n	<div class="entry" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n		<h4 style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: normal; font-stretch: inherit; font-size: 16px; line-height: 1.6; vertical-align: baseline; color: rgb(102, 102, 102);">\r\n			<span style="color: rgb(0, 0, 0);"><strong><span style="font-size: 22px;">Waktu</span></strong></span></h4>\r\n		<p>\r\n			&nbsp;</p>\r\n		<p>\r\n			&nbsp;</p>\r\n		<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n			<span style="font-family:lucida sans unicode,lucida grande,sans-serif;"><span style="font-size:14px;"><strong>Belajar 2 hari dalam sepekan @ 1jam</strong></span></span></p>\r\n		<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n			&nbsp;</p>\r\n		<h4 style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: normal; font-stretch: inherit; font-size: 16px; line-height: 1.6; vertical-align: baseline; color: rgb(102, 102, 102);">\r\n			&nbsp;</h4>\r\n	</div>\r\n</article>\r\n<p>\r\n	&nbsp;</p>\r\n'),
(5, 'Elementary School', '<p>\r\n	<span style="font-size:22px;"><span style="font-family:lucida sans unicode,lucida grande,sans-serif;"><strong>TARGET</strong></span></span></p>\r\n<ul>\r\n	<li>\r\n		Persiapan Ulangan Harian</li>\r\n	<li>\r\n		Persiapan Ulangan Tengah Semester</li>\r\n	<li>\r\n		Persiapan Ulangan Akhir Semester</li>\r\n	<li>\r\n		Persiapan Ujian Nasional SD</li>\r\n</ul>\r\n<article class="post-1226 page type-page status-publish hentry" id="post-1226" style="margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 20.8px; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);">\r\n	<div class="entry" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n		<h4 style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: normal; font-stretch: inherit; font-size: 16px; line-height: 1.6; vertical-align: baseline; color: rgb(102, 102, 102);">\r\n			<span style="color:#000000;"><strong><span style="font-size:22px;">Waktu</span></strong></span></h4>\r\n		<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n			Belajar 3 hari dalam sepekan @ 2jam - selesai</p>\r\n		<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n			Belajar 5 hari dalam sepekan @2jam - selesai</p>\r\n		<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n			&nbsp;</p>\r\n		<h4 style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: normal; font-stretch: inherit; font-size: 16px; line-height: 1.6; vertical-align: baseline; color: rgb(102, 102, 102);">\r\n			<strong><span style="color:#000000;"><span style="font-size:22px;">Bidang Studi</span></span></strong></h4>\r\n		<ol>\r\n			<li style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n				Matematika</li>\r\n			<li style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n				Mathematic</li>\r\n			<li style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n				Ilmu Pengetahuan Alam</li>\r\n			<li style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n				Science</li>\r\n			<li style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n				Ilmu Pengetahuan Sosial</li>\r\n			<li style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n				Social Studies</li>\r\n			<li style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n				Bahasa Indonesia</li>\r\n			<li style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n				Bahasa Inggris</li>\r\n			<li style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n				PLBJ (menyesuaikan)</li>\r\n			<li style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n				Pelajaran jam tambahan</li>\r\n		</ol>\r\n	</div>\r\n</article>\r\n<p>\r\n	&nbsp;</p>\r\n'),
(6, 'Junior HS', '<h4 style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-weight: normal; font-stretch: inherit; font-size: 16px; line-height: 1.6; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);">\r\n	<strong><span style="font-size:22px;">Target</span></strong></h4>\r\n<ul style="margin: 0px 0px 20px 30px; padding-right: 0px; padding-left: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 20.8px; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; list-style: square outside; color: rgb(68, 68, 68);">\r\n	<li>\r\n		<h4 style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-weight: normal; font-stretch: inherit; font-size: 16px; line-height: 1.6; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);">\r\n			<span style="color: rgb(34, 34, 34); font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit;">Persiapan Ulangan Harian&nbsp;</span></h4>\r\n	</li>\r\n	<li>\r\n		<h4 style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-weight: normal; font-stretch: inherit; font-size: 16px; line-height: 1.6; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);">\r\n			<span style="color: rgb(34, 34, 34); font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit;">Persiapan Ujian Tengah semester</span></h4>\r\n	</li>\r\n	<li>\r\n		<h4 style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-weight: normal; font-stretch: inherit; font-size: 16px; line-height: 1.6; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);">\r\n			<span style="color: rgb(34, 34, 34); font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit;">Persiapan Ujian Akhir Semester</span></h4>\r\n	</li>\r\n	<li>\r\n		<h4 style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-weight: normal; font-stretch: inherit; font-size: 16px; line-height: 1.6; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);">\r\n			<span style="color: rgb(34, 34, 34); font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit;">Persiapan Intensif Ujian Nasional SMP</span></h4>\r\n	</li>\r\n	<li>\r\n		<h4 style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-weight: normal; font-stretch: inherit; font-size: 16px; line-height: 1.6; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);">\r\n			<span style="color: rgb(34, 34, 34); font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; line-height: inherit;">Silabus sesuai dengan KTPS (Kurikulum Tingkat Satuan Pendidikan)</span></h4>\r\n	</li>\r\n</ul>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 20.8px; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);">\r\n	&nbsp;</p>\r\n<h4 style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-weight: normal; font-stretch: inherit; font-size: 16px; line-height: 1.6; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);">\r\n	<strong><span style="font-size:22px;">Waktu</span></strong></h4>\r\n<h1 style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 20.8px; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);">\r\n	<span style="font-size:16px;">Belajar 3 hari per pekan @ 3 jam</span></h1>\r\n<h1 style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 20.8px; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);">\r\n	<span style="font-size:16px;"><span style="line-height: 20.8px;">Belajar 3 hari per pekan @ 3 jam</span></span></h1>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 20.8px; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);">\r\n	&nbsp;</p>\r\n<h4 style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-weight: normal; font-stretch: inherit; font-size: 16px; line-height: 1.6; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);">\r\n	<strong><span style="font-size:22px;">Bidang Studi</span></strong></h4>\r\n<ol style="margin: 0px 0px 20px 30px; padding-right: 0px; padding-left: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 20.8px; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);">\r\n	<li style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n		Matematika</li>\r\n	<li style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n		Mathematic</li>\r\n	<li style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n		Ilmu Pengetahuan Alam</li>\r\n	<li style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n		Science</li>\r\n	<li style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n		Ilmu Pengetahuan Sosial</li>\r\n	<li style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n		Social Studies</li>\r\n	<li style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n		Bahasa Indonesia</li>\r\n	<li style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n		Bahasa Inggris</li>\r\n	<li style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n		PLBJ (menyesuaikan)</li>\r\n	<li style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n		Pelajaran jam tambahan</li>\r\n</ol>\r\n'),
(7, 'Senior HS', '<h4 style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-weight: normal; font-stretch: inherit; font-size: 16px; line-height: 1.6; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);">\r\n	<span style="font-family:lucida sans unicode,lucida grande,sans-serif;"><strong><span style="font-size:22px;">Target</span></strong></span></h4>\r\n<ul style="margin: 0px 0px 20px 30px; padding-right: 0px; padding-left: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 20.8px; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; list-style: square outside; color: rgb(68, 68, 68);">\r\n	<li style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n		<h3>\r\n			Persiapan Ulangan Harian</h3>\r\n	</li>\r\n	<li style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n		<h3>\r\n			Persiapan Ujian Tengah semester</h3>\r\n	</li>\r\n	<li style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n		<h3>\r\n			Persiapan Ujian Akhir Semester</h3>\r\n	</li>\r\n	<li style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n		<h3>\r\n			Persiapan penjurusan di SMA</h3>\r\n	</li>\r\n	<li style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n		<h3>\r\n			Silabus sesuai dengan KTPS (Kurikulum Tingkat Satuan Pendidikan)</h3>\r\n	</li>\r\n</ul>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 20.8px; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);">\r\n	&nbsp;</p>\r\n<h4 style="margin: 0px 0px 10px; padding: 0px; border: 0px; font-weight: normal; font-stretch: inherit; font-size: 16px; line-height: 1.6; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);">\r\n	<strong><span style="font-size:22px;">Waktu</span></strong></h4>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 20.8px; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);">\r\n	<span style="font-size:16px;">Belajar 3 hari per pekan @ 3 jam</span></p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 20.8px; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);">\r\n	<span style="font-size:16px;"><span style="line-height: 20.8px;">Belajar 5 hari per pekan @ 3 jam</span></span></p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 20.8px; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);">\r\n	&nbsp;</p>\r\n<h4>\r\n	<span style="font-size:22px;">Bidang Studi</span></h4>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 20.8px; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);">\r\n	<strong><span style="font-size:16px;">10-11 SMA IPA : Matematika, Fisika, Kimia, Biologi, PLBJ.</span></strong></p>\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 13px; line-height: 20.8px; font-family: arial, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(68, 68, 68);">\r\n	<strong><span style="font-size:16px;">11 SMA IPS :Matematika, Geografi, Sejarah, Ekonomi, Sosiologi, Bahasa Indonesia, Bahasa Inggris,&nbsp;</span></strong><strong style="line-height: 20.8px;"><span style="font-size: 16px;">PLBJ.</span></strong></p>\r\n'),
(8, 'Contact Us', '<p style="text-align: justify;">\r\n	<span style="font-size:14px;"><span style="font-family:verdana,geneva,sans-serif;"><strong>Alamat </strong>&nbsp;: Ruko Golden Passage Citra 2 EXT</span></span></p>\r\n<p style="text-align: justify;">\r\n	<span style="font-size:14px;"><span style="font-family:verdana,geneva,sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Blok BE 1B &nbsp;No 17 - 18 &nbsp;(Sebelah Bank Mandiri)</span></span></p>\r\n<p style="text-align: justify;">\r\n	<span style="font-size:14px;"><span style="font-family:verdana,geneva,sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Citra Garden City , Jakarta - Barat 11830</span></span></p>\r\n<p style="text-align: justify;">\r\n	<span style="font-size:14px;"><span style="font-family:verdana,geneva,sans-serif;"><strong>E-mail</strong>&nbsp; : catherinecourse@gmail.com</span></span></p>\r\n<p style="text-align: justify;">\r\n	<span style="font-size:14px;"><span style="font-family:verdana,geneva,sans-serif;"><strong>Telp &nbsp;</strong> &nbsp; : 0852-1628-2036</span></span></p>\r\n<p style="text-align: justify;">\r\n	<span style="font-size:14px;"><span style="font-family:verdana,geneva,sans-serif;"><strong>Time </strong>&nbsp; &nbsp;: 13. 00 - 21.00</span></span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `id_jawaban` int(11) NOT NULL,
  `isi_jawaban` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`id_jawaban`, `isi_jawaban`) VALUES
(9, 'Bibir'),
(10, 'Lidah'),
(11, 'Gigi'),
(12, 'Kaki'),
(13, 'Badan'),
(14, 'Kepala'),
(15, 'Sambil duduk '),
(16, 'Sambil jongkok '),
(17, 'Sambil berdiri'),
(18, 'Telinga'),
(19, 'Mata'),
(20, 'Badan'),
(21, 'Kuping'),
(22, 'Bergizi'),
(23, 'Banyak'),
(24, 'Kenyang'),
(25, 'Laper'),
(26, 'Tidur'),
(27, 'Berolahraga'),
(28, 'Nonton Tv'),
(29, 'Main game'),
(31, 'Istirahat'),
(32, 'Main'),
(33, 'Mandi'),
(34, 'Udaranya sejuk'),
(35, 'Sampah berserakan'),
(36, 'Keranjang sampah'),
(37, 'Banjir'),
(38, 'sungai'),
(39, 'selokan'),
(40, 'dijalanan'),
(41, 'Keranjang sampah'),
(42, 'Sepeda'),
(43, 'Becak'),
(44, 'Mobil'),
(45, 'Kuda'),
(46, 'Televisi'),
(47, 'Semangka'),
(48, 'Pensil'),
(49, 'Buku'),
(50, 'Pensil dan buku'),
(51, 'Gelas dan priring'),
(53, 'Gelas dan mangkuk'),
(54, 'Asam'),
(55, 'Manis'),
(56, 'Pedas'),
(57, 'Pahit'),
(58, 'Pare'),
(59, 'Strawberry'),
(60, 'Durian'),
(61, 'Jeruk');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_ujian`
--

CREATE TABLE `jenis_ujian` (
  `id_jenis_ujian` tinyint(4) NOT NULL,
  `nama_jenis_ujian` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenis_ujian`
--

INSERT INTO `jenis_ujian` (`id_jenis_ujian`, `nama_jenis_ujian`) VALUES
(1, 'Worksheet'),
(2, 'Try Out');

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `id_mata_pelajaran` int(5) NOT NULL,
  `nama_mata_pelajaran` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`id_mata_pelajaran`, `nama_mata_pelajaran`) VALUES
(2, 'Matematika'),
(3, 'Mathematic'),
(4, 'IPA (Ilmu Pengetahuan Alam)'),
(5, 'Science'),
(6, 'Bahasa Inggris'),
(7, 'IPS'),
(8, 'SS(Social Study)'),
(9, 'PLBJ'),
(10, 'PKn'),
(11, 'Bahasa Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id_materi` int(11) NOT NULL,
  `bab` enum('Bab 1','Bab 2','Bab 3','Bab 4','Bab 5','Bab 6','Bab 7','Bab 8','Bab 9','Bab 10') NOT NULL,
  `id_mata_pelajaran` int(5) NOT NULL,
  `file` varchar(255) NOT NULL,
  `tingkat` enum('Elementary School','Junior High School','Senior High School') NOT NULL,
  `kelas` int(2) NOT NULL,
  `sinopsis` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id_materi`, `bab`, `id_mata_pelajaran`, `file`, `tingkat`, `kelas`, `sinopsis`) VALUES
(4, 'Bab 1', 4, '4775a-ipa-bab-1-tubuhku.doc', 'Elementary School', 1, '<p>\r\n	&nbsp;<img alt="" src="D:\\skripsi" />BAB 1 - Tubuhku</p>\r\n<p>\r\n	Menjelaskan anggota tubuh pada manusia dan fungsi dari setiap anggota tubuh.Kebiasaan buruk untuk tubuh.</p>\r\n'),
(5, 'Bab 2', 4, '3ab72-ipa-bab-2-tubuh-sehat.doc', 'Elementary School', 1, '<p>\r\n	BAB 2 - Tubuh Sehat dan Kuat</p>\r\n<p>\r\n	Pada bab ini mempelajari tentang :</p>\r\n<ul style="border: 0px; margin: 0px 0px 5px 3em; outline: 0px; padding-right: 0px; padding-left: 0px; list-style: square; color: rgb(33, 33, 33); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; text-align: justify;">\r\n	<li>\r\n		<span style="text-align: justify;">Memenuhi Kebutuhan Makan</span></li>\r\n	<li style="border: 0px; margin: 0px; outline: 0px; padding: 0px; text-align: justify;">\r\n		Memenuhi Kebutuhan Air</li>\r\n	<li style="border: 0px; margin: 0px; outline: 0px; padding: 0px; text-align: justify;">\r\n		Memenuhi Kebutuhan Pakaian</li>\r\n	<li style="border: 0px; margin: 0px; outline: 0px; padding: 0px; text-align: justify;">\r\n		Memenuhi Kebutuhan Udara</li>\r\n	<li style="border: 0px; margin: 0px; outline: 0px; padding: 0px; text-align: justify;">\r\n		Memenuhi Kebutuhan Lingkungan Sehat</li>\r\n	<li style="border: 0px; margin: 0px; outline: 0px; padding: 0px; text-align: justify;">\r\n		Membiasakan Hidup Sehat</li>\r\n</ul>\r\n'),
(6, 'Bab 3', 4, '36e6d-ipa-bab-3-lingkungan.docx', 'Elementary School', 1, '<p>\r\n	BAB 3 - Lingkungan</p>\r\n<p>\r\n	Pada bab 3 mempelajari tentang :</p>\r\n<ul style="border: 0px; margin: 0px 0px 5px 3em; outline: 0px; padding-right: 0px; padding-left: 0px; list-style: square; color: rgb(33, 33, 33); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; text-align: justify;">\r\n	<li style="border: 0px; margin: 0px; outline: 0px; padding: 0px; text-align: justify;">\r\n		Menjaga Lingkungan</li>\r\n	<li style="border: 0px; margin: 0px; outline: 0px; padding: 0px; text-align: justify;">\r\n		Membedakan Lingkungan Sehat Dan Tidak Sehat</li>\r\n	<li style="border: 0px; margin: 0px; outline: 0px; padding: 0px; text-align: justify;">\r\n		Cinta Lingkungan Dan Sesama Ciptaan Tuhan</li>\r\n</ul>\r\n'),
(7, 'Bab 4', 4, '1d1a4-ipa-bab-4-benda.docx', 'Elementary School', 1, '<p>\r\n	BAB 4 - Benda - benda sekitarku</p>\r\n<p>\r\n	Mempelajari tentang</p>\r\n<ul style="border: 0px; margin: 0px 0px 5px 3em; outline: 0px; padding-right: 0px; padding-left: 0px; list-style: square; color: rgb(33, 33, 33); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; text-align: justify;">\r\n	<li style="border: 0px; margin: 0px; outline: 0px; padding: 0px; text-align: justify;">\r\n		Mengenal Ciri Ciri Benda</li>\r\n	<li style="border: 0px; margin: 0px; outline: 0px; padding: 0px; text-align: justify;">\r\n		Perubahan Bentuk Benda</li>\r\n	<li style="border: 0px; margin: 0px; outline: 0px; padding: 0px; text-align: justify;">\r\n		Kegunaan Berbagai Macam Benda</li>\r\n</ul>\r\n'),
(8, 'Bab 5', 4, 'ecde7-ipa-bab-5-gerak-benda.doc', '', 1, '<h3 style="border: 0px; margin: 5px 0px; outline: 0px; padding: 0px; font-size: 13px; color: rgb(33, 33, 33); font-family: Arial, Helvetica, sans-serif; line-height: 20px; text-align: justify;">\r\n	Bab 5 Berbagai Energi Dan Manfaatnya</h3>\r\n<p>\r\n	Pada bab 5 ini mempelajari tentang energi dan manfaat dari masing - masing energi</p>\r\n<ul style="border: 0px; margin: 0px 0px 5px 3em; outline: 0px; padding-right: 0px; padding-left: 0px; list-style: square; color: rgb(33, 33, 33); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px; text-align: justify;">\r\n	<li style="border: 0px; margin: 0px; outline: 0px; padding: 0px; text-align: justify;">\r\n		Hubungan Energi Dan Gerak Benda</li>\r\n	<li style="border: 0px; margin: 0px; outline: 0px; padding: 0px; text-align: justify;">\r\n		Berbagai Gerak Benda Dan Penyebabnya</li>\r\n	<li style="border: 0px; margin: 0px; outline: 0px; padding: 0px; text-align: justify;">\r\n		Sumber Energi Dan Manfaatnya</li>\r\n</ul>\r\n'),
(9, 'Bab 1', 4, 'a3a15-bab-1-lingkungan-rumah.doc', 'Elementary School', 2, '<p>\r\n	<span style="font-size:20px;"><span style="font-family:lucida sans unicode,lucida grande,sans-serif;">Tematik 2A - Lingkungan Rumah</span></span></p>\r\n<p>\r\n	<span style="font-size:20px;"><span style="font-family:lucida sans unicode,lucida grande,sans-serif;"><span style="font-size:14px;">menjelaskan macam - macam benda, ciri - ciri benda, perubahan wujud benda</span></span></span></p>\r\n'),
(10, 'Bab 2', 4, '3855b-bab-2-lingkungan-sekolah.doc', 'Elementary School', 2, '<p>\r\n	Pada bab ini menjelaskan tentang macam - macam benda yang ada di sekitar sekolah dan fungsi dari masing - masing benda tersebut.</p>\r\n'),
(11, 'Bab 3', 4, '91d73-bab-3-bagian-utama-hewan-dan-tumbuhan.doc', 'Elementary School', 2, '<p>\r\n	Pada bab 2 tentang bagian utama hewan dan tumbuhan yang menjelaskan fungsi dari bagian tubuh hewan dan tumbuhan .</p>\r\n'),
(12, 'Bab 4', 4, '05aaa-bab-4-hewan-dan-tumbuhan.doc', 'Elementary School', 2, '<p>\r\n	Menjelaskan tentang jenis - jenis tumbuhan, bagaimana cara merawat tumbuhan, fungsi pada masing - masing bagian tumbuhan, tujuan merawat tumbuhan. Selain tumbuhan juga menjelaskan tentang hewan dari cara merawat hewan, alat gerak hewan dan lain- lain</p>\r\n'),
(13, 'Bab 5', 4, '85786-bab-1-energi.doc', '', 2, '<p>\r\n	BAB 5 - ENERGI</p>\r\n<p>\r\n	menjelaskan macam - macam energi dan fungsinya</p>\r\n<p>\r\n	keadaan matahari dan posisi matahari</p>\r\n'),
(14, 'Bab 1', 4, '126e4-bab-1-lingkungan-sehat-dan-tidak-sehat.doc', 'Elementary School', 3, '<p>\r\n	Bab Lingkungan sehat dan tidak sehat menjelaskan tentang&nbsp;</p>\r\n<p>\r\n	- lingkungan sehat dan tidak sehat bagi makhluk hidup</p>\r\n<p>\r\n	- cara menjaga kesehatan lingkungan</p>\r\n'),
(15, 'Bab 2', 4, 'd8ccf-bab-2-ciri-ciri-kebutuhan-makhluk-hidup.doc', 'Elementary School', 3, '<p>\r\n	Pada bab ini menjelaskan :</p>\r\n<p>\r\n	- apa itu makhluk hidup dan tidak hidup</p>\r\n<p>\r\n	- kebutuhan makhluk hidup</p>\r\n<p>\r\n	- penggolongan makhluk hidup</p>\r\n'),
(16, 'Bab 4', 5, '03a7a-bab-4-benda-dan-kegunaannya.doc', '', 3, '<p>\r\n	Pada bab ini mempelajari tentang</p>\r\n<p>\r\n	- Bahan penyusun benda</p>\r\n<p>\r\n	- Kegunaan benda</p>\r\n'),
(17, 'Bab 5', 3, 'b5dd7-bab-5-gerak-benda.doc', '', 3, '<p>\r\n	Pada bab ini mempelajari :</p>\r\n<p>\r\n	- Macam - macam gerak benda</p>\r\n<p>\r\n	- Faktor yang mempengaruhi gerak benda</p>\r\n'),
(18, 'Bab 6', 3, 'a8544-bab-6-energi-dan-sumber-energi.doc', '', 3, '<p>\r\n	Pada bab ini mempelajari tentang</p>\r\n<p>\r\n	- Energi dan pengaruhnya dalam kehidupan sehari - hari</p>\r\n<p>\r\n	- Sumber energi dan penggunaannya</p>\r\n<p>\r\n	- Cara penghematan energi</p>\r\n'),
(19, 'Bab 7', 3, '2360e-bab-7-penerapan-konsep-energi-gerak.pdf', '', 3, '<p>\r\n	Pada bab ini menjelaskan tentang :</p>\r\n<p>\r\n	- Cara membuat kapal sederhana</p>\r\n<p>\r\n	- Cara membuat baling - baling</p>\r\n'),
(20, 'Bab 1', 2, '54852-bab-1-bilangan.pdf', 'Elementary School', 1, '<p>\r\n	Menjelaskan tentang</p>\r\n<p>\r\n	- menaksir bilangan yang letaknya telah ditentukan &nbsp;garis bilangan</p>\r\n<p>\r\n	- Menentukan pola pada barisan bilangan&nbsp;</p>\r\n<p>\r\n	- menentukan bilangan - bilangan diantara dua bilangan</p>\r\n'),
(21, 'Bab 2', 2, '3277d-bab-2-operasi-hitung-penjumlahan-dan-pengurang.pdf', '', 3, '<p>\r\n	Menjelaskan tentang</p>\r\n<p>\r\n	- Menuliskan bilangan secara panjang</p>\r\n<p>\r\n	- Operasi penjumlahan dalam ribuan</p>\r\n<p>\r\n	- operasi pengurangan dalam ribuan</p>\r\n<p>\r\n	- operasi hitung campuran&nbsp;</p>\r\n'),
(22, 'Bab 3', 3, '0b539-bab-3-operasi-hitung-perkalian-dan-pembagian.pdf', 'Elementary School', 3, '<p>\r\n	Menjelaskan tentang:</p>\r\n<p>\r\n	- Perkalian dan pembagian</p>\r\n<p>\r\n	- Mengubah perkalian menjadi pembagian atau sebaliknya</p>\r\n<p>\r\n	- Menggunakan sifat pertukaran</p>\r\n<p>\r\n	- Menghitung perkalian dan pembagian&nbsp;</p>\r\n<p>\r\n	- Menentukanbilangan ganjil dan genap</p>\r\n'),
(23, 'Bab 4', 3, 'c70ec-bab-4-uang.pdf', '', 3, '<p>\r\n	Menjelaskan tentang :</p>\r\n<p>\r\n	- Mengenal uang</p>\r\n<p>\r\n	- Kesetaraan nilai &nbsp;mata uang</p>\r\n<p>\r\n	- Menaksir jumlah harga yang dibeli atau dijual</p>\r\n'),
(24, 'Bab 5', 3, '7b33b-bab-5-pengukuran.pdf', '', 3, '<p>\r\n	Menjelaskan tentang :</p>\r\n<p>\r\n	- memilih alat ukur</p>\r\n<p>\r\n	- menggunakan alat ukur&nbsp;</p>\r\n<p>\r\n	- hubungan antar satuan</p>\r\n<p>\r\n	&nbsp;</p>\r\n'),
(25, 'Bab 6', 2, 'ce756-bab-6-pecahan.pdf', '', 3, '<p>\r\n	Menjelaskan tentang :</p>\r\n<p>\r\n	- Mengenal pecahan</p>\r\n<p>\r\n	- Membandingkan pecahan sederhana</p>\r\n<p>\r\n	&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `murid`
--

CREATE TABLE `murid` (
  `id_murid` varchar(5) NOT NULL,
  `nama_murid` varchar(50) NOT NULL,
  `kelas` int(2) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `Tanggal_lahir` date NOT NULL,
  `agama` enum('Islam','Kristen','Katolik','Hindu','Budha','Konghucu','dll') NOT NULL,
  `nama_sekolah` varchar(50) NOT NULL,
  `alamat_murid` varchar(255) NOT NULL,
  `nama_wali` varchar(30) NOT NULL,
  `notelp_wali` varchar(13) NOT NULL,
  `tanggal_daftar` date NOT NULL,
  `password_murid` varchar(60) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `foto` varchar(255) NOT NULL DEFAULT 'default.png'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `murid`
--

INSERT INTO `murid` (`id_murid`, `nama_murid`, `kelas`, `tempat_lahir`, `Tanggal_lahir`, `agama`, `nama_sekolah`, `alamat_murid`, `nama_wali`, `notelp_wali`, `tanggal_daftar`, `password_murid`, `status`, `foto`) VALUES
('01', 'Selenia', 2, 'Jakarta', '2006-04-16', 'Kristen', 'Citra Kasih ', 'jakarta', 'nina', '021', '2012-04-17', 'selenia', 1, '1469745298.png'),
('02', 'Prysca', 5, 'Palembang', '0000-00-00', 'Kristen', 'Kristofarus', '', '', '', '0000-00-00', 'Prysca', 1, ''),
('03', 'Rangga', 4, 'Depok', '0000-00-00', 'Budha', 'Bina Kusuma', 'Jakarta', '', '', '0000-00-00', 'rangga', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `murid_diskusi`
--

CREATE TABLE `murid_diskusi` (
  `id_murid_diskusi` int(11) NOT NULL,
  `id_murid` varchar(5) NOT NULL,
  `id_diskusi` int(11) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `murid_diskusi`
--

INSERT INTO `murid_diskusi` (`id_murid_diskusi`, `id_murid`, `id_diskusi`, `pesan`, `tanggal`) VALUES
(1, '02', 1, 'tes', '2016-05-01 01:39:47'),
(2, '02', 1, 'WOi', '2016-05-01 01:49:08');

-- --------------------------------------------------------

--
-- Table structure for table `murid_jawaban`
--

CREATE TABLE `murid_jawaban` (
  `id_soal` int(11) NOT NULL,
  `id_jawaban` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `murid_jawaban`
--

INSERT INTO `murid_jawaban` (`id_soal`, `id_jawaban`, `id_ujian`) VALUES
(2, 5, 5),
(3, 5, 5),
(5, 5, 6),
(4, 6, 6),
(10, 26, 14),
(14, 45, 14),
(13, 40, 14),
(6, 9, 15),
(9, 27, 15);

-- --------------------------------------------------------

--
-- Table structure for table `murid_ujian`
--

CREATE TABLE `murid_ujian` (
  `id_murid` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `tgl_mulai` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_selesai` datetime NOT NULL,
  `nilai_benar` int(11) NOT NULL,
  `nilai_salah` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `status` enum('Ujian','Selesai') NOT NULL,
  `id_murid_ujian` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `murid_ujian`
--

INSERT INTO `murid_ujian` (`id_murid`, `id_ujian`, `tgl_mulai`, `tgl_selesai`, `nilai_benar`, `nilai_salah`, `score`, `status`, `id_murid_ujian`) VALUES
(2, 4, '2016-07-18 06:36:23', '0000-00-00 00:00:00', 0, 0, 0, 'Ujian', 5),
(2, 6, '2016-07-18 06:43:31', '0000-00-00 00:00:00', 0, 0, 0, 'Ujian', 6),
(2, 5, '2016-07-18 06:43:37', '0000-00-00 00:00:00', 0, 0, 0, 'Ujian', 7),
(2, 7, '2016-07-18 06:52:03', '0000-00-00 00:00:00', 0, 0, 0, 'Ujian', 8),
(2, 9, '2016-07-21 02:53:32', '0000-00-00 00:00:00', 0, 0, 0, 'Ujian', 9),
(2, 10, '2016-07-28 01:40:39', '2016-07-28 08:40:59', 0, 0, 0, 'Selesai', 10),
(1, 11, '2016-07-28 17:33:49', '2016-07-29 00:34:05', 0, 0, 0, 'Selesai', 11),
(1, 14, '2016-07-28 19:06:37', '2016-07-29 02:07:18', 0, 3, 0, 'Selesai', 12),
(1, 15, '2016-07-29 05:37:59', '2016-07-29 12:38:42', 2, 0, 20, 'Selesai', 13);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_murid` int(11) NOT NULL,
  `id_forum` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL,
  `soal` text NOT NULL,
  `id_jawabanbenar` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id_soal`, `soal`, `id_jawabanbenar`) VALUES
(6, '<p>\r\n	<span id="docs-internal-guid-d16da33f-335b-e654-2ef6-200d974ad5fd"><span style="font-size: 16px; font-family: Arial; color: rgb(0, 0, 0); vertical-align: baseline; white-space: pre-wrap; background-color: transparent;">Bagian mulut kita yang digunakan untuk menguyah adalah &hellip;</span></span></p>\r\n', 9),
(8, '<p>\r\n	<span id="docs-internal-guid-d16da33f-335c-f2c0-c8ee-89f03764cf85"><span style="font-size: 16px; font-family: Arial; color: rgb(0, 0, 0); vertical-align: baseline; white-space: pre-wrap; background-color: transparent;">Kebiasaan membaca yang baik dan benar adalah &hellip;</span></span></p>\r\n', 15),
(9, '<p>\r\n	<span id="docs-internal-guid-d16da33f-335e-38cf-201a-2ae199128b2a"><span style="font-size: 16px; font-family: Arial; color: rgb(0, 0, 0); vertical-align: baseline; white-space: pre-wrap; background-color: transparent;">Menjaga tubuh tetap sehat dilakukan dengan</span></span></p>\r\n', 27),
(10, '<p>\r\n	<span id="docs-internal-guid-d16da33f-3362-877a-5fe4-3d7c17f7c52c"><span style="font-size: 16px; font-family: Arial; color: rgb(0, 0, 0); vertical-align: baseline; white-space: pre-wrap; background-color: transparent;">Setelah makan kita &hellip;</span></span></p>\r\n', 27),
(11, '<p>\r\n	<span id="docs-internal-guid-d16da33f-3363-48a9-ce99-e5cad4d1769c"><span style="font-size: 16px; font-family: Arial; color: rgb(0, 0, 0); vertical-align: baseline; white-space: pre-wrap; background-color: transparent;">Jika merasa lelah sebaiknya kita &hellip;</span></span></p>\r\n', 31),
(12, '<p>\r\n	<span id="docs-internal-guid-d16da33f-3363-b4e6-565e-8f2121da1d1b"><span style="font-size: 16px; font-family: Arial; color: rgb(0, 0, 0); vertical-align: baseline; white-space: pre-wrap; background-color: transparent;">Lingkungan yang tidak sehat cirinya, kecuali</span></span></p>\r\n', 34),
(13, '<p>\r\n	<span id="docs-internal-guid-d16da33f-3365-e301-98f9-5a41a9b28b74"><span style="font-size: 16px; font-family: Arial; color: rgb(0, 0, 0); vertical-align: baseline; white-space: pre-wrap; background-color: transparent;">Sampah sebaiknya dibuang di &hellip;</span></span></p>\r\n', 36),
(14, '<p>\r\n	<span id="docs-internal-guid-d16da33f-3366-9515-a654-b4574af63568"><span style="font-size: 16px; font-family: Arial; color: rgb(0, 0, 0); vertical-align: baseline; white-space: pre-wrap; background-color: transparent;">Asap kendaraan yang dapat mengotori udara dihasilkan oleh &hellip;</span></span></p>\r\n', 44),
(15, '<p>\r\n	<span id="docs-internal-guid-d16da33f-3367-67b5-e02f-a0d8d456ed2f"><span style="font-size: 16px; font-family: Arial; color: rgb(0, 0, 0); vertical-align: baseline; white-space: pre-wrap; background-color: transparent;">Benda yang berbentuk bulat adalah &hellip;</span></span></p>\r\n', 47),
(16, '<p>\r\n	<span id="docs-internal-guid-d16da33f-3368-4c79-0c30-8e4cc5a55d74"><span style="font-size: 16px; font-family: Arial; color: rgb(0, 0, 0); vertical-align: baseline; white-space: pre-wrap; background-color: transparent;">Cabe memiliki rasa &hellip;</span></span></p>\r\n', 56);

-- --------------------------------------------------------

--
-- Table structure for table `soal_jawaban`
--

CREATE TABLE `soal_jawaban` (
  `id_soal` int(11) NOT NULL,
  `id_jawaban` int(11) NOT NULL,
  `urutan` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `soal_jawaban`
--

INSERT INTO `soal_jawaban` (`id_soal`, `id_jawaban`, `urutan`) VALUES
(6, 9, 0),
(6, 11, 1),
(6, 12, 2),
(6, 10, 3),
(8, 28, 0),
(8, 17, 1),
(8, 15, 2),
(8, 16, 3),
(9, 27, 0),
(9, 18, 1),
(9, 26, 2),
(10, 27, 0),
(10, 31, 1),
(10, 15, 2),
(10, 26, 3),
(11, 32, 0),
(11, 29, 1),
(11, 33, 2),
(12, 20, 0),
(12, 35, 1),
(13, 40, 0),
(13, 36, 1),
(13, 39, 2),
(13, 38, 3),
(14, 12, 0),
(14, 45, 1),
(14, 44, 2),
(14, 42, 3),
(15, 49, 0),
(15, 44, 1),
(15, 47, 2),
(15, 46, 3),
(16, 54, 0),
(16, 55, 1),
(16, 57, 2),
(16, 56, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tjm_menu`
--

CREATE TABLE `tjm_menu` (
  `id` int(11) NOT NULL,
  `parent_menu` int(11) NOT NULL DEFAULT '1',
  `nama_menu` varchar(50) NOT NULL,
  `url_menu` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `urutan` tinyint(3) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` enum('Admin','Guru') NOT NULL DEFAULT 'Admin'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tjm_menu`
--

INSERT INTO `tjm_menu` (`id`, `parent_menu`, `nama_menu`, `url_menu`, `icon`, `urutan`, `status`, `type`) VALUES
(1, 1, 'root', '/', '', 0, 0, 'Admin'),
(2, 1, 'dashboard', 'admin/dashboard', 'fa fa-fw fa-dashboard', 1, 1, 'Admin'),
(3, 1, 'User Admin', 'admin/useradmin', 'fa fa-users', 99, 1, 'Admin'),
(4, 1, 'Menu', 'admin/menu', 'fa fa-gear', 100, 0, 'Admin'),
(7, 1, 'Guru', 'admin/guru', 'fa fa-user', 3, 1, 'Admin'),
(8, 1, 'Murid', 'admin/murid', 'fa fa-graduation-cap', 2, 1, 'Admin'),
(9, 26, 'Mata Pelajaran', 'admin/matapelajaran', 'fa fa-book', 1, 1, 'Admin'),
(25, 1, 'Gallery', 'admin/gallery', 'fa fa-picture-o', 10, 1, 'Admin'),
(26, 1, 'Content', '', 'fa fa-book', 2, 1, 'Admin'),
(27, 26, 'Info Website', 'admin/infowebsite', '', 1, 1, 'Admin'),
(29, 26, 'Materi', 'admin/materi', '', 2, 1, 'Admin'),
(30, 26, 'Video', 'admin/video', '', 3, 1, 'Admin'),
(31, 1, 'Tryout', '', 'fa fa-book', 2, 1, 'Admin'),
(32, 31, 'Soal', 'admin/soal', '', 1, 1, 'Admin'),
(33, 31, 'Jawaban', 'admin/Jawaban', '', 2, 1, 'Admin'),
(34, 31, 'Result', 'admin/result', '', 3, 1, 'Admin'),
(36, 26, 'Home', 'admin/home', '', 1, 1, 'Admin'),
(44, 1, 'Ujian', 'guru/ujian', 'fa fa-book', 1, 1, 'Guru'),
(45, 1, 'Materi', 'guru/materi', 'fa fa-book', 2, 1, 'Guru'),
(46, 1, 'Result', 'guru/result', 'fa fa-gear', 3, 1, 'Guru'),
(47, 1, 'Master', 'guru/soal', 'fa fa-servers', 1, 1, 'Guru'),
(48, 47, 'Soal', 'guru/soal', '', 1, 1, 'Admin'),
(49, 47, 'Jawaban', 'guru/jawaban', '', 2, 1, 'Guru'),
(50, 1, 'Video', 'guru/video', 'fa fa-picture-o', 7, 1, 'Guru');

-- --------------------------------------------------------

--
-- Table structure for table `ujian`
--

CREATE TABLE `ujian` (
  `id_ujian` int(11) NOT NULL,
  `id_mata_pelajaran` int(11) NOT NULL,
  `tingkat` enum('Elementary School','Junior High School','Senior High School') NOT NULL,
  `kelas` int(11) NOT NULL,
  `tgl_awal` datetime NOT NULL,
  `tgl_akhir` datetime NOT NULL,
  `id_guru` int(11) NOT NULL,
  `tanggal_buat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_jenis_ujian` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `durasi` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ujian`
--

INSERT INTO `ujian` (`id_ujian`, `id_mata_pelajaran`, `tingkat`, `kelas`, `tgl_awal`, `tgl_akhir`, `id_guru`, `tanggal_buat`, `id_jenis_ujian`, `judul`, `durasi`) VALUES
(11, 4, 'Elementary School', 1, '2016-07-29 12:29:10', '2016-07-31 10:39:00', 1, '2016-07-28 21:30:53', 1, 'WORKSHEET IPA SEMSTER 1', 8),
(14, 11, 'Elementary School', 6, '2016-07-28 00:00:00', '2016-07-30 00:00:00', 1, '2016-07-29 00:06:29', 2, 'ttt', 20),
(15, 4, 'Elementary School', 2, '2016-07-29 05:00:00', '2016-07-30 05:00:00', 1, '2016-07-29 10:36:58', 2, 'tesss', 20);

-- --------------------------------------------------------

--
-- Table structure for table `ujiansoal`
--

CREATE TABLE `ujiansoal` (
  `id_ujian` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `no_urut` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ujiansoal`
--

INSERT INTO `ujiansoal` (`id_ujian`, `id_soal`, `no_urut`) VALUES
(3, 2, 0),
(3, 3, 1),
(5, 2, 0),
(5, 3, 1),
(6, 2, 0),
(6, 5, 1),
(6, 4, 2),
(6, 3, 3),
(11, 6, 0),
(11, 8, 1),
(11, 9, 2),
(11, 10, 3),
(11, 11, 4),
(11, 12, 5),
(11, 13, 6),
(11, 14, 7),
(11, 15, 8),
(11, 16, 9),
(14, 6, 0),
(14, 8, 1),
(14, 9, 2),
(14, 10, 3),
(14, 11, 4),
(14, 12, 5),
(14, 13, 6),
(14, 14, 7),
(14, 15, 8),
(14, 16, 9),
(15, 6, 0),
(15, 8, 1),
(15, 9, 2),
(15, 10, 3),
(15, 11, 4),
(15, 12, 5),
(15, 13, 6),
(15, 14, 7),
(15, 15, 8),
(15, 16, 9);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(5) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `id_mata_pelajaran` int(11) NOT NULL,
  `deskripsi_video` text NOT NULL,
  `url_video` varchar(50) NOT NULL,
  `tingkat` enum('Elementary School','Junior High School','Senior High School') NOT NULL DEFAULT 'Elementary School'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `judul`, `id_mata_pelajaran`, `deskripsi_video`, `url_video`, `tingkat`) VALUES
(3, 'Jarimatiak Penjumlahan dan Pengurangan', 2, '<p>\r\n	Dalam video ini mengajarkan cara menghitung menggunakan jari</p>\r\n', 'https://www.youtube.com/watch?v=SMrThWVGGgs', 'Elementary School'),
(4, 'Belajar Membaca ', 1, '<p>\r\n	Video ini mengajarkan cara membaca dengan ceria yang lebih interaktif . Membaca 2 huruf atau abjad . seperti ba bi bu be bo</p>\r\n', 'https://www.youtube.com/watch?v=3EesdH8Lahc', 'Elementary School'),
(5, 'Bilangan Romawi', 2, '<p>\r\n	Video ini mengajarkan bagaimana belajar bilangan romawi dengan mudah&nbsp;</p>\r\n', 'https://www.youtube.com/watch?v=MXbflic1rMc', 'Elementary School'),
(6, 'Operasi Pecahan', 2, '<p>\r\n	Video ini belajar tentang pecahan menggunakan operator + , - dan menyamakan penyebut</p>\r\n', 'https://www.youtube.com/watch?v=VBmZfpJwuvs', 'Elementary School'),
(7, 'Sumber Daya Alam', 4, '<p>\r\n	Menjelaskan tentang berapa macam sumber daya alam dan jenis - jenisnya</p>\r\n', 'https://www.youtube.com/watch?v=BOfq3VkaBq0', 'Elementary School');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diskusi`
--
ALTER TABLE `diskusi`
  ADD PRIMARY KEY (`id_diskusi`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id_forum`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id_home`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `infoweb`
--
ALTER TABLE `infoweb`
  ADD PRIMARY KEY (`id_infoweb`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `jenis_ujian`
--
ALTER TABLE `jenis_ujian`
  ADD PRIMARY KEY (`id_jenis_ujian`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`id_mata_pelajaran`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `murid`
--
ALTER TABLE `murid`
  ADD PRIMARY KEY (`id_murid`);

--
-- Indexes for table `murid_diskusi`
--
ALTER TABLE `murid_diskusi`
  ADD PRIMARY KEY (`id_murid_diskusi`);

--
-- Indexes for table `murid_ujian`
--
ALTER TABLE `murid_ujian`
  ADD PRIMARY KEY (`id_murid_ujian`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `tjm_menu`
--
ALTER TABLE `tjm_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id_ujian`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `diskusi`
--
ALTER TABLE `diskusi`
  MODIFY `id_diskusi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `id_forum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id_home` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `infoweb`
--
ALTER TABLE `infoweb`
  MODIFY `id_infoweb` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `jenis_ujian`
--
ALTER TABLE `jenis_ujian`
  MODIFY `id_jenis_ujian` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  MODIFY `id_mata_pelajaran` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `murid_diskusi`
--
ALTER TABLE `murid_diskusi`
  MODIFY `id_murid_diskusi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `murid_ujian`
--
ALTER TABLE `murid_ujian`
  MODIFY `id_murid_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tjm_menu`
--
ALTER TABLE `tjm_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
