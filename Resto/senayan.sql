-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Nov 2024 pada 18.05
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bila-copy`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(7, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `kode_menu` varchar(12) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `status` enum('tersedia','tidak tersedia') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `kode_menu`, `nama`, `harga`, `gambar`, `kategori`, `status`) VALUES
(0, 'MN51', 'Nasi Putih Biasa', 4000, 'nasi-putih-biasa.png', 'Makanan', 'tersedia'),
(1, 'MN01', 'Bebek Cabe Ijo', 40000, 'bebek-goreng-ijo.png', 'Makanan', 'tersedia'),
(2, 'MN02', 'Kerang Asam manis', 50000, 'kerang-asam-manis.png', 'Makanan', 'tersedia'),
(3, 'MN03', 'Gurame Saus Tauco', 25000, 'gurame-saus-tauco.png', 'Makanan', 'tersedia'),
(4, 'MN04', 'Gurame Asam Manis', 30000, 'gurame-asam-manis.png', 'Makanan', 'tersedia'),
(5, 'MN05', 'Dendeng Balado', 35000, 'dendeng-balado.png', 'Makanan', 'tersedia'),
(6, 'MN06', 'Bebek Goreng Kelapa', 35000, 'bebek-goreng-kelapa.png', 'Makanan', 'tersedia'),
(7, 'MN07', 'Balado Kerang Pedas', 45000, 'balado-kerang-pedas.png', 'Makanan', 'tersedia'),
(8, 'MN08', 'Ayam Bakar Madu', 25000, 'ayam-bakar-madu.png', 'Makanan', 'tersedia'),
(9, 'MN09', 'Nasi Goreng Sosis', 15000, 'nasi-goreng-sosis.png', 'Makanan', 'tersedia'),
(10, 'MN10', 'Udang Tepung Gendut', 20000, 'udang-tepung.png', 'Fast Food', 'tersedia'),
(11, 'MN11', 'Macaroni Asam Pedas', 25000, 'macaroni-asam-pedas.png', 'Fast Food', 'tersedia'),
(12, 'MN12', 'Spaghetti Saus Ikan', 25000, 'spaghetti-saus-ikan.png', 'Fast Food', 'tersedia'),
(13, 'MN13', 'Ayam Goreng Tepung', 10000, 'ayam-goreng-tepung.png', 'Fast Food', 'tersedia'),
(14, 'MN14', 'Chicken Wings', 30000, 'chicken-wings.png', 'Fast Food', 'tersedia'),
(15, 'MN15', 'Roti Jalo Kuah Kari', 35000, 'roti-jalo.png', 'Fast Food', 'tersedia'),
(16, 'MN16', 'Burger Egg Cheese', 16000, 'egg-cheese-burger.png', 'Fast Food', 'tersedia'),
(17, 'MN17', 'Roll Sushi Tuna', 30000, 'roll-sushi-tuna.png', 'Fast Food', 'tersedia'),
(18, 'MN18', 'Mie Setan', 20000, 'mie-setan.png', 'Fast Food', 'tersedia'),
(19, 'MN19', 'Molen Kacang Hijau', 5000, 'molen-kacang-hijau.png', 'Snack', 'tersedia'),
(20, 'MN20', 'Kue Cubit', 10000, 'kue-cubit.png', 'Snack', 'tersedia'),
(21, 'MN21', 'Otak2 Udang Keju', 15000, 'otak-udang-keju.png', 'Snack', 'tersedia'),
(22, 'MN22', 'Donat Kentang', 15000, 'donat-kentang.png', 'Snack', 'tersedia'),
(23, 'MN23', 'Siomay Bandung', 30000, 'siomay-bandung.png', 'Snack', 'tersedia'),
(24, 'MN24', 'Rolade Tahu', 20000, 'rolade-tahu.png', 'Snack', 'tersedia'),
(25, 'MN25', 'Onion Ring', 10000, 'onion-ring.png', 'Snack', 'tersedia'),
(26, 'MN26', 'Puding Lumut', 10000, 'puding-lumut.png', 'Dessert', 'tersedia'),
(27, 'MN27', 'Oreo Cheese Cake', 25000, 'oreo-cheese-cake.png', 'Dessert', 'tersedia'),
(28, 'MN28', 'Strawberry Cheese Cake', 25000, 'strawberry-cheese-cake.png', 'Dessert', 'tersedia'),
(29, 'MN29', 'Cake Ubi Ungu', 20000, 'cake-ubi-ungu.png', 'Dessert', 'tersedia'),
(30, 'MN30', 'Black Forest', 25000, 'black-forest.png', 'Dessert', 'tersedia'),
(31, 'MN31', 'Wafer Coklat Puding', 20000, 'wafer-coklat-puding.png', 'Dessert', 'tersedia'),
(32, 'MN32', 'Es Krim Kacang Merah', 28000, 'es-krim-kacang-merah.png', 'Dessert', 'tersedia'),
(33, 'MN33', 'Ketan lapis Srikaya', 20000, 'ketan-lapis-srikaya.png', 'Dessert', 'tersedia'),
(34, 'MN34', 'Pandan Roll Kismis', 20000, 'pandan-roll-kismis.png', 'Dessert', 'tersedia'),
(35, 'MN35', 'Caramel Frappuccino', 8000, 'caramel-fc.png', 'Minuman', 'tersedia'),
(36, 'MN36', 'Susu Caramel Kopo', 8000, 'susu-karamel-kopo.png', 'Minuman', 'tersedia'),
(37, 'MN37', 'Ice Caramel Macchiato', 8000, 'caramel-mc.png', 'Minuman', 'tersedia'),
(38, 'MN38', 'Capuccino Float', 8000, 'capuccino-float.png', 'Minuman', 'tersedia'),
(39, 'MN39', 'Jus Pisang', 5000, 'jus-pisang.png', 'Minuman', 'tersedia'),
(40, 'MN40', 'Jus Nangka', 5000, 'jus-nangka.png', 'Minuman', 'tersedia'),
(41, 'MN41', 'Jus Mangga', 5000, 'jus-mangga.png', 'Minuman', 'tersedia'),
(42, 'MN42', 'Jus Alpukat', 5000, 'jus-alpukat.png', 'Minuman', 'tersedia'),
(43, 'MN43', 'Jus Melon', 5000, 'jus-melon.png', 'Minuman', 'tersedia'),
(44, 'MN44', 'Jus Sirsak', 5000, 'jus-sirsak.png', 'Minuman', 'tersedia'),
(45, 'MN45', 'Jus Wortel', 5000, 'jus-wortel.png', 'Minuman', 'tersedia'),
(46, 'MN46', 'Es Kacang Ijo', 12000, 'es-kacang-ijo.png', 'Minuman', 'tersedia'),
(47, 'MN47', 'Rainbow Juice', 12000, 'rainbow-juice.png', 'Minuman', 'tersedia'),
(48, 'MN48', 'Strawberry Ice Tea', 12000, 'strawberry-iced.png', 'Minuman', 'tersedia'),
(49, 'MN49', 'Smoothie Mangga', 12000, 'smoothie-mangga.png', 'Minuman', 'tersedia'),
(50, 'MN50', 'Es Kopyor', 8000, 'es-kopyor.png', 'Minuman', 'tersedia'),
(52, 'MN52', 'Es Teh Manis', 3000, 'es-teh-manis.png', 'Minuman', 'tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendapatan`
--

