
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `produk` (
  `id` int NOT NULL,
  `nama_produk` varchar(225) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `harga` decimal(10,0) NOT NULL,
  `jenis` varchar(225) NOT NULL,
  `user_id` int NOT NULL,
  `foto` text NOT NULL,
  `qty` int NOT NULL
) ;



INSERT INTO `produk` (`id`, `nama_produk`, `deskripsi_produk`, `harga`, `jenis`, `user_id`, `foto`, `qty`) VALUES
(1, 'Produk', 'jds', 120000, 'Sayur', 1, 'time.png', 6),
(3, 'Produk', 'Lababa', 200000, 'Buah', 1, 'paypal.png', 3),
(4, 'Sawi', 'dasd', 120000, 'Sayur', 1, 'dana.png', 3),
(5, 'Tomat', 'Sayuran segar, kaya vitamin.', 5000, 'Sayuran', 1, 'vegetable-item-1.jpg', 10),
(6, 'Brokoli', 'Sayuran hijau yang kaya serat.', 7000, 'Sayuran', 1, 'vegetable-item-2.jpg', 15),
(7, 'Cabai', 'Bumbu masak yang pedas dan menggugah selera.', 3000, 'Bumbu', 1, 'vegetable-item-3.jpg', 20),
(8, 'Paprika', 'Sayuran yang manis dan berwarna-warni.', 8000, 'Sayuran', 1, 'vegetable-item-4.jpg', 12),
(9, 'Kentang', 'Sayuran yang bisa diolah menjadi berbagai hidangan.', 4000, 'Sayuran', 1, 'vegetable-item-5.jpg', 25),
(10, 'Sledri', 'Herba segar untuk menambah cita rasa masakan.', 6000, 'Herba', 1, 'vegetable-item-6.jpg', 18);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `id` int NOT NULL,
  `nama` varchar(225) NOT NULL,
  `alamat` text NOT NULL,
  `foto` varchar(225) NOT NULL,
  `deskripsi` text NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `telepon` char(14) NOT NULL
) ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `password`, `id`, `nama`, `alamat`, `foto`, `deskripsi`, `jenis_kelamin`, `telepon`) VALUES
('user@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, 'users', 'dsa', 'img/time.png', 'jajan', 'Laki-Laki', '98765');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
