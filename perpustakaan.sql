-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 13 Sep 2022 pada 02.35
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku1`
--

CREATE TABLE `buku1` (
  `id_buku` int(11) NOT NULL,
  `nama_buku` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku1`
--

INSERT INTO `buku1` (`id_buku`, `nama_buku`, `pengarang`, `deskripsi`, `foto`) VALUES
(1, 'Yellow Dino', '', 'lucu', '178356d73d6d37fce2b17990bcde6d8d.jpg'),
(2, 'Orang biru', '', 'ini juga lucu', '749f22a0517ad87a802070da44c811d7.jpg'),
(17, 'Minions', '', 'ini juga lucu tauu<3', '24e187edda7e2ea3264886c0bc262ac2.jpg'),
(19, 'Turning Red', '', 'aww ini lebih lucu tauu <3', '43e1e03235053edefc30ae99031fcba4.jpg'),
(20, 'Love you', '', 'semua tentang kamu', '7a190b3363e9b6816d5a52626e4cd825.jpg'),
(21, 'Berharap kamu disini', '', 'disampingku, selamanya.', '5b7b3495f2dc92a934e3b33cab2a4f33.jpg'),
(22, 'Be yourself', '', 'jadi dirimu sendiri yaa', '575fa506d469a9bfe0a42343f89a4c7d.jpg'),
(23, 'Time to cry', '', 'luapin aja lewat air mata mu', '68c7075b4c02030f4d73db5652a5576a.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_peminjaman1`
--

CREATE TABLE `detail_peminjaman1` (
  `id_detail_peminjaman_buku` int(11) NOT NULL,
  `id_peminjaman_buku` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_peminjaman1`
--

INSERT INTO `detail_peminjaman1` (`id_detail_peminjaman_buku`, `id_peminjaman_buku`, `id_buku`, `qty`) VALUES
(1, 1, 1, 0),
(2, 2, 1, 0),
(3, 3, 1, 0),
(4, 4, 1, 0),
(5, 5, 19, 0),
(6, 6, 21, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas1`
--

CREATE TABLE `kelas1` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL,
  `kelompok` varchar(20) NOT NULL,
  `angkatan` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas1`
--

INSERT INTO `kelas1` (`id_kelas`, `nama_kelas`, `kelompok`, `angkatan`) VALUES
(1, 'XIR2', 'RPL', 30),
(2, 'XIR2', 'RPL', 30),
(3, 'XIR2', 'RPL', 30);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman_buku1`
--

CREATE TABLE `peminjaman_buku1` (
  `id_peminjaman_buku` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman_buku1`
--

INSERT INTO `peminjaman_buku1` (`id_peminjaman_buku`, `id_siswa`, `tanggal_pinjam`, `tanggal_kembali`) VALUES
(1, 1, '2022-09-09', '2022-09-14'),
(2, 1, '2022-09-09', '2022-09-14'),
(3, 1, '2022-09-09', '2022-09-14'),
(4, 1, '2022-09-09', '2022-09-14'),
(5, 1, '2022-09-11', '2022-09-16'),
(6, 1, '2022-09-11', '2022-09-16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian_buku1`
--

CREATE TABLE `pengembalian_buku1` (
  `id_pengembalian_buku` int(11) NOT NULL,
  `id_peminjaman_buku` int(11) NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengembalian_buku1`
--

INSERT INTO `pengembalian_buku1` (`id_pengembalian_buku`, `id_peminjaman_buku`, `tanggal_pengembalian`, `denda`) VALUES
(1, 1, '2022-09-09', 0),
(2, 2, '2022-09-13', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa1`
--

CREATE TABLE `siswa1` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa1`
--

INSERT INTO `siswa1` (`id_siswa`, `nama_siswa`, `tanggal_lahir`, `gender`, `alamat`, `username`, `password`, `id_kelas`) VALUES
(1, 'rasya', '1212-12-12', 'L', 'malang sawojajar', 'rsyy', '21009f82370c6285149c87585573ed61', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku1`
--
ALTER TABLE `buku1`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `detail_peminjaman1`
--
ALTER TABLE `detail_peminjaman1`
  ADD PRIMARY KEY (`id_detail_peminjaman_buku`),
  ADD KEY `id_peminjaman_buku` (`id_peminjaman_buku`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `qty` (`qty`);

--
-- Indeks untuk tabel `kelas1`
--
ALTER TABLE `kelas1`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `peminjaman_buku1`
--
ALTER TABLE `peminjaman_buku1`
  ADD PRIMARY KEY (`id_peminjaman_buku`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `pengembalian_buku1`
--
ALTER TABLE `pengembalian_buku1`
  ADD PRIMARY KEY (`id_pengembalian_buku`),
  ADD KEY `id_peminjaman_buku` (`id_peminjaman_buku`),
  ADD KEY `denda` (`denda`);

--
-- Indeks untuk tabel `siswa1`
--
ALTER TABLE `siswa1`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku1`
--
ALTER TABLE `buku1`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `detail_peminjaman1`
--
ALTER TABLE `detail_peminjaman1`
  MODIFY `id_detail_peminjaman_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kelas1`
--
ALTER TABLE `kelas1`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `peminjaman_buku1`
--
ALTER TABLE `peminjaman_buku1`
  MODIFY `id_peminjaman_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pengembalian_buku1`
--
ALTER TABLE `pengembalian_buku1`
  MODIFY `id_pengembalian_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `siswa1`
--
ALTER TABLE `siswa1`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_peminjaman1`
--
ALTER TABLE `detail_peminjaman1`
  ADD CONSTRAINT `detail_peminjaman1_ibfk_1` FOREIGN KEY (`id_peminjaman_buku`) REFERENCES `peminjaman_buku1` (`id_peminjaman_buku`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_peminjaman1_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku1` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `peminjaman_buku1`
--
ALTER TABLE `peminjaman_buku1`
  ADD CONSTRAINT `peminjaman_buku1_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa1` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pengembalian_buku1`
--
ALTER TABLE `pengembalian_buku1`
  ADD CONSTRAINT `pengembalian_buku1_ibfk_1` FOREIGN KEY (`id_peminjaman_buku`) REFERENCES `peminjaman_buku1` (`id_peminjaman_buku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswa1`
--
ALTER TABLE `siswa1`
  ADD CONSTRAINT `siswa1_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas1` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