CREATE TABLE `pendapatan` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `pendapatan_harian` decimal(10,2) DEFAULT 0.00,
  `pendapatan_mingguan` decimal(10,2) DEFAULT 0.00,
  `pendapatan_bulanan` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pendapatan`
--

INSERT INTO `pendapatan` (`id`, `tanggal`, `pendapatan_harian`, `pendapatan_mingguan`, `pendapatan_bulanan`) VALUES
(10, '2024-11-10', 26000.00, 26000.00, 226000.00),
(11, '2024-11-11', 200000.00, 200000.00, 226000.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `kode_pesanan` varchar(12) NOT NULL,
  `kode_menu` varchar(12) NOT NULL,
  `qty` int(11) NOT NULL,
  `jenis_pesanan` enum('Take away','Dine in') NOT NULL,
  `meja` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `kode_pesanan`, `kode_menu`, `qty`, `jenis_pesanan`, `meja`) VALUES
(49, '658fd1b1cab3', 'MN52', 1, 'Take away', ''),
(50, '658fd1b1cab3', 'MN51', 1, 'Take away', ''),
(51, '658fd3177ada', 'MN52', 1, 'Take away', ''),
(52, '658fd3177ada', 'MN51', 1, 'Take away', ''),
(54, '670fdbb90e07', 'MN52', 1, 'Take away', ''),
(116, '6719c66beb52', 'MN52', 1, 'Take away', ''),
(117, '6719c724cbde', 'MN52', 2, 'Take away', ''),
(118, '6719c85d8154', 'MN52', 2, 'Take away', ''),
(124, '6719dae1340a', 'MN52', 0, 'Take away', ''),
(125, '6719dae1340a', 'MN51', 2, 'Take away', ''),
(132, '6719e777f39c', 'MN52', 2, 'Dine in', ''),
(133, '672657b50e2a', 'MN53', 1, 'Dine in', ''),
(134, '67289920e0d8', 'MN52', 1, 'Dine in', ''),
(135, '67302d421af3', 'MN52', 1, 'Take away', '13'),
(136, '673030da5fe5', 'MN52', 1, 'Take away', '14'),
(137, '673031c33c45', 'MN52', 1, 'Take away', '4'),
(138, '673032b4320a', 'MN52', 1, 'Take away', '24'),
(139, '673033abb14b', 'MN52', 1, 'Dine in', '210'),
(140, '67303617106c', 'MN45', 1, 'Dine in', '5'),
(141, '6730365a00ae', 'MN45', 1, 'Dine in', '1'),
(142, '6730366f5049', 'MN45', 1, 'Take away', 'w'),
(143, '67303746e6f6', 'MN52', 2, 'Take away', '13'),
(144, '6730376765a4', 'MN45', 2, 'Dine in', '13'),
(145, '673037d03163', 'MN52', 2, 'Take away', '13'),
(146, '673037d03163', 'MN51', 1, 'Take away', '13'),
(147, '6731fdfb25d9', 'MN52', 1, 'Dine in', '12'),
(148, '6731fdfb25d9', 'MN51', 1, 'Dine in', '12'),
(149, '6731fe3fcd64', 'MN52', 1, 'Dine in', '1'),
(150, '6731fe3fcd64', 'MN51', 2, 'Dine in', '1'),
(151, '6732199261f9', 'MN52', 1, 'Dine in', '149'),
(152, '67321fb0f17c', 'MN52', 4, 'Dine in', '92'),
(153, '67321fb0f17c', 'MN51', 4, 'Dine in', '92'),
(154, '67321fb0f17c', 'MN50', 2, 'Dine in', '92'),
(155, '67321fb0f17c', 'MN13', 1, 'Dine in', '92'),
(156, '67321fb0f17c', 'MN12', 3, 'Dine in', '92'),
(157, '67321fb0f17c', 'MN11', 2, 'Dine in', '92');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kode_pesanan` varchar(12) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `jenis_pesanan` enum('Take away','Dine in') NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `kode_menu` varchar(255) DEFAULT NULL,
  `meja` int(255) NOT NULL,
  `total_harga` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `kode_pesanan`, `nama_pelanggan`, `jenis_pesanan`, `waktu`, `kode_menu`, `meja`, `total_harga`) VALUES
(84, '673037d03163', 'Santi', 'Take away', '2024-11-10 04:34:24', NULL, 13, 0),
(85, '6731fdfb25d9', 'rafi', 'Dine in', '2024-11-11 12:52:11', NULL, 12, 0),
(86, '6731fe3fcd64', 'jsj', 'Dine in', '2024-11-11 12:53:19', NULL, 1, 0),
(87, '6732199261f9', 'Kakang', 'Dine in', '2024-11-11 14:49:54', NULL, 149, 0),
(88, '67321fb0f17c', 'Iman Sanjaya', 'Dine in', '2024-11-11 15:16:01', NULL, 92, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(1, 'rendi12', '69c796f5bbd1339f3ba3e18ce54fcc63'),
(3, 'user', 'ee11cbb19052e40b07aac0ca060c23ee');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `pendapatan`
--
ALTER TABLE `pendapatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pendapatan`
--
ALTER TABLE `pendapatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
