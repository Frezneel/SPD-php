-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Okt 2021 pada 11.21
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spd_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_usermasuk`
--

CREATE TABLE `tbl_usermasuk` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_usermasuk`
--

INSERT INTO `tbl_usermasuk` (`id`, `nama`, `keterangan`) VALUES
(1, 'Galih M Ichsan', 'Mahasiswa'),
(2, 'Latansyah Maulana F.', 'Mahasiswa'),
(3, 'Najibur Rohman', 'Mahasiswa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_usermasuk`
--
ALTER TABLE `tbl_usermasuk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_usermasuk`
--
ALTER TABLE `tbl_usermasuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
