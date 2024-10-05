-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Okt 2024 pada 21.16
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `user_id` int(2) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(15) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `gambar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `fullname`, `gambar`) VALUES
(1, 'operator', 'operator', 'Petugas', 'gambar_admin/avatar5.png'),
(3, 'admin', 'admin', 'Admin PerpustakaanKU', 'gambar_admin/user.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_anggota`
--

CREATE TABLE `data_anggota` (
  `id` int(4) NOT NULL,
  `no_induk` varchar(100) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(25) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `ttl` varchar(100) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `foto` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `data_anggota`
--

INSERT INTO `data_anggota` (`id`, `no_induk`, `nama`, `username`, `password`, `jk`, `kelas`, `ttl`, `alamat`, `foto`) VALUES
(1, 'mihrawardana@gmail.com', 'Mihra Wardana', 'mihrawardana', 'mihrawardana', 'P', '19', 'Kendari, 29 10 2001', 'Ranomeeto', 'gambar_anggota/fotoo.jpg'),
(2, 'anggota@gmail.com', 'anggota', 'anggota', 'anggota', 'P', '10', 'Konawe, 12 09 1999', 'Semarang', 'gambar_anggota/IMG-20191104-WA0043.jpg'),
(20, 'user@gmail.com', 'user', 'user', 'user', 'L', '39', 'Mandonga, 28 03 1887', 'Mandonga', 'gambar_anggota/macan.jpg\r\n'),
(21, 'avwingsb@gmail.com', 'Dwi Hardiansyah', 'awing', '12345678', 'L', '18', 'unaaha, 2001-05-05', 'kendari', 'gambar_anggota/ssamson.jpg\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_buku`
--

CREATE TABLE `data_buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `pengarang` varchar(250) NOT NULL,
  `th_terbit` varchar(4) NOT NULL,
  `penerbit` varchar(250) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `jumlah_buku` int(2) NOT NULL,
  `asal` varchar(50) NOT NULL,
  `tgl_input` varchar(75) NOT NULL,
  `gambar` text NOT NULL,
  `link_buku` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `data_buku`
--

INSERT INTO `data_buku` (`id`, `judul`, `pengarang`, `th_terbit`, `penerbit`, `isbn`, `kategori`, `jumlah_buku`, `asal`, `tgl_input`, `gambar`, `link_buku`) VALUES
(25, 'legenda danau toba', 'YOYOK RAHAYU BASUKI', '2024', 'Azhar Publisher', '1204202310229', 'Dongeng ', 0, 'Sumbangan', '2024/10/02', 'gambar_buku/content.jpeg', 'https://books.google.co.id/books?id=uhwfEQAAQBAJ&newbks=1&newbks_redir=0&lpg=PP1&dq=legenda%20danau%20toba&hl=id&pg=PP1#v=onepage&q&f=false'),
(33, 'awokdowakd', 'qokweok', 'qwoe', 'wqoekqwko', '1234213', 'qweqokokw', 0, 'Pembelian', '2024/10/05', 'gambar_buku/tes.jpg', 'https://www.e-booksdirectory.com/details.php?ebook=8852');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id` int(8) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `kelas` varchar(17) NOT NULL,
  `perlu1` varchar(15) NOT NULL,
  `cari` varchar(255) NOT NULL,
  `saran` varchar(255) NOT NULL,
  `tgl_kunjung` date NOT NULL,
  `jam_kunjung` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pengunjung`
--

INSERT INTO `pengunjung` (`id`, `nama`, `jk`, `kelas`, `perlu1`, `cari`, `saran`, `tgl_kunjung`, `jam_kunjung`) VALUES
(10, 'Mihra Wardana', 'P', '19', 'Mencari referen', 'Buku yang berkaitan dengan komputer', 'Agar menyediakan lebih banyak buku referensi, sehingga kami dapat menemukan referensi sesuai kebutuhan kami', '2021-02-01', '14:35:53'),
(11, 'Wardana', 'P', '21', 'Membaca', 'Novel', 'Sebaiknya jumlah  referensi lebih ditingkatkan', '2021-02-01', '14:43:30');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `data_anggota`
--
ALTER TABLE `data_anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_buku`
--
ALTER TABLE `data_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `data_anggota`
--
ALTER TABLE `data_anggota`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `data_buku`
--
ALTER TABLE `data_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
