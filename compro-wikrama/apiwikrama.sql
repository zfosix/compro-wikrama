-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Nov 2023 pada 02.56
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apiwikrama`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `file`, `created_at`) VALUES
(1, 'Pengumuman Mengenai Launching Aplikasi Baru JKT48 Private Message', 'Berkat dukungan semuanya, layanan JKT48 Private Message dikenal dan digunakan oleh banyak orang.', 'http://127.0.0.1:9000/assets/privt.png', '2023-09-30 15:06:42'),
(2, 'Valkyrie48 ', 'Saat ini Valkyrie48 memiliki 5 member dari total 25 member JKT48, dan mereka adalah para member memiliki passion, semangat, dan knowledge yang mendalam di dunia gaming maupun e-sports.', 'http://127.0.0.1:9000/assets/vlkr.png', '2023-10-31 15:06:42'),
(3, 'Tabungan Tora x JKT48', 'Tabungan Tora adalah tabungan bebas biaya yang memberikan banyak kebebasan lainnya pada nasabah.', 'http://127.0.0.1:9000/assets/bnk.png', '2023-09-30 15:06:42'),
(4, 'JKT48 Official Merchandise Is Now Available At Tokopedia', 'Kamu ingin beli lebih banyak merchandise untuk koleksi di rumah? Tidak perlu khawatir harus datang ke toko offline, sekarang kamu dapat berbelanja lebih mudah di JKT48 Official Shop Tokopedia. ', 'http://127.0.0.1:9000/assets/jktkp.png', '2023-10-31 15:06:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Semua\r\n'),
(2, 'Gen 3'),
(3, 'Gen 6\r\n'),
(4, 'Gen 7'),
(5, 'Gen 8'),
(6, 'Gen 9'),
(7, 'Gen 10'),
(8, 'Gen 11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `message`, `created_at`) VALUES
(1, 'zae', 'zae@gmail.com', '08393838', 'hallo', '2023-10-31 09:50:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `homes`
--

CREATE TABLE `homes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `homes`
--

INSERT INTO `homes` (`id`, `title`, `description`, `file`) VALUES
(1, 'Seputar JKT48 New Era', 'JKT48 tampil untuk pertama kalinya di televisi pada konser program musik televisi 100% Ampuh, tayangan langsung Global TV dari Bekasi Square, 17 Desember 2011. Lagu yang pertama kali mereka bawakan adalah Heavy Rotation dengan lirik bahasa Indonesia. Kostum JKT48 serupa dengan seragam sekolah Jepang yang menjadi ciri khas AKB48. Pada hari berikutnya, 18 Desember 2011, JKT48 untuk pertama kalinya berinteraksi dengan penggemar lewat acara bersalaman Meet & Greet JKT48 di fX Center Jakarta, dan menyanyikan Heavy Rotation.', 'http://127.0.0.1:9000/assets/JKT48.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `name`, `category_id`, `file`) VALUES
(1, 'Freya JKT48', 'Freyanasyifa Jayawardana', 1, 'http://127.0.0.1:9000/assets/Freya JKT48.jpeg'),
(2, 'Muthe JKT48', 'Mutia Azahra', 1, 'http://127.0.0.1:9000/assets/muthe JKT48.jpeg'),
(3, 'Indira JKT48', 'Indira Seruni', 1, 'http://127.0.0.1:9000/assets/Indira JKT48.jpeg'),
(4, 'Shani JKT48', 'Shani Indira Natio', 1, 'http://127.0.0.1:9000/assets/shani JKT48.jpeg'),
(5, 'Michie JKT48', 'Micheella Alexandra', 1, 'http://127.0.0.1:9000/assets/Michie JKT48.jpeg'),
(6, 'Ashel JKT48', 'Adzana Shaliha', 1, 'http://127.0.0.1:9000/assets/ashel JKT48.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `file`) VALUES
(1, 'Ramune no nomikata ラムネの飲み方', ' setlist yang sebelumnya telah dibawakan oleh SKE48 Team KII yang kemudian disadur kedalam Bahasa Indonesia dan menjadi Setlist dari JKT48 Team KIII', 'http://127.0.0.1:9000/assets/rmn.jpeg'),
(2, ' Ren\'ai Kinshi Jōrei 恋愛禁止条例', ' setlist pertunjukan teater dari grup idola Indonesia JKT48. Setlist ini dipentaskan kembali dalam bentuk pertunjukan daur ulang dari panggung ke-5 dari grup idola Jepang AKB48 Tim A dan diterjemahkan ke dalam Bahasa Indonesia. ', 'http://127.0.0.1:9000/assets/aac.png'),
(3, 'Aitakata 会いたい', 'Setlist \"Aitakatta\" merupakan original setlist kedua milik AKB48 Team A yang pertama kali dibawakan pada tanggal 15 April 2006. 17 tahun berlalu, tepatnya pada tanggal 30 April 2023, JKT48 trainee generasi 11 melangsungkan pertunjukan perdana dari setlist ini.', 'http://127.0.0.1:9000/assets/ib.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `homes`
--
ALTER TABLE `homes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `portfolios_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
