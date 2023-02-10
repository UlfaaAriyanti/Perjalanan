-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Feb 2023 pada 05.49
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perjalanan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `nik` varchar(12) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `nik`, `nama`) VALUES
(1, '123', 'raditya'),
(2, '122', 'admin'),
(3, '', ''),
(12, '111', 'racha'),
(13, '', ''),
(14, '1233', 'davii');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL,
  `lat_long` varchar(50) NOT NULL,
  `nama_tempat` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lokasi`
--

INSERT INTO `lokasi` (`id`, `lat_long`, `nama_tempat`, `kategori`, `keterangan`) VALUES
(10, '', 'Batos', 'Pasar/Mall', '-'),
(11, '', 'galeri raos', 'Fasilitas Umum', '-'),
(12, '', 'galeri raos', 'Fasilitas Umum', '-'),
(13, '1456267', 'Smk maarif', 'Sekolah', '-'),
(14, '1456267', 'Smk maarif', 'Sekolah', '-'),
(15, '1456267', 'Smk maarif', 'Sekolah', '-'),
(16, '1456267', 'Smk maarif', 'Sekolah', '-'),
(17, '1456267', 'Smk maarif', 'Sekolah', '-'),
(18, '4245', 'Matos', 'Pasar/Mall', '-'),
(19, '4245', 'Matos', 'Pasar/Mall', '-'),
(20, '12345', 'plaza', 'Pasar/Mall', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perjalanan`
--

CREATE TABLE `perjalanan` (
  `id_perjalanan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `suhu` text NOT NULL,
  `kesehatan` varchar(200) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `perjalanan`
--

INSERT INTO `perjalanan` (`id_perjalanan`, `tanggal`, `jam`, `lokasi`, `kota`, `suhu`, `kesehatan`, `keterangan`) VALUES
(1, '2022-02-23', '12:00:00', 'alun-alun kota batu', 'batu', '35°', 'Sehat', '-'),
(2, '2022-11-28', '00:00:00', 'masjid al-Taqwa', 'batu', '36,5', 'Sehat', 'none'),
(3, '2023-02-06', '00:00:00', 'smk maarif batu', 'batu', '36,5', 'Sehat', '-'),
(4, '2023-02-06', '17:05:00', 'masjid an-nur', 'batu', '36,5', 'Sehat', '..'),
(5, '2023-02-06', '12:08:00', 'Batos', 'batu', '36,5', 'Sakit', 'ccc'),
(6, '2023-02-06', '13:09:00', 'BNS', 'batu', '36,5', 'Sangat Sehat', 'ssss'),
(7, '2023-02-08', '12:17:00', 'Batos', 'batu', '36,5', 'Sangat Sakit', 'ssss'),
(8, '2023-02-08', '12:17:00', 'Batos', 'batu', '36,5', 'Sangat Sakit', 'ssss'),
(9, '2023-02-06', '12:19:00', 'masjid al-Taqwa', 'batu', '36,5', 'Sangat Sehat', '....'),
(10, '2023-02-07', '18:51:00', 'Batos', 'batu', '32.7', 'Cukup Sehat', 'none'),
(11, '2023-02-05', '20:34:00', 'Matos', 'Malang', '36,5', 'Cukup Sehat', '-'),
(12, '2023-02-05', '20:34:00', 'Matos', 'Malang', '36,5', 'Cukup Sehat', '-');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perjalanan`
--
ALTER TABLE `perjalanan`
  ADD PRIMARY KEY (`id_perjalanan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `perjalanan`
--
ALTER TABLE `perjalanan`
  MODIFY `id_perjalanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
