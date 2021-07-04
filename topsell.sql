-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2017 at 11:13 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topsell`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `id_category` int(11) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(250) NOT NULL,
  `view` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `id_category`, `name`, `description`, `image`, `view`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Topsell Store', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eu fringilla nulla. In ut molestie nulla. Donec sem risus, tempus in imperdiet eget, commodo ac nisi. Quisque bibendum nibh posuere arcu gravida pellentesque. Curabitur feugiat elit sit amet dolor volutpat, et pharetra magna ullamcorper. Quisque mattis, libero id facilisis condimentum, nisl tellus condimentum odio, ut interdum augue lacus id leo. Integer quis nisl id lectus efficitur fringilla.</p>\r\n\r\n<p>Proin sit amet sapien a turpis lobortis consectetur. Sed porta vestibulum metus, at consequat ligula suscipit a. Vestibulum at risus id neque rhoncus facilisis. In iaculis sapien in metus ornare rhoncus. Pellentesque eu odio in mauris porta fermentum vitae ut leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc egestas turpis nec eleifend aliquam. Ut vel lorem a elit placerat egestas ac rutrum nunc.</p>\r\n', 'BLOG__topsell-store__20170822094137.jpg', 0, 0, '2017-08-22 02:41:37', '2017-08-22 02:41:37'),
(2, 1, 'Topsell Store', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eu fringilla nulla. In ut molestie nulla. Donec sem risus, tempus in imperdiet eget, commodo ac nisi. Quisque bibendum nibh posuere arcu gravida pellentesque. Curabitur feugiat elit sit amet dolor volutpat, et pharetra magna ullamcorper. Quisque mattis, libero id facilisis condimentum, nisl tellus condimentum odio, ut interdum augue lacus id leo. Integer quis nisl id lectus efficitur fringilla.</p>\r\n\r\n<p>Proin sit amet sapien a turpis lobortis consectetur. Sed porta vestibulum metus, at consequat ligula suscipit a. Vestibulum at risus id neque rhoncus facilisis. In iaculis sapien in metus ornare rhoncus. Pellentesque eu odio in mauris porta fermentum vitae ut leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc egestas turpis nec eleifend aliquam. Ut vel lorem a elit placerat egestas ac rutrum nunc.</p>\r\n', 'BLOG__topsell-store__20170822094308.jpg', 0, 0, '2017-08-22 02:43:08', '2017-08-22 02:43:08'),
(3, 1, 'Topsell Store', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eu fringilla nulla. In ut molestie nulla. Donec sem risus, tempus in imperdiet eget, commodo ac nisi. Quisque bibendum nibh posuere arcu gravida pellentesque. Curabitur feugiat elit sit amet dolor volutpat, et pharetra magna ullamcorper. Quisque mattis, libero id facilisis condimentum, nisl tellus condimentum odio, ut interdum augue lacus id leo. Integer quis nisl id lectus efficitur fringilla.</p>\r\n\r\n<p>Proin sit amet sapien a turpis lobortis consectetur. Sed porta vestibulum metus, at consequat ligula suscipit a. Vestibulum at risus id neque rhoncus facilisis. In iaculis sapien in metus ornare rhoncus. Pellentesque eu odio in mauris porta fermentum vitae ut leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc egestas turpis nec eleifend aliquam. Ut vel lorem a elit placerat egestas ac rutrum nunc.</p>\r\n', 'BLOG__topsell-store__20170822094337.jpg', 0, 0, '2017-08-22 02:43:37', '2017-08-22 02:43:37');

-- --------------------------------------------------------

--
-- Table structure for table `career`
--

CREATE TABLE `career` (
  `id` int(11) NOT NULL,
  `id_job` int(11) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `tlp` varchar(250) NOT NULL,
  `file_cv` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'News', 'news', '2017-08-22 02:40:33', '2017-08-22 02:40:33');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Kategori Produk 1', 'Nullam id dapibus sapien, in luctus eros. Aliquam ut libero et turpis posuere pulvinar. In eu sapien urna. Nulla ultrices efficitur sollicitudin. Donec semper felis non nisl ultricies, id tristique diam dapibus. Cras leo purus, finibus in erat a, posuere scelerisque sapien. Vivamus vestibulum lacinia ipsum, eget pellentesque metus dignissim ut. Nullam semper suscipit dui et imperdiet.', '2017-01-25 01:17:06', '2017-01-25 01:17:06'),
(2, 'Kategori Produk 2', 'Sed quam nisi, ultrices a massa sed, blandit consectetur nulla. Mauris efficitur elit a neque ultrices placerat. In vel felis arcu. Pellentesque ac auctor erat. Suspendisse potenti. Quisque cursus mattis risus, eu malesuada dolor scelerisque pretium. Quisque bibendum massa quis quam gravida cursus.', '2017-01-26 12:34:22', '2017-01-26 12:34:22'),
(3, 'Kategori Produk 3', 'Sed quam nisi, ultrices a massa sed, blandit consectetur nulla. Mauris efficitur elit a neque ultrices placerat. In vel felis arcu. Pellentesque ac auctor erat. Suspendisse potenti. Quisque cursus mattis risus, eu malesuada dolor scelerisque pretium. Quisque bibendum massa quis quam gravida cursus.', '2017-01-26 12:34:31', '2017-01-26 12:34:31'),
(4, 'Kategori Produk 4', 'Sed quam nisi, ultrices a massa sed, blandit consectetur nulla. Mauris efficitur elit a neque ultrices placerat. In vel felis arcu. Pellentesque ac auctor erat. Suspendisse potenti. Quisque cursus mattis risus, eu malesuada dolor scelerisque pretium. Quisque bibendum massa quis quam gravida cursus.', '2017-01-26 12:34:39', '2017-01-26 12:34:39'),
(5, 'Kategori Produk 5', 'Sed quam nisi, ultrices a massa sed, blandit consectetur nulla. Mauris efficitur elit a neque ultrices placerat. In vel felis arcu. Pellentesque ac auctor erat. Suspendisse potenti. Quisque cursus mattis risus, eu malesuada dolor scelerisque pretium. Quisque bibendum massa quis quam gravida cursus.', '2017-01-26 12:34:48', '2017-01-26 12:34:48'),
(6, 'Kategori Produk 6', 'Sed quam nisi, ultrices a massa sed, blandit consectetur nulla. Mauris efficitur elit a neque ultrices placerat. In vel felis arcu. Pellentesque ac auctor erat. Suspendisse potenti. Quisque cursus mattis risus, eu malesuada dolor scelerisque pretium. Quisque bibendum massa quis quam gravida cursus.', '2017-01-26 12:34:58', '2017-01-26 12:34:58'),
(7, 'Kategori Produk 7', 'Sed quam nisi, ultrices a massa sed, blandit consectetur nulla. Mauris efficitur elit a neque ultrices placerat. In vel felis arcu. Pellentesque ac auctor erat. Suspendisse potenti. Quisque cursus mattis risus, eu malesuada dolor scelerisque pretium. Quisque bibendum massa quis quam gravida cursus.', '2017-01-26 12:35:10', '2017-01-26 12:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `whatsapp` varchar(250) DEFAULT NULL,
  `bbm` varchar(250) DEFAULT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `opentime` text NOT NULL,
  `postalcode` varchar(100) NOT NULL,
  `gmap` varchar(250) DEFAULT NULL,
  `gmap_query` text NOT NULL,
  `description` longtext NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `logo_white` varchar(250) DEFAULT NULL,
  `logo_grayscale` text,
  `icon` varchar(250) DEFAULT NULL,
  `file_pricelist` text,
  `status` int(11) NOT NULL,
  `close_message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `name`, `email`, `phone`, `whatsapp`, `bbm`, `contact`, `address`, `opentime`, `postalcode`, `gmap`, `gmap_query`, `description`, `youtube`, `logo`, `logo_white`, `logo_grayscale`, `icon`, `file_pricelist`, `status`, `close_message`, `created_at`, `updated_at`) VALUES
(1, 'Top Sell', 'info@topsell.id', '+62-31-502-4981', '+62-813-3177-3177', '', '+62-813-3177-3177', 'Jl. Bhayangkara No.89, Jagalan, Magersari, Kota Mojokerto, Jawa Timur 61313, Indonesia', '<p><strong>Senin - Sabtu </strong>:<br />\r\n08.00 - 22:00<br />\r\n<strong>Minggu</strong> :<br />\r\n08.00 - 18:00</p>\r\n', '645321', '-7.471629000000002&&112.43713300000002', 'Jl. Bhayangkara No.89, Jagalan, Magersari, Kota Mojokerto, Jawa Timur 61313, Indonesia', '<p style="text-align: justify;"><em>Assalammu&#39;alaikum Warahmatullahi Wabarakatuh,</em></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eu fringilla nulla. In ut molestie nulla. Donec sem risus, tempus in imperdiet eget, commodo ac nisi. Quisque bibendum nibh posuere arcu gravida pellentesque. Curabitur feugiat elit sit amet dolor volutpat, et pharetra magna ullamcorper. Quisque mattis, libero id facilisis condimentum, nisl tellus condimentum odio, ut interdum augue lacus id leo. Integer quis nisl id lectus efficitur fringilla.</p>\r\n\r\n<p>Proin sit amet sapien a turpis lobortis consectetur. Sed porta vestibulum metus, at consequat ligula suscipit a. Vestibulum at risus id neque rhoncus facilisis. In iaculis sapien in metus ornare rhoncus. Pellentesque eu odio in mauris porta fermentum vitae ut leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc egestas turpis nec eleifend aliquam. Ut vel lorem a elit placerat egestas ac rutrum nunc.</p>\r\n', 'https://www.youtube.com/watch?v=RZUPU4KErBU', 'LOGO__20170815111521.png', 'LOGO_WHITE__20170815105747.png', 'GRAYSCLAE.png', 'ICON__20170815105713.png', 'PRICELIST__hayyu-syari-skin-clinic__20170801011538__nQl5iLyuMIeh.jpg', 0, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget condimentum nunc. Nullam sit amet luctus libero. Pellentesque quis mauris eu tellus elementum convallis vitae vitae ex. Aliquam vitae augue leo. Cras vehicula hendrerit mattis. Sed sed facilisis leo, sit amet vulputate lacus. Vestibulum eu sem vitae mauris finibus pulvinar id quis est. Sed faucibus interdum commodo. Pellentesque vel enim enim. Sed sagittis mi aliquam neque placerat, id ornare tellus tempus. Etiam interdum, leo quis aliquet suscipit, arcu leo rutrum felis, at ullamcorper diam felis non purus. Pellentesque a interdum lacus. Vivamus sed nisi vitae leo rhoncus facilisis. Sed vehicula sollicitudin risus a ultricies. Fusce dictum sagittis est at volutpat. Sed varius laoreet felis, non elementum leo malesuada id. Proin tempor pulvinar justo at feugiat. Phasellus at sodales justo, nec ornare risus. Duis suscipit ac risus eget viverra. Proin venenatis dolor rutrum, tincidunt est vel, feugiat ipsum. Curabitur eu feugiat felis. Nunc sollicitudin fermentum viverra. Aliquam vestibulum sit amet est nec cursus. Integer sodales cursus dapibus. Vestibulum interdum tellus eros, non volutpat nisl blandit sit amet. Nulla sit amet magna sem. Vivamus tempor sit amet quam ac rutrum. Fusce accumsan semper erat, et facilisis tellus suscipit a. Etiam ligula velit, varius sit amet consectetur vel, semper eu massa. Morbi blandit consequat dolor ac consectetur. Vivamus sit amet viverra diam. Suspendisse pharetra vestibulum metus, suscipit dignissim tortor fringilla eu.</p>\r\n', '2017-08-29 07:19:29', '2017-08-22 02:37:32');

-- --------------------------------------------------------

--
-- Table structure for table `download_pricelist`
--

CREATE TABLE `download_pricelist` (
  `id` int(11) NOT NULL,
  `token` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `readed` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download_pricelist`
--

INSERT INTO `download_pricelist` (`id`, `token`, `name`, `phone`, `email`, `readed`, `created_at`, `updated_at`) VALUES
(19, 'WYeHEvfh5XKvNXO6RC170216052941', 'Farhah', '085733750319', 'farhahmujahidah@gmail.com', 1, '2017-02-16 10:29:41', '2017-02-16 23:21:55'),
(18, 'zaWgSm8WLqrA2s1XQl170216052244', 'nurul andriani', '089633161711', 'pendrinurul@gmail.com', 1, '2017-02-16 10:22:44', '2017-02-16 23:21:55'),
(17, 'DGzV7aPVbo3ZKeuwWQ170216114624', 'Runiar', '081803162331', 'coldanov@yahoo.com', 1, '2017-02-16 04:46:24', '2017-02-16 23:21:55'),
(16, 'tKoujhJ0sU0Yt4fypO170216114313', 'arie', '081234826215', 'ariefandaprabowo@gmail.com', 1, '2017-02-16 04:43:13', '2017-02-16 23:21:55'),
(15, 'VP2LInaCicPMsAsPEt170216052411', 'Runiar', '081803162331', 'coldanov@yahoo.com', 1, '2017-02-15 22:24:11', '2017-02-16 04:22:47'),
(14, '8R89wyUyqkoIPrH0Nj170216041939', 'Hengky Irianto', '8563541404', 'hengky.dev@gmail.com', 1, '2017-02-15 21:19:39', '2017-02-15 21:25:53'),
(20, 'a9VOwqmFVLEONfB6yL170216053636', 'erlin oktaviani', '082245144400', 'oktavianierlin89@gmail.com', 1, '2017-02-16 10:36:36', '2017-02-16 23:21:55'),
(21, 'C6mMLoDu2r9wsIYGVF170216063018', 'erlin oktaviani', '082245144400', 'oktavianierlin89@gmail.com', 1, '2017-02-16 11:30:18', '2017-02-16 23:21:55'),
(22, 'XIwYrLu5pgaW1hx0cn170216064358', 'yunita', '085236605283', 'yunitaanoraga@gmail.com', 1, '2017-02-16 11:43:58', '2017-02-16 23:21:55'),
(23, 'Olzb50a52zM0RyrFHT170216081302', 'Meidy', '081230909052', 'meidyfitoki@gmail.com', 1, '2017-02-16 13:13:02', '2017-02-16 23:21:55'),
(24, '3Ys0aSG7rlN9qKXQ4G170216093509', 'Dessy Anggraeny', '085746899727', 'dessysabran@yahoo.co.id', 1, '2017-02-16 14:35:09', '2017-02-16 23:21:55'),
(25, 'VGszrGPdAH1Hr51AOD170216103645', 'Novi maria', '081357262922', 'Novimaria89@gmai.com', 1, '2017-02-16 15:36:45', '2017-02-16 23:21:55'),
(26, 'ikjpJeilwtwdCqNhpl170216114516', 'yulia', '083831432299', 'juliesusanto3121@gmail.com', 1, '2017-02-16 16:45:16', '2017-02-16 23:21:55'),
(27, 'j08JQw8aOoTpz2ULVJ170217122257', 'Malla', '081234435858', 'llarespati@gmail.com', 1, '2017-02-16 17:22:57', '2017-02-16 23:21:55'),
(28, 'M4sl9miSNo1Ru8OJQ5170217123408', 'Ira', '081216486800', 'iravori@gmail.com', 1, '2017-02-16 17:34:08', '2017-02-16 23:21:55'),
(29, 'cZmMnGuMQpOakvNNmb170217034055', 'santi', '08385704099i', 'susanti.iis10@gmail.com', 1, '2017-02-16 20:40:55', '2017-02-16 23:21:55'),
(30, 'rV7gU6BIe4xvJG2ZYh170217034251', 'santi', '083857040999', 'susanti.iis10@gmail.com', 1, '2017-02-16 20:42:51', '2017-02-16 23:21:55'),
(31, 'W7WlEchQ0BGe4BBPyA170217062239', 'tes developer aksa', '8563541404', 'hengky.dev@gmail.com', 1, '2017-02-16 23:22:39', '2017-02-16 23:23:19'),
(32, 'pc9UeLuHzAi7qWFwaG170217062617', 'Hengky Irianto', '+62 8563 5414 04', 'hengky.dev@gmail.com', 1, '2017-02-16 23:26:17', '2017-02-16 23:27:45'),
(33, 'lFOntc5fvf6WOYjgfD170217065821', 'Runiar', '081803162331', 'coldanov@yahoo.com', 1, '2017-02-16 23:58:21', '2017-02-18 18:47:33'),
(34, 'utLBA84y9ItVn32xgO170217081557', 'Fitri', '081934987681', 'Fitri99@gmail.com', 1, '2017-02-17 01:15:57', '2017-02-18 18:47:33'),
(35, 'TWiPlfL0oVBmZCa0wN170217092228', 'ulin', '085204103700', '09211112.liulinuharasyida@gmail.com', 1, '2017-02-17 02:22:28', '2017-02-18 18:47:33'),
(36, 'AswWg40jHNtukQiy0H170217103910', 'Rosita Simin', '0813-3272-1579', 'rosita.purwoko@gmail.com', 1, '2017-02-17 03:39:10', '2017-02-18 18:47:33'),
(37, 'Jn95Ue3clyLRver14v170217124707', 'mela tri windarti', '083831701600', 'sandikurniawan.orva@yahoo.com', 1, '2017-02-17 05:47:07', '2017-02-18 18:47:33'),
(38, 'vqnhutfcnxOuDONACj170217125045', 'mela tri windarti', '083831701600', 'Sandi_orvakurniawan@Yahoo.com', 1, '2017-02-17 05:50:45', '2017-02-18 18:47:33'),
(39, 'wr0BQdXPxtl0wzI6HT170217022521', 'Retno', '085233997688', 'bundapoetry@gmail.com', 1, '2017-02-17 07:25:21', '2017-02-18 18:47:33'),
(40, 'PK5FKjminEFJhSMFep170217024650', 'Fatlia', '087851477472', 'Liamadur@gmail.com', 1, '2017-02-17 07:46:50', '2017-02-18 18:47:33'),
(41, '02k6RTVDjA9cqqTLC1170217024743', 'Fatliyah', '087851477472', 'Liamadur@gmail.com', 1, '2017-02-17 07:47:43', '2017-02-18 18:47:33'),
(42, 'WwW9RIYLjPv4vYjQ2l170217025734', 'Dahlya Asri ', '081331361699', 'dahlyaasririnenggo@gmail.com', 1, '2017-02-17 07:57:34', '2017-02-18 18:47:33'),
(43, 'rA0dIFzc6oyhvBvmWT170217030217', 'Diyah Palupi Kuswijayati', '081330790278', 'kdiyahpalupi9@gmail.com', 1, '2017-02-17 08:02:17', '2017-02-18 18:47:33'),
(44, 'iuWW7BNVqu96lYbDCh170217033421', 'Anna aisyah', '081241989953', 'annaaisyah0@gmail.com', 1, '2017-02-17 08:34:21', '2017-02-18 18:47:33'),
(45, 'LR0C7Z6s8RyPOZlByt170217034055', 'Tri wahyuningsih', '08113215555', 'entic_arar@yahoo.com', 1, '2017-02-17 08:40:55', '2017-02-18 18:47:33'),
(46, 'txF96UWdutRbp4B9uS170217034152', 'Tri wahyuningsih', '08113215555', 'entic_arar@yahoo.com', 1, '2017-02-17 08:41:52', '2017-02-18 18:47:33'),
(47, 'Kq8F3kQbY2dYPnxAXo170217035104', 'lolita', '08883550696', 'loleejill@gmail.com', 1, '2017-02-17 08:51:04', '2017-02-18 18:47:33'),
(48, 'NHdlPkQP8oiezQJIsD170217035238', 'elly', '083831346070', 'ellysupriati01@gmail.com', 1, '2017-02-17 08:52:38', '2017-02-18 18:47:33'),
(49, 'zt3h5DRm7kRuPLisea170217040443', 'Rizsha Fidyanni ', '082142057537', 'rizsha.fidyanni@gmail.com', 1, '2017-02-17 09:04:43', '2017-02-18 18:47:33'),
(50, '1fTGx9wjfQVWweFivE170217041000', 'Myrna', '081333300817', 'Myrnabudi@ymail.com', 1, '2017-02-17 09:10:00', '2017-02-18 18:47:33'),
(51, 'HRzibI4EMRVlfw8Zbr170217041540', 'Widya ani arishanti', '083849246096', 'Widyaanaiarisanti@Gmail.com', 1, '2017-02-17 09:15:40', '2017-02-18 18:47:33'),
(52, 'GQb1YrfYuiSDMSXcKF170217044053', 'risma okta', '085269873386', 'rismaoktafiyanti@gmail.com', 1, '2017-02-17 09:40:53', '2017-02-18 18:47:33'),
(53, 'zpuWHdlpbvxTRpCQcx170217044808', 'Ariani', '085231820800', 'Mamaazkadevan@gmail.com', 1, '2017-02-17 09:48:08', '2017-02-18 18:47:33'),
(54, 'k3gsdty4meMYVu2k1j170217045024', 'Ariani', '085231820800', 'Mamaazkadevan@gmail.com', 1, '2017-02-17 09:50:24', '2017-02-18 18:47:33'),
(55, '2UOBbi7g5n4lfffFe3170217051358', 'Irra Dewi', '08121726889', 'irracdewi@gmail.com', 1, '2017-02-17 10:13:58', '2017-02-18 18:47:33'),
(56, '6HmGzQtxfN2Xuarrv8170217053349', 'Maria ulfa', '085732602360', 'Ria_gady@yahoo.com', 1, '2017-02-17 10:33:49', '2017-02-18 18:47:33'),
(57, '94lHqeDvsqS8R0d9nF170217053907', 'siti bulqis ariesanty', '081325351155', 'sbasby0479@gmail.com', 1, '2017-02-17 10:39:07', '2017-02-18 18:47:33'),
(58, 'zyKRvnrbRV0B89xAI6170217054038', 'Wahyu widayati', '082233084794', 'tatyana.gyasi@gmail.com', 1, '2017-02-17 10:40:38', '2017-02-18 18:47:33'),
(59, 'zjzr7tXbmww4YF4OZh170217054351', 'wahyu widayati', '082233084794', 'tatyana.gyasi@gmail.com', 1, '2017-02-17 10:43:51', '2017-02-18 18:47:33'),
(60, 'R97iRapEpM2lRiiZyK170217054756', 'Mia', '085750734410', 'mia3392@gmail.com', 1, '2017-02-17 10:47:56', '2017-02-18 18:47:33'),
(61, 'QMEFGWlydzrLyLskAk170217055538', 'Lucky puspitasari', '081938889008', 'purple_lupus@yahoo.com', 1, '2017-02-17 10:55:38', '2017-02-18 18:47:33'),
(62, 'ULfFMdMPAGKJb9zqB9170217061659', 'Faridatul Sholikha', '085731662611', 'Ariika37@yahoo.co.id', 1, '2017-02-17 11:16:59', '2017-02-18 18:47:33'),
(63, 'm1FC0CZJ8CRjdAj2Ws170217062526', 'Faridatul Sholikha', '085731662611', 'ariika37@yahoo.co.id', 1, '2017-02-17 11:25:26', '2017-02-18 18:47:33'),
(64, 'OcGAXWrexDaRu98w5V170217063447', 'Dyah', '081332758770', 'dyah.rn@gmail.com', 1, '2017-02-17 11:34:47', '2017-02-18 18:47:33'),
(65, 'VxB7d0HRUggWlyrzIB170217065255', 'amelia', '085648051889', 'rashasetiadji@gmail.com', 1, '2017-02-17 11:52:55', '2017-02-18 18:47:33'),
(66, 'rfxykUsdS4QYLpOCdD170217070136', 'Isdianti Yunani', '085732498891', 'isdiantifitria@yahoo.com', 1, '2017-02-17 12:01:36', '2017-02-18 18:47:33'),
(67, 'FNjYn1R3qZVZdwKwFx170217070247', 'Isti', '081239400866', 'Istiq175@gmail.com', 1, '2017-02-17 12:02:47', '2017-02-18 18:47:33'),
(68, '3QrqTMCjPs9YE6Fl5q170217072406', 'intan jalilah', '082331092334', 'lielahifascho88@gmail.com', 1, '2017-02-17 12:24:06', '2017-02-18 18:47:33'),
(69, 'foOwV8o77cg53XJIVH170217072935', 'dhani indrias', '081357905152', 'dhani.indrias@gmail.com', 1, '2017-02-17 12:29:35', '2017-02-18 18:47:33'),
(70, 'ZbAZuv7FptmmrdZS4R170217073200', 'Yuliastri', '085648128833', 'kuntari1507@gmail.com', 1, '2017-02-17 12:32:00', '2017-02-18 18:47:33'),
(71, '1jT174roux5YpJWA0A170217074420', 'Fitri', '081320204443', 'fhe.puspita@gmail.com', 1, '2017-02-17 12:44:20', '2017-02-18 18:47:33'),
(72, 'KdMN3vqwXXHtnfpI6l170217074924', 'Irma kalake', '08563194600', 'Irmakalake@gmail.co.id', 1, '2017-02-17 12:49:24', '2017-02-18 18:47:33'),
(73, 'V7f9d9y0AyiCsloBaK170217075325', 'Naretha', '085731341990', 'narethatrishinta@gmail.com', 1, '2017-02-17 12:53:25', '2017-02-18 18:47:33'),
(74, '19zwy8erH2jxv5E5uv170217075905', 'Naretha', '085731341990', 'narethatrishinta@gmail.com', 1, '2017-02-17 12:59:05', '2017-02-18 18:47:33'),
(75, 'U2cUbEq4KEibaX3FGt170217080138', 'dian', '085645166996', 'dianrossa@yahoo.com', 1, '2017-02-17 13:01:38', '2017-02-18 18:47:33'),
(76, 'Vb7DogZ1e1nWxZR0t7170217080204', 'Mei indahyani', '085655522062', 'Indayani_may@yahoo.com', 1, '2017-02-17 13:02:04', '2017-02-18 18:47:33'),
(77, 'ARjCrULqLBFfVdGRh2170217083834', 'ratri', '085231579777', 'ayrawid@yahoo.co.id', 1, '2017-02-17 13:38:34', '2017-02-18 18:47:33'),
(78, 'ZubmF8jrInU7rPHZjL170217085144', 'leny', '081377744516', 'lenyshelomitadewi@gmail.com', 1, '2017-02-17 13:51:44', '2017-02-18 18:47:33'),
(79, 'Q5zLywCiKydlCJpSPx170217085817', 'Dewi Puspita Rini', '081946266636', 'dewi_puspitarini@ymail.com', 1, '2017-02-17 13:58:17', '2017-02-18 18:47:33'),
(80, 'x66eJHuIkjdYPb8kXZ170217085922', 'Dewi Puspita Rini', '081946266636', 'dewi_puspitarini@ymail.com', 1, '2017-02-17 13:59:22', '2017-02-18 18:47:33'),
(81, 'TowJuZJyCwoiHTyzmp170217090052', 'lutfia', '08121719119', 'ssludfi@gmail.com', 1, '2017-02-17 14:00:52', '2017-02-18 18:47:33'),
(82, 'fZwzTdDXdW6Q5mvz9o170217090602', 'Adya P', '081331555635', 'Adya_p@gmail.com', 1, '2017-02-17 14:06:02', '2017-02-18 18:47:33'),
(83, '78vJB0n1BIRZRdvwoX170217092512', 'rosa arsi', '082232415251', 'rosa.arsi39@gmail.com', 1, '2017-02-17 14:25:12', '2017-02-18 18:47:33'),
(84, 'MvBx8dOvtDoqwKGtcX170217094149', 'Aida fikriyah', '08563452669', 'aidafikriyahh@gmail.com', 1, '2017-02-17 14:41:49', '2017-02-18 18:47:33'),
(85, 'WgsQPI6d9ZYuv0VnNL170217095033', 'Ilfi karichma yunita', '082234416424', 'ilfikarichmayunita@gmail.com', 1, '2017-02-17 14:50:33', '2017-02-18 18:47:33'),
(86, '3SeP8F9rTsWEbR8Y89170217095550', 'Triana', '08123156473', 'tsulistiari123@gmail.com', 1, '2017-02-17 14:55:50', '2017-02-18 18:47:33'),
(87, '9gz2jgI80Z39SkRlO5170217100924', 'Eva Carolina', '081231668001', 'caroline_rafva@yahoo.com', 1, '2017-02-17 15:09:24', '2017-02-18 18:47:33'),
(88, '8z0oxbg14dFdM2BuQL170217104714', 'ika ulya', '085706049780', 'ikaulya@yahoo.com', 1, '2017-02-17 15:47:14', '2017-02-18 18:47:33'),
(89, 'HnZU14UxMWKxTKnoUa170217104934', 'ika ulya', '085706049780', 'ikaulya@yahoo.com', 1, '2017-02-17 15:49:34', '2017-02-18 18:47:33'),
(90, 'oZXQasdttQoqdcrTSm170217112856', 'Wina Trisnawati', '085648543028', 'winatrisnawati.sby@gmail.com', 1, '2017-02-17 16:28:56', '2017-02-18 18:47:33'),
(91, '3LgS3mydTuaqYlN8TO170217113146', 'ANNY', '085101224453', 'nia.hadroty@gmail.com', 1, '2017-02-17 16:31:46', '2017-02-18 18:47:33'),
(92, 'd5jPD8i3U0gcMBbupj170217114100', 'Hei rodiah', '081234416100', 'Aurynanggara@gmail.com', 1, '2017-02-17 16:41:00', '2017-02-18 18:47:33'),
(93, '57acIv1fNBasQD8kSK170218121713', 'Ida ayu marini', '085731726089', 'Idaayumarini2@gmail.com', 1, '2017-02-17 17:17:13', '2017-02-18 18:47:33'),
(94, 'wJfPhpIfr1Mf7OpTTj170218122245', 'Ida ayu marini', '085731726089', 'Idaayumarini2@gmail.com', 1, '2017-02-17 17:22:45', '2017-02-18 18:47:33'),
(95, 'ZFWDjCdXR1cgipPoRS170218123519', 'Radita', '081237904919', 'Vikeardiani@gmail.com', 1, '2017-02-17 17:35:19', '2017-02-18 18:47:33'),
(96, 'RgKi9f7LZYqenTYEGq170218125248', 'Saulina sitorus', '081330261770', 'saulinasitorus98@yahoo.co.id', 1, '2017-02-17 17:52:48', '2017-02-18 18:47:33'),
(97, 'MFsbJSPMdR1AnC1WFr170218044548', 'Erni', '082233430050', 'ern_nee85@yahoo.com', 1, '2017-02-17 21:45:48', '2017-02-18 18:47:33'),
(98, 'VgXoVOz6LsV9AdItWM170218045356', 'yani indah', '087851584151', 'yaniindah88@gamail.com', 1, '2017-02-17 21:53:56', '2017-02-18 18:47:33'),
(99, 'j16TFgiDZDJN8wxdwu170218045858', 'indah', '087851584151', 'yaniindah88@gmail.com', 1, '2017-02-17 21:58:58', '2017-02-18 18:47:33'),
(100, '3f9wZ7QlTa2TB3aV1F170218050305', 'Maratus Zahro', '085785609393', 'marza_cute@yahoo.com', 1, '2017-02-17 22:03:05', '2017-02-18 18:47:33'),
(101, 'pes93xB10ggn2LywDR170218053908', 'Zainatul Mufarrikoh', '083849815519', 'zainatul89@gmail.com', 1, '2017-02-17 22:39:08', '2017-02-18 18:47:33'),
(102, '8RjTq3S5lHEEdEvgzp170218061215', 'Sendhy', '087880001811', 'tobe_no1@yahoo.co.id', 1, '2017-02-17 23:12:15', '2017-02-18 18:47:33'),
(103, 'aGjIDpOJvQTMEfMcCW170218062926', 'Dita', '082230253009', 'ditapharmacy05@gmail.com', 1, '2017-02-17 23:29:26', '2017-02-18 18:47:33'),
(104, 'qAs0WyqQIuKcdp0zjQ170218063534', 'Auliyaa', '081935162999', 'auleeyaa.prayitno@yahoo.com', 1, '2017-02-17 23:35:34', '2017-02-18 18:47:33'),
(105, '1BGFWoRDshYyNFxiJV170218065923', 'Fani', '081216532269', 'andansari218@live.com', 1, '2017-02-17 23:59:23', '2017-02-18 18:47:33'),
(106, 'OvLKHDEyo5mbhY255L170218070107', 'sari', '081703740859', 'sarisetiawan1973@gmail.com', 1, '2017-02-18 00:01:07', '2017-02-18 18:47:33'),
(107, 'Ze667Ilarh97kCp2Cd170218074126', 'Wiwik wahyuni', '081231749970', 'Lovelymama952@gmail.com', 1, '2017-02-18 00:41:26', '2017-02-18 18:47:33'),
(108, 's5Asmn3KbX1dsmnXsM170218091242', 'Anis', '083830089149', 'anis83.sa@gmail.com', 1, '2017-02-18 02:12:42', '2017-02-18 18:47:33'),
(109, 'ZAR4PcILWNbc4zNOFn170218093123', 'Ratna', '085729236979', 'Rara.humayraa@gmail.com', 1, '2017-02-18 02:31:23', '2017-02-18 18:47:33'),
(110, 'eVuIKl2vuaDRA9kW8G170218094032', 'Eka', '087889596039', 'cheya_cool@yahoo.com', 1, '2017-02-18 02:40:32', '2017-02-18 18:47:33'),
(111, '7jgfQzSltZh2TZX0ys170218094730', 'Risty rachmadany', '081230972013', 'Ristyrachmadany@gmail.com', 1, '2017-02-18 02:47:30', '2017-02-18 18:47:33'),
(112, 'qiygZmU99agc4sr5ys170218100346', 'Tini', '085745983746', 'Suhartiningsih_17@yahoo.com', 1, '2017-02-18 03:03:46', '2017-02-18 18:47:33'),
(113, 'sDEKs2CYBrYZ89r5RR170218101605', 'Mega', '082139656777', 'megayuliyanto@yahoo.co.id', 1, '2017-02-18 03:16:05', '2017-02-18 18:47:33'),
(114, 'URS0bVWmlgzK6OG0il170218104240', 'Rindri', '085649631361', 'rindrimyandarsari@gmail.com', 1, '2017-02-18 03:42:40', '2017-02-18 18:47:33'),
(115, 'Teulp8bsyNx0Gtc60E170218110908', 'Fenny Ranggadewi', '082139958222', 'ranggadewi77@gmail.com', 1, '2017-02-18 04:09:08', '2017-02-18 18:47:33'),
(116, 'H8oRCFtzrmeYWg4Tcg170218113024', 'Wahyu', '082244425712', 'wwawa85@gmail.com', 1, '2017-02-18 04:30:24', '2017-02-18 18:47:33'),
(117, 'dLJU3tBi0u3DU9UoYa170218114301', 'evi wulandari', '085730733305', 'elandri.260186@yahoo.co.id', 1, '2017-02-18 04:43:01', '2017-02-18 18:47:33'),
(118, 'dHMur2TvP0ZTgDzE2c170218121529', 'Lilis', '081330514189', 'sulistyawati.dewi@gmail.com', 1, '2017-02-18 05:15:29', '2017-02-18 18:47:33'),
(119, 'rmFh92CQN1Bgao60wq170218122908', 'Irra', '08121726889', 'irracdewi@gmail.com', 1, '2017-02-18 05:29:08', '2017-02-18 18:47:33'),
(120, '9JQIb7cwHO9iQFaBvg170218123254', 'Rizky O. Kartika', '085648235753', 'kikikartika333@gmail.com', 1, '2017-02-18 05:32:54', '2017-02-18 18:47:33'),
(121, 'iVRBCfq2pmYM0Qe1wz170218123407', 'Rizky O. Kartika', '085648235753', 'kikikartika333@gmail.com', 1, '2017-02-18 05:34:07', '2017-02-18 18:47:33'),
(122, 'JywcohjmEc9B1gQy14170218124551', 'yatijasmine', '081310111132', 'yatidsa@yahoo.co.id', 1, '2017-02-18 05:45:51', '2017-02-18 18:47:33'),
(123, 'Jb9CbxlpOyLEXgD2NW170218125958', 'festi', '082141516590', 'raharja_baykricell@yahoo.co.id', 1, '2017-02-18 05:59:58', '2017-02-18 18:47:33'),
(124, 'A9lB6dX5MiN1DNG1KV170218012832', 'Izza', '085733079050', 'izza.unair@gmail.com', 1, '2017-02-18 06:28:32', '2017-02-18 18:47:33'),
(125, 'nBPHZUyF9kLchUW7Bu170218014910', 'Tanty', '085334234213', 'tantysahara@gmail.com', 1, '2017-02-18 06:49:10', '2017-02-18 18:47:33'),
(126, 'zMnZBZNRnvH9Vs7Ehg170218021431', 'novi', '082233173907', 'novi.asha29@gmail.com', 1, '2017-02-18 07:14:31', '2017-02-18 18:47:33'),
(127, 'o5knbSghTyJEaxvXkG170218021438', 'swi aida amanti', '085853003007', 'aidaarianti87@gmail.com', 1, '2017-02-18 07:14:38', '2017-02-18 18:47:33'),
(128, 'Rjdc4JLhwVjtqJUehg170218021522', 'swi aida amanti', '085853003007', 'winda_manize@yahoo.com', 1, '2017-02-18 07:15:22', '2017-02-18 18:47:33'),
(129, '2qLsOU1TQR827PwOlj170218023528', 'Vani', '081354721088', 'vanilla.raisin@gmail.com', 1, '2017-02-18 07:35:28', '2017-02-18 18:47:33'),
(130, 'sEYErHjKcDlfgbALVa170218030106', 'Dessy', '085746899727', 'dessysabran@yahoo.co.id', 1, '2017-02-18 08:01:06', '2017-02-18 18:47:33'),
(131, 'a4BBDpneYgHP9qbczJ170218033532', 'Anita', '081230849508', 'anitasyafrida09@gmail.com', 1, '2017-02-18 08:35:32', '2017-02-18 18:47:33'),
(132, 'Tnjo1h5OYW9hZS4DbS170218033841', 'Maria dei aryanti', '083856224535', 'dwiaryanti_74@yahoo.com', 1, '2017-02-18 08:38:41', '2017-02-18 18:47:33'),
(133, 'bOOzM6P1P4klWJv0Zs170218035801', 'aina', '081703286814', 'aina.ratu.sanjaya@gmail.com', 1, '2017-02-18 08:58:01', '2017-02-18 18:47:33'),
(134, 'pLd7vKpzlmnTPgMm1y170218040143', 'Puri', '08563323290', 'poerianirahayu@yahoo.co.id', 1, '2017-02-18 09:01:43', '2017-02-18 18:47:33'),
(135, 'p1kj6qBQJ25ssklGtN170218040234', 'Puri', '08563323290', 'poerianirahayu@yahoo.co.id', 1, '2017-02-18 09:02:34', '2017-02-18 18:47:33'),
(136, 'bG07GS91fznpeN7Gjy170218040558', 'dini ', '081330729628', 'cleo.bumble@gmail.com', 1, '2017-02-18 09:05:58', '2017-02-18 18:47:33'),
(137, 'd9tajSSPRmEJJ4oNtk170218040712', 'tutik hida', '085755762630', 'tutik.hdyt@gmail.com', 1, '2017-02-18 09:07:12', '2017-02-18 18:47:33'),
(138, 'QHRqVlhwdDoMsurrMY170218040714', 'tutik hida', '085755762630', 'tutik.hdyt@gmail.com', 1, '2017-02-18 09:07:14', '2017-02-18 18:47:33'),
(139, 'KEhhmsj2uvQEw2IV0h170218041808', 'Mujiati dwi', '081232892850', 'muji.dokter@gmail.com', 1, '2017-02-18 09:18:08', '2017-02-18 18:47:33'),
(140, 'WmkV7NoniLritYMsV1170218042138', 'Mujiati dwi', '081232892850', 'muji.dokter@gmail.com', 1, '2017-02-18 09:21:38', '2017-02-18 18:47:33'),
(141, 'WUBemcWpAwJEVlP0S9170218045633', 'hartik', '085655112304', 'hartik09@gmail.com', 1, '2017-02-18 09:56:33', '2017-02-18 18:47:33'),
(142, 'BwKENLjlWIA6C5yxZT170218051341', 'Yuyun', '087846868646', 'nashwa.yuyun@gmail.com', 1, '2017-02-18 10:13:41', '2017-02-18 18:47:33'),
(143, 'hfkEv1JWcSCZmJKFPU170218052409', 'Zulfa', '085733044427', 'zulfa_ismail@yahoo.com', 1, '2017-02-18 10:24:09', '2017-02-18 18:47:33'),
(144, 'OvX2rl2Sp5D7TTZkcV170218054828', 'hartik', '085655112304', 'hartik09@gmail.com', 1, '2017-02-18 10:48:28', '2017-02-18 18:47:33'),
(145, 'wYFT5de5AR1ztlPBzQ170218063659', 'Utami', '08123101175', 'utamikhrisnawati@yahoo.com', 1, '2017-02-18 11:36:59', '2017-02-18 18:47:33'),
(146, 'yWeR91qQGX8Ie5B6J4170218080525', 'Dia fijayanti', '081234423573', 'diafijayanti81@gmail.com', 1, '2017-02-18 13:05:25', '2017-02-18 18:47:33'),
(147, 'Vfv5mahQWwvD8HXXFR170218100933', 'Cita ', '081522749020', 'cita.bluenahl@gmail.com', 1, '2017-02-18 15:09:33', '2017-02-18 18:47:33'),
(148, '4NGcpGkBrPjRv7CxQT170218101528', 'Siti yulaekha', '081224012550', 'Yuliandri433@gmail.com', 1, '2017-02-18 15:15:28', '2017-02-18 18:47:33'),
(149, 'FPZtYSgvfs8dozjX1a170218103854', 'indah', '085299536622', 'indahnurmalaali@yahoo.co.id', 1, '2017-02-18 15:38:54', '2017-02-18 18:47:33'),
(150, 'chuYSWavh5T3lB05RA170218104048', 'Erlin', '081553528092', 'erlina.renai@gmail.com', 1, '2017-02-18 15:40:48', '2017-02-18 18:47:33'),
(151, 'dekmFHxBWlAE9oRbYO170218104333', 'Yusi', '08123368831', 'Zusi.fitri@gmail.com', 1, '2017-02-18 15:43:33', '2017-02-18 18:47:33'),
(152, 'mcJuzOUTzFcmR0UN6R170218104548', 'Erlin', '081553528092', 'erlina.renai@gmail.com', 1, '2017-02-18 15:45:48', '2017-02-18 18:47:33'),
(153, 'n7bShf2SrtCPHYCxE9170218104552', 'Henny', '082234578779', 'Maheerghani1980@gmail.co.id', 1, '2017-02-18 15:45:52', '2017-02-18 18:47:33'),
(154, 'SoOTNmm5PnulfoVkdb170218104718', 'Henny ', '082234578779', 'Maheerghani1980@gmail.com', 1, '2017-02-18 15:47:18', '2017-02-18 18:47:33'),
(155, 'M5VeWW2ReLqYr7YKPK170219020345', 'Naimah kusuma', '085728228776', 'Naesevennisty@gmail.com', 1, '2017-02-18 19:03:45', '2017-02-19 15:12:28'),
(156, 'lwtXHdOypBBpZAqf6K170219024557', 'ika ulya', '085706049780', 'ikaulya@yahoo.com', 1, '2017-02-18 19:45:57', '2017-02-19 15:12:28'),
(157, 'Dxq7SrgbP1VbbRcbjX170219084955', 'Devi', '082141773838', 'devianggitaputri@gmail.com', 1, '2017-02-19 01:49:55', '2017-02-19 15:12:28'),
(158, 'I3ygluGrEZt1fh8dCO170219100914', 'Esti', '081803131815', 'estisusprayantie@yahoo.com', 1, '2017-02-19 03:09:14', '2017-02-19 15:12:28'),
(159, 'ujUPHwuVNrSrsLtnj5170219110824', 'chusnia', '085731325951', 'chusnia.cs@gmail.com', 1, '2017-02-19 04:08:24', '2017-02-19 15:12:28'),
(160, 'zIE93gFETA5tu5bbHy170219111305', 'Evi Rachmawati', '+62 822-8180-8057', 'er.4fandi@gmail.com', 1, '2017-02-19 04:13:05', '2017-02-19 15:12:28'),
(161, 'p9Y074fmr5mnuM9z1m170219112316', 'Nur Aini Susanti', '08563221179', 'nursusanti@unesa.ac.id', 1, '2017-02-19 04:23:16', '2017-02-19 15:12:28'),
(162, 'fbKmimQ58sGYBkArLK170219115823', 'ari', '087856671135', 'ari.purwanti91@gmail.com', 1, '2017-02-19 04:58:23', '2017-02-19 15:12:28'),
(163, 'nDCGRn7Gg4KWcGGMZa170219121510', 'Nila', '085727135080', 'nila.puspitasari12@gmail.com', 1, '2017-02-19 05:15:10', '2017-02-19 15:12:28'),
(164, 'ElKmN4hxV33dEAeoh2170219122310', 'Nuning', '087856662161', 'n_esha@yahoo.com', 1, '2017-02-19 05:23:10', '2017-02-19 15:12:28'),
(165, 'OYAlz7Jy2ofPNkZVCd170219125824', 'Lisa', '082231438785', 'monalisa.betty@yahoo.com', 1, '2017-02-19 05:58:24', '2017-02-19 15:12:28'),
(166, 'qXtqsrgbsE1Jrt3Rme170219011335', 'Lulut', '081230203965', 'lulutkus@yahoo.com', 1, '2017-02-19 06:13:35', '2017-02-19 15:12:28'),
(167, 'ZKVpcz3dZI9V8WiSNP170219012653', 'yudy', '082131480959', 'bundaarfi11@gmail.com', 1, '2017-02-19 06:26:53', '2017-02-19 15:12:28'),
(168, 'rhbVX29SWPjwuRMY4L170219021602', 'Salafera', '081553100531', 'salaferahpas@gmail.com', 1, '2017-02-19 07:16:02', '2017-02-19 15:12:28'),
(169, 'qbaLzsvERNcalLWFRy170219022557', 'Mugi Rahayu', '08993330027', 'Mugi050580@gmail.com', 1, '2017-02-19 07:25:57', '2017-02-19 15:12:28'),
(170, 'MkAbDaZX0wG7LfWuf8170219022708', 'Pipit ', '085736495533', 'erma_wita@yahoo.com', 1, '2017-02-19 07:27:08', '2017-02-19 15:12:28'),
(171, 'VWFI6TrlljyJjCqB04170219025317', 'Dian nofita', '081311390933', 'Nobinabita@yahoo.com', 1, '2017-02-19 07:53:17', '2017-02-19 15:12:28'),
(172, 'N4NJXgtodUWBa2nfZ1170219025337', 'ika', '082232339516', 'ikayuniastuti90@yahoo.co.id', 1, '2017-02-19 07:53:37', '2017-02-19 15:12:28'),
(173, 'WphoyGWcVYR5Wg9dNA170219025924', 'Ika', 'O82232339516', 'Ikayuniastuti90@yahoo.co.id', 1, '2017-02-19 07:59:24', '2017-02-19 15:12:28'),
(174, 'VHfIfuL5JFi3SD4UGM170219025941', 'Ika', 'O82232339516', 'Ikayuniastuti90@yahoo.co.id', 1, '2017-02-19 07:59:41', '2017-02-19 15:12:28'),
(175, 'bAdu6CuZmDQ1Gd6V78170219030606', 'Ludya', '085853133379', 'ludyaanggraeni@gmail.com', 1, '2017-02-19 08:06:06', '2017-02-19 15:12:28'),
(176, '44DVXXcUq080SjUDEU170219034531', 'Sisca', '081235533066', 's15ca_01@yahoo.co.id', 1, '2017-02-19 08:45:31', '2017-02-19 15:12:28'),
(177, '5uEetAmVxnSLIR8Tbm170219034604', 'Linda', '085250218431', 'Leendhaagoestin69@gmail.com', 1, '2017-02-19 08:46:04', '2017-02-19 15:12:28'),
(178, 'nNLO1ZTLtcP5LJaMCa170219034815', 'Linda', '08570723778', 'Loveher2005@hotmail.com', 1, '2017-02-19 08:48:15', '2017-02-19 15:12:28'),
(179, 'ruLEYENeI48a8wNG99170219035326', 'Fifin', '083853529948', 'stegiandesolator99@gmail.com', 1, '2017-02-19 08:53:26', '2017-02-19 15:12:28'),
(180, 'lLbuntyIRITiPiQlbL170219035616', 'Fifin', '083853529948', 'stegiandesolator99@gmail.com', 1, '2017-02-19 08:56:16', '2017-02-19 15:12:28'),
(181, 'mXvnarcFkfLZlbKZio170219041329', 'dewi', '082332398881', 'olivermakaio12@gmail.com', 1, '2017-02-19 09:13:29', '2017-02-19 15:12:28'),
(182, 'kCTgl7tfXNMpaOC9ET170219041624', 'Chusniah', '085811810509', 'Chusniah_1982@yahoo.co.id', 1, '2017-02-19 09:16:24', '2017-02-19 15:12:28'),
(183, 'gjvxtbJpSzDuELkLrx170219050020', 'noor wandari', '085729473587', 'nuriflisyila26@gmail.com', 1, '2017-02-19 10:00:20', '2017-02-19 15:12:28'),
(184, 'Tr8qs4my6NtaWsXDEv170219053036', 'Naretha ', '08883314500', 'narethatrishinta@gmail.com', 1, '2017-02-19 10:30:36', '2017-02-19 15:12:28'),
(185, 'OZW7hgQauKMgfxuVp9170219053453', 'Desy saraswati', '085773581420', 'desaraswati30@gmail.com', 1, '2017-02-19 10:34:53', '2017-02-19 15:12:28'),
(186, 'cyi9lJx9Vh3Wm9scwz170219053811', 'Naretha', '08883314500', 'narethatrishinta@gmail.com', 1, '2017-02-19 10:38:11', '2017-02-19 15:12:28'),
(187, '3FVZSDWc1VEZxp4KkF170219054524', 'Nadiroch.s', '081803985992', 'nadiroch021969@gmail.com', 1, '2017-02-19 10:45:24', '2017-02-19 15:12:28'),
(188, '8t7SeLP5PRtxrk9ZKS170219055129', 'agneszia', '085231144961', 'agnesziaanggi@gmail.com', 1, '2017-02-19 10:51:29', '2017-02-19 15:12:28'),
(189, 'AOIxiPHt7b2BVJ5NBY170219055256', 'Desy', '085773581420', 'desaraswati30@gmail.com', 1, '2017-02-19 10:52:56', '2017-02-19 15:12:28'),
(190, 'uDI1E64UPEhPIuTLM7170219060024', 'isti', '089677187874', 'Tiyasistiatus93@gmail.com', 1, '2017-02-19 11:00:24', '2017-02-19 15:12:28'),
(191, 'Tmsv6VZFOHYn2h7N2T170219060707', 'Erna', '087854502830', 'ernajust@yahoo.com', 1, '2017-02-19 11:07:08', '2017-02-19 15:12:28'),
(192, 'LOU6trbGW93MOe5xE9170219065724', 'Ratna', '085733585652', 'Ratnatussaidah@gmail.com', 1, '2017-02-19 11:57:24', '2017-02-19 15:12:28'),
(193, 'ZAjQ91sB859VjJzk4J170219070401', 'Ulum mabruroh', '085649649733', 'ulum_mabruroh@yahoo.com', 1, '2017-02-19 12:04:01', '2017-02-19 15:12:28'),
(194, 'bi27rHJUDXyiIzYpXm170219070418', 'Nur azizah', '081703407799', 'nurazizah.sdkhadijah@gmail.com', 1, '2017-02-19 12:04:18', '2017-02-19 15:12:28'),
(195, 'HYIJwhISVBQ21mUozO170219070446', 'Handayani', '083849458993', 'hani.imout31@gmail.com', 1, '2017-02-19 12:04:46', '2017-02-19 15:12:28'),
(196, 'bWotQQixptpywh7ADC170219072041', 'Ayik', '081803162331', 'Macwoc@gmail.com', 1, '2017-02-19 12:20:41', '2017-02-19 15:12:28'),
(197, 'n3dM8fS2qjosnLrY4e170219073118', 'Puri', '08563323290', 'poerianirahayu@yahoo.co.id', 1, '2017-02-19 12:31:18', '2017-02-19 15:12:28'),
(198, 'W1qIfSagympMCNgzxE170219073136', 'Luluk ainiyah', '085733832589', 'Lulukainyahsurabaya@gmail.com', 1, '2017-02-19 12:31:36', '2017-02-19 15:12:28'),
(199, 'kmEy3ZEJpf9BTcvnob170219073211', 'Ani', '08563323290', 'poerianirahayu@yahoo.co.id', 1, '2017-02-19 12:32:11', '2017-02-19 15:12:28'),
(200, 'D8wDylT0g1lpdfOid0170219073721', 'Luluk ainiyah', '085733832589', 'Lulukainiyahsurabaya@gmail.com', 1, '2017-02-19 12:37:21', '2017-02-19 15:12:28'),
(201, 'kb7sW4ablOd91qibg9170219080244', 'lilik', '085648843307', 'lilikquariuz@ymail.com', 1, '2017-02-19 13:02:44', '2017-02-19 15:12:28'),
(202, '4W2rxZLlNWvPK7PLLT170219080526', 'Yulia', '085648879117', 'Sybilcantik@gmail.com', 1, '2017-02-19 13:05:26', '2017-02-19 15:12:28'),
(203, 'cLGgO0pn4fT5UIpF4e170219081321', 'Fara Mozya', '085730303090', 'fmozya@gmail.com', 1, '2017-02-19 13:13:21', '2017-02-19 15:12:28'),
(204, 'Orfhyf00iQF7f3mRQj170219081422', 'Nevada', '085645353239', 'inineva@yahoo.com', 1, '2017-02-19 13:14:22', '2017-02-19 15:12:28'),
(205, 'KMZEAzSfMxpxXTBHB9170219082128', 'Fara Mozya', '085730303090', 'fmozya@gmail.com', 1, '2017-02-19 13:21:28', '2017-02-19 15:12:28'),
(206, 'J4UVuUkG2MmrslPj5s170219084133', 'Widya ani arishanti', '083849246096', 'Widyaanaiarisanti@Gmail.com', 1, '2017-02-19 13:41:33', '2017-02-19 15:12:28'),
(207, 'IwLxvWoxhbs1hTRx8n170219084333', 'Widya ani arishanti', '083849246096', 'Widyaanaiarisanti@Gmail.com', 1, '2017-02-19 13:43:33', '2017-02-19 15:12:28'),
(208, 'lDGE50krlRQ6Hg5M2c170219085746', 'Santi Indah', '08123589587', 'Santisatrio@yahoo.com', 1, '2017-02-19 13:57:46', '2017-02-19 15:12:28'),
(209, 'mMUPNF3cdshsqpf2Ly170219090436', 'Era', '081703456400', 'Erasetyawati@gmail.com', 1, '2017-02-19 14:04:36', '2017-02-19 15:12:28'),
(210, 'nM2N25j4FUf8aiHk98170219090947', 'Ika', '081553969492', 'ikasulis82@gmail.com', 1, '2017-02-19 14:09:47', '2017-02-19 15:12:28'),
(211, 'dvx9hPfVOoyPs3Ezdp170219092826', 'yani indah', '087851584151', 'yaniibdah88@gmail.com', 1, '2017-02-19 14:28:26', '2017-02-19 15:12:28'),
(212, 'B2duLjyNoq4PHuvYg9170219093013', 'yani ', '087851584151', 'yaniindah88@gmail.com', 1, '2017-02-19 14:30:13', '2017-02-19 15:12:28'),
(213, 'yqhovWSCZYOxz0tMxs170219094353', 'Endah tri w', '087851474649', 'ndah3wulandari89@gmail.com', 1, '2017-02-19 14:43:53', '2017-02-19 15:12:28'),
(214, 'IiRKSwgMN3pcsu5BPg170219101734', 'fitrah', '085257542388', 'hd.firsyah@gmail.com', 1, '2017-02-19 15:17:34', '2017-02-19 15:59:25'),
(215, 'YF7LaL9jpASOk5n952170219101907', 'Za''imatunnisa', '085649174109', 'nisa4109@gmail.com', 1, '2017-02-19 15:19:07', '2017-02-19 15:59:25'),
(216, '88Y06iVYjdVOZAoz2B170219103514', 'endah', '08179337238', '3nda4s@gmail.com', 1, '2017-02-19 15:35:14', '2017-02-19 15:59:25'),
(217, 'C8QESXQqE5XcdytH9J170219112123', 'Ika', '08113179111', 'Tokomooie@gmail.com', 1, '2017-02-19 16:21:23', '2017-02-20 14:21:15'),
(218, '4YNQU6kuZmnbijBurA170219112359', 'fitria sari', '085733236499', 'fitriasari643@gmail.com', 1, '2017-02-19 16:23:59', '2017-02-20 14:21:15'),
(219, 'icoCnjNU9NpS1nxhaY170219114412', 'Fika Rahmawati', '085852087331', 'fikarahmawati45@gmail.com', 1, '2017-02-19 16:44:12', '2017-02-20 14:21:15'),
(220, 'GcY1WJJCfA5q3k7swI170220010223', 'samsiati', '085791297614', 'samsiati88@yahoo.com', 1, '2017-02-19 18:02:23', '2017-02-20 14:21:15'),
(221, 'PEpgKVmCWkZrqwZgNy170220041443', 'Anie', '081234520982', 'anieastutikusmana69994@gmail.com', 1, '2017-02-19 21:14:43', '2017-02-20 14:21:15'),
(222, 'b1HaDZqDF6RABj2hxt170220050812', 'juli', '08113112776', 'juli.arch94@yahoo.co.id', 1, '2017-02-19 22:08:12', '2017-02-20 14:21:15'),
(223, 'rIr496IMRRrCqxWKlG170220050915', 'juli', '08113112776', 'juli.arch94@yahoo.co.id', 1, '2017-02-19 22:09:15', '2017-02-20 14:21:15'),
(224, 'zCJlb8huM3sYSh2VSV170220054843', 'Ernawati', '081357704085', 'Ernawati051982@gmail.com', 1, '2017-02-19 22:48:43', '2017-02-20 14:21:15'),
(225, 'hXd6Q8qvB6AzazBavB170220055557', 'Rohma', '081230110180', 'Kezia.hayyuu@yahoo.co.id', 1, '2017-02-19 22:55:58', '2017-02-20 14:21:15'),
(226, 'Luy4PKrvlNjI7abPMN170220055658', 'Rohma', '081230110180', 'Kezia.hayyuu@yahoo.co.id', 1, '2017-02-19 22:56:58', '2017-02-20 14:21:15'),
(227, 'D6rlVkWscedQ92TtGL170220071015', 'Danar', '081331098021', 'depe.es1@gmail.com', 1, '2017-02-20 00:10:15', '2017-02-20 14:21:15'),
(228, 'ztugwnWnYIJsBy1WmV170220080047', 'siti faridha', '08170101458', 'Sitifaridha419@yahoo.co.id', 1, '2017-02-20 01:00:47', '2017-02-20 14:21:15'),
(229, 'O1PQnWLZ14ifDFwveC170220083303', 'Arisa', '082233227788', 'Deltuariesa@gmail.com', 1, '2017-02-20 01:33:03', '2017-02-20 14:21:15'),
(230, 'tEiJ9K4hzsleTpSX5S170220083723', 'Sari asih', '081217995797', 'sariasih870@gmail.com', 1, '2017-02-20 01:37:23', '2017-02-20 14:21:15'),
(231, 'tDU1jHmDDZ7UJp4ESh170220104807', 'Shinta permatasari', '085733628001', 'Shintapermatasari@gmail.com', 1, '2017-02-20 03:48:07', '2017-02-20 14:21:15'),
(232, 'hMIGOXaVDdFVOxfvm4170220112045', 'firdha', '085748990879', 'yunizarfirdha@gmail.com', 1, '2017-02-20 04:20:45', '2017-02-20 14:21:15'),
(233, 'nVhOXS7d3MHS1IKTOW170220114743', 'endah retno', '082141590803', 'zafit367@gmail.com', 1, '2017-02-20 04:47:43', '2017-02-20 14:21:15'),
(234, 'Ip0mEpbBVpb77BeRfI170220120624', 'Dea', '081330448661', 'DZA_orange@yahoo.com', 1, '2017-02-20 05:06:24', '2017-02-20 14:21:15'),
(235, 'QMsA3tCrExkDIk1zQt170220120906', 'yeni', '081330338857', 'yeni_wardhani@yahoo.co.id', 1, '2017-02-20 05:09:06', '2017-02-20 14:21:15'),
(236, 'DZ63ZrgOfYbwLWctTw170220121143', 'masrini', '082244431285', 'masrini@yahoo.com', 1, '2017-02-20 05:11:43', '2017-02-20 14:21:15'),
(237, 'KvgWjvPpNnXrmB552S170220122949', 'eka sabrina', '087854624166', 'ekasabrinayanti@gmail.com', 1, '2017-02-20 05:29:49', '2017-02-20 14:21:15'),
(238, 'eSHCNyqLbneLlLmnZs170220123426', 'Risna', '085606515828', 'Risnanurwanti@gmail.com', 1, '2017-02-20 05:34:26', '2017-02-20 14:21:15'),
(239, 'hyOwtyDP1z8HP1ZE7O170220124612', 'Aira', '087701015260', 'Rizky.030688@gmail.com', 1, '2017-02-20 05:46:12', '2017-02-20 14:21:15'),
(240, '7eQ1Vivt4iL8Qs097L170220010119', 'Tika', '081333362141', 'tikohayu@gmail.com', 1, '2017-02-20 06:01:19', '2017-02-20 14:21:15'),
(241, 'CINZ19rErt3GaBq4M9170220011031', 'Wiwik Ima', '082245270028', 'ima_pirangga@yahoo.com', 1, '2017-02-20 06:10:31', '2017-02-20 14:21:15'),
(242, 'osx1OducNTvP2zXQSv170220012357', 'Linda', '081803055466', 'lindasagita.1981@gmail.com', 1, '2017-02-20 06:23:57', '2017-02-20 14:21:15'),
(243, 'c7gSsfP8YOogaHerep170220020321', 'munadiya', '085145300169', 'munadiyah.ak1@gmail.com', 1, '2017-02-20 07:03:21', '2017-02-20 14:21:15'),
(244, 'K3arUYPOBshzYzVm3p170220022806', 'Rahayu', '085755559092', 'icubedah@gmail.com', 1, '2017-02-20 07:28:06', '2017-02-20 14:21:15'),
(245, 'ZC01bg7Cos8Am3GBrp170220023353', 'Kustia', '08881879382', 'retnokustia@gmail.com', 1, '2017-02-20 07:33:53', '2017-02-20 14:21:15'),
(246, 'D7ZbBCXTwFn5seVwEh170220031235', 'ERNA', '085234258140', 'ernashanum@gmail.com', 1, '2017-02-20 08:12:35', '2017-02-20 14:21:15'),
(247, 'VviEHUyaNFXkKU9WMh170220031742', 'Olive', '081252985995', 'oliphe7@gmail.com', 1, '2017-02-20 08:17:42', '2017-02-20 14:21:15'),
(248, 'UbanUJ8WkJp2SgW3UY170220032352', 'sulis', '089686841987', 'chuliz_potter@yahoo.com', 1, '2017-02-20 08:23:52', '2017-02-20 14:21:15'),
(249, 'lFsRH63vCoYBcHAk7e170220032417', 'risma anita ', '085645446544', 'dimassslohan@yahoo.com', 1, '2017-02-20 08:24:17', '2017-02-20 14:21:15'),
(250, 'YlQhWge76WLBuRa8Wa170220034724', 'herlis yunita sari', '081331910400', 'dsmuggirl17@gmail.com', 1, '2017-02-20 08:47:24', '2017-02-20 14:21:15'),
(251, '8lBuH9d5H2Nl4ALMJL170220035859', 'Nova siregar', '082140466891', 'novasiregarritonga@yahoo.co.id', 1, '2017-02-20 08:58:59', '2017-02-20 14:21:15'),
(252, '8hwIjb7vDRb5hhAnz4170220040012', 'Faridah', '082298137811', 'Hellofaridah19@gmail.com', 1, '2017-02-20 09:00:12', '2017-02-20 14:21:15'),
(253, 'Ute9cyfI1W1kPFgG39170220040133', 'Tintiz', '089517692238', 'Tieszmow@gmail.com', 1, '2017-02-20 09:01:33', '2017-02-20 14:21:15'),
(254, 'i3NFWX93GzfdUbY5g8170220040715', 'Rahma Ayu', '082233150518', 'merahdelima001@yahoo.com', 1, '2017-02-20 09:07:15', '2017-02-20 14:21:15'),
(255, 'IK2unpwyzgfgbS6Mn2170220041358', 'Wahyu', '08563190303', 'wahyu.rspti@gmail.com', 1, '2017-02-20 09:13:58', '2017-02-20 14:21:15'),
(256, 'aWj25xcVVh0PXW0zyL170220041412', 'Rur', '09191', 'Coldanov@yahoo.com', 1, '2017-02-20 09:14:12', '2017-02-20 14:21:15'),
(257, 'hma0rzabU5LGhd34Sk170220041453', 'Derry Octavianti', '081558000248', 'derryoctavianti@gmail.com', 1, '2017-02-20 09:14:53', '2017-02-20 14:21:15'),
(258, 'zRLXTKdt9CQ320CiON170220041524', 'dian kusumawrdani', '08563429548', 'deekusumawardani@gmail.com', 1, '2017-02-20 09:15:24', '2017-02-20 14:21:15'),
(259, 'riHy5OmRcCcdnq9FiH170220045511', 'Ulin', '081235522908', 'Ulien_nabil@yahoo.com', 1, '2017-02-20 09:55:11', '2017-02-20 14:21:15'),
(260, 'ypzEVSllnyvx61iCjq170220052639', 'Hannah', '08175253404', 'Hannahinferne@gmail.com', 1, '2017-02-20 10:26:39', '2017-02-20 14:21:15'),
(261, 'nfWYeDLUATLB3rMClw170220054900', 'Dila', '081938577487', 'Dilalindon@gmail.com', 1, '2017-02-20 10:49:00', '2017-02-20 14:21:15'),
(262, 'w6WjqdXNr6HH5aaVse170220055052', 'Retno', '085746443100', 'puspitoretno9@gmail.com', 1, '2017-02-20 10:50:52', '2017-02-20 14:21:15'),
(263, 'IkQIKRMDMVGYmcsZbG170220055749', 'linda', '081330153995', 'dokdev09@gmail.com', 1, '2017-02-20 10:57:49', '2017-02-20 14:21:15'),
(264, '7W0aR34tfRIK8vO6lS170220060838', 'Dian Puspitasari ', '081553120888', 'dhieyand_piets@yahoo.com', 1, '2017-02-20 11:08:38', '2017-02-20 14:21:15'),
(265, 'vJ10pkVIETG1hggkv8170220064505', 'indhira', '081330605586', 'in_diera@yahoo.com', 1, '2017-02-20 11:45:05', '2017-02-20 14:21:15'),
(266, 'dO4QGEqsNxOIjVVb6p170220070127', 'Hdjs', '0818031623173', 'Coldanov@yahoo.com', 1, '2017-02-20 12:01:27', '2017-02-20 14:21:15'),
(267, 'h8kHQeVJE1StWoAQNI170220070723', 'elok', '082131655959', 'seazha2014@gmail.com', 1, '2017-02-20 12:07:23', '2017-02-20 14:21:15'),
(268, 'de77phAT1AlhDqPz13170220074041', 'nana', '081234344134', 'zeze.zweety@gmail.com', 1, '2017-02-20 12:40:41', '2017-02-20 14:21:15'),
(269, 'i2wbcSAvB4dVKAmRkC170220075436', 'Nining Irawati', '085233109112', 'niningira0705@gmail.com', 1, '2017-02-20 12:54:36', '2017-02-20 14:21:15'),
(270, '6RUCUuPiZrPgf4ibsc170220081828', 'maria', '081553335850', 'mar_dvega@yahoo.co.id', 1, '2017-02-20 13:18:28', '2017-02-20 14:21:15'),
(271, 'HR7FH4XT5bqGcTRvo1170220084125', 'frida', '082231432496 ', 'lathifahmufridah@yahoo.com', 1, '2017-02-20 13:41:25', '2017-02-20 14:21:15'),
(272, 'aWLiwdtnBvOGe0zCaM170220084310', 'Sulistin agustina', '08155007869', 'sulistin_agustina@yahoo.co.id', 1, '2017-02-20 13:43:10', '2017-02-20 14:21:15'),
(273, 'dwGu06bxs4SE22TdEF170220090721', 'Arie', '081333273236', 'ariekusumodewi.ners35@gmail.com', 1, '2017-02-20 14:07:21', '2017-02-20 14:21:15'),
(274, 'as2DSIUMVi0GdFBfED170220091117', 'lulu', '081330043248', 'lwahyuningwuri123@gmail.com', 1, '2017-02-20 14:11:17', '2017-02-20 14:21:15'),
(275, 'aDZkZIVYLdQxv6xcF7170220091539', 'yuliati', '081333006620', 'yuliatiwicaksono31@gmail.com', 1, '2017-02-20 14:15:39', '2017-02-20 14:21:15'),
(276, 'ZWdUkZlNIaCuqvFGZH170220093834', 'Dewi Puspita Rini', '081946266636', 'dewi_puspitarini@ymail.com', 1, '2017-02-20 14:38:34', '2017-02-20 21:06:58'),
(277, 'nPpfk7Km2vtUsF7oX1170220094229', 'Inne', '085931144583', 'inne.ramafita@gmail.com', 1, '2017-02-20 14:42:29', '2017-02-20 21:06:58'),
(278, 'Z2Ew3bx4KcGRhTCW26170220094649', 'Windasari', '081336386078', 'windy_78@yahoo.com', 1, '2017-02-20 14:46:49', '2017-02-20 21:06:58'),
(279, 'le3w7sJVGejMTmpnIv170220102852', 'Dian riesti ningrum', '08989809469', 'dianriesti87@gmail.com', 1, '2017-02-20 15:28:52', '2017-02-20 21:06:58'),
(280, '7MVBvQTpu9MLLX9vHQ170220115809', 'fhitrynallqis', '082251761555', 'fhitryballqis85@gmail.com', 1, '2017-02-20 16:58:09', '2017-02-20 21:06:58'),
(281, 'MugZEptbftadwNlVqN170221044231', 'ima', '081216287382', 'imaniar283@gmail.com', 1, '2017-02-20 21:42:31', '2017-02-20 22:35:59'),
(282, '84TfURMDzzuAgmS5dc170221073813', 'Urifat Hasanah', '081330618898', 'Caroline.hasanah@gmail.com', 1, '2017-02-21 00:38:13', '2017-02-21 02:54:52'),
(283, 'W9OmHmw7I816fpATWu170221080445', 'ainur noviansah', '081332805055', 'arumiaqueenoachmad@yahoo.com', 1, '2017-02-21 01:04:45', '2017-02-21 02:54:52'),
(284, 'om6EKq4hysolWIYqs0170221083838', 'Novianti cahyani', '085655532465', 'novianticahyani@gmail.com', 1, '2017-02-21 01:38:38', '2017-02-21 02:54:52'),
(285, 'nYuZEj52lMM05ukaLp170221090338', 'Fathim', '081310484522', 'fathimanyhaya91@gmail.com', 1, '2017-02-21 02:03:38', '2017-02-21 02:54:52'),
(286, 'T0oXDoUD4XJKShWQbV170221091113', 'Hanik mayangsari', '085733711155', 'Hcyankadeq@yahoo.com', 1, '2017-02-21 02:11:13', '2017-02-21 02:54:52'),
(287, 'ICHznMF0TNqxF2W5iD170221093638', 'Dewi', '085850744610', 'adidewilestari@gmail.com', 1, '2017-02-21 02:36:38', '2017-02-21 02:54:52'),
(288, '7rWtznfnr20vCDQe3C170221100403', 'dina', '081217949907', 'dena-spd@yahoo.co.id', 1, '2017-02-21 03:04:03', '2017-02-21 16:46:21'),
(289, 'YbFQF8wVFVLusbi7k4170221103549', 'Riza anita', '081336121267', 'Risanita81@gmail.com', 1, '2017-02-21 03:35:49', '2017-02-21 16:46:21'),
(290, '4OdFgRULQIBwzaroD8170221105140', 'Fitria purandhy', '082231013456', 'Fpurandhy87@gmail.com', 1, '2017-02-21 03:51:40', '2017-02-21 16:46:21'),
(291, 'PLUmVzNaW2tk6JFq9J170221111557', 'zena', '083849752531', 'zenamaulita07@gmail.com', 1, '2017-02-21 04:15:57', '2017-02-21 16:46:21'),
(292, 'IFWdSelZt21ctDIksZ170221111806', 'Ning Luluk khasanah', '081336219782', 'loeloekkhasanah@gmail.com', 1, '2017-02-21 04:18:06', '2017-02-21 16:46:21'),
(293, 'KCzyAIQs96YO83S2JV170221113723', 'Tiwi ', '082135726107', 'endang.pertiwi@gmail.com', 1, '2017-02-21 04:37:23', '2017-02-21 16:46:21'),
(294, 'Le9GdeXjlILwHjTE4f170221121833', 'juwita', '082230601044', 'juwita180414@gmail.com', 1, '2017-02-21 05:18:33', '2017-02-21 16:46:21'),
(295, 'hpHQeAnkKtZoEVYQtg170221123733', 'Dewi ', '083857885223', 'dewipurbosari2312@gmail.com', 1, '2017-02-21 05:37:33', '2017-02-21 16:46:21'),
(296, '8JOlFlYhy10wqDtYfY170221124051', 'Dewi', '083857885223', 'dewipurbosari2312@gmail.com', 1, '2017-02-21 05:40:51', '2017-02-21 16:46:21'),
(297, 'zrPSIQTO9hqOaQE9bd170221010209', 'Budiyati', '081212337401', 'sumadibudiyati6@gmail.com', 1, '2017-02-21 06:02:09', '2017-02-21 16:46:21'),
(298, '827EgyDkvrVw7lwMTC170221013025', 'Feri Yudha', '085325325508', 'feri.yudhabanu@gmail.com', 1, '2017-02-21 06:30:25', '2017-02-21 16:46:21'),
(299, 'zyilsthiZ9l4JHJJce170221013048', 'dewi yunita', '085646239828', 'derinkha290710@gmail.com', 1, '2017-02-21 06:30:48', '2017-02-21 16:46:21'),
(300, 'Nrdizn8HQ7dJsNOyMA170221021920', 'Elli', '83849525747', 'elokkiki13@gmail.com', 1, '2017-02-21 07:19:20', '2017-02-21 16:46:21'),
(301, 'ZMhGu0IbQWPM50mvG7170221034234', 'siti aisyiyah', '089682076485', 'iis.riza66@gmail.com', 1, '2017-02-21 08:42:34', '2017-02-21 16:46:21'),
(302, 'fYpqim6zE2lUCrm0Yl170221034707', 'riah', '081283844550', 'riahakam@yahoo.com', 1, '2017-02-21 08:47:07', '2017-02-21 16:46:21'),
(303, 'HBTjYHXChPnyCmz4qm170221040116', 'Erma', '081231089039', 'ermasyamsul@gmail.com', 1, '2017-02-21 09:01:16', '2017-02-21 16:46:21'),
(304, 'UGwBN29o1Ed9NL1Ekm170221041104', 'Hengky Irianto', '8563541404', 'hengky.dev@gmail.com', 1, '2017-02-21 09:11:04', '2017-02-21 16:46:21'),
(305, 'Pdh1w3wUNkkDU7Evtz170221042542', 'Yani', '085850263155', 'y4ni_11@yahoo.co.id', 1, '2017-02-21 09:25:42', '2017-02-21 16:46:21'),
(306, 'usXnT3YFC1FAskNoCy170221042701', 'Nina Hakim', '085732410198', 'ninahakimm@gmail.com', 1, '2017-02-21 09:27:01', '2017-02-21 16:46:21'),
(307, 'mGwppJl0jLxMy6fvxF170221045642', 'Emmi Nur Asri', '087751670531', 'zabrinazahrania@gmail.com', 1, '2017-02-21 09:56:42', '2017-02-21 16:46:21'),
(308, 'rohQZkT8wnuqUg6trE170221045716', 'Emmi Nur Asri', '087751670531', 'zabrinazahrania@gmail.com', 1, '2017-02-21 09:57:16', '2017-02-21 16:46:21'),
(309, 'ldwYbHB7qych7B1KBy170221052328', 'Ulien', '081235522908', 'Ulien_nabil@yahoo.com', 1, '2017-02-21 10:23:28', '2017-02-21 16:46:21'),
(310, 'C2Z1yN8ZOYgtZOEQBJ170221062017', 'Wiwik Ima ', '082245270028', 'ima_pirangga@yahoo.com', 1, '2017-02-21 11:20:17', '2017-02-21 16:46:21'),
(311, 'sWXSsQz14BPrPPEyCY170221071619', 'lia', '081336836222', 'lia.qomariah.muslimah@gmail.com', 1, '2017-02-21 12:16:19', '2017-02-21 16:46:21'),
(312, 'SY8EevnQkgR1uD3xqM170221072016', 'Fitri ', '081252790885', 'Ummuqiana@gmail.com', 1, '2017-02-21 12:20:16', '2017-02-21 16:46:21'),
(313, 'S54KZx8QhOBoYjKPEj170221075241', 'Lia', '0815108877', 'Lisamawati@ymail.com', 1, '2017-02-21 12:52:41', '2017-02-21 16:46:21'),
(314, 'y8MGASB3qHepwp9txt170221075439', 'Ita', '087853857766', 'it_1506@yahoo.com', 1, '2017-02-21 12:54:39', '2017-02-21 16:46:21'),
(315, '5iHROzgcTfT3Xi8MKb170221075748', 'Nur dyah puspitasari', '082140107918', 'Pipietchupeat_88@yahoo.com', 1, '2017-02-21 12:57:48', '2017-02-21 16:46:21'),
(316, 'CxbdQOAeRusEmcfK7M170221080946', 'Sunarsih', '082132341289', 'Sunarsih_77@yahoo.com', 1, '2017-02-21 13:09:46', '2017-02-21 16:46:21'),
(317, 'yWEPJBUtZoaekMjbxu170221094206', 'Fazria', '085706102520', 'fazria89@gmail.com', 1, '2017-02-21 14:42:06', '2017-02-21 16:46:21'),
(318, '1F6TYtm0nrdHBO7rZc170221102616', 'Novi Rasiska', '085731516005', 'Sastrarasiska@gmail.com', 1, '2017-02-21 15:26:16', '2017-02-21 16:46:21'),
(319, 'kxOoFZIjUZWthB0g0H170221102641', 'Riza agustina', '08175044227', 'Rizaagustina59@gmail.com', 1, '2017-02-21 15:26:41', '2017-02-21 16:46:21'),
(320, '58RDYczeGcUNB1AJRP170221102729', 'Novi', '085731516005', 'Sastrarasiska@gmail.com', 1, '2017-02-21 15:27:29', '2017-02-21 16:46:21'),
(321, '67e4n8KGXoW60AI6Is170221105802', 'Marla', '081332762332', 'Marlaovarani@gmail.com', 1, '2017-02-21 15:58:02', '2017-02-21 16:46:21'),
(322, 'gM7VQvcPRrLmWfFduZ170221105854', 'Marla', '081332762332', 'Marlaovarani@gmail.com', 1, '2017-02-21 15:58:54', '2017-02-21 16:46:21'),
(323, 'c9kjDVELGv5L9WJyLw170221110908', 'ika ulya', '085706049780', 'ikaulya@yahoo.com', 1, '2017-02-21 16:09:08', '2017-02-21 16:46:21'),
(324, 'u4r76L9ORJN881FuKB170221111530', 'Narisa Nimas Akbar', '085655244441', 'narisanimas@gmail.com', 1, '2017-02-21 16:15:30', '2017-02-21 16:46:21'),
(325, 'pHgbBizFiznz3BACr1170221111958', 'yuni', '081230501008', 'sherlyyunita81@gmail.com', 1, '2017-02-21 16:19:58', '2017-02-21 16:46:21'),
(326, 'f59Q6VYrUVJdebXDgC170221112119', 'yuni', '081230501008', 'sherlyyunita81@gmail.com', 1, '2017-02-21 16:21:19', '2017-02-21 16:46:21'),
(327, 'F1t9SNUwq15iHaRUV3170221112745', 'yuni', '081230501008', 'sherlyyunita81@gmail.com', 1, '2017-02-21 16:27:45', '2017-02-21 16:46:21'),
(328, 'LqTuPC5Ab2CKEXQHnB170221114322', 'ria', '081216131211', 'ria@gmail.com', 1, '2017-02-21 16:43:22', '2017-02-21 16:46:21'),
(329, 'LOt7H9gVCmWKdel8wR170222124145', 'Prima Sari Wijayani', '085230869251', 'pswijayani@gmail.com', 1, '2017-02-21 17:41:45', '2017-02-23 17:50:09'),
(330, 'kiYeTcFinpnQqGGo4I170222052811', 'ETTY KURNIASIH', '081553400448', 'Etik529@gmail.com', 1, '2017-02-21 22:28:11', '2017-02-23 17:50:09'),
(331, 'eDCv2npubgm8WuRmzr170222060129', 'nia', 'o81336549734', 'koernia_wijayanti@yahoo.com', 1, '2017-02-21 23:01:30', '2017-02-23 17:50:09'),
(332, 'YYr1EhXR63ZTyvBBjb170222061334', 'nia', '081336549734', 'wijayantiayahkoerniaayah@gmail.co.id', 1, '2017-02-21 23:13:34', '2017-02-23 17:50:09'),
(333, 'nQewM6DTsGXIZvD7Hf170222063947', 'Mifta', '081232555786', 'Miftahuljannah003@gmail.com', 1, '2017-02-21 23:39:47', '2017-02-23 17:50:09'),
(334, 'J1ZveXMrMrkTcsidIr170222064226', 'Nofita', '085745921922', 'Nofitafajarwibowo@gmail.com', 1, '2017-02-21 23:42:26', '2017-02-23 17:50:09'),
(335, 'CNcfLGXT6Sr5oIQc36170222072034', 'Halimatus sakdiyah', '085732354422', 'halimadiyah26@gmail.com', 1, '2017-02-22 00:20:34', '2017-02-23 17:50:09'),
(336, '8mEIRR703UYavzvgQJ170222072323', 'Voni', '089609850442', 'klepvoni@gmail.com', 1, '2017-02-22 00:23:23', '2017-02-23 17:50:09'),
(337, 'q5ebHVj5chMBbH4gtf170222072755', 'Sulistyowati', '085649122276', 'Sulistyowatinyit@yahoo.com', 1, '2017-02-22 00:27:55', '2017-02-23 17:50:09'),
(338, '5pdtMNCoC1PsgvdEbn170222080955', 'Jd', '081803162331', 'coldanov@yahoo.com', 1, '2017-02-22 01:09:55', '2017-02-23 17:50:09'),
(339, 'O1EfDlNbxtC7KEDXJ0170222082827', 'ida', '088217380173', 'idafitriarahmawati@gmail.com', 1, '2017-02-22 01:28:27', '2017-02-23 17:50:09'),
(340, 'J35qE98y5yikfLaCGS170222085639', 'Indah', '085733271354', 'akhwat.indah@gmail.com', 1, '2017-02-22 01:56:39', '2017-02-23 17:50:09'),
(341, 'dFoBhKbhJJpEIkLJHP170222090102', 'EKA SAPTIA WUNI PANGESTI', '082302148489', 'ecaseptia@yahoo.co.id', 1, '2017-02-22 02:01:02', '2017-02-23 17:50:09'),
(342, 'gNmI9DD5MsKOnNATto170222091024', 'rahayu', '081335131377', 'rahayu.linn@gmail.com', 1, '2017-02-22 02:10:24', '2017-02-23 17:50:09'),
(343, 'z0FAj0nKFQhUxgkygg170222093814', 'Lusia yuanita', '085733028343', 'lusiayuanita@yahoo.co.id', 1, '2017-02-22 02:38:14', '2017-02-23 17:50:09'),
(344, 'MjLpPhr82QMVA8SEop170222101251', 'ARIE FARIDANA', '082331233697', 'ariesos.sby@gmail.com', 1, '2017-02-22 03:12:51', '2017-02-23 17:50:09'),
(345, 'jjsK9SvBljT7nmAkYz170222101733', 'ririn', '081331350888', 'ririnratnawati81@gmail.com', 1, '2017-02-22 03:17:33', '2017-02-23 17:50:09'),
(346, 'zVN6OywUAv3ZSMBF78170222120912', 'Nurul', '082234325039', 'azzahrahpengetikan@gmail.com', 1, '2017-02-22 05:09:12', '2017-02-23 17:50:09'),
(347, 'sNSoeHosokXC2cfd5q170222124409', 'RENY LISTYOWATI', '08563030082', 'renylistyowati@yahoo.co.id', 1, '2017-02-22 05:44:09', '2017-02-23 17:50:09'),
(348, 'IOVCtQ0cURt3jjHb1S170222124918', 'Dina ', '081332783946', 'Dn.suryaningtyassafitri@gmail.com', 1, '2017-02-22 05:49:18', '2017-02-23 17:50:09'),
(349, 'Lzy48uvo5MKknu3Rlz170222010401', 'Anny', '085645111276', 'Anny_tacix@yahoo.co.id', 1, '2017-02-22 06:04:01', '2017-02-23 17:50:09'),
(350, 'juDyrNJi9Dh76vUoBy170222010542', 'Ratna', '081217822662', 'ratnayuliarviana@yahoo.com', 1, '2017-02-22 06:05:42', '2017-02-23 17:50:09'),
(351, '4YKvAwlVWyrWWpWKYF170222020246', 'Endah Palupi', '081317717997', 'endahpalupi1979@yahoo.com', 1, '2017-02-22 07:02:46', '2017-02-23 17:50:09'),
(352, 'kqDIhuhj1YlZ235SSa170222022947', 'Hannah', '08175253404', 'hannahinferne@gmail.com', 1, '2017-02-22 07:29:47', '2017-02-23 17:50:09'),
(353, 'YKOBTQIZ7wyVOA9NvO170222031532', 'Diana', '081335628811', 'dnaw.yani@gmail.com', 1, '2017-02-22 08:15:32', '2017-02-23 17:50:09'),
(354, 'qDsLesxXUD1Bharw1u170222063158', 'nick deen naomi', '081331478600', 'nickienia3@gmail.com', 1, '2017-02-22 11:31:58', '2017-02-23 17:50:09'),
(355, 'E6f7MNDLL3vXlZoixt170222063755', 'septi', '081233758992', 'septiia.eka@gmail.com', 1, '2017-02-22 11:37:55', '2017-02-23 17:50:09'),
(356, 'iNKuo7rXCY0UcsS1EQ170222065247', 'Nabila', '081341199939', 'Nabila.amir90@yahoo.com', 1, '2017-02-22 11:52:47', '2017-02-23 17:50:09'),
(357, 'MCPYUIkWjwRjqP3rQL170222070808', 'Nurul hidayah', '085100239673', 'nurul.hidayah1717@gmail.com', 1, '2017-02-22 12:08:08', '2017-02-23 17:50:09'),
(358, '7e3w58ACocJSI48ouy170222070942', 'Puspita', '085853111884', 'Puspitarince@gmail.com', 1, '2017-02-22 12:09:42', '2017-02-23 17:50:09'),
(359, 'LBKuEi3eRE98fasU3f170222071341', 'Yanti', '085730505202', 'anugrah.wiyanti@gmail.com', 1, '2017-02-22 12:13:41', '2017-02-23 17:50:09'),
(360, 'LwbzbCecBv08yqiHNh170222080050', 'Juwita', '087853547407', 'Juwitaikasari283@gmail.com', 1, '2017-02-22 13:00:50', '2017-02-23 17:50:09'),
(361, 'PHZ5iMyM9uTekgf7uS170222085058', 'Maulia', '08113443696', 'maulya.molly@gmail.com', 1, '2017-02-22 13:50:58', '2017-02-23 17:50:09'),
(362, 'mr7Oole2nJQtyKJCRJ170222090901', 'Riza', '081249899592', 'Riza.rainbow@yahoo.com', 1, '2017-02-22 14:09:01', '2017-02-23 17:50:09');
INSERT INTO `download_pricelist` (`id`, `token`, `name`, `phone`, `email`, `readed`, `created_at`, `updated_at`) VALUES
(363, 'z0BGMAelgQe9JkdxZI170222090949', 'Irma Hidayah', '085859266200', 'irmahidayah.37@gmail.com', 1, '2017-02-22 14:09:49', '2017-02-23 17:50:09'),
(364, 'hOXmFOnVatWtEvOqqp170222092700', 'nita', '083824913803', 'nita.yuli@rocketmail.com', 1, '2017-02-22 14:27:00', '2017-02-23 17:50:09'),
(365, 'rEEM36nQlSYqqlMp4V170222092939', 'Dini indriani', '085259774888', 'diniani11@yahoo.com', 1, '2017-02-22 14:29:39', '2017-02-23 17:50:09'),
(366, 'pVN1LTxRwzhFtvKmYc170222102535', 'Ria Anggraini', '082234997596', 'riafaqih14@gmail.com', 1, '2017-02-22 15:25:35', '2017-02-23 17:50:09'),
(367, '0Uiv8HdwuHbk5JIGDR170222104011', 'fitri', '081216802162', 'fitrianiyuniar83@gmail.com', 1, '2017-02-22 15:40:11', '2017-02-23 17:50:09'),
(368, 'ejLdD3ZFOpjIZrskWC170222114048', 'Anik', '083831119636', 'Anikfauzia9@gmail.com', 1, '2017-02-22 16:40:48', '2017-02-23 17:50:09'),
(369, 'IumOdU1FCIQGyrE7Vd170223125337', 'Lily', '082230752280', 'Tyasari.chc@gmaill.com', 1, '2017-02-22 17:53:37', '2017-02-23 17:50:09'),
(370, 'ViM70eNFR6LLKVwQTB170223035607', 'Nia Rahmania', '085646484855', 'masrurun_rahmania@yahoo.com', 1, '2017-02-22 20:56:07', '2017-02-23 17:50:09'),
(371, 'JIuUQulClGEc8xnm3f170223035737', 'Nia Rahmania', '085646484855', 'masrurun_rahmania@yahoo.com', 1, '2017-02-22 20:57:37', '2017-02-23 17:50:09'),
(372, 'HaGZksSoqouH0oVxlC170223045939', 'ira selfiani', '0818327055', 'ira.selfiani76@gmail.com', 1, '2017-02-22 21:59:39', '2017-02-23 17:50:09'),
(373, 'JueRRIveERzAkWvTvf170223051627', 'nila', '085793456', 'nila.pramasari@gmail.com', 1, '2017-02-22 22:16:27', '2017-02-23 17:50:09'),
(374, 'zs5lqapeiBKEoERZvE170223053450', 'Dwi Istikasari', '081232570787', 'dwiistikasari87@gmail.com', 1, '2017-02-22 22:34:50', '2017-02-23 17:50:09'),
(375, 'BDDty9slDCwylhjttG170223053921', 'Rosalina', '085733333720', 'Rosafaisal1414@gmail.com', 1, '2017-02-22 22:39:21', '2017-02-23 17:50:09'),
(376, 'HuQfw0ETXV1MOF1A0Y170223074638', 'Tari', '085731946961', 'budishine@gmail.com', 1, '2017-02-23 00:46:38', '2017-02-23 17:50:09'),
(377, 'bGRsJQqNbAwCpdH1xZ170223075926', 'peppie', '087700600609', 'peppie.febrilina@yahoo.com.sg', 1, '2017-02-23 00:59:26', '2017-02-23 17:50:09'),
(378, 'LlvqP9ZsNslHkA26iM170223080730', 'Puspita', '085853111884', 'Puspitarince@gmail.com', 1, '2017-02-23 01:07:30', '2017-02-23 17:50:09'),
(379, '0W1MZdY7UZAHvRwzcc170223085921', 'Yetty sulistyaningrum', '085645119209', 'Yettysulis@gmail.com', 1, '2017-02-23 01:59:21', '2017-02-23 17:50:09'),
(380, 'PHbdaiKyBVXsnkEp9J170223091518', 'Lilik', '0', 'Maftuhah.lilik@yahoo.com', 1, '2017-02-23 02:15:18', '2017-02-23 17:50:09'),
(381, 'ET0I4wtPoozDsl6KWf170223091602', 'Maya', '085735143454', 'Mayashita48@gmail.com', 1, '2017-02-23 02:16:02', '2017-02-23 17:50:09'),
(382, 'rviSnyat8Ug2uqdFhG170223092453', 'ratih wulandari', '081252369432', 'ratih.wulandari.1988@gmail.com', 1, '2017-02-23 02:24:53', '2017-02-23 17:50:09'),
(383, 'LrUXhpGY3gUjgyuxbE170223092631', 'Anthy Susanti', '083854492541', 'thysusanti@gmail.com', 1, '2017-02-23 02:26:31', '2017-02-23 17:50:09'),
(384, 'KqeFi3kcylntBtMYjH170223102824', 'rini pudji astuti ', '085104833310', 'pudjiastuti@yahoo.com', 1, '2017-02-23 03:28:24', '2017-02-23 17:50:09'),
(385, 'OHVM9Z9FOxEjExDjt0170223112933', 'Iftitaefje', '085733060511', 'iftitaefje@gmail.com', 1, '2017-02-23 04:29:33', '2017-02-23 17:50:09'),
(386, '4uDZqp9fdK3lhfieqm170223010239', 'mira', '081230862524', 'purnamasari.mira92@gmail.com', 1, '2017-02-23 06:02:39', '2017-02-23 17:50:09'),
(387, 'CVwEBpthw0KZkNftdV170223012651', 'wanda', '081703151936', 'pooh_yellow26@yahoo.com', 1, '2017-02-23 06:26:51', '2017-02-23 17:50:09'),
(388, 'g4ZiVsWyiiAlH7OZ8h170223023112', 'hikmah', '085736020982', 'dhea_ma2@yahoo.co.id', 1, '2017-02-23 07:31:12', '2017-02-23 17:50:09'),
(389, 'wXdxx496wYZuXy8JaO170223023425', 'hikmah', '085736020982', 'dhea_ma2@yahoo.co.id', 1, '2017-02-23 07:34:25', '2017-02-23 17:50:09'),
(390, 'xU2P7Y50uUlQsTApDU170223030631', 'Nita', '081331757079', 'anugerahjunita@ymail.com', 1, '2017-02-23 08:06:31', '2017-02-23 17:50:09'),
(391, 'iKWxIhgeHBuLM3lv9p170223035916', 'puspa', '08123176937', 'puspapk@gmail.com', 1, '2017-02-23 08:59:16', '2017-02-23 17:50:09'),
(392, 'mLxXc1SnX3WB1KUoWV170223044203', 'Nizawati', '082234582509', 'Nza.icha@gmail.com', 1, '2017-02-23 09:42:03', '2017-02-23 17:50:09'),
(393, '7j5xguXTIFJosSJmNm170223044709', 'Nizawati', '082234592509', 'nza.icha@gmail.com', 1, '2017-02-23 09:47:09', '2017-02-23 17:50:09'),
(394, 'xpwWZlrpc5Rf8x5NOQ170223045015', 'Nur Qomariana', '08175279367', 'aik_by@yahoo.com', 1, '2017-02-23 09:50:15', '2017-02-23 17:50:09'),
(395, 'eedXL55XKVJHcYviac170223045055', 'novi eka prastya', '082233655143', 'novi.prastya85@gmail.com', 1, '2017-02-23 09:50:55', '2017-02-23 17:50:09'),
(396, 'nO0L7dPZQ4TiVH5HBk170223064559', 'irda achiriyanti', '085823136923', 'irdaachiriyanti@gmail.com', 1, '2017-02-23 11:45:59', '2017-02-23 17:50:09'),
(397, 'IKPEXAWPBSuHIfjLxR170223084304', 'aswatu', '085648074633', 'idonbabi@yahoo.com', 1, '2017-02-23 13:43:04', '2017-02-23 17:50:09'),
(398, 'sLsXVgD5HbKCP6dxvQ170223084837', 'nisa', '085731546309', 'chairunisa_ulfa@yahoo.com', 1, '2017-02-23 13:48:37', '2017-02-23 17:50:09'),
(399, 'qvUzdsD7Hn3IQAHxtx170223091525', 'Kholifah', '082331754335', 'Kholifah486@gmail.com', 1, '2017-02-23 14:15:25', '2017-02-23 17:50:09'),
(400, 'tyf6ezc5r7YntkhJTS170223092919', 'Susi', '081231399193', 'susyalfian@gmail.com', 1, '2017-02-23 14:29:19', '2017-02-23 17:50:09'),
(401, 'NjzPjflXtWpoHjwn2Q170223101141', 'Iga febrian', '085732519829', 'igaaryani90@gmail.com', 1, '2017-02-23 15:11:41', '2017-02-23 17:50:09'),
(402, 'ErWmseL5X3ocVtwK5K170224123001', 'Aftria', '085730759308', 'Vicaaftria@gmail.com', 1, '2017-02-23 17:30:01', '2017-02-23 17:50:09'),
(403, 'mAj2FldU2JE5uJiB20170224063057', 'Purwanti', '085731883027', 'Dvpoerwanti76@gmail.com', 1, '2017-02-23 23:30:57', '2017-02-26 15:04:10'),
(404, 'UKojz1luq41XKfN3A5170224064806', 'Yudhi lastiasih', '082116605466', 'yudhi.lastiasih@gmail.com', 1, '2017-02-23 23:48:06', '2017-02-26 15:04:10'),
(405, '1UE7uVLoUngMPjmKoJ170224092639', 'Ellief', '083831709549', 'ellieffariha@gmail.com', 1, '2017-02-24 02:26:39', '2017-02-26 15:04:10'),
(406, 'wad4D5rqDs9eIBSjqv170224094555', 'Rina Hamzah', '08563367374', 'azzahra.amaliyyah@gmail.com', 1, '2017-02-24 02:45:55', '2017-02-26 15:04:10'),
(407, 'mfreUO3GycFVZKdDY7170224105316', 'vanydia', '085648094748', 'vanydia.aisyah@gmail.com', 1, '2017-02-24 03:53:16', '2017-02-26 15:04:10'),
(408, 'agnzbGyBsvmbEX4s0Y170224112201', 'Eva Nur Aini', '085730732044', 'evanuraini2493@gmail.com', 1, '2017-02-24 04:22:01', '2017-02-26 15:04:10'),
(409, 'qJ9IsOtMH6vXB5PDIa170224112851', 'wetinda', '085258274747', 'wetinda07@gmail.com', 1, '2017-02-24 04:28:51', '2017-02-26 15:04:10'),
(410, '57tWLABpFILCDaU2qc170224113201', 'Dian Fitria Sari', '031-99441770', 'dianfitrias@gmail.com', 1, '2017-02-24 04:32:01', '2017-02-26 15:04:10'),
(411, 'okHVumBp5F3ymrpVnn170224113543', 'diah', '083857162222', 'diah.sinargrafindo@yahoo.com', 1, '2017-02-24 04:35:43', '2017-02-26 15:04:10'),
(412, 'lyuiam7bJKMob46y9N170224122750', 'hikmah', '085730407571', 'hikmahsadiyah123@gmail.com', 1, '2017-02-24 05:27:50', '2017-02-26 15:04:10'),
(413, '8iD9fAfT4VZdqpICc0170224020106', 'sulistyawati', '081238891635', 'tyasulis443@gmail.com', 1, '2017-02-24 07:01:06', '2017-02-26 15:04:10'),
(414, 'qYMVCjR1S16cBg3qwA170224034528', 'hoirunnisa', '081233354579', 'hoirunnisa23@gmail.com', 1, '2017-02-24 08:45:28', '2017-02-26 15:04:10'),
(415, 'itf9Rn07ZAB34647c7170224034916', 'Meme Pratama', '085649855495', 'memepratama@gmail.com', 1, '2017-02-24 08:49:16', '2017-02-26 15:04:10'),
(416, '7cdMuhxQMNVIMLKqYV170224062222', 'Dila', '083830628368', 'dila@indobatt.com', 1, '2017-02-24 11:22:22', '2017-02-26 15:04:10'),
(417, 'iNge1V7SjUoFdJm9kF170224071309', 'Leni', '081252487078', 'suharleni.kurniawati@gmail.com', 1, '2017-02-24 12:13:09', '2017-02-26 15:04:10'),
(418, 'rTJNLuFmtAWtbAEGGZ170224074852', 'hartik', '085655112304', 'hartik09@gmail.com', 1, '2017-02-24 12:48:52', '2017-02-26 15:04:10'),
(419, '4ox6MgsOQxGd4hM3mh170224080542', 'Wulan', '082230184002', 'Kukuhwulan72@gmail.com', 1, '2017-02-24 13:05:42', '2017-02-26 15:04:10'),
(420, 'c0BYpK0GBI0yP5hgVF170224090423', 'hartik', '085655112304', 'hartik09@gmail.com', 1, '2017-02-24 14:04:23', '2017-02-26 15:04:10'),
(421, '8CuU9BMQ8sVTy3jvYn170224095146', 'ophie laksono', '085645758858', 'ophie.shopie@gmail.com', 1, '2017-02-24 14:51:46', '2017-02-26 15:04:10'),
(422, 'Zt6l2RWFOh0iTrHHkJ170224095834', 'Lilik Sumarlik', '085645136926', 'liliklili30@yahoo.co.id', 1, '2017-02-24 14:58:34', '2017-02-26 15:04:10'),
(423, 'a9PVVmKa0HYiXnMrwg170224102634', 'Medina', '08123061611', 'Morley.medina@gmail.com', 1, '2017-02-24 15:26:34', '2017-02-26 15:04:10'),
(424, 'VvPBEdXDZ06MuPx5Br170225124655', 'Niken', '08973848454', 'bkenz_pradipta@yahoo.co.id', 1, '2017-02-24 17:46:55', '2017-02-26 15:04:10'),
(425, 'qAHnn4BFlYA8Yn3H0p170225124945', 'Niken', '08973848454', 'bkenz_pradipta@yahoo.co.id', 1, '2017-02-24 17:49:45', '2017-02-26 15:04:10'),
(426, 'R0imEoAgF3Kr9QUd8t170225085900', 'Mirna rahmi aprianingsih', '08123586216', 'mirnarahmi40@gmail.com', 1, '2017-02-25 01:59:00', '2017-02-26 15:04:10'),
(427, '9RgcV5BaPLvR8NjG8s170225092021', 'Pipit', '085736495533', 'erma_wita@yahoo.com', 1, '2017-02-25 02:20:21', '2017-02-26 15:04:10'),
(428, 'AgP2bTloUw1o8GG7DN170225105130', 'titin cahyorini', '081331495404', 'titin_cahyorini@yahoo.com', 1, '2017-02-25 03:51:30', '2017-02-26 15:04:10'),
(429, 'LUBWR6Yr4TxMHJ3Zkx170225112035', 'Luluk', '081216113699', 'tanyaluluk99@gmail.com', 1, '2017-02-25 04:20:35', '2017-02-26 15:04:10'),
(430, 'VwbLpkO95VxEptXEwo170225115217', 'sulis', '089686841987', 'chuliz.hakim@gmail.com', 1, '2017-02-25 04:52:17', '2017-02-26 15:04:10'),
(431, '5soQPZ7r0GwSsD3tZs170225121214', 'swi aida amanti', '085853003007', 'aidaarianti87@gmail.com', 1, '2017-02-25 05:12:14', '2017-02-26 15:04:10'),
(432, '79ge0wTVadZC5oPQis170225125227', 'yola', '085731013438', 'ekayolanda0805@gmail.com', 1, '2017-02-25 05:52:27', '2017-02-26 15:04:10'),
(433, 'vdt6szCroETmxA6SMF170225012952', 'Intan', '082231360207', 'dolphdolph20.dd@gmail.com', 1, '2017-02-25 06:29:52', '2017-02-26 15:04:10'),
(434, 'GiLTOFjG9uBSTeyW8e170225013142', 'Intan', '082231360207', 'dolphdolph20.dd@gmail.com', 1, '2017-02-25 06:31:42', '2017-02-26 15:04:10'),
(435, '4sKAqV8z88I08x5WT3170225013238', 'Siti choiriyah', '087758716137', 'Choiriyah601@gmail.com', 1, '2017-02-25 06:32:38', '2017-02-26 15:04:10'),
(436, 'GVla8kHdZSeA3uOdlP170225013503', 'Siti choiriyah', '087758716137', 'Choiriyah601@gmail.com', 1, '2017-02-25 06:35:03', '2017-02-26 15:04:10'),
(437, 'szZ7OZV9yCZ5cq4Qkh170225014718', 'Wulan', '081216170706', 'wulan_penta@yahoo.com', 1, '2017-02-25 06:47:18', '2017-02-26 15:04:10'),
(438, 'I1SCDsWmhgN1qBmN3j170225035437', 'Ernaqurniawati', '083857972888', 'Ernaqur@yahoo.co.id', 1, '2017-02-25 08:54:37', '2017-02-26 15:04:10'),
(439, 'apMJYtpGLlWoDzgzGt170225041558', 'nuke astriana', '085853140920', 'astriananuke@gmail.com', 1, '2017-02-25 09:15:58', '2017-02-26 15:04:10'),
(440, 'ql9uaih5f5KgC7WHHL170225044115', 'Lita', '081217675566', 'Lhytha120791@gmail.com', 1, '2017-02-25 09:41:15', '2017-02-26 15:04:10'),
(441, 'tsBsJoaKcEzgSZ8lPC170225053520', 'Shafina zenda kalila grivan', '081330545543', 'Shafina.zenda@gmail.com', 1, '2017-02-25 10:35:20', '2017-02-26 15:04:10'),
(442, '4Erom2mnqdMr1S5r1M170225054248', 'Ajeng Novitasari', '083831883033', 'ajengn25@gmail.com', 1, '2017-02-25 10:42:48', '2017-02-26 15:04:10'),
(443, 'jEp1adFBNa8hEDxpGR170225062328', 'hartik', '085655112304', 'hartik09@gmail.com', 1, '2017-02-25 11:23:28', '2017-02-26 15:04:10'),
(444, 'S26OVV78HfaaueXics170225071246', 'Wiwin Indaryani', '085731547664', 'indaryani_wiwin@yahoo.co.id', 1, '2017-02-25 12:12:46', '2017-02-26 15:04:10'),
(445, 'UWKAKjW9ITx1tQHFXj170225073954', 'Ika', '085230332348', 'Ikamaribelajar@yahoo.co.id', 1, '2017-02-25 12:39:54', '2017-02-26 15:04:10'),
(446, 'pbnfXC55AdA5Az8dTq170225091846', 'Setyawati', '085100616090', 'daiyandanuya.d@gmail.com', 1, '2017-02-25 14:18:46', '2017-02-26 15:04:10'),
(447, 'CzfddxHsWhK3uNIBPL170225094516', 'putri', '085719006559', 'putrihswi@gmail.com', 1, '2017-02-25 14:45:16', '2017-02-26 15:04:10'),
(448, 'hT9HoVgrcMeGf8w9Bp170225104822', 'Diana', '08563142773', 'diana_winarita@yahoo.com', 1, '2017-02-25 15:48:22', '2017-02-26 15:04:10'),
(449, '5hJho7CYFc9uMukQeh170225105253', 'Ayu', '085748423037', 'Ayumaharani0529@gmail.com', 1, '2017-02-25 15:52:53', '2017-02-26 15:04:10'),
(450, '3VruBxiCEXTukjQRtz170226074601', 'iva', '8113375222', 'nanangfirdaus911@gmail.com', 1, '2017-02-26 00:46:01', '2017-02-26 15:04:10'),
(451, 'Q0y1SR7hT9CPsRi3wf170226092107', 'Diaz', '081233293767', 'diazqm@gmail.com', 1, '2017-02-26 02:21:07', '2017-02-26 15:04:10'),
(452, 'DEMrzqEBqPNTQQ18ds170226020043', 'nur', '085108166103', 'i_yus87@yahoo.co.id', 1, '2017-02-26 07:00:43', '2017-02-26 15:04:10'),
(453, 'BBAQZ1YNNJx3pU72mp170226062910', 'diana', '081287657657', 'dhyad@gmail.com', 1, '2017-02-26 11:29:10', '2017-02-26 15:04:10'),
(454, 'Ykt7eud2gGz5N2QaGS170226073634', 'Reina didi', '081333020400', 'Didiarie.da@gmail.com', 1, '2017-02-26 12:36:35', '2017-02-26 15:04:10'),
(455, 'vpF5di04zRCB8STfcq170226084042', 'indira', '085645777639', 'ella.indira.gandhi@gmail.com', 1, '2017-02-26 13:40:42', '2017-02-26 15:04:10'),
(456, 'QwUKAeoFUsEwpw62Yd170226100959', 'Kusmiati', '085104363191', 'Khairulazzam0306@gmail.com', 1, '2017-02-26 15:09:59', '2017-02-28 07:28:32'),
(457, 'UuUD79rmhCq7V9K59P170226105543', 'rizkynuur', '082332191263', 'rizkynuurazizah@gmail.com', 1, '2017-02-26 15:55:43', '2017-02-28 07:28:32'),
(458, 'sZCHRHW34j4j1R8CkS170227121234', 'iva', '8113375222', 'nanangfirdaus911@gmail.com', 1, '2017-02-26 17:12:34', '2017-02-28 07:28:32'),
(459, 'YGEAFDABj396h66YzJ170227074027', 'Khomsa', '085100763955', 'khomsaummihanni82@gmail.com', 1, '2017-02-27 00:40:27', '2017-02-28 07:28:32'),
(460, 'uqclij7rVi3ySJeDhA170227074117', 'Khomsa', '085100763955', 'khomsaummihanni82@gmail.com', 1, '2017-02-27 00:41:17', '2017-02-28 07:28:32'),
(461, '8KLlHH2B984igKvEq0170227074138', 'Khomsa', '085100763955', 'khomsaummihanni82@gmail.com', 1, '2017-02-27 00:41:38', '2017-02-28 07:28:32'),
(462, 'AI87HckUXuWuWmAKdk170227080712', 'REINI WINDIANTI ', '081938146145', 'reini_wint04@yahoo.com', 1, '2017-02-27 01:07:12', '2017-02-28 07:28:32'),
(463, 'lSR1bm6y0ykjGSNJqL170227083815', 'estiningtiyas setya mardiana ', '081335736713', 'estiningtiyas@gmail.com', 1, '2017-02-27 01:38:15', '2017-02-28 07:28:32'),
(464, 'BDsNCG90EiQqJAygWu170227084853', 'septi', '081335651200', 'septimeisya@gmail.com', 1, '2017-02-27 01:48:53', '2017-02-28 07:28:32'),
(465, '1MN2ZQJ8lXOhaMlIy7170227092636', 'Catur', '081331822358', 'setyowati.catur17@gmail.com', 1, '2017-02-27 02:26:36', '2017-02-28 07:28:32'),
(466, '9GJIbDLZkHmDSxP2e2170227094827', 'Dila', '089608680772', 'deela.imoed@yahoo.com', 1, '2017-02-27 02:48:27', '2017-02-28 07:28:32'),
(467, 'ij7bLX2RJlcgvh65Te170227104356', 'Hanifah dillah', '085851290562', 'dillah667@gmail.com', 1, '2017-02-27 03:43:56', '2017-02-28 07:28:32'),
(468, 'dhhh21p6cvynYJ6gvW170227110120', 'elly', '082131375199', 'Elly.eka02@gmail.com', 1, '2017-02-27 04:01:20', '2017-02-28 07:28:32'),
(469, 'gffo6KsonNBJ6g8psL170227110222', 'Endah Tri', '085753433185', 'endah.kayyisa@gmail.com', 1, '2017-02-27 04:02:22', '2017-02-28 07:28:32'),
(470, 'FXDeALRqK2ZNdeUBYz170227110224', 'Siti Cholifah', '081234364145', 'Siticholifah_lifa53@yahoo.com', 1, '2017-02-27 04:02:24', '2017-02-28 07:28:32'),
(471, 'atlutB8KafwA2xyOuC170227112715', 'Bekti Dwi Ruliyanti', '085648666483', 'be_ruly@ymail.com', 1, '2017-02-27 04:27:15', '2017-02-28 07:28:32'),
(472, 'VgatDfRvsZ7MJgUmCJ170227115154', 'Ana Nur', '082225402091', 'janahnur25@yahoo.com', 1, '2017-02-27 04:51:54', '2017-02-28 07:28:32'),
(473, 'nrlOFh6MvnAckjPXAr170227011836', 'arik haryati', '085608042888', 'arikharyatilovenkary@gmail.com', 1, '2017-02-27 06:18:36', '2017-02-28 07:28:32'),
(474, 'QCVuRE0ibHRnTqpf1F170227013425', 'Agiestin yuwanita', '085655960165', 'Agiestin.yuwanita@yahoo.com', 1, '2017-02-27 06:34:25', '2017-02-28 07:28:32'),
(475, 'qSrMsRnFGmbjKglvum170227014910', 'pratista maharani', '082140991656', 'pratistam@gmail.com', 1, '2017-02-27 06:49:10', '2017-02-28 07:28:32'),
(476, 'HGaBeVawTbRWv25duS170227021319', 'Nurul Istiqomah', '082302262464', 'afifku02@gmail.com', 1, '2017-02-27 07:13:19', '2017-02-28 07:28:32'),
(477, 'fM0qisg4a8olTQkY4L170227034150', 'Yus', '085108166103', 'I_yus87@yahoo.co.id', 1, '2017-02-27 08:41:50', '2017-02-28 07:28:32'),
(478, 'e9Uovf19CWKssSV9Rv170227052840', 'Dita', '085606669878', 'gatrit11@gmail.com', 1, '2017-02-27 10:28:40', '2017-02-28 07:28:32'),
(479, 'cNsrfblVSBp5vGdTYg170227054344', 'Rani', '088805733771', 'raneesweetie@yahoo.com', 1, '2017-02-27 10:43:44', '2017-02-28 07:28:32'),
(480, '1yOE93OHEkEQ4NV5ws170227061810', 'nurs', '085234274070', 'nursmlggdg@gmail.com', 1, '2017-02-27 11:18:10', '2017-02-28 07:28:32'),
(481, 'WKGl8VjQm0J9aoxpPv170227064348', 'Anita', '085733651551', 'Anitarachman09@gmail.com', 1, '2017-02-27 11:43:48', '2017-02-28 07:28:32'),
(482, 'u26AxQgBMj8kA5Y699170227081300', 'Ranny', '085731237689', 'Ranny2007310360@gmail.com', 1, '2017-02-27 13:13:00', '2017-02-28 07:28:32'),
(483, 'Yp72iEVF6ErzeBf0MI170227085935', 'tyas', '085733000071', 'tyas.rahmayanti@gmail.com', 1, '2017-02-27 13:59:35', '2017-02-28 07:28:32'),
(484, 'mxhY4VII1DfIDYhVtj170227101817', 'Dhyta Arie', '081233849948', 'dhyta.arie@gmail.com', 1, '2017-02-27 15:18:17', '2017-02-28 07:28:32'),
(485, 'y2wMkyTGpHlkVPE4Sb170228052458', 'Wahidatul Azizah', '085732390770', 'wahidatul.azizah@gmail.com', 1, '2017-02-27 22:24:58', '2017-02-28 07:28:32'),
(486, 'fnVU9dQ4Mi0CD4SvCd170228063302', 'Titin Susanti', '085859435811', 'titins_dmk0608@yahoo.com', 1, '2017-02-27 23:33:02', '2017-02-28 07:28:32'),
(487, '1w9e1U0Kku2doDVQ04170228073841', 'Dessy Azzita', '081216307779', 'ayudessyerra.azzita@gmail.com', 1, '2017-02-28 00:38:41', '2017-02-28 07:28:32'),
(488, 's12wA7wYs0mmAhi1SS170228084709', 'cengil', '087851285142', 'c3ng1l.2@gmail.com', 1, '2017-02-28 01:47:09', '2017-02-28 07:28:32'),
(489, 'J0xNXTNHz2XKtUYqID170228090337', 'Qorri', '082141614526', 'qorri.rohmadhani@gmail.com', 1, '2017-02-28 02:03:37', '2017-02-28 07:28:32'),
(490, 'oIgsNDN8ruaZ4iMyot170228090546', 'Qorri', '082141614526', 'qorri.rohmadhani@gmail.com', 1, '2017-02-28 02:05:46', '2017-02-28 07:28:32'),
(491, '2a7iOcwd8ghu4TtUxy170228094508', 'adlina mazaya', '085748041891', 'mazayaadlina@gmail.com', 1, '2017-02-28 02:45:08', '2017-02-28 07:28:32'),
(492, 'qit7Rj0xT1BnibNrGn170228110214', 'Dery anggraini', '0818509099', 'deryanggraini1@gmail.com', 1, '2017-02-28 04:02:14', '2017-02-28 07:28:32'),
(493, 'N1ukRYTCS6xrz8CErk170228120622', 'ratna yuliarviana', '081217822662', 'ratnayuliarviana@yahoo.com', 1, '2017-02-28 05:06:22', '2017-02-28 07:28:32'),
(494, 'W2UQVMQM5NiM98RdNG170228122853', 'Rosy Indriyani', '087878888101', 'Rosyindriyani@gmail.com', 1, '2017-02-28 05:28:53', '2017-02-28 07:28:32'),
(495, 'IAhVZjkBbXipb5CQOm170228010609', 'Nia', '08563362661', 'sulaikahkurniawati@gmail.com', 1, '2017-02-28 06:06:09', '2017-02-28 07:28:32'),
(496, 'f0hkMLRBdr0m1se6PQ170228013338', 'ike zane', '081233946369', 'rafaro171707@gmail.com', 1, '2017-02-28 06:33:38', '2017-02-28 07:28:32'),
(497, 'milEECgXJoXh7t4zCK170228020535', 'mida', '087851514246', 'chamidahkecil@gmail.com', 1, '2017-02-28 07:05:35', '2017-02-28 07:28:32'),
(498, 'GmkMRbmvXpRDBfsalC170228022351', 'mida', '087851514246', 'chamidahkecil@gmail.com', 1, '2017-02-28 07:23:51', '2017-02-28 07:28:32'),
(499, 'A8yRBNavfsxT8xcA6C170228024555', 'Tri wahyuni', '081217362585', 'yuancantiq16.tw@gmail.com', 1, '2017-02-28 07:45:55', '2017-03-08 03:39:55'),
(500, 'qdMtm0yyJdEhcRgXS2170228024949', 'Tri wahyuni', '081217362585', 'yuancantiq16.tw@gmail.com', 1, '2017-02-28 07:49:49', '2017-03-08 03:39:55'),
(501, '5aHE2mMZAnWPr1ks2X170228034928', 'Lusy Kartika', '082231022430', 'Lusysemangat@gmail.com', 1, '2017-02-28 08:49:28', '2017-03-08 03:39:55'),
(502, 'H9ttkMB0uphJSVboJY170228055303', 'Lusy kartikasari', '082231022430', 'Lusy.ksari@gmail.com', 1, '2017-02-28 10:53:03', '2017-03-08 03:39:55'),
(503, 'Yu8LeuJoCr30BPUEpZ170228055956', 'lusy', '082231022430', 'lusy.ksari@gmail.com', 1, '2017-02-28 10:59:56', '2017-03-08 03:39:55'),
(504, '1anMZQvZSYgtDc9sYb170228094552', 'Vinnisya putri', '081249354700', 'Vinnisyaputri@gmail.com', 1, '2017-02-28 14:45:52', '2017-03-08 03:39:55'),
(505, 'UhTYvPHbHAm5pyy8gu170301103744', 'Lutvia', '083879449537', 'Lupiizaura@gmail.com', 1, '2017-03-01 03:37:44', '2017-03-08 03:39:55'),
(506, 'nOzbQsBoB6vtPaDq7Y170301103822', 'Lutvia', '083879449537', 'Lupiizaura@gmail.com', 1, '2017-03-01 03:38:22', '2017-03-08 03:39:55'),
(507, '8N1AyOgbLkyjvyAydg170301092631', 'yani', '087851584151', 'yaniindah88@gmail.com', 1, '2017-03-01 14:26:31', '2017-03-08 03:39:55'),
(508, 'h0MHWfVo7FSWY6GWaJ170302054307', 'mivta', '081515128585', 'meaveassajida@yahoo.co.id', 1, '2017-03-01 22:43:07', '2017-03-08 03:39:55'),
(509, 'qsW6SiehkRTVNkVgos170302055225', 'mivta', '081515128585', 'meaveassajida@yahoo.co.id', 1, '2017-03-01 22:52:25', '2017-03-08 03:39:55'),
(510, 'tyV994q9018dP0bqMh170302055400', 'mivta', '081515128585', 'meaveassajida@yahoo.co.id', 1, '2017-03-01 22:54:00', '2017-03-08 03:39:55'),
(511, 'Bks4bq8L8xqUD0XPWH170302093746', 'kartika okta', '085730555533', 'kartikaokta72@ymail.com', 1, '2017-03-02 02:37:46', '2017-03-08 03:39:55'),
(512, 'Pw57akvx5EZyBX0hHl170302093953', 'kartika okta', '085730555533', 'kartikaokta72@ymail.com', 1, '2017-03-02 02:39:53', '2017-03-08 03:39:55'),
(513, '4o6Hrab5lscOgTytXO170302114450', 'Citrawati Dyah Kencono Wungu', '085790220989', 'angelic.cicied16@gmail.com', 1, '2017-03-02 04:44:50', '2017-03-08 03:39:55'),
(514, 'Zczxt4NVC1u8ZIPddz170302114714', 'Lina Lukitasari', '08123097534', 'linalukitasari@gmail.com', 1, '2017-03-02 04:47:14', '2017-03-08 03:39:55'),
(515, 'B4P7DD17xDDwNQ7Rxd170302114719', 'Ira', '085645603355', 'ira_huma@yahoo.com', 1, '2017-03-02 04:47:19', '2017-03-08 03:39:55'),
(516, 'iXL2hVk1bjjWsXelu6170302114811', 'Ira', '085645603355', 'ira_huma@yahoo.com', 1, '2017-03-02 04:48:11', '2017-03-08 03:39:55'),
(517, 'IeUn7t8vjD1Y0uJyWj170302030156', 'Fitri', '081320204443', 'fhe.puspita@gmail.com', 1, '2017-03-02 08:01:56', '2017-03-08 03:39:55'),
(518, 'C87Y8SHlc7rWH3kuFc170302043254', 'Widayanti Ishak', '081331153095', 'weeydha_xtra@yahoo.com', 1, '2017-03-02 09:32:54', '2017-03-08 03:39:55'),
(519, 'cBKdFg7JtfKZlQoPO1170302050806', 'Syarifah Dee', '089649635045', 'Syarifahdee3@gmail.com', 1, '2017-03-02 10:08:06', '2017-03-08 03:39:55'),
(520, '143LwHN1ayDwulyWI7170303051910', 'Ana', '081234567810', 'Opaloana@yahoo.com', 1, '2017-03-03 10:19:10', '2017-03-08 03:39:55'),
(521, 'LnvaDJMEXVkhOGTgEp170304054610', 'Wiwik Ima', '082245270028', 'wima_pirangga10@yahoo.co.id', 1, '2017-03-03 22:46:10', '2017-03-08 03:39:55'),
(522, 'PZWbmjdiK4ZpJyVf34170304111859', 'putri', '081338330734', 'bobap389@gmail.com', 1, '2017-03-04 04:18:59', '2017-03-08 03:39:55'),
(523, 'INRHcn5tVGfvnKGujO170304032545', 'Ullan', '0811901128', 'ullan_megasari@yahoo.com', 1, '2017-03-04 08:25:45', '2017-03-08 03:39:55'),
(524, 'YdifcK8yxyIFNKkPEw170304085509', 'Wiwik Ima ', '082245270028', 'wima_pirangga10@yahoo.co.id', 1, '2017-03-04 13:55:09', '2017-03-08 03:39:55'),
(525, 'zHOl3YcIjUaIFJeQ6t170304094540', 'Binti Nur', '082234144032', 'Binti.syahirah@gmail.com', 1, '2017-03-04 14:45:40', '2017-03-08 03:39:55'),
(526, 'AN5zkQkEnQLltMc1Hj170304094636', 'Binti Nur Imani', '082234144032', 'Binti.syahirah@gmail.com', 1, '2017-03-04 14:46:36', '2017-03-08 03:39:55'),
(527, 'ARKQgs7NtOoIa4HIOB170305010537', 'Dita', '085606669878', 'gatrit11@gmail.com', 1, '2017-03-05 06:05:37', '2017-03-08 03:39:55'),
(528, 'xuROiBWFiiIqMFTwmy170305055523', 'Bella pertiwi', '082231150853', 'Bellapertiwi6@gmail.com', 1, '2017-03-05 10:55:23', '2017-03-08 03:39:55'),
(529, 'Q0P25SF1BF5qwGd3FR170305102651', 'Intan nurani', '082245774477', 'intann08@yahoo.com', 1, '2017-03-05 15:26:51', '2017-03-08 03:39:55'),
(530, 'zhJeuSqdf8S6qKOXfj170306123419', 'fifi', '081933188057', 'fifimusyarofah@yahoo.com', 1, '2017-03-06 05:34:19', '2017-03-08 03:39:55'),
(531, '6goBYrcz3hwTEMzvBG170306123424', 'Deenda natalia', '082318805416', 'Deenda_natalia@yahoo.com', 1, '2017-03-06 05:34:24', '2017-03-08 03:39:55'),
(532, 'GQCKpuuNQPf12aKm1u170306072637', 'Voni astri', '089609850442', 'klepvoni@gmail.com', 1, '2017-03-06 12:26:37', '2017-03-08 03:39:55'),
(533, '4VlN6n3sr54iCaF2Cn170307065016', 'isnindiah triana dewi', '085607050803', 'isnindiah.triana@yahoo.co.id', 1, '2017-03-07 11:50:16', '2017-03-08 03:39:55'),
(534, 'bxLtYRmjR5vWzMR3gJ170307083316', 'Jsis', '081803162331', 'coldanov@yahoo.com', 1, '2017-03-07 13:33:16', '2017-03-08 03:39:55'),
(535, 'tTqGdXtcmKGeQDCxU5170308072006', 'Bayu Wijaya', '081287688760', 'bayu.wijaya1505@gmail.com', 1, '2017-03-08 00:20:06', '2017-03-08 03:39:55'),
(536, '94CcFad8n167ey0O5w170308074322', 'Atika', '082233585588', 'adew.zaini@gmail.com', 1, '2017-03-08 00:43:22', '2017-03-08 03:39:55'),
(537, 'qmalZ0EnDDviACxz4L170308074720', 'Emma', '08123188579', 'nurmawatifatimah@yahoo.com', 1, '2017-03-08 00:47:20', '2017-03-08 03:39:55'),
(538, '9vd1Fe9eOANDljQbxe170308075054', 'elsana ', '085850667970', 'elsanaecha@gmail.com', 1, '2017-03-08 00:50:54', '2017-03-08 03:39:55'),
(539, 'XwqfGkrzrFU1sgy2fv170308075255', 'unin', '081938478952', 'aiyyou.chan@gmail.com', 1, '2017-03-08 00:52:55', '2017-03-08 03:39:55'),
(540, '1eqU3P9v0aSM40HYoC170308075352', 'Ekafz', '087855366574', 'Ekafirdaz@gmail.com', 1, '2017-03-08 00:53:52', '2017-03-08 03:39:55'),
(541, 'sThox6WdSWSNyYJnkQ170308075559', 'Ummu Ihsan', '085733730180', 'rien.syahida@gmail.com', 1, '2017-03-08 00:55:59', '2017-03-08 03:39:55'),
(542, 'AYfjtOzUr39yAHarAu170308082017', 'Via Ariestyani', '085648275575', 'Via.alkayyis@gmail.com', 1, '2017-03-08 01:20:17', '2017-03-08 03:39:55'),
(543, 'jgw54IzCh8DwdbkJ96170308083604', 'ekafz', '087855366275', 'ekafirdaz@gmail.com', 1, '2017-03-08 01:36:04', '2017-03-08 03:39:55'),
(544, 'MWkRe5TmeURVO0YvQH170308091159', 'emil amalia fauzi', '081235056510', 'emilamalia2014@gmail.com', 1, '2017-03-08 02:11:59', '2017-03-08 03:39:55'),
(545, '0M6PvUNibFEYY7QB6Q170308091727', 'Sari', '081332650124', 'ratna_guruspenlos@yahoo.com', 1, '2017-03-08 02:17:27', '2017-03-08 03:39:55'),
(546, 'aU5QaqEyMZXpnIWfWO170308093401', 'Salsabil Delarose', '082245756262', 'salsabildelarose@gmail.com', 1, '2017-03-08 02:34:01', '2017-03-08 03:39:55'),
(547, 'Zmyu4A5Db80qW3ToOD170308093551', 'Salsabil Delarose', '082245756262', 'salsabildelarose@gmail.com', 1, '2017-03-08 02:35:51', '2017-03-08 03:39:55'),
(548, 'KzzCjGbAUv78SCRgwN170308110158', 'Suci rahayu', '08816238215', 'rahayusuci17084@gmail.com', 1, '2017-03-08 04:01:58', '2017-03-14 11:48:52'),
(549, 'bjePUdC39dEPa3k7lV170308123445', 'Sova hayati', '08563516939', 'Sovahayati@gmail.com', 1, '2017-03-08 05:34:45', '2017-03-14 11:48:52'),
(550, '2XzFtlhfoIsjNonpGM170308021002', 'alifia', '085852464061', 'aryaradita825@gmail.com', 1, '2017-03-08 07:10:02', '2017-03-14 11:48:52'),
(551, 'gLV0gxxPmbBeobqGkv170308032337', 'DWI VIANY ANGGRAINI', '085230699993', 'cimut_anggrek@yahoo.co.id', 1, '2017-03-08 08:23:37', '2017-03-14 11:48:52'),
(552, 'H0svkczY9dMKwLmoj8170308035407', 'Yeny Sri Wulan', '08123008009', 'yenysw@gmail.com', 1, '2017-03-08 08:54:07', '2017-03-14 11:48:52'),
(553, 'DIrFR47ObgRDc2k3ht170308045420', 'Nur hayati', '081554152278', 'nurhayatihidayanto@gmail.com', 1, '2017-03-08 09:54:20', '2017-03-14 11:48:52'),
(554, '8R467snuWqgloGtfIp170308070441', 'Rahmi', '082139948810', 'rahmi.noviana@gmail.com', 1, '2017-03-08 12:04:41', '2017-03-14 11:48:52'),
(555, 'alOGiGCypJly6Yz3eW170308092654', 'Yuly', '085755747700', 'yulyrestyva89@gmail.com', 1, '2017-03-08 14:26:54', '2017-03-14 11:48:52'),
(556, 'PtAkSgV8kAG7vARgE7170308103003', 'dhani', '082291236163', 'dhanipers@gmail.com', 1, '2017-03-08 15:30:03', '2017-03-14 11:48:52'),
(557, 's2T56gWkO2Hukx6p9l170308111146', 'Frindara safarindah ', '081332795575 ', 'Frindarasafarindah92@gmail.com', 1, '2017-03-08 16:11:46', '2017-03-14 11:48:52'),
(558, '4HIhP1iYiKd8GRbPVe170309050840', 'Berty', '08116117800', 'Roberty.ks@gmail.com', 1, '2017-03-08 22:08:40', '2017-03-14 11:48:52'),
(559, 'j5CbvIAXhxzpKXNQks170309071643', 'Dian', '085731102393', 'hai.kawan@gmail.com', 1, '2017-03-09 00:16:43', '2017-03-14 11:48:52'),
(560, 'gQrsyRyxzGFwyFepC2170309075757', 'Fitri', '081320204443', 'fhe.puspita@gmail.com', 1, '2017-03-09 00:57:57', '2017-03-14 11:48:52'),
(561, '7ZkkLdAeWKogVA57as170309093503', 'Lisa Desi P', '08123134604', 'lisadesi.p@gmail.com', 1, '2017-03-09 02:35:03', '2017-03-14 11:48:52'),
(562, 'dVEELlCakOucJGFbn2170309111646', 'riska', '0818337721', 'dinafitriska@gmail.com', 1, '2017-03-09 04:16:46', '2017-03-14 11:48:52'),
(563, 'CvQxwdyu0336RORmW8170309035910', 'Rizki Amalia', '087856664725', 'amaliarizki4@gmail.com', 1, '2017-03-09 08:59:10', '2017-03-14 11:48:52'),
(564, 'HV7PqGyWrOf4WkTLfy170309075754', 'Sabrina', '085790824558', 's.qoyimah@gmakl.com', 1, '2017-03-09 12:57:54', '2017-03-14 11:48:52'),
(565, 'nFZZkzayWR9JEmlpOP170309075849', 'Sabrina', '085790824558', 's.qoyimah@gmail.com', 1, '2017-03-09 12:58:49', '2017-03-14 11:48:52'),
(566, 'Ik5KsUZtpWOcVBejJ3170309101727', 'Sari', '0818373153', 'srafsari@yahoo.com', 1, '2017-03-09 15:17:27', '2017-03-14 11:48:52'),
(567, 'UzU1W5fNma4afqgdtB170309101928', 'Sari', '0818373153', 'srafsari@yahoo.com', 1, '2017-03-09 15:19:28', '2017-03-14 11:48:52'),
(568, 'sx8QqNU8k3lUJSXODQ170310055958', 'Mey yanie', '081234626199', 'Meyyanie584@gmail.Com', 1, '2017-03-09 22:59:58', '2017-03-14 11:48:52'),
(569, '7ITvmOaeq5bxTwzrXp170310074809', 'nia', '081232246623', 'nia.herviyanti@yahoo.com', 1, '2017-03-10 00:48:09', '2017-03-14 11:48:52'),
(570, 'L6Zx3eBVxlS6rzCbLE170310080111', 'larasati sukma', '08990404520', 'laras_lampard83@yahoo.com', 1, '2017-03-10 01:01:11', '2017-03-14 11:48:52'),
(571, 'ebjlTVzTQJm92V1tyX170310085409', 'ranti', '08112552505', 'fahmiranti@gmail.com', 1, '2017-03-10 01:54:09', '2017-03-14 11:48:52'),
(572, 'rqigVxIVwl5FdF98UR170310101011', 'Novita Oktaviana', '082335142030', 'Novitaok.no@gmail.com', 1, '2017-03-10 03:10:11', '2017-03-14 11:48:52'),
(573, '3jcuaawSOq2VA5kq6V170310102325', 'zuan auriza', '081217633347', 'zuanaurizazulfa@gmail.com', 1, '2017-03-10 03:23:25', '2017-03-14 11:48:52'),
(574, '7mMrzncmQYEZJq0m3b170310113522', 'tiara', '085732003757', 'tiarapariosi@gmail.com', 1, '2017-03-10 04:35:22', '2017-03-14 11:48:52'),
(575, 'cxUaAzWMwpNlF1gffZ170310113939', 'Trie', '081357779211', 'Triearifin10@gmail.com', 1, '2017-03-10 04:39:39', '2017-03-14 11:48:52'),
(576, 'XyfaEKi7gmrJsrPGlT170310115437', 'Lisna', '081331897389', 'Ainilisnawijayanti13@gmail.com', 1, '2017-03-10 04:54:37', '2017-03-14 11:48:52'),
(577, '1qCamUk8mhXSauQ6gr170310120732', 'elsana', '081252502829', 'elsanaecha@gmail.com', 1, '2017-03-10 05:07:32', '2017-03-14 11:48:52'),
(578, 'DEDGGT1Ql4NZrioxfj170310125226', 'heni', '085700010004', 'istanamahar@hotmail.com', 1, '2017-03-10 05:52:26', '2017-03-14 11:48:52'),
(579, '9GlJwf4vNCwqqogNlw170310125338', 'heni', '085700010004', 'istanamahar@hotmail.com', 1, '2017-03-10 05:53:38', '2017-03-14 11:48:52'),
(580, 'lWjb5eoOZ8bryv7lrv170310011046', 'Ana', '085645054323', 'Vesper_1402@yahoo.co.id', 1, '2017-03-10 06:10:46', '2017-03-14 11:48:52'),
(581, 'svvIotfsbfXksiE8Ur170310013956', 'zakiyah', '081230371085', 'zakiyah.marketing@gmail.com', 1, '2017-03-10 06:39:56', '2017-03-14 11:48:52'),
(582, 'SUVBRv51WfRjIRgPot170310045058', 'Aliya', '089519351448', 'Cenkce.lia@gmail.com', 1, '2017-03-10 09:50:58', '2017-03-14 11:48:52'),
(583, 'wLmE4UJY6tPRziRPvK170310060818', 'Lilik', '081331133036', 'lilik.wijayati99@gmail.com', 1, '2017-03-10 11:08:18', '2017-03-14 11:48:52'),
(584, 'goZo5UE5KqsqoWcCNc170310063445', 'Wuri Handajani', '081217060542', 'Dhani_nisa@yahoo.com', 1, '2017-03-10 11:34:45', '2017-03-14 11:48:52'),
(585, 'Hr8LBCRhKBaa9r8Cfp170310064158', 'zuli', '085733912100', 'zku3290@gmail.com', 1, '2017-03-10 11:41:58', '2017-03-14 11:48:52'),
(586, 'RpwDrIeOPBbhMDOl1s170310074121', 'maya deviana', '08813229793', 'mayadeviana746@gmail.com', 1, '2017-03-10 12:41:21', '2017-03-14 11:48:52'),
(587, 'syal8hKXkHfpIH9JEx170310081322', 'udit agustine yustisiana', '08174130095', 'yustisiana09@gmail.com', 1, '2017-03-10 13:13:22', '2017-03-14 11:48:52'),
(588, 'hSoHgXyxY7IK9JRRG2170310101405', 'Agna', '085730128400', 'agnatasia@yahoo.co.id', 1, '2017-03-10 15:14:05', '2017-03-14 11:48:52'),
(589, 'QUgdB7geoJZpZBidAe170310101500', 'Agna', '085730128400', 'agnatasia@yahoo.co.id', 1, '2017-03-10 15:15:00', '2017-03-14 11:48:52'),
(590, 'e37X2zpuYwrJq1kKqB170311073936', 'Afifah Wafa Rusydina', '085749906778', 'afifahwafar@gmail.com', 1, '2017-03-11 00:39:36', '2017-03-14 11:48:52'),
(591, 'lnLocEhViVc5P88yct170311090222', 'dhani', '082291236163', 'dhanipers@gmail.com', 1, '2017-03-11 02:02:22', '2017-03-14 11:48:52'),
(592, 'THXcFcW1WTcKwnsE3h170311093632', 'Dian ayu', '081311444938', 'dianayukw@gmail.com', 1, '2017-03-11 02:36:32', '2017-03-14 11:48:52'),
(593, 'WLJO1dIm3pzUgix3Da170311093934', 'Chrisnawanti Valentina', '08976640922', 'Nana.hamasaki@gmail.com', 1, '2017-03-11 02:39:34', '2017-03-14 11:48:52'),
(594, 'QDxE1UeBDvlxnh8eN6170311100649', 'Ulvia', '085785522538', 'z_ulvia@yahoo.com', 1, '2017-03-11 03:06:49', '2017-03-14 11:48:52'),
(595, 'uTC6FpEUAzpaL7FRZY170311105633', 'Dwi Retnawati', '085732187805', 'retnawati68@gmail.com', 1, '2017-03-11 03:56:33', '2017-03-14 11:48:52'),
(596, 'kLuUdso2twwOgvEZJU170311110510', 'Chintami dinda', '081217444656', 'chintamidinda27@gmail.com', 1, '2017-03-11 04:05:10', '2017-03-14 11:48:52'),
(597, '4AlE4NVcWOfEL9JIPC170311113039', 'ira', '087882545157', 'iradiyanita@yahoo.com', 1, '2017-03-11 04:30:39', '2017-03-14 11:48:52'),
(598, 'd6CHyLLouXb3qmQgpH170311113200', 'ira', '087882545157', 'iradiyanita@yahoo.com', 1, '2017-03-11 04:32:00', '2017-03-14 11:48:52'),
(599, 'fU992bhBouCfcjWfx9170311114230', 'Mei mulyaningtyas', '082231370328', 'Meimulyaningtyas19@gmail.com', 1, '2017-03-11 04:42:30', '2017-03-14 11:48:52'),
(600, 'AfJWJemK5G8UEiMNoK170311115938', 'Martha', '081216725848', 'yussimarta@gmail.com', 1, '2017-03-11 04:59:38', '2017-03-14 11:48:52'),
(601, 'PT1zIS8By5FclEYS7M170311123534', 'berli', '081252428434', 'jasminedefina@gmail.com', 1, '2017-03-11 05:35:34', '2017-03-14 11:48:52'),
(602, 'In5M7hMXrgyZfn1BP2170311123538', 'Fillah', '081230852111', 'fitaloka27@gmail.com', 1, '2017-03-11 05:35:38', '2017-03-14 11:48:52'),
(603, '7OkejOv4dS8IznicoO170311123713', 'Fillah', '081230852111', 'fitaloka27@gmail.com', 1, '2017-03-11 05:37:13', '2017-03-14 11:48:52'),
(604, 'vrDgrJJuziKYlnNb1F170311125855', 'Nurhuda', '089650422557', 'sayahuda.nh@gmail.com', 1, '2017-03-11 05:58:55', '2017-03-14 11:48:52'),
(605, 'fYWCVAon7ICIZ3hAfI170311051832', 'evi', '082231361745', 'evisoelaiman@gmail.com', 1, '2017-03-11 10:18:32', '2017-03-14 11:48:52'),
(606, 'tyAaLf0j5qvgupdaRL170311053008', 'Astutik', '085101245378', 'titik.ae78@gmail.com', 1, '2017-03-11 10:30:08', '2017-03-14 11:48:52'),
(607, 'pRxvUDXgJR2JasDQZo170311054235', 'Ella', '085646566455', 'berryexcell@gmail.com', 1, '2017-03-11 10:42:35', '2017-03-14 11:48:52'),
(608, 'ZQaXyjdQL7Sq1OAcZa170311055944', 'Lia', '087854242989', 'liasoerja123@gmail.com', 1, '2017-03-11 10:59:44', '2017-03-14 11:48:52'),
(609, 'ZLV6bQEr8ebx63iSFS170311062341', 'raissa', '087850008799', 'raissawinda@gmail.com', 1, '2017-03-11 11:23:41', '2017-03-14 11:48:52'),
(610, 'gk2fLppU0g87pG3AAs170311063634', 'Siti Maryamah', '0818500323', 'huwrin@yahoo.co.id', 1, '2017-03-11 11:36:34', '2017-03-14 11:48:52'),
(611, '8q0pz3azKrxNqUY6qS170311095128', 'Rita Melisa Y', '082245440001', 'happy.melisa@gmail.com', 1, '2017-03-11 14:51:28', '2017-03-14 11:48:52'),
(612, 'JMd7WivvM4rwq62U8K170311101843', 'maynar prasetya hartanti', '083857041785', 'maynar7578@gmail.com', 1, '2017-03-11 15:18:43', '2017-03-14 11:48:52'),
(613, 'cxtvSXhjEffa2hI2jr170311104849', 'Naili Rusdianah', '081333846270', 'naili.rusdianah@icloud.com', 1, '2017-03-11 15:48:49', '2017-03-14 11:48:52'),
(614, 'tIqogZfsOCAv5PkfBu170312060230', 'Saly', '082245353888', 'Saly.rakha@yahoo.com', 1, '2017-03-11 23:02:30', '2017-03-14 11:48:52'),
(615, '6cH8Z2bZzCMUIqjrRI170312074434', 'Diah Astarina', '08123084101', 'astarinadiah@gmail.com', 1, '2017-03-12 00:44:34', '2017-03-14 11:48:52'),
(616, 'iNxU337qe9TLIIY6x2170312092514', 'Dwisetyorini', '082234083771', 'dwinirina@gmail.com.com', 1, '2017-03-12 02:25:14', '2017-03-14 11:48:52'),
(617, 'khOi3VxZvceNP5BnQs170312095221', 'Azhar Fariha ', '083879414022', 'tafitaronri@yahoo.com', 1, '2017-03-12 02:52:21', '2017-03-14 11:48:52'),
(618, 'TQSPcZ0APxmbJfaxsq170312111129', 'desti', '08123285267', 'sumulukutung@gmail.com', 1, '2017-03-12 04:11:29', '2017-03-14 11:48:52'),
(619, '2N9kg0V9e8C4Ja8UaL170312115011', 'Dea Elanda Sistasari', '089681540038', 'delanda310706@gmail.com', 1, '2017-03-12 04:50:11', '2017-03-14 11:48:52'),
(620, 'SdOz2fpCW7ue2ZdIgb170312123743', 'Dian', '083813800075', 'ms.dawr@gmail.com', 1, '2017-03-12 05:37:43', '2017-03-14 11:48:52'),
(621, 'lcwEz4Jw4sP40RHWds170312022506', 'Macie', '085730264493', 'Maciebeethi17@gmail.com', 1, '2017-03-12 07:25:06', '2017-03-14 11:48:52'),
(622, 'O98rQxLjyZeK1oGNeK170312030857', 'Indri', '083854784551', 'Selvyindria@gmail.com', 1, '2017-03-12 08:08:58', '2017-03-14 11:48:52'),
(623, 'Fs8xgY9DFS88yIRXnR170312032409', 'Sri hariyati', '0811370358', 'Srihariyati1@yahoo.co.id', 1, '2017-03-12 08:24:09', '2017-03-14 11:48:52'),
(624, 'jXNPYyHtCzlr57CPio170312040743', 'Leli yuni puspita', '085732148559', 'puspita_leli@ymail.com', 1, '2017-03-12 09:07:43', '2017-03-14 11:48:52'),
(625, 'Soi3NKl3fmTUMu87uM170312053856', 'palupi', '082139785918', 'ubaylupi@gmail.com', 1, '2017-03-12 10:38:56', '2017-03-14 11:48:52'),
(626, 'jX60q7TWABzpFAFf2I170312075824', 'Nitha', '081554446053', 'Nitha.ramatourssub@gmail.com', 1, '2017-03-12 12:58:24', '2017-03-14 11:48:52'),
(627, 'nYaG3F5Art7mKS94ex170312080327', 'Tyas Hesty Widuri', '082225229123', 'heztea@yahoo.com', 1, '2017-03-12 13:03:27', '2017-03-14 11:48:52'),
(628, 'N85u60BNk7ZVTXaTdc170312081627', 'Aulia', '081364023125', 'Parmawati.aulia@gmail.com', 1, '2017-03-12 13:16:27', '2017-03-14 11:48:52'),
(629, 'iy27awcEVRtRzaYWEP170312083407', 'Reni', '08125983333e', 'Anggraeni.diyahe@gmail.com', 1, '2017-03-12 13:34:07', '2017-03-14 11:48:52'),
(630, '6iLdUowepkpVwhOgsm170312093905', 'Rini', '08563140461', 'rini_mahmudah@yahoo.co.id', 1, '2017-03-12 14:39:05', '2017-03-14 11:48:52'),
(631, 'Fc92cV3Lb6sgEX6W2j170313044550', 'titin', '081232727837', 'tntitin@gmail.com', 1, '2017-03-12 21:45:50', '2017-03-14 11:48:52'),
(632, '4jPVltOC7BH3IrzS3l170313044708', 'titin', '081232727837', 'tntitin@gmail.com', 1, '2017-03-12 21:47:08', '2017-03-14 11:48:52'),
(633, 'J3FPVuhjYtvljL5wIk170313052616', 'Ajeng azzahra ', '085232078876', 'Nurmawilujeng@yahoo.co.id', 1, '2017-03-12 22:26:16', '2017-03-14 11:48:52'),
(634, 'xGdKoxZkRGWd10EAzS170313052717', 'Ajeng', '085232078876', 'Nurmawilujeng@yahoo.co.id', 1, '2017-03-12 22:27:17', '2017-03-14 11:48:52'),
(635, '5FiCp9pPcBm1batqpS170313075304', 'dian', '089675721583', 'diaaanz.puspita@gmail.com', 1, '2017-03-13 00:53:04', '2017-03-14 11:48:52'),
(636, 'XGDwtQnj7BrKDjkvqT170313080840', 'Renni', '08813255174', 'rennidewisusanti@yahoo.com', 1, '2017-03-13 01:08:40', '2017-03-14 11:48:52'),
(637, 'FAdw0XmeVrSKT7uLTD170313084353', 'Mei', '08551012229', 'Myrna.meinita@gmail.comb', 1, '2017-03-13 01:43:53', '2017-03-14 11:48:52'),
(638, 'yayKYQArx0cySn9ace170313085835', 'Dyah Ayu', '085757535317', 'to57days@yahoo.co.id', 1, '2017-03-13 01:58:35', '2017-03-14 11:48:52'),
(639, 'fbvelawyXf2I4rYl5H170313094101', 'Pramita', '081331636374', 'mita.andarwati@gmail.com', 1, '2017-03-13 02:41:01', '2017-03-14 11:48:52'),
(640, 'YVVPQ3wLgQmC83eVQd170313101957', 'suci masruroh', '085607307114', 'msuciazza_1404@yahoo.com', 1, '2017-03-13 03:19:57', '2017-03-14 11:48:52'),
(641, 'i2Muo4PU86CpzTmgAc170313103242', 'indah', '083896117759', 'indahsetia1920@gmail.com', 1, '2017-03-13 03:32:42', '2017-03-14 11:48:52'),
(642, 'EK5OqcHTkNGLJBmC5F170313111732', 'Yuli', '085102811099', 'yuli.utami79@gmail.com', 1, '2017-03-13 04:17:32', '2017-03-14 11:48:52'),
(643, 'jrzmrZ4KPvZSbsF5PV170313112958', 'rini', 'rini may diana', 'rinimaydiana73@gmail.com', 1, '2017-03-13 04:29:58', '2017-03-14 11:48:52'),
(644, 'Vbm549czzDwXxkoNWv170313122241', 'rahayu', '082143930333', 'rwilujeng@gmail.com', 1, '2017-03-13 05:22:41', '2017-03-14 11:48:52'),
(645, 'e5UlqvUr5e9jUSFGxm170313124319', 'Anita', '082233153415', 'Arkanitaz@yahoo.co.id', 1, '2017-03-13 05:43:19', '2017-03-14 11:48:52'),
(646, 'ysPxNDa0TwSmCyxxrR170313024230', 'Yayuk', '085749662410', 'yayuk_yuliawati@yahoo.com', 1, '2017-03-13 07:42:30', '2017-03-14 11:48:52'),
(647, 'U51Uesgw1LqQOpkwsX170313025422', 'Mala', '08553000333', 'Qhunyil@yahoo.com', 1, '2017-03-13 07:54:22', '2017-03-14 11:48:52'),
(648, 'ber2563F3hR2Gt1qm4170313025540', 'erlin puspitasari', '085646464389', 'erlinsypinter@yahoo.com', 1, '2017-03-13 07:55:40', '2017-03-14 11:48:52'),
(649, 'ccPK9xNfQ2numqMFFZ170313033426', 'Gusti dewi', '081331790896', 'gustimirza@ymail.com', 1, '2017-03-13 08:34:26', '2017-03-14 11:48:52'),
(650, 'pSyZV5l5xaEi0YYQ0A170313041229', 'Dewi Margareta', '082231403537', 'rethaajadeh@gmail.com', 1, '2017-03-13 09:12:29', '2017-03-14 11:48:52'),
(651, 'OAEcnGGptry7GAtS1m170313041956', 'Dewi Margareta', '082231403537', 'rethaajadeh@gmail.com', 1, '2017-03-13 09:19:56', '2017-03-14 11:48:52'),
(652, 'iKa3L4vyzC7HyQ87dz170313042127', 'Dewi Margareta', '082231403537', 'rethaajadeh@gmail.com', 1, '2017-03-13 09:21:27', '2017-03-14 11:48:52'),
(653, 'AlWBwirTaSF1yOm5Bn170313062051', 'citraadityari', '0315046154', 'citraadityari@gmail.com', 1, '2017-03-13 11:20:51', '2017-03-14 11:48:52'),
(654, '7Xkf8cgEvqY4anPpbT170313082634', 'Ika Indra', '+6287854020010', 'ikacharita@yahoo.com', 1, '2017-03-13 13:26:34', '2017-03-14 11:48:52'),
(655, '07TbtYxeiz2G7Sfy2Q170313083005', 'Ismia rahmah', '081234424297', 'ismiarahmah@gmail.com', 1, '2017-03-13 13:30:05', '2017-03-14 11:48:52'),
(656, 'xd8YtjYe3blcKq3nrb170313085129', 'Windy', '081330444150', 'Windypru@gmail.com', 1, '2017-03-13 13:51:29', '2017-03-14 11:48:52'),
(657, 'vVEbcd9Qh18qb18MfP170313093207', 'yunita', '085236605283', 'yunitaanoraga@gmail.com', 1, '2017-03-13 14:32:07', '2017-03-14 11:48:52'),
(658, 'jOWMlUDipa6Sn9Gizh170314030224', 'Nuris', ' 085727641684', 'Shofiananuris@gmail.com', 1, '2017-03-13 20:02:24', '2017-03-14 11:48:52'),
(659, 'cVQYOAatwxcmz0XoEJ170314082925', 'Atika', '0817336632', 'atikasulthan@gmail.com', 1, '2017-03-14 01:29:25', '2017-03-14 11:48:52'),
(660, 'MqaxqA5T4s7YZMCFYW170314085604', 'dian', '081330319526', 'heroedian26@gmail.com', 1, '2017-03-14 01:56:04', '2017-03-14 11:48:52'),
(661, 'UZAWUoeO24bVYz5pFp170314103311', 'Triana Tungga Dewi', '081548535733', 'trianatunggadewi@yahoo.co.id', 1, '2017-03-14 03:33:11', '2017-03-14 11:48:52'),
(662, 'oBPNU9KJOl08QwED0H170314103816', 'Ari', '085865866740', 'ndhank80@gmail.com', 1, '2017-03-14 03:38:16', '2017-03-14 11:48:52'),
(663, 'LxED5UcicsTIeFNDVT170314105139', 'indah', '081233204700', 'enny.indasyah@untag-sby.ac.id', 1, '2017-03-14 03:51:39', '2017-03-14 11:48:52'),
(664, 'mom2vk789nwUzQaCUX170314105740', 'ratna nawang', '082231110939', 'nawangratna@yahoo.co.id', 1, '2017-03-14 03:57:40', '2017-03-14 11:48:52'),
(665, '8DgtsValks5NN64uvK170314105748', 'pipit', '089690981808', 'fitrazka@gmail.com', 1, '2017-03-14 03:57:48', '2017-03-14 11:48:52'),
(666, 'MCeB26mFfvQmE790nJ170314105928', 'Nina', '081234833902', 'nina27inaya@gmail.com', 1, '2017-03-14 03:59:28', '2017-03-14 11:48:52'),
(667, 'ETDkF9UEHZwOlG6xLt170314114257', 'Pramita k.w', '081333902322', 'pramitakusumawardani@gmail.com', 1, '2017-03-14 04:42:57', '2017-03-14 11:48:52'),
(668, 'LfAwC4VtuoUCwuYVrb170314114718', 'Annisa rachma', '0856 3289369', 'annisa.rachma1991@gmail.com', 1, '2017-03-14 04:47:18', '2017-03-14 11:48:52'),
(669, 'DGUNZ4vnklKEREvBH9170314124003', 'Triana Tungga Dewi', '081548535733', 'trianatunggadewi@yahoo.co.id', 1, '2017-03-14 05:40:03', '2017-03-14 11:48:52'),
(670, 'VfU6ZoZ0wgJrQFK2Ac170314012817', 'Hesty', '081312746083', 'hestywulandr@yahoo.com', 1, '2017-03-14 06:28:17', '2017-03-14 11:48:52'),
(671, 'G5CHxuNFDtFYW06fNG170314022151', 'Anita', '081217923100', 'anitamaria_81@yahoo.com', 1, '2017-03-14 07:21:51', '2017-03-14 11:48:52'),
(672, 'KQl6CLyRBBV82nTJqz170314022248', 'Anita', '081217923100', 'anitamaria_81@yahoo.com', 1, '2017-03-14 07:22:48', '2017-03-14 11:48:52'),
(673, '7ZOvFWaqLPja4KfCvZ170314022403', 'ANITA', '081217923100', 'anitamaria_81@yahoo.com', 1, '2017-03-14 07:24:03', '2017-03-14 11:48:52'),
(674, '1kB3tZ9urIlORpSPv4170314022901', 'musdalifah', '081335322823', 'musdalifahsyahrir@gmail.com', 1, '2017-03-14 07:29:01', '2017-03-14 11:48:52'),
(675, 'xZCwKdSuyzOvqt6HhT170314023138', 'Desy putri ', '082234444856', 'desi.puput91@gmail.com', 1, '2017-03-14 07:31:38', '2017-03-14 11:48:52'),
(676, 'YjrWuX99B4fIARCTv6170314023254', 'Desy putri ', '082234444856', 'desi.puput91@gmail.com', 1, '2017-03-14 07:32:54', '2017-03-14 11:48:52'),
(677, '8DKyaPyQOwRXoU6nCt170314025716', 'Sulis', '082131085123', 'wsulis21@yahoo.com', 1, '2017-03-14 07:57:16', '2017-03-14 11:48:52'),
(678, 'PhB03ZM8CVEjQveY8d170314030829', 'Dyah', '087855164312', 'Fadiahkuddeh@ymail.com', 1, '2017-03-14 08:08:29', '2017-03-14 11:48:52'),
(679, 'q7VU0PYoJZM2MJvan9170314030915', 'Kustiah', '081331351681', 'dr.tya.labalo@gmail.com', 1, '2017-03-14 08:09:15', '2017-03-14 11:48:52'),
(680, 'dvdRBEtlkt0o0ceGVj170314035707', 'Erniria Puspawati', '086858681257', 'erniriapuspa@gmail.com', 1, '2017-03-14 08:57:07', '2017-03-14 11:48:52'),
(681, '7sCdrep7rkjVg40faN170314043505', 'tutie wiliyantie', '08135754', 'wiliyantienaripan@gmail.com', 1, '2017-03-14 09:35:05', '2017-03-14 11:48:52'),
(682, '7P7URvg6VXGMVmGPIf170314044025', 'tutie wiliyantie', '081357535435', 'wiliyantienaripan@gmail.com', 1, '2017-03-14 09:40:25', '2017-03-14 11:48:52'),
(683, 'NPNRPQyI2fAYThoEzD170314045427', 'Ira', '08176031505', 'ira_dispora@yahoo.com', 1, '2017-03-14 09:54:27', '2017-03-14 11:48:52'),
(684, '1pdOZeb3FeR9DhiXTQ170314050540', 'Wulan', '085730004433', 'oyen.item@yahoo.com', 1, '2017-03-14 10:05:40', '2017-03-14 11:48:52'),
(685, 'abtWcE22RThWWGOb34170314053403', 'rachmi', '089661275734', 'omie_angel@yahoo.com', 1, '2017-03-14 10:34:03', '2017-03-14 11:48:52'),
(686, 'ZEnwaCji944XtEfgkw170314053544', 'rachmi', '089661275734', 'omie_angel@yahoo.com', 1, '2017-03-14 10:35:44', '2017-03-14 11:48:52'),
(687, 'xrLSkqpmVPs794EGVu170314060641', 'Dira', '081337271521', 'dear_drl@yahoo.com', 1, '2017-03-14 11:06:41', '2017-03-14 11:48:52'),
(688, '9yrCGeSB8ZRVTUMLrK170314065235', 'Indah', '081230790231', 'rien.indah81@gmail.com', 1, '2017-03-14 11:52:35', '2017-04-13 09:24:08'),
(689, 'iSlPIvXYtXRaDsxpF6170314070232', 'aprilia', '085288437863', 'apri139lia@gmail.com', 1, '2017-03-14 12:02:32', '2017-04-13 09:24:08'),
(690, 'JeHoVm8YmVKjOaHN8h170314072832', 'Js', '0810384738377', 'Coldanov@yahoo.com', 1, '2017-03-14 12:28:32', '2017-04-13 09:24:08'),
(691, 'hB292GiruIXsTOFDFw170314075542', 'Laily', '08331292300', 'laily.kurnianita@gmail.com', 1, '2017-03-14 12:55:42', '2017-04-13 09:24:08'),
(692, 'hrDzRy9eZvyHRTiH4V170314080618', 'zalfa', '081935827888', 'zalfaputry.ramadhani01@gmail.com', 1, '2017-03-14 13:06:18', '2017-04-13 09:24:08'),
(693, 'HyVkXoaCgfGUYVQ2b5170314084601', 'Lely', '081332268793', 'lely_anest@yahoo.co.id', 1, '2017-03-14 13:46:01', '2017-04-13 09:24:08'),
(694, '7csK1rZ6qC3R7xUSfZ170314091321', 'Weena Ummu Hamish', '081803177004', 'datacollectregional2@gmail.com', 1, '2017-03-14 14:13:21', '2017-04-13 09:24:08'),
(695, 'XtcOd7XWKHcppfm3ZS170314100814', 'Nurul Fatimah', '081515100005', 'noe.sby@gmail.com', 1, '2017-03-14 15:08:14', '2017-04-13 09:24:08'),
(696, 'Jb5usxHSX33IZlHMnp170315054523', 'Fajarwati ', '085645898686', 'fajarwati.nadhif@gmail.com', 1, '2017-03-14 22:45:23', '2017-04-13 09:24:08'),
(697, 'vrkpX1M5GBbZd31DbK170315074835', 'Vitri Dinayanti', '08999489099', 'naufaldina478@gmail.com', 1, '2017-03-15 00:48:35', '2017-04-13 09:24:08'),
(698, 'E9xVcCVrN87Q5Q8Lpk170315100527', 'Elly Muflichatin', '089531621202', 'ellymuflichatin@gmail.com', 1, '2017-03-15 03:05:27', '2017-04-13 09:24:08'),
(699, 'KVIBHOVIRABWJq6yfX170315102207', 'Sosialita dewi p', '085730739005', 'Sosialita.sdp@gmail.com', 1, '2017-03-15 03:22:07', '2017-04-13 09:24:08'),
(700, 'zgDE5JmhSR6Vu57M8D170315103544', 'Dila', '08123114368', 'Namakudila@yahoo.com', 1, '2017-03-15 03:35:44', '2017-04-13 09:24:08'),
(701, '5D90AL1Xcq3MI1XRBa170315103622', 'della mei priajeng witri', '08165431829', 'dellawitri@gmail.com', 1, '2017-03-15 03:36:22', '2017-04-13 09:24:08'),
(702, 'T3HX0k6UGL1y0MQgmS170315112627', 'Fithri', '085607966909', 'putriperwira48@gmail.com', 1, '2017-03-15 04:26:27', '2017-04-13 09:24:08'),
(703, 'ywrUUHIwwe7LndjRYj170315114320', 'Yanuta', '081807766650', 'dheeann@yahoo.com', 1, '2017-03-15 04:43:20', '2017-04-13 09:24:08'),
(704, '08Dhw44Cim3nuOKqHj170315123220', 'Ika', '082140850389', 'Lailatulkamalia@ymail.com', 1, '2017-03-15 05:32:20', '2017-04-13 09:24:08'),
(705, 'WINDkWh4v8pDZet6oI170315123408', 'Ika', '082140850389', 'Lailatulkamalia@ymail.com', 1, '2017-03-15 05:34:08', '2017-04-13 09:24:08'),
(706, 'bESsMTgkNG2cNKeBDb170315025549', 'Latifa', '081333787176', 'latifatur.lr@gmail.com', 1, '2017-03-15 07:55:49', '2017-04-13 09:24:08'),
(707, 'uu3PSi2qlQKiTBJT6a170315032154', 'silvia dwi susanti', '081230424974', 'silvia.dwisusanti@gmail.com', 1, '2017-03-15 08:21:54', '2017-04-13 09:24:08'),
(708, 'ZNpnpi9hL1ftNllLX0170315051117', 'palmyra', '0821.3223.2932', 'palmyra43psikolog@gmail.com', 1, '2017-03-15 10:11:17', '2017-04-13 09:24:08'),
(709, 'FtRm6zI3vzeDJbMgbk170315052213', 'fafa', '08113229977', 'Zha.more@gmail.com', 1, '2017-03-15 10:22:13', '2017-04-13 09:24:08'),
(710, 'WKvpx8EIQEkdakXgWD170315070943', 'Laras', '081228595000', 'laras2008x@yahoo.com', 1, '2017-03-15 12:09:43', '2017-04-13 09:24:08');
INSERT INTO `download_pricelist` (`id`, `token`, `name`, `phone`, `email`, `readed`, `created_at`, `updated_at`) VALUES
(711, 'LYNxn6IgeyVZZL5ssv170315071239', 'Sulis', '081330309596', 'sulistyowati234@gmail.com', 1, '2017-03-15 12:12:39', '2017-04-13 09:24:08'),
(712, '8hQ66SxrSh3TUizQHT170315084443', 'Ana', '08123515911', 'buffon_78@yahoo.com', 1, '2017-03-15 13:44:43', '2017-04-13 09:24:08'),
(713, 'TfihQjLC9MhSA32MAM170315093927', 'Choiril ummah', '081330517271', 'Bundajj87@gmail.com', 1, '2017-03-15 14:39:27', '2017-04-13 09:24:08'),
(714, 'D4hkPjj9PCZFHmJmL0170315101008', 'Ita', '0811333544', 'Itamasita85@yahoo.com', 1, '2017-03-15 15:10:08', '2017-04-13 09:24:08'),
(715, 'G6MgfNKoezGLAbmAzD170315101818', 'nurul fatikah', '081332381918', 'nurul.fatikah@ymail.com', 1, '2017-03-15 15:18:18', '2017-04-13 09:24:08'),
(716, 'yaDQknyMH2NVmyzJVn170316030321', 'ratna eka', '08563047778', 'ratna.e.puspitasari@gmail.com', 1, '2017-03-15 20:03:21', '2017-04-13 09:24:08'),
(717, '5vpBWQncEO0OiZ87p8170316044725', 'Inung', '085649489822', 'Inung89@gmail.com', 1, '2017-03-15 21:47:25', '2017-04-13 09:24:08'),
(718, 'cdqsvS23ilBlImTDlL170316060947', 'palmyra sukmaningsih', '0821.3223.2932', 'palmyra43psikolog@gmail.com', 1, '2017-03-15 23:09:47', '2017-04-13 09:24:08'),
(719, '6RjekXcnnxJuehN2Ij170316072314', 'Chairani', '085852401335', 'Chairanibustamam30@gmail.com', 1, '2017-03-16 00:23:14', '2017-04-13 09:24:08'),
(720, 'NGCwTXY6WtU1Sf7XXL170316090019', 'sapta', '082142536210', 'saptadarmayanti@yahoo.co.id', 1, '2017-03-16 02:00:19', '2017-04-13 09:24:08'),
(721, 'ksaqH1ndHol0qdWEWc170316092217', 'Novita Ayu', '085732066075', 'Novita_ayu58@yahoo.com', 1, '2017-03-16 02:22:17', '2017-04-13 09:24:08'),
(722, 'PrP8hNCxFLnvh58nRt170316100441', 'Diana', '081803225972', 'dianarina.72@gmail.com', 1, '2017-03-16 03:04:41', '2017-04-13 09:24:08'),
(723, '1DurYMDkBbeYsdMhmK170316115153', 'meiliyah', '085733706336', 'meiliyah28@gmail.com', 1, '2017-03-16 04:51:53', '2017-04-13 09:24:08'),
(724, '9iAdtTUqavEWgHycZF170316125011', 'Ima fuaidah', '085236136617', 'ima_fuaidah@yahoo.com', 1, '2017-03-16 05:50:11', '2017-04-13 09:24:08'),
(725, 'Py0IvbL0CAWNmJdv5W170316125936', 'Lita', '081334482434', 'Idaarlitawulandari@gmail.com', 1, '2017-03-16 05:59:36', '2017-04-13 09:24:08'),
(726, 'g3F2CeiC0mxqZByN80170316010040', 'Lita', '081334482434', 'idaarlitawulandari@gmail.com', 1, '2017-03-16 06:00:40', '2017-04-13 09:24:08'),
(727, '7q0pT4hYB0bXRER9xb170316013656', 'Rizal', '081233995580', 'indonesia.rizal@gmail.com', 1, '2017-03-16 06:36:56', '2017-04-13 09:24:08'),
(728, '48wslzbijn1fr9ytXW170316014824', 'Fariz', '08155066000', 'Salwadinar08@gmail.co.id', 1, '2017-03-16 06:48:24', '2017-04-13 09:24:08'),
(729, 'UJTEXKBRMxU6gLb6dz170316023957', 'sari', '081336706556', 'puspamamaicha@gmail.com', 1, '2017-03-16 07:39:57', '2017-04-13 09:24:08'),
(730, '0yTy7Xdi5RVd13hhO1170316024612', 'Ella', '085646566455', 'berryexcell@gmail.com', 1, '2017-03-16 07:46:12', '2017-04-13 09:24:08'),
(731, 'soDvIk5yv2JMrJ1HxP170316060427', 'zakiyah', '081212820368', 'mamluatuzzakiyah@ymail.com', 1, '2017-03-16 11:04:27', '2017-04-13 09:24:08'),
(732, 'Ai9RmCgCLGyjzL2WDl170316061540', 'April', '082231035600', 'nugraheni_apriy@yahoo.co.id', 1, '2017-03-16 11:15:40', '2017-04-13 09:24:08'),
(733, '0TFM0fCLVP6yDavM6l170316082956', 'Maftuchatul nujum', '085646104115', 'jumiechan165@gmail.com', 1, '2017-03-16 13:29:56', '2017-04-13 09:24:08'),
(734, 'MkWIivyijouyQxJvYi170316093721', 'Winda', '081231187472', 'wilus_72@yahoo.co.id', 1, '2017-03-16 14:37:21', '2017-04-13 09:24:08'),
(735, 'GVzRoTWtcHyCTZV01S170316093848', 'Winda', '081231187472', 'wilus_72@yahoo.co.id', 1, '2017-03-16 14:38:48', '2017-04-13 09:24:08'),
(736, 'LZCLcrh4sFmJ34jYNb170317084028', 'Nur', '081330197402', 'elisyahidah@gmail.com', 1, '2017-03-17 01:40:28', '2017-04-13 09:24:08'),
(737, 'kpDofDKZDvQaOfrWKI170317093347', 'rachmawati', '081252663496', 'alrachma89@gmail.com', 1, '2017-03-17 02:33:47', '2017-04-13 09:24:08'),
(738, '11gLOLkv6GZxuOLdi1170317093629', 'rachma', '081252663496', 'alrachma89@gmail.com', 1, '2017-03-17 02:36:29', '2017-04-13 09:24:08'),
(739, 'GnqAfxYcZd6KU9ZQWZ170317015324', 'anonymus', '08289837981', 'axel.aziz@gmail.com', 1, '2017-03-17 06:53:24', '2017-04-13 09:24:08'),
(740, 'uzywh49TFjodnBgPtk170317055706', 'Ellya', '081234510366', 'elmu96@gmail.com', 1, '2017-03-17 10:57:06', '2017-04-13 09:24:08'),
(741, 'pB7QyJV4G402611CLg170317091722', 'Amirah', '085691173465', 'alkaff.khodijah@gmail.com', 1, '2017-03-17 14:17:22', '2017-04-13 09:24:08'),
(742, 'lSjftRRT668ly51PBa170317100725', 'fifi', '082187393439', 'callviste01@gmail.com', 1, '2017-03-17 15:07:25', '2017-04-13 09:24:08'),
(743, '7ioB1BCZPWVivxccLD170317105752', 'yetti', '081232323831', 'yettimuyassaroh@gmail.com', 1, '2017-03-17 15:57:52', '2017-04-13 09:24:08'),
(744, 'rm7eSjGcYrGqFuMhKo170317113714', 'reno', '081313273541', 'reno@gmail.com', 1, '2017-03-17 16:37:14', '2017-04-13 09:24:08'),
(745, '06C765eysha4XQ7xno170318014405', 'elok', '081336628235', 'fara_4dilla@yahoo.com', 1, '2017-03-17 18:44:05', '2017-04-13 09:24:08'),
(746, '2zfTsT873CYbhYhe8P170318074332', 'dyah nila', '085755583621', 'dyahnila@gmail.com', 1, '2017-03-18 00:43:32', '2017-04-13 09:24:08'),
(747, 'lcjjdGHMfUvj3JHoS6170318090923', 'shoffy', '089674299453', 'shoffyhaqoeney@gmail.com', 1, '2017-03-18 02:09:23', '2017-04-13 09:24:08'),
(748, 'SpDRaXzpshO3tWwqGA170318091317', 'Tantri', '085850066990', 'kachus46@yahoo.co.id', 1, '2017-03-18 02:13:17', '2017-04-13 09:24:08'),
(749, 'FGB3nxRKsnurqqlpnk170318103701', 'Putri ardyasana', '082139391160', 'lope_panda@yahoo.co.id', 1, '2017-03-18 03:37:01', '2017-04-13 09:24:08'),
(750, 'iFXwb3Hs5yOQc0dv8C170318015256', 'Mey Mutrofin', '081230331454', 'c_moedz@ymail.com', 1, '2017-03-18 06:52:56', '2017-04-13 09:24:08'),
(751, 'kNvYxHeZL2clOlFS0r170318045413', 'Lintang', '081334001836', 'LintangLaras@ymail.com', 1, '2017-03-18 09:54:13', '2017-04-13 09:24:08'),
(752, 'cIuvTTrCCErER6ITGF170318051256', 'lika ochit', '081554111677', 'phioliv@gmail.com', 1, '2017-03-18 10:12:56', '2017-04-13 09:24:08'),
(753, 'f7Ga1rxt64GCl5cgug170318051655', 'Robiah', '085755143369', 'Robeeah_saronggi@yahoo.com', 1, '2017-03-18 10:16:55', '2017-04-13 09:24:08'),
(754, 'g06MqePdNv1hdxkxpW170318072042', 'sakinah', '085258051139', 'izzahsakinatul@gmail.com', 1, '2017-03-18 12:20:42', '2017-04-13 09:24:08'),
(755, 'jdgAqUt5Msq3mtrpD1170318080206', 'Lisamilawati', '082231014365', 'Lisa150481@gmail.com', 1, '2017-03-18 13:02:06', '2017-04-13 09:24:08'),
(756, '0XURcHDTt7XPvRgtYp170318093220', 'Listya Paramita', '081216979898', 'listyaparamita@yahoo.com', 1, '2017-03-18 14:32:20', '2017-04-13 09:24:08'),
(757, '29r4JjvUFHsg8e94fh170318094243', 'Lia', '081387771274', 'lia.rsbs@gmail.com', 1, '2017-03-18 14:42:43', '2017-04-13 09:24:08'),
(758, 'zGCiUyIKLylD7RC4Sb170318111905', 'Devynia', '081230222667', 'devynia@yahoo.con', 1, '2017-03-18 16:19:05', '2017-04-13 09:24:08'),
(759, 'NDC5oNGZEuvv1h8ikD170319052646', 'Dwi widya sari', '083857490220', 'dwi.widya.sari@gmail.com', 1, '2017-03-18 22:26:46', '2017-04-13 09:24:08'),
(760, 'LSYuArfc76gL1KYLUB170319062841', 'dian hernaeny putri', '+6285645512952', 'dian.hernaeny@gmail.com', 1, '2017-03-18 23:28:41', '2017-04-13 09:24:08'),
(761, 'm7eN7LVW2SdiM2ESDZ170319072417', 'Yuliana', '082234194826', 'Yuluanabukid@gmail.com', 1, '2017-03-19 00:24:17', '2017-04-13 09:24:08'),
(762, 'xXTSuGB33OUq35cuFe170319085636', 'Laksita Endah Wijayanti', '08123189003', 'laksita_ew@yahoo.co.id', 1, '2017-03-19 01:56:36', '2017-04-13 09:24:08'),
(763, 'xqF13aYNuHpYUhPSqO170319085758', 'Laksita Endah Wijayanti', '08123189003', 'Laksita_ew@yahoo.co.id', 1, '2017-03-19 01:57:58', '2017-04-13 09:24:08'),
(764, '8qrVReyG4OANGSnfHS170319095028', 'Else Agustina', '08113606381', 'else1311@yahoo.com', 1, '2017-03-19 02:50:28', '2017-04-13 09:24:08'),
(765, 'IZbQB9ALB9t1hI5PL0170319115733', 'annes suhita dewi', '081340610816', 'Algyand123@gmail.com', 1, '2017-03-19 04:57:33', '2017-04-13 09:24:08'),
(766, 'BMN8GtYth7DdjiBUGC170319122444', 'Astrud', '0817317939', 'almas_dira@yahoo.com', 1, '2017-03-19 05:24:44', '2017-04-13 09:24:08'),
(767, 'BoqTNr4mGMFd6wyUqR170319013857', 'Susiani', '085655489151', 'Susikusindiarto@gmail.com', 1, '2017-03-19 06:38:57', '2017-04-13 09:24:08'),
(768, 'DbxzT7p7ZaBe2VJTT0170319043534', 'anita', '087751047997', 'sittiimamahmad@gmail.com', 1, '2017-03-19 09:35:34', '2017-04-13 09:24:08'),
(769, 'NHwri2x3p5w3mwG0zP170319070723', 'Wihda', '085733011965', 'safirbiruelf@gmail.com', 1, '2017-03-19 12:07:23', '2017-04-13 09:24:08'),
(770, 'Hwy0ZpainLNf3WiA1Y170319100235', 'Himmatusy syarifah', '081333501585', 'syarifah.syarifah668@gmail.com', 1, '2017-03-19 15:02:35', '2017-04-13 09:24:08'),
(771, 'y26MahF2QziTn9APu0170319110216', 'Tutik anifah', '085784527518', 'tutilutu@gmail.com', 1, '2017-03-19 16:02:16', '2017-04-13 09:24:08'),
(772, 'vGU2nDNaFH3nkAuEZU170319110327', 'Tutik anifah', '085784527518', 'tutilutu@gmail.com', 1, '2017-03-19 16:03:27', '2017-04-13 09:24:08'),
(773, 'rssTQ3S6FEnfsTMV72170319113203', 'triana', '081230229609', 'tyuliwanti@gmail.com', 1, '2017-03-19 16:32:03', '2017-04-13 09:24:08'),
(774, '5ZVuViylpZVZkZex4H170320120031', 'Chandra fibriana', '08123595608', 'Febrizons@gmail.com', 1, '2017-03-19 17:00:31', '2017-04-13 09:24:08'),
(775, 'psFJUSouJL8ZN4zycc170320010731', 'Nia', '089682488355', 'Hikarisonia@gmail.com', 1, '2017-03-19 18:07:31', '2017-04-13 09:24:08'),
(776, 'nmH4WJ2FeUiFMKHyu3170320081540', 'Erina', '08118109386', 'Erina.dmy@gmail.com', 1, '2017-03-20 01:15:40', '2017-04-13 09:24:08'),
(777, '97ALRWM6EgmPMEUBKh170320115940', 'April', '082231035600', 'enugrahega@gmail.com', 1, '2017-03-20 04:59:40', '2017-04-13 09:24:08'),
(778, '0XKnGsUk9GcCmWD54D170320120009', 'inayatur rofiqoh', '081326386910', 'iin.bopal@yahoo.com', 1, '2017-03-20 05:00:09', '2017-04-13 09:24:08'),
(779, 'zf54ckm0u9PUwN1CtR170320020618', 'ririwijk', '085230811818', 'ririwijk@gmail.com', 1, '2017-03-20 07:06:18', '2017-04-13 09:24:08'),
(780, 'WCGUtc5DtURLdaxzcl170320065942', 'LITA NOVILIA', '085645919044', 'litanovilia3@gmail.com', 1, '2017-03-20 11:59:42', '2017-04-13 09:24:08'),
(781, 'MCyXhILZBzGIosJGK3170320090251', 'Yuniar', '087860226042', 'yuniarptyas@yahoo.com', 1, '2017-03-20 14:02:51', '2017-04-13 09:24:08'),
(782, 'qs8Ve7gk0iSciLlw54170320094809', 'Era', '082141140400', 'nyonyaardhata@gmail.com', 1, '2017-03-20 14:48:09', '2017-04-13 09:24:08'),
(783, 'EdgfOte2Mhiduc4nik170320095118', 'era', '082141140400', 'eraartika@gmail.com', 1, '2017-03-20 14:51:18', '2017-04-13 09:24:08'),
(784, 'u2bL2LGmaU5lCNcxcR170321011350', 'Yeti', '082234000039', 'yetisofianah@gmail.com', 1, '2017-03-20 18:13:50', '2017-04-13 09:24:08'),
(785, 's45swaxYSovJuBjHYg170321092814', 'Laili rahmawati', '082134502579', 'Lailirahmawati79@yahoo.co.id', 1, '2017-03-21 02:28:14', '2017-04-13 09:24:08'),
(786, 'TLShdlZRQUUjfysFQx170321100630', 'Opie', '081234083296', 'Opiew13n@gmail.com', 1, '2017-03-21 03:06:30', '2017-04-13 09:24:08'),
(787, 'tcfqSI80eW2dFXqPSL170321105618', 'Vonny Novianto', '085656794599', 'vonnymaya@yahoo.com', 1, '2017-03-21 03:56:18', '2017-04-13 09:24:08'),
(788, 'zOjEz6MYX8YDp7EAuV170321111751', 'Anggun', '08113046606', 'Mfiqma@gmail.com', 1, '2017-03-21 04:17:51', '2017-04-13 09:24:08'),
(789, 'eC3mJJWnNZgSHIfen0170321113208', 'Ririn Sugianti', '082232761010', 'riantihamid@yahoo.co.id', 1, '2017-03-21 04:32:08', '2017-04-13 09:24:08'),
(790, 'cRrMQ03EfTM0fOKkir170321120817', 'Wahyu Nur Islamiati', '085733530404', 'wahyu.nurislamiati04@gmail.com', 1, '2017-03-21 05:08:17', '2017-04-13 09:24:08'),
(791, 'Q9816sOleMWoTFx6Ep170321125321', 'ririn', '081227759722', 'haridazahrainiraffa@gmail.com', 1, '2017-03-21 05:53:21', '2017-04-13 09:24:08'),
(792, 'gg98HgHjsIjCptM8zc170321023256', 'Widya', '081330155888', 'Widyarompas@gmail.com', 1, '2017-03-21 07:32:56', '2017-04-13 09:24:08'),
(793, 'PVPv7rvspsjdgC1rkY170321040147', 'Fathimah', '085203139902', 'izdiharfathimah@gmail.com', 1, '2017-03-21 09:01:47', '2017-04-13 09:24:08'),
(794, 'PrBdif6pbc66LMCZXS170321040623', 'adinda', '082233573464', 'adindaalhumaira@gmail.com', 1, '2017-03-21 09:06:23', '2017-04-13 09:24:08'),
(795, '6Po6tM3vgkloBAaITF170321043324', 'Dila', '08123114368', 'Agustinidila@gmail.com', 1, '2017-03-21 09:33:24', '2017-04-13 09:24:08'),
(796, 'ADVmzuN8dYs4y6X3R7170321051714', 'puji', '08974418725', 'pujidewiekawati@gmail.com', 1, '2017-03-21 10:17:14', '2017-04-13 09:24:08'),
(797, 'tfEUk9zASlDR99czUc170321052151', 'rara', '085733254377', 'me.retnoayu@gmail.com', 1, '2017-03-21 10:21:51', '2017-04-13 09:24:08'),
(798, 'Sq5qUbQu0aqgcHgEzD170321054849', 'Jayanti oktavia', '083830804077', 'Jayantioktaa@gmail.com', 1, '2017-03-21 10:48:49', '2017-04-13 09:24:08'),
(799, 'PxMZX5Qn0RRiL3FQjG170321074729', 'Kanda Ayu', '081287771774', 'Kandaayufitria@gmail.com', 1, '2017-03-21 12:47:29', '2017-04-13 09:24:08'),
(800, 'HqCrPZxxV3Mp4RrZzj170321075918', 'vina', '081553242508', 'kanaya_azzahra1409@yahoo.com', 1, '2017-03-21 12:59:18', '2017-04-13 09:24:08'),
(801, 'G0jhqZK3rp7lYpsMbr170321083620', 'Sevia', '081252507170', 'Sevandry@gmail.com', 1, '2017-03-21 13:36:20', '2017-04-13 09:24:08'),
(802, '0qTjdwKPlYNmbVF8jZ170321102043', 'Neyla', '085732783304', 'neylaisma@gmail.com', 1, '2017-03-21 15:20:43', '2017-04-13 09:24:08'),
(803, 'WTPAJNNJERXLKD8Ps9170322052551', 'laila suryani', '082174588237', 'lailasuryani8@gmail.com', 1, '2017-03-21 22:25:51', '2017-04-13 09:24:08'),
(804, 'tZj2zy2Y7E1yGK5yc9170322062437', 'fenita', '08563403477', 'fenitashoviantari@gmail.com', 1, '2017-03-21 23:24:37', '2017-04-13 09:24:08'),
(805, 'lKdnYYSD7J55jQawHX170322073431', 'Linda Pudji herawati', '0811347478', 'Lindapudjiherawati@gmail.com', 1, '2017-03-22 00:34:31', '2017-04-13 09:24:08'),
(806, '6s7j1PV9heGX4GpsWs170322073803', 'Linda pudji herawati', '0811347478', 'Lindapudjiherawati@gmail.com', 1, '2017-03-22 00:38:03', '2017-04-13 09:24:08'),
(807, 'CfPUQlXs28hubhpxIE170322074241', 'Linda Pudji Herawati', '0811347478', 'lindapudjiherawati@yahoo.com', 1, '2017-03-22 00:42:41', '2017-04-13 09:24:08'),
(808, 'wnVyeB5SbPE5wCpBdH170322115002', 'dwi septikasari nirmala', '081333596734', 'sariprabiwi@yahoo.com', 1, '2017-03-22 04:50:02', '2017-04-13 09:24:08'),
(809, 'jEDx8DlRoH7ruq6VIT170322121745', 'NUR HASANAH', '081554154225', 'cahayaayu711@gmail.com', 1, '2017-03-22 05:17:45', '2017-04-13 09:24:08'),
(810, 'z0oRzwSXTy92K45wwE170322122446', 'ICHA', '083854188333', 'musicha333@gmail.com', 1, '2017-03-22 05:24:47', '2017-04-13 09:24:08'),
(811, 'BaTinmDHtIuLxRkgKM170322011502', 'Elly Setyorini', '085749669322', 'elly.setyorini.1992@gmail.con', 1, '2017-03-22 06:15:02', '2017-04-13 09:24:08'),
(812, 'DtdtadslRgd337pcyj170322014843', 'Dyla', '087701048937', 'Dylabundarava@gmail.com', 1, '2017-03-22 06:48:43', '2017-04-13 09:24:08'),
(813, 'B7BkNGQ4Iup9vCGDZP170322023620', 'renny hariyono', '082233365461', 'renihariyono123@gmail.com', 1, '2017-03-22 07:36:20', '2017-04-13 09:24:08'),
(814, '8oVRjFfxj2zN1tAc4o170322044219', 'Sundari', '085101190522', 'sundariadvan@gmail.com', 1, '2017-03-22 09:42:19', '2017-04-13 09:24:08'),
(815, 'ziOl45hhlJtawDxzWf170322063633', 'Ilul nasrifah', '081330990521', 'ilulnasrifah@yahoo.co.id', 1, '2017-03-22 11:36:33', '2017-04-13 09:24:08'),
(816, 'hEk9AdKBY0u3TKEswY170322102801', 'Diana Maharani Kusumadewi', '082131442306', 'dianamaharani.dmk@gmail.com', 1, '2017-03-22 15:28:01', '2017-04-13 09:24:08'),
(817, '0NqbhkT5IsQoZJdr2a170322104937', 'Laksita', '08123189003', 'Laksita_ew@yahoo.co.id', 1, '2017-03-22 15:49:37', '2017-04-13 09:24:08'),
(818, 'ZjdS6Pt3t3NhxHyYYU170323121214', 'Suhaida alam islami', '085733062897', 'Suhaidaalam@gmail.com', 1, '2017-03-22 17:12:14', '2017-04-13 09:24:08'),
(819, 'LOWf3aSUvg9ap11Mnm170323064023', 'Dhefi Prasetya', '083831815125', 'dhefipra0@gmail.com', 1, '2017-03-22 23:40:23', '2017-04-13 09:24:08'),
(820, 'aDzxh3AgA2hQTck6fs170323101421', 'myrtha', '08179385821', 'wmyrtha23@gmail.com', 1, '2017-03-23 03:14:21', '2017-04-13 09:24:08'),
(821, 'sIJqyhpJ2QEqRM50UO170323102231', 'Diah', '081216505711', 'Loveandbeautyid@gmail.com', 1, '2017-03-23 03:22:31', '2017-04-13 09:24:08'),
(822, 'jlgnNXqhYKonGLpWJ3170323114629', 'iftitah', '087853521284', 'iftitahkurniasari@gmail.com', 1, '2017-03-23 04:46:29', '2017-04-13 09:24:08'),
(823, 'LTSBTdpORbQOUZWwvd170323115751', 'dilla', 'p8', 'nurroyulfadilla@gmail.com', 1, '2017-03-23 04:57:51', '2017-04-13 09:24:08'),
(824, 'ak3WpL2UeRW1DrZjwv170323013847', 'Reny P', '08155118141', 'reny.prahastini@gmail.com', 1, '2017-03-23 06:38:47', '2017-04-13 09:24:08'),
(825, 'wSpneoShEtF9jkPxnY170323025404', 'Renalia Puspita', '082332329796', 'renalia.puspita@ckb.co.id', 1, '2017-03-23 07:54:04', '2017-04-13 09:24:08'),
(826, 'Jk8MQnB8XCyiEXV8mp170323035355', 'Elvina', '08179379667', 'Avigavinel@gmail.com', 1, '2017-03-23 08:53:55', '2017-04-13 09:24:08'),
(827, '9dDBJGzuaqyiPTlAQB170323052249', 'Ulin Quiin', '08995857778', 'ulinquiin09@gmail.com', 1, '2017-03-23 10:22:49', '2017-04-13 09:24:08'),
(828, 'FC3IRj4QZYI7lZDcpH170323072740', 'Hamidah', '085646762035', 'Husham1723@gmail.com', 1, '2017-03-23 12:27:40', '2017-04-13 09:24:08'),
(829, 'LaOgt3dVJslhutOkbV170323073732', 'ninin', '082337337828', 'nininedgina@gmail.com', 1, '2017-03-23 12:37:32', '2017-04-13 09:24:08'),
(830, 'MqrAlzMxIJxxhAXS8y170323114939', 'astutik', '087851185174', 'sriastutikq@gmail.com', 1, '2017-03-23 16:49:39', '2017-04-13 09:24:08'),
(831, 'KLZRlbekj6HSGEadLq170324063218', 'Anindya', '087823493995', 'a.apriliyanti.p@gmail.com', 1, '2017-03-23 23:32:18', '2017-04-13 09:24:08'),
(832, '0vBbQ9PkOYFTmATQeK170324075825', 'Ernita sari', '082234007502', 'Ersamomloveoca@gmail.com', 1, '2017-03-24 00:58:25', '2017-04-13 09:24:08'),
(833, 'PjE1rj5UhiQcNi1pr2170324081658', 'Rachma', '081703737333', 'Trisiarachma1987@gmail.com', 1, '2017-03-24 01:16:58', '2017-04-13 09:24:08'),
(834, 'KixdSy2U4DCgBS96yC170324093954', 'setyawati', '085100616090', 'daiyandanuya.d@gmail.com', 1, '2017-03-24 02:39:54', '2017-04-13 09:24:08'),
(835, '6TwZdr28wo8KZEdPV8170324104225', 'eka purwaningsih', '085731200300', 'eka.manda777@gmail.com', 1, '2017-03-24 03:42:25', '2017-04-13 09:24:08'),
(836, 'siLtYx4XPWkSrFivoC170324120952', 'novi', '082143020384', 'novienendranindy@yahoo.com', 1, '2017-03-24 05:09:52', '2017-04-13 09:24:08'),
(837, 'XkyhvJwjKzZgsIUDWJ170324025605', 'Winda', '081358485855', 'Windamindari@gmail.com', 1, '2017-03-24 07:56:05', '2017-04-13 09:24:08'),
(838, '4KEND4IPOTIqh84omp170324025709', 'Ningwang', '081249172112', 'ningwangum@yahoo.com', 1, '2017-03-24 07:57:09', '2017-04-13 09:24:08'),
(839, 's4EkK8SC1ZfYtk08ry170324103652', 'Eka wahyuni', '083854582392', 'Carnesion.hijab@gmail.com', 1, '2017-03-24 15:36:52', '2017-04-13 09:24:08'),
(840, '8xdQ8jk6WwegEMNCRA170325124028', 'aulia', '085730601464', 'owlyakbari@gmail.com', 1, '2017-03-24 17:40:28', '2017-04-13 09:24:08'),
(841, '6G7uVrT4iioPrGq0wB170325122628', 'rizka permata', '082245272788', 'rizkapermata@yahoo.com', 1, '2017-03-25 05:26:28', '2017-04-13 09:24:08'),
(842, 'SQX33cVmYzT4zXWq4K170325010859', 'Li Partic', '081808544417', 'n.islamirisya@gmail.com', 1, '2017-03-25 06:08:59', '2017-04-13 09:24:08'),
(843, 'gIPYeBmsugOUJJGjcD170325030911', 'Dhania', '082331279229', 'dhaniadian@gmail.com', 1, '2017-03-25 08:09:11', '2017-04-13 09:24:08'),
(844, 'CUM7ZTJaVoeFEGfQ2F170325041715', 'Neneng Tri Ubayanti', '08155000043', 'neneng.triubayanti@gmail.com', 1, '2017-03-25 09:17:15', '2017-04-13 09:24:08'),
(845, 'WPg7bu2TaeYItfgYzX170325041820', 'Neneng Tri Ubayanti', '08155000043', 'neneng.triubayanti@gmail.com', 1, '2017-03-25 09:18:21', '2017-04-13 09:24:08'),
(846, '6o7ZvkDVmjo87zpmYa170325045519', 'liza noormala', '+6281357153658', 'noormaliza@gmail.com', 1, '2017-03-25 09:55:19', '2017-04-13 09:24:08'),
(847, 'bAogSsM8rKx4h3ddDi170325110615', 'Yunita Kusuma Dewi', '085740969330', 'yunitakd88@gmail.com', 1, '2017-03-25 16:06:15', '2017-04-13 09:24:08'),
(848, 'oaDWIUT892g2TCmp94170325111515', 'indah', '081332508511', 'indahekarini@gmail.com', 1, '2017-03-25 16:15:15', '2017-04-13 09:24:08'),
(849, 'geqW1TJMA8ZtEq0aOz170326081940', 'Anis Rizki', '087852732454', 'rizki_anis@yahoo.co.id', 1, '2017-03-26 01:19:40', '2017-04-13 09:24:08'),
(850, 'Y0X9O0k0xhDEmmEwRB170326032027', 'Eka Setianingrum M', '081331651771', 'aha.3angels@gmail.com', 1, '2017-03-26 08:20:27', '2017-04-13 09:24:08'),
(851, 'LzAThhSUxzbDidqyCA170326083243', 'Aqmarina Awalianti', '6281326315001', 'anti@aruppabrand.com', 1, '2017-03-26 13:32:43', '2017-04-13 09:24:08'),
(852, 'HdQC13Bp6PaUC36664170326095409', 'Kiky', '085645685723', 'rizkynurulmananti@gmail.com', 1, '2017-03-26 14:54:09', '2017-04-13 09:24:08'),
(853, 'WG98iEW2wGvITt0uh5170327072748', 'Nisa Nurrohmah', '081216600398', 'nisasby777@gmail.com', 1, '2017-03-27 00:27:48', '2017-04-13 09:24:08'),
(854, 'X9Qf69wLxMuaY93S06170327105455', 'irma', '081330330201', 'irma.yanih39@yahoo.com', 1, '2017-03-27 03:54:55', '2017-04-13 09:24:08'),
(855, 'GlPrzOkmRaoff8Zwff170327041404', 'Dilla', '085733181583', 'nurroyulfadilla@gmail.com', 1, '2017-03-27 09:14:04', '2017-04-13 09:24:08'),
(856, 'R5cTPB0dlNyZ0y1ooR170327083618', 'Dina Tri Yuliani', '081217231461', 'dinatriyuliani@gmail.com', 1, '2017-03-27 13:36:18', '2017-04-13 09:24:08'),
(857, 'nAfRX4AhYKAregIAT6170327101915', 'Luluk hariadi', '085102957166', 'abdutoher91@gmail.com', 1, '2017-03-27 15:19:15', '2017-04-13 09:24:08'),
(858, 'HGBDt4fCsY5lQ2B5wM170327102015', 'Luluk Hariadi', '085102957166', 'abdutoher91@gmail.com', 1, '2017-03-27 15:20:15', '2017-04-13 09:24:08'),
(859, 'IMc9bOkg4MSZjhunjE170328121616', 'Denta Dienta', '+6281217378235', 'ddientmvp1402@gmail.com', 1, '2017-03-27 17:16:16', '2017-04-13 09:24:08'),
(860, 'MLKsyzwrKyNvZRlaDG170328082336', 'Ratih adelita', '085646421115', 'Medsoclita@gmail.com', 1, '2017-03-28 01:23:36', '2017-04-13 09:24:08'),
(861, 'EVSgWeMDpVxznMXbc0170328083101', 'michaella', '081233708226', 'michaellanydiaw@yahoo.com', 1, '2017-03-28 01:31:01', '2017-04-13 09:24:08'),
(862, 'M95iwgyaBjfGv7QSvA170328110659', 'Yusi', '083854058472', 'yusi_ip@yahoo.com', 1, '2017-03-28 04:06:59', '2017-04-13 09:24:08'),
(863, 'KuDH1n0E0RMTGQHXS7170328021639', 'diva', '081230100299', 'sayyidahnadhifah@gmail.com', 1, '2017-03-28 07:16:39', '2017-04-13 09:24:08'),
(864, 'MZuYqFiQ7HZNrupSBO170328062304', 'neysa', '081330533158', 'neysamerida@gmail.com', 1, '2017-03-28 11:23:04', '2017-04-13 09:24:08'),
(865, 'Y8VTsjS3ACh5saADPA170328080503', 'desiana', '085733260233', 'desianatrisna@ymail.com', 1, '2017-03-28 13:05:03', '2017-04-13 09:24:08'),
(866, 'PC0ouZrNFZyfDssmxj170328113933', 'sahella', '085277018088', 'sahella.jhius@gmail.com', 1, '2017-03-28 16:39:33', '2017-04-13 09:24:08'),
(867, 'VUD81UzIuxz2iUrQ5q170329072834', 'Ratna sari', '08123233603', 'ratna4sari@yahoo.co.id', 1, '2017-03-29 00:28:34', '2017-04-13 09:24:08'),
(868, '5vyyL3yl1THTXbRZKU170329073525', 'masyitha', '089518260048', 'kharisma117masitha@gmail.com', 1, '2017-03-29 00:35:25', '2017-04-13 09:24:08'),
(869, 'KiUKR3HvYVd2Pfmr9b170329094832', 'dewi nuraini', '081335116010', 'rahmiazasi@gmail.com', 1, '2017-03-29 02:48:32', '2017-04-13 09:24:08'),
(870, '2AD8pAN24rLWqhJ7EG170329103819', 'Ranny', '085775500517', 'Raniecemplux@gmail.com', 1, '2017-03-29 03:38:19', '2017-04-13 09:24:08'),
(871, '6H2FtTNpLNnVqObnYC170329113247', 'nurul fathonah wulandari', '085730974976', 'nurulfwulandari@gmail.com', 1, '2017-03-29 04:32:47', '2017-04-13 09:24:08'),
(872, 'fsqPJCtewyJ834uUSL170329013631', 'Nenock', '08563036416', 'sari.widhoretno@gmail.com', 1, '2017-03-29 06:36:31', '2017-04-13 09:24:08'),
(873, 'qwOm4x24QqRerhcVTp170329015726', 'Riris', '082233321709', 'Rizz806@gmail.com', 1, '2017-03-29 06:57:26', '2017-04-13 09:24:08'),
(874, '1WR1q7PRpiiCIWF9hb170329053353', 'adrena', '082216855554', 'adrenakartika5@gmail.com', 1, '2017-03-29 10:33:53', '2017-04-13 09:24:08'),
(875, 'bIlVCMT7xNefNVYxwd170329061619', 'Ayie', '082233553360', 'Purnamarizhari85@gmail.com', 1, '2017-03-29 11:16:19', '2017-04-13 09:24:08'),
(876, 'VKkoOiAexeMhEvAP4k170329064203', 'Hilda', '082292246901', 'hilda_muliani_istiah@yahoo.co.id', 1, '2017-03-29 11:42:03', '2017-04-13 09:24:08'),
(877, 'Hdv72fnmCjrHYnPGS8170330120818', 'Desi', '085210939895', 'desikurniati06@gmail.com', 1, '2017-03-29 17:08:18', '2017-04-13 09:24:08'),
(878, 'A4GVglqbkD9hLvhC5g170330060621', 'Venny', '081216171884', 'Venny.am@gmail.com', 1, '2017-03-29 23:06:21', '2017-04-13 09:24:08'),
(879, 'FSMm2gWXLt2sUgrrHD170330070703', 'rahmi ', '081335116010', 'kaosae94@gmail.com', 1, '2017-03-30 00:07:03', '2017-04-13 09:24:08'),
(880, '7vyk1ToYoMcxw8tA0F170330073807', 'Else fitri', '041', 'Regi.alzamir@yahoo.com', 1, '2017-03-30 00:38:07', '2017-04-13 09:24:08'),
(881, 'YfIrWgvPRwUYO8trzQ170330073939', 'Else fitri', '0895393092777?', 'Regi.alzamir@yahoo.com', 1, '2017-03-30 00:39:39', '2017-04-13 09:24:08'),
(882, 'umT65ablC0OYPGPL8i170330082315', 'Ira ', '085707700385', 'Iraz.devil@gmail.com', 1, '2017-03-30 01:23:15', '2017-04-13 09:24:08'),
(883, 'dLFF5QAxZpBFPbdECg170330113546', 'LISTIO RINI', '082132313202', 'listiorin@gmail.com', 1, '2017-03-30 04:35:46', '2017-04-13 09:24:08'),
(884, '9G7fV1lfWv3tIGzvNX170330010932', 'Ely', '0856448668295', 'rochmalaili@gmail.com', 1, '2017-03-30 06:09:32', '2017-04-13 09:24:08'),
(885, 'dLLIUDppQctOgOj9M8170330013707', 'Luluk hariadi', '085102957166', 'abdutoher91@gmail.com', 1, '2017-03-30 06:37:07', '2017-04-13 09:24:08'),
(886, 'VH6YRZuMNkNMpsMM1O170330014011', 'Effi andriyani', '081336344593', 'baby_up@rocketmail.com', 1, '2017-03-30 06:40:11', '2017-04-13 09:24:08'),
(887, 'qrjbEN3wXnxMWPv0j8170330022648', 'Ainur rizky', '081234323291', 'Aifafarisqi@gmail.com', 1, '2017-03-30 07:26:48', '2017-04-13 09:24:08'),
(888, 'SRN7R0MVmyBrNPJf46170330033402', 'Yanty', '08123107354', 'bundaintan.indrasari58@gmail.com', 1, '2017-03-30 08:34:02', '2017-04-13 09:24:08'),
(889, 'dwbLoCI7ohchCAH5bR170330050615', 'Lilya Assis', '081330626351', 'yaxerdj@gmail.com', 1, '2017-03-30 10:06:15', '2017-04-13 09:24:08'),
(890, '65SkEdJcK37Y96Pwhv170330052840', 'Heni', '081298155662', 'hdrahmawati@gmail.com', 1, '2017-03-30 10:28:40', '2017-04-13 09:24:08'),
(891, '4nQ0UXsK6KZHd8EhSC170330093200', 'Dyah', '081330519697', 'dyah.pramoewibowo@gmail.com', 1, '2017-03-30 14:32:00', '2017-04-13 09:24:08'),
(892, 'm03SRLmDXf6QLwrID1170330093344', 'Dyah', '082232677373', 'dyah.pramoewibowo@gmail.com', 1, '2017-03-30 14:33:44', '2017-04-13 09:24:08'),
(893, 'zlIl5spIkj0aMJvboD170330095622', 'isna', '081331776801', 'tazkiyanafsi@gmail.com', 1, '2017-03-30 14:56:22', '2017-04-13 09:24:08'),
(894, 'oAqVU5RPFAVzBAC9x0170330115153', 'fitria', '081938411214', 'vitria.amoy@gmail.com', 1, '2017-03-30 16:51:53', '2017-04-13 09:24:08'),
(895, 'dNRPhxFFFLBebjD4tr170331120149', 'nurul', '082233441460', 'kurniawati.khansa@gmail.com', 1, '2017-03-30 17:01:49', '2017-04-13 09:24:08'),
(896, 'DQeSp8aNb9W6L7WB0l170331123937', 'sawitri ', '082298119691', 'sawitri.center@gmail.com', 1, '2017-03-30 17:39:37', '2017-04-13 09:24:08'),
(897, 'nabFliWzNsNuTVL6qS170331112256', 'DESY', '082245783328', 'dcy.she@gmail.com', 1, '2017-03-31 04:22:56', '2017-04-13 09:24:08'),
(898, 'kjn4IxiV2EpZHkaFS9170331120034', 'Vina marisyahaq', '085259950514', 'mj_vina@ymail.com', 1, '2017-03-31 05:00:34', '2017-04-13 09:24:08'),
(899, 'lyjraSRJQDiHlh2arY170331121849', 'Damayani', '085648259551', 'Damay_2608@yahoo.com', 1, '2017-03-31 05:18:49', '2017-04-13 09:24:08'),
(900, 'JS05vzOyAM8sQs8J2z170331123639', 'Ina', '082257220100', 'Sitimaulina198824@gmail.com', 1, '2017-03-31 05:36:39', '2017-04-13 09:24:08'),
(901, 'EwbcMILtFcsdI2IQv9170331010925', 'Nurul', '087853399158', 'kurniawatinurul77@gmail.com', 1, '2017-03-31 06:09:25', '2017-04-13 09:24:08'),
(902, 'COitR1D1oXqcBLK9MR170331035226', 'vivie fhitriani', '085730453291', 'vivie.fhitriani@gmail.com', 1, '2017-03-31 08:52:26', '2017-04-13 09:24:08'),
(903, 'GtSTrzyT4qKvmz1nXj170331064241', 'srie', '0818300613', 'aizawaminto7@gmail.com', 1, '2017-03-31 11:42:41', '2017-04-13 09:24:08'),
(904, 'PXUfCLPpzT2OPUxHhD170331064408', 'srie', '0818300613', 'aizawaminto7@gmail.com', 1, '2017-03-31 11:44:08', '2017-04-13 09:24:08'),
(905, 'E1OD9BfHGCxbpP9USc170331090646', 'Sundari', '085732146660', 'Sundariindah60@gmail.com', 1, '2017-03-31 14:06:46', '2017-04-13 09:24:08'),
(906, 'ei0DTrvmFP0QxQkr37170331092640', 'Fatim', '085646428732', 'fatimatum.romdiyah@gmail.com', 1, '2017-03-31 14:26:40', '2017-04-13 09:24:08'),
(907, 'zZo6PQRjsJMnJEJaYC170331110649', 'nurul', '087853399158', 'kurniawati.khansa@gmail.com', 1, '2017-03-31 16:06:49', '2017-04-13 09:24:08'),
(908, '79bWEMXGKDRrARVlIQ170331110841', 'nurul', '087853399158', 'kurniawati.khansa@gmail.com', 1, '2017-03-31 16:08:41', '2017-04-13 09:24:08'),
(909, 'xqaIu6aNbBoFWzKKTF170401035614', 'Frizia', '087853172707', 'Friziadewi19@google.com', 1, '2017-03-31 20:56:14', '2017-04-13 09:24:08'),
(910, 'GK0ZLamuu0b3oTk4fc170401105440', 'dinar', '082244322247', 'dinarprasasti889@gmail.com', 1, '2017-04-01 03:54:40', '2017-04-13 09:24:08'),
(911, 'kZhIJfKzYMmj5XALh6170401034740', 'Chiki Azzahra', '081217709845', 'baechiki99@gmail.com', 1, '2017-04-01 08:47:40', '2017-04-13 09:24:08'),
(912, 'AXmhXgzerctZtxvjP4170401083914', 'Ririn Sugianti', '082232761010', 'riantihamid@yahoo.co.id', 1, '2017-04-01 13:39:14', '2017-04-13 09:24:08'),
(913, 'EoE2QPhoF1B0C49JHZ170401115506', 'Arrinda', '089606783968', 'marrindaayunda@gmail.com', 1, '2017-04-01 16:55:06', '2017-04-13 09:24:08'),
(914, 'pL639QgISdiPVzkkGF170402071153', 'Dewi', '08121745065', 'dewidya08@gmail.com', 1, '2017-04-02 00:11:53', '2017-04-13 09:24:08'),
(915, 'ZPC1mRPZYnQIRuexk2170402114023', 'Voni astri', '089609850442', 'klepvoni@gmail.com', 1, '2017-04-02 04:40:23', '2017-04-13 09:24:08'),
(916, 'v5T4J7n510MUMDMlny170402114140', 'Voni astri', '089609850442', 'klepvoni@gmail.com', 1, '2017-04-02 04:41:40', '2017-04-13 09:24:08'),
(917, 'r4rHBWMi9Q7GqoviRh170402121134', 'Sintyasolikhah', '085708063523', 'Sintyasolikhah@gmail.com', 1, '2017-04-02 05:11:34', '2017-04-13 09:24:08'),
(918, 'vxK3iLRSTauZnm2uXi170402065621', 'nurul', '08123287167', 'fahmichoi73@gmail.com', 1, '2017-04-02 11:56:21', '2017-04-13 09:24:08'),
(919, '4jbgTWuBiSutAC49D0170402085558', 'Kiky', '081336816775', 'Kikyintan22@gmail.com', 1, '2017-04-02 13:55:58', '2017-04-13 09:24:08'),
(920, 'f5YcZoBSGFRpcuDL51170402091348', 'Dhiani', '081703002345', 'diaaaan0677@gmail.com', 1, '2017-04-02 14:13:48', '2017-04-13 09:24:08'),
(921, 'Ic0GGxI2k8BnXQnr4b170403114351', 'Ira Khairani', '082219046900', 'Fhayrani@gmail.com', 1, '2017-04-03 04:43:51', '2017-04-13 09:24:08'),
(922, '7jDlOlx8K0jn4Vvt2x170403124913', 'nhi', '081217680123', 'uniar_birdie@yahoo.com', 1, '2017-04-03 05:49:13', '2017-04-13 09:24:08'),
(923, '9QQvGGTfrXNUx9VjVs170403010119', 'efi zuliati', '085100295506', 'efi.zuliati@yahoo.com', 1, '2017-04-03 06:01:19', '2017-04-13 09:24:08'),
(924, 'MROpGSpFOYr7JDlJqU170403012559', 'dwi siska megawati', '081236115080', 'dwisiska1804@gmail.com', 1, '2017-04-03 06:25:59', '2017-04-13 09:24:08'),
(925, 'OemmK7E9nsRtmx450J170403041456', 'dinar', '082244322247', 'dinarprasasti889@gmail.com', 1, '2017-04-03 09:14:56', '2017-04-13 09:24:08'),
(926, 'fj3Jk5ZJ42Jc86nhES170403052217', 'Martha Tri Agustine', '082234712055', 'martha.agustine.unipa@gmail.com', 1, '2017-04-03 10:22:17', '2017-04-13 09:24:08'),
(927, 'LgWWbYxV1OEBy0Zk0F170403073837', 'shinta satriyana', '081259596450', 'synsatriya@gmail.com', 1, '2017-04-03 12:38:37', '2017-04-13 09:24:08'),
(928, 'C4roqjoIr8JxX4nBy7170404070613', 'Runiar Satriya', '+6281803162331', 'coldanov@yahoo.com', 1, '2017-04-04 00:06:13', '2017-04-13 09:24:08'),
(929, 'dnOgCPUsoLdheeshEi170404030050', 'aininama', '082245568787', 'aininamardian@gmail.com', 1, '2017-04-04 08:00:50', '2017-04-13 09:24:08'),
(930, 'H5ZYfg0UODSNb35NEE170404031315', 'Yani eka purwitasari', '081330748229', 'Purwitasari2012@gmail.com', 1, '2017-04-04 08:13:15', '2017-04-13 09:24:08'),
(931, 'bZAEYEmfBn5Xqxyoxn170404075800', 'seti aminatuzzuhria', '081554275055', 'tity_amy@yahoo.com', 1, '2017-04-04 12:58:00', '2017-04-13 09:24:08'),
(932, 'u3CTepb5PgHQ69oVbC170405064950', 'Ika Sofyan', '087852295118', 'ika.business@yahoo.com', 1, '2017-04-04 23:49:50', '2017-04-13 09:24:08'),
(933, 'wI8PCipwOiVXKIADz6170405111434', 'Yudhi Lastiasih', '082116605466', 'yudhi.lastiasih@gmail.com', 1, '2017-04-05 04:14:34', '2017-04-13 09:24:08'),
(934, '4QATJ3IE9zE6eKSbSz170405041642', 'khoirunnisa', '08123577700', 'nisa.psikologi2010@gmail.com', 1, '2017-04-05 09:16:42', '2017-04-13 09:24:08'),
(935, 'kdtamZkNqzNiVrSuys170405043537', 'diah', '081703031981', 'diahsoekandar@gmail.com', 1, '2017-04-05 09:35:37', '2017-04-13 09:24:08'),
(936, 'GwByb3W5a4JHhnNdT9170405043913', 'ratri widorini', '082245041778', 'ratriwidorini@gmail.com', 1, '2017-04-05 09:39:13', '2017-04-13 09:24:08'),
(937, 'sNFkqxx090TUkFvcJ2170405045550', 'Indri', '08128525434', 'Republik.indrinesia@gmail.com', 1, '2017-04-05 09:55:50', '2017-04-13 09:24:08'),
(938, 'CQwC2MAJtDUoSPYXeo170405052844', 'Nisak', '085746639779', 'choirunnisak91@gmail.com', 1, '2017-04-05 10:28:44', '2017-04-13 09:24:08'),
(939, 'sE5ZE8bCBLQmksRLEy170405091505', 'Ratih Noer Aini', '083857276666', 'noeratih@gmail.com', 1, '2017-04-05 14:15:05', '2017-04-13 09:24:08'),
(940, '7ydIsYrXzcyOuJ9hQR170406090148', 'wenni', '082232922711', 'wenni.sulistyo@gmail.com', 1, '2017-04-06 02:01:48', '2017-04-13 09:24:08'),
(941, '2cTkp61cObrzB9goYi170406090537', 'eka', '083831091493', 'eee_kachu@yahoo.com', 1, '2017-04-06 02:05:37', '2017-04-13 09:24:08'),
(942, 'VtO1YIOf9GrypjDcnN170406102213', 'Siti Aisyah Hilal', '081515100020', 'hilal.aisyah.aisyah@gmail.com', 1, '2017-04-06 03:22:13', '2017-04-13 09:24:08'),
(943, 'Mm45HiEh3YbcRHXLut170406041803', 'harti', '085655112304', 'hartik09@gmail.com', 1, '2017-04-06 09:18:03', '2017-04-13 09:24:08'),
(944, 'XJ6iw07UvqxUXtQhjz170407111323', 'ICHWARIKA VIDYA NISWARA', '083869963038', 'vidya.niswara@yahoo.com', 1, '2017-04-07 04:13:23', '2017-04-13 09:24:08'),
(945, 'TceloIcBo6qbanURoi170407122252', 'Nia', '085730320200', 'nia.bundaarsyam@gmail.com', 1, '2017-04-07 05:22:52', '2017-04-13 09:24:08'),
(946, 'mLW9FZOqKvi8CjZbTX170407011101', 'Nur wahyu', '081331002004', 'nwpassoy@ymail.com', 1, '2017-04-07 06:11:01', '2017-04-13 09:24:08'),
(947, '5x2FfeAYJb6Jzkurts170407011143', 'Nur wahyu', '081331002004', 'nwpassoy@ymail.com', 1, '2017-04-07 06:11:43', '2017-04-13 09:24:08'),
(948, 'lfvQmRqP1VqdIsqKHt170407013514', 'sukma nirmala', '083857865670', 'nyumi90.sukma@gmail.com', 1, '2017-04-07 06:35:14', '2017-04-13 09:24:08'),
(949, 'ILplZvmUTJZZJDO5og170407014630', 'Ditya', '081331103797', 'dityamd@yahoo.co.id', 1, '2017-04-07 06:46:30', '2017-04-13 09:24:08'),
(950, 'vCCBMFaLsEKySdm1SG170407033111', 'enny', '08785104577', 'diahkirana02@gmail.com', 1, '2017-04-07 08:31:11', '2017-04-13 09:24:08'),
(951, 'wUyT6liFiN0Gz4Uyke170407033137', 'hana', '+6281359757889', 'hana.ayu@yahoo.com', 1, '2017-04-07 08:31:37', '2017-04-13 09:24:08'),
(952, '48DQMyWvpF6xQ1ovgB170407033201', 'Nurina', '08113301101', 'ummiroyica@gmail.com', 1, '2017-04-07 08:32:01', '2017-04-13 09:24:08'),
(953, '5kxoRZq3yvLYGakOPc170407033408', 'attin', '083856601880', 'attin.cemerlang@gmail.com', 1, '2017-04-07 08:34:08', '2017-04-13 09:24:08'),
(954, 'bQyIEpTtl4OFjWhLJK170407033516', 'dian arif', '08385547907', 'dianarifr@gmail.com', 1, '2017-04-07 08:35:16', '2017-04-13 09:24:08'),
(955, 'tYnVEpfOZQyQtOLmA1170407033656', 'dhia hasna', '085787409313', 'dhia.gusnasi@gmail.com', 1, '2017-04-07 08:36:56', '2017-04-13 09:24:08'),
(956, 'afHsttp3Ewmxk4nMEQ170407033754', 'dhia hasna', '085787409313', 'dhia.gusnasi@gmail.com', 1, '2017-04-07 08:37:54', '2017-04-13 09:24:08'),
(957, 'RM9RpPLW1i4P8ej0ul170407034013', 'dhia hasna', '085787409313', 'dhiagusnasi@gmail.com', 1, '2017-04-07 08:40:13', '2017-04-13 09:24:08'),
(958, 'b2tN5fSKY1gRG7i73U170407034148', 'nisfu', '082136966627', 'nisfuhadiyah@gmail.com', 1, '2017-04-07 08:41:48', '2017-04-13 09:24:08'),
(959, 'QPb03u6fRStxaSw9Yy170407034655', 'Ani', '+62 812-3120-2263', 'Soedarjatni@gmail.com', 1, '2017-04-07 08:46:55', '2017-04-13 09:24:08'),
(960, 'UsyFa5LJdZ4RQsZ46K170407034949', 'Dyah Ayu', '085735348822', 'dyahjasmineoke@gmail.com', 1, '2017-04-07 08:49:49', '2017-04-13 09:24:08'),
(961, 'rcEPhL89h1Wo1JPkZ2170407035434', 'Ratnaning Fitroh Endartyana', '081990905572', 'ratnaning.endartyana@gmail.com', 1, '2017-04-07 08:54:34', '2017-04-13 09:24:08'),
(962, 'HNlr0hEDVNjaVjFyK4170407035745', 'Alvinur', '081235918613', 'Alvinur1707@gmail.com', 1, '2017-04-07 08:57:45', '2017-04-13 09:24:08'),
(963, 'qYb8rkMhJ23XmiRHvk170407073147', 'Ayudya', '089649959009', 'ayudyacute@gmail.com', 1, '2017-04-07 12:31:47', '2017-04-13 09:24:08'),
(964, 'pegFtqRPtMsCtnse1a170407080135', 'Lauda', '08155220992', 'lauda.septiana@gmail.com', 1, '2017-04-07 13:01:35', '2017-04-13 09:24:08'),
(965, 'rMrcXd1BhOi9hKngNn170407081323', 'Vivin', '085648248738', 'vivin.navijanti@gmail.com', 1, '2017-04-07 13:13:23', '2017-04-13 09:24:08'),
(966, 'DDXgEjfk1Sm0UP3IjL170407094559', 'Kanti rahayuningsih', '08123232767', 'kantirahayuningsih@gmail.com', 1, '2017-04-07 14:45:59', '2017-04-13 09:24:08'),
(967, 'RjPVycsS0ZaTsW2zop170407102222', 'Novi', '082230076008', 'novirose8@gmail.com', 1, '2017-04-07 15:22:22', '2017-04-13 09:24:08'),
(968, 'wg06DBr0Y4SUTjF0yc170408083119', 'Alya ', '085737853126', 'alyazamania@gmail.com', 1, '2017-04-08 01:31:19', '2017-04-13 09:24:08'),
(969, '0CqCls6IBJBMjHEZ8m170408085436', 'Lauda', '08155220992', 'lauda.septiana@gmail.com', 1, '2017-04-08 01:54:36', '2017-04-13 09:24:08'),
(970, 'JwE23EL1upKsxIekyF170408113243', 'Lauda', '08155220992', 'lauda.septiana@gmail.com', 1, '2017-04-08 04:32:43', '2017-04-13 09:24:08'),
(971, 'jTVTj5TKZILhTKzEHr170408014505', 'Sephy ', '085648327274', 'jumiesephyrahayu@gmail.com', 1, '2017-04-08 06:45:05', '2017-04-13 09:24:08'),
(972, '7YppowXgXnOekWtllK170408050757', 'Anya', '087853447511', 'Anyaandrina@yahoo.com', 1, '2017-04-08 10:07:57', '2017-04-13 09:24:08'),
(973, 'Yav7AT1ZccGWbINsIZ170408053041', 'Efz', '087855366275', 'ekafirdaz@gmail.com', 1, '2017-04-08 10:30:41', '2017-04-13 09:24:08'),
(974, 'YycstBDxtQxdyMR7Tk170408072853', 'Dwi Rani Rosita', '081931010012', 'dwiranirosita@gmail.com', 1, '2017-04-08 12:28:53', '2017-04-13 09:24:08'),
(975, 'IbX4PO4fXNddVioWUv170409083436', 'Ulin', '085748672289', 'afadamuslimwo@gmail.com', 1, '2017-04-09 01:34:36', '2017-04-13 09:24:08'),
(976, 'UzxwimDFSFhWncAblj170409085158', 'Ulin', '085748672289', 'afadamuslimwo@gmail.com', 1, '2017-04-09 01:51:58', '2017-04-13 09:24:08'),
(977, 'h8ceg7zmh9oOncpWDk170409115340', 'Yusnida Abdul Rahman', '0811466659', 'yusnida.ari@gmail.com', 1, '2017-04-09 04:53:40', '2017-04-13 09:24:08'),
(978, 'kMjaKoECOUP9Ocmmk6170409071125', 'Hani ', '083857767838 ', 'hanisby1105@gmail.com', 1, '2017-04-09 12:11:25', '2017-04-13 09:24:08'),
(979, 'JpJX0TVyCzgyoqdDXU170409073118', 'anis', '081330097445', 'debbie_as@yahoo.com', 1, '2017-04-09 12:31:18', '2017-04-13 09:24:08'),
(980, 'QFSe54TSwSL102cZ6F170409082923', 'Mariam', '08126191528', 'mery_1201@yahoo.co.id', 1, '2017-04-09 13:29:23', '2017-04-13 09:24:08'),
(981, 'NoDuWp3dY6G3kAXXlt170409104124', 'Kanti rahayuningsih', '08123232767', 'kantirahayuningsih@gmail.com', 1, '2017-04-09 15:41:24', '2017-04-13 09:24:08'),
(982, 'ah0koStIyyycMB8Sdy170410110239', 'umi', '085733250511', 'aulia_umi@yahoo.co.id', 1, '2017-04-10 04:02:39', '2017-04-13 09:24:08'),
(983, 'NnCUp5HBr7LflE6UXE170410081554', 'Tika', '081259103930', 'kartikasari070@gmail.com', 1, '2017-04-10 13:15:54', '2017-04-13 09:24:08'),
(984, 'siPoB0BMIuAW2fvA1j170410090610', 'Putri mei liyanawati', '082231161039', 'Putri.liyanawati@yahoo.com', 1, '2017-04-10 14:06:10', '2017-04-13 09:24:08'),
(985, '67wcVBl5TUTOabPwMd170411054225', 'libna faiha', '087852415150', 'libnafirdaus@gmail.com', 1, '2017-04-10 22:42:25', '2017-04-13 09:24:08'),
(986, 'pX7PkRrgwkDvYeNfE1170411082519', 'Laras nuraishah ', '085646736060', 'Larasnuraishah@gmail.com', 1, '2017-04-11 01:25:19', '2017-04-13 09:24:08'),
(987, 'y07pgTaCKUoA6UHgRY170411092111', 'Vidyayanti hajrah', '081216067667', 'vidyayantihajrah@yahoo.com', 1, '2017-04-11 02:21:11', '2017-04-13 09:24:08'),
(988, 'J5KJNqhqNWzSJnAiSI170411092142', 'Vidyayanti hajrah', '081216067667', 'vidyayantihajrah@yahoo.com', 1, '2017-04-11 02:21:42', '2017-04-13 09:24:08'),
(989, '4BYhdUDzaoN3KB9Gi9170411094415', 'Ayu Ashadi', '081331119300', 'ayuashadi@gmail.com', 1, '2017-04-11 02:44:15', '2017-04-13 09:24:08'),
(990, 'JAE1YWDdGDjF6o75bc170411101953', 'Fahrillah Nirma Octafrida', '083857318168', 'fahriloc@yahoo.com', 1, '2017-04-11 03:19:53', '2017-04-13 09:24:08'),
(991, 'vSs4KtWN2KKKez3yMq170411115159', 'Vivi', '085730075700', 'damayantivivi87@gmail.com', 1, '2017-04-11 04:51:59', '2017-04-13 09:24:08'),
(992, 'HkTYrYIz66fOtXPAyI170411012553', 'Rahma Ghiffari', '085850017757', 'Ghiffari27rahma@gmail.com', 1, '2017-04-11 06:25:53', '2017-04-13 09:24:08'),
(993, '5C1kNqbVPwtRkSFWBm170411022217', 'eka sari noerita', '085731163027', 'ekanoerita@gmail.com', 1, '2017-04-11 07:22:17', '2017-04-13 09:24:08'),
(994, 'lxKzDP8sxEsGybORFs170411022320', 'eka sari noerita', '085731163027', 'ekanoerita@gmail.com', 1, '2017-04-11 07:23:20', '2017-04-13 09:24:08'),
(995, 'MGh1N1fRLqfbxfeY4J170411024253', 'Desy Ariayu', '085853712095', 'desyariayu@gmail.com', 1, '2017-04-11 07:42:53', '2017-04-13 09:24:08'),
(996, 'kznlU66BxK9Z0hNTJY170411082326', 'Ria', '081249941678', 'riapuspita32@gmail.com', 1, '2017-04-11 13:23:26', '2017-04-13 09:24:08'),
(997, 'yByT0XX2W8Ka9ZKOVJ170411103340', 'Fita andrawina', '081310000742', 'lovelyjizqaa@yahoo.com', 1, '2017-04-11 15:33:40', '2017-04-13 09:24:08'),
(998, 'lYAbxEk5x2SwR9Pumc170412075543', 'ria', '081249941678', 'riapuspita32@gmail.com', 1, '2017-04-12 00:55:43', '2017-04-13 09:24:08'),
(999, 'XX2j19SWGAoVr7WEjg170412083510', 'fany', '089685075759', 'safanadinda64@gmail.com', 1, '2017-04-12 01:35:10', '2017-04-13 09:24:08'),
(1000, 'ftoVa4gaJ9Kixw0YZ5170412084930', 'Brian maulani', '08119992638', 'brian.maulani@gmail.com', 1, '2017-04-12 01:49:30', '2017-04-13 09:24:08'),
(1001, '21zkpk3ZJ6PqxZgzpb170412100017', 'Laily', '08563664877', 'Araisdie@ymail.com', 1, '2017-04-12 03:00:17', '2017-04-13 09:24:08'),
(1002, 'POphNTc0BaepGh2F8U170412100415', 'Laily', '08563664877', 'Araisdie@ymail.com', 1, '2017-04-12 03:04:15', '2017-04-13 09:24:08'),
(1003, 'czN2VuatxFbnvK6FQR170412102230', 'Nita', '089-78727830', 'nitanita167@ymail.com', 1, '2017-04-12 03:22:30', '2017-04-13 09:24:08'),
(1004, 'tI5l5i4uewThUq9c4c170412024643', 'fauziah', '085648077079', 'fauziahkarim87@gmail.com', 1, '2017-04-12 07:46:43', '2017-04-13 09:24:08'),
(1005, 'xG6nBVFFTFI1kx8Bbf170412032644', 'abida', '085746934782', 'abidakhazanah3@gmail.com', 1, '2017-04-12 08:26:44', '2017-04-13 09:24:08'),
(1006, 'jTPS3WsxK2Lm0v9j2s170413092626', 'Nonik septiana', '081333877804', 'Septiananonik@gmail.com', 1, '2017-04-13 02:26:26', '2017-04-13 09:24:08'),
(1007, 'aiFNlbL43DExZxTrGP170413093246', 'desy', '085645359424', 'decyoce@gmail.com', 1, '2017-04-13 02:32:46', '2017-04-13 09:24:08'),
(1008, 'bAjhoJf18XpPhvSSVz170413101300', 'eni', '081259283200', 'eniw3217@gmail.com', 1, '2017-04-13 03:13:00', '2017-04-13 09:24:08'),
(1009, 'nu0V30twMmCQCfjt4R170413014446', 'Anis', '081231554191', 'cleoanis2@gmail.com', 1, '2017-04-13 06:44:46', '2017-04-13 09:24:08'),
(1010, '8H3urDXiPHMxMuSRdf170413020102', 'Anna', '082142423981', 'anna_svdsby@yahoo.com', 1, '2017-04-13 07:01:02', '2017-04-13 09:24:08'),
(1011, 'SB8YX70txPnVvDpgY3170413020615', 'marik astuti', '085645072104', 'erikomarik@rocketmail.com', 1, '2017-04-13 07:06:15', '2017-04-13 09:24:08'),
(1012, 'QpGVyaBVemkj4UYvXq170413021405', 'Anna', '082142423981', 'anna_svdsby@yahoo.com', 1, '2017-04-13 07:14:05', '2017-04-13 09:24:08'),
(1013, 'nZ9iDnQbhpxI7pw7rm170413085041', 'Rizky O. Kartika', '085648235753', 'kikikartika333@gmail.com', 1, '2017-04-13 13:50:41', '2017-04-18 06:25:24'),
(1014, 'Fy66Sfg3dTqYX5CWUI170413085108', 'Naretha tri shinta', '085731341990', 'narethatrishinta@gmail.com', 1, '2017-04-13 13:51:08', '2017-04-18 06:25:24'),
(1015, 'BnUHWTQ4FrtSek15MH170414065353', 'Tri wahyuni', '081255121302', 'yuancantiq16.tw@gmail.com', 1, '2017-04-13 23:53:53', '2017-04-18 06:25:24'),
(1016, 'V12rWGlT5lqguejBwt170414075107', 'Siti hanifa', '085257009742', 'Sitih7724@gmail.com', 1, '2017-04-14 00:51:07', '2017-04-18 06:25:24'),
(1017, '383muTjQ9dNKWXH34s170414012634', 'fauziah', '085648077079', 'fauziahkarim87@gmail.com', 1, '2017-04-14 06:26:34', '2017-04-18 06:25:24'),
(1018, 'XAqAiZ9R1Fur1C2ICl170414021257', 'Mei Nuryaningsih', '083857149777', 'mei.nuryaningsih@gmail.com', 1, '2017-04-14 07:12:57', '2017-04-18 06:25:24'),
(1019, 'NQFyuP2aDoLJF5SStB170414043716', 'Septin Maisharah Karyono', '085258619777', 'sharah_najwa@yahoo.co.id', 1, '2017-04-14 09:37:16', '2017-04-18 06:25:24'),
(1020, 'WNp3Qz5bGy80DrIQjz170414083322', 'Dinda', '085733824700', 'Agnesdianti@gmail.com', 1, '2017-04-14 13:33:22', '2017-04-18 06:25:24'),
(1021, 'HBNnERaBFZNk25XOEA170414084616', 'Erma', '08983392501', 'erma_ko2@yahoo.com', 1, '2017-04-14 13:46:16', '2017-04-18 06:25:24'),
(1022, 'FU5MZPgeXZxMzmTOOd170414084825', 'Erma', '08983392501', 'erma_ko2@yahoo.com', 1, '2017-04-14 13:48:25', '2017-04-18 06:25:24'),
(1023, 'aFG1NLPewjPL7oNRIn170414085005', 'Erma', '08983392501', 'erma_ko2@yahoo.com', 1, '2017-04-14 13:50:05', '2017-04-18 06:25:24'),
(1024, 'fYghjxxq5GTXhkaIsj170414095509', 'Ika yuli tresnowati,  s, sos', '082132853357', 'Ikayulisalsa15@gmail.com', 1, '2017-04-14 14:55:09', '2017-04-18 06:25:24'),
(1025, 'P1jh3wK3RWnzp9uk3O170415012047', 'Dian putri', '089513753404', 'dianputri.mandasari@gmail.com', 1, '2017-04-14 18:20:47', '2017-04-18 06:25:24'),
(1026, 'Tkpr0kiXKc7yVLBgPG170415044803', 'Widyastuti Firdaus', '081331386494', 'widyaswidy93@gmail.com', 1, '2017-04-14 21:48:03', '2017-04-18 06:25:24'),
(1027, '9q3KqCqbatjM6N8mng170415060346', 'Ika', '081331380880', 'tasyaalfarysi@yahoo.co.id', 1, '2017-04-14 23:03:46', '2017-04-18 06:25:24'),
(1028, 'plyAlJjg5iE0gykGNt170415083439', 'Kenniko Okta Putra', '+6281313129913', 'kenniko.okta@gmail.com', 1, '2017-04-15 01:34:39', '2017-04-18 06:25:24'),
(1029, 'NeNkpdO3hykK9Ctdp1170415090219', 'Diah ', '08993360618', 'diahnuritasari87@gmail.com', 1, '2017-04-15 02:02:19', '2017-04-18 06:25:24'),
(1030, 'CNwJtnwd9NTbgW2R8k170415091337', 'Diah', '08993360618', 'diahnuritasari87@gmail.com', 1, '2017-04-15 02:13:37', '2017-04-18 06:25:24'),
(1031, 'Ixw1aG8MfthydPTDFM170415101147', 'Fira', '081252225519', 'fira_nita@yahoo.com', 1, '2017-04-15 03:11:47', '2017-04-18 06:25:24'),
(1032, 'WCCdFXLPTitxQwfHml170415110648', 'Reznita', '089677988874', 'rezreznita@gmail.com', 1, '2017-04-15 04:06:48', '2017-04-18 06:25:24'),
(1033, 'vdfIvNtYyyP9lKLbP1170415115538', 'srie', '08383049033928', 'aizawaminto7@gmail.com', 1, '2017-04-15 04:55:38', '2017-04-18 06:25:24'),
(1034, '9lvEisysbKF3aIhO5m170415120053', 'Juliana nasis', '082114737741', 'Juliana.nasis@gmail.com', 1, '2017-04-15 05:00:53', '2017-04-18 06:25:24'),
(1035, 'ccUEqPUnw6Td0RpM9S170415011207', 'srie', '083849033928', 'aizawaminto7@gmail.com', 1, '2017-04-15 06:12:07', '2017-04-18 06:25:24'),
(1036, 'YWeJeXTtskTPfDBNBF170415025841', 'Putri', '081331374449', 'Putriagustin7567@yahoo.com', 1, '2017-04-15 07:58:41', '2017-04-18 06:25:24'),
(1037, 'P32cVWppseOnaBOzn0170415031141', 'Putri', '081331374449', 'Putriagustin7567@yahoo.com', 1, '2017-04-15 08:11:41', '2017-04-18 06:25:24'),
(1038, 'WZGYbm2C0cz4UbdzRr170415044430', 'Anisa', '085648172338', 'Anisafitriarahmah@gmail.com', 1, '2017-04-15 09:44:30', '2017-04-18 06:25:24'),
(1039, 'wYvrQXhVZSxQRL96en170415055016', 'sri wijonarjo', '085230811818', 'ririwijk@gmail.com', 1, '2017-04-15 10:50:16', '2017-04-18 06:25:24'),
(1040, 'fMW7MA2rFFAXJgPYVE170415092534', 'Luluk hariadi', '085102957166', 'Abdutoher91@gmail.com', 1, '2017-04-15 14:25:34', '2017-04-18 06:25:24'),
(1041, 'Wuad1sB2kE8xSFtuaw170415105556', 'Ayu', '082144067113', 'ak270605@gmail.com', 1, '2017-04-15 15:55:56', '2017-04-18 06:25:24'),
(1042, 'Chzas3VcTHiQFMYIYv170416012420', 'seazha', '082131655959', 'seazha2014@gmail.com', 1, '2017-04-15 18:24:20', '2017-04-18 06:25:24'),
(1043, 'QM4cBl4UEHFmdFRbXt170416075126', 'Ira', '087829903016', 'ratuchairiyah@gmail.com', 1, '2017-04-16 00:51:26', '2017-04-18 06:25:24'),
(1044, 'beelgAuM1QwZ4apbeR170416082944', 'Ita setyo', '08113395859', 'pitasetyo@yahoo.com', 1, '2017-04-16 01:29:44', '2017-04-18 06:25:24'),
(1045, 'NLNgdiKDwy6sSvjIP6170416093116', 'Gita rizqi meylina', '081230717235', 'Gitarizqimeylina@gmail.com', 1, '2017-04-16 02:31:16', '2017-04-18 06:25:24'),
(1046, 'DL9yhcfqeSDs2wKhnt170416104454', 'Kiky', '0895388132760', 'shibao.miracle@gmail.com', 1, '2017-04-16 03:44:54', '2017-04-18 06:25:24'),
(1047, 'Fpamtw1A1s1IADNrQF170416110216', 'Konita Insiyana', '081553133023', 'insiyana12@gmail.com', 1, '2017-04-16 04:02:16', '2017-04-18 06:25:24'),
(1048, 'qf1OLKWIS9rR7TskfO170416124803', 'Pipin', '082233162233', 'Mbagucrid@gmail.com', 1, '2017-04-16 05:48:03', '2017-04-18 06:25:24'),
(1049, '4EilLLoQw9hF4KkvJF170416031829', 'Fayakun Atmaraga Putri Utami', '081333313742', 'fayakunatmaraga@gmail.com', 1, '2017-04-16 08:18:29', '2017-04-18 06:25:24'),
(1050, 'YUAWkDsbaWMzGUdn04170416094025', 'Ita masita', '0811333544', 'itamasita85@yahoo.com', 1, '2017-04-16 14:40:25', '2017-04-18 06:25:24'),
(1051, 'eotdT4cEX28xl41xIx170416094319', 'Ita masita', '085749831696', 'itamasita85@yahoo.com', 1, '2017-04-16 14:43:19', '2017-04-18 06:25:24'),
(1052, 'O43KYjWcc7tgWCisxC170416104548', 'Ery Fatmaty', '081249791006', 'eryfatmawati@ymail.com', 1, '2017-04-16 15:45:48', '2017-04-18 06:25:24'),
(1053, 'lc0YAIydZm1RDAo2il170416104701', 'Ery Fatmawati', '081249791006', 'eryfatmawati@ymail.com', 1, '2017-04-16 15:47:01', '2017-04-18 06:25:24'),
(1054, 'QevcfKm4gR76KeCOUh170417095338', 'Dewi', '081331291207', 'diana_3land@yahoo.com', 1, '2017-04-17 02:53:38', '2017-04-18 06:25:24'),
(1055, 'iKjoIl78pk4KOmVFpk170417121606', 'Ach. Syamsul Hadi', '085731573264', 'elmusyarrif@gmail.com', 1, '2017-04-17 05:16:06', '2017-04-18 06:25:24'),
(1056, 'ypFMqS9NO0RdOryZ0V170417123022', 'Dewi', '085105889545', 'denaraissa1983@yahoo.com', 1, '2017-04-17 05:30:22', '2017-04-18 06:25:24'),
(1057, 'LtfMWaUKBkZLpUQvOZ170417052128', 'Yuliana', '083830137333', 'ai_hanako87@yahoo.com', 1, '2017-04-17 10:21:28', '2017-04-18 06:25:24');
INSERT INTO `download_pricelist` (`id`, `token`, `name`, `phone`, `email`, `readed`, `created_at`, `updated_at`) VALUES
(1058, 'COJWJEwsZKh42eyhda170417062048', 'Arum', '085655884547', 'ay.indie@gmail.com', 1, '2017-04-17 11:20:48', '2017-04-18 06:25:24'),
(1059, 'AyjqnV8CytfaBDe88m170417063406', 'Jihan Nurulita Izzati', '089506087009', 'jihannurulita@rocketmail.com', 1, '2017-04-17 11:34:06', '2017-04-18 06:25:24'),
(1060, 'aOq4KEZn5qIR58AyaX170417074348', 'ameilia kurnia sari', '081215911304', 'saia.ameilia@gmail.com', 1, '2017-04-17 12:43:48', '2017-04-18 06:25:24'),
(1061, 'fGY8VowZc0W4l0ilJV170417075200', 'astutik', '087851185174', 'sriastutikq@gmail.com', 1, '2017-04-17 12:52:00', '2017-04-18 06:25:24'),
(1062, 'J1QBV437KnHEOEAy0N170417075436', 'Tri', '083857437673', 'Tridamayanti622@yahoo.com', 1, '2017-04-17 12:54:36', '2017-04-18 06:25:24'),
(1063, 'O7SFlpd0hZK9tvfRBr170418101015', 'Ira', '085645603355', 'ira_huma@yahoo.com', 1, '2017-04-18 03:10:15', '2017-04-18 06:25:24'),
(1064, 'vS6lupwcoRlJBJvyMc170418124814', 'Iva', '083849790502', 'gothicadarkzone@gmail.com', 1, '2017-04-18 05:48:14', '2017-04-18 06:25:24'),
(1065, 'N3stevYM6hRN7Ppe6h170418014759', 'maya sari', '087709205930', 'mayagetes@yahoo.com', 1, '2017-04-18 06:47:59', '2017-04-19 04:15:08'),
(1066, 'QufsVaE6GOnD3iAOxt170418025632', 'wandasari', '081231348034', 'wandasari.arminareka@gmail.com', 1, '2017-04-18 07:56:33', '2017-04-19 04:15:08'),
(1067, 'FkBvdtMkuH3fgIhKjd170418045757', 'Rina', '081332009010', 'rsuswati@gmail.com', 1, '2017-04-18 09:57:57', '2017-04-19 04:15:08'),
(1068, 'dNMnCOtvwXVfFRFqRE170418052625', 'Afifah Wafa Rusydina', '085749906778', 'afifahwafar@gmail.com', 1, '2017-04-18 10:26:25', '2017-04-19 04:15:08'),
(1069, 'TQkkKfejVQgkcy9Dnf170418075548', 'Heptana', '081235045573', 'Listyariniheptana@gmail.com', 1, '2017-04-18 12:55:48', '2017-04-19 04:15:08'),
(1070, 'PMCmasZ0Btt9yVNTM3170418100844', 'hartini', '085895302068', 'ramadhini25.rd@gmail.com', 1, '2017-04-18 15:08:44', '2017-04-19 04:15:08'),
(1071, 'IMTroUjWGyer7LzSnN170418101142', 'Hartini', '085895302068', 'ramadhini25.rd@gmail.com', 1, '2017-04-18 15:11:42', '2017-04-19 04:15:08'),
(1072, 'zRYaCHn58jOwsiDtWP170418101634', 'Ayu widiya', '085730267602', 'Ayybaslan@yahoo.co.id', 1, '2017-04-18 15:16:34', '2017-04-19 04:15:08'),
(1073, 'uOUBIIa5ZhsiU5nFuj170418101707', 'Hartini', '085895302068', 'Tinisubiyanto@yahoo.com', 1, '2017-04-18 15:17:07', '2017-04-19 04:15:08'),
(1074, 'IiJCC0HJhewhpmjiDA170418105121', 'Aninda', '0811305995', 'andianinda@gmail.com', 1, '2017-04-18 15:51:21', '2017-04-19 04:15:08'),
(1075, 'iJ1gIxds7dMCE2O05a170418105231', 'Fena tasia', '081231313400', 'fenatasia077@gmail.com', 1, '2017-04-18 15:52:31', '2017-04-19 04:15:08'),
(1076, 'wGlGdkpgZnznM9HHiY170418110610', 'Arni', '08785393465', 'Satuenam12@gmail.com', 1, '2017-04-18 16:06:10', '2017-04-19 04:15:08'),
(1077, '6ITIvNTaGmIIScPjI4170418110754', 'zakiyah', '081230371085', 'zakiyah.bjs@gmail.com', 1, '2017-04-18 16:07:54', '2017-04-19 04:15:08'),
(1078, 'ZpgYGChx6HywSOUA71170419121022', 'Mela Agusti Widyasari', '085648903770', 'memela.fkmua@gmail.com', 1, '2017-04-18 17:10:22', '2017-04-19 04:15:08'),
(1079, 'HKWctMQAHP3Nsepkl3170419052807', 'Aria', '085732080680', 'msgr.aria@gmail.com', 1, '2017-04-18 22:28:07', '2017-04-19 04:15:08'),
(1080, 'i7c1P4GfMQqoWkRvMT170419061245', 'Ana', '085733435613', 'astianasholihah13@gmail.com', 1, '2017-04-18 23:12:45', '2017-04-19 04:15:08'),
(1081, '6xTujULCltyf0S2qMY170419090808', 'Putri Husiantony', '085648333887', 'putrihusiantony@gmail.com', 1, '2017-04-19 02:08:08', '2017-04-19 04:15:08'),
(1082, 'V4RMOTdUcx9yoOSYY9170419100237', 'ratna etic', '081216114565', 'ratna.etic@gmail.com', 1, '2017-04-19 03:02:37', '2017-04-19 04:15:08'),
(1083, 'LamRNDzGymhdXmnzix170419102136', 'Mela Agusti Widyasari', '085648903770', 'memela.fkmua@gmail.com', 1, '2017-04-19 03:21:36', '2017-04-19 04:15:08'),
(1084, 'NTFOZJDJhegE5s9Yhg170419103407', 'Aliyatus Shoimah', '085268433293', 'aliya.success@gmail.com', 1, '2017-04-19 03:34:07', '2017-04-19 04:15:08'),
(1085, '6cHpd2AwWbmDnvNRCi170419111147', 'vita', '08113222181', 'vita.ikanovita81@gmail.com', 1, '2017-04-19 04:11:47', '2017-04-19 04:15:08'),
(1086, 'VcyPqpD9bd2umaPCv5170419013356', 'Luluk Mukaromah', '087854338123', 'ichanisnada041915@gmail.com', 1, '2017-04-19 06:33:56', '2017-04-19 08:51:36'),
(1087, 'FGMLMvmyC3ZkU3zao0170419013359', 'Luluk Mukaromah', '087854338123', 'ichanisnada041915@gmail.com', 1, '2017-04-19 06:33:59', '2017-04-19 08:51:36'),
(1088, 'M3zXkh3V7FxQ9pviO0170419015940', 'lauda', '08155220992', 'lauda.septiana@gmail.com', 1, '2017-04-19 06:59:40', '2017-04-19 08:51:36'),
(1089, '1NiQ5agrVgnVSJO7sR170419023551', 'Niza', '085646235648', 'niza.erniza@gmail.com', 1, '2017-04-19 07:35:51', '2017-04-19 08:51:36'),
(1090, 'vAGX9zDTlRLGMSz6mK170419030527', 'Syifa ', '081234544919', 'Syifasyarifah92@gmail.com', 1, '2017-04-19 08:05:27', '2017-04-19 08:51:36'),
(1091, 'uMNkOU29FqfmmWUe7p170419040213', 'betzy', '08113211228', 'betzylekho@rocketmail.com', 1, '2017-04-19 09:02:13', '2017-04-20 02:43:18'),
(1092, 'lXz5pBubj3LW3f0nKd170419041130', 'Ayu', '085853886923', 'rzayul@yahoo.co.id', 1, '2017-04-19 09:11:30', '2017-04-20 02:43:18'),
(1093, 'YksTRm6nFVd8GTa3V8170419061100', 'Noviana Dwi', '085740988162', 'novianadwi26@gmail.com', 1, '2017-04-19 11:11:00', '2017-04-20 02:43:18'),
(1094, '7zGUh6D7aMhfewk498170419064755', 'hermin', '0856680012', 'herminyaskhi@yahoo.com', 1, '2017-04-19 11:47:55', '2017-04-20 02:43:18'),
(1095, 'pqbVqdupv3HmouaEYD170419073955', 'widya yulinar', '087853002198', 'widykumala@yahoo.co.id', 1, '2017-04-19 12:39:55', '2017-04-20 02:43:18'),
(1096, 'MhHIuQeuFaD8YySL4H170419085325', 'ririn', '081227759722', 'haridazahraini@yahoo.com', 1, '2017-04-19 13:53:25', '2017-04-20 02:43:18'),
(1097, 'hh7GnQbQbiRZDkQ4Iq170419091222', 'Kurniawati', '08529947710', 'kurniawatihatary.kh@gmail.com', 1, '2017-04-19 14:12:22', '2017-04-20 02:43:18'),
(1098, 'cvJsDMgeaXdusoK103170419093614', 'ninik wijayanti', '082234004276', 'ninikwijayanti1989@gmail.com', 1, '2017-04-19 14:36:14', '2017-04-20 02:43:18'),
(1099, 'k9719J4wKSFtG9tna1170419093718', 'ninik wijayanti', '082234004276', 'ninikwijayanti1989@gmail.com', 1, '2017-04-19 14:37:18', '2017-04-20 02:43:18'),
(1100, 'sYxMEHyar95cs9Aowq170419094901', 'Noviana Dwi', '085740988162', 'novianadwi26@gmail.com', 1, '2017-04-19 14:49:01', '2017-04-20 02:43:18'),
(1101, 'otufCG6r06VZr3u9Z0170419094954', 'Fridha Nurrahma', '085640677564', 'fridhanrahma@gmail.com', 1, '2017-04-19 14:49:54', '2017-04-20 02:43:18'),
(1102, 'OfwZaZkM2IU6amfwVq170419100325', 'Anik Susiati', '085736292116', 'kinaitaisus@yahoo.com', 1, '2017-04-19 15:03:25', '2017-04-20 02:43:18'),
(1103, 'x9FZMxtulUWlHuiZJL170419103114', 'Hani Susanti', '085648320794', 'suntea.hunny@gmail.com', 1, '2017-04-19 15:31:14', '2017-04-20 02:43:18'),
(1104, 'Imkjiz1lHBTvAGPbCT170419110729', 'novi lestari', '085257225675', 'novilestari.ahmad@gmail.com', 1, '2017-04-19 16:07:29', '2017-04-20 02:43:18'),
(1105, 'XJwgBNzNf22UZwSefW170419111348', 'novi lestari', '085257225675', 'novilestari.ahmad@gmail.com', 1, '2017-04-19 16:13:48', '2017-04-20 02:43:18'),
(1106, 'F2KcmYdER4IUXMv5Zr170419113011', 'Siti Aliifah Safiinatunnajah', '085711800019', 'sitialiifah@gmail.com', 1, '2017-04-19 16:30:11', '2017-04-20 02:43:18'),
(1107, 'V5o06whf37d3KMkDmq170420072052', 'Nadia', '081335188081', 'sadriani_nadia@yahoo.com', 1, '2017-04-20 00:20:52', '2017-04-20 02:43:18'),
(1108, 'EOqLs9rbFq0nb8Xs4Z170420082315', 'devi jati', '085853063700', 'devijatii98@gmail.com', 1, '2017-04-20 01:23:15', '2017-04-20 02:43:18'),
(1109, '3Es8Bxq3J2UxpPkGbK170420090342', 'wiwi', '085299394161', 'whiwic_noer@yahoo.co.id', 1, '2017-04-20 02:03:42', '2017-04-20 02:43:18'),
(1110, 'taIkbLXexd9qjia3n2170420095331', 'Lia', '08703927607', 'Yuliaindriyani.yi@gmail.com', 1, '2017-04-20 02:53:31', '2017-04-20 03:10:42'),
(1111, 'GrNN02VM2ShRSEz5a4170420103538', 'aldina rani', '085692789827', 'naranilestari@gmail.com', 1, '2017-04-20 03:35:38', '2017-06-07 08:23:32'),
(1112, 'LVjxc4pNyRH674e3w1170420104259', 'aldina', '085692789827', 'naranilestari@gmail.com', 1, '2017-04-20 03:42:59', '2017-06-07 08:23:32'),
(1113, 'YHjeqd5V4Vwye6GQ47170420121952', 'Fikkria Azizah', '081217099436', 'fikkriazizahmustofa@gmail.com', 1, '2017-04-20 05:19:52', '2017-06-07 08:23:32'),
(1114, 'EmNzUOBKMdRxB8ygQs170420122911', 'Dwi Tyas', '08179005758', 'dwi.tiyastutik@yahoo.com', 1, '2017-04-20 05:29:11', '2017-06-07 08:23:32'),
(1115, 'u8LRVK3zla6qsRSFg7170420011351', 'FEBIE ANGELIA PERDANA', '081357113428', 'angeliaperdana2@gmail.com', 1, '2017-04-20 06:13:51', '2017-06-07 08:23:32'),
(1116, '3VK065ekkYbRMyLIkH170420032909', 'Widi haryati', '0895320035105', 'widiharyati02@gmail.com', 1, '2017-04-20 08:29:09', '2017-06-07 08:23:32'),
(1117, 'CitrdrvUzPl5SVjnDv170420052546', 'Nanik Budiati', '081330108648', 'nanik.budiati@gmail.com', 1, '2017-04-20 10:25:46', '2017-06-07 08:23:32'),
(1118, 'kQWwydbYzSJFUyCqaq170420053259', 'Aria', '085732080680', 'Msgr.aria@gmail.com', 1, '2017-04-20 10:32:59', '2017-06-07 08:23:32'),
(1119, 'bWG26A4mPUHZfMYE0S170420070435', 'Dewi', '081331291207', 'Diana_3land@yahoo.com', 1, '2017-04-20 12:04:35', '2017-06-07 08:23:32'),
(1120, 'Vz1m4UNxM84oOaebYI170420070830', 'Dewi', '081331291207', 'Diana_3land@yahoo.com', 1, '2017-04-20 12:08:30', '2017-06-07 08:23:32'),
(1121, 'dYmJhXSbqkefc8BHMM170420070933', 'Dewi', '081331291207', 'Diana_3land@yahoo.com', 1, '2017-04-20 12:09:33', '2017-06-07 08:23:32'),
(1122, 'bdF19iZvFPYJZgXOun170420072657', 'Sholikhatin', '087859623781', 'sholikha08@gmail.com', 1, '2017-04-20 12:26:57', '2017-06-07 08:23:32'),
(1123, '5Amp8YYagYren1oSOz170420075622', 'Fikkria Azizah', '081217099436', 'fikkriazizahmustofa@gmail.com', 1, '2017-04-20 12:56:22', '2017-06-07 08:23:32'),
(1124, 'HhnPsZ0D2ETSMsJGHr170420080659', 'fitri', '085655404081', 'masithohfithriyah@gmail.com', 1, '2017-04-20 13:06:59', '2017-06-07 08:23:32'),
(1125, 'hTb1OPIwyItBcIqT3l170420081113', 'inayah', '085757397051', 'niinayah@gmail.com', 1, '2017-04-20 13:11:13', '2017-06-07 08:23:32'),
(1126, 'KKNDAhDqlYi8DkOFOx170420085221', 'riamay', '085733583088', 'ceriaituria@gmail.com', 1, '2017-04-20 13:52:21', '2017-06-07 08:23:32'),
(1127, 'VI5Jy0qMTnX8zNyNzd170420085406', 'riamay', '085733583088', 'ceriaituria@gmail.com', 1, '2017-04-20 13:54:06', '2017-06-07 08:23:32'),
(1128, 'H8dgLG4lglrQaXPFOF170420091112', 'Jayanti', '081233806094', 'Jayantiwulansari17@gmail.com', 1, '2017-04-20 14:11:12', '2017-06-07 08:23:32'),
(1129, 'AT2bwyPdgWfaSO4oJV170420105045', 'Imaniar', '081235966562', 'Imaniarwijayanti@yahoo.com', 1, '2017-04-20 15:50:45', '2017-06-07 08:23:32'),
(1130, '7WpEdkfuGRmAEQS7Vj170421050148', 'viedha', '082333322890', 'nilamety@gmail.com', 1, '2017-04-20 22:01:48', '2017-06-07 08:23:32'),
(1131, 'f257Q4diI3qlXXDlnx170421082902', 'Widhi Retna Puspita', '085608083808', 'Widhiretnapuspita@gmail.com', 1, '2017-04-21 01:29:02', '2017-06-07 08:23:32'),
(1132, 'GWDn6wJC7lzd0M3tjp170421083406', 'Retna Luwi', '085856489018', 'retna_luwi@yahoo.com', 1, '2017-04-21 01:34:06', '2017-06-07 08:23:32'),
(1133, 'AEnSwhVnMBHSGYN5Rd170421092935', 'Joice', '085733162737', 'joice.henryawardhani@gmail.com', 1, '2017-04-21 02:29:35', '2017-06-07 08:23:32'),
(1134, 'lsG6uh5GGRFFElxpie170421092936', 'Santi Indriani', '+62 821-9853-5871', 'santiindrianiii@gmail.com', 1, '2017-04-21 02:29:36', '2017-06-07 08:23:32'),
(1135, 'CXD2pPcWp4vp0zD2lN170421110324', 'Nino', '08113313694', 'skylloo_nino@yahoo.com', 1, '2017-04-21 04:03:24', '2017-06-07 08:23:32'),
(1136, 'BqUMiwzaLcvyMBjRNc170421115240', 'ditta', '08993725099', 'dittaerfi@gmail.com', 1, '2017-04-21 04:52:40', '2017-06-07 08:23:32'),
(1137, 'PDvp51HCgKBqWUL6Rz170421010415', 'ginanjar asih', '082226552914', 'ghiyna.psy09@gmail.com', 1, '2017-04-21 06:04:15', '2017-06-07 08:23:32'),
(1138, 'kNMMdygkFEB7QoacUb170421014736', 'betty', '081328419164', 'bettyikawati@gmail.com', 1, '2017-04-21 06:47:36', '2017-06-07 08:23:32'),
(1139, 'Oqzw0EHRgw0Y2oBw95170421024949', 'tita anastazia', '081330969636', 'tita.anast@gmail.com', 1, '2017-04-21 07:49:49', '2017-06-07 08:23:32'),
(1140, 'qVohcrIllqZ4qUKUgf170421035726', 'Yulia', '6285230090700', 'Julzbhl@gmail.com', 1, '2017-04-21 08:57:26', '2017-06-07 08:23:32'),
(1141, 'IFKU6DeNLSkXffylvx170421042848', 'Mara', '085731801290', 'mara.redaksibro@gmail.com', 1, '2017-04-21 09:28:48', '2017-06-07 08:23:32'),
(1142, 'VzChT2Iwe2JcR54siT170421043420', 'nurul', '087853399', 'kurniawati.khansa@gmail.com', 1, '2017-04-21 09:34:20', '2017-06-07 08:23:32'),
(1143, 'F8Aa0dN7mCKHjkrJn5170421070352', 'Destyas nurrohmah', '085655353025', 'tyasasti@gmail.com', 1, '2017-04-21 12:03:52', '2017-06-07 08:23:32'),
(1144, 'Ldos6RzCP2grFTtl9C170421082513', 'Ardita', '085646456299', 'sanggelardita@gmail.com', 1, '2017-04-21 13:25:13', '2017-06-07 08:23:32'),
(1145, 'nCaOzOsnUnsDJTju07170421110212', 'Fitri permadi', '081804288005', 'fitripermadi2015@gmail.com', 1, '2017-04-21 16:02:12', '2017-06-07 08:23:32'),
(1146, '5socHMdGSOCagIOj9j170421111234', 'Putri Rendra', '081249447947', 'rendrasunny88@gmail.com', 1, '2017-04-21 16:12:34', '2017-06-07 08:23:32'),
(1147, 'bgbMjEMZnK1HZUqNYd170422044121', 'Didi', '082139141584', 'diah.vidayanti@gmail.com', 1, '2017-04-21 21:41:21', '2017-06-07 08:23:32'),
(1148, 'Ck7fuO26K1NZ4bsNCb170422052953', 'Ummu Zahra', '081231611090', 'rinkrisna.2007@yahoo.com', 1, '2017-04-21 22:29:53', '2017-06-07 08:23:32'),
(1149, 'yR2Xh65CW1oxwoRRhq170422100233', 'rahmi vera budiman', '082122719521', 'dualimaami@gmail.com', 1, '2017-04-22 03:02:33', '2017-06-07 08:23:32'),
(1150, '4F7N2HzgoSruE9FpSS170422112918', 'astutik', '087851185174', 'sriastutikq@gmail.com', 1, '2017-04-22 04:29:18', '2017-06-07 08:23:32'),
(1151, '9rKLvDVgHTMsnxzd3V170422113206', 'Sri', '081332809542', 'Iik.romie74@gmail.com', 1, '2017-04-22 04:32:06', '2017-06-07 08:23:32'),
(1152, '1GoFYZjRQOgXdoUXD2170422114823', 'Anna', '081217699526', 'yulianjito82@gmail.com', 1, '2017-04-22 04:48:23', '2017-06-07 08:23:32'),
(1153, 'cHeSui5ZNir72MQMqn170422115513', 'novi', '08970048093', 'o_nopie@ymail.com', 1, '2017-04-22 04:55:13', '2017-06-07 08:23:32'),
(1154, 'XBJl0DO3Ps5yCMmDRZ170422123638', 'Rosi Aisyati', '082231999249', 'rosu.aisyati@gmail.com', 1, '2017-04-22 05:36:38', '2017-06-07 08:23:32'),
(1155, '9aUl8PuOlGdD6uT89X170422124034', 'Muti', '085608103600', 'Fadhilahmutik@gmail.com', 1, '2017-04-22 05:40:34', '2017-06-07 08:23:32'),
(1156, 'xiw4y0jnRO8bSO2nyD170422022215', 'Diab', '081553', 'Dian.hery@yahoo.com', 1, '2017-04-22 07:22:15', '2017-06-07 08:23:32'),
(1157, 'Z3YcQFFvTyoTVlayuM170422023311', 'Qurrata Ayunin S', '08385844748', 'nenin.qurrata@gmail.com', 1, '2017-04-22 07:33:11', '2017-06-07 08:23:32'),
(1158, 'J5d1OAODkPSHnH7ne7170422034210', 'Dian', '0818148157', 'Dianhy@yahoo.com', 1, '2017-04-22 08:42:10', '2017-06-07 08:23:32'),
(1159, 'PcIxXDJoBdiXfhKSsk170423062005', 'Lia Kusuma Indhiarti', '082185814727', 'liakusuma_wibowo@yahoo.com', 1, '2017-04-22 23:20:05', '2017-06-07 08:23:32'),
(1160, 'M4KJjywMKanghY8KHI170423070002', 'Mustikawati', '085245505321', 'mustikawati.14@gmail.com', 1, '2017-04-23 00:00:02', '2017-06-07 08:23:32'),
(1161, 'Ob9tZVRagl28eZeoU3170423102126', 'Arietyas', '081252557714', 'arietyasfat@gmail.com', 1, '2017-04-23 03:21:26', '2017-06-07 08:23:32'),
(1162, 'ytNFryOxymIiWDhIQY170423123139', 'Dwi ariya', '082139086888', 'Dwi2222damay@gmail.com', 1, '2017-04-23 05:31:39', '2017-06-07 08:23:32'),
(1163, 'UkP5i8ac9WOrP32gE9170423011551', 'Hesti', '083849898474', 'Miss.anesti@gmail.com', 1, '2017-04-23 06:15:51', '2017-06-07 08:23:32'),
(1164, 'c1isXDbuf79dmdHUX7170423032052', 'maredia', '08155529663', 'marediadn@gmail.com', 1, '2017-04-23 08:20:52', '2017-06-07 08:23:32'),
(1165, 'M2H9UCqzSA4z4KdF18170423032328', 'Maredia', '08155529663', 'Marediadn@gmail.com', 1, '2017-04-23 08:23:28', '2017-06-07 08:23:32'),
(1166, '3Th7IrD8kkCk1F8M3y170423034003', 'Devi jati', '085853063700', 'Devijatii98@gmail.com', 1, '2017-04-23 08:40:03', '2017-06-07 08:23:32'),
(1167, 'mMRTQVmgiN7Tf1aVBF170423043538', 'Susi', '085735349789', 'chuzie.imoet@gmail.com', 1, '2017-04-23 09:35:38', '2017-06-07 08:23:32'),
(1168, 'myAAbzkGSXcy6G9uZm170423052347', 'Triana devi', '081216122816', 'deviana.setiawan01@gmail.com', 1, '2017-04-23 10:23:47', '2017-06-07 08:23:32'),
(1169, 'RTYzuGmACbEa6ki5qt170423053854', 'indara', '085855636457', 'isuterati@yahoo.com', 1, '2017-04-23 10:38:54', '2017-06-07 08:23:32'),
(1170, 'eOyiB0TuSuHcyLS9ri170423061647', 'Nina', '081515190119', 'Enzetef@gmail.com', 1, '2017-04-23 11:16:47', '2017-06-07 08:23:32'),
(1171, 'uv11wsVh8o9XJ7Ya2H170423081259', 'titin pratiwi', '085646828883', 'titinpratiwi83@gmail.com', 1, '2017-04-23 13:12:59', '2017-06-07 08:23:32'),
(1172, 'CcpoBCMlYsnt4FJZ2G170423084435', 'Septi Anitasari', '085235975444', 'shaff_24@yahoo.co.id', 1, '2017-04-23 13:44:35', '2017-06-07 08:23:32'),
(1173, 'eCiJrhVxp6yK7cJi0U170423092836', 'Reny Nurlaela', '08971555440', 'reny_nurlaela@ymail.com', 1, '2017-04-23 14:28:36', '2017-06-07 08:23:32'),
(1174, 'r1nDe8BEHQeItVQjT7170423094158', 'yanuar erlita', '087855807679', 'yanuarlita@gmail.com', 1, '2017-04-23 14:41:58', '2017-06-07 08:23:32'),
(1175, 'EaGxyt3XU9kuyOEwZs170423112757', 'Reiny ', '08175063725', 'reinynovitamakki763@gmail.com', 1, '2017-04-23 16:27:57', '2017-06-07 08:23:32'),
(1176, '6oOVVijuocY4sTRSHl170424072920', 'windi ', '085797003357', 'windi.wahyusari@gmail.com', 1, '2017-04-24 00:29:20', '2017-06-07 08:23:32'),
(1177, 'yVp29JfeyB401o7N1R170424020757', 'Dewi', '087851269691', 'iweds_darsana@yahoo.com', 1, '2017-04-24 07:07:57', '2017-06-07 08:23:32'),
(1178, 'bifvx6VpCkdk1avuqJ170424022739', 'Hilda Ikka', '089656802091', 'hildaikka@gmail.com', 1, '2017-04-24 07:27:39', '2017-06-07 08:23:32'),
(1179, 'PWjfj5ilrKp9dktsqm170424035656', 'Dwi Indah Aprilliani', '082228960551', 'dwiindah.april@gmail.com', 1, '2017-04-24 08:56:56', '2017-06-07 08:23:32'),
(1180, 'YhCDCXKDfhEJUzVDdm170424043911', 'Hasfinda Fakhir Mufid', '082234122630', 'hasfindaf.mufid@yahoo.com', 1, '2017-04-24 09:39:11', '2017-06-07 08:23:32'),
(1181, 'UiJ8oBFPvbdZCJhUnt170424054728', 'Rizky Aditya', '082132468679', 'rizkyaditya_faiqotutdiyanah@ymail.com', 1, '2017-04-24 10:47:28', '2017-06-07 08:23:32'),
(1182, 'xz56HSkgubxb7zROt6170424090205', 'santi', '087856653696', 'ummu.farah.nabila@gmail.com', 1, '2017-04-24 14:02:05', '2017-06-07 08:23:32'),
(1183, '082lp4qrABxPOusfyY170424090242', 'santi', '087856653696', 'ummu.farah.nabila@gmail.com', 1, '2017-04-24 14:02:42', '2017-06-07 08:23:32'),
(1184, 'tP8LaEeG4YWPucEvG9170424094752', 'Nurul qomariyah', '085731702159', 'Choomb7367@gmail.com', 1, '2017-04-24 14:47:52', '2017-06-07 08:23:32'),
(1185, 'KfrdVNRFt22ezruM6d170424102821', 'yuyun', '081357332567', 'yuyunwidowati36@gmail.com', 1, '2017-04-24 15:28:21', '2017-06-07 08:23:32'),
(1186, '2JEtaGcs8zBtDhMfcK170424113340', 'Debi', '085732612075', 'debiyustina@yahoo.com', 1, '2017-04-24 16:33:40', '2017-06-07 08:23:32'),
(1187, 'kPQHCeH1HFfIEpDBpO170425074930', 'Tanty', '081233449873', 'yulichri31@yahoo.com', 1, '2017-04-25 00:49:30', '2017-06-07 08:23:32'),
(1188, 'SDjIB8bm3yDfWzx2TC170425090122', 'annisa', '081330061650', 'annisatanriah@gmail.com', 1, '2017-04-25 02:01:22', '2017-06-07 08:23:32'),
(1189, 'JTlL92bgMuPIWPi4w1170425094556', 'Retina', '081332494950', 'rindanwati@gmail.com', 1, '2017-04-25 02:45:56', '2017-06-07 08:23:32'),
(1190, 'hBO297hYMg3dKD1eGp170425102103', 'Ana Ziah', '083832000877', 'anajiah2@gmail.com', 1, '2017-04-25 03:21:03', '2017-06-07 08:23:32'),
(1191, 'NDvNhOttwh43ynnfIE170425104958', 'Dwi irma', '085331772767', 'dwiirma.di@gmail.com', 1, '2017-04-25 03:49:58', '2017-06-07 08:23:32'),
(1192, 'pkvEyh9GS8yBhAtq42170425110510', 'ANA ZIAH', '083832000877', 'anajiah2@gmail.com', 1, '2017-04-25 04:05:10', '2017-06-07 08:23:32'),
(1193, '3MRV1BQ5KSJQx8iEb2170425013942', 'dewi jannati', '082233031987', 'dewi.prasanti87@gmail.com', 1, '2017-04-25 06:39:42', '2017-06-07 08:23:32'),
(1194, 'MJcKIm6daIir9Tg1E7170425022153', 'Praditya', '087859913130', 'tamyekun@gmail.com', 1, '2017-04-25 07:21:53', '2017-06-07 08:23:32'),
(1195, 'rGUqupdBg6uAxvMJwq170425041918', 'Nanja', '082143559966', 'nanjapurwati26@gmail.com', 1, '2017-04-25 09:19:18', '2017-06-07 08:23:32'),
(1196, 'JJVN8yOYwiZMQfWTwb170425044045', 'Risti Dwi', '08563447961', 'ristidwiariyati@gmail.com', 1, '2017-04-25 09:40:45', '2017-06-07 08:23:32'),
(1197, 'DGS27kBQ4ZUhvrvsRj170425044400', 'vitria yulianingtyas', '081331669239', 'vitria.yulianingtyas@gmail.com', 1, '2017-04-25 09:44:00', '2017-06-07 08:23:32'),
(1198, 'XoINj5O2VBmuDU9ATa170425051633', 'Nida', '081283043203', 'nidalaili1@gmail.com', 1, '2017-04-25 10:16:33', '2017-06-07 08:23:32'),
(1199, 'wQANvxhfvODDuYqkNb170425065220', 'aris lailiatul fadilah', '085708343540', 'rie_rizt@ymail.com', 1, '2017-04-25 11:52:20', '2017-06-07 08:23:32'),
(1200, 't4bpMeas9srzZPse8k170425072619', 'Okta', '082231212190', 'Mahargeasanrina@yahoo.com', 1, '2017-04-25 12:26:19', '2017-06-07 08:23:32'),
(1201, 'VR3N2zGNqhKj6XRZ5Z170425083748', 'siti asiyatul', '082244424788', 'asiyarifin@gmail.com', 1, '2017-04-25 13:37:48', '2017-06-07 08:23:32'),
(1202, '99KNh686B6TJgR9KXo170425102904', 'Salehah', '085393416163', 'lea_1085@yahoo.co.id', 1, '2017-04-25 15:29:04', '2017-06-07 08:23:32'),
(1203, 'vRiiFCaBrmlqspyc7N170426022639', 'Yeni', '083849492078', 'ykustiyahningsih@yahoo.com', 1, '2017-04-25 19:26:39', '2017-06-07 08:23:32'),
(1204, 'ozu3qEc528aV5zPRc9170426073615', 'estu', '0318721345', 'estu.nian82@gmail.com', 1, '2017-04-26 00:36:15', '2017-06-07 08:23:32'),
(1205, 'kKQCCxX0otomxQhmaQ170426080945', 'Novita Laili', '082233645428', 'Vila.novi3@gmail.com', 1, '2017-04-26 01:09:45', '2017-06-07 08:23:32'),
(1206, 'rPGyVveDzYkcIQDjdG170426093926', 'Olga Elvira ', '081235952241', 'a.hvie76@gmail.com', 1, '2017-04-26 02:39:26', '2017-06-07 08:23:32'),
(1207, 'GVsYMIXwXHoGIq4svr170426102733', 'Nurir', '08813123842', 'nurirarifah55@gmail.com', 1, '2017-04-26 03:27:33', '2017-06-07 08:23:32'),
(1208, '9QtRyUcV6AeFED36hP170426103637', 'ria', '081249941678', 'riapuspita32@gamil.com', 1, '2017-04-26 03:36:37', '2017-06-07 08:23:32'),
(1209, '7mfKrUG1tzr4pUVKRh170426104631', 'Farah Nadiyah', '081232560100', 'farahnadiyah22@gmail.com', 1, '2017-04-26 03:46:31', '2017-06-07 08:23:32'),
(1210, 'BtM9EQwdrd8wAb4wlt170426105428', 'IKA', '08884988923', 'radw2903@gmail.com', 1, '2017-04-26 03:54:28', '2017-06-07 08:23:32'),
(1211, 'pLRVtV8fpSzG07Cho3170426115941', 'vyra', '081234506368', 'vyra2008@yahoo.com', 1, '2017-04-26 04:59:41', '2017-06-07 08:23:32'),
(1212, 'Qeut1qgoKAZg6x3X8O170426124606', 'Sastra', '085648860480', 'sastrazz@yahoo.com', 1, '2017-04-26 05:46:06', '2017-06-07 08:23:32'),
(1213, 'ludzXIJkoP2KKuo1DV170426020944', 'baiq erna', '081917123232', 'baiqernaindra@gmail.com', 1, '2017-04-26 07:09:44', '2017-06-07 08:23:32'),
(1214, 'ajJ7b1pDrcpw5CXrLI170426031735', 'Filia', '085232666778', 'filiagandyarma@gmail.com', 1, '2017-04-26 08:17:35', '2017-06-07 08:23:32'),
(1215, 'nPmusaw4kITeskfdtr170426032955', 'shine', '082141579512', 'shineislamingtio@gmail.com', 1, '2017-04-26 08:29:55', '2017-06-07 08:23:32'),
(1216, 'VRQis3AgjWjkEqKGyZ170426040720', 'ULFA', '085742243461', 'ulfalaila01@gmail.com', 1, '2017-04-26 09:07:20', '2017-06-07 08:23:32'),
(1217, 'JEraOQYeyvJZ9P1gB2170426041324', 'nilam', '081939866228', 'nilam.lazuza@gmail.com', 1, '2017-04-26 09:13:24', '2017-06-07 08:23:32'),
(1218, '1tQOj9c2EuzHPd3zZr170426052829', 'Mitha', '082371199902', 'Pf.miftaulia@gmail.com', 1, '2017-04-26 10:28:29', '2017-06-07 08:23:32'),
(1219, 'B0ZfdLj7Dc9xiGQvw6170426052916', 'Mimik tusmawati', '085646842295', 'mimix_cyg@yahoo.co.id', 1, '2017-04-26 10:29:16', '2017-06-07 08:23:32'),
(1220, '4otI4VhmK3wBIX6M5y170426070942', 'deniar', '085736684349', 'deniarasati@gmail.com', 1, '2017-04-26 12:09:42', '2017-06-07 08:23:32'),
(1221, 'gbAOTboYIZ0Y6UjfP9170426082841', 'DMA', '081357293074', 'dmutiaraadi@gmail.com', 1, '2017-04-26 13:28:41', '2017-06-07 08:23:32'),
(1222, 'DTajaFN6P4ailkqxrZ170426085625', 'ria', '082234997596', 'riafaqih14@yahoo.com', 1, '2017-04-26 13:56:25', '2017-06-07 08:23:32'),
(1223, 'SwaRsQ2Cwa15tkZyza170426101847', 'Nofi', '085708331474', 'dwinoer60@yahoo.com', 1, '2017-04-26 15:18:47', '2017-06-07 08:23:32'),
(1224, 'FEe878tcM6sRebN2x0170427040518', 'anisa', '085732801979', 'maulana.sakti@gmail.com', 1, '2017-04-26 21:05:18', '2017-06-07 08:23:32'),
(1225, 'WCYwVtcVXEIbt24yt1170427050153', 'Junita adelina', '082231213692', 'Junita.adelina@yahoo.co.id', 1, '2017-04-26 22:01:53', '2017-06-07 08:23:32'),
(1226, 'Hl0WsQSl74bfJjkJEA170427055402', 'dewi', '085229870600', 'dhee_dhew@yahoo.com', 1, '2017-04-26 22:54:02', '2017-06-07 08:23:32'),
(1227, '9PUCrC5uYv7j170sEA170427063551', 'Sary', '085730134444', 'Sarypermata_13@yahoo.com', 1, '2017-04-26 23:35:51', '2017-06-07 08:23:32'),
(1228, 'r7xZ5x7dpIxUFUkliK170427072253', 'Meilani ', '087703252678', 'lunagridian82@gmail.com', 1, '2017-04-27 00:22:53', '2017-06-07 08:23:32'),
(1229, '3E9WBEQ7FWODX9l3Ld170427080746', 'indah', '089527278889', 'indahtrisnaningtyas91@gmail.com', 1, '2017-04-27 01:07:46', '2017-06-07 08:23:32'),
(1230, 'yrp5Fq3ysSeG1pZgEZ170427100640', 'ratna', '083857713071', 'susi_aries84@yahoo.com', 1, '2017-04-27 03:06:40', '2017-06-07 08:23:32'),
(1231, 'UkyMmc25UMx2wCEoAM170427111103', 'tita anastazia', '081330969636', 'tita.anastazia@yahoo.com', 1, '2017-04-27 04:11:03', '2017-06-07 08:23:32'),
(1232, 'lBRuHqY6ShBW66ZGhQ170427120457', 'mega', '08563048811', 'meyrameyra88@gmail.com', 1, '2017-04-27 05:04:57', '2017-06-07 08:23:32'),
(1233, 'LsiGsi3DWi6885LFis170427121016', 'mega', '08563048811', 'meyrameyra88@gmail.com', 1, '2017-04-27 05:10:16', '2017-06-07 08:23:32'),
(1234, 'V0CHtTpMFFOdGCdOig170427015715', 'Shita Hapsari', '081336244266', 'shita.hapsari.sh@gmail.com', 1, '2017-04-27 06:57:15', '2017-06-07 08:23:32'),
(1235, 'CdbcmGVyHq9e096hZ7170427024718', 'naiya', '081358906262', 'nayarizky@gmail.com', 1, '2017-04-27 07:47:18', '2017-06-07 08:23:32'),
(1236, '8rIOztiAuXAjdaPNrX170427035115', 'Dessy Setyaningrum', '081330603162', 'dessysetyaningrum@gmail.com', 1, '2017-04-27 08:51:15', '2017-06-07 08:23:32'),
(1237, 'yca5KT9dl23cIXVnjw170427035427', 'Ayu', '085853886923', 'rzayul@yahoo.co.id', 1, '2017-04-27 08:54:27', '2017-06-07 08:23:32'),
(1238, 'GFEhBBuT8mcRdKYbJv170427044929', 'Rachel', '083831293496', 'Nichaelkarvella@gmail.com', 1, '2017-04-27 09:49:29', '2017-06-07 08:23:32'),
(1239, 'u9RksDJEFq0dMSSlBW170427053738', 'Dita', '085645464242', 'dzulandita@gmail.com', 1, '2017-04-27 10:37:38', '2017-06-07 08:23:32'),
(1240, 'MYyvwRQqnQ7W1ympMh170427060225', 'Finalia', '0821339852226', 'finaliatrisnawati03@gmail.com', 1, '2017-04-27 11:02:25', '2017-06-07 08:23:32'),
(1241, 'mQmxofTHf31KevWf5g170427063245', 'lala', '088212064790', 'nurulnih@yahoo.com', 1, '2017-04-27 11:32:45', '2017-06-07 08:23:32'),
(1242, 'md1zr5JQWVu89wRZYD170427065821', 'Rizki Tri Mayasari', '081296631298', 'rizkimayasari@gmail.com', 1, '2017-04-27 11:58:21', '2017-06-07 08:23:32'),
(1243, 'O98znk9BSqHeycNwXP170427073129', 'sari', '085852688980', 'female1298@yahoo.com', 1, '2017-04-27 12:31:29', '2017-06-07 08:23:32'),
(1244, '7jE24bUkUXknS31DJF170427073641', 'christin', '081235959599', 'oktosepuluh_new@yahoo.co.id', 1, '2017-04-27 12:36:41', '2017-06-07 08:23:32'),
(1245, 'ZyAyDxSe0J7lH1kZ2D170427080458', 'soviana', '08123002783', 'soviana1301@yahoo.com', 1, '2017-04-27 13:04:58', '2017-06-07 08:23:32'),
(1246, 'E9nC4Ldx336PUsJCiT170427100650', 'Putri', '085704945050', 'pu3sylvia@gmail.com', 1, '2017-04-27 15:06:50', '2017-06-07 08:23:32'),
(1247, '2X7wdLa0N0zTSrqfyC170427102147', 'Santy', '08563491885', 'babuba_girl@yahoo.com', 1, '2017-04-27 15:21:47', '2017-06-07 08:23:32'),
(1248, '8gVw00KzHSOzNUxvnc170427102801', 'Eka Yunaeni Adi Safitri', '085851568504', 'ekayunaenias@yahoo.co.id', 1, '2017-04-27 15:28:01', '2017-06-07 08:23:32'),
(1249, 'JF8tg7ItxFSGiksMtn170427111847', 'Nova', '085646863665', 'novaayuws@gmail.com', 1, '2017-04-27 16:18:47', '2017-06-07 08:23:32'),
(1250, 'JFLELGEVW4jMb3MPba170427114905', 'Fanny', '085335663563', 'frufaida@gmail.com', 1, '2017-04-27 16:49:05', '2017-06-07 08:23:32'),
(1251, 'TxxbdsAGlbLXNts62C170428053907', 'Sari', '081234541133', 'Sarry8023@yahoo.com', 1, '2017-04-27 22:39:07', '2017-06-07 08:23:32'),
(1252, 'Q2u9xjsefUBzb7nqqz170428054038', 'Sari', '081234541133', 'Sarry8023@yahoo.com', 1, '2017-04-27 22:40:38', '2017-06-07 08:23:32'),
(1253, '3KUuMm6Rg7fJKiUiFk170428062049', 'Remy', '085264082073', 'remydp7@gmail.com', 1, '2017-04-27 23:20:49', '2017-06-07 08:23:32'),
(1254, 'Vbxymy2hL88p2qoaLq170428065618', 'xxxx', 'xxxx', 'sofrida.rosita@gmail.com', 1, '2017-04-27 23:56:18', '2017-06-07 08:23:32'),
(1255, 'NKsljH54ne02RIl9d1170428070308', 'Evi', '081231852228 ', 'evistoreindo@gmail.com', 1, '2017-04-28 00:03:08', '2017-06-07 08:23:32'),
(1256, 'gszxaGPuO5AbLEA8JM170428091428', 'Rose Aprilya lestari', '085102148884', 'Boonaa.mail@gmail.com', 1, '2017-04-28 02:14:28', '2017-06-07 08:23:32'),
(1257, 'tBCswA7R9YaKSeL5kF170428100725', 'nailil', '081515140306', 'rudyahmad59@gmail.com', 1, '2017-04-28 03:07:25', '2017-06-07 08:23:32'),
(1258, 'DHcHEede7ahvfo7KMz170428101228', 'PUTRI RAGIL', '082245250714', 'qc2nurulhayat@gmail.com', 1, '2017-04-28 03:12:28', '2017-06-07 08:23:32'),
(1259, '1kjm6vnqVP49TGzx4U170428122035', 'Ira', '085101602423', 'irayuly@gmail.com', 1, '2017-04-28 05:20:35', '2017-06-07 08:23:32'),
(1260, '9hSshf31gUp6j322UX170428040649', 'Uly', '082231106458', 'fadlilatul.ulya@gmail.com', 1, '2017-04-28 09:06:49', '2017-06-07 08:23:32'),
(1261, 'RbrEIw4SFFOvmCLr72170428052139', 'hana', '081553870815', 'hananeech@yahoo.Com', 1, '2017-04-28 10:21:39', '2017-06-07 08:23:32'),
(1262, 'YvLqwaCwbNHYD4x0tc170428061150', 'Shinta yunita', '087853651817', 'Shintayunita30@yahoo.com', 1, '2017-04-28 11:11:50', '2017-06-07 08:23:32'),
(1263, 'mgEj2J3jPlHPnB9j0b170428065910', 'khurin', '081556730822', 'khurin.kh@gmail.com', 1, '2017-04-28 11:59:10', '2017-06-07 08:23:32'),
(1264, 'xd8hW0EPfScwQlrlWB170428070016', 'khurin', '081556730822', 'khurin.kh@gmail.com', 1, '2017-04-28 12:00:16', '2017-06-07 08:23:32'),
(1265, '3v2XV4o2WrLtOu44ZY170428070726', 'Linda pudji herawati', '0811347478', 'Lindapudjiherawati@gmail.com', 1, '2017-04-28 12:07:26', '2017-06-07 08:23:32'),
(1266, 'sSYWXJHknz9qoHyQft170428090612', 'ilham', '0315932387', 'ilham@hwk.co.id', 1, '2017-04-28 14:06:12', '2017-06-07 08:23:32'),
(1267, 'AuKgLeUgCYzvK5b2Vo170428114346', 'Ade', '081333326396', 'travelingprecils@gmail.com', 1, '2017-04-28 16:43:46', '2017-06-07 08:23:32'),
(1268, 'vhRZhmZBjR1yKwUwKJ170428114627', 'Ade', '81542272207', 'travelingprecils@gmail.com', 1, '2017-04-28 16:46:27', '2017-06-07 08:23:32'),
(1269, 'TpyhM49fthG3i1kqFt170429012215', 'fransisca febrianti', '8113300911', 'fransiscafebrianti0@gmail.com', 1, '2017-04-28 18:22:15', '2017-06-07 08:23:32'),
(1270, 'VkbhVTRjRv6OYbRxSu170429012957', 'Shafa', '085732662200', 'Happyshafa@gmail.com', 1, '2017-04-28 18:29:57', '2017-06-07 08:23:32'),
(1271, 'zwu0NHUlRWSRkQIQSP170429013520', 'Shafa', '085732662200', 'Happyshafa@gmail.com', 1, '2017-04-28 18:35:20', '2017-06-07 08:23:32'),
(1272, 'yXSFgXPazPYR6h2a42170429030408', 'amy', '085648887570', 'aamiee07@gmail.com', 1, '2017-04-28 20:04:08', '2017-06-07 08:23:32'),
(1273, 'q27yPzPppBrYFsRjAf170429052205', 'tita anastazia', '081330969636', 'tita.anastazia@yahoo.com', 1, '2017-04-28 22:22:05', '2017-06-07 08:23:32'),
(1274, 'woipy0WSaQ0qsMJJrW170429052312', 'tita', '081330969636', 'tita.anastazia@yahoo.com', 1, '2017-04-28 22:23:12', '2017-06-07 08:23:32'),
(1275, 'Im7oYudbtw03uBr5Iu170429082659', 'Ika indah pratiwi', '082233073397', 'Ika.indah010@gmail.com', 1, '2017-04-29 01:26:59', '2017-06-07 08:23:32'),
(1276, 'UVbqNVfwmZDAx2kJu4170429092350', 'Adiba', '081221224577', 'nurelya.adiba@savica.co.id', 1, '2017-04-29 02:23:50', '2017-06-07 08:23:32'),
(1277, 'WppbSGqOrP4VEpRxbL170429113337', 'Fitri Aprilianti', '081357987983', 'fitriaprilianti13@gmail.com', 1, '2017-04-29 04:33:37', '2017-06-07 08:23:32'),
(1278, 'OkEi7Jv4K6yTSekZLE170429044648', 'Apri', '082231035600', 'nugraheni_apriy@yahoo.co.id', 1, '2017-04-29 09:46:48', '2017-06-07 08:23:32'),
(1279, 'JfrDfRegw7aOTk8EQj170429052720', 'Ali', '081233552630', 'aimron8883@gmail.com', 1, '2017-04-29 10:27:20', '2017-06-07 08:23:32'),
(1280, '4bLVurDVQDteRnMqUF170429093536', 'Amilia', '085648033343', 'firda_click@yahoo.co.id', 1, '2017-04-29 14:35:36', '2017-06-07 08:23:32'),
(1281, 'oHIm3rqKZlPxhicOYy170430040044', 'Ummul badriyah', '081938343000', 'mo3badriyah@gmail.com', 1, '2017-04-29 21:00:44', '2017-06-07 08:23:32'),
(1282, 'Acevlk3OjdxFhB6aOK170430082803', 'Riri', '087771216996', 'Adrianti.abqary@gmail.com', 1, '2017-04-30 01:28:03', '2017-06-07 08:23:32'),
(1283, 'zQEUt007h4pwgEj4Mh170430094102', 'Hana', '081231505138', 'Hana.istiqraria@gmail.com', 1, '2017-04-30 02:41:02', '2017-06-07 08:23:32'),
(1284, 'KJJIiCcfbLfjVo7izm170430102027', 'Eka Santi Ariyanti', '081216080786', 'ekasantiasdhyka@yahoo.co.id', 1, '2017-04-30 03:20:27', '2017-06-07 08:23:32'),
(1285, 'ouMFEIfc1UkPBc2WV9170430102721', 'Ivonie', '082266114998', 'ivoniezahra@gmail.com', 1, '2017-04-30 03:27:21', '2017-06-07 08:23:32'),
(1286, 'CR2OfJZoQBsGd7C7JU170430095528', 'ivonie', '082266114998', 'ivoniezahra@gmail.com', 1, '2017-04-30 14:55:28', '2017-06-07 08:23:32'),
(1287, 'ix5Nuz760oz2V5e3tV170501013248', 'Rini ', '081335420101', 'rinistwn09@gmail.com', 1, '2017-04-30 18:32:48', '2017-06-07 08:23:32'),
(1288, '1aMJNLMjKvB0BHugsL170501103814', 'Diana W', '08563142773', 'diana_winarita@yahoo.com', 1, '2017-05-01 03:38:14', '2017-06-07 08:23:32'),
(1289, 'o5AZXMCvfcM8BjuT3v170501073922', 'umi rofiqah', '08563180218', 'umirofiqah@yahoo.com', 1, '2017-05-01 12:39:22', '2017-06-07 08:23:32'),
(1290, '1Jrwn2VeD3LpGtlPUS170502081627', 'esa', '081331966611', 'esaayuw@gmail.com', 1, '2017-05-02 13:16:27', '2017-06-07 08:23:32'),
(1291, '87lYt2cd4PghcamdUe170503062025', 'Shoffy', '085706120065', 'Shoffyhaqoeney@gmail.com', 1, '2017-05-02 23:20:25', '2017-06-07 08:23:32'),
(1292, 'HhBhknVLeLSrd1X3kO170503085753', 'Anik', '085856482164', 'Aniklantip9@gmail.com', 1, '2017-05-03 01:57:53', '2017-06-07 08:23:32'),
(1293, 'UqJnyw38aqxLabGygt170503061440', 'Ika Putri', '081216116345', 'ikaputriratnadewanti@gmail.com', 1, '2017-05-03 11:14:40', '2017-06-07 08:23:32'),
(1294, '0ALovovWAEabWhnzwq170503061854', 'Ika', '081216116345', 'ikaputriratnadewanti@gmail.com', 1, '2017-05-03 11:18:54', '2017-06-07 08:23:32'),
(1295, '4cg3eepkzCqxXfj5sn170503062252', 'Diah', '081249066306', 'Diahnuranuhandogo@gmail.com', 1, '2017-05-03 11:22:52', '2017-06-07 08:23:32'),
(1296, 'csRPrw8QVFoHuL0JhM170503065254', 'Yurike Chintyawati', '0813303519948', 'yurike_20@yahoo.co.id', 1, '2017-05-03 11:52:54', '2017-06-07 08:23:32'),
(1297, 'BDufv7to56YHWYzD3p170503073403', 'Irene widya christiyanti', '085733309643', 'irenewidyachristiyanti@gmail.com', 1, '2017-05-03 12:34:03', '2017-06-07 08:23:32'),
(1298, 'RS8x6yY4jBssm4E8TA170503100924', 'Muna', '085714584200', 'Munawaroh088@gmail.com', 1, '2017-05-03 15:09:24', '2017-06-07 08:23:32'),
(1299, 'TeBmVJClRiBKp5CYXD170503101023', 'Muna', '085714584200', 'Munawaroh088@gmail.com', 1, '2017-05-03 15:10:23', '2017-06-07 08:23:32'),
(1300, 'CwkHeYe4qUMaaP8LXz170503101106', 'heny', '085649536029', 'indriehuunyez@yahoo.com', 1, '2017-05-03 15:11:06', '2017-06-07 08:23:32'),
(1301, 'XdATpSowXPMjN4P58h170504060520', 'savitri putri', '081331220453', 'tza.avril@gmail.com', 1, '2017-05-03 23:05:20', '2017-06-07 08:23:32'),
(1302, 'Z7GORTr3Xk7w1mlrbT170504083920', 'FITRI', '081335806337', 'kameriafitri@gmail.com', 1, '2017-05-04 01:39:20', '2017-06-07 08:23:32'),
(1303, 'qEF2P7SLIKuBwu8wGJ170504085621', 'Ella', '085648270473', 'Smilenaela@gmail.com', 1, '2017-05-04 01:56:21', '2017-06-07 08:23:32'),
(1304, 'HqEuIr6dxXzvYTIYTc170504012136', 'Yuli', '085330847102 ', 'yuliastutik@rocketma.com', 1, '2017-05-04 06:21:36', '2017-06-07 08:23:32'),
(1305, 'bAWMHlee2MvZiXWQCI170504020105', 'firasofyana', '082234207300', 'firasofyana16@gmail.com', 1, '2017-05-04 07:01:05', '2017-06-07 08:23:32'),
(1306, 'dTWKiH6JHTLyyjhzIz170504031011', 'Novheea', '083830822242', 'vhie.nezt@yahoo.co.id', 1, '2017-05-04 08:10:11', '2017-06-07 08:23:32'),
(1307, 'Prxysy8LSojtlZNPJ3170504043300', 'Wila dewi Noviandri', '085624416633', 'wiladewinoviandri@gmail.com', 1, '2017-05-04 09:33:00', '2017-06-07 08:23:32'),
(1308, 'UBP2QNvu9NSuV9SfZ7170504051815', 'Yuli', '94359018', 'yulratna@yahoo.com', 1, '2017-05-04 10:18:15', '2017-06-07 08:23:32'),
(1309, '5nCw0JShzvKN9gNH3f170504052655', 'Dyajeng Ayu MP', '081217675545', 'ajengmelodic@gmail.com', 1, '2017-05-04 10:26:55', '2017-06-07 08:23:32'),
(1310, 'k8J84ET5FeKN2BObK5170504082223', 'Miladiah', '0318532853', 'jazzervianty@yahoo.com', 1, '2017-05-04 13:22:23', '2017-06-07 08:23:32'),
(1311, 'cjKCG7IPuPdMgZPQlo170505080549', 'suci', ' 085330505025', 'dwisuci.skm@gmail.com', 1, '2017-05-05 01:05:49', '2017-06-07 08:23:32'),
(1312, '0xzsrRCOpULaPMaDeS170505082121', 'Riska', '081331552520', 'reezskabanget@yahoo.com', 1, '2017-05-05 01:21:21', '2017-06-07 08:23:32'),
(1313, '413woWNvsTAu91lnAy170505092547', 'ike', '085645686557', 'ops.advertising.stars@gmail.com', 1, '2017-05-05 02:25:47', '2017-06-07 08:23:32'),
(1314, 'KYqwMq2ctm13MWsR14170505105147', 'aisiyah', '087852888503', 'aisha.wjy@gmail.com', 1, '2017-05-05 03:51:47', '2017-06-07 08:23:32'),
(1315, 'cgT167R7qLnspkNX29170505111110', 'Aida', '081216319103', 'Aidarena6@gmail.com', 1, '2017-05-05 04:11:10', '2017-06-07 08:23:32'),
(1316, '8o4w53KfLchZaJy7Zv170505114813', 'rosita', '082230189944', 'rositarismawatie@yahoo.com', 1, '2017-05-05 04:48:13', '2017-06-07 08:23:32'),
(1317, 'sQh9haYiOq6o6KexdQ170505021756', 'Gema', '081333311713', 'gematendik@gmail.com', 1, '2017-05-05 07:17:56', '2017-06-07 08:23:32'),
(1318, 'ibc8pjx0q8hb5ogGG4170505022147', 'HERMI AYUWATI', '083831092117', 'hermiayu89@gmail.com', 1, '2017-05-05 07:21:47', '2017-06-07 08:23:32'),
(1319, 'NbiWmcdhhGImWTEdjW170505030848', 'Aisiyah', '087852888503', 'aisha.wjy@gmail.com', 1, '2017-05-05 08:08:48', '2017-06-07 08:23:32'),
(1320, 'zevyyFDLJUX4DJqnuy170505033142', 'PUTRI R PRAYUSMI', '085733222330', 'putriprayuzmi@gmail.com', 1, '2017-05-05 08:31:42', '2017-06-07 08:23:32'),
(1321, 'yi3N9HOIQIWYZMm1LB170505051900', 'Siti suaidah', '082234442792', 'Idaayu88990@gmail.com', 1, '2017-05-05 10:19:00', '2017-06-07 08:23:32'),
(1322, 'TJkVBZrlnHSSb5L8yc170505055122', 'fitriyani', '081316116221', 'fitriyani.syarif@gmail.com', 1, '2017-05-05 10:51:22', '2017-06-07 08:23:32'),
(1323, '8iJVlBdnTAO0YlgR2c170505063401', 'Alfatur Rosyidah ', '085648569991', 'Rosyidahalfatur@yahoo.com', 1, '2017-05-05 11:34:01', '2017-06-07 08:23:32'),
(1324, 'FyyuHz6v9kE7st4juB170505073936', 'sofiana', '085732220365', 'anna.dheean27@gmail.com', 1, '2017-05-05 12:39:36', '2017-06-07 08:23:32'),
(1325, 'HNmY3kqtsFTakYk7tG170505075129', 'sofiana', '085732220365', 'anna.dheean27@gmail.com', 1, '2017-05-05 12:51:29', '2017-06-07 08:23:32'),
(1326, 'KnWDynK3y44vQUH0Mz170505083342', 'Novi indriani', '081259002503', 'Snoopyindriani86@gmail.com', 1, '2017-05-05 13:33:42', '2017-06-07 08:23:32'),
(1327, 'hqN8tmTtbld4Db9OmR170505085827', 'miftahul fitri', '085100360013', 'miffitri@gmail.com', 1, '2017-05-05 13:58:27', '2017-06-07 08:23:32'),
(1328, 'a7dZFL3vBGpyehJxej170505092813', 'Irma', '0', 'irmamance@gmail.com', 1, '2017-05-05 14:28:13', '2017-06-07 08:23:32'),
(1329, 'd3W2hq0DAB8pgBrfiU170505102002', 'hukmatul laili', '081331250288', 'bul3l@yahoo.co.id', 1, '2017-05-05 15:20:02', '2017-06-07 08:23:32'),
(1330, 'kG3O7rOHWiDw5ByEvL170505102019', 'Qorri', '082141614526', 'qorri.rohmadhani@gmail.com', 1, '2017-05-05 15:20:19', '2017-06-07 08:23:32'),
(1331, '6X5a9AiuE9I85UtpW2170506024750', 'Nia', '08889144909', 'Atikhusnia12@gmail.com', 1, '2017-05-05 19:47:50', '2017-06-07 08:23:32'),
(1332, 'DZoXI4v7LKyxHHqC3z170506044137', 'silvia', '081252829048', 'silviameilany@gmail.com', 1, '2017-05-05 21:41:37', '2017-06-07 08:23:32'),
(1333, '6UVfjsAEHPFVZ5ZDJk170506052953', 'intan', '085606521153', 'intanalfizahrah@gmail.com', 1, '2017-05-05 22:29:53', '2017-06-07 08:23:32'),
(1334, 'o4Yvzga4bUzMGcidRM170506063501', 'wulan', '082141611601', 'wulantirtana09@gmail.com', 1, '2017-05-05 23:35:01', '2017-06-07 08:23:32'),
(1335, 'mJ8sYhhVHr8qtHHZE7170506065357', 'puput', '081252420590', 'puputtiwi86@gmail.com', 1, '2017-05-05 23:53:57', '2017-06-07 08:23:32'),
(1336, 'FOBOyEHHruWv9MoRIX170506074340', 'tia', '081235197634', 'tyanadine55@gmail.com', 1, '2017-05-06 00:43:40', '2017-06-07 08:23:32'),
(1337, '3AvpWPZtocNnT1Afrk170506075603', 'Rhamawaty', '081231445611', 'irarhamawaty@gmail.com', 1, '2017-05-06 00:56:03', '2017-06-07 08:23:32'),
(1338, 'WMjgAHSH2glCrM4O3U170506081729', 'Eka Susandari', '08563428863', 'Ekasusandari.es@gmail.com', 1, '2017-05-06 01:17:29', '2017-06-07 08:23:32'),
(1339, '5F3Fmjfu6qTXGW3QgB170506081921', 'Liya Dewi', '085330253725', 'dewiapriliak@gmail.com', 1, '2017-05-06 01:19:21', '2017-06-07 08:23:32'),
(1340, 'cXkkdL7lRuUa3wtNPn170506082042', 'Liya Dewi', '085324354728', 'dewiapriliak@gmail.com', 1, '2017-05-06 01:20:42', '2017-06-07 08:23:32'),
(1341, 'Zn3B3O3GB66lAfG4ZR170506101148', 'nyta', '085334023145', 'andreanyta@gmail.com', 1, '2017-05-06 03:11:48', '2017-06-07 08:23:32'),
(1342, 'H4YQISzvlBYnXeyREK170506102705', 'Anita Rahmasari', '081332034250', 'nietha.sari86@gmail.com', 1, '2017-05-06 03:27:05', '2017-06-07 08:23:32'),
(1343, 'EsdeunPPk8kzSHxEzv170506112412', 'yusidha fitri', '081615115090', 'you_see78@yahoo.com', 1, '2017-05-06 04:24:12', '2017-06-07 08:23:32'),
(1344, 'efsJfEkhu2MkpjZZyc170506120532', 'Fitri', '085730039009', 'alkayyis.tech@gmail.com', 1, '2017-05-06 05:05:32', '2017-06-07 08:23:32'),
(1345, 'aUoKegqPVZHViRr30E170506120711', 'mellyana', '85790200125', 'melly.ana22@yahoo.com', 1, '2017-05-06 05:07:11', '2017-06-07 08:23:32'),
(1346, 'jWM4j9xgYdJkStgNNz170506121042', 'fitri', '085730039009', 'alkayyis.tech@gmail.com', 1, '2017-05-06 05:10:42', '2017-06-07 08:23:32'),
(1347, '0sUFZycFtNsB7qscOv170506125713', 'Laila Nisviyah', '085706099910', 'afafarah@gmail.com', 1, '2017-05-06 05:57:13', '2017-06-07 08:23:32'),
(1348, 'GahIUY020ovIqamUvR170506015651', 'Shinta', '081337865232', 'Yashintavirma@yahoo.co.id', 1, '2017-05-06 06:56:51', '2017-06-07 08:23:32'),
(1349, 'yJX83oQkdok8DHhNlG170506032554', 'Ayu', '085733900086', 'mrs.putranto53@yahoo.co.id', 1, '2017-05-06 08:25:54', '2017-06-07 08:23:32'),
(1350, '0EbGQ7UqaShjDVhD3C170506033031', 'Diana', '085748006612', 'kirannaja03@gmail.com', 1, '2017-05-06 08:30:31', '2017-06-07 08:23:32'),
(1351, '2NoG1qlq0xW7nu1s7H170506033726', 'Nana', '081284620080', 'Nanayahya_09@yahoo.com', 1, '2017-05-06 08:37:26', '2017-06-07 08:23:32'),
(1352, 'iDv4Qg57XLcEMxzrXV170506044121', 'Citra Mhersanti', '8121786765', 'cacarez24@gmail.com', 1, '2017-05-06 09:41:21', '2017-06-07 08:23:32'),
(1353, 'F1eYWhyl6A16jZKTWp170506062303', 'Yusdita ', '081234113994', 'yusditamareta@gmail.com', 1, '2017-05-06 11:23:03', '2017-06-07 08:23:32'),
(1354, 'o8PeQtYrYPnpf1BzaH170506062347', 'Yusdita mareta', '081234113994', 'yusditamareta@gmail.com', 1, '2017-05-06 11:23:47', '2017-06-07 08:23:32'),
(1355, 'SlUqJ8BexuD5MvQFxO170506071739', 'Ilmiah Oktavia', '082299222793', 'shafurahzuhda93@gmail.com', 1, '2017-05-06 12:17:39', '2017-06-07 08:23:32'),
(1356, 'sFixwfhx8wqEgZ8RXA170506072716', 'Ayin', '087854330789', 'ayindp@gmail.com', 1, '2017-05-06 12:27:16', '2017-06-07 08:23:32'),
(1357, 'oIqpNjaYF1JgpeLnrS170506083412', 'caca', '081615387722', 'xxcacaxx@rocketmail.com', 1, '2017-05-06 13:34:12', '2017-06-07 08:23:32'),
(1358, '4Oybk6GBCF4rKgYe3r170506083757', 'Deni Purwanti', '083849192880', 'purwantideni0212@gmail.com', 1, '2017-05-06 13:37:57', '2017-06-07 08:23:32'),
(1359, '97CBQd5wuf2bT9VNaV170506085046', 'Dwithree Desfajerin', '081330555630', 'dwithree.dd@gmail.com', 1, '2017-05-06 13:50:46', '2017-06-07 08:23:32'),
(1360, 'fCbFmfORHjdaWm3Tis170506090341', 'Diana', '085749394494', 'diana.zee@yahoo.com', 1, '2017-05-06 14:03:41', '2017-06-07 08:23:32'),
(1361, 'oW4oe0apTZLJpCmJFw170506092157', 'Deassy', '08155069515', 'deeaci@yahoo.com', 1, '2017-05-06 14:21:57', '2017-06-07 08:23:32'),
(1362, 'bCQRm2jPlJRxbT4QTZ170506095837', 'Lilis Nihayah', '(+62) 85731919793', 'llilisnihaya@yahoo.com', 1, '2017-05-06 14:58:37', '2017-06-07 08:23:32'),
(1363, 'VSdlqCvNfNUy5eqcOp170506095928', 'Lilis Nihayah', '(+62) 85731919793', 'llilisnihaya@yahoo.com', 1, '2017-05-06 14:59:28', '2017-06-07 08:23:32'),
(1364, 'KeMuFJ6mwWpYnvEUqV170506100010', 'Lilis Nihayah', '(+62) 85731919793', 'llilisnihaya@yahoo.com', 1, '2017-05-06 15:00:10', '2017-06-07 08:23:32'),
(1365, 'xMNHUODLVJar4lWREq170506102403', 'Tika', '82245036568', 'kartika.lestari0101@gmail.com', 1, '2017-05-06 15:24:03', '2017-06-07 08:23:32'),
(1366, 'E3JG1bucV8glctGBot170506113640', 'Diyas', '083856548433', 'Diyastuti0904@gmail.com', 1, '2017-05-06 16:36:40', '2017-06-07 08:23:32'),
(1367, '5xPU64gkxAO7d7CQmq170507015942', 'Veve candra', '085606660822', 'nistianoviani@icloud.com', 1, '2017-05-06 18:59:42', '2017-06-07 08:23:32'),
(1368, 'ITERUNQhmNWEFxDeQQ170507052457', 'martha', '085707280798', 'martha.suryarini@yahoo.co.id', 1, '2017-05-06 22:24:57', '2017-06-07 08:23:32'),
(1369, 'LppBdl77Aez0jxJQzr170507061728', 'Sari', '081232912006', 'Sarisaningrum@gmail.com', 1, '2017-05-06 23:17:28', '2017-06-07 08:23:32'),
(1370, 'ImchDOUpRXpKg0kKU5170507064027', 'Nuryuni', '085852482058', 'noeryoeni@gmail.com', 1, '2017-05-06 23:40:27', '2017-06-07 08:23:32'),
(1371, 'xE30S4vixshdNivMAA170507065032', 'Anggi', '085646408258', 'anggrian.yulventia@gmail.com', 1, '2017-05-06 23:50:32', '2017-06-07 08:23:32'),
(1372, 'K7rjJHVvADGgUehPbY170507071111', 'Ayunda', '083831516188', 'ayundadinihari@gmail.com', 1, '2017-05-07 00:11:11', '2017-06-07 08:23:32'),
(1373, 'dFZhACVMOC0MWxIbOY170507074036', 'Agnis', '085730503414', 'Agnis.neen@gmail.com', 1, '2017-05-07 00:40:36', '2017-06-07 08:23:32'),
(1374, 'TrL2WDk8Xvmsb9oSvo170507090842', 'ine', '082140980104', 'putusaraswati84@gmail.com', 1, '2017-05-07 02:08:42', '2017-06-07 08:23:32'),
(1375, 'QVFkhiFWYWsUbBv1D3170507091054', 'Sintya Ardiani ', '081357440056', 'sintya.ardiani@gmail.com', 1, '2017-05-07 02:10:54', '2017-06-07 08:23:32'),
(1376, 'caA2ov4lBFIqDlf9Bz170507091702', 'Indah', '085895280602', 'indah.marine28@gmail.com', 1, '2017-05-07 02:17:02', '2017-06-07 08:23:32'),
(1377, 'xtomb2hyaWvZX7ZuuU170507102403', 'Yuly', '085755747700', 'yulyrestyva89@gmail.com', 1, '2017-05-07 03:24:03', '2017-06-07 08:23:32'),
(1378, '0RWIp6Y3N0EW7qW0ky170507102443', 'Rahmawati wahyuningsih', '085854221845', 'rahmawati.wahyuningsih80@gmail.com', 1, '2017-05-07 03:24:43', '2017-06-07 08:23:32'),
(1379, 'HSMvc39yMj1NNBBAkX170507113355', 'Kartika', '085655463107', 'anggrahingtyas@gmail.com', 1, '2017-05-07 04:33:55', '2017-06-07 08:23:32'),
(1380, '83l4YthU7YQRzexpK1170507115842', 'mala', '085648079200', 'malahayuningrat@gmail.com', 1, '2017-05-07 04:58:42', '2017-06-07 08:23:32'),
(1381, '5OvGOEylYI7rDMuxgZ170507123841', 'iva', '085648159798', 'ivanurchorisa@gmail.com', 1, '2017-05-07 05:38:41', '2017-06-07 08:23:32'),
(1382, 'fzHSZCSG4RFH0kJzip170507013352', 'Arry dwi anugrah ', '082338577339', 'Arrylisty@gmail.com', 1, '2017-05-07 06:33:52', '2017-06-07 08:23:32'),
(1383, 'UvFCqwAik1CPQgRAC5170507025406', 'Peny Handoko', '08563013721', 'pny.hanh@gmail.com', 1, '2017-05-07 07:54:06', '2017-06-07 08:23:32'),
(1384, 'RCQ96gWinMJ2lSKU4g170507030855', 'irdaemy', '0895332030238', 'irdaemy@gmail.com', 1, '2017-05-07 08:08:55', '2017-06-07 08:23:32'),
(1385, 'gqmxr7saQY6SxdMEr2170507032108', 'Kiky meylina', '082122742415', 'kiky.meylina16@gmail.com', 1, '2017-05-07 08:21:08', '2017-06-07 08:23:32'),
(1386, 'Qn5EwvGMdhEnMhB4QA170507033520', 'Kiky Meylina', '082122742415', 'kiky.meylina16@gmail.com', 1, '2017-05-07 08:35:20', '2017-06-07 08:23:32'),
(1387, 'Qyutv0S6VrgKxNBEoR170507043524', 'Ake', '0895600283828', 'ake.meithia@yahoo.com', 1, '2017-05-07 09:35:24', '2017-06-07 08:23:32'),
(1388, 'RmQGyCGm99Z2ma4RBr170507044947', 'Annie', '082245263942', 'aninuraini03@gmail.com', 1, '2017-05-07 09:49:47', '2017-06-07 08:23:32'),
(1389, 'D4gogmONwciRdoMyzT170507045520', 'Indira Winda Patria', '08179604842', 'namakuindira@gmail.com', 1, '2017-05-07 09:55:20', '2017-06-07 08:23:32'),
(1390, 'eMCS0N9D2LRDBG7FKW170507050409', 'Rurin amiranti', '08113222281', 'rurin_amiranti@yahoo.com', 1, '2017-05-07 10:04:09', '2017-06-07 08:23:32'),
(1391, 'LgAQOXiaaY3UeKRztr170507061921', 'Dia Kurnia', '085648365681', 'dia.kurnia.pgsd.10@gmail.com', 1, '2017-05-07 11:19:21', '2017-06-07 08:23:32'),
(1392, 'xQfFWl9nDdIMuTsqkh170507070334', 'ressy', '081231823151', 'ressy.mardiyanti@gmail.com', 1, '2017-05-07 12:03:34', '2017-06-07 08:23:32'),
(1393, 'VzNVVCpPlSTZJboG9h170507075103', 'Mistah ria', '081252875572', 'riandut76@gmail.com', 1, '2017-05-07 12:51:03', '2017-06-07 08:23:32'),
(1394, 'kU9iCF5AAM23hl2Ac3170507075536', 'Mistah ria', '081252875572', 'riandut76@gmail.com', 1, '2017-05-07 12:55:36', '2017-06-07 08:23:32'),
(1395, 's1KBVanbVc2j1m3r0k170507094624', 'Amahdha', '081230772371', 'amahdha_dewi@yahoo.com', 1, '2017-05-07 14:46:24', '2017-06-07 08:23:32'),
(1396, 'tWehMEYy2J2fvbWeP6170507115058', 'Wulan', '081703122226', 'sriwulandari2704@gmail.com', 1, '2017-05-07 16:50:58', '2017-06-07 08:23:32'),
(1397, 'Gzrc6fJPEqNRFV95Ks170508125843', 'ragil putri rahayu', '08113177095', 'ragilputrirahayu@gmail.com', 1, '2017-05-07 17:58:43', '2017-06-07 08:23:32'),
(1398, 'ZuZt02hrqUHEheePzb170508051055', 'Renny', '081333459805', 'Nbila5903@gmail.com', 1, '2017-05-07 22:10:55', '2017-06-07 08:23:32'),
(1399, 'iFrixPKdwKUs6q4dR4170508053659', 'Mardiana', '085652018855', 'Mardianaatmojo693@gmail.com', 1, '2017-05-07 22:36:59', '2017-06-07 08:23:32'),
(1400, 'MhljZtar3KkXUPyce0170508075307', 'Fitriah', '081230385496', 'Fitriah18@gmail.com', 1, '2017-05-08 00:53:07', '2017-06-07 08:23:32'),
(1401, 'spMP9HtKVrM3vmPaIj170508080128', 'lesty arini', '085730645964', 'lestyarini.85@gmail.com', 1, '2017-05-08 01:01:28', '2017-06-07 08:23:32'),
(1402, 'V0gMX3YdHqErwwSM48170508083052', 'Muchamad wahyu hidayat', '089604243938', 'wahyuhidayat600@gmail.com', 1, '2017-05-08 01:30:52', '2017-06-07 08:23:32'),
(1403, 'JnTzPD5KnYcrqjZEgj170508103615', 'Milda', '087852605595', 'Mildoremifasolasido@gmail.com', 1, '2017-05-08 03:36:15', '2017-06-07 08:23:32');
INSERT INTO `download_pricelist` (`id`, `token`, `name`, `phone`, `email`, `readed`, `created_at`, `updated_at`) VALUES
(1404, 'TNRcW8F62i88wadjGD170508103734', 'Milda', '087852605595', 'Mildoremifasolasido@gmail.com', 1, '2017-05-08 03:37:34', '2017-06-07 08:23:32'),
(1405, 'KI03epKxIM02m9hdxB170508103826', 'erlien susilowati', '081252404032', 'erlien_susilowati@gmail.com', 1, '2017-05-08 03:38:26', '2017-06-07 08:23:32'),
(1406, 'GM818GAc0W24w4eswE170508113603', 'nurul faizah', '085730438124', 'faizah.nurul98@yahoo.co.id', 1, '2017-05-08 04:36:03', '2017-06-07 08:23:32'),
(1407, 'L2qcKqPWvyo6QhW2qU170508113743', 'Essa Regita Deniswari', '081333563375', 'essaregitta@gmail.com', 1, '2017-05-08 04:37:43', '2017-06-07 08:23:32'),
(1408, 'ShjcOD8Kt3fOI6xdZM170508114249', 'HENNY', '081334662039', 'hennymustikas@gmail.com', 1, '2017-05-08 04:42:49', '2017-06-07 08:23:32'),
(1409, 'z6kkN51i72HcDfkc1i170508114427', 'Erni susanti', '083830993228', 'Erni1254@gmail.com', 1, '2017-05-08 04:44:27', '2017-06-07 08:23:32'),
(1410, 'ytvG3P7C06oGYTVsNe170508114541', 'Erni susanti', '083830993228', 'Erni1254@gmail.com', 1, '2017-05-08 04:45:41', '2017-06-07 08:23:32'),
(1411, 'QwauTXY4NHnRCXzRER170508115757', 'Tri Retno', '082244441646', 'tri.retno.astuti@gmail.com', 1, '2017-05-08 04:57:57', '2017-06-07 08:23:32'),
(1412, 'ftY7e74a0qMa4vt2I1170508121132', 'riza', '083832724832', 'rizaalfina@gmail.com', 1, '2017-05-08 05:11:32', '2017-06-07 08:23:32'),
(1413, 'TS7s1YhFFP9Ceyf3NG170508121923', 'Dinik', '085730035557', 'dinik144@gmail.com', 1, '2017-05-08 05:19:23', '2017-06-07 08:23:32'),
(1414, 'YufgtxlEOzmF6PsdOx170508122459', 'Syifa', '081234544919', 'Syifasyarifah92@gmail.com', 1, '2017-05-08 05:24:59', '2017-06-07 08:23:32'),
(1415, 'mObWLoF2i3IddfXgaa170508011147', 'Evi', '081334234888', 'Dienshakila@gmail.com', 1, '2017-05-08 06:11:47', '2017-06-07 08:23:32'),
(1416, 'eAtxxS0LCFrS7g50y4170508012958', 'Erlisa dewi mayangsari', '081230628099', 'erlisadewi@gmail.com', 1, '2017-05-08 06:29:58', '2017-06-07 08:23:32'),
(1417, 'Vc6D3RSbO16YekeH1S170508024620', 'Dewi Nuraini Rahmiasasi', '0317405393', 'kaosae94@gmail.com', 1, '2017-05-08 07:46:20', '2017-06-07 08:23:32'),
(1418, 'w4tvOJULIszmw6k1I9170508031946', 'Noerma Rosalina', '085746407999', 'rnoerma@yahoo.com', 1, '2017-05-08 08:19:46', '2017-06-07 08:23:32'),
(1419, '8klwr8vvBqQPjKU0t2170508032624', 'Jumiati', '081252354030', 'Caprimee@yahoo.com', 1, '2017-05-08 08:26:24', '2017-06-07 08:23:32'),
(1420, 'RfHmYfDcnnklDxQEUw170508043341', 'Feilan noviana ', '082234332729 ', 'bleknoranye@gmail.com', 1, '2017-05-08 09:33:41', '2017-06-07 08:23:32'),
(1421, '7CAMvw4RqHdhzrtbRM170508054916', 'Deska', '085694997668', 'deskanita@gmail.com', 1, '2017-05-08 10:49:16', '2017-06-07 08:23:32'),
(1422, 'VzlA5xR8gtclqzbcoP170508055250', 'Chintami', '081217444656', 'chintamidinda27@gmail.com', 1, '2017-05-08 10:52:50', '2017-06-07 08:23:32'),
(1423, 'jJf40tQWFaJ5V4pbL7170508060635', 'Fitrilia', '0816511432', 'Lyean_K@yahoo.com', 1, '2017-05-08 11:06:35', '2017-06-07 08:23:32'),
(1424, 'cPFjqw4nL4vqoPpfgU170508065815', 'Yeni', '085852123222', 'Ayankamf@gmail.com', 1, '2017-05-08 11:58:15', '2017-06-07 08:23:32'),
(1425, 'K2Rqjpe28axe6bP1ma170508070538', 'triana', '081217212978', 'tria_fazzahra@yahoo.com', 1, '2017-05-08 12:05:38', '2017-06-07 08:23:32'),
(1426, '5oV5ImIOclw7RNrwyw170508071024', 'Elly normawati', '081330009292', 'elly_normawati86@yahoo.com', 1, '2017-05-08 12:10:24', '2017-06-07 08:23:32'),
(1427, '8jIk2Egc6FvbAHdcIn170508072201', 'Isti Erawati', '081357436226', 'istierawati@gmail.com', 1, '2017-05-08 12:22:01', '2017-06-07 08:23:32'),
(1428, 'k204VD760vW79UxoDE170508080322', 'Kiky', '085645685723', 'rizkynurulmananti@gmail.com', 1, '2017-05-08 13:03:22', '2017-06-07 08:23:32'),
(1429, 'Jb1Z8Zsf56W21Bn9GS170508091722', 'Fitri', '08123249121', 'fitri.fahrudi@gmail.com', 1, '2017-05-08 14:17:22', '2017-06-07 08:23:32'),
(1430, 'kdIOX1RtcxcoNeDO4I170508093057', 'Ardiyanti', '081233682888', 'zerocomp4@gmail.com', 1, '2017-05-08 14:30:57', '2017-06-07 08:23:32'),
(1431, '6KQBoWTU9auyBOUOFs170508100503', 'Ratna Kristiningrum ', '082141304042', 'paquita.salsa@gmail.com', 1, '2017-05-08 15:05:03', '2017-06-07 08:23:32'),
(1432, 'dlo3QDiMD454BVeInY170508100522', 'Titis', '085733184346', 'ummuzaidanalkhoir@gmail.com', 1, '2017-05-08 15:05:22', '2017-06-07 08:23:32'),
(1433, 'sDRRZ56j1IQ2ARGjzu170508100700', 'Titis', '085733184346', 'ummuzaidanalkhoir@gmail.com', 1, '2017-05-08 15:07:00', '2017-06-07 08:23:32'),
(1434, 'Htj5fS2UyEHjS9oNEq170508101850', 'indri diyah', '082141130227', 'diyah.in@gmail.com', 1, '2017-05-08 15:18:50', '2017-06-07 08:23:32'),
(1435, 'adXkmrld0vu4HIiklH170508103942', 'Titin', '087806647607', 'Titinnadyawardhani@yahoo.com', 1, '2017-05-08 15:39:42', '2017-06-07 08:23:32'),
(1436, 'bdj8a1DN5Kg43OexYm170508110704', 'Mila', '081335533788', 'mila_dblm@yahoo.com', 1, '2017-05-08 16:07:04', '2017-06-07 08:23:32'),
(1437, 'CMX3aXRP6bz7S6LMxj170509050639', 'Ika S. Harumi', '081232357738', 'Ika_harumi@yahoo.com', 1, '2017-05-08 22:06:39', '2017-06-07 08:23:32'),
(1438, 'CY62DlNJiamYiZ8UaV170509052301', 'rini', '081216378875', 'rini98@gmail.com', 1, '2017-05-08 22:23:01', '2017-06-07 08:23:32'),
(1439, 'sWE4YjjtQr5GgKMgMB170509054138', 'Tuty Sugiarti', '085648844464', 'twotex_libragirl@yahoo.co.id', 1, '2017-05-08 22:41:38', '2017-06-07 08:23:32'),
(1440, 'ldn4LyuoXSaj0HmMKd170509065521', 'Heni', '085748793794', 'henikartika13@gmail.com', 1, '2017-05-08 23:55:21', '2017-06-07 08:23:32'),
(1441, 're8E0sS3vypzNeArMp170509072406', 'Rohama', '083854473711', 'Rochama99@gmail.Com', 1, '2017-05-09 00:24:06', '2017-06-07 08:23:32'),
(1442, 'q9K7CelDV18menl9zM170509074841', 'ruriyati', '081322683402', 'rurie_yati@ymail.com', 1, '2017-05-09 00:48:41', '2017-06-07 08:23:32'),
(1443, 'trnHP0hmAZMdspFUCk170509084712', 'Hanin', '082213888678', 'hanin.palawani@gmail.com', 1, '2017-05-09 01:47:12', '2017-06-07 08:23:32'),
(1444, '7YDlvaVRWFXw3umjEG170509092351', 'rohmadona', '082243439861', 'rohmadona@gmail.com', 1, '2017-05-09 02:23:51', '2017-06-07 08:23:32'),
(1445, 'GIB1BULBJsMPXnJADd170509100734', 'Eni Wijayanti', '082244228637', 'queenbee.ew@gmail.com', 1, '2017-05-09 03:07:34', '2017-06-07 08:23:32'),
(1446, 'i37G5WzHUMRbWSu8bS170509102317', 'tri rahayu*', '085748416489*', 'yedrayeye@yahoo.co.id', 1, '2017-05-09 03:23:17', '2017-06-07 08:23:32'),
(1447, 'tTu6T6LVAGdLFgxkeR170509103314', 'Frida Anggraeni', '85815634598', 'Fridawibowo@gmail.com', 1, '2017-05-09 03:33:14', '2017-06-07 08:23:32'),
(1448, 'jxDues2u70cp671llo170509125954', 'Qonita', '085697971771', 'Qonita1711@gmail.com', 1, '2017-05-09 05:59:54', '2017-06-07 08:23:32'),
(1449, 'G8haY3rkw7N1IDokDQ170509010237', 'Aris jelita', '087854387807', 'Aresjelita@gmail.com', 1, '2017-05-09 06:02:37', '2017-06-07 08:23:32'),
(1450, 'vy0GD2Z0PZasmezfMZ170509015736', 'Amel', '0318470237', 'Ameliadanazis@gmail.com', 1, '2017-05-09 06:57:36', '2017-06-07 08:23:32'),
(1451, '1Y99GM3eaW6kEFNz6E170509015842', 'Amel', '0318470237', 'Ameliadanazis@gmail.com', 1, '2017-05-09 06:58:42', '2017-06-07 08:23:32'),
(1452, 'whOplHIMYJBhbTd0Ip170509020242', 'amel', '0318470237', 'ameliadanazis@gmail.com', 1, '2017-05-09 07:02:42', '2017-06-07 08:23:32'),
(1453, '7hH7xEzFNUvVEWrreA170509020605', 'Sari', '081287357784', 'Sitisarifah100@gmail.com', 1, '2017-05-09 07:06:05', '2017-06-07 08:23:32'),
(1454, 'j9iJDJpn5HUMlzqFJY170509024542', 'lica', '081333011306', 'acil_ms@yahoo.com', 1, '2017-05-09 07:45:42', '2017-06-07 08:23:32'),
(1455, 'KL54oWAgjh6eENo2Oh170509024714', 'maria lismawati', '085648336677', 'marialisma@gmail.com', 1, '2017-05-09 07:47:14', '2017-06-07 08:23:32'),
(1456, '158SQYwN73vsgTLhNs170509024805', 'Nana', '08973163544', 'nana555queen@yahoo.com', 1, '2017-05-09 07:48:05', '2017-06-07 08:23:32'),
(1457, 'ZAjOudElhQskaMaN1G170509033443', 'IDA', '081216268077', 'farida.nazeee@gmail.com', 1, '2017-05-09 08:34:43', '2017-06-07 08:23:32'),
(1458, 'etozOahlwtaUw7YEAt170509042021', 'Alfa Novita', '081333742028', 'alphanovita1@gmail.com', 1, '2017-05-09 09:20:21', '2017-06-07 08:23:32'),
(1459, 'OBPLU8ejg7ZnreJJyH170509045647', 'Fitri', '08567341866', 'Mahfudz.amri@gmail.com', 1, '2017-05-09 09:56:47', '2017-06-07 08:23:32'),
(1460, 'vlIJ9b6rF9xEKOVZXc170509052220', 'wuri wijayanti', '081234510432', 'wuri.panca@gmail.com', 1, '2017-05-09 10:22:20', '2017-06-07 08:23:32'),
(1461, 'chJBwainUhdviNLpFv170509055110', 'lestari', '087853377357', 'bungatimur@yahoo.co.id', 1, '2017-05-09 10:51:10', '2017-06-07 08:23:32'),
(1462, '0a6q0hUjZQxW03rr9v170509060228', 'Desi', '081217741514', 'Desisumarsihdesi79102@gmail.com', 1, '2017-05-09 11:02:28', '2017-06-07 08:23:32'),
(1463, 'KNBqYBRQeYWOw3V4Q3170509063149', 'Risty', '082113189323', 'dewieristy9064@gmail.com', 1, '2017-05-09 11:31:49', '2017-06-07 08:23:32'),
(1464, 'izJRouxWndRF52gZ8W170509064235', 'Desty Maulina Pasaribu', '0818580993', 'desty.maulina@gmail.com', 1, '2017-05-09 11:42:35', '2017-06-07 08:23:32'),
(1465, 'FgyhT9n9bPND0AMQTV170509084508', 'Resti', '081331932393', 'reztydiana88@gmail.com', 1, '2017-05-09 13:45:08', '2017-06-07 08:23:32'),
(1466, 'x7IcmnoWuSbL367QdB170509090103', 'Renata', '08123272145', 'Renatachantics@gmail.com', 1, '2017-05-09 14:01:03', '2017-06-07 08:23:32'),
(1467, 'jJ7bNAlNWO5dNEsumd170509093144', 'Putri Rahayu', '081217852450', 'sinonaputri@gmail.com', 1, '2017-05-09 14:31:44', '2017-06-07 08:23:32'),
(1468, 'vzUcYiqwIfSR9nE7E3170509103246', 'indrie', '085649536029', 'indriehuunyez@yahoo.com', 1, '2017-05-09 15:32:46', '2017-06-07 08:23:32'),
(1469, 'kphZvf5oWtk178XrU6170510054039', 'Nunung rohayati', '081358444065', 'Nunungrohayati@gmail.com', 1, '2017-05-09 22:40:39', '2017-06-07 08:23:32'),
(1470, 'R7zlJn9Y6aBavp1X4u170510054915', 'Furi rochmawati', '081377341774', 'furi2015.fb@gmail.com', 1, '2017-05-09 22:49:15', '2017-06-07 08:23:32'),
(1471, 'JtzXauAhwt6anoCqvJ170510070152', 'Rere', '081332978811', 'degedebug@gmail.com', 1, '2017-05-10 00:01:52', '2017-06-07 08:23:32'),
(1472, 'bHWwHySObQuPYwyIBE170510072125', 'Kanti noviani', '082213646302', 'Kanthiovi@yahoo.co.id', 1, '2017-05-10 00:21:25', '2017-06-07 08:23:32'),
(1473, '2ANw8zEpVuYyX74HMx170510073320', 'Adhania', '085646013468', 'Adhania.nio@gmail.com', 1, '2017-05-10 00:33:20', '2017-06-07 08:23:32'),
(1474, 'dPudLpk5rP7Egb3UDS170510073603', 'Rina', '082244728777 ', 'rniero03@gmail.com', 1, '2017-05-10 00:36:03', '2017-06-07 08:23:32'),
(1475, 'CsJTpC06nTuhNCYuKu170510080244', 'Kennie', '+62818522595', 'Kennieweatherly@gmail.com', 1, '2017-05-10 01:02:44', '2017-06-07 08:23:32'),
(1476, 'jhv2FcRDL5FkRB1FEa170510083642', 'kikikartika333@gmail.com', '085648235753', 'kikikartika333@gmail.com', 1, '2017-05-10 01:36:42', '2017-06-07 08:23:32'),
(1477, '6NnK1FWVrURkO8AHgw170510083918', 'dea riasita', '082139666640', 'deaspul@gmail.com', 1, '2017-05-10 01:39:18', '2017-06-07 08:23:32'),
(1478, 'u6YNIcUWciOrJFibUU170510085107', 'Alfia', '089612485390', 'Aayurohmayanti@gmail.com', 1, '2017-05-10 01:51:07', '2017-06-07 08:23:32'),
(1479, 'UkuGfuLUF4VhQdf1kG170510091557', 'rosfiana', '082337195195', 'rosfianamuslicha@gmail.com', 1, '2017-05-10 02:15:57', '2017-06-07 08:23:32'),
(1480, '2xvGi7dzK9FtkYm4Tg170510092019', 'Dinar Ayu', '085645757589', 'dinarayu89@gmail.com', 1, '2017-05-10 02:20:19', '2017-06-07 08:23:32'),
(1481, 'qYkbXrpkFmh18lGRee170510094709', 'Rita martini', '081232561441', 'rieta.martini@gmail.com', 1, '2017-05-10 02:47:09', '2017-06-07 08:23:32'),
(1482, 'BQTriwoFkqVySCXF3L170510095710', 'dewi arimpi', '085707035400', 'dewiarimpi84@gmail.com', 1, '2017-05-10 02:57:10', '2017-06-07 08:23:32'),
(1483, 'emBhXBfCkuBz2AN9RD170510100113', 'fitriana', '089675957689', 'alishakhairawilda113@gmail.com', 1, '2017-05-10 03:01:13', '2017-06-07 08:23:32'),
(1484, '9RegzBdG2vp1CNpM22170510100750', 'Siti masruroh', '082114737741', 'Lyon.fashionshop@gmail.com', 1, '2017-05-10 03:07:50', '2017-06-07 08:23:32'),
(1485, 'wNXrbxlmONnpBUjLfd170510102342', 'Eka Puspitasari ', '085758852520 ', 'ekapuspitasari0808@yahoo.com', 1, '2017-05-10 03:23:42', '2017-06-07 08:23:32'),
(1486, 'AwunT1ybIi2izVlYJt170510102423', 'Eka Puspitasari ', '085758852520', 'ekapuspitasari0808@yahoo.com', 1, '2017-05-10 03:24:23', '2017-06-07 08:23:32'),
(1487, 'RFr3yroaBJT0y1wouH170510104247', 'Aisyah novfitri', '082333754040', 'aisyahnovf@gmail.com', 1, '2017-05-10 03:42:47', '2017-06-07 08:23:32'),
(1488, 'herhZXZNRGpbH175Jf170510104334', 'dwi', '081217687875', 'narameka_1806@yahoo.com', 1, '2017-05-10 03:43:34', '2017-06-07 08:23:32'),
(1489, 'R1oOMWbse7WR1FhLyS170510110516', 'Wahyu Eka Abdiningtyas', '081259593954', 'Wahyuekaabdiningtyas@gmail.com', 1, '2017-05-10 04:05:16', '2017-06-07 08:23:32'),
(1490, 'KSQJ88pG01u7jFTRVY170510113005', 'Ruffina', '08984392285', 'ruffina2503@gmail.com', 1, '2017-05-10 04:30:05', '2017-06-07 08:23:32'),
(1491, 'l3MLU0I4kZGtvXM21h170510113844', 'Diyah', '081330036166', 'Dheeputry@gmail.com', 1, '2017-05-10 04:38:44', '2017-06-07 08:23:32'),
(1492, 'YKJYaLkw4GkWxiObGz170510120432', 'Noviarta Rachma Putri', '081335317448', 'putriliftco@gmail.com', 1, '2017-05-10 05:04:32', '2017-06-07 08:23:32'),
(1493, 'rs5iBDYdj8IZreC2xo170510121420', 'Gusti Noor Nisrina Khairia', '085791231993', 'Gustinisrina@gmail.com', 1, '2017-05-10 05:14:20', '2017-06-07 08:23:32'),
(1494, 'aYhLaRhalhGPJg5TCl170510124529', 'Ulfie', '082257804888', 'Ulfiemanis@icloud.com', 1, '2017-05-10 05:45:29', '2017-06-07 08:23:32'),
(1495, 'QEORUtNs8JTVl485F2170510125857', 'Selvi ariesma', '081316276998', 'vida_ariefa@gmail.com', 1, '2017-05-10 05:58:57', '2017-06-07 08:23:32'),
(1496, 'rVt3X5E1wpLq0Z5Y3O170510012042', 'Eka Kurnianingsih', '085655647887', 'eka.kurni@gmail.com', 1, '2017-05-10 06:20:42', '2017-06-07 08:23:32'),
(1497, '07dNkWMm8RdclwJMpq170510012903', 'KHOIRIYAH NOVIASTUTI', '085648866812', 'khoiriyahnoviastuti_11@yahoo.com', 1, '2017-05-10 06:29:03', '2017-06-07 08:23:32'),
(1498, 'wjoaY3LU0miIKjE6OR170510013331', 'Wieda Arum Puspitasari', '081336630528', 'Qwcayankdy@yahoo.com', 1, '2017-05-10 06:33:31', '2017-06-07 08:23:32'),
(1499, 'l8UyRU3RnnGHpnQVOS170510015919', 'Dwi Harsiwi', '0822-3486-0692', 'harsiwidwi@gmail.com', 1, '2017-05-10 06:59:19', '2017-06-07 08:23:32'),
(1500, 'WulMzzdUoBvXSFb9C1170510022008', 'zulfia', '085707079181', 'arifnizulfia@gmail.com', 1, '2017-05-10 07:20:08', '2017-06-07 08:23:32'),
(1501, 'rYxNNnBJ5yS4tqlMpg170510022818', 'NURUL HIDAYAH', '082174614922', 'nurulhidashafira@yahoo.co.id', 1, '2017-05-10 07:28:18', '2017-06-07 08:23:32'),
(1502, '55z9rWo0Vs2UgAJo8T170510023620', 'Anindita', '081331197822', 'aninditachamil@gmail.com', 1, '2017-05-10 07:36:20', '2017-06-07 08:23:32'),
(1503, '8yTI3bSCNQRMqCDP79170510030227', 'Risma', '085746461128', 'Kharismazaris@gmail.com', 1, '2017-05-10 08:02:27', '2017-06-07 08:23:32'),
(1504, 'mGxOCRe2JA4SMezJtF170510031754', 'kuntarti', '085850504255', 'kuntartisusanaindah@yahoo.com', 1, '2017-05-10 08:17:54', '2017-06-07 08:23:32'),
(1505, '3aAD7ZIgHIJ7f3fUgH170510035947', 'hildaikka', '089656802091', 'hildaikka@gmail.com', 1, '2017-05-10 08:59:47', '2017-06-07 08:23:32'),
(1506, 'rQGpQoYCIk6NZxCI9A170510043119', 'Dian Ekawati ', '08113339330', 'diandraekawati@yahoo.com', 1, '2017-05-10 09:31:19', '2017-06-07 08:23:32'),
(1507, 'uv79QfDSu9LYTkyuc7170510043423', 'Dian Ekawati ', '08113339330', 'diandraekawati@yahoo.com', 1, '2017-05-10 09:34:23', '2017-06-07 08:23:32'),
(1508, 'QwFirdbNmTkezgdWC8170510051637', 'khoirunnisa', '08123577700', 'nisa.psikologi2010@gmail.com', 1, '2017-05-10 10:16:37', '2017-06-07 08:23:32'),
(1509, 'hJjYqnfrOrizW9HADz170510075527', 'Erna', '083857972888', 'Jauharinia@gmail.com', 1, '2017-05-10 12:55:27', '2017-06-07 08:23:32'),
(1510, '6EwWXjWEieYJfQus30170510101610', 'Pratika ', '082244556024', 'fpratikayuni11@gmail.com', 1, '2017-05-10 15:16:10', '2017-06-07 08:23:32'),
(1511, 'C6mkKJaIe47f8fl9kr170510111739', 'Ela', '081235346178', 'Elachristy2015@yahoo.com', 1, '2017-05-10 16:17:39', '2017-06-07 08:23:32'),
(1512, 'YfTDFvZomLoYOxzXyD170511044903', 'Vanydia', '085648094748', 'vanydia.aisyah@gmail.com', 1, '2017-05-10 21:49:03', '2017-06-07 08:23:32'),
(1513, 'DaHCzMN3DdsYvqcflt170511070505', 'Aisyah', '+6281515100020', 'hilal.aisyah.aisyah@gmail.com', 1, '2017-05-11 00:05:05', '2017-06-07 08:23:32'),
(1514, 'Onj52NaDkY3dPh3DSy170511070902', 'iva', '08123020672', 'vayyash@gmail.com', 1, '2017-05-11 00:09:02', '2017-06-07 08:23:32'),
(1515, 'UGsKjR0rwOPUPit8dd170511080002', 'Suci', '081252621118', 'arum_dani86@yahoo.com', 1, '2017-05-11 01:00:02', '2017-06-07 08:23:32'),
(1516, 'RBWn3kmhzRahFVasAi170511080515', 'Septika', '081312032321', 'septikaekasari@yahoo.com', 1, '2017-05-11 01:05:15', '2017-06-07 08:23:32'),
(1517, '3vWkY0lVs2YpViyO62170511092905', 'Calvin', '085655176239', 'flare.blitz007@gmail.com', 1, '2017-05-11 02:29:05', '2017-06-07 08:23:32'),
(1518, 'h7NFEoFLgEQmX15sO9170511101528', 'Etty', '081331478479', 'ettyka83@gmail.com', 1, '2017-05-11 03:15:28', '2017-06-07 08:23:32'),
(1519, 'znoM0QdwP46Tq3w57b170511103135', 'Yunis', '081331015182', 'Yunis.pms@gmail.com', 1, '2017-05-11 03:31:35', '2017-06-07 08:23:32'),
(1520, 'XPlSeVsJheHMSu7S5s170511110539', 'Fitri', '081937101116', 'Fitri07tria.ft@gmail.com', 1, '2017-05-11 04:05:39', '2017-06-07 08:23:32'),
(1521, 'h3kPHnoeCmunuZgjS1170511113359', 'lutfiyah nur hidayanti', '087854777440', 'alif.azzam87@gmail.com', 1, '2017-05-11 04:33:59', '2017-06-07 08:23:32'),
(1522, 'mtUaC5V6DDYK6cqImz170511021008', 'retno palupi ', '08113526377', 'retno.suraeni@gmail.comI', 1, '2017-05-11 07:10:08', '2017-06-07 08:23:32'),
(1523, '8XxOisggNYWO4mK3wK170511021752', 'Tri indrawati', '08123406797', 'Ligatupperware09@gmail.com', 1, '2017-05-11 07:17:52', '2017-06-07 08:23:32'),
(1524, 'xpp9d17aYJJRTi102I170511022026', 'Tri indrawati', '081234067977', 'Ligatupperware09@gmail.com', 1, '2017-05-11 07:20:26', '2017-06-07 08:23:32'),
(1525, 'uJLhbQCc2s9U3zy0K9170511022738', 'Endita Ayu', '085748055572', 'julianadi16@gmail.com', 1, '2017-05-11 07:27:38', '2017-06-07 08:23:32'),
(1526, 'oS94GTEKDlzxi427dY170511025048', 'Farah', '08113497870', 'Fj.anwar12@gmail.com', 1, '2017-05-11 07:50:48', '2017-06-07 08:23:32'),
(1527, 'GOKkl2BbVRnTwuewUG170511025119', 'ana khorini', '085733840801', 'ana.khorini@gmail.com', 1, '2017-05-11 07:51:19', '2017-06-07 08:23:32'),
(1528, '7JBHy1Ne4ziCPZWBL3170511025140', 'Farah', '08113497870', 'Fj.anwar12@gmail.com', 1, '2017-05-11 07:51:40', '2017-06-07 08:23:32'),
(1529, 'iTC9bAvzHRDHbUop8A170511031727', 'lailatul', '085755622280', 'laila.gemini34@gmail.com', 1, '2017-05-11 08:17:27', '2017-06-07 08:23:32'),
(1530, '2FOoPniorJqq60wgDd170511032601', 'Aisyah', '+6281515100020', 'hilal.aisyah.aisyah@gmail.com', 1, '2017-05-11 08:26:01', '2017-06-07 08:23:32'),
(1531, 'GowOXY6j2nhMqDjKvk170511034025', 'jamilatul arofah', '085706763920', 'jamilaarofah812@gmail.com', 1, '2017-05-11 08:40:25', '2017-06-07 08:23:32'),
(1532, 'WvR8Z0Nc35wJB1HpYV170511041400', 'Reisty', '082244546354', 'Reisty.drocks@gmail.com', 1, '2017-05-11 09:14:00', '2017-06-07 08:23:32'),
(1533, 'EB2clAfSXJrHFudrKK170511050632', 'Hesty Yusnita', '082336290089', 'hesty06@icloud.com', 1, '2017-05-11 10:06:32', '2017-06-07 08:23:32'),
(1534, 'Y8EBU4hLEIcRAwaHhA170511052237', 'Azmil', '085655147911', 'mel_emiel31@yahoo.com', 1, '2017-05-11 10:22:37', '2017-06-07 08:23:32'),
(1535, 'CxVjecOODNwb5nEwho170511053042', 'Ita', '081235236756', 'itchue_classic@yahoo.com', 1, '2017-05-11 10:30:42', '2017-06-07 08:23:32'),
(1536, '9AlNBY848yREzxjF87170511053502', 'Desi', '087880500003', 'Desiakhmad5@gmail.com', 1, '2017-05-11 10:35:02', '2017-06-07 08:23:32'),
(1537, 'EeP78kj0GZod034Kzm170511071825', 'Dhani', '085777618388', 'Dhanidhun99@gmail.com', 1, '2017-05-11 12:18:25', '2017-06-07 08:23:32'),
(1538, 'qu1NU6ciopUznrcayO170511072736', 'Siti mariana', '081216648846', 'putraputri.pp610@gmail.com', 1, '2017-05-11 12:27:36', '2017-06-07 08:23:32'),
(1539, 'mbHImrZcsUDWQgEELk170511090228', 'yuli eka', '08213228323', 'uliekd@gmail.com', 1, '2017-05-11 14:02:28', '2017-06-07 08:23:32'),
(1540, 'Hdn1xYU7qkrQCTseDc170511094841', 'Nafisah', '08123266100', 'Nafisahbikaukabi@gmail.com', 1, '2017-05-11 14:48:41', '2017-06-07 08:23:32'),
(1541, 'sEVgVaCAPE0Mfbf1EU170511101724', 'Riska', '081331552520', 'reezskabanget@yahoo.com', 1, '2017-05-11 15:17:24', '2017-06-07 08:23:32'),
(1542, 'uo9LerKPLHJKMAIiUl170511112257', 'INDAH AMBARWATI', '081261299896', 'indahambar@gmail.com', 1, '2017-05-11 16:22:57', '2017-06-07 08:23:32'),
(1543, 'aAC5gWxWUYqKt2Nxpy170512010127', 'Aulia', '08124844488', 'Auliaabiyyu15@gmail.com', 1, '2017-05-11 18:01:27', '2017-06-07 08:23:32'),
(1544, 'EgupwZwFG1YmUqMGM6170512010240', 'Aulia', '08124844488', 'Auliaabiyyu15@gmail.com', 1, '2017-05-11 18:02:40', '2017-06-07 08:23:32'),
(1545, 'R2WTvOeDmvoZxmzLSQ170512041142', 'Candra widhiatni', '081230848808', 'candracdr18@gmail.com', 1, '2017-05-11 21:11:42', '2017-06-07 08:23:32'),
(1546, 'z3YEEZV7sughqAaCT9170512051810', 'Aisyah', '+6281515100020', 'hilal.aisyah.aisyah@gmail.com', 1, '2017-05-11 22:18:10', '2017-06-07 08:23:32'),
(1547, 'V9ujvyblDql2Xp9TNy170512061812', 'Sulaikah', '08563362661', 'sulaikahkurniawati@gmail.com', 1, '2017-05-11 23:18:12', '2017-06-07 08:23:32'),
(1548, 'TSoIVrXjlDd1K6LBUI170512075344', 'sinta', '082131969986', 'bestari_akp@yahoo.co.id', 1, '2017-05-12 00:53:44', '2017-06-07 08:23:32'),
(1549, 'GYkv4U5YDABkY28HaF170512075524', 'Nikma', '087752197699', 'Nicmadewean@gmail.com', 1, '2017-05-12 00:55:24', '2017-06-07 08:23:32'),
(1550, 'lE2k1GrdCPg4XoKdgf170512082351', 'eka windi', '085645678386', 'ekakoernia@gmail.com', 1, '2017-05-12 01:23:51', '2017-06-07 08:23:32'),
(1551, 'zWKCEVWOzVUyjr6LtW170512120408', 'Dias', '087859763000', 'diasnastiti@yahoo.co.id', 1, '2017-05-12 05:04:08', '2017-06-07 08:23:32'),
(1552, 'TFHrQrTbzJ8Hlt9eHY170512012423', 'Ana', '085733417759', 'Anna.89.sby@gmail.com', 1, '2017-05-12 06:24:23', '2017-06-07 08:23:32'),
(1553, 'LcVacDGN6rSaVW4Fuw170512020536', 'Shanty', '081217709023', 'Miss_izhoe@yahoo.com', 1, '2017-05-12 07:05:36', '2017-06-07 08:23:32'),
(1554, 'VWXgCEtr4jkoo3csP4170512023314', 'Safira', '081931089362', 'Safiranasar@gmail.com', 1, '2017-05-12 07:33:14', '2017-06-07 08:23:32'),
(1555, 'd0soc9Gvp05SIDbaLk170512023558', 'Ishlah', '082330521675', 'Ishlah.harra@yahoo.com', 1, '2017-05-12 07:35:58', '2017-06-07 08:23:32'),
(1556, 'yCEUKHo4FxUnSML117170512032002', 'Yenny', '08123369749', 'yennyrose@yahoo.com', 1, '2017-05-12 08:20:02', '2017-06-07 08:23:32'),
(1557, '2mrz7MsoIBinr6IL6R170512033130', 'Almira Tara Mahsa', '08883590322', 'almirataramahsa@gmail.com', 1, '2017-05-12 08:31:30', '2017-06-07 08:23:32'),
(1558, 'DSZYla49Np4AXYCcc7170512034719', 'Susy wijanarti', '081278514455', 'Susywi66@gmail.co.id', 1, '2017-05-12 08:47:19', '2017-06-07 08:23:32'),
(1559, 'ws2i4WxcdDomOpT2Zj170512035125', 'Susy wijanarti', '081278514455', 'Susywi66@gmail.co.id', 1, '2017-05-12 08:51:25', '2017-06-07 08:23:32'),
(1560, 'ZEUgg21cXX9tO2vZKj170512035222', 'Susy wijanarti', '081278514455', 'Susywi66@gmail.co.id', 1, '2017-05-12 08:52:22', '2017-06-07 08:23:32'),
(1561, 'Ko4Dpubzx4t7U7gXhB170512035526', 'Rahma', '089685890451', 'rahmasis35@gmail.com', 1, '2017-05-12 08:55:26', '2017-06-07 08:23:32'),
(1562, '3VcPX73560pR963aLc170512035615', 'Adityaning', '0811251152', 'dita.tari@gmail.com', 1, '2017-05-12 08:56:15', '2017-06-07 08:23:32'),
(1563, 'Cd732lRmeAz7reCoT4170512035737', 'Rahma', '089685890451', 'rahmasis35@gmail.com', 1, '2017-05-12 08:57:37', '2017-06-07 08:23:32'),
(1564, 'gEaTXacqIohI66Dpyp170512035820', 'Notaricia', '081232187179', 'notaricia@gmail.com', 1, '2017-05-12 08:58:20', '2017-06-07 08:23:32'),
(1565, 'HUe5zDQJ1mIDh1oY8z170512041206', 'zee', '083114411288', 'zee.kurnianto@gmail.com', 1, '2017-05-12 09:12:06', '2017-06-07 08:23:32'),
(1566, '0xcocfpwMiDEw6R6tH170512041630', 'Yani', '081.2301.3264', 'n.suryaningtyas@gmail.com', 1, '2017-05-12 09:16:30', '2017-06-07 08:23:32'),
(1567, '8c63wxJO5GciljyXDL170512042337', 'Apink', '081249483299', 'Apink20@gmail.com', 1, '2017-05-12 09:23:37', '2017-06-07 08:23:32'),
(1568, 'juYAjBIQuR3o3sSXMh170512052246', 'tri mira', '082245274222', 'mira_bcc@yahoo.com', 1, '2017-05-12 10:22:46', '2017-06-07 08:23:32'),
(1569, '8M7pUub02czxEwIR3F170512053035', 'angga', '08123075774', 'nailuzarangga@gmail.com', 1, '2017-05-12 10:30:35', '2017-06-07 08:23:32'),
(1570, 'Z3sA2U5kIU2DwDOoWG170512053230', 'angga', '08123075774', 'nailuzarangga@gmail.com', 1, '2017-05-12 10:32:30', '2017-06-07 08:23:32'),
(1571, 'jxxOSHotiqGi1Lrpus170512070230', 'Dian', '083856575269', 'Dianspakarti6@gmail.com', 1, '2017-05-12 12:02:30', '2017-06-07 08:23:32'),
(1572, 'fjhpQkpUH6VeiOvc5e170512070943', 'Anastasia Mahayanti', '082334433843', 'anastasia.mahayanti.am@gmail.com', 1, '2017-05-12 12:09:43', '2017-06-07 08:23:32'),
(1573, 'RCSLMR8M4sHRogvuG3170512071629', 'Anis ', '081330070997', 'aysafaah19@yahoo.co.id', 1, '2017-05-12 12:16:29', '2017-06-07 08:23:32'),
(1574, 'K9UNnJfYX9zBq7zA9e170512072538', 'Poppy', '082255527922', 'Poppy@yahoo.com', 1, '2017-05-12 12:25:38', '2017-06-07 08:23:32'),
(1575, 'os5M0Q7JPSTGBZjlZj170512081004', 'tanti', '087853778881', 'maureen2monica@gmail.com', 1, '2017-05-12 13:10:04', '2017-06-07 08:23:32'),
(1576, '3iGJj5ZeKHq5s5zzm8170512095641', 'Rizky', '087853363891', 'rizkyria38@yahoo.co.id', 1, '2017-05-12 14:56:41', '2017-06-07 08:23:32'),
(1577, 'fPJ0jLOyfMXBVC92kl170512103622', 'Diyan', '08122993055', 'diyan_80@yahoo.com', 1, '2017-05-12 15:36:22', '2017-06-07 08:23:32'),
(1578, '0uC1NKX1GCneNXTaCJ170512104734', 'Mufida Nurrahima', '081217074385', 'mnurrahimas24@gmail.com', 1, '2017-05-12 15:47:34', '2017-06-07 08:23:32'),
(1579, '5PQWpcDC6UdUzgg6i3170512111635', 'dania billah', '08973104495', 'daniabillah13@gmail.com', 1, '2017-05-12 16:16:35', '2017-06-07 08:23:32'),
(1580, 'fxQosy0g6nqSbvwpXJ170512115328', 'Gita', '087855456888', 'Gita.prastica@gmail.com', 1, '2017-05-12 16:53:28', '2017-06-07 08:23:32'),
(1581, 'tnBtV7zqTDIreamY5C170513053932', 'Arti', '085643157157 ', 'Arti_kecil@yahoo.com', 1, '2017-05-12 22:39:32', '2017-06-07 08:23:32'),
(1582, 'veMJ57L7rWT9bI1u9D170513055735', 'nina', '081230369515', 'nuraini.nina10@gmail.com', 1, '2017-05-12 22:57:35', '2017-06-07 08:23:32'),
(1583, 'k1NFGzbMcNfdMBsmjd170513065534', 'ninda', '081249994049', 'nindamahardika@yahoo.co.if', 1, '2017-05-12 23:55:34', '2017-06-07 08:23:32'),
(1584, 'FRKH7tAd75OKkYbSd1170513071700', 'ayunda', '085331433990', 'ayunda.widaserana@yahoo.com', 1, '2017-05-13 00:17:00', '2017-06-07 08:23:32'),
(1585, 'VRSyLuVaILYVwFOiSU170513071708', 'Debby', '082245388818', 'debbynurmalita@gmail.com', 1, '2017-05-13 00:17:08', '2017-06-07 08:23:32'),
(1586, 'TI4WE1DqnaQus3TUn3170513074657', 'Ika Novita', '085645121471', 'novita.rakhma26@gmail.com', 1, '2017-05-13 00:46:57', '2017-06-07 08:23:32'),
(1587, 'WcYuNblqzUNz2yziLB170513080852', 'Ambarsari', '081230827558', 'ambarsari_prd@yahoo.com', 1, '2017-05-13 01:08:52', '2017-06-07 08:23:32'),
(1588, 'YYNZ5heyoCKKTYQv9P170513081016', 'Ambarsari', '081230827558', 'ambarsari_prd@yahoo.com', 1, '2017-05-13 01:10:16', '2017-06-07 08:23:32'),
(1589, 'IS71UuAsgxOI9wWi1R170513082254', 'ike sundari', '081332552558', 'ikeneuton81@yahoo.com', 1, '2017-05-13 01:22:54', '2017-06-07 08:23:32'),
(1590, 'RDceS9ERncjQg06pFU170513085240', 'Nia', '081235105789', 'Nia.Partyas@gmail.Com', 1, '2017-05-13 01:52:40', '2017-06-07 08:23:32'),
(1591, 'OZ7Sm18X9460HIynXq170513095415', 'Lailatulmagfiroh', '085658035117', 'Lailah_aja@yahoo.com', 1, '2017-05-13 02:54:15', '2017-06-07 08:23:32'),
(1592, 'WuvSh0My6ML9syhe2a170513095907', 'unie', '081232069319', 'anchiolshop@yahoo.com', 1, '2017-05-13 02:59:07', '2017-06-07 08:23:32'),
(1593, 'RpO9ppzbDJD4PmetVg170513102814', 'Pritta Anne Yanuria', '085784380680', 'prittaanne@gmail.com', 1, '2017-05-13 03:28:14', '2017-06-07 08:23:32'),
(1594, 'G0cr9uzvwLP9uVcKu0170513110736', 'Ullin', '081252854699', 'Mbaul_aza@yahoo.co.id', 1, '2017-05-13 04:07:36', '2017-06-07 08:23:32'),
(1595, 'ETxgELTgCYO9NnqTWW170513114002', 'Lala', '085729236020', 'Dwiayaf@gmail.com', 1, '2017-05-13 04:40:02', '2017-06-07 08:23:32'),
(1596, '86wJdofbjHAaTxx5sh170513115850', 'Yeni ', '085730888131', 'Yenny.nurama91@gmail.com', 1, '2017-05-13 04:58:50', '2017-06-07 08:23:32'),
(1597, 'fJ6gtK8EoDbyncyIZj170513125105', 'DIAN BUDI', '081233907880', 'dindindidin@yahoo.co.id', 1, '2017-05-13 05:51:05', '2017-06-07 08:23:32'),
(1598, '9OcdHJgyeW3fuNTDEw170513011950', 'Ferra', '087851289006', 'Shakira.ba45@gmail.com', 1, '2017-05-13 06:19:50', '2017-06-07 08:23:32'),
(1599, '4EdmJ6c8dtBmciz4K7170513014746', 'Maulida', '082339863023', 'maulidalailatul@gmail.com', 1, '2017-05-13 06:47:46', '2017-06-07 08:23:32'),
(1600, 'FCSL8xg6xjJtdwMtMI170513023436', 'Ruha', '87701888771', 'rudiec.nuada@gmail.com', 1, '2017-05-13 07:34:37', '2017-06-07 08:23:32'),
(1601, 'P05Mx0dJo8rIF5hO8g170513031952', 'Anik Murtiningsih', '085230870707', 'guru.anik76@gmail.com', 1, '2017-05-13 08:19:52', '2017-06-07 08:23:32'),
(1602, 'Nrg7hcJuvXeEcg0dvX170513051118', 'Dian Ayu puspita ardy', '085646088877', 'Dianay.Islam89@gmail.Com', 1, '2017-05-13 10:11:18', '2017-06-07 08:23:32'),
(1603, 'GAjXm2Xga5WimBobOA170513051634', 'Dian ayu', '085646088877', 'Dianay.islam89@gmail.com', 1, '2017-05-13 10:16:34', '2017-06-07 08:23:32'),
(1604, 'Em4eSS6qEKMYtQhJIu170513060402', 'masruroh', '085645600470', 'ad.masruroh@gmail.com', 1, '2017-05-13 11:04:02', '2017-06-07 08:23:32'),
(1605, 'Fqlc4W5eQn7yZxShmK170513062306', 'masruroh', '085645600470', 'ad.masruroh@gmail.com', 1, '2017-05-13 11:23:06', '2017-06-07 08:23:32'),
(1606, 'OytVE0P2IgsBbHIqLz170513065040', 'Septi', '08564390320', 'Septiyanh@gmail.com', 1, '2017-05-13 11:50:40', '2017-06-07 08:23:32'),
(1607, 'Y0xCLbejDxrnmQkCMK170513072000', 'Febriana', '089650502856', 'pepepboendar@yahoo.co.id', 1, '2017-05-13 12:20:00', '2017-06-07 08:23:32'),
(1608, 'fDKOsAGeyjDsqP7sUr170513081257', 'Nurul wachidah', '081554212998', 'nuruldarrell@gmail.com', 1, '2017-05-13 13:12:57', '2017-06-07 08:23:32'),
(1609, '0SH2BC0ATeqEZV8cZu170513094708', 'Hasmaranti', '082244859888', 'ranti_setda@yahoo.co.id', 1, '2017-05-13 14:47:08', '2017-06-07 08:23:32'),
(1610, 'T0FFb6ojZT6sx2lcMW170513095827', 'Nina', '085791231993', 'Gustinisrina@gmail.com', 1, '2017-05-13 14:58:27', '2017-06-07 08:23:32'),
(1611, 'DLAVeByzVaTieDPhkY170513101450', 'Dewi prapti suryani', '08563406971', 'Pretty_2nd@yahoo.com', 1, '2017-05-13 15:14:50', '2017-06-07 08:23:32'),
(1612, 'i8LgtwbZZXhwIJyZo5170514060440', 'Apriah nurnaningsih', '087853431986', 'apriahnurmaningsih@yahoo.co.id', 1, '2017-05-13 23:04:40', '2017-06-07 08:23:32'),
(1613, 'QYuNGwENbQPBfLci0z170514070837', 'Indah Primawati', '085749995461', 'indahakim.IP@gmail.com', 1, '2017-05-14 00:08:37', '2017-06-07 08:23:32'),
(1614, '79RKLP3eLuUIBQ6pqg170514085258', 'happy dwi y', '082155758078', 'haylasara@gmail.com', 1, '2017-05-14 01:52:58', '2017-06-07 08:23:32'),
(1615, 'BFQ0s7I0Iy42XAYHy4170514105412', 'Pujianah ', '081332465451', 'pujianah686@gmail.com', 1, '2017-05-14 03:54:12', '2017-06-07 08:23:32'),
(1616, '4YGUejeZlmxui9JSy7170514110632', 'Rahmi', '083857700450', 'Rahmianggadewi87@gmail.com', 1, '2017-05-14 04:06:32', '2017-06-07 08:23:32'),
(1617, 'aumY1UgKDVKyIHdxQa170514113645', 'Indah', '087852258157', 'Indahtompi@gmail.com', 1, '2017-05-14 04:36:45', '2017-06-07 08:23:32'),
(1618, '1MP0lmkwpuoCPEhzch170514120701', 'Nurmadiah tugas s', '081554190977', 'Nurmadiah40@gmail.com', 1, '2017-05-14 05:07:01', '2017-06-07 08:23:32'),
(1619, 'M8aysEp2VlRDhM09ZW170514123908', 'Kiky', '081336816775', 'Kikyintan22@gmail.com', 1, '2017-05-14 05:39:08', '2017-06-07 08:23:32'),
(1620, 'JJsvVvm7fsdMtpUMLw170514012310', 'Nining', '085851127584', 'Niningsupratina@ymail.com', 1, '2017-05-14 06:23:10', '2017-06-07 08:23:32'),
(1621, 'ky9y3JpXn02dVYP4Fy170514014201', 'Risna', '081515150058', 'Risnanurwanti@gmail.com', 1, '2017-05-14 06:42:01', '2017-06-07 08:23:32'),
(1622, 'BO4qCy4Prrf1mGSIZk170514015408', 'mirza zhenita', '081333678045', 'zhenmirqueen03@gmail.com', 1, '2017-05-14 06:54:08', '2017-06-07 08:23:32'),
(1623, '5qZ4IATfnsO0xxM9dk170514021225', 'Digna', '083830680900', 'dignamilla@gmail.com', 1, '2017-05-14 07:12:25', '2017-06-07 08:23:32'),
(1624, 't0Nbcnf4Qh7QSXR5WU170514053140', 'Dessi permatasari', '081333564949', 'Deasy.permatasari87@gmail.com', 1, '2017-05-14 10:31:40', '2017-06-07 08:23:32'),
(1625, 'cON8efrvrLSdhT5VPD170514055144', 'Dzuriyati', '083854121966', 'Dzuriyatiyoniatmoko@gmail.com', 1, '2017-05-14 10:51:44', '2017-06-07 08:23:32'),
(1626, '1tFbnnGK8YbzY5lgUp170514060446', 'tyas', '085731582870', 'ashorty01@gmail.com', 1, '2017-05-14 11:04:46', '2017-06-07 08:23:32'),
(1627, 'NCDjHKZ5GREIIsmFjK170514070144', 'Fatima', '087751094822', 'hajisugianto4@gmail.com', 1, '2017-05-14 12:01:44', '2017-06-07 08:23:32'),
(1628, 'VkATdDcuPL57GRrBbD170514083423', 'Laila', '081938066773', 'flylha@gmail.com', 1, '2017-05-14 13:34:23', '2017-06-07 08:23:32'),
(1629, 'TldfE3D59lhS7fjmD4170514092308', 'Dinda Elok', '081235600355', 'dinda.elok.m@gmail.com', 1, '2017-05-14 14:23:08', '2017-06-07 08:23:32'),
(1630, 'X5iBw3kQL9ervTacbF170514093150', 'Rizki', '082131001937', 'rizkiwibisono83@gmail.com', 1, '2017-05-14 14:31:50', '2017-06-07 08:23:32'),
(1631, 'JbbAVebfvR8bZLDBCk170514093239', 'Rizki', '082131001937', 'rizkiwibisono83@gmail.com', 1, '2017-05-14 14:32:39', '2017-06-07 08:23:32'),
(1632, 'zI5HJjhHjU0m2Ec3wk170514093342', 'Rizki', '082131001937', 'rizkiwibisono83@gmail.com', 1, '2017-05-14 14:33:42', '2017-06-07 08:23:32'),
(1633, 'YtKB3M7x4Xv6bN2SX4170514095644', 'Bila', '082139624771', 'bibil.nabilaputri@gmail.com', 1, '2017-05-14 14:56:44', '2017-06-07 08:23:32'),
(1634, 'OBoXN3PyVqEMTgwHLm170515125613', 'Emmi', '087751670531', 'zabrinazahrania@gmail.com', 1, '2017-05-14 17:56:13', '2017-06-07 08:23:32'),
(1635, 'TNWh3fn1sANcpHmo0E170515091829', 'Dwee', '081230399908', 'Deirna_sweety48@yahoo.com', 1, '2017-05-15 02:18:29', '2017-06-07 08:23:32'),
(1636, '03cs8NgviiLQlvXQfJ170515092817', 'Niken', '088213977970', 'duabidadarikecil@gmail.com', 1, '2017-05-15 02:28:17', '2017-06-07 08:23:32'),
(1637, 'pxHoISAYNixlFm7YIX170515092858', 'Anwarul Fattach', '083830803219', 'emosekolah@gmail.com', 1, '2017-05-15 02:28:58', '2017-06-07 08:23:32'),
(1638, 'vp7dQpvj7lLj7JX59P170515095911', 'Ida', '08565583471', 'Betezone@gmail.com', 1, '2017-05-15 02:59:11', '2017-06-07 08:23:32'),
(1639, 's849MTQ96u50U54I8j170515121454', 'Istiqomah', '082234835544', 'istiqomah.faqih@gmail.com', 1, '2017-05-15 05:14:55', '2017-06-07 08:23:32'),
(1640, '64dAD3wNb7QZAZi4TN170515014012', 'Whiwin', '085257202466', 'whiwintyasr@gmail.com', 1, '2017-05-15 06:40:12', '2017-06-07 08:23:32'),
(1641, '178c5XU3WDcLnVriBw170515025324', 'selvia', '081234572427', 'silviqudd@gmail.com', 1, '2017-05-15 07:53:24', '2017-06-07 08:23:32'),
(1642, 'GdOi7oRnmHuV76Yl5l170515033854', 'Zahra el saada', '085730420988', 'zahracinta13@gmail.com', 1, '2017-05-15 08:38:54', '2017-06-07 08:23:32'),
(1643, 'Q5mCjLKLKHABC0zrDe170515041112', 'Fransisca', '08113300911', 'Fransiscafebrianti0@gmail.com', 1, '2017-05-15 09:11:12', '2017-06-07 08:23:32'),
(1644, '9wDAyScvmDI0Ui2wBc170515055533', 'Cholif', '082234917002', 'cholifisti@yahoo.co.id', 1, '2017-05-15 10:55:33', '2017-06-07 08:23:32'),
(1645, 'gCKXag9aVn2UZyI3i8170515055644', 'Cholif', '082234917002', 'cholifisti@yahoo.co.id', 1, '2017-05-15 10:56:44', '2017-06-07 08:23:32'),
(1646, 'bGhCG71emgMK9BXCab170515060011', 'Gadis', '08980680261', 'Gadis1984@gmail.com', 1, '2017-05-15 11:00:11', '2017-06-07 08:23:32'),
(1647, 'VqCHLbjg6xUZBejQN6170515093126', 'Yani', '081332922555', 'aku.bunda@gmail.com', 1, '2017-05-15 14:31:26', '2017-06-07 08:23:32'),
(1648, 'u1Q19MWruk4sD6QLjJ170515101751', 'Whiwin', '085257202466', 'whiwintyasr@gmail.com', 1, '2017-05-15 15:17:51', '2017-06-07 08:23:32'),
(1649, 'q1SsYNjHQMD289pjBT170516050020', 'Tia', '085730839863', 'dwi.utamistiafahry@gmail.com', 1, '2017-05-15 22:00:20', '2017-06-07 08:23:32'),
(1650, 'rlDgVjN3zocExBLyod170516064248', 'Fenti Amalia rizqi', '081331986985', 'Fenti.amelia@gmail.com', 1, '2017-05-15 23:42:48', '2017-06-07 08:23:32'),
(1651, 'WkR6Xxbx5wrGSihtlZ170516074621', 'ufi', '085642589048', 'upifachrizal@yahoo.co.id', 1, '2017-05-16 00:46:21', '2017-06-07 08:23:32'),
(1652, 'iLT9KZdlAFkDlTy2Rn170516083438', 'angelia', '089675522075', 'angelia.rossy@yahoo.com', 1, '2017-05-16 01:34:38', '2017-06-07 08:23:32'),
(1653, 'uElktigIMkZPwuOkvx170516091041', 'Era', '0818598209', 'erakrieswiyanti@yahoo.com', 1, '2017-05-16 02:10:41', '2017-06-07 08:23:32'),
(1654, 'Jsk9yhJp6psC4EvpL9170516091751', 'Dila rosita', '081331442999', 'Dilarosita.dr@gmail.com', 1, '2017-05-16 02:17:51', '2017-06-07 08:23:32'),
(1655, 'mf3DRXSWuETw7m8ps9170516091915', 'Dila rosita', '081331442999', 'Dilarosita.dr@gmail.com', 1, '2017-05-16 02:19:15', '2017-06-07 08:23:32'),
(1656, 'jrW9qafJ6hhw3VtE20170516092109', 'Dila rosita', '081331442999', 'Dilarosita.dr@gmail.com', 1, '2017-05-16 02:21:09', '2017-06-07 08:23:32'),
(1657, 'HROYCYOc1KUU8Ly6LY170516093652', 'Herlina', '085719988815', 'herlina.aryati@gmail.com', 1, '2017-05-16 02:36:52', '2017-06-07 08:23:32'),
(1658, 'QXLoKQ8ySmoFQ85yly170516102537', 'Ridta', '087854108220 ', 'redyellowish03@gmail.com', 1, '2017-05-16 03:25:37', '2017-06-07 08:23:32'),
(1659, '9fcqGk8Yz0kgAWLaf2170516105738', 'Dian aprilianti', '081338000356', 'aprildian450@yahoo.com', 1, '2017-05-16 03:57:38', '2017-06-07 08:23:32'),
(1660, 'rljcPEWDaeEdLMIAC0170516112919', 'Safaa', '0', 'smallchreeze@gmail.com', 1, '2017-05-16 04:29:19', '2017-06-07 08:23:32'),
(1661, '039THP0hQ11kJkV1iu170516123824', 'Ita kurnia abrita', '08563314087', 'Ithakgooying@gmail.com', 1, '2017-05-16 05:38:24', '2017-06-07 08:23:32'),
(1662, 'zhBUVBCx9DR5jA201r170516124109', 'Ita kurnia brita', '08563314087', 'Ithakgooying@gmail.com', 1, '2017-05-16 05:41:09', '2017-06-07 08:23:32'),
(1663, 'RPse8bPTswulGAXzjd170516011347', 'shinta', '08113115008', 'shinta.damayanti11@gmail.com', 1, '2017-05-16 06:13:47', '2017-06-07 08:23:32'),
(1664, 'BbJ3cPAMskdvih5PIS170516014349', 'Meta', '085785850942', 'Metha.pripratama@gmail.com', 1, '2017-05-16 06:43:49', '2017-06-07 08:23:32'),
(1665, 'c8SRnDedD6zcYgJrnq170516015030', 'Meta', '085785850942', 'Metha.pripratama@gmail.com', 1, '2017-05-16 06:50:30', '2017-06-07 08:23:32'),
(1666, 'Ye5aFacpl0y8k5Wnip170516015117', 'Rina Wachyuni', '081357316544', 'Rinawachyuni@gmail.com', 1, '2017-05-16 06:51:17', '2017-06-07 08:23:32'),
(1667, 'gJJpNxsY7vS9zKVaL9170516015523', 'vany', '087854108184', 'stvanym2@gmail.com', 1, '2017-05-16 06:55:23', '2017-06-07 08:23:32'),
(1668, 'tX7Ejn06sH3n3z5Ukb170516015644', 'nur hayati', '082143548844', 'kanahaya20@yahoo.co.id', 1, '2017-05-16 06:56:44', '2017-06-07 08:23:32'),
(1669, 'KbK4zc0r9dBbPUhe4a170516020604', 'Maymuna', '091235396252', 'Muna.maymuna86@gmail.com', 1, '2017-05-16 07:06:04', '2017-06-07 08:23:32'),
(1670, 'mR7kp6UYEAiUX9Y3bV170516034234', 'eva', '085645004454', 'eva.nurholifah@gmail.com', 1, '2017-05-16 08:42:34', '2017-06-07 08:23:32'),
(1671, '3HyTklXh8MN2X2IZQQ170516042126', 'Evi Yuniarti', '081233415911', 'evi.yuni07@gmail.com', 1, '2017-05-16 09:21:26', '2017-06-07 08:23:32'),
(1672, 'jo9JXUAhLRBYEvXUmH170516061752', 'nonnelly', '081234262500', 'nonnelly_17@yahoo.com', 1, '2017-05-16 11:17:52', '2017-06-07 08:23:32'),
(1673, 'HARhwPZIbIrRWDI3vO170516062230', 'siska', '083856130035', 'amauliasiska96@gmail.com', 1, '2017-05-16 11:22:30', '2017-06-07 08:23:32'),
(1674, 'waFFGL4donguoK3LcW170516065559', 'birdyne yanuar melani', '085731534305', 'birdyneym@gmail.com', 1, '2017-05-16 11:55:59', '2017-06-07 08:23:32'),
(1675, 'HGT1oEaPQxqlMUFLB5170516070433', 'nana', '082142300765', 'nanaayu9681@gmail.com', 1, '2017-05-16 12:04:33', '2017-06-07 08:23:32'),
(1676, 'Jp3TSNZ4TiFEXBBdyV170516075828', 'Elva puput arista', '081258323324', 'elvapuputarista@gmail.com', 1, '2017-05-16 12:58:28', '2017-06-07 08:23:32'),
(1677, '5gkAqMUna4DEGkLBJ8170516084805', 'Apri', '082231035600', 'nugraheni_apriy@yahoo.co.id', 1, '2017-05-16 13:48:05', '2017-06-07 08:23:32'),
(1678, '5s6HKGk5ngu4weaDH6170516112729', 'lusi ', '085648291696', 'lusi_sby@yahoo.com', 1, '2017-05-16 16:27:29', '2017-06-07 08:23:32'),
(1679, 'XHMq4vEntxFbIb7rhX170517011433', 'Vany vy', '088217636697', 'Nizzarghaizan10@gmail.com', 1, '2017-05-16 18:14:33', '2017-06-07 08:23:32'),
(1680, 'iTlkV1dAlnPi0FSNA3170517095231', 'umi', '081554383509', 'fuzhmi2867@gmail.com', 1, '2017-05-17 02:52:31', '2017-06-07 08:23:32'),
(1681, 'ngKqJ99Bc7YmAdVbzh170517100151', 'Nana', '08574242685', 'nana1993@yahoo.com', 1, '2017-05-17 03:01:51', '2017-06-07 08:23:32'),
(1682, 'J9PIV4lMWOnEI6d2Ey170517101226', 'anindita', '085746366662', 'an1nd1t4@gmail.com', 1, '2017-05-17 03:12:26', '2017-06-07 08:23:32'),
(1683, 'usFknJTSMLXrBzRfEE170517101334', 'anindita', '085746366662', 'an1nd1t4@gmail.com', 1, '2017-05-17 03:13:34', '2017-06-07 08:23:32'),
(1684, 'oRUrxvFB6ncKXjebcZ170517102958', 'Dwi irmawati', '085640348408', 'Dwi.irmawati85@gmail.com', 1, '2017-05-17 03:29:58', '2017-06-07 08:23:32'),
(1685, 'vUV0zlzCKwfiWI7UTQ170517105642', 'hevin', '083831012116', 'hevinpermatasari@gmail.com', 1, '2017-05-17 03:56:42', '2017-06-07 08:23:32'),
(1686, 'mbPpqF4x6MIB9PkzxR170517114111', 'Sari', '081234541133', 'Sarry8023@yahoo.com', 1, '2017-05-17 04:41:11', '2017-06-07 08:23:32'),
(1687, 'vhf6ST47V7Wai1lAJ3170517114940', 'Sari', '081234541133', 'Sarry8023@yahoo.com', 1, '2017-05-17 04:49:40', '2017-06-07 08:23:32'),
(1688, 'ZeSesklvTH3bU5NtsP170517124106', 'Irma', '08123091159', 'iriz2mail@yahoo.com', 1, '2017-05-17 05:41:06', '2017-06-07 08:23:32'),
(1689, 'uAKkBgd1L03hKz9BeQ170517125845', 'anies', '08123139313', 'aniseanies76@gmail.com', 1, '2017-05-17 05:58:45', '2017-06-07 08:23:32'),
(1690, 'PgoifWYHyGdXwSu89Q170517013844', 'Akua Mizo', '083830803219', 'emosekolah@gmail.com', 1, '2017-05-17 06:38:44', '2017-06-07 08:23:32'),
(1691, 'eTC5HkaDAtVP4yn2ch170517021507', 'laila', '091938066773', 'flylha@gmail.com', 1, '2017-05-17 07:15:07', '2017-06-07 08:23:32'),
(1692, 'Gg4Cw8EGsUo54l68VJ170517032008', 'yesika sari putri', '085850750997', 'yesikasariputri@ymail.com', 1, '2017-05-17 08:20:08', '2017-06-07 08:23:32'),
(1693, 'FxSG2UGfEumDeQjudc170517071815', 'Putri', '085719006559', 'Putri200710@gmail.com', 1, '2017-05-17 12:18:15', '2017-06-07 08:23:32'),
(1694, '9BHza22DpupnRi58st170517075425', 'Ike witanti', '082234823992', 'ikewitanti@gmail.com', 1, '2017-05-17 12:54:25', '2017-06-07 08:23:32'),
(1695, 'wgQAcU4mlIwzyLmSmz170517080952', 'pepy nifala', '085645138187', 'nifala.pepy@gmail.com', 1, '2017-05-17 13:09:52', '2017-06-07 08:23:32'),
(1696, 'bIADG79UggqCG3HvAB170517085316', 'Maya', '085735143454', 'Mayashita48@gmail.com', 1, '2017-05-17 13:53:16', '2017-06-07 08:23:32'),
(1697, 'tN1MlqkujHZfECTJoK170518121940', 'hayu putri renatha', '081216848055', 'renathayu@gmail.com', 1, '2017-05-17 17:19:40', '2017-06-07 08:23:32'),
(1698, 'ORaHP3NZOvle0yIazL170518083231', 'Vira', '085648208678', 'Viraveroliani@gmail.com', 1, '2017-05-18 01:32:31', '2017-06-07 08:23:32'),
(1699, 'viXs8XuHNVNhpqlYpW170518084216', 'Princess23', '081381176664', 'princillabelle23@gmail.com', 1, '2017-05-18 01:42:16', '2017-06-07 08:23:32'),
(1700, 'wzVPr5RD9x2YdblfGd170518084257', 'Citra', '08563480601', 'Citrayudhaa26@gmail.com', 1, '2017-05-18 01:42:57', '2017-06-07 08:23:32'),
(1701, 'pmbz1ld0kkCw6kxpdp170518111904', 'winda asfianti', '082257006269', 'asfianti.winda@gmail.com', 1, '2017-05-18 04:19:04', '2017-06-07 08:23:32'),
(1702, '2dafP380FacHsyMA8h170518122752', 'REISTY', '082244546354', 'reisty.drocks@gmail.com', 1, '2017-05-18 05:27:52', '2017-06-07 08:23:32'),
(1703, 'mVIAdLImEph5b0D2BN170518010809', 'yayuk', '081357768686', 'yayuksriwahyuni3@gmail.com', 1, '2017-05-18 06:08:09', '2017-06-07 08:23:32'),
(1704, '5jiLw17cN8wIxZmsWQ170518020604', 'rista rosaliah', '082244458302', 'ristarosaliah@gmail.com', 1, '2017-05-18 07:06:04', '2017-06-07 08:23:32'),
(1705, 'BY9fEIYM3LaJuFxUJ0170518022905', 'Alvi nuriyah hidayati', '081235918613', 'Alvinur1707@gmail.com', 1, '2017-05-18 07:29:05', '2017-06-07 08:23:32'),
(1706, 'PCXnhozAq9u17o7Lg9170518031151', 'Hiuwidjaja hendrajani', '085850888927', 'hiuwidjaya@gmail.com', 1, '2017-05-18 08:11:51', '2017-06-07 08:23:32'),
(1707, 'ZBJgkglECuDBFW4BQc170518034625', 'Ririn purwantini', '089677624845', 'ririnpurwantini@gmail.com', 1, '2017-05-18 08:46:25', '2017-06-07 08:23:32'),
(1708, 'lSqZeHx01IOrhlv2cu170518053626', 'Nurul fitriyah febriani', '083856596069', 'Nurulff88@yahoo.com', 1, '2017-05-18 10:36:26', '2017-06-07 08:23:32'),
(1709, 'b3EJvlU9STS0dY2jmI170518055305', 'salsabila', '081232211996', 'salsabila.firstyarahma@yahoo.com', 1, '2017-05-18 10:53:05', '2017-06-07 08:23:32'),
(1710, 'kQW8NPk9vp9xOKv6BR170518065854', 'Hana', '081555901801', 'Hanapratama89@gmail.com', 1, '2017-05-18 11:58:54', '2017-06-07 08:23:32'),
(1711, 'JrgdLDXY6OJOqoO0Iw170518070324', 'Winda Febriani', '081333252827', 'wind.febri@gmail.com', 1, '2017-05-18 12:03:24', '2017-06-07 08:23:32'),
(1712, 'yE1oMK3qZawcwn6gpJ170518082606', 'Meylindasari fairyani', '085791355122', 'Nadalinda2@gmail.com', 1, '2017-05-18 13:26:06', '2017-06-07 08:23:32'),
(1713, '0DX1KCiue7uzWWzTnz170518094146', 'suci styawan', '085852744615', 'suci.styawan@yahoo.com', 1, '2017-05-18 14:41:46', '2017-06-07 08:23:32'),
(1714, 'ZEyIk5Jp2Di2E6plA0170518094913', 'fauziah', '085648077079', 'fauziahkarim87@gmail.com', 1, '2017-05-18 14:49:13', '2017-06-07 08:23:32'),
(1715, 'bAIyVfgiKVLXnTdQjQ170518095214', 'Mirna', '081316543694', 'mirnawaty_b@yahoo.com', 1, '2017-05-18 14:52:14', '2017-06-07 08:23:32'),
(1716, 'Ph1OdaLFQxm0KPHPHc170519122401', 'Vika wahyu', '082338441923', 'Vikawahyu84@gmail.com', 1, '2017-05-18 17:24:01', '2017-06-07 08:23:32'),
(1717, 'vq4BVCL0s6PazO1i7D170519122434', 'Vika wahyu', '082338441923', 'Vikawahyu84@gmail.com', 1, '2017-05-18 17:24:34', '2017-06-07 08:23:32'),
(1718, 'Wty54SAq1c7k0cVA37170519054656', 'Dedhe anggraini', '08?732690025', 'arumaniest23@gmail.com', 1, '2017-05-18 22:46:56', '2017-06-07 08:23:32'),
(1719, 'KHG4c1z4Oq5F0DpKL1170519063553', 'Desy', '082245783328', 'dcy.she@gmail.com', 1, '2017-05-18 23:35:53', '2017-06-07 08:23:32'),
(1720, 'xCd1mvg0RtHV4f4XSh170519120756', 'Rahayu Pamuji', '81330117069', 'ayu_kianty@yahoo.co.id', 1, '2017-05-19 05:07:56', '2017-06-07 08:23:32'),
(1721, 'qB4iCZqIQ7dzfkCsDc170519120807', 'Dahlia', '081216092214', 'Bilfattahyusuf@yahoo.com', 1, '2017-05-19 05:08:07', '2017-06-07 08:23:32'),
(1722, 'wEVavxMNhfAXhmhxqb170519015537', 'Natalia', '085643499855', 'lieyamaria@yahoo.com', 1, '2017-05-19 06:55:37', '2017-06-07 08:23:32'),
(1723, '9qOXj1V7QZKF8JQq2Z170519041048', 'RISTINA ONGSI UTAMI', '087856520400', 'r_ongsi@yahoo.com', 1, '2017-05-19 09:10:48', '2017-06-07 08:23:32'),
(1724, 'snyPvma4rhJn1x99SO170519075828', 'Vega', '08o654442038', 'Vegasuciachmar@gmail.com', 1, '2017-05-19 12:58:28', '2017-06-07 08:23:32'),
(1725, 'wvLPI0lhCbUBctpjGE170519110209', 'ayu arofani', '08223355246', 'ayuarofani@gmail.com', 1, '2017-05-19 16:02:09', '2017-06-07 08:23:32'),
(1726, 'svS4aprUvQ8Vh0nrnn170520071349', 'Raras', '082131045097', 'Raras919@gmail.com', 1, '2017-05-20 00:13:49', '2017-06-07 08:23:32'),
(1727, 'Wp7DgTLOj22el9i29D170520083201', 'Ary Mary astutie ', '081230257207', 'ary_qqarwin@yahoo.com', 1, '2017-05-20 01:32:01', '2017-06-07 08:23:32'),
(1728, 'zvEakiUcFNtXtq0z14170520084736', 'Nana', '08124776482', 'Theasnaboo@gmail.com', 1, '2017-05-20 01:47:36', '2017-06-07 08:23:32'),
(1729, 'XZCOXOscGynMFCWdai170520090801', 'Anita N', '081703187804', 'anita_reza87@yahoo.com', 1, '2017-05-20 02:08:01', '2017-06-07 08:23:32'),
(1730, 'A3axnPVUoCcfrjIMj8170520095057', 'Anidiya Suryaningsih ', '08888555527', 'niecuz@gmail.com', 1, '2017-05-20 02:50:57', '2017-06-07 08:23:32'),
(1731, 'LRFpgFX41w2onjRz6N170520120255', 'Yaya', '081330753720', 'Salsabil.kinanti@gmail.com', 1, '2017-05-20 05:02:55', '2017-06-07 08:23:32'),
(1732, 'MKF7VkLwIb1yrw9h6f170520022214', 'Syifa', '081234544919', 'Syifasyarifah92@gmail.com', 1, '2017-05-20 07:22:14', '2017-06-07 08:23:32'),
(1733, 'ncc1NkQbWJLdkbewi7170520064654', 'Ariyani Inestasia Safitri', '082248333356', 'ainestasias1391@gmail.com', 1, '2017-05-20 11:46:54', '2017-06-07 08:23:32'),
(1734, 'neJl49ZeynJwNzAWtV170520075633', 'tata', '083830960550', 'aninditapramesti33@gmail.com', 1, '2017-05-20 12:56:33', '2017-06-07 08:23:32'),
(1735, 'zpGzMsh6EemUHKQB0F170520084535', 'Ika fitria', '081703692787', 'Ika_fitria2000@yahoo.com', 1, '2017-05-20 13:45:35', '2017-06-07 08:23:32'),
(1736, '9VAzDsvf3mL52nrogL170520092421', 'yuniar', '081335154217', 'yunniar02@gmail.com', 1, '2017-05-20 14:24:21', '2017-06-07 08:23:32'),
(1737, 'tPgotoDbWfFd50sd57170520092837', 'yuniar', '081335154217', 'yunniar02@gmail.com', 1, '2017-05-20 14:28:37', '2017-06-07 08:23:32'),
(1738, 'r5WnZ2xIFAwI2kngR7170520112631', 'Dhea Choirunissa', '081249809319', 'dhea.choirunissa@gmail.com', 1, '2017-05-20 16:26:31', '2017-06-07 08:23:32'),
(1739, 'rbqUOgxYGASu5djMTW170521040154', 'Ike D', '08155166557', 'ike.dianintyas@gmail.com', 1, '2017-05-20 21:01:54', '2017-06-07 08:23:32'),
(1740, 'nRA5PtjcsHxNRk6mHn170521063738', 'Nurul ilmi', '081803175355', 'nurul.ilmi69@yahoo.com', 1, '2017-05-20 23:37:38', '2017-06-07 08:23:32'),
(1741, '6ucE5YCjtFcMUwKXTN170521121741', 'Naili', '081333846270', 'nailirusdianah@icloud.com', 1, '2017-05-21 05:17:41', '2017-06-07 08:23:32'),
(1742, 'F5Gb2vsZWY9E7sFZPd170521023758', 'Ike', '081210991484', 'setyawanyulia97@gmail.com', 1, '2017-05-21 07:37:58', '2017-06-07 08:23:32'),
(1743, 'G53jMdYg5TXvQTF9iS170521054126', 'Reni', '089508070064', 'Reni.widowati89@gmail.com', 1, '2017-05-21 10:41:26', '2017-06-07 08:23:32'),
(1744, '3nyYSzn5fk7c3KC7LO170521055832', 'Febri', '085730817031', 'Kusendra_febrina@yahoo.co.id', 1, '2017-05-21 10:58:32', '2017-06-07 08:23:32'),
(1745, '9xp4S5hPyaF2jBmVL1170521080552', 'Rahma zuliani', '089604498742', 'Rahma_zuliani22@gmail.go.id', 1, '2017-05-21 13:05:52', '2017-06-07 08:23:32'),
(1746, 'XCCBGy48BC3AppUkYr170521085548', 'mustika syaftin', '08997024720', 'tikasyaf@gmail.com', 1, '2017-05-21 13:55:48', '2017-06-07 08:23:32'),
(1747, 'NpOcGP2M7W7qWdKe0W170521103343', 'Bunga Richa Noviyanti', '083857552098', 'Bungaricha16788@gmail.com', 1, '2017-05-21 15:33:43', '2017-06-07 08:23:32'),
(1748, 'HW3tQrPSZ8LxGk74dq170522120314', 'neysa', '081330533158', 'neysamerida@gmail.com', 1, '2017-05-21 17:03:14', '2017-06-07 08:23:32'),
(1749, 'mjlmnDo12pNCW358wI170522121136', 'neysa', '081330533158', 'neysamerida@gmail.com', 1, '2017-05-21 17:11:36', '2017-06-07 08:23:32');
INSERT INTO `download_pricelist` (`id`, `token`, `name`, `phone`, `email`, `readed`, `created_at`, `updated_at`) VALUES
(1750, 'jv7RweNidQ6qfPfnwC170522054145', 'NANING HARRIYANTI', '08563335565', 'callystacahaya@yahoo.com', 1, '2017-05-21 22:41:45', '2017-06-07 08:23:32'),
(1751, '7CX07YxFbG77LMUcbe170522061847', 'Dhini', '085641420805 ', 'Dhiniarizhona@gmail.com', 1, '2017-05-21 23:18:47', '2017-06-07 08:23:32'),
(1752, 'S8VZRuRoKvl721otVy170522061852', 'Eki kusumaningrum', '081938149715', 'eki_retha@yahoo.co.id', 1, '2017-05-21 23:18:52', '2017-06-07 08:23:32'),
(1753, 'sYiOVIdt4qhv1kHiKB170522061907', 'Marlina', '081248305635', 'Marlinaaswidcar3i@gamil.com', 1, '2017-05-21 23:19:07', '2017-06-07 08:23:32'),
(1754, 'HT3g1w6plaBkEVrOQ0170522070228', 'Lala karlina ', '082232924990', 'Lala.karlina90@gmail.com', 1, '2017-05-22 00:02:28', '2017-06-07 08:23:32'),
(1755, 'FCWUVZFcrsZV404TNH170522085658', 'ARIK WIDYANI', '081703458760', 'arikwidyani@yahoo.co.id', 1, '2017-05-22 01:56:58', '2017-06-07 08:23:32'),
(1756, 'Q7eCHaI2aYwwBC0PQ5170522094534', 'Nabil_Sofia', '082234877292', 'nabila.sofiani19@gmail.com', 1, '2017-05-22 02:45:34', '2017-06-07 08:23:32'),
(1757, 'KiMeUZVvbaSUnlYMLj170522100403', 'Henny', '081230791799', 'henny.pratiwi88@gmail.com', 1, '2017-05-22 03:04:03', '2017-06-07 08:23:32'),
(1758, 'ufdtH0V6LWkPxk8APQ170522100610', 'claudia', '085655009002', 'claudiaayusandra@gmail.com', 1, '2017-05-22 03:06:10', '2017-06-07 08:23:32'),
(1759, 'NQ3ptjtt5Y7MwMLemF170522103733', 'Deny Susilowati', '085645398313', 'denyssusilowati87@gmail.com', 1, '2017-05-22 03:37:33', '2017-06-07 08:23:32'),
(1760, 'seZJZfRqkJFAXRs7Kb170522103839', 'Firlia', '081234320232', 'firliacandrak@gmail.com', 1, '2017-05-22 03:38:39', '2017-06-07 08:23:32'),
(1761, '2SSjBJmPpiY4CjxO1O170522123430', 'Christien', '082332325950', 'christiensplus@gmail.com', 1, '2017-05-22 05:34:30', '2017-06-07 08:23:32'),
(1762, 'wftbKwq521p57iT2Lc170522125802', 'Nuril fadlilah', '081938898111', 'umiunyincantik@yahoo.com', 1, '2017-05-22 05:58:02', '2017-06-07 08:23:32'),
(1763, 'CstcBA9uS8CbIodQ0t170522125817', 'istikanah', '085792977673', 'istikanah.oppo@gmail.com', 1, '2017-05-22 05:58:17', '2017-06-07 08:23:32'),
(1764, 'wvOjIEC5WZkEyfLFYs170522012751', 'Intan putrindah', '082142444988', 'Intan.yoy@gmail.com', 1, '2017-05-22 06:27:51', '2017-06-07 08:23:32'),
(1765, 'Z8snOcu3lYFPaIGv3Y170522024810', 'nino', '082231369567', 'ninoayu589@gmail.com', 1, '2017-05-22 07:48:10', '2017-06-07 08:23:32'),
(1766, 'ps9rvDFOUB7uYM5XXe170522024954', 'nino', '082231369567', 'ninoayu589@gmail.com', 1, '2017-05-22 07:49:54', '2017-06-07 08:23:32'),
(1767, 'DR1NfDFOgn2QyRCbyq170522025731', 'Mega dharini', '085737222322', 'megadharini@gmail.com', 1, '2017-05-22 07:57:31', '2017-06-07 08:23:32'),
(1768, 'e7VzUaVPZw9Yj5xzjP170522060904', 'Nirmala Manindra Dp', '0816562912', 'nirmalamanindradp@gmail.com', 1, '2017-05-22 11:09:04', '2017-06-07 08:23:32'),
(1769, 'SdNcykHvKNVf6hC0lh170522071015', 'Nungky Ayu Kusumawardany', '085749556626', 'Nungkyayuk@ymail.com', 1, '2017-05-22 12:10:15', '2017-06-07 08:23:32'),
(1770, 'rzfrCbDQ6LdmILYfQs170522074031', 'Irma', '0816558787', 'Irma_koescahyani@yahoo.com', 1, '2017-05-22 12:40:31', '2017-06-07 08:23:32'),
(1771, '17ovYNnYEeYa0EP07A170522083215', 'Reyna Maharani', '081703907039', 'rey.parastar@gmail.com', 1, '2017-05-22 13:32:15', '2017-06-07 08:23:32'),
(1772, 'KsvxwsyCnJtddLB1qi170522084011', 'Reyna Maharani', '081703907039', 'rey.parastar@gmail.com', 1, '2017-05-22 13:40:11', '2017-06-07 08:23:32'),
(1773, 'OyIAEYIS3bOhdg6Wg4170522091444', 'Nia', '087775923358', 'N14.hairstyle@yahoo.com', 1, '2017-05-22 14:14:44', '2017-06-07 08:23:32'),
(1774, 'uvlkZOkUFZQ8p86LLY170522091830', 'Dewi', '089676000971', 'lilyana.mandadewi@gmail.com', 1, '2017-05-22 14:18:30', '2017-06-07 08:23:32'),
(1775, '4CYCdFACoyfzMjZsdD170522104249', 'Ety', '082257675257', 'Etymedip@gmail.com', 1, '2017-05-22 15:42:49', '2017-06-07 08:23:32'),
(1776, 'skGbCDx7tsQ1hDe6pv170523050127', 'Yulie', '081330233736', 'nafafianz@gmail.com', 1, '2017-05-22 22:01:27', '2017-06-07 08:23:32'),
(1777, 'EhGbpbB8jCvWCg8xeK170523050258', 'Yulie', '081330233736', 'nafafianz@gmail.com', 1, '2017-05-22 22:02:58', '2017-06-07 08:23:32'),
(1778, 't3PUO19yFw7k9mgpPC170523055116', 'Wulan', '085852649012', 'Wulanrukhster@gmail.com', 1, '2017-05-22 22:51:16', '2017-06-07 08:23:32'),
(1779, 'y8SOX1AJYile7dn5BP170523075033', 'yanty i', '08123107354', 'bundaintan.indrasari58@gmail.com', 1, '2017-05-23 00:50:33', '2017-06-07 08:23:32'),
(1780, 'rkPS4eeiyeRHZKgIZ0170523075108', 'yanty i', '08123107354', 'bundaintan.indrasari58@gmail.com', 1, '2017-05-23 00:51:08', '2017-06-07 08:23:32'),
(1781, 'cYSxAwStLpmaFChelX170523093859', 'Vita', '081 235 470 470 ', 'Vitasusia@gmail.Com', 1, '2017-05-23 02:38:59', '2017-06-07 08:23:32'),
(1782, 'hSo4gXSMLsbu1VM1D7170523094442', 'nita', '082245441157', 'nitasusanti88@gmail.com', 1, '2017-05-23 02:44:42', '2017-06-07 08:23:32'),
(1783, 'BE4t4IkWyRnfzRySr6170523104452', 'Devieta', '085733397256', 'Deita_frogxs@yahoo.co.id', 1, '2017-05-23 03:44:52', '2017-06-07 08:23:32'),
(1784, 'nF2CBPVifD1AqteMiY170523104717', 'Devieta', '085733397256', 'Deita_frogxs@yahoo.co.id', 1, '2017-05-23 03:47:17', '2017-06-07 08:23:32'),
(1785, 'O7vYib8oRFkaJDdz8d170523121142', 'Sa''idah', '08121630518', 'shofiyahjannah1@yahoo.com', 1, '2017-05-23 05:11:42', '2017-06-07 08:23:32'),
(1786, 'KE5kr3xOJnWA4W2teT170523122940', 'Ana', '085733818813', 'Bustanularifin12@rocketmail.com', 1, '2017-05-23 05:29:40', '2017-06-07 08:23:32'),
(1787, '0OSg5jI6PLKA4rqrSO170523123940', 'latifah', '085731038226', 'latifah0126@gmail.com', 1, '2017-05-23 05:39:40', '2017-06-07 08:23:32'),
(1788, 'Skn1ktSyfmHcOA3qjf170523025859', 'Sofie', '08160304670', 'Bunda.sofie06@gmail.com', 1, '2017-05-23 07:58:59', '2017-06-07 08:23:32'),
(1789, 'JpUOCQGwzKhd8XU849170523030317', 'Devi jati rehab sari', '085853063700', 'Dede_zafir@yahoo.co.id', 1, '2017-05-23 08:03:17', '2017-06-07 08:23:32'),
(1790, 'U6qS8pNTLcRWzXbo9f170523030828', 'deeta', '085234065656', 'deeta.indri@gmail.com', 1, '2017-05-23 08:08:28', '2017-06-07 08:23:32'),
(1791, 'Ta42bzkmsqyRXJQuCI170523044209', 'Alit Yunita', '082232176230', 'Allita.4jovem@gmail.com', 1, '2017-05-23 09:42:09', '2017-06-07 08:23:32'),
(1792, 'jMuJlYgRkkcnEjHzRb170523063736', 'Ivory Renzi', '08563474289', 'iren.lovely@yahoo.co.id', 1, '2017-05-23 11:37:36', '2017-06-07 08:23:32'),
(1793, 'VDAcAWO40JtnWVCiSA170523063938', 'Titis', '08123046684', 'titis@telkom.co.id', 1, '2017-05-23 11:39:38', '2017-06-07 08:23:32'),
(1794, 'TJJoSty4jjArPILgqV170523071437', 'Dyana', '088805349993', 'Rosdyanaindriani@gmail.com', 1, '2017-05-23 12:14:37', '2017-06-07 08:23:32'),
(1795, 'KLN9fzB6zYNMXnXngf170524054207', 'errania andriana', '081252827805', 'erraniaa@gmail.com', 1, '2017-05-23 22:42:07', '2017-06-07 08:23:32'),
(1796, '4xQLG0tCb5faeH9LRK170524062200', 'Rini hasan', '082334445688', 'rinijamallullail02@gmail.com', 1, '2017-05-23 23:22:00', '2017-06-07 08:23:32'),
(1797, 'EkoNxWoxiOfAoyvFWp170524072709', 'Erfiera', '081330373070', 'erfieramasyita@gmail.com', 1, '2017-05-24 00:27:09', '2017-06-07 08:23:32'),
(1798, 'NeMhoVzr5jplndyjYA170524105012', 'Rizky Apremelia Yuniar', '085640490766', 'rizkyuniar16@gmail.com', 1, '2017-05-24 03:50:12', '2017-06-07 08:23:32'),
(1799, 'kaFYhfpdjCFbxkqLoJ170524113915', 'sri astutik', '083854827701', 'daffaaryaghossan14@gmail.com', 1, '2017-05-24 04:39:15', '2017-06-07 08:23:32'),
(1800, '4uEW9I4OifTNvAf5S9170524114437', 'Novi', '081335092352', 'noviliana.ekatrihastuti@gmail.com', 1, '2017-05-24 04:44:37', '2017-06-07 08:23:32'),
(1801, 'ZPhITBF52LLCchdFpE170524120535', 'Rini puji astutik', '081232249640', 'Nafapru03@gmail.com', 1, '2017-05-24 05:05:35', '2017-06-07 08:23:32'),
(1802, '0c4e3BRtwWE6peFedx170524012120', 'vinniq rawina', '081235191678', 'vinniqrawina123@gmail.com', 1, '2017-05-24 06:21:20', '2017-06-07 08:23:32'),
(1803, 'qXr25uz06I1QVus38N170524012211', 'Serly', '082132189350', 'cherlypuspita88@gmail.com', 1, '2017-05-24 06:22:11', '2017-06-07 08:23:32'),
(1804, '9zHqXNoCxXQErjKVE3170524021831', 'Eka Rahayu', '081249519947', 'Lotussakura99@yahoo.com', 1, '2017-05-24 07:18:31', '2017-06-07 08:23:32'),
(1805, 'i6UBN7xbjzxW4lxC0g170524031547', 'wahyu', '081233533057', 'why92.zone@gmail.com', 1, '2017-05-24 08:15:47', '2017-06-07 08:23:32'),
(1806, '0iaQEeIjPiOxChVRdO170524070429', 'RIVANA', '081333348528', 'NAIRDAANAVIER@gmail.com', 1, '2017-05-24 12:04:29', '2017-06-07 08:23:32'),
(1807, 'nRq75NvXNlj1ThzDZa170524070750', 'Aulia', '081235488668', 'bila24dj@gmail.com', 1, '2017-05-24 12:07:50', '2017-06-07 08:23:32'),
(1808, 'bkowfLcWal4pzTZkx8170524075255', 'Deby guruh n', '081938888627', 'Jipundeblong@gmail.com', 1, '2017-05-24 12:52:55', '2017-06-07 08:23:32'),
(1809, 'rrv4CRoq8jZtdCEdUG170524101316', 'Ita hariyani ', '085103850323 ', 'Ita.Hariyani@gmail.com', 1, '2017-05-24 15:13:16', '2017-06-07 08:23:32'),
(1810, '5Wb7GrMLv9yEYOEEo7170524101332', 'Lissa', '081330101262', 'Lissasaras16@gmail.com', 1, '2017-05-24 15:13:32', '2017-06-07 08:23:32'),
(1811, 'ZDtyLLQSohQ7TAQbjg170524110334', 'dini', '081336568437', 'andaristadini@gmail.com', 1, '2017-05-24 16:03:34', '2017-06-07 08:23:32'),
(1812, 'sTe9OP7n2smy5eORwp170525013936', 'meiriza', '085645632583', 'meiriza88@gmail.com', 1, '2017-05-24 18:39:36', '2017-06-07 08:23:32'),
(1813, 'elYhRJ2JPRou0hcSxK170525063546', 'handini', '08123423979', 'handinianwar22@gmail.com', 1, '2017-05-24 23:35:46', '2017-06-07 08:23:32'),
(1814, '6kh7hQV8yQAFDa9H97170525064254', 'Lilin', '085852401070', 'lilin.roshend@gmail.com', 1, '2017-05-24 23:42:54', '2017-06-07 08:23:32'),
(1815, 'c0aNxD1l3T0aPZBHpO170525071748', 'Fitri', '08885275419', 'hrdmpisby@gmail.com', 1, '2017-05-25 00:17:48', '2017-06-07 08:23:32'),
(1816, 'RADJkIdci9p0crKwe4170525071856', 'Frisca', '081331532633', 'Friscaaprilia72@gmail.com', 1, '2017-05-25 00:18:56', '2017-06-07 08:23:32'),
(1817, 'rMERLT7hKG6yxfBrpQ170525083141', 'dias', '082244145273', 'diasdios@rocketmail.com', 1, '2017-05-25 01:31:41', '2017-06-07 08:23:32'),
(1818, 'RKfaxNnkChdWw0yd5J170525083245', 'Lyla', '082302007029', 'Lylayovi@gmail.com', 1, '2017-05-25 01:32:45', '2017-06-07 08:23:32'),
(1819, 'go9xXbZUCaAbcM9lQh170525083748', 'dias', '082244145273', 'diasdios@rocketmail.com', 1, '2017-05-25 01:37:48', '2017-06-07 08:23:32'),
(1820, 'FIJoxNNPoF6voMBjH1170525084929', 'Eka', '08568488796', 'Eka.apryl@gmail.com', 1, '2017-05-25 01:49:29', '2017-06-07 08:23:32'),
(1821, 'qNkPf8uyyJRvsAJdNF170525094355', 'ros', '081334061085', 'rosandal_maniez@yahoo.com', 1, '2017-05-25 02:43:55', '2017-06-07 08:23:32'),
(1822, 'uVqZdOpO7YtxRtYUJp170525095843', 'Eli khomsiati', '085334906606', 'Derytiyenly@yahoo.co.id', 1, '2017-05-25 02:58:43', '2017-06-07 08:23:32'),
(1823, 'GtdGLBElgyGzXRKVBQ170525100013', 'Eli khomsiati', '085334906606', 'derytiyenly@yahoo.co.id', 1, '2017-05-25 03:00:13', '2017-06-07 08:23:32'),
(1824, 't2PMAQAdErNf2fpkfi170525100243', 'Eli khomsiati', '085334906606', 'derytiyenly@yahoo.co.id', 1, '2017-05-25 03:02:43', '2017-06-07 08:23:32'),
(1825, '45h1oCFsJPcPsSTJxf170525101913', 'Anugrahing Hesti', '08563177011', 'dwisrianugrahinghesti@gmail.com', 1, '2017-05-25 03:19:13', '2017-06-07 08:23:32'),
(1826, 'GXO7kfe94LFYaYFdXC170525104252', 'Zetie', '082131430591', 'zetie_zeze@yahoo.co.id', 1, '2017-05-25 03:42:52', '2017-06-07 08:23:32'),
(1827, 'nvf3wfHMKR3YCnz8MK170525124251', 'Ratna sulistyowati', '085216035206', 'amouratna@yahoo.co.id', 1, '2017-05-25 05:42:51', '2017-06-07 08:23:32'),
(1828, '2tSr1WJGhMh0YBeyoe170525021501', 'Amelia', '081934697034', 'ameliaekaristy@gmail.com', 1, '2017-05-25 07:15:01', '2017-06-07 08:23:32'),
(1829, 'Z93YbmtGP2xgzs6YOY170525064812', 'Rina puspitasari', '08122882962', 'rinapuspitasari_0204@yahoo.co.id', 1, '2017-05-25 11:48:12', '2017-06-07 08:23:32'),
(1830, 'qaEXasnUAJ1V9TrsU4170525073144', 'Nioanggun', '081333046232', 'Anggunnio@gmail.com', 1, '2017-05-25 12:31:44', '2017-06-07 08:23:32'),
(1831, 'WF2W0E7y0hvJxVK5j8170525075144', 'Alivia', '081233888974', 'Fairuzalivia@gmail.com', 1, '2017-05-25 12:51:44', '2017-06-07 08:23:32'),
(1832, 'svc7DP71bTlknkMOlE170525085828', 'Dyah', '081232358558', 'miennie_wardhana017014@yahoo.com', 1, '2017-05-25 13:58:28', '2017-06-07 08:23:32'),
(1833, 'a6bdGm1cv2l76YC2Eb170525092759', 'Dwi istikasari', 'Desember87', 'Dwiistikasari87@gmail.com', 1, '2017-05-25 14:27:59', '2017-06-07 08:23:32'),
(1834, 'B4jtK4D7y3otjFSISZ170525113853', 'Diah', '081515999063', 'Kusbandiyah2405@gmail.com', 1, '2017-05-25 16:38:53', '2017-06-07 08:23:32'),
(1835, '46Hvet1TBKFTlVSKSl170526060322', 'Nuril jameela', '085755666716', 'Zaarazahira@yahoo.com', 1, '2017-05-25 23:03:22', '2017-06-07 08:23:32'),
(1836, '7NXdwl7G9Ed9acr56J170526075759', 'anisa', '08990341431', 'anisainama88@gmail.com', 1, '2017-05-26 00:57:59', '2017-06-07 08:23:32'),
(1837, 'XePB1N2PTBuka5tj5z170526081827', 'dwi maharani', '081230471988', 'dwimaharani0281@gmail.com', 1, '2017-05-26 01:18:27', '2017-06-07 08:23:32'),
(1838, 'BEbulydhx7UWMHHeWy170526090113', 'dwi maharani', '081230471988', 'dwimaharani0281@gmail.com', 1, '2017-05-26 02:01:13', '2017-06-07 08:23:32'),
(1839, 'iXBYTB472mQiEyY8Xa170526094019', 'Eka Ambar Kusuma Wardani', '087852717704', 'ekaambar25@gmail.com', 1, '2017-05-26 02:40:19', '2017-06-07 08:23:32'),
(1840, 'TnGvg1MS0pDBGe83dO170526094112', 'Eka Ambar Kusuma Wardani', '087852717704', 'ekaambar25@gmail.com', 1, '2017-05-26 02:41:12', '2017-06-07 08:23:32'),
(1841, 'H9qXxphUhF0c0Gd0sB170526094522', 'likzpoet', '085731537357', 'likzpoet@gmail.com', 1, '2017-05-26 02:45:22', '2017-06-07 08:23:32'),
(1842, 'PxhtOHqd1tBJWl4fbm170526095220', 'dian gantari', '081331025888', 'diangantari77@gmail.com', 1, '2017-05-26 02:52:20', '2017-06-07 08:23:32'),
(1843, 'QcqJByDF5SG2IaDE30170526095457', 'dian gantari', '081331025888', 'diangantari77@gmail.com', 1, '2017-05-26 02:54:57', '2017-06-07 08:23:32'),
(1844, 'wf9vZwvGzlaZmLy9Q8170526095948', 'Defta', '085646303390', 'Adedefta@gmail.com', 1, '2017-05-26 02:59:48', '2017-06-07 08:23:32'),
(1845, 'BMd2WvZy4AhBHfvI0v170526100039', 'dian gantari', '081331025888', 'diangantari77@gmail.com', 1, '2017-05-26 03:00:39', '2017-06-07 08:23:32'),
(1846, '44uZR2E6OLQ9uIqqdQ170526101031', 'Dwi septyan', '081235424778', 'Justayoe86@gmail.com', 1, '2017-05-26 03:10:31', '2017-06-07 08:23:32'),
(1847, 'R5rmeaimT3ZbOjXdJK170526101245', 'Rizky Pramudita', '+628123256465', 'rizky.pramudita@gmail.com', 1, '2017-05-26 03:12:45', '2017-06-07 08:23:32'),
(1848, 'LhDcLdJrYxbuU74SlR170526121828', 'Olga Elvira Herlinawati', '081235952241', 'a.hvie76@gmail.com', 1, '2017-05-26 05:18:28', '2017-06-07 08:23:32'),
(1849, 'DFX05Us03AJXJfnxLv170526012457', 'Ika', '085731693388', 'ika_26april@yahoo.co.id', 1, '2017-05-26 06:24:57', '2017-06-07 08:23:32'),
(1850, '4epOLb7znTJ5DIJzEl170526013555', 'dewy', '081330292128', 'dewylegra@yahoo.co.id', 1, '2017-05-26 06:35:55', '2017-06-07 08:23:32'),
(1851, '0CbZ9UNH9sRt4HSYEv170526024932', 'Tiara nasution', '081331072662', 'Evrizka.veryna@yahoo.com', 1, '2017-05-26 07:49:32', '2017-06-07 08:23:32'),
(1852, 'C3pyTdaNCaNnHLDYms170526030357', 'Nioanggun', '081333046232', 'Anggunnio@gmail.com', 1, '2017-05-26 08:03:57', '2017-06-07 08:23:32'),
(1853, 'Vn2GBYGvbV3RvOKssf170526031338', 'tyas', '083849308659', 'tijasse_abc@yahoo.com', 1, '2017-05-26 08:13:38', '2017-06-07 08:23:32'),
(1854, 'm1TKwybKC2MmElLK41170526031505', 'Fifi', '085232233277', 'Solihin.24blue@gmail.com', 1, '2017-05-26 08:15:05', '2017-06-07 08:23:32'),
(1855, 'ooIc5k5yV03pPrkPQa170526031616', 'Fifi', '085232233278', 'Dolphin.24blue@gmail.com', 1, '2017-05-26 08:16:16', '2017-06-07 08:23:32'),
(1856, 'PZNojflaNNMkKNIr79170526034956', 'Gati putri', '081235606090', 'gatiputri@gmail.com', 1, '2017-05-26 08:49:56', '2017-06-07 08:23:32'),
(1857, 'PEnSBBxqsMoCiRlP2s170526035141', 'NUR ROKHIMATUS SHOLIKHA', '085335639930', 'nurrokhimatus12@gmail.com', 1, '2017-05-26 08:51:41', '2017-06-07 08:23:32'),
(1858, 't7zllgQJCLukWOZd0E170526051746', 'Rahmawati ', '083833608111', 'rizmashop90@gmail.com', 1, '2017-05-26 10:17:46', '2017-06-07 08:23:32'),
(1859, 'TbvxyLG9xZeoLIeBmA170526051838', 'Rahmawati ', '083833608111', 'rizmashop90@gmail.com', 1, '2017-05-26 10:18:38', '2017-06-07 08:23:32'),
(1860, 'hGcdUOnGgRE4iNOX6H170526053910', 'hamidah', '087851265151', 'hamidah010585@gmail.com', 1, '2017-05-26 10:39:10', '2017-06-07 08:23:32'),
(1861, 'f4SvxUEgLxsyM899Kl170526054757', 'Sigit', '081233649323', 'sigit.speedrockyteam@gmail.com', 1, '2017-05-26 10:47:57', '2017-06-07 08:23:32'),
(1862, 'mYYeEmKHyFKCpJd9qX170526061741', 'Zahro''ul fadhilah', '081235771681', 'zahroulfadhilah@gmail.co.id', 1, '2017-05-26 11:17:41', '2017-06-07 08:23:32'),
(1863, 'lBJZPVgFPvZUvu6buT170526063755', 'Suci', '082331027552', 'Suciarsha15@gmail.com', 1, '2017-05-26 11:37:55', '2017-06-07 08:23:32'),
(1864, '9NC6ti7d0OKROqC52L170526064546', 'Iis', '082230252220', 'Seti.flowerflower@gmail.com', 1, '2017-05-26 11:45:46', '2017-06-07 08:23:32'),
(1865, 'RV99EQdlxfo4CeuICO170526065935', 'dewi putri', '083831281167', 'dewiputree.sweden@gmail.com', 1, '2017-05-26 11:59:35', '2017-06-07 08:23:32'),
(1866, 'nKgagvt5kTQdbaLcLo170526081539', 'yumna karuman', '087877887741', 'yumnakaruman@yahoo.com', 1, '2017-05-26 13:15:39', '2017-06-07 08:23:32'),
(1867, 'ZPxenjwSM2UOHCsyss170526082224', 'Suyati', '085331331110', 'Vincentia.suyati@gmail.com', 1, '2017-05-26 13:22:24', '2017-06-07 08:23:32'),
(1868, 'ax2fBNVjjRNwaQ4Vrt170526090021', 'Prischalia', '085749508858', 'prischaliaa@gmail.com', 1, '2017-05-26 14:00:21', '2017-06-07 08:23:32'),
(1869, '5esmMkkc4n5qYQnywe170526093351', 'atiek', '081330060076', 'atieknaga@yahoo.com', 1, '2017-05-26 14:33:51', '2017-06-07 08:23:32'),
(1870, 'R5qQv7dVMCPvjEDuyw170526094942', 'Ifa', '082244188369', 'anifahbabeher@gmail.com', 1, '2017-05-26 14:49:42', '2017-06-07 08:23:32'),
(1871, 'KSy4qHKVJFAMVi7TjU170527032016', 'NOVI FITRIANA QORI', '08563069495', 'novi.fitrana@gmail.com', 1, '2017-05-26 20:20:16', '2017-06-07 08:23:32'),
(1872, '0SJoil2bl87f0PPjT2170527035103', 'lailatur rosyidah', '087860821995', 'laila.rosyidah46@gmail.com', 1, '2017-05-26 20:51:03', '2017-06-07 08:23:32'),
(1873, '6ZAJJovoJuZEHDxQqJ170527035631', 'Azmil', '081553686144', 'azmil.abidah@gmail.com', 1, '2017-05-26 20:56:31', '2017-06-07 08:23:32'),
(1874, '0fE6aF7VBQJvViU0YE170527051805', 'Heni', '081298155662', 'hdrahmawati@gmail.com', 1, '2017-05-26 22:18:05', '2017-06-07 08:23:32'),
(1875, 'UszG0EY4PxoXt73rXt170527072143', 'Anggraini dwi prastiwi', '085646112005', 'Dwinasywa5@gmail.com', 1, '2017-05-27 00:21:43', '2017-06-07 08:23:32'),
(1876, 'HAs3GjDe0xyvsNplki170527072841', 'Anita ', '081216167355', 'Anit4_nh@yahoo.co.id', 1, '2017-05-27 00:28:41', '2017-06-07 08:23:32'),
(1877, 'aKpbthKF0FBe4wCzyW170527080934', 'Lina ', '085748717557', 'linaliestya@gmail.com', 1, '2017-05-27 01:09:34', '2017-06-07 08:23:32'),
(1878, 'YSnknnyqUblMs96qx1170527112823', 'Desy', '81803042626', 'desy.sby@gmail.com', 1, '2017-05-27 04:28:23', '2017-06-07 08:23:32'),
(1879, 'ZgiHOu0yEIoH1PX8CN170527123311', 'Sigit', '081233649323', 'sigit.speedrockyteam@gmail.com', 1, '2017-05-27 05:33:11', '2017-06-07 08:23:32'),
(1880, 'S4yb28NNrQT9Vpni0A170527123643', 'Novi', '082231118803', 'ophiekecil@gmail.com', 1, '2017-05-27 05:36:43', '2017-06-07 08:23:32'),
(1881, 'sfQtO0tNHw5DBTROr7170527013642', 'Anna Handayani', '081233649959', 'annahandayani14@gmail.com', 1, '2017-05-27 06:36:42', '2017-06-07 08:23:32'),
(1882, 'xEQApOiMu81jYEoUYy170527014516', 'Sri Indriyani Diartiwi', '087853168780', 'indridiartiwi@gmail.com', 1, '2017-05-27 06:45:16', '2017-06-07 08:23:32'),
(1883, 'xFRyXJpfg2oxlA5j2a170527020727', 'Rainy', '085330018214', 'rainypinlab@gmail.com', 1, '2017-05-27 07:07:27', '2017-06-07 08:23:32'),
(1884, 'WL1kKATkPxx11xcI9W170527020935', 'Milia iskandar', '081252627324', 'Rifqimadun05@gmail.com', 1, '2017-05-27 07:09:35', '2017-06-07 08:23:32'),
(1885, 'wjKPYUPcpPlMVw6YKD170527024127', 'Yuna', '081231161719', 'yunatriaz@gmail.con', 1, '2017-05-27 07:41:27', '2017-06-07 08:23:32'),
(1886, 'hecsCbqNeyDB7r8aK1170527035721', 'Erfa', '081335533537', 'erfa_falinda@yahoo.com', 1, '2017-05-27 08:57:21', '2017-06-07 08:23:32'),
(1887, 'zyFGxNTzZlMKsKcVZi170527042200', 'Vina', '087755505901', 'vinariski@gmail.com', 1, '2017-05-27 09:22:00', '2017-06-07 08:23:32'),
(1888, '6ZbFgMLgdaHZKmuA38170527045127', 'Mellynda', '081336637096', 'Mellynda.patmasari@gmail.com', 1, '2017-05-27 09:51:27', '2017-06-07 08:23:32'),
(1889, '9WXJHYSFrARk4ibsrv170527061901', 'Asmaul Khusnia ', '085732547447 ', 'asmaulkhussnia@gmail.com', 1, '2017-05-27 11:19:01', '2017-06-07 08:23:32'),
(1890, 'AnQqPCgf2XAySb7vFr170527062347', 'Yesi anggeraini', '081249739779', 'yesianggeraini1307@gmail.com', 1, '2017-05-27 11:23:47', '2017-06-07 08:23:32'),
(1891, 'VXwAN5c5RgeikR9QNW170527064803', 'yesi anggeraini', '081249739779', 'yesianggeraini1307@gmail.com', 1, '2017-05-27 11:48:03', '2017-06-07 08:23:32'),
(1892, 'aBNSgj16bdPLqa8PFD170527072455', 'dhenok', '085655285809', 'dhenoktf07@gmail.com', 1, '2017-05-27 12:24:55', '2017-06-07 08:23:32'),
(1893, '8k4BF0XGznWDXHoU33170527074013', 'Cholidah Millah', '085655041419', 'millahandre@gmail.com', 1, '2017-05-27 12:40:13', '2017-06-07 08:23:32'),
(1894, 'MRFPnKOXViJ499uzPE170527084640', 'rivana', '081333348528', 'nairdaanavier@gmail.com', 1, '2017-05-27 13:46:40', '2017-06-07 08:23:32'),
(1895, 'XQ3gDSHjVQXROvxe0a170527094551', 'Holisatul marwiyah', '085230771717', 'Holisatul1@gmail.com', 1, '2017-05-27 14:45:51', '2017-06-07 08:23:32'),
(1896, '4whTmTZY6PJwjYnZ3D170527094718', 'rivana adrian', '081333348528', 'nairdaanavier@gmail.com', 1, '2017-05-27 14:47:18', '2017-06-07 08:23:32'),
(1897, 'u0Y0k2qRpI4psf34ow170528035632', 'Intan', '091357866190', 'Intannurgusti@gmail.com', 1, '2017-05-27 20:56:32', '2017-06-07 08:23:32'),
(1898, 'NlKdgv51fx4KQNqG1o170528050527', 'Dewi', '089635012142', 'Dian28a90@gmail.com', 1, '2017-05-27 22:05:27', '2017-06-07 08:23:32'),
(1899, 'cyCgLsJsK1bXj4bVA6170528050655', 'Oka kartika', '081232966564', 'Okakartika21@gmail.com', 1, '2017-05-27 22:06:55', '2017-06-07 08:23:32'),
(1900, '8sFFvu0SHgT4ayCphl170528052226', 'vica ayu octaviana aulia', '085646185393', 'octavianvicaa@gmail.com', 1, '2017-05-27 22:22:26', '2017-06-07 08:23:32'),
(1901, 'mzXAS6nZXbcbvkGbvA170528102603', 'tanti risdianti', '6285731383158', 'tantirisdianti960@gmail.com', 1, '2017-05-28 03:26:03', '2017-06-07 08:23:32'),
(1902, 'D89YWzZ6tvvfRXCcat170528105144', 'vika', '085607472324', 'novikatanaman@gmail.com', 1, '2017-05-28 03:51:44', '2017-06-07 08:23:32'),
(1903, 'v72ZbaJl09914lepuX170528105835', 'seo', '081763830017', 'seo@gmail.com', 1, '2017-05-28 03:58:35', '2017-06-07 08:23:32'),
(1904, 'WgkapMfROuWoZff9QL170528113300', 'Tutik amaliyah', '082301032229', 'amel.sani86@gmail.com', 1, '2017-05-28 04:33:00', '2017-06-07 08:23:32'),
(1905, 'UFAtYyZY9xbPoEETT6170528114318', 'Devy', '0', 'Devyamalia177@gmail.com', 1, '2017-05-28 04:43:18', '2017-06-07 08:23:32'),
(1906, '9QoFEDedGw2x1qSzLV170528114919', 'Lilis puji', '085733337686', 'fikrisu@gmail.com', 1, '2017-05-28 04:49:19', '2017-06-07 08:23:32'),
(1907, '9xaPxgdN0UhUpUiXgb170528011250', 'susilowati', '081331385049', 'susilowatisamsung3@gmail.com', 1, '2017-05-28 06:12:50', '2017-06-07 08:23:32'),
(1908, '7SXutZKO4k7STjs0jR170528021242', 'Iqlima Luthfita Sari', '085646604817', 'iqlima.luthfita@gmail.com', 1, '2017-05-28 07:12:42', '2017-06-07 08:23:32'),
(1909, 'mGcYGb4tQ1xrAGcmj8170528024528', 'alfan amsharullah', '082233300452', 'alfan.ansharullah@gmail.com', 1, '2017-05-28 07:45:28', '2017-06-07 08:23:32'),
(1910, 'olPbBApzGkvQBmWPQZ170528032304', 'Dewi Yuniar Restiani', '082139663696', 'dewiyuniar24@gmail.com', 1, '2017-05-28 08:23:04', '2017-06-07 08:23:32'),
(1911, 'SgQ0JjONxn0ELRh8DN170528032944', 'Dewi Yuniar Restiani', '082149663696', 'dewiyuniar24@yahoo.com', 1, '2017-05-28 08:29:44', '2017-06-07 08:23:32'),
(1912, 'lMdLW5rf0DujXX3ucP170528050727', 'angelina', '081336648726', 'angelina.kartikasari92@gmail.com', 1, '2017-05-28 10:07:27', '2017-06-07 08:23:32'),
(1913, 'QG0j5kK80yUcQuYJsB170528051118', 'Zaza', '08968770771', 'Iphone.zaza@yahoo.com', 1, '2017-05-28 10:11:18', '2017-06-07 08:23:32'),
(1914, 'vPn16q8Zon1q22Vbuy170528051308', 'Zaza', '089687700771', 'Iphone.zaza@yahoo.com', 1, '2017-05-28 10:13:08', '2017-06-07 08:23:32'),
(1915, 'KVRzgybiGHRh5WUXMO170528054520', 'alievia', '085733754006', 'alieviacasandra@gmail.com', 1, '2017-05-28 10:45:20', '2017-06-07 08:23:32'),
(1916, 'Z0ehrPuyj1LLZ3OW9I170528071732', 'Ita rahmawati', '082335381946', 'Itarahma19@gmail.com', 1, '2017-05-28 12:17:32', '2017-06-07 08:23:32'),
(1917, 'aIeNTghSMpenyR16TJ170529084834', 'Zaharah', '081254495454', 'Norafevan@yahoo.com', 1, '2017-05-29 01:48:34', '2017-06-07 08:23:32'),
(1918, '3pmJNJpgmf8Jk6MCSZ170529094011', 'Annisa Rizkiana', '085645688277', 'Khalila_cute86@yahoo.co.id', 1, '2017-05-29 02:40:11', '2017-06-07 08:23:32'),
(1919, 'wlqontXGDDXNrg69J0170529100151', 'Zakiyah', '081234000481', 'Pipitzakia@gmail.com', 1, '2017-05-29 03:01:51', '2017-06-07 08:23:32'),
(1920, 'jlYvpUeC9eiaxzZIfu170529100301', 'Zakia', '081234000481', 'Pipitzakia@gmail.com', 1, '2017-05-29 03:03:01', '2017-06-07 08:23:32'),
(1921, 'YFE4jEGdSURwTkgLRl170529111856', 'Anita santi', '081216555442', 'Anita_santi86@yahoo.co.id', 1, '2017-05-29 04:18:56', '2017-06-07 08:23:32'),
(1922, 'T03CjSoQ8TqZDZEeSH170529112119', 'Lusi', '+62 857-9195-1413', 'prastiwi.lusiana@gmail.com', 1, '2017-05-29 04:21:19', '2017-06-07 08:23:32'),
(1923, '3rDyi2nu7AR3bEnUA0170529112603', 'Nyimas', '08123077034', 'nyimasma@gmail.com', 1, '2017-05-29 04:26:03', '2017-06-07 08:23:32'),
(1924, 'Y5eHsYgMKgcHZ9HoHn170529114733', 'Restika febryani', '082257325646', 'Restikaf@ymail.com', 1, '2017-05-29 04:47:33', '2017-06-07 08:23:32'),
(1925, 'iImBpxcH4rJVanxDNR170529125256', 'Wanda', '082330805954', 'wandaroxanne@gmail.com', 1, '2017-05-29 05:52:56', '2017-06-07 08:23:32'),
(1926, 'ePO4f2VuCIBGAahldw170529011459', 'Devita', '08563278799', 'Devita.eryani@gmail.com', 1, '2017-05-29 06:14:59', '2017-06-07 08:23:32'),
(1927, 'ANyVDVIHLxjdt7uxUH170529020208', 'nailamaftazani', '08566439198', 'nailamaftazani@gmail.com', 1, '2017-05-29 07:02:08', '2017-06-07 08:23:32'),
(1928, 'jnGIwFGEvVEEkh0KGP170529022351', 'TRI SETYA ', '08563153068', 'trisetya866@gmail.com', 1, '2017-05-29 07:23:51', '2017-06-07 08:23:32'),
(1929, 'WTnT6R9V7Ck5FCsSwK170529041142', 'Refa', '0818678643', 'emirarefa@gmail.com', 1, '2017-05-29 09:11:42', '2017-06-07 08:23:32'),
(1930, 'jz9J8MxJUFPjGzDXsP170529041717', 'Refa', '0818678643', 'emirarefa@gmail.com', 1, '2017-05-29 09:17:17', '2017-06-07 08:23:32'),
(1931, 'eC8aQPH4fbDqVwmG1K170529043243', 'Aisiyah', '087852888503', 'aisha.wjy@gmail.com', 1, '2017-05-29 09:32:43', '2017-06-07 08:23:32'),
(1932, 'aq1GbcSyb6GAKUoQcD170529051754', 'refa', '0818678643', 'emirarefa@gmail.com', 1, '2017-05-29 10:17:54', '2017-06-07 08:23:32'),
(1933, 'lqvEtDXbwIHEUg5m29170529062819', 'Oryza', '081237275157', 'oryza.ummi@gmail.com', 1, '2017-05-29 11:28:19', '2017-06-07 08:23:32'),
(1934, '3pbmeQ0GzGQiRG1cTA170529112407', 'annisa', '081334219018', 'annisak1804@gmail.com', 1, '2017-05-29 16:24:07', '2017-06-07 08:23:32'),
(1935, 'UaScUmcYWmctdt80zd170530040132', 'Andi riska MB', '085341955757', 'andiriskaraihan@gmail.com', 1, '2017-05-29 21:01:32', '2017-06-07 08:23:32'),
(1936, 'baT2NbpEeQe5je8hRx170530041246', 'rany', '085649068664', 'ranywahyuviani@gmail.com', 1, '2017-05-29 21:12:46', '2017-06-07 08:23:32'),
(1937, 'G3gpgEnIBZBWTEskCe170530044429', 'Fya', '082142450002', 'Fya19031989@gmail.com', 1, '2017-05-29 21:44:29', '2017-06-07 08:23:32'),
(1938, '8Y0gi9HGT8t7j7AAkw170530045023', 'Nafisha ', '085731444886', 'Akuazham123@gmail.com', 1, '2017-05-29 21:50:23', '2017-06-07 08:23:32'),
(1939, 'lXNoEUApzIAF5ZnKN5170530045047', 'Tissia', '081252299233', 'tpandriane@gmail.com', 1, '2017-05-29 21:50:47', '2017-06-07 08:23:32'),
(1940, 'nbKvmFbQLfaKXYCm8c170530045108', 'Nafisha', '085731444886', 'Akuazham123@gmail.com', 1, '2017-05-29 21:51:08', '2017-06-07 08:23:32'),
(1941, 'vIKGVXkp2zUFps63kJ170530052241', 'reny', '085706845087', 'renynophita91@gmail.com', 1, '2017-05-29 22:22:41', '2017-06-07 08:23:32'),
(1942, 'XRWNBjXIrMUunC2BUW170530091726', 'Bayu Indah Lestari', '085851833722', 'Lestariindahbayu@gmail.com', 1, '2017-05-30 02:17:26', '2017-06-07 08:23:32'),
(1943, 'PMZ6r5A4DSO7SrenxF170530102321', 'isa andriani', '085730001663', 'isa.andriani@msc.com', 1, '2017-05-30 03:23:21', '2017-06-07 08:23:32'),
(1944, '3JcEDyQCNsAeh4b49E170530104424', 'ekky', '081333106255', 'kotakajaib13@gmail.com', 1, '2017-05-30 03:44:24', '2017-06-07 08:23:32'),
(1945, '8DL01IN19qK2afiYO0170530115506', 'Fauziah', '081217813944', 'zieziearifin85@gmail.com', 1, '2017-05-30 04:55:06', '2017-06-07 08:23:32'),
(1946, 'koL1Mi98UHuRXYmLIt170530121619', 'Aika lekto', '085316661653', 'Aika_abdulloh@yahoo.com', 1, '2017-05-30 05:16:19', '2017-06-07 08:23:32'),
(1947, 'tIHtpRCwjLNLmucmoK170530011754', 'lala', '08155220992', 'lauda.septiana@gmail.com', 1, '2017-05-30 06:17:54', '2017-06-07 08:23:32'),
(1948, 'SlQldnEmBofKPzZfmh170530070001', 'anna', '081217638138', 'annaikhsan004@gmail.com', 1, '2017-05-30 12:00:01', '2017-06-07 08:23:32'),
(1949, 'nfscpEBnaLLXiqi5Bo170530080558', 'Supraptiningsih', '081336614078', 'Eti_0912@yahoo.com', 1, '2017-05-30 13:05:58', '2017-06-07 08:23:32'),
(1950, 's8V1rpGUrxSNeVQP7g170530083456', 'Ajeng', '081332138977', 'ajeng.nayaskaby@gmail.com', 1, '2017-05-30 13:34:56', '2017-06-07 08:23:32'),
(1951, 'wSUGApPxLnCLubLsO1170530090325', 'Kallista Zalfaa Rifdah', '089605468340', 'Kallila28@gmail.com', 1, '2017-05-30 14:03:25', '2017-06-07 08:23:32'),
(1952, 'jXmFSln6ajZKfiuRWe170530092455', 'Elfiraameliyah', '082330045060', 'elfira.ameliyah99@gmail.com', 1, '2017-05-30 14:24:55', '2017-06-07 08:23:32'),
(1953, '7W2T1KdWAblwYzB7p9170530093442', 'temmy', '085730845294', 'temmy.anastasia@gmail.com', 1, '2017-05-30 14:34:42', '2017-06-07 08:23:32'),
(1954, 'qBAznyb6PGf21vAnyK170530094240', 'APRILLIA DIANA RUMMANSYAH', '081335553401', 'aprilliadianarummansyah1994@gmail.com', 1, '2017-05-30 14:42:40', '2017-06-07 08:23:32'),
(1955, 'tEcg7xFTfRbYup2JGu170530094347', 'ELIN', '085692116014', 'ciiel1705@gmail.com', 1, '2017-05-30 14:43:47', '2017-06-07 08:23:32'),
(1956, 'K6th55pURySkIWwOK5170531041324', 'Farasilvia', '085607930383', 'farasilvia55@gmail.com', 1, '2017-05-30 21:13:24', '2017-06-07 08:23:32'),
(1957, 'RzUO4Aw8E94CpXR10l170531042105', 'Yunita proboshari', '08165449895', 'trisha.fira@gmail.com', 1, '2017-05-30 21:21:05', '2017-06-07 08:23:32'),
(1958, 'I7afiAeW5c3yAgbqWU170531042304', 'Yunita proboshari', '08165449895', 'trisha.fira@gmail.com', 1, '2017-05-30 21:23:04', '2017-06-07 08:23:32'),
(1959, 'ZB0VnIK5V29TmwTsTX170531044044', 'Yunita proboshari', '08165449895', 'trisha.fira@gmail.com', 1, '2017-05-30 21:40:44', '2017-06-07 08:23:32'),
(1960, 'bBtnkIGMbVnT3Rc2MT170531045556', 'dyah tri', '085646302046', 'dyah_tri_indriyani@yahoo.com', 1, '2017-05-30 21:55:56', '2017-06-07 08:23:32'),
(1961, 'cUB0cpbXbGAykP9rOO170531055426', 'Fitria', '081703062267', 'Mintofitria@gmail.com', 1, '2017-05-30 22:54:26', '2017-06-07 08:23:32'),
(1962, 'KygdiELTqfTZKCVm2q170531094129', 'rizka', '081233787496', 'rizkanfarida@gmail.com', 1, '2017-05-31 02:41:29', '2017-06-07 08:23:32'),
(1963, 'JYKRtEkaFT6OXMbNB7170531103229', 'Jamilah', '081282228390', 'jamilah.azzahra2005@gmail.com', 1, '2017-05-31 03:32:29', '2017-06-07 08:23:32'),
(1964, '1FWcBYtD3b569JSsKI170531105058', 'shela', '087851565665', 'harseladwi@yahoo.com', 1, '2017-05-31 03:50:58', '2017-06-07 08:23:32'),
(1965, 'Pn3moJhrxHJkkvJSD4170531110842', 'Titin Nasukha', '08992600244', 'el_athna@yahoo.com', 1, '2017-05-31 04:08:42', '2017-06-07 08:23:32'),
(1966, 'xRfSCmlprebZc8RtgH170531115739', 'nanda putri', '085645209882', 'ayuputri2913@gmail.com', 1, '2017-05-31 04:57:39', '2017-06-07 08:23:32'),
(1967, 'V4LuuZWlb5MIJRLwvj170531115801', 'nanda putri', '085645209882', 'ayuputri2913@gmail.com', 1, '2017-05-31 04:58:01', '2017-06-07 08:23:32'),
(1968, '9wUuTs4tsjKJukr9RX170531122844', 'luki', '085730231919', 'ponie29ling@gmail.com', 1, '2017-05-31 05:28:44', '2017-06-07 08:23:32'),
(1969, '5joBRwgi82AeQ4C3D1170531011433', 'LUKI', '085730231919', 'ponie29ling@gmail.com', 1, '2017-05-31 06:14:33', '2017-06-07 08:23:32'),
(1970, 'Fkh9gb0SugQGJog4lI170531011804', 'amalia', '081237903912', 'amaliawidya12@gmail.com', 1, '2017-05-31 06:18:04', '2017-06-07 08:23:32'),
(1971, 'NUQLbHyqCjyCcOXcRO170531012508', 'Hayyu ardianti ', '083840734221', 'dhidhiwho@ymail.com', 1, '2017-05-31 06:25:08', '2017-06-07 08:23:32'),
(1972, 'D57pXuq72DJLEQKKzn170531035605', 'erlisa', '081216148800', 'erlisakurniawati@gmail.com', 1, '2017-05-31 08:56:05', '2017-06-07 08:23:32'),
(1973, 'YJawZiCoZMiuzMI3pQ170531041614', 'evy christya anggari', '081234511879', 'evy.christya@gmail.com', 1, '2017-05-31 09:16:14', '2017-06-07 08:23:32'),
(1974, 'Ch1FcjxXnlDXL0jSos170531053234', 'Jumaroh', '085645606152', 'Jumarohsutopo@yahoo.co.id', 1, '2017-05-31 10:32:34', '2017-06-07 08:23:32'),
(1975, 'CluIipQhl1KaQrAzow170531065928', 'Anna', '085645116959', 'Adhofatum@gmail.com', 1, '2017-05-31 11:59:28', '2017-06-07 08:23:32'),
(1976, '2trdtd8CR9KjygAFnZ170601075953', 'raissawinda', '087850008799', 'raissawinda@gmail.com', 1, '2017-06-01 00:59:53', '2017-06-07 08:23:32'),
(1977, 'EN0YNa7b4CzL9j5iJo170601081317', 'nisa', '081234075481', 'nisa.oprb2g@mbiz.co.id', 1, '2017-06-01 01:13:17', '2017-06-07 08:23:32'),
(1978, '0G8WvPzX9dP21V5AS1170601093700', 'rahma', '089686345455', 'miniera4huma@gmail.com', 1, '2017-06-01 02:37:00', '2017-06-07 08:23:32'),
(1979, 'lzbrGeM5xRz0cWct95170601011612', 'Mazaya', '085735006408', 'Triyuandani@gmail.com', 1, '2017-06-01 06:16:12', '2017-06-07 08:23:32'),
(1980, 'ZogT6bRA1l47MZAbbB170601012123', 'Nisa', '081234075481', 'Nisarahmi14@gmail.com', 1, '2017-06-01 06:21:23', '2017-06-07 08:23:32'),
(1981, '0Yqhnuwx4qohqW8kB4170601015901', 'ratna widayati', '08121513855', 'ratna.widayati2016@gmail.com', 1, '2017-06-01 06:59:01', '2017-06-07 08:23:32'),
(1982, 'yzmqH7qAqqAIiEx2Bc170601085909', 'Nisa Qurrota', '085736389275', 'nisaqurrotaayun@yahoo.com', 1, '2017-06-01 13:59:09', '2017-06-07 08:23:32'),
(1983, '8Wx7MP5rajOf6qL6Gu170601092101', 'Ifa', '089678930277', 'ifa.ie84@gmail.com', 1, '2017-06-01 14:21:01', '2017-06-07 08:23:32'),
(1984, 'ZJl8uw0ubc84N0n5SC170601110144', 'Nilam', '081939866228', 'nilam.lazuza@gmail.com', 1, '2017-06-01 16:01:44', '2017-06-07 08:23:32'),
(1985, '83noHmPEbqnUHMyW4W170602045531', 'Isnaini Khumairoh', '85731900126', 'Isnainikhumairoh95@gmail.com', 1, '2017-06-01 21:55:31', '2017-06-07 08:23:32'),
(1986, 'bgKeUZeeBCjD4rNCqm170602104115', 'dina tri yuliani', '081217231461', 'dinatriyuliani@gmail.com', 1, '2017-06-02 03:41:15', '2017-06-07 08:23:32'),
(1987, 'FVlkSolWJq0EMrs4zW170602104925', 'Dina', '081217231461', 'dinatriyulianii@gmail.com', 1, '2017-06-02 03:49:25', '2017-06-07 08:23:32'),
(1988, 'cV2kJr7XHbxZbdWf8j170602112420', 'Nanik Kriswati', '085731569149', 'nanikistiqomah89@gmail.com', 1, '2017-06-02 04:24:20', '2017-06-07 08:23:32'),
(1989, 'TpkyoKHi9SbwHhP90p170602011843', 'Shoffiana Dwi M', '089517590998', 'Yamashitakiyoe67@gmail.com', 1, '2017-06-02 06:18:43', '2017-06-07 08:23:32'),
(1990, '0VrgKfSLWFRxiATwP8170602013604', 'Titin Nasukha', '08992600244', 'el_athna@yahoo.com', 1, '2017-06-02 06:36:04', '2017-06-07 08:23:32'),
(1991, 'FYfw19QdVEc3xQqrWz170602014222', 'nuke', '085732699616', 'nukenurmawati7@gmail.com', 1, '2017-06-02 06:42:22', '2017-06-07 08:23:32'),
(1992, 'c04s2gsBMEtuks99cR170602033737', 'Windah', '085707822311', 'Windahsari1666@gmail.com', 1, '2017-06-02 08:37:37', '2017-06-07 08:23:32'),
(1993, 'SL7LOYdnqhpCY5psQf170602050935', 'Linda pudji herawati', '0811347478', 'Lindapudjiherawati@gmail.com', 1, '2017-06-02 10:09:35', '2017-06-07 08:23:32'),
(1994, 'IlYnOBK8ZHf5TUr4hi170602051603', 'cindy', '081944958858', 'cindyohlala@yahoo.com', 1, '2017-06-02 10:16:03', '2017-06-07 08:23:32'),
(1995, 'ozzKdDt4PaBFExpoBq170602065114', 'Vian', '081703888847', 'Kd.vian@yahoo.com', 1, '2017-06-02 11:51:14', '2017-06-07 08:23:32'),
(1996, 'fQMooqOU8kvbUci5PD170602075354', 'Ignastia Deasy Indrasari', '082243403394', 'ignastiadeasyindrasari@gmail.com', 1, '2017-06-02 12:53:54', '2017-06-07 08:23:32'),
(1997, 'hzPRZl82biGqSnRCuk170603011413', 'nabilla', '082257664268', 'nabillafarhana17@gmail.com', 1, '2017-06-03 06:14:13', '2017-06-07 08:23:32'),
(1998, 'w0eqKdBPqbHVzdmQf8170603014149', 'Marlen', '081217070741', 'Leenmarlen18@gmail.com', 1, '2017-06-03 06:41:49', '2017-06-07 08:23:32'),
(1999, 'ByzuHjeYojfcK1d0ew170603035052', 'rike', '082142869979', 'akasha_lagrave@yahoo.com', 1, '2017-06-03 08:50:52', '2017-06-07 08:23:32'),
(2000, 'V73isKlxbZhjrvziKs170604090931', 'Dewi', '085730095095', 'ratri.drm90@yahoo.co.id', 1, '2017-06-04 02:09:31', '2017-06-07 08:23:32'),
(2001, 'pm7ndwo8WfbQ6C1nAZ170604093949', 'WILDA RAHMATIKA', '085731863072', 'rahmatikawilda18@yahoo.com', 1, '2017-06-04 02:39:49', '2017-06-07 08:23:32'),
(2002, '28rSgkIh4QGN5JvNm9170604064230', 'Adinda fuadillah', '082233573464', 'Adindaalhumaira@gmail.com', 1, '2017-06-04 11:42:30', '2017-06-07 08:23:32'),
(2003, 'hxRgfBK55ltmH3SV6O170604064319', 'Adinda fuadillah', '082233573464', 'Adindaalhumaira@gmail.com', 1, '2017-06-04 11:43:19', '2017-06-07 08:23:32'),
(2004, 'smn4dk5FjvJlKL30Ea170604083126', 'Erita', '087771117262', 'erita.erita.erita@gmail.com', 1, '2017-06-04 13:31:26', '2017-06-07 08:23:32'),
(2005, 'RTau8wh3SdOXHNGTmT170604084641', 'Maylani Amalia', '081232818118', 'maylia22@yahoo.com', 1, '2017-06-04 13:46:41', '2017-06-07 08:23:32'),
(2006, 'ednDdhM0EVFNeRjIhO170604090608', 'Intan', '081357866190', 'Intannurgusti@gmail.com', 1, '2017-06-04 14:06:08', '2017-06-07 08:23:32'),
(2007, '8EXy2GNgjOivyfXgDJ170605080304', 'siska', '083856130035', 'amauliasiska96@gmail.con', 1, '2017-06-05 01:03:04', '2017-06-07 08:23:32'),
(2008, 'UAv9iFBMtek2WXwGdz170605032632', 'Diana', '082245302069', 'dee.lissa@gmail.com', 1, '2017-06-05 08:26:32', '2017-06-07 08:23:32'),
(2009, 'EWbVJ58EwTBMrOaoEP170605042637', 'Irma', '085731101031', 'Irmawidyastika@gmail.com', 1, '2017-06-05 09:26:37', '2017-06-07 08:23:32'),
(2010, 'pzfEvfpLBLpClsYpoV170605063844', 'Irma widyastika ', '085731101031', 'Irmawidyastika@gmail.com', 1, '2017-06-05 11:38:44', '2017-06-07 08:23:32'),
(2011, '1Whhm0rkIo6Yyvy9BJ170605071001', 'nirmala manindra', '0816562912', 'nirmalamanindra@gmail.com', 1, '2017-06-05 12:10:01', '2017-06-07 08:23:32'),
(2012, 'u4UD7e0Th7aGiOVpLT170605071141', 'Dean martika', '085748306235', 'martikadean@gmail.com', 1, '2017-06-05 12:11:41', '2017-06-07 08:23:32'),
(2013, 'yK4ZD517gGL5HCHHh0170605115021', 'Nina', '085791231993', 'Gustinisrina@gmail.com', 1, '2017-06-05 16:50:21', '2017-06-07 08:23:32'),
(2014, '4r1ynNzH7gpgXSoXL8170606121315', 'Hurem', '0895351352749', 'noerulimam@yahoo.com', 1, '2017-06-05 17:13:15', '2017-06-07 08:23:32'),
(2015, 'xYI9aFqkpGyaHmDATa170606084234', 'Wiwik Rahmadani', '08135732771', 'wiwik_rahmadani@yahoo.co.id', 1, '2017-06-06 01:42:34', '2017-06-07 08:23:32'),
(2016, 'FX6WE77RlPNSC2oHe5170606084237', 'Eva mariyanti', '082165450409', 'fatih23marianti@gmail.com', 1, '2017-06-06 01:42:37', '2017-06-07 08:23:32'),
(2017, '9wkrk0mYXEYaJgMnw0170606092430', 'nur alvin', '082244490098', 'nralvin89@gmail.com', 1, '2017-06-06 02:24:30', '2017-06-07 08:23:32'),
(2018, 'iqmxa1VgeJERzpE9py170606114525', 'yuni', '081553323334', 'yuni.pratama1663@gmail.com', 1, '2017-06-06 04:45:25', '2017-06-07 08:23:32'),
(2019, 'eCk1xowGmvuoNTLXYH170606080117', 'Dea', '081234910909', 'Desyanappermana@gmail.com', 1, '2017-06-06 13:01:17', '2017-06-07 08:23:32'),
(2020, 'ZKpUpRcDkqTWdkEBL8170607035353', 'Alifatin', '085649436457', 'alifatin.nur6115@gmail.com', 1, '2017-06-06 20:53:53', '2017-06-07 08:23:32'),
(2021, 'oXaoKhjGbdNrs8fUrj170607042735', 'Wiwid', '081249770772', 'Wiwidaja77@gmail.com', 1, '2017-06-06 21:27:35', '2017-06-07 08:23:32'),
(2022, 'U7370l7aLYth5rM04A170607102405', 'Amalia', '081553845518', 'ailamayseil@gmail.com', 1, '2017-06-07 03:24:05', '2017-06-07 08:23:32'),
(2023, 'bdgDKO5gBDbw8kVgFP170607010319', 'ratih', '081515171980', 'ratihferdausdewayani@yahoo.com', 1, '2017-06-07 06:03:19', '2017-06-07 08:23:32'),
(2024, 'Z9dps5wUrLv4oIEzQ0170607010522', 'ratih', '081515171980', 'ratihferdausdewayani@yahoo.com', 1, '2017-06-07 06:05:22', '2017-06-07 08:23:32'),
(2025, 'qLgrdvkpuorkZC38n3170607010925', 'indah purwani', '085231162302', 'indahpurwani61@yahoo.co.id', 1, '2017-06-07 06:09:25', '2017-06-07 08:23:32'),
(2026, 'i9mrH2emrsyMU4FO7d170607013353', 'Riza dwi oktavdiana', '082131045171', 'riza.oktav@gmail.com', 1, '2017-06-07 06:33:53', '2017-06-07 08:23:32'),
(2027, 'bxShyPOiw10c4ivtEt170607045537', 'Ria Satoto', '08123253474', 'ria_yunar@yahoo.com', 1, '2017-06-07 09:55:37', '2017-06-10 06:45:36'),
(2028, 'cOtO52kLdDDxWztB5S170607054358', 'Wuri Retno Palupi', '087855765755', 'wuri.reyhan01@gmail.com', 1, '2017-06-07 10:43:58', '2017-06-10 06:45:36'),
(2029, 'PBcB4twt9pyNhpE3DZ170607061904', 'Oktania', '085231677739', 'Oktaniaguntaripuri@gmail.com', 1, '2017-06-07 11:19:04', '2017-06-10 06:45:36'),
(2030, 'EjQ3NFFaOgwEdTfEhG170607063910', 'Eni', '083830889718', 'Enipurwanti2002@yahoo.com', 1, '2017-06-07 11:39:10', '2017-06-10 06:45:36'),
(2031, 'RhSnI6U7O7SrKszbFk170607113123', 'Latri', '085648543640', 'Latriwartika@gmail.com', 1, '2017-06-07 16:31:23', '2017-06-10 06:45:36'),
(2032, 'Nv1mJv4ax9IRKApoBX170607113842', 'Latri', '085648542640', 'Latriwartika@gmail.com', 1, '2017-06-07 16:38:42', '2017-06-10 06:45:36'),
(2033, 'Gp2lwEuddo1LOlm4MM170608041818', 'Dwi viany', '081931077774', 'Cimut_anggrek@yahoo.co.id', 1, '2017-06-07 21:18:18', '2017-06-10 06:45:36'),
(2034, 'SCiYq51btfMr5TocQg170608071447', 'Dewi', '085646396147', 'Dewipuspitasarimei1989@gmail.com', 1, '2017-06-08 00:14:47', '2017-06-10 06:45:36'),
(2035, 'NmZdsyziJDcGMrRnTU170608080113', 'Sifa yusuf', '082216855868', 'sifayusuf1@gmail.co.id', 1, '2017-06-08 01:01:13', '2017-06-10 06:45:36'),
(2036, '05dlEPwo26NhZy8R4x170608093521', 'putri', '085607703887', 'POETRIKALPIKA@GMAIL.COM', 1, '2017-06-08 02:35:21', '2017-06-10 06:45:36'),
(2037, 'kjOtDVyDJl1GghHLFz170608105830', 'Reeza Alfionita', '082257761613', 'reeza.alfionita@gmail.com', 1, '2017-06-08 03:58:30', '2017-06-10 06:45:36'),
(2038, 'ihVSvLlC94OJdizEX9170608010005', 'Rosa Claudia ', '085788808944', 'rosaclaudiar08@gmail.com', 1, '2017-06-08 06:00:05', '2017-06-10 06:45:36'),
(2039, '233wECzc6wzuWCqiaK170608040652', 'Iswinda Hariati', '08815000140', 'd3w4nty84@yahoo.com', 1, '2017-06-08 09:06:52', '2017-06-10 06:45:36'),
(2040, 'YHgQyWSgDB8fYJT8aG170608041421', 'Iswinda Hariati', '08815000140', 'd3w4nty84@yahoo.com', 1, '2017-06-08 09:14:21', '2017-06-10 06:45:36'),
(2041, '5IwjqdJjeeyXl5QH7d170608063647', 'GALUH PRAMESI', '085648909650', 'galuhpramesi@gmail.com', 1, '2017-06-08 11:36:47', '2017-06-10 06:45:36'),
(2042, '4UQ0DOINMjbWhQbPw5170608080215', 'Lika', '08977220176', 'jamiatuss76@gmail.com', 1, '2017-06-08 13:02:15', '2017-06-10 06:45:36'),
(2043, '9PmTlzrTymFgIs8tkZ170608080321', 'Tifa', '081931530404', 'tifa_merita@yahoo.com', 1, '2017-06-08 13:03:21', '2017-06-10 06:45:36'),
(2044, 'CV4EjqUPgNp7BxMDdA170608081825', 'rissa', '085645553611', 'rissafirma@gmail.com', 1, '2017-06-08 13:18:25', '2017-06-10 06:45:36'),
(2045, 'MY3dbyJdtc6wWnUT93170608084546', 'Nahdiya', '083849664332', 'nahdiyaparamita@gmail.com', 1, '2017-06-08 13:45:46', '2017-06-10 06:45:36'),
(2046, 'mtocnp9y5XOgVO6uiX170608090738', 'anisa izzi', '083856767705', 'anizahizzi@gmail.com', 1, '2017-06-08 14:07:38', '2017-06-10 06:45:36'),
(2047, 'inbsAydMRWYnP1NMzu170608091642', 'anisa izzi ', '083856767705', 'anizahizzi@gmail.com', 1, '2017-06-08 14:16:42', '2017-06-10 06:45:36'),
(2048, 'ldYAvolu6dWcyXeqa4170608103244', 'Salma', '081703420054', 'salmadiana21@gmail.com', 1, '2017-06-08 15:32:44', '2017-06-10 06:45:36'),
(2049, 'SFAI4MoDrE5gPDh2eE170608113139', 'Santhi Rakhmayani', '081252596577', 'athaya.doank@gmail.com', 1, '2017-06-08 16:31:39', '2017-06-10 06:45:36'),
(2050, 'xui9xun34gaaM8jFut170609072335', 'Eno', '081553279025', 'titania.dee83@gmail.com', 1, '2017-06-09 00:23:35', '2017-06-10 06:45:36'),
(2051, 'lD4873s3OsDkUOZe4S170609083154', 'dewi', '087851269691', 'incomeaudithspandegiling@yahoo.co.id', 1, '2017-06-09 01:31:54', '2017-06-10 06:45:36'),
(2052, 'k3z6OCB3u3r2tHL5DB170609085054', 'Retno', '082257566990', 'retnoanj2101@gmail.com', 1, '2017-06-09 01:50:54', '2017-06-10 06:45:36'),
(2053, 'qyjxqjoBwXrPFjsvGI170609085214', 'Retno', '082257566990', 'retnoanj2101@gmail.com', 1, '2017-06-09 01:52:14', '2017-06-10 06:45:36'),
(2054, 'RvYid7kEzdKdMiJaW9170609091707', 'Fara Mozya', '085730303090', 'fmozya@gmail.com', 1, '2017-06-09 02:17:07', '2017-06-10 06:45:36'),
(2055, 'g51xb2UkHEpHHvoqHx170609111953', 'dewi', '085738361511', 'wahyuningsihdewi88@gmail.com', 1, '2017-06-09 04:19:53', '2017-06-10 06:45:36'),
(2056, 'O9OQdW9Qr7u8lO52qm170609112505', 'Shema Wahyudi', '081230290220', 'wahyudishema@gmail.com', 1, '2017-06-09 04:25:05', '2017-06-10 06:45:36'),
(2057, 'T1ofTWy3crj7bNhpjo170609115431', 'Fauzul arika', '085260401784', 'Fazrika.hamsari@gmail.com', 1, '2017-06-09 04:54:31', '2017-06-10 06:45:36'),
(2058, '7EEjY4pC6BVoPIeSW6170609123222', 'iim', '081231519296', 'im_sodiawati@yahoo.com', 1, '2017-06-09 05:32:22', '2017-06-10 06:45:36'),
(2059, 'ZgIQrDE9kM4OkCzSVa170609125452', 'Wiwin Yulianingsih', '081330551762', 'wiwinyulianingsih@unesa.ac.id', 1, '2017-06-09 05:54:52', '2017-06-10 06:45:36'),
(2060, 'GEnC4UNvhkmIgDUWoB170609024044', 'Setyawatidian', '085655515669', 'setyawatidian17@gmail.com', 1, '2017-06-09 07:40:44', '2017-06-10 06:45:36'),
(2061, 'FaobLgZ3hWxQiDut0r170609070226', 'unie', '081232069319', 'uniesweet@yahoo.com', 1, '2017-06-09 12:02:26', '2017-06-10 06:45:36'),
(2062, 'ohrL5ZvMlfIWQXQ6v4170609070308', 'Firda', '081703960607', 'Firdausa_73@yahoo.com', 1, '2017-06-09 12:03:08', '2017-06-10 06:45:36'),
(2063, '3jtKiQe5frJJ5prZpA170609071223', 'lina', '081935135707', 'linapurple44@yahoo.com', 1, '2017-06-09 12:12:23', '2017-06-10 06:45:36'),
(2064, 'qgYpFGekeKj1uQeZeD170609082537', 'Ulfa', '082139144207', 'Oelphe99@gmail.com', 1, '2017-06-09 13:25:37', '2017-06-10 06:45:36'),
(2065, 'o49kCYCmOUV8wwkJCz170610033455', 'Merryna ', '085648142045', 'nofsasiartisyah@gmail.com', 1, '2017-06-09 20:34:55', '2017-06-10 06:45:36'),
(2066, 'nXNZ3AaWud0Q0hlVN5170610064912', 'Dhea Salsabila', '083856750310', 'dsalsabila39@yahoo.com', 1, '2017-06-09 23:49:12', '2017-06-10 06:45:36'),
(2067, 'Ao21InUEXObanTrqUf170610092324', 'Tety hariastuti', '081235285538', 'tety_adm@yahoo.com', 1, '2017-06-10 02:23:24', '2017-06-10 06:45:36'),
(2068, 'BEKspc7QQ64G9XAU5w170610094453', 'Putri', '085649986238 ', 'princess_intandhari@yahoo.com', 1, '2017-06-10 02:44:53', '2017-06-10 06:45:36'),
(2069, 'DHWeQGwNkWdqCY9rCD170610101036', 'yuliana', '081333340294', 'julie.unyu@gmail.com', 1, '2017-06-10 03:10:36', '2017-06-10 06:45:36'),
(2070, 'Fg1GRFFfCj55yFTxVX170610104033', 'Erni', '082233430050', 'ern_nee85@yahoo.com', 1, '2017-06-10 03:40:33', '2017-06-10 06:45:36'),
(2071, 'qu3ylVlMVJI6eCr8dV170610111533', 'NUR HASANAH', '081554154225', 'cahayaayu711@gmail.com', 1, '2017-06-10 04:15:33', '2017-06-10 06:45:36'),
(2072, 'nrp9TPFTjQ5u5VDUiJ170610115920', 'unie', '081232069319', 'uniesweet@yahoo.com', 1, '2017-06-10 04:59:20', '2017-06-10 06:45:36'),
(2073, 'WSxZuLn7QSeHXdWcNn170610124542', 'septaninda putri vikayanti', '085730094424', 'septaninda@gmail.com', 1, '2017-06-10 05:45:42', '2017-06-10 06:45:36'),
(2074, 'gz84YiNDuJhQENLcPU170610014601', 'Sofi', '08113095178', 'sufiyaningsih@gmail.com', 1, '2017-06-10 06:46:01', '2017-06-10 06:47:16'),
(2075, 'sUndA1dOteFm9r3cSP170610055707', 'Arinda', '082139727712', 'Citruzzwidi@gmail.com', 1, '2017-06-10 10:57:07', '2017-06-22 15:56:03'),
(2076, 'W4hclLdcxpLvXZ7TML170610062619', 'Silvy', '085655858381', 'Yusnica@gmail.com', 1, '2017-06-10 11:26:19', '2017-06-22 15:56:03'),
(2077, 'kiAZFj0mfbKUMfwTNW170611025333', 'eny', '085730034164', 'eny_vision@yahoo.com', 1, '2017-06-10 19:53:33', '2017-06-22 15:56:03'),
(2078, 'lnBkhMkEW5dMjSc5sk170611051437', 'Heni', '081298155662', 'hdrahmawati@gmail.com', 1, '2017-06-10 22:14:37', '2017-06-22 15:56:03'),
(2079, '5VDJXhaIdnZgEUT4S7170611080255', 'ifadatul choiriyah', '0823 3557 7553', 'ifadatulc@yahoo.com', 1, '2017-06-11 01:02:55', '2017-06-22 15:56:03'),
(2080, 'dzFjNPJtGWvyMiUF9X170611080322', 'Ayu', '082273018532', 'melyani.ayu@gmail.com', 1, '2017-06-11 01:03:22', '2017-06-22 15:56:03'),
(2081, 'Ka5R8CiXMOIynWOPWW170611112143', 'Shanty destrie achiriani', '085733460978', 'Shantyachiriani@gmail.com', 1, '2017-06-11 04:21:43', '2017-06-22 15:56:03'),
(2082, 'pcawJS4BXUCP6cLs0E170611115503', 'Putri handayani', '08563897192', 'Putrio.shinzoo@gmail.com', 1, '2017-06-11 04:55:03', '2017-06-22 15:56:03'),
(2083, 'BNyij9Nz3pHlbST7xe170611025557', 'luvi syefira', '081360525370', 'luvi.syefira@gmail.com', 1, '2017-06-11 07:55:57', '2017-06-22 15:56:03'),
(2084, 'srs4Uw1ew5xknWBudB170611071419', 'Fitri', '082234216988', 'mahacintyas@gmail.com', 1, '2017-06-11 12:14:19', '2017-06-22 15:56:03'),
(2085, 'XE1xZRhYAw5ssUsg7s170611074223', 'maya santi', '081336471842', 'mayamarzuqi@gmail.com', 1, '2017-06-11 12:42:23', '2017-06-22 15:56:03'),
(2086, 'mTe6hRX5NsDiQpx043170611083541', 'Dwi wahyuni', '081332603950', 'dwi.wahyuni.abg@gmail.com', 1, '2017-06-11 13:35:41', '2017-06-22 15:56:03'),
(2087, 'nN9xJ2NRF8GqC42W0z170611112813', 'Nadifa Fuadiyah', '08563430011', 'nadifafuadiyah@gmail.com', 1, '2017-06-11 16:28:13', '2017-06-22 15:56:03'),
(2088, '0Edl3CtNNqRzRT4DGb170612121623', 'Mita ', '087751021118 ', 'kenzoakino@yahoo.com', 1, '2017-06-11 17:16:23', '2017-06-22 15:56:03'),
(2089, 'IbxiV6IGbOemzSCyEi170612122159', 'Rully', '089658007013', 'Rulyp4mesa@gmail.com', 1, '2017-06-11 17:21:59', '2017-06-22 15:56:03'),
(2090, 'YYFQO3tClT3nTBFfKn170612050120', 'Fitri', '085749668177', 'Ariesv3.af@gmail.com', 1, '2017-06-11 22:01:20', '2017-06-22 15:56:03'),
(2091, '9aLMIxFNpyFNKsHOm6170612052256', 'sri anjar w', '085748308797', 'gilang42@gmail.com', 1, '2017-06-11 22:22:56', '2017-06-22 15:56:03'),
(2092, 'o54RBcGall1P7VLqS5170612101210', 'fitria romadhoni', '08782616551', 'fitriaromadhoni@yahoo.co.id', 1, '2017-06-12 03:12:10', '2017-06-22 15:56:03'),
(2093, 'CFjDIjw0frAt6gZADz170612122329', 'senandung istighfarin', '082231176632', 'istighfarin89@gmail.com', 1, '2017-06-12 05:23:29', '2017-06-22 15:56:03');
INSERT INTO `download_pricelist` (`id`, `token`, `name`, `phone`, `email`, `readed`, `created_at`, `updated_at`) VALUES
(2094, 'GDvL3DV0MDHjOZN02L170612125250', 'Imarul Niken', '082245558258', 'imarulniken@yahoo.com', 1, '2017-06-12 05:52:50', '2017-06-22 15:56:03'),
(2095, 'guk5weFCgCqXGcaM3Q170612033224', 'Tiwi', '08563228878', 'Pratiwiyuliahana@yahoo.co.id', 1, '2017-06-12 08:32:24', '2017-06-22 15:56:03'),
(2096, 'whlc3SuEQbMJbAqCAA170612051311', 'Lucky', '082298339389', 'lucky.herazi@gmail.com', 1, '2017-06-12 10:13:11', '2017-06-22 15:56:03'),
(2097, 'GoHqkwzGSEHgF0SzKs170612072702', 'anita qarlina', '085736605151', 'anitaqarlina89@gmail.com', 1, '2017-06-12 12:27:02', '2017-06-22 15:56:03'),
(2098, 'N3lg0DvdT41okW3mG2170613054353', 'Dian', '082245350604', 'diansyalza94@gmail.com', 1, '2017-06-12 22:43:53', '2017-06-22 15:56:03'),
(2099, 'I45DLbfcQtTkWgoSHD170613054640', 'Dian', '082245350604', 'diansyalza94@gmail.com', 1, '2017-06-12 22:46:40', '2017-06-22 15:56:03'),
(2100, 'nyRUWXb3IoBeopc3qO170613055630', 'erva', '08563162811', 'erva1990@gmail.com', 1, '2017-06-12 22:56:30', '2017-06-22 15:56:03'),
(2101, '1ukR6oIm7gKZEn6xZe170613063430', 'Vera', '081345042833', 'alyarafly02@gmail.com', 1, '2017-06-12 23:34:30', '2017-06-22 15:56:03'),
(2102, 'nSu0A85mgewOd8vNPC170613074720', 'novi', '08123023973', 'javiershelma@gmail.com', 1, '2017-06-13 00:47:20', '2017-06-22 15:56:03'),
(2103, 'UbmCEC5V9jZumTyuVP170613095220', 'antika', '085608802332', 'antikaputri73@gmail.com', 1, '2017-06-13 02:52:20', '2017-06-22 15:56:03'),
(2104, 'b2jvs8Bmuv3TebaXE1170613095314', 'antika', '085608802332', 'antikaputri73@gmail.com', 1, '2017-06-13 02:53:14', '2017-06-22 15:56:03'),
(2105, '3veqCmBSf9YTqvsgfR170613095415', 'antika', '085608802332', 'antikaputri73@gmail.com', 1, '2017-06-13 02:54:15', '2017-06-22 15:56:03'),
(2106, 'xGOJvYEhHdXvX84lzY170613011127', 'Meilia fristoni', '085648406447', 'meiliafristoni@rocketmail.com', 1, '2017-06-13 06:11:27', '2017-06-22 15:56:03'),
(2107, 'n29IUUNkki24rKaSVo170613021221', 'Farida Anggraini', '82231216057', 'anggrafarida@gmail.com', 1, '2017-06-13 07:12:21', '2017-06-22 15:56:03'),
(2108, 'bO6w2fTnKzMrk8Di5m170613070433', 'Indar', '085765423467', 'zmitaa@gmail.com', 1, '2017-06-13 12:04:33', '2017-06-22 15:56:03'),
(2109, 'Ovv5dc7Jf6KXUTyamJ170613085117', 'Ayu', '085853886923', 'rzayul@yahoo.co.id', 1, '2017-06-13 13:51:17', '2017-06-22 15:56:03'),
(2110, 'WQY10q0dbjeo1pU5og170614031835', 'Hiuwidjaja hendrajani', '085850888927', 'hiuwidjaya@gmail.com', 1, '2017-06-13 20:18:35', '2017-06-22 15:56:03'),
(2111, 'mDglg18tYeAirjMCkJ170614041411', 'sabrina izzatti', '08563312305', 'pinguinungu13@gmail.com', 1, '2017-06-13 21:14:11', '2017-06-22 15:56:03'),
(2112, 'ZO8GOOb0r7ik3CVs9N170614045040', 'sri zuliana', '081333177160', 'zulianasri@gmail.com', 1, '2017-06-13 21:50:40', '2017-06-22 15:56:03'),
(2113, '8WKH5mog8zYu3rwjwx170614050256', 'fatikhah', '081357054240', 'kalimatulfatichah@gmail.com', 1, '2017-06-13 22:02:56', '2017-06-22 15:56:03'),
(2114, 'ffSC1Y00trpZn3T4y5170614051758', 'Elly sulistyo wati', '085731258537', 'Ellie_3gha@yahoo.com', 1, '2017-06-13 22:17:58', '2017-06-22 15:56:03'),
(2115, 'PR4GvOoVpkYFPbXNyz170614051938', 'Elly sulistyo wati', '08573125537', 'Ellie_3gha@yahoo.com', 1, '2017-06-13 22:19:38', '2017-06-22 15:56:03'),
(2116, 'u2xVEJsZkBp1CP1XeH170614063400', 'Dian isfatiyah', '087879625901', 'dian.isfatiyah@gmail.com', 1, '2017-06-13 23:34:00', '2017-06-22 15:56:03'),
(2117, '4stnwNS0eVvdqxYxvO170614064119', 'Dian isfatiyah', '087879625901', 'dian.isfatiyah@gmail.com', 1, '2017-06-13 23:41:19', '2017-06-22 15:56:03'),
(2118, '1EBtUiZOTK5XcwdTYe170614102036', 'Titin', '083846101170', 'Tnafiah@gmail.com', 1, '2017-06-14 03:20:36', '2017-06-22 15:56:03'),
(2119, 'mKNUYEmVnByyi81wSM170614102917', 'arianti', '0315033586', 'ariarianti_19@yahoo.com', 1, '2017-06-14 03:29:17', '2017-06-22 15:56:03'),
(2120, 'IPSvV9jvVlb2S9Zogc170614110236', 'Narayana', '085704837741', 'narayana.vonyathin@yahoo.com', 1, '2017-06-14 04:02:36', '2017-06-22 15:56:03'),
(2121, 'ZRouCfuWQJqGGFxt8Y170614122547', 'sri xuliana', '081333177160', 'zulianasri@gmail.com', 1, '2017-06-14 05:25:47', '2017-06-22 15:56:03'),
(2122, 'et6mqLs35gFjU5ipLN170614044011', 'fajarrini kartikasari', '082141556439', 'fajarrinikartikasari@gmail.com', 1, '2017-06-14 09:40:11', '2017-06-22 15:56:03'),
(2123, 'rDK9C9LSSfABuXPKSO170614072817', 'Fauziah Prastiwi', '081545555880', 'Ziozia3@gmail.com', 1, '2017-06-14 12:28:17', '2017-06-22 15:56:03'),
(2124, 'Kn0ijjXvOpzyEXjZna170614112659', 'fenny', '081936223068', 'fennypd@gmail.com', 1, '2017-06-14 16:26:59', '2017-06-22 15:56:03'),
(2125, 'bVkhirxgcwLMB5MmjB170615051206', 'Kiky', '08', 'rizkynurulmananti@gmail.com', 1, '2017-06-14 22:12:06', '2017-06-22 15:56:03'),
(2126, '71BPUAFw5JsZcPtIyW170615091629', 'Septika', '081312032321', 'septikaekasari@yaho.com', 1, '2017-06-15 02:16:29', '2017-06-22 15:56:03'),
(2127, 'mIHnZHo3UhSPmbd1kb170615094030', 'Eka nur setyaningsih', '085733921392', 'Iswantya@gmail.com', 1, '2017-06-15 02:40:30', '2017-06-22 15:56:03'),
(2128, '0xKalwQEHk1cbdkHfB170615111740', 'Nurina', '082257664640', 'Nurinaokta@gmail.com', 1, '2017-06-15 04:17:40', '2017-06-22 15:56:03'),
(2129, '8gLrNamOJpPtJrt8kE170615012209', 'Diyan Purwati ', '085732734383', 'Dyancliwish@gmail.com', 1, '2017-06-15 06:22:09', '2017-06-22 15:56:03'),
(2130, 'EcWk3VDCPCZS4JMFAQ170615024843', 'Dainese Dinar Fattia', '083830550343', 'dainesefattia.97@gmail.com', 1, '2017-06-15 07:48:43', '2017-06-22 15:56:03'),
(2131, 'fYowN0H11Nlz0JbYUi170615025817', 'mahda', '081219797881', 'mahdayani1980@gmail.com', 1, '2017-06-15 07:58:17', '2017-06-22 15:56:03'),
(2132, 'iBJ1sz97DsB89UZVD2170615065146', 'alia maulida', '08563644817', 'aliamaulida09@gmail.com', 1, '2017-06-15 11:51:46', '2017-06-22 15:56:03'),
(2133, '7Ey3SjDfAnpceaTrKG170615070353', 'Aci', '6285655488714', 'Achie.nk@gmail.com', 1, '2017-06-15 12:03:53', '2017-06-22 15:56:03'),
(2134, '6pI9Fr8U0PMIY3PFBX170615071336', 'Ditta metaria s', '081235689005', 'dittaimay@yahoo.co.id', 1, '2017-06-15 12:13:36', '2017-06-22 15:56:03'),
(2135, 'TIJJ8WTF4YCb0NBGHv170615072409', 'Cita Kristianti', '081522749020', 'cita.bluenahl@gmail.com', 1, '2017-06-15 12:24:09', '2017-06-22 15:56:03'),
(2136, 'XN5v3YkXlgVRg6LtUK170615082242', 'Ummi', '087851616099', 'ummi_zahroh@yahoo.co.id', 1, '2017-06-15 13:22:42', '2017-06-22 15:56:03'),
(2137, '6n01iukYGQKMYrj9qI170615084019', 'Lovi', '081230337385', 'arjunanilovi@yahoo.com', 1, '2017-06-15 13:40:19', '2017-06-22 15:56:03'),
(2138, '2SOZV35bEKWBH9EyZn170616124506', 'Frida', '081553478410', 'freeda_n14@yahoo.co.id', 1, '2017-06-15 17:45:06', '2017-06-22 15:56:03'),
(2139, '7GrBpk6KBiEQ8fW6Wg170616053216', 'Septika', '081312032321', 'septikaekasari@yaho.com', 1, '2017-06-15 22:32:16', '2017-06-22 15:56:03'),
(2140, 'WfAkLalnf1wKC3tsXF170616103822', 'muntamah', '083856311224', 'bambangriyono@gmail.com', 1, '2017-06-16 03:38:22', '2017-06-22 15:56:03'),
(2141, 'UJ1DMWpO9069nfl2Nq170616104607', 'DWI', '085612345666', 'SWSWSW@gmai.com', 1, '2017-06-16 03:46:07', '2017-06-22 15:56:03'),
(2142, 'lNdWBsnD71lVUKXp1E170616124619', 'IDA', '081216268077', 'farida.nazeee@gmail.com', 1, '2017-06-16 05:46:19', '2017-06-22 15:56:03'),
(2143, '6GoXOjjobUtHzEZPQb170616125420', 'Nanik Susanti', '085236208093', 'nanik.susanti91@gmail.com', 1, '2017-06-16 05:54:20', '2017-06-22 15:56:03'),
(2144, 'k2BHF4HUoYBf6xsdXm170616020013', 'yani', '081231312477', 'yani_rire@yahoo.com', 1, '2017-06-16 07:00:13', '2017-06-22 15:56:03'),
(2145, '9kNZ2eok5OH9MbCD5w170616063306', 'Sarroh wijayanti', '081225842815', 'sarroh.58@gmail.com', 1, '2017-06-16 11:33:06', '2017-06-22 15:56:03'),
(2146, 'Y53bHko5Nyu47iAKwP170616064822', 'Novi', '082233173907', 'Novi.asha29@gmail.com', 1, '2017-06-16 11:48:22', '2017-06-22 15:56:03'),
(2147, 'EXhRR3SRB4Wnwfpnii170616072026', 'Firdiansyah Oktarizky', '08113098604', 'FOKTARIZKY@GMAIL.COM', 1, '2017-06-16 12:20:26', '2017-06-22 15:56:03'),
(2148, 'u4eqp3ihWgKTvXdWdp170617122330', 'Yustika', '081232613652', 'yusi2us01@gmail.com', 1, '2017-06-16 17:23:30', '2017-06-22 15:56:03'),
(2149, 'uOGUhOrDQfZWx1AHJf170617124827', 'dwi', '085606118478', 'dwikristinsuryanti@gmail.com', 1, '2017-06-16 17:48:27', '2017-06-22 15:56:03'),
(2150, 'aZc00BKwL3uyub0JgV170617035620', 'Deni', '081250074527', 'dr.widya@yahoo.com', 1, '2017-06-16 20:56:20', '2017-06-22 15:56:03'),
(2151, '3usN62aFoIw7VVpMQd170617051316', 'Lestari', '085100148519', 'lestari.novi81@yahoo.co.id', 1, '2017-06-16 22:13:16', '2017-06-22 15:56:03'),
(2152, 'Mw1tvzN8lmlyxuOm76170617082433', 'candra', '082264954954', 'candranovitadewu@gmail.com', 1, '2017-06-17 01:24:33', '2017-06-22 15:56:03'),
(2153, 'eHrNWRxUdITPSrCtWO170617092637', 'RATIH DEWAYANI', '081803018955', 'ratihferdausdewayani@yahoo.com', 1, '2017-06-17 02:26:37', '2017-06-22 15:56:03'),
(2154, 'fCATBAqem1T5P3MMBr170617101209', 'mei', '08113620331 ', 'chandramei@gmail.com', 1, '2017-06-17 03:12:09', '2017-06-22 15:56:03'),
(2155, 'Enz7cOOlhFzHIIcHBp170617103712', 'Vinanda', '082218929694', 'vinandea@yahoo.com', 1, '2017-06-17 03:37:12', '2017-06-22 15:56:03'),
(2156, '16mdH4hQSNJ9x4jT0u170617103847', 'novita', '082301323150', 'ayuni02.tyas@gmail.com', 1, '2017-06-17 03:38:47', '2017-06-22 15:56:03'),
(2157, 'MR7gVvlimep8ydznMu170617015220', 'Ratna Wulansari ', '+6281553808833', 'amarsia@yahoo.com', 1, '2017-06-17 06:52:20', '2017-06-22 15:56:03'),
(2158, 'fvfPYxn78eaN9QmT8N170617040423', 'Ishmy Aulia', '082231692266', 'ishmyaulia@gmail.com', 1, '2017-06-17 09:04:23', '2017-06-22 15:56:03'),
(2159, 'V40masKRzkjefnXS9T170617043437', 'Nurul jaziroh', '083854512032', 'nuruljaziroh14@gmail.com', 1, '2017-06-17 09:34:37', '2017-06-22 15:56:03'),
(2160, 'yGBtK08AEEaakxcyMi170618014802', 'Nabila ulfa', '081252259965', 'nabilaulfa.pens@gmail.com', 1, '2017-06-17 18:48:02', '2017-06-22 15:56:03'),
(2161, 'v3aD6DtEYtvTaTS7tz170618025821', 'filk', '081235035055', 'filisetyono@gmail.com', 1, '2017-06-17 19:58:21', '2017-06-22 15:56:03'),
(2162, 'XgKASJBn9a9oEtHxKg170618042536', 'Raisya Nada Salsabila', '08992522519', 'salsabilaraisyanada@gmail.com', 1, '2017-06-17 21:25:36', '2017-06-22 15:56:03'),
(2163, 'IZkXJlgJmyRSlEW5Vx170618075930', 'Nieke', '081217502242', 'Nieke.tussina@gmail.com', 1, '2017-06-18 00:59:30', '2017-06-22 15:56:03'),
(2164, 'AJ6LR2GMHHNH4PYEBH170618084306', 'nia', '0857310000009', 'niapramestyawati@gmail.com', 1, '2017-06-18 01:43:06', '2017-06-22 15:56:03'),
(2165, 'mRsD07cDF6U7cKM7qd170618084503', 'lucy', '85655202009', 'lucynoviyantie@ymail.com', 1, '2017-06-18 01:45:03', '2017-06-22 15:56:03'),
(2166, 'NJgzSKblOn3rW3IExO170618093833', 'Putriyusianti', '088226270131', 'putriyusianti96@gmail.com', 1, '2017-06-18 02:38:33', '2017-06-22 15:56:03'),
(2167, 'aaTXPmR3PcDw5jWvs8170618094115', 'Putriyusianti', '088226270131', 'putriyusianti96@gmail.com', 1, '2017-06-18 02:41:15', '2017-06-22 15:56:03'),
(2168, 'xhekLWT5YIT8tNmTKA170618094229', 'Putriyusianti', '088226270131', 'putriyusianti96@gmail.com', 1, '2017-06-18 02:42:29', '2017-06-22 15:56:03'),
(2169, 'i59tTtQSI96sDBTU8i170618104314', 'Jrod', '0181038', 'coldanov@yahoo.com', 1, '2017-06-18 03:43:14', '2017-06-22 15:56:03'),
(2170, '1vux7x83bkqYAXKngq170618104747', 'Yani', '085787839452', 'Yanisri.r@gmail.co.id', 1, '2017-06-18 03:47:47', '2017-06-22 15:56:03'),
(2171, 'NmDF8jQEk2CoVOiPat170618010009', 'Aulatul Mustaufida', '085736632168', 'fidaaulia87@gmail.com', 1, '2017-06-18 06:00:09', '2017-06-22 15:56:03'),
(2172, 'Usv8E61WEBLKdKgATz170618025458', 'Dinda', '085733212210', 'adindatrip@yahoo.com', 1, '2017-06-18 07:54:58', '2017-06-22 15:56:03'),
(2173, 'gpacYLHK3hjZduJ7Vu170618060100', 'Fiqoh', '085645314374', 'Fiqoh.lathufah@gmail.com', 1, '2017-06-18 11:01:00', '2017-06-22 15:56:03'),
(2174, 'urY0nPWTkbDdSvGIXK170618073919', 'ismi', '085748302167', 'ismiie92@yahoo.com', 1, '2017-06-18 12:39:19', '2017-06-22 15:56:03'),
(2175, 'knbrFgsnFhl0Z3FeQC170618074517', 'Dian', '0811308860', 'dian201083@gmail.com', 1, '2017-06-18 12:45:17', '2017-06-22 15:56:03'),
(2176, 'DhKtXCnt6543pLrN2d170618074909', 'rahma', '085648473656', 'rahmabudi.widiasih@gmail.com', 1, '2017-06-18 12:49:09', '2017-06-22 15:56:03'),
(2177, 'IBqWzK39CkVUNnVR1C170618075008', 'Fibrian', '085648095075', 'fibriandwi@gmail.com', 1, '2017-06-18 12:50:08', '2017-06-22 15:56:03'),
(2178, '2Fw5DLQTO4NpUmba01170618084152', 'Nia', '087849583989', 'niawidamegawati@gmail.com', 1, '2017-06-18 13:41:52', '2017-06-22 15:56:03'),
(2179, '0OblAZ5XJd0CyE8DMM170619093706', 'ayu', '081330112553', 'fajarayukarunia@gmail.com', 1, '2017-06-19 02:37:06', '2017-06-22 15:56:03'),
(2180, '8i8nqyXmYyfdYlpErO170619103125', 'ummi', '087851616099', 'ummi_zahroh@yahoo.co.id', 1, '2017-06-19 03:31:25', '2017-06-22 15:56:03'),
(2181, 'QhrL5iRXfK7bVZf4Gh170619121804', 'Diana', '085749394495', 'diana.zee@yahoo.com', 1, '2017-06-19 05:18:04', '2017-06-22 15:56:03'),
(2182, 'auv0m1isij0GuT4Zem170619022630', 'Ryah', '085645670194', 'rychar_31_mei@yahoo.co.id', 1, '2017-06-19 07:26:30', '2017-06-22 15:56:03'),
(2183, 'hO5wYCxx9d7gxhpgxp170619033038', 'Anandhi', '081286265477', 'anandhi.putri@gmail.com', 1, '2017-06-19 08:30:38', '2017-06-22 15:56:03'),
(2184, 'cEBOXuX3RJVt33LWZ9170619061806', 'Yuli', '085730137000', 'Yuliyana48@gmail.com', 1, '2017-06-19 11:18:06', '2017-06-22 15:56:03'),
(2185, 'jd5Mwivpm65x2SdHPY170619110919', 'Retno diah triana', '0818320811', 'retnodiahtriana2@gmail.con', 1, '2017-06-19 16:09:19', '2017-06-22 15:56:03'),
(2186, 'NpD0WuxgScCbGSOOrb170620025619', 'anggareta', '083856065070', 'anggareta24@ymail.com', 1, '2017-06-19 19:56:19', '2017-06-22 15:56:03'),
(2187, 'o88jZoYv8sMO3YsUWa170620083720', 'lunariana lubis', '081703023644', 'luna.uht@gmail.com', 1, '2017-06-20 01:37:20', '2017-06-22 15:56:03'),
(2188, 'spj06t5WmVrJyIfbHf170620084242', 'LIDIA', '8115422186', 'lidiadwiyuliani@gmail.com', 1, '2017-06-20 01:42:42', '2017-06-22 15:56:03'),
(2189, 'pKbcd0iP2WTGrxqsxN170620090911', 'RINA', '08122882962', 'rinapuspitasari_0204@yahoo.co.id', 1, '2017-06-20 02:09:11', '2017-06-22 15:56:03'),
(2190, 'vEZagcgAejKgv4XYsx170620112521', 'jatu mawar', '085735699798', 'jatu.mawar@gmail.com', 1, '2017-06-20 04:25:21', '2017-06-22 15:56:03'),
(2191, 'ZRegf2mYNzv87nyvMw170620114952', 'Ika dewi', '081332056123', 'kadew81@gmail.com', 1, '2017-06-20 04:49:52', '2017-06-22 15:56:03'),
(2192, 'V1O48OF5WEBH9WUCFq170620115901', 'ANIS HUMAIROH', '083856929977', 'masyudi.wijaya@gmail.com', 1, '2017-06-20 04:59:01', '2017-06-22 15:56:03'),
(2193, 'SCzyWJqJ56tutDKmRX170620015841', 'susanti', '085732497333', 'ningrumsusanti92@gmail.com', 1, '2017-06-20 06:58:41', '2017-06-22 15:56:03'),
(2194, 'FaKl5jNJUyo26FWU0U170620104157', 'Rani Andini', '081553535341', 'Ainifashionshop@gmail.com', 1, '2017-06-20 15:41:57', '2017-06-22 15:56:03'),
(2195, 'UibZ7qaS02NKh4bhhP170621011008', 'ARI', '085330000414', 'asiyah_ari@yahoo.co.id', 1, '2017-06-20 18:10:08', '2017-06-22 15:56:03'),
(2196, 'Q9lObWa5GrKBfBvnhg170621065616', 'Dian esa', '081234010438', 'Dian_esa.putri@yahoo.com', 1, '2017-06-20 23:56:16', '2017-06-22 15:56:03'),
(2197, 'YxV2x4kd70Z14ibspu170621094226', 'rosita dwi', '085730057411', 'rositadwi86@yahoo.com', 1, '2017-06-21 02:42:26', '2017-06-22 15:56:03'),
(2198, 'RYpCyXi9BgU4PPtlmd170621121556', 'Soffie', '08563341051', 'Soffiedhurretna@gmail.com', 1, '2017-06-21 05:15:56', '2017-06-22 15:56:03'),
(2199, 'KN7Zu33iot5BTtAwNR170621021339', 'Nurmalika', '085735958884', 'Nurmalikay22@gmail.com', 1, '2017-06-21 07:13:39', '2017-06-22 15:56:03'),
(2200, 'UiBOCeLqWGCYAOMxfd170621032343', 'Sherly', '082140800762', 'encillolipop@gmail.com', 1, '2017-06-21 08:23:43', '2017-06-22 15:56:03'),
(2201, 'fQvzEo740rH86JjXOL170621050208', 'Yuliana', '081939337053', 'Youlieapoutrie@gmail.com', 1, '2017-06-21 10:02:08', '2017-06-22 15:56:03'),
(2202, 'DbeCa4BnsKcnwVRoo5170621055415', 'Rina hasanah', '089665646042', 'blue_queen38@yahoo.com', 1, '2017-06-21 10:54:15', '2017-06-22 15:56:03'),
(2203, 'TLcRrTqYFKuHFH0XwZ170621074747', 'Rani', '082338889893', 'ranifitriana.89@gmail.com', 1, '2017-06-21 12:47:47', '2017-06-22 15:56:03'),
(2204, 'JS7NgmUFgR3bNmESf3170621081652', 'Rani', '082338889893', 'ranifitriana.89@gmail.com', 1, '2017-06-21 13:16:52', '2017-06-22 15:56:03'),
(2205, 'kY8rW4Kz0wNA5oGRVE170621082940', 'Ibanez', '082139040590', 'ibanez.mega@yahoo.com', 1, '2017-06-21 13:29:40', '2017-06-22 15:56:03'),
(2206, '5oy5vFPIHMIUvHWWzL170621085707', 'Dian wahyu', '081234261725', 'Dianwahyunew@gmail.com', 1, '2017-06-21 13:57:07', '2017-06-22 15:56:03'),
(2207, '5JMgZlFWq1ytvRgtql170621100933', 'Yunita kiki', '082233661910', 'Nyit2.kiki@gmail.com', 1, '2017-06-21 15:09:33', '2017-06-22 15:56:03'),
(2208, 'tLc49dvodbKGY6ky52170621101651', 'Luluk Aulianisa', '08113014000', 'luluk.aulianisa@gmail.com', 1, '2017-06-21 15:16:51', '2017-06-22 15:56:03'),
(2209, 'f0syWjKfapLKiDZPun170621103659', 'Santy wijayanti', '81231605099', 'wijayanti.santy@ymail.com', 1, '2017-06-21 15:36:59', '2017-06-22 15:56:03'),
(2210, 'HZVDjCA7uRtqzJkpnf170622035114', 'AIDATUR RAHMA', '089642512760', 'aidaturrahma.ar@gmail.com', 1, '2017-06-21 20:51:14', '2017-06-22 15:56:03'),
(2211, 'sRWl0c2jzymJQ5rQrT170622073641', 'Lisa', '082244693963', 'Utari_elisa@yahoo.com', 1, '2017-06-22 00:36:41', '2017-06-22 15:56:03'),
(2212, 'E0tsc0dHOksHwILB5j170622074707', 'Anik', '085850906004', 'anikhendra1011@gmail.com', 1, '2017-06-22 00:47:07', '2017-06-22 15:56:03'),
(2213, '5zjgJKXlUEiI1Ikt2P170622081332', 'Erna', '081231300453', 'Putriagustin7567@yahoo.com', 1, '2017-06-22 01:13:32', '2017-06-22 15:56:03'),
(2214, 'nX6gLaEh9n5VMPsIMr170622081545', 'Susanna', '087889475374', 'Susanna.suswanto@yahoo.com', 1, '2017-06-22 01:15:45', '2017-06-22 15:56:03'),
(2215, 'huT9jTjVegSH4hr1dv170622081729', 'Susanna', '087889475374', 'Susanna.suswanto@yahoo.com', 1, '2017-06-22 01:17:29', '2017-06-22 15:56:03'),
(2216, 'fIXgSD4F7ulPjp8KtQ170622081949', 'yuyun widowati', '081357332567', 'yuyunwidowati36@yahoo.com', 1, '2017-06-22 01:19:49', '2017-06-22 15:56:03'),
(2217, 'x5fEQ3D92hITvGsZ0F170622082258', 'yuyun widowati', '081357332567', 'yuyunwidowati36@gmail.com', 1, '2017-06-22 01:22:58', '2017-06-22 15:56:03'),
(2218, 'mhVPZ8zIiGnuZW1IEH170622121143', 'Ika dewi', '081332056123', 'kadew81@gmail.com', 1, '2017-06-22 05:11:43', '2017-06-22 15:56:03'),
(2219, '5a9H8oULEQ1aY2embd170622121217', 'Ika dewi', '081332056123', 'kadew81@gmail.com', 1, '2017-06-22 05:12:17', '2017-06-22 15:56:03'),
(2220, 'qSXmUxcFIDs3HmoRRR170622021027', 'marik astuti', '085645072104', 'erikomarik@rocketmail.com', 1, '2017-06-22 07:10:27', '2017-06-22 15:56:03'),
(2221, '0vfKT3eCQNPJsVaPgz170622023118', 'WD', '85755427059', 'wahyudian859@gmail.com', 1, '2017-06-22 07:31:18', '2017-06-22 15:56:03'),
(2222, 'q3fYBpvEI8xLj9JFmG170622042124', 'Elfira', '082234837246', 'elfirataufida30@gmail.com', 1, '2017-06-22 09:21:24', '2017-06-22 15:56:03'),
(2223, 'APKCkVJ6QPkVbTEEeF170622045246', 'Ika dewi', '081332056123', 'kadew81@gmail.com', 1, '2017-06-22 09:52:46', '2017-06-22 15:56:03'),
(2224, '4fNe2Rkf0KUIJMzfe9170623112431', 'Mahmiah', '081938118628', 'mahmiah@gmail.com', 1, '2017-06-23 04:24:31', '2017-07-13 06:58:14'),
(2225, '5eW5VlM2THZovhtUR3170623071151', 'Ledy espiranza', '081286303900', 'ledy.espiranza@gmail.com', 1, '2017-06-23 12:11:51', '2017-07-13 06:58:14'),
(2226, 'C5vQ40kyO0vlt1xC1C170623071742', 'Aftin', '081217668466', 'cleopeter89@hotmail.com', 1, '2017-06-23 12:17:42', '2017-07-13 06:58:14'),
(2227, 'B1xsU4SHAK7vesOdyQ170623072632', 'Nurin', '081330205815', 'riendhu@gmail.com', 1, '2017-06-23 12:26:32', '2017-07-13 06:58:14'),
(2228, 'PtOQyzCdEqhNIPWPCj170623083443', 'Karina', '082230888010', 'karinaniena@gmail.com', 1, '2017-06-23 13:34:43', '2017-07-13 06:58:14'),
(2229, 'yXr49T8bb7811FpFss170623091519', 'Awie', '085748944770', 'awiedi@yahoo.com', 1, '2017-06-23 14:15:19', '2017-07-13 06:58:14'),
(2230, 'zYs7uskr8AB9vj7tFa170623112017', 'Anissa', '0895601357016', 'Anissavella02@gmail.com', 1, '2017-06-23 16:20:17', '2017-07-13 06:58:14'),
(2231, 'g7YHzW7BBGuvmEuuWK170624072133', 'Fera andriani ', '087752876609', 'zisyha@gmail.com', 1, '2017-06-24 00:21:33', '2017-07-13 06:58:14'),
(2232, 'n6BUocY5ezl2xSE6Kf170624095756', 'indri', '08113322609', 'rahmiindria24@gmail.com', 1, '2017-06-24 02:57:56', '2017-07-13 06:58:14'),
(2233, 'PwDZdKqiidpulyilaQ170624095934', 'indri', '08113322609', 'rahmiindri24@gmail.com', 1, '2017-06-24 02:59:34', '2017-07-13 06:58:14'),
(2234, '5YpTAAUWmIbPtA2eV3170624011316', 'Siti Chusnuniyah Nuriya Rachmawati', '+6283856148117', 'nuriyarachmawati@gmail.com', 1, '2017-06-24 06:13:16', '2017-07-13 06:58:14'),
(2235, 'nCExACBMWLGCAAY6Tu170624031118', 'Ani Rachmahwati', '085230180603', 'anirachmahwati@gmail.com', 1, '2017-06-24 08:11:18', '2017-07-13 06:58:14'),
(2236, 'gzunRDcl7tHjkqOasb170624040557', 'Monika', '087788785255', 'monika.koesetyo@gmail.com', 1, '2017-06-24 09:05:57', '2017-07-13 06:58:14'),
(2237, 'k47seMppJPepTamNYi170624095712', 'sari ayu widowati', '083830764090', 'sariwidowati24@gmail.com', 1, '2017-06-24 14:57:12', '2017-07-13 06:58:14'),
(2238, 'fFKz3W0IiGa7mb9GCo170625094643', 'Vika', '081357849228', 'vikaayu30@gmail.com', 1, '2017-06-25 02:46:43', '2017-07-13 06:58:14'),
(2239, 'qjOXJ8sbvt91ysIcnD170625100854', 'Nisa', '081219241248', 'septi.Khairunnisa87@gmail.com', 1, '2017-06-25 03:08:54', '2017-07-13 06:58:14'),
(2240, 'oWu0bEiDllVbSZa7AL170625070011', 'fitri', '081938405610', 'fitrimomrinjani@gmail.com', 1, '2017-06-25 12:00:11', '2017-07-13 06:58:14'),
(2241, '86OfGJ8bHoY2fKMv2C170626011606', 'Meilan', '089626041220', 'rizkydwimeilansari@gmail.com', 1, '2017-06-26 06:16:06', '2017-07-13 06:58:14'),
(2242, '4dcOvUJwCjsC47Xnjf170626072003', 'Rozaqi', '085732543525', 'Rozaqi.fadzila@yahoo.com', 1, '2017-06-26 12:20:03', '2017-07-13 06:58:14'),
(2243, 'ax3p9krbiToknAvekJ170626083646', 'Arik', '081938212286', 'dwipurnama.wulandari@gmail.com', 1, '2017-06-26 13:36:46', '2017-07-13 06:58:14'),
(2244, '3ROEhl5sbfivagnZcx170627040257', 'Novi', '08123023973', 'javiershelma@gmail.com', 1, '2017-06-26 21:02:57', '2017-07-13 06:58:14'),
(2245, 'aEAUK05YfvkIz471db170627055504', 'dewiratnasari', '+6281332074099', 'dewiratnasari.nana@gmail.com', 1, '2017-06-26 22:55:04', '2017-07-13 06:58:14'),
(2246, 'Y1lJFKdCYNsZWBmDb9170627070932', 'siti noor dzukhiyyah', '082245630524', 'lulukdzukhiyyah@gmail.com', 1, '2017-06-27 00:09:32', '2017-07-13 06:58:14'),
(2247, 'tr6Odgxt1RTscJBXGq170627071655', 'luluk', '082245630524', 'lulukdzukhiyyah@gmail.com', 1, '2017-06-27 00:16:55', '2017-07-13 06:58:14'),
(2248, '2PbuI8SiIYE3cMGfpX170627080800', 'wahyu agus kurniawati as', '085649515313', 'yuania_5@yahoo.com', 1, '2017-06-27 01:08:00', '2017-07-13 06:58:14'),
(2249, 'bq3eZhPYpCi0IE9x0I170627060525', 'titin kurniati', '081216361148', 'ti2n_billa@yahoo.com', 1, '2017-06-27 11:05:25', '2017-07-13 06:58:14'),
(2250, 'KON2qHghDn5FRQ0Bo5170627101510', 'Laily', '085655109523', 'Lailimag@gmail.com', 1, '2017-06-27 15:15:10', '2017-07-13 06:58:14'),
(2251, '59ijvKM4oq7Xn4F8aM170628053925', 'Nurhuda', '089650422557', 'sayahuda.nh@gmail.com', 1, '2017-06-27 22:39:25', '2017-07-13 06:58:14'),
(2252, 'XQBvmG8HF8LcrFPXUN170628084824', 'AMDILLA', '085785887889', 'lapakamdilla@gmail.com', 1, '2017-06-28 13:48:24', '2017-07-13 06:58:14'),
(2253, 'golnohmOliEpS6ZObq170628112903', 'Ike Johan', '081233747770', 'ikejohan.undip@gmail.com', 1, '2017-06-28 16:29:03', '2017-07-13 06:58:14'),
(2254, 'fCnTcqJoPSQ4l3ZaJe170629020804', 'Putri', '081326248835', 'dwiputri76@yahoo.com', 1, '2017-06-29 07:08:04', '2017-07-13 06:58:14'),
(2255, 'zjzXJhn6Mvmbg9atoQ170629020847', 'yussi', '083831326549', 'you_she69@yahoo.co.id', 1, '2017-06-29 07:08:47', '2017-07-13 06:58:14'),
(2256, '4sMWEQNcfQUXln80Jy170629021412', 'Agustina', '085706644554', 'Cha2_cuitt@yahoo.com', 1, '2017-06-29 07:14:12', '2017-07-13 06:58:14'),
(2257, 'btCFalDZ815T4sNE2C170629034737', 'caca', '087852129899', 'ariantitasy@gmail.com', 1, '2017-06-29 08:47:37', '2017-07-13 06:58:14'),
(2258, 'C4jyaMA9B6pEjenTuc170629035627', 'yudha aziizah', '081231739441', 'chaaaaica@gmail.com', 1, '2017-06-29 08:56:27', '2017-07-13 06:58:14'),
(2259, 'e7Tos3LBCS4RfErYjo170629040303', 'aziizah', '081231739441', 'chaaaaica@gmail.com', 1, '2017-06-29 09:03:03', '2017-07-13 06:58:14'),
(2260, 'ELyVtb3aGPZorddbhP170629061422', 'Ade Idha', '081217786547', 'Adeida67@gmail.com', 1, '2017-06-29 11:14:22', '2017-07-13 06:58:14'),
(2261, 'JvKLqGykfJQ15zA2dH170629061933', 'Nur chanifa', '081331583740', 'nurchanifa151092@gmail.com', 1, '2017-06-29 11:19:33', '2017-07-13 06:58:14'),
(2262, '3QHv19a9wjIoW6zdqF170629090858', 'Hana Citantya ', '085850300015', 'HanaCitantya@yahoo.co.id', 1, '2017-06-29 14:08:58', '2017-07-13 06:58:14'),
(2263, '2NPmV7VHqDAIKSPrY2170629091813', 'Hana Citantya ', '085850300015', 'HanaCitantya@yahoo.co.id', 1, '2017-06-29 14:18:13', '2017-07-13 06:58:14'),
(2264, 'mbeGQvHCe54MsGyoJQ170629113335', 'Putri', '085733222330', 'keropiesweet@yahoo.com', 1, '2017-06-29 16:33:35', '2017-07-13 06:58:14'),
(2265, 'D7Vs4qaor7SWzioDgi170630064210', 'Whinda', '08563662844', 'whinda.ari@gmail.com', 1, '2017-06-29 23:42:10', '2017-07-13 06:58:14'),
(2266, 'ySiiFnMvLVOtdrDSOs170630114859', 'Desti', '08123285267', 'cikmutmblung@gmail.com', 1, '2017-06-30 04:48:59', '2017-07-13 06:58:14'),
(2267, 'zZ3Ck8MQF176ki17Np170630010432', 'Shita', '081234089976', 'Shita.hanani@gmail.com', 1, '2017-06-30 06:04:32', '2017-07-13 06:58:14'),
(2268, '4kI1sbPhRN2dVUNMFI170630040841', 'Mery Claudia', '08563020891', 'Meryclaudia14@gmail.com', 1, '2017-06-30 09:08:41', '2017-07-13 06:58:14'),
(2269, 'vOCwIPbXHcPwfvlRND170630065110', 'ressy', '081231823151', 'ressy.mardiyanti@gmail.com', 1, '2017-06-30 11:51:10', '2017-07-13 06:58:14'),
(2270, 'IWeIO7t7iXobG0kbzx170630071057', 'Rika ambar k', '085704684234', 'Rikaambarkrisnawati@gmail.com', 1, '2017-06-30 12:10:57', '2017-07-13 06:58:14'),
(2271, 'lkXsMB0A7KIdzvaGbi170630080458', 'Mega', '081233765935', 'megagreen26@gmail.com', 1, '2017-06-30 13:04:58', '2017-07-13 06:58:14'),
(2272, 'cu8eOpVxSAvECbW4l8170630082205', 'lilis', '082140380007', 'liezup9401@gmail.com', 1, '2017-06-30 13:22:05', '2017-07-13 06:58:14'),
(2273, 'EXaNbHYPm4HvCCRqqf170630082254', 'lilis', '082140380007', 'liezup9401@gmail.com', 1, '2017-06-30 13:22:54', '2017-07-13 06:58:14'),
(2274, 'PwCIFyF5Wv7b02k3Hx170630112117', 'Mega', '081233765932', 'megagreen26@gmail.com', 1, '2017-06-30 16:21:17', '2017-07-13 06:58:14'),
(2275, 'QA41M5e52nwkCMjo28170701124050', 'Ajeng', '081233161296', 'Ajengputri.987@gmail.com', 1, '2017-06-30 17:40:50', '2017-07-13 06:58:14'),
(2276, '2sdAiknZGMwfuJ9aeT170701075043', 'Fajar Afifah', '082114672009', 'tikaavi@yahoo.co.id', 1, '2017-07-01 00:50:43', '2017-07-13 06:58:14'),
(2277, 'wjMtSEJjX7sn1uXnVQ170701081306', 'aziizah', '081231739441', 'chaaaaica@gmail.com', 1, '2017-07-01 01:13:06', '2017-07-13 06:58:14'),
(2278, 'eMjsQnM8q42yQbBPeY170701085924', 'Rika ambar', '085704684234', 'Rikaambarkrisnawati@gmail.com', 1, '2017-07-01 01:59:24', '2017-07-13 06:58:14'),
(2279, 'QVBQountXJ5ePGhiKu170701094100', 'Winda', '081231187472', 'windalusia@gmail.com', 1, '2017-07-01 02:41:00', '2017-07-13 06:58:14'),
(2280, 'XdKp1ej7HurhKmquNi170701094542', 'Winda', '081231187472', 'windalusia@gmail.com', 1, '2017-07-01 02:45:42', '2017-07-13 06:58:14'),
(2281, 'Rny4SRN7d5liCIGPIm170701103522', 'Wahyu ak', '085649515313', 'yuania_5@yahoo.com', 1, '2017-07-01 03:35:22', '2017-07-13 06:58:14'),
(2282, 'O2JcJAYq8lqAiuIbbw170701121817', 'Oni wulandari', '081217126798', 'nonipaboo@gmail.com', 1, '2017-07-01 05:18:17', '2017-07-13 06:58:14'),
(2283, 'Lm3VHFRKbkgWhdC6iO170701012625', 'Ama', '087853771724', 'Ama_swift@yahoo.com', 1, '2017-07-01 06:26:25', '2017-07-13 06:58:14'),
(2284, 'HdVPYRCObfhsWRCoxw170701032930', 'Lyla Rahmah kumala ', '081515170156', 'lylarahmah80@gmil.com', 1, '2017-07-01 08:29:30', '2017-07-13 06:58:14'),
(2285, 'bhNbt6BEqC63BCAqyU170701034802', 'Lita', '081334482434', 'idaarlitawulandari@gmail.com', 1, '2017-07-01 08:48:02', '2017-07-13 06:58:14'),
(2286, '8hikJwbxEXaA4IgjfJ170701075606', 'Nurul', '089633161711', 'Pendrinurul@gmail.com', 1, '2017-07-01 12:56:06', '2017-07-13 06:58:14'),
(2287, 'yALpZ6XPwsEjTy7Uau170701082516', 'Novita dian valusi', '085730171615', 'deean_vals@yahoo.com', 1, '2017-07-01 13:25:16', '2017-07-13 06:58:14'),
(2288, 'KmtzPPe14nZ2lho2bh170701082613', 'Novita dian', '085730171615', 'deean_vals@yahoo.com', 1, '2017-07-01 13:26:13', '2017-07-13 06:58:14'),
(2289, '0y3DBMUE7Qi6bJUVoV170701100154', 'Devi Eka Yuniarti', '083831100409', 'yuniartidevieka@yahoo.com', 1, '2017-07-01 15:01:54', '2017-07-13 06:58:14'),
(2290, 'VStGua5vCdAM1JWuAb170702112332', 'Yulia', '081232243663', 'r.noenee@gmail.com', 1, '2017-07-02 04:23:32', '2017-07-13 06:58:14'),
(2291, 'Ds5n6WufpHO6kMscJF170702024041', 'Virly rahmawati', '087854379424', 'Virlyrhmwt@gmail.com', 1, '2017-07-02 07:40:41', '2017-07-13 06:58:14'),
(2292, '9JcCtlDsUilvKtkpGv170703021829', 'niken', '081331700457', 'niken.wp@gmail.com', 1, '2017-07-02 19:18:29', '2017-07-13 06:58:14'),
(2293, 't6YzEzBQRXfpid4x6b170703094010', 'syahnana', 'dewirantangsari@gmail.com', 'dewirantangsari@gmail.com', 1, '2017-07-03 02:40:10', '2017-07-13 06:58:14'),
(2294, 'OUkMrNwThnsHnZ74bu170703100329', 'Mega Yuwana Putri', '082257095339', 'putri.mega580@yahoo.com', 1, '2017-07-03 03:03:29', '2017-07-13 06:58:14'),
(2295, 'QKv5pFE0LpLfMPznyN170703102646', 'Aftin', '081217668466', 'cleopeter89@hotmail.com', 1, '2017-07-03 03:26:46', '2017-07-13 06:58:14'),
(2296, 'NvTVlJ5l51eqsiGK7P170703111427', 'Chaca Oktaviani', '082186888401', 'Chacaoktaviani58@yahoo.com', 1, '2017-07-03 04:14:27', '2017-07-13 06:58:14'),
(2297, 'LhpwgQVs1bLt4ALVih170703011843', 'santi', '083857040999', 'susanti.iis10@gmail.com', 1, '2017-07-03 06:18:43', '2017-07-13 06:58:14'),
(2298, 'dH7glWOTTzQBFn3QM4170703053317', 'maftuchatul nujum ', '085646104115', 'Jumiechan165@gmail.com', 1, '2017-07-03 10:33:17', '2017-07-13 06:58:14'),
(2299, 'pxwLdcVxFrRRXjf3Ah170703062245', 'Chintia', '081232923435', 'chintasarah1@gmail.com', 1, '2017-07-03 11:22:45', '2017-07-13 06:58:14'),
(2300, '82XjcaKD3VWG696255170703072837', 'nuryani', '081554330313', 'yanialbarra79@gmail.com', 1, '2017-07-03 12:28:37', '2017-07-13 06:58:14'),
(2301, 'yeCvU8SS2uSWqHcWXf170703072957', 'nuryani', '081554330313', 'yanialbarra79@gmail.com', 1, '2017-07-03 12:29:57', '2017-07-13 06:58:14'),
(2302, 'jftRkawd7T4TFEEDbE170703114204', 'Novitri w', '082226053399', 'nvitri.wdn@gmail.com', 1, '2017-07-03 16:42:04', '2017-07-13 06:58:14'),
(2303, 'bk9esp3DELY8VSWwdp170704121924', 'Ela', '08125200675', 'lelarosita95@yahoo.com', 1, '2017-07-03 17:19:24', '2017-07-13 06:58:14'),
(2304, 'Xs8yesnm0LrL1RLRKg170704081140', 'Mutia rachmania', '81235969677', 'mutia.rachmania1001@gmail.com', 1, '2017-07-04 01:11:40', '2017-07-13 06:58:14'),
(2305, 'CGilxxwWNGKjan8zNe170704092456', 'aulya', '085651155652', 'aulya.afifah@gmail.com', 1, '2017-07-04 02:24:56', '2017-07-13 06:58:14'),
(2306, 'zVb7FKIozTCjA4MzRn170704095121', 'Debora', '08993933311', 'dazzlingdebby@gmail.com', 1, '2017-07-04 02:51:21', '2017-07-13 06:58:14'),
(2307, 'DZEVcGrxzACTbp9ALn170704104659', 'sukma', '083857865670', 'nyumi90.sukma@gmail.com', 1, '2017-07-04 03:46:59', '2017-07-13 06:58:14'),
(2308, 'VvxRyslBMEuSQ6MxHi170704035004', 'binti muthoharoh', '087703143104', 'maherherbal@gmail.com', 1, '2017-07-04 08:50:04', '2017-07-13 06:58:14'),
(2309, 'sLtITAdI4q3hZ3jdcE170704093834', 'novita dwi ', '08563475030', 'novitadwirachma@gmail.com', 1, '2017-07-04 14:38:34', '2017-07-13 06:58:14'),
(2310, 'ioVWUYwt8LmE3yLnkN170704100409', 'lexi', '085730231919', 'ponie29ling@gmail.com', 1, '2017-07-04 15:04:09', '2017-07-13 06:58:14'),
(2311, 'DNXHgzd0I53vRAVFQT170704110912', 'Kun marifatin', '08175137273', 'k_marifatin@yahoo.co.id', 1, '2017-07-04 16:09:12', '2017-07-13 06:58:14'),
(2312, 'ziphqf0Ic4mp27cSdJ170704112208', 'Linda lutfia', '085655794459', 'Lynda_lutfia@ymail.com', 1, '2017-07-04 16:22:08', '2017-07-13 06:58:14'),
(2313, 'Tn6RmzW3v6N2TmiWfY170704112740', 'daiyinta', '085235488500', 'princess.aiyinta311@gmail.com', 1, '2017-07-04 16:27:40', '2017-07-13 06:58:14'),
(2314, '68Hf48LYqlalZ5mdvS170704112955', 'Rhyna', '082230011761', 'Rynawati_gold22@yahoo.co.id', 1, '2017-07-04 16:29:55', '2017-07-13 06:58:14'),
(2315, 'h282QTEoWBVxWFmN6h170704113213', 'ruli ferdiansah', '081230169533', 'tolisindopersada@gmail.com', 1, '2017-07-04 16:32:13', '2017-07-13 06:58:14'),
(2316, 'Bll92v4Em0VdJGSD0I170705120230', 'erika dwi', '082244427572', 'er1ch452@yahoo.com', 1, '2017-07-04 17:02:30', '2017-07-13 06:58:14'),
(2317, 'fM1GtiCLU8jNORX70H170705120458', 'Musrifah', '085648286410', 'musrifahcs@yahoo.com', 1, '2017-07-04 17:04:58', '2017-07-13 06:58:14'),
(2318, 'bZpNaZEyMUP86HqC8H170705120708', 'faidah kurniawati', '085731967269', 'faidah.kurnia@gmail.com', 1, '2017-07-04 17:07:08', '2017-07-13 06:58:14'),
(2319, '3onajx61KD3kwnEnz6170705011119', 'Susi ariyani', '083857979710', 'susiaryani33@gmail.com', 1, '2017-07-04 18:11:19', '2017-07-13 06:58:14'),
(2320, 'dqQZb4UXAywLDRHQAh170705045622', 'Mariyanti pudji astutik', '081703360248', 'Mariyantipudjiastutik@yahoo.co.id', 1, '2017-07-04 21:56:22', '2017-07-13 06:58:14'),
(2321, 'WLqkILo4LRZ9Rk9EFp170705063929', 'Nofia', '08883008927', 'nofianofia@gmail.com', 1, '2017-07-04 23:39:29', '2017-07-13 06:58:14'),
(2322, 'kkLbcas6FIUAMe5v3a170705082037', 'Sari', '083830552181', 'Mamazhivara@gmail.com', 1, '2017-07-05 01:20:37', '2017-07-13 06:58:14'),
(2323, '8Rz9XcYlb407tua2c5170705092859', 'Sherly', '082140800762', 'encillolipop@gmail.com', 1, '2017-07-05 02:28:59', '2017-07-13 06:58:14'),
(2324, 'U05Ax7ZW47Zf6pZFwv170705095946', 'Gresty Febrina', '08175279786', 'krrr.miaow@gmail.com', 1, '2017-07-05 02:59:46', '2017-07-13 06:58:14'),
(2325, 'bSU5hyBinARkfLTlMx170705101240', 'Aini', '08995953493', 'Ainibasri5@gmail.com', 1, '2017-07-05 03:12:40', '2017-07-13 06:58:14'),
(2326, 'NX8tDBvrEiw1aiYQGf170705110146', 'Retno', '081232454764', 'Budiartiretno91@yahoo.com', 1, '2017-07-05 04:01:46', '2017-07-13 06:58:14'),
(2327, 'Dt8wTfTnJu5iivbomD170705114702', 'faidah kurniawati', '085731967269', 'faidah.kurniawati@yahoo.com', 1, '2017-07-05 04:47:02', '2017-07-13 06:58:14'),
(2328, '1yyjeiTOyBzIa2o7Sy170705011928', 'lala', '08155220992', 'septhi.anaa@gmail.com', 1, '2017-07-05 06:19:28', '2017-07-13 06:58:14'),
(2329, 'mv0mYZyJHtosenWYio170705020306', 'NISA', '081330717084', 'nysa_ais@yahoo.com', 1, '2017-07-05 07:03:06', '2017-07-13 06:58:14'),
(2330, '5cQLfAynRf0RyYtvdm170705035630', 'Rizqiyatul Mudawwamah', '081342575301', 'rizqiyatul.mudawwamah@gmail.com', 1, '2017-07-05 08:56:30', '2017-07-13 06:58:14'),
(2331, 'KyKAZkEJ9KwJhuxuhv170705063543', 'norma', '085649175626', 'norma.alfh@gmail.com', 1, '2017-07-05 11:35:43', '2017-07-13 06:58:14'),
(2332, 'eKu8ZMi1N0HFfOZatN170705070316', 'Kiki', '082244474803', 'Halaliyah15@gmail.com', 1, '2017-07-05 12:03:16', '2017-07-13 06:58:14'),
(2333, 'PLkEc7lJall9aVeP2L170705075107', 'Fenty Fumiaty', '081213944641', 'fentyfumiaty01@gmail.com', 1, '2017-07-05 12:51:07', '2017-07-13 06:58:14'),
(2334, '4Mw9veDWj0QezKbw79170705091024', 'Peppie', '085325009000', 'Peppiefebrilina@yahoo.com.sg', 1, '2017-07-05 14:10:24', '2017-07-13 06:58:14'),
(2335, 'vBmfnyNAQ5TvDcuxBg170706125206', 'Febri Gisella', '081233792268', 'msfebrigisella@gmail.com', 1, '2017-07-05 17:52:06', '2017-07-13 06:58:14'),
(2336, '83OVBKY4JVezyeO1dD170706062032', 'raran suci lestari', '085736001015', 'raransucilestari@gmail.com', 1, '2017-07-05 23:20:32', '2017-07-13 06:58:14'),
(2337, 'o7cjT769RiMoNzlnHB170706063542', 'Yani', '08123013264', 'n.suryaningtyas@gmail.com', 1, '2017-07-05 23:35:42', '2017-07-13 06:58:14'),
(2338, '9FH0Pe7XiYi3j0aEcV170706073127', 'Ditya', '081331103797', 'dityamd@yahoo.co.id', 1, '2017-07-06 00:31:27', '2017-07-13 06:58:14'),
(2339, 'ZKML44OduYhPMbxTgs170706084215', 'oktafiana', '082257470154', 'oktafiananurhidayati@gmail.com', 1, '2017-07-06 01:42:15', '2017-07-13 06:58:14'),
(2340, 'tsduA4dz3pHFhYBVIq170706084510', 'Nailah', '081 235236886', 'Seppy_xxx@yahoo.com', 1, '2017-07-06 01:45:10', '2017-07-13 06:58:14'),
(2341, '6J3HGdm1yXGeofuCeq170706102555', 'ANA HARIYATI', '081331177115', 'anahariyati@yahoo.com', 1, '2017-07-06 03:25:55', '2017-07-13 06:58:14'),
(2342, 'Ay16XmO1zpQT9SKya8170706124625', 'dian hernaeny putri', '08155377427', 'dian.hernaeny@gmail.com', 1, '2017-07-06 05:46:25', '2017-07-13 06:58:14'),
(2343, 'uJmZ0p4ErZuvNp0pWV170706125430', 'Widayanti Ishak', '081331153095', 'w33ydha@gmail.com', 1, '2017-07-06 05:54:30', '2017-07-13 06:58:14'),
(2344, 'TaYUNcHzESvIX6BDg4170706020120', 'Siti Wahyuni ', '082139369369', 'city_yuni1983@yahoo.co.id', 1, '2017-07-06 07:01:20', '2017-07-13 06:58:14'),
(2345, 'g9NYS7N911tsv71nAV170706020814', 'Olga Elvira', '081235952241', 'a.hvie76@gmail.com', 1, '2017-07-06 07:08:14', '2017-07-13 06:58:14'),
(2346, 'QO6N2bwA1rvUjdDvsw170706042927', 'Semby', '082233034442', 'Sembyfrazanuar@gmail.com', 1, '2017-07-06 09:29:27', '2017-07-13 06:58:14'),
(2347, 'vFpQyo81YOUzVFsFzF170706093543', 'Nur Chanifa Wahyulis', '081331583740', 'nurchanifa151092@gmail.com', 1, '2017-07-06 14:35:43', '2017-07-13 06:58:14'),
(2348, 'HU5btQW11pK9joG1ly170706105445', 'Nurcahyanih ', '081222330347', 'Littlestarloveastro11@gmail.com', 1, '2017-07-06 15:54:45', '2017-07-13 06:58:14'),
(2349, 'bj5UPoDfWTbh4FCtH1170707082037', 'ayu', '0857373737150', 'cepetcepetcepet@gmail.com', 1, '2017-07-07 01:20:37', '2017-07-13 06:58:14'),
(2350, 'oVroxMzkQhrTrAfinu170707095800', 'Dila', '08123114368', 'Namakudila@yahoo.com', 1, '2017-07-07 02:58:00', '2017-07-13 06:58:14'),
(2351, 'nInP3GSwqakSaqCXou170707103252', 'Nimatus', '085733155793', 'nimatus2205@gmail.com', 1, '2017-07-07 03:32:52', '2017-07-13 06:58:14'),
(2352, 'iq1vob51kQKH33n5gv170707104743', 'Rina Mawarti', '082330715433', 'mawar.rhinna4513@gmail.com', 1, '2017-07-07 03:47:43', '2017-07-13 06:58:14'),
(2353, 'YVjpquGk6LawViG7rR170707110732', 'Luqi', '085732962236', 'Chuluqilchasanah@gmail.com', 1, '2017-07-07 04:07:32', '2017-07-13 06:58:14'),
(2354, 'PzhPcI79M7o5D165F1170707111404', 'ZAHRIT SOFYA', '085854208349', 'sofyazahrit@gmail.com', 1, '2017-07-07 04:14:04', '2017-07-13 06:58:14'),
(2355, 'uDciwsYObJ6hhWAwq5170707115134', 'April', '085746684231', 'aprillianuristanti@yahoo.co.id', 1, '2017-07-07 04:51:34', '2017-07-13 06:58:14'),
(2356, 'GYdIBpkLXSucWWVjfz170707120436', 'hadijah', '081703443082', 'HHADIJAH8@GMAIL.COM', 1, '2017-07-07 05:04:36', '2017-07-13 06:58:14'),
(2357, 'PsVy0ndrpliv32Huno170707124628', 'qibtiyah', '085648601744', 'qibtiyahzae@gmail.com', 1, '2017-07-07 05:46:28', '2017-07-13 06:58:14'),
(2358, '0PoBZAHNpNGHQaxTPa170707021123', 'neny', '0821-3980-3585', 'neny4492@gmail.com', 1, '2017-07-07 07:11:23', '2017-07-13 06:58:14'),
(2359, 'q7hRGI0NYmPSHmSYbU170707030753', 'Artiyanti Octora ', '081807713694', 'a_y_octora@yahoo.com', 1, '2017-07-07 08:07:53', '2017-07-13 06:58:14'),
(2360, '9B0wGmFegKcPPY4hoE170707042202', 'Chumairoh', '085648734465', 'chumairohas@gmail.com', 1, '2017-07-07 09:22:02', '2017-07-13 06:58:14'),
(2361, 'KgdN6DXbaNQGBgxiso170707043952', 'Nur Kholifah', '085733775580', 'nurkholifah726@gmail.com', 1, '2017-07-07 09:39:52', '2017-07-13 06:58:14'),
(2362, 'OaFFxJtgpeAcqblFJB170707095037', 'Septy ayu pravita', '085733324900', 'septy_pravita15@yahoo.com', 1, '2017-07-07 14:50:37', '2017-07-13 06:58:14'),
(2363, 'Wvyb9oJbcbNcWaa3ja170707101720', 'Yohanna', '081232203888', 'Yohannaeka@ymail.com', 1, '2017-07-07 15:17:20', '2017-07-13 06:58:14'),
(2364, 'fsR1sAfN09tFXunTIp170708083014', 'Fani', '083856762336', 'Ifani.k50@gmail.com', 1, '2017-07-08 01:30:14', '2017-07-13 06:58:14'),
(2365, 'HSiRGFnONfps1OwUcj170708105815', 'Hadijah', '081703443082', 'hhadijah8@gmail.com', 1, '2017-07-08 03:58:15', '2017-07-13 06:58:14'),
(2366, 'kY4LUlDFd5ARg4CRBG170708115521', 'mia', '081938118628', 'mahmiah@gmail.com', 1, '2017-07-08 04:55:21', '2017-07-13 06:58:14'),
(2367, 'e62x4dEjof24WFdQx6170708022359', 'Siti mariana', '081216648846', 'putraputri.pp610@gmail.com', 1, '2017-07-08 07:23:59', '2017-07-13 06:58:14'),
(2368, 'UpeoKtAebIgyhBqcR4170708022427', 'Ervin', '0811378370', 'ervinsetiyorini@yahoo.com', 1, '2017-07-08 07:24:27', '2017-07-13 06:58:14'),
(2369, 'lMAAMy3oyt4tZ1RHVn170708032052', 'feni indrawati ', '087885518964', 'feni_090131@yahoo.co.id', 1, '2017-07-08 08:20:52', '2017-07-13 06:58:14'),
(2370, 'V8RaL5KfNp1ChpFfGB170708032607', 'Nia', '081294387821', 'Nia.kurniaty23@gmail.com', 1, '2017-07-08 08:26:07', '2017-07-13 06:58:14'),
(2371, 'BeAk6FAS2r464haTrR170708052510', 'Diah', '08113453424', 'Diahyuniarti74@gmail.com', 1, '2017-07-08 10:25:10', '2017-07-13 06:58:14'),
(2372, 'kBkN6Q47Lvk0m7vQJU170708093413', 'YULIA', '085853388690', 'yulia.mukaromah@gmail.com', 1, '2017-07-08 14:34:13', '2017-07-13 06:58:14'),
(2373, 'CSiZ9WvgivZ3EW7fsY170708095217', 'Sanditya', '081331587770', 'Sandityaanggreini@gmail.com', 1, '2017-07-08 14:52:17', '2017-07-13 06:58:14'),
(2374, 'JxBl0ifhU7fH40BvN3170708115505', 'nensi', '085790999867', 'nensimuswati@gmail.com', 1, '2017-07-08 16:55:05', '2017-07-13 06:58:14'),
(2375, 'Lx0fV16EHEJkjaZz1s170708115731', 'nensi', '085790999867', 'nensimuswati@gmail.com', 1, '2017-07-08 16:57:31', '2017-07-13 06:58:14'),
(2376, 'b6JCA28R6D86Ga8qbA170709085826', 'Sulis', '089636994519', 'stiawati8@gmail.com', 1, '2017-07-09 01:58:26', '2017-07-13 06:58:14'),
(2377, '3HmnUcvFL5nudRh5Gt170709124809', 'Hanifah dillah', '085851290562', 'dillah667@gmail.com', 1, '2017-07-09 05:48:09', '2017-07-13 06:58:14'),
(2378, 'ORlQ4OduGGWnqKCP7i170709051035', 'Valent', '085645233352', 'valentine.aqwarinna.gempita@gmail.com', 1, '2017-07-09 10:10:35', '2017-07-13 06:58:14'),
(2379, 'p8KhW6nhrybGHomZk6170709064842', 'Ikwanjuminda', '0857-3000-7832', 'jumindai@gmail.com', 1, '2017-07-09 11:48:42', '2017-07-13 06:58:14'),
(2380, 'NZ7pJNMsmxogPL5AZt170709100039', 'Linda', '081803033779', 'Lindanenggeulis21@gmail.com', 1, '2017-07-09 15:00:39', '2017-07-13 06:58:14'),
(2381, 'VkMmkR6xqz6JCxw4Qj170709101658', 'Afifah', '082257675859', 'ifa.fafiby@gmail.com', 1, '2017-07-09 15:16:58', '2017-07-13 06:58:14'),
(2382, 'RnIwXirIy1yA7kaaQr170710011342', 'Rida', '089659607839', 'ridamambrasar12@yahoo.com', 1, '2017-07-09 18:13:42', '2017-07-13 06:58:14'),
(2383, 'm7dTikjCtbU0dpq6mh170710052429', 'nietaff', '08785077352', 'nietaff@yahoo.com', 1, '2017-07-09 22:24:29', '2017-07-13 06:58:14'),
(2384, 'SCe4CzzNr1ohT8P1gg170710061455', 'Nana maulida', '081230429029', 'maulidach4n@gmail.com', 1, '2017-07-09 23:14:55', '2017-07-13 06:58:14'),
(2385, 'fYIbFnHUFrPoDhoZFT170710072339', 'nietaff', '087856097342', 'nietaff@yahoo.com', 1, '2017-07-10 00:23:39', '2017-07-13 06:58:14'),
(2386, 'w9m3JuItd1dQ92aXzM170710073410', 'primalia andini', '081252417087', 'andini.primalia@gmail.com', 1, '2017-07-10 00:34:10', '2017-07-13 06:58:14'),
(2387, 'v4LZcvuaBQaOpo1oLr170710091551', 'nysa', '081330717084', 'nysa_ais@yahoo.com', 1, '2017-07-10 02:15:51', '2017-07-13 06:58:14'),
(2388, 'Ci3EzmFXuTLsd3LbvB170710100155', 'susanti', '085732497333', 'ningrumsusanti92@gmail.com', 1, '2017-07-10 03:01:55', '2017-07-13 06:58:14'),
(2389, '5ngJ4EBtbyV7z271II170710021815', 'Tanty ayu', '0895321989093', 'ayfass4ver@gmail.com', 1, '2017-07-10 07:18:15', '2017-07-13 06:58:14'),
(2390, '8Z8WruyF42NgnJmrFu170710035835', 'Nadia', '0818307049', 'nadia.haninda99@gmail.com', 1, '2017-07-10 08:58:35', '2017-07-13 06:58:14'),
(2391, 'AAoeI83xF7hsf1i7bd170710051919', 'Nurhayati', '081231990785', 'noernurhayati@gmail.com', 1, '2017-07-10 10:19:19', '2017-07-13 06:58:14'),
(2392, 'KAm5uRBZzwDju8BHvJ170710052210', 'niken', '08123169935', 'nikenab403@gmail.com', 1, '2017-07-10 10:22:10', '2017-07-13 06:58:14'),
(2393, 'W4ocwt9GW0qL8FZDxX170710062317', 'Dj', '089686320763', 'dije.ekakun@gmail.com', 1, '2017-07-10 11:23:17', '2017-07-13 06:58:14'),
(2394, 'dvS0WQHZFt7cYjpbCq170710064852', 'Nana', '085646451284', 'Nikianugra@gmail.com', 1, '2017-07-10 11:48:52', '2017-07-13 06:58:14'),
(2395, 'lFHOHpk1VMVomnj0Y6170710073246', 'Nurul inayah', '082338222446', 'Aryanurrijal0402@gmail.com', 1, '2017-07-10 12:32:46', '2017-07-13 06:58:14'),
(2396, '6j8KpKcnD7ulwduP1N170710090000', 'Sita', '0816529510', 'Sitasetyowatie@gmail.com', 1, '2017-07-10 14:00:00', '2017-07-13 06:58:14'),
(2397, '3QPBmDMOJmuckGEpoK170711081848', 'Izmi arsyika', '085958999661', 'Izmi_arsyika@gmail.com', 1, '2017-07-11 01:18:48', '2017-07-13 06:58:14'),
(2398, '6jCuSjV8zMx4g7jhEY170711103238', 'marianne', '082231395643', 'mariann3.andr3@gmail.com', 1, '2017-07-11 03:32:38', '2017-07-13 06:58:14'),
(2399, 'lfnCnK9ANJRf4MXTkA170711105038', 'Dewi safitri kamaly', '082244456975', 'Dewikamaly@gmail.com', 1, '2017-07-11 03:50:38', '2017-07-13 06:58:14'),
(2400, 'q6NUHceU1kdjLECyqK170711114836', 'santike', '083830962500', 'santike03@gmail.com', 1, '2017-07-11 04:48:36', '2017-07-13 06:58:14'),
(2401, '07Olj2LBEGoOtijFPk170711124127', 'KUN MARIFATIN', '08175137273', 'kun.nawata17@gmail.com', 1, '2017-07-11 05:41:27', '2017-07-13 06:58:14'),
(2402, 'scAwWDc51IQpj5JaXJ170711012922', 'Ibi', '081287618550', 'Learnwithibi@gmail.com', 1, '2017-07-11 06:29:22', '2017-07-13 06:58:14'),
(2403, 'E09l2qp1OequQXFFVG170711025024', 'tisyani feidiaty', '08123077201', 'tisyani.feidiaty@yahoo.com', 1, '2017-07-11 07:50:24', '2017-07-13 06:58:14'),
(2404, '7eCkTsSlFXrNnzyiRf170711025210', 'Ruri indah', '085102662446', 'ruriindah@ymail.com', 1, '2017-07-11 07:52:10', '2017-07-13 06:58:14'),
(2405, 'BCvCj3OuseE9tmkvsz170711025756', 'Risa', '081803111868', 'risaamaliamaulani@gmail.com', 1, '2017-07-11 07:57:56', '2017-07-13 06:58:14'),
(2406, 'FYkIJi3seFXCXF83WQ170711040523', 'Tri Novitasari*', '081703232530*', 'Vita_jutek@yahoo.co.id', 1, '2017-07-11 09:05:23', '2017-07-13 06:58:14'),
(2407, 'ZG8lI0wqh2l9jJ5ky2170711092942', 'yuyun widowati', '081357332567', 'yuyunwidowati36@gmail.com', 1, '2017-07-11 14:29:42', '2017-07-13 06:58:14'),
(2408, 'OvaiAUlS5VshfVlDfL170711100306', 'Diana nur cholida ', '??+62 812 33227700??', 'diananurcholida@gmail.com', 1, '2017-07-11 15:03:06', '2017-07-13 06:58:14'),
(2409, 'YX1aYumDQ4qaLH3AVF170711105627', 'Anik ', '085850906004', 'anikhendra1011@gmail.com', 1, '2017-07-11 15:56:27', '2017-07-13 06:58:14'),
(2410, 'LWtMGwUy5HoVaYvl9J170712041808', 'Indah Rahmawati', '082257167487', 'rahmaindahastrida@gmail.com', 1, '2017-07-11 21:18:08', '2017-07-13 06:58:14'),
(2411, '2jE8bEWevHjzS1y7bw170712091515', 'Paradita nadira larasati', '0811392703', 'Paradita.nadira@gmail.com', 1, '2017-07-12 02:15:15', '2017-07-13 06:58:14'),
(2412, 'VzQzwOdUoXIl7unQB6170712091626', 'Paradita nadira larasati', '0811392703', 'Paradita.nadira@gmail.com', 1, '2017-07-12 02:16:26', '2017-07-13 06:58:14'),
(2413, '7ABQOVcRD69oUTO6wL170712092355', 'Maggie Anastasia', '082330045005', 'Ma66Ie_anzt@yahoo.com', 1, '2017-07-12 02:23:55', '2017-07-13 06:58:14'),
(2414, 'W6diWvu4mp6ukjB0W3170712092503', 'Khayrunnisa', '085784181866', 'Necca.cute@gmail.com', 1, '2017-07-12 02:25:03', '2017-07-13 06:58:14'),
(2415, 'mu7qr1OubgVDAgN6Eu170712093652', 'MIFTAKHUL FITRIYA', '082244407176', 'fitriyamiftakhul@gmail.com', 1, '2017-07-12 02:36:52', '2017-07-13 06:58:14'),
(2416, 'qzgGtxlatC6KMncGk3170712094058', 'Ratna Puri Prameswari', '081333658732', 'ratnapuri61@gmail.com', 1, '2017-07-12 02:40:58', '2017-07-13 06:58:14'),
(2417, 'pJjWqZsLeWFS3SN3GF170712095321', 'Nsjsks', '08180382917791', 'Coldanov@gmail.com', 1, '2017-07-12 02:53:21', '2017-07-13 06:58:14'),
(2418, 'tLyGKKkqak5sFGdBfF170712100158', 'Desy', '082257288742', 'desypratiwi39@yahoo.co.id', 1, '2017-07-12 03:01:58', '2017-07-13 06:58:14'),
(2419, 'AyNlSNo2WDcXYO2IcR170712100959', 'Alfinatery', '08977231944', 'Alfinatery@yahoo.com', 1, '2017-07-12 03:09:59', '2017-07-13 06:58:14'),
(2420, 'RB2LkqBXdkDaacd4v8170712101028', 'Alfinatery', '08977231944', 'Alfinatery@yahoo.com', 1, '2017-07-12 03:10:28', '2017-07-13 06:58:14'),
(2421, 'BjFnUtkRG8sal152BG170712101531', 'Yuli', '081217919119', 'Yulirhomala@gmail.com', 1, '2017-07-12 03:15:31', '2017-07-13 06:58:14'),
(2422, 'GFhiFaVyhphuRE0S76170712101809', 'Estu Lestari ', '081232674915 ', 'estulestary05@gmail.com', 1, '2017-07-12 03:18:09', '2017-07-13 06:58:14'),
(2423, 'olzOT0N3jHfUXyIYzo170712104134', 'Nabila', '087854847244', 'nabila.ghasyany@gmail.com', 1, '2017-07-12 03:41:34', '2017-07-13 06:58:14'),
(2424, '1duFKxtl4E9MdorrWj170712110004', 'Farika', '081333352472', 'Adnanberlian23@gmail.com', 1, '2017-07-12 04:00:04', '2017-07-13 06:58:14'),
(2425, 'q9hOrPNUXnymtVHdnf170712110444', 'dea', '082145876932', 'deapurnelia_s@yahoo.co.id', 1, '2017-07-12 04:04:44', '2017-07-13 06:58:14'),
(2426, 'R9Ik4fuOyxsVJyPdHN170712111853', 'retno', '082257566990', 'retnoanj2101@gmail.com', 1, '2017-07-12 04:18:53', '2017-07-13 06:58:14'),
(2427, 'skprtXMMhgZUvjMG5x170712112928', 'Diyan Harini', '081231062772', 'diyanharini@gmail.com', 1, '2017-07-12 04:29:28', '2017-07-13 06:58:14'),
(2428, 'qsAH4mKTKVWzXhlpE9170712114314', 'Ira', '081216486800', 'iravori@gmail.com', 1, '2017-07-12 04:43:14', '2017-07-13 06:58:14'),
(2429, 'MTVjcEAMJ2nfJ5Hh2T170712114443', 'Eriza', '081334626251', 'erizatutarina@gmail.com', 1, '2017-07-12 04:44:43', '2017-07-13 06:58:14'),
(2430, 'XqoTW2CbyWLSgoRjG5170712120731', 'Tina', '085755392231', 'tin_yus@yahoo.com', 1, '2017-07-12 05:07:31', '2017-07-13 06:58:14'),
(2431, 'IlTmA6xn8rUpPZyIOP170712121757', 'Triwahyuni', '08175167716', 'twhyuni295@gmail.com', 1, '2017-07-12 05:17:57', '2017-07-13 06:58:14'),
(2432, 'FPGW9SpaOauNcTHP1S170712122211', 'hersa', '087853130211', 'ManiezZ.echa@yahoo.co.id', 1, '2017-07-12 05:22:11', '2017-07-13 06:58:14'),
(2433, 'LKzknNUxipx381HBZH170712122230', 'Ayu widayanti', '085785949200', 'Ayuwidayanti35@yahoo.co.id', 1, '2017-07-12 05:22:30', '2017-07-13 06:58:14'),
(2434, 'aKtaLoEpSKUWafPfWe170712124816', 'Nikmah', '085259090290', 'nmasruroh@yahoo.com', 1, '2017-07-12 05:48:16', '2017-07-13 06:58:14'),
(2435, '7T6RCOjwUFHj8hEcFe170712125326', 'lia', '085648186153', 'liachoirul202@gmail.com', 1, '2017-07-12 05:53:27', '2017-07-13 06:58:14'),
(2436, '0pcQtv78wuAVLeq0Jv170712012230', 'Nina Desy', '08155612931', 'nin4.desy@gmail.com', 1, '2017-07-12 06:22:30', '2017-07-13 06:58:14'),
(2437, 'bT81tik1yKafov4tgB170712012256', 'indri diyah', '082141130227', 'diyah.in@gmail.com', 1, '2017-07-12 06:22:56', '2017-07-13 06:58:14'),
(2438, '6pzVYnVThgg4KvuKwK170712012404', 'Dina', '085646043290', 'dinazhibee@gmail.com', 1, '2017-07-12 06:24:04', '2017-07-13 06:58:14');
INSERT INTO `download_pricelist` (`id`, `token`, `name`, `phone`, `email`, `readed`, `created_at`, `updated_at`) VALUES
(2439, 'Tyf60yxwhXekVy39hY170712012657', 'Dina', '085646043290', 'Dinazhibee@gmail.com', 1, '2017-07-12 06:26:57', '2017-07-13 06:58:14'),
(2440, 'xzi5uK6Z3beOvALZDY170712014509', 'Mia', '081230421134', 'miadeazi@yahoo.com', 1, '2017-07-12 06:45:09', '2017-07-13 06:58:14'),
(2441, 'H66zaXUGwgWe3msF8R170712020200', 'DIBTYA SUCI', '08997588933', 'dibtyasp@gmail.com', 1, '2017-07-12 07:02:00', '2017-07-13 06:58:14'),
(2442, 'hzIjANVoo70erx4JJZ170712020220', 'Jelita', '08563367548', 'Clarity.aiko@yahoo.com', 1, '2017-07-12 07:02:20', '2017-07-13 06:58:14'),
(2443, 'xtUNS0TdfBlu8z8RNm170712020553', 'Jelita', '08563367548', 'Clarity_aiko@yahoo.com', 1, '2017-07-12 07:05:53', '2017-07-13 06:58:14'),
(2444, 'kEqhOZT2KXE18WLbaY170712020946', 'Septi lilis suryani', '083839745066', 'septy.surya@gmail.com', 1, '2017-07-12 07:09:46', '2017-07-13 06:58:14'),
(2445, '6hEVy8JhkqVxwG8w80170712021301', 'Ratna', '081585899291', 'ratnayura@gmail.com', 1, '2017-07-12 07:13:01', '2017-07-13 06:58:14'),
(2446, 'EcaSrIEvt2G4M9xPpw170712021915', 'Vina', '082159556666', 'Vinaayusnoor@gmail.com', 1, '2017-07-12 07:19:15', '2017-07-13 06:58:14'),
(2447, 'IZZQ4CvQyZwkSBmpmE170712024609', 'Ocha', '081232010383', 'Catydluvi2@gmail.com', 1, '2017-07-12 07:46:09', '2017-07-13 06:58:14'),
(2448, 'eHyvPFFmlxyDXVmxsM170712024908', 'Anita', '081390575777', 'tunjungsari000@gmail.con', 1, '2017-07-12 07:49:08', '2017-07-13 06:58:14'),
(2449, 'dhmGUnsegJpXViuwWq170712025143', 'Kudsiah', '082231153861', 'kudsiah44@yahoo.co.id', 1, '2017-07-12 07:51:43', '2017-07-13 06:58:14'),
(2450, 'uKZ9y6IJ5gOBibARy8170712025354', 'Matsalul Hamdani Rofiah', '087854444612', 'yoshasasha@gmail.com', 1, '2017-07-12 07:53:54', '2017-07-13 06:58:14'),
(2451, 'J1K166KambXLuY5IqF170712031048', 'fitri puspitasari', '082292249630', 'vitablueholic@gmail.com', 1, '2017-07-12 08:10:48', '2017-07-13 06:58:14'),
(2452, 'bnMgqFG6h4FsU9EQph170712031249', 'imelda', '0895607956028', 'imelda_1099@yahoo.com', 1, '2017-07-12 08:12:49', '2017-07-13 06:58:14'),
(2453, 'XIJQr6wXQwQnR1vVsT170712050631', 'Dita Nirmala Aprilia', '085648123052', 'ditanirmalaaprilia@yahoo.com', 1, '2017-07-12 10:06:31', '2017-07-13 06:58:14'),
(2454, 'xstFg41pF3WXxXEsLP170712051147', 'rani', '08993600311', 'nuraini.endah@gmail.com', 1, '2017-07-12 10:11:47', '2017-07-13 06:58:14'),
(2455, 'wf8aqeM9oYxO7ghgzE170712051302', 'Hiuwidjaja hendrajani', '085850888927', 'hiuwidjaya@gmail.com', 1, '2017-07-12 10:13:02', '2017-07-13 06:58:14'),
(2456, 'OEmA67jNqinXPTH3rB170712053451', 'Diana', '085733338186', 'dp.terangbulan@gmail.com', 1, '2017-07-12 10:34:51', '2017-07-13 06:58:14'),
(2457, 'jljsV3s4wbJ62ja498170712061717', 'ginan', '082226552913', 'ghiyna.psy09@gmail.com', 1, '2017-07-12 11:17:17', '2017-07-13 06:58:14'),
(2458, 'nnFCwzdh8ilAH89vIC170712073707', 'Siti farhah', '081225391776', 'sitifarhah94@gmail.com', 1, '2017-07-12 12:37:07', '2017-07-13 06:58:14'),
(2459, 'x1BJS54ZZEtUNjR6b4170712085302', 'lindawati', '083849332853', 'likenda.korean@gmail.com', 1, '2017-07-12 13:53:02', '2017-07-13 06:58:14'),
(2460, 'niaOk5PKyxgfi55jEG170712091434', 'Dian puspita ningrum', '081803260063', 'qdianpuspita@gmail.com', 1, '2017-07-12 14:14:34', '2017-07-13 06:58:14'),
(2461, 'lwziFkmkwzDCWhinGU170713103435', 'Fitri', '085648630306', 'fiar_sakura89@yahoo.com', 1, '2017-07-13 03:34:35', '2017-07-13 06:58:14'),
(2462, 'KzbGNF07DFFft0oc7y170713105531', 'Dyah', '087752504242', 'dyahkusumadee@gmail.com', 1, '2017-07-13 03:55:31', '2017-07-13 06:58:14'),
(2463, 'uwC6CNjQzEi0YUcIwc170713105713', 'Dyah', '087752504242', 'dyahkusumadee@gmail.com', 1, '2017-07-13 03:57:13', '2017-07-13 06:58:14'),
(2464, 'rSH7XyKDnyOcbSduOL170713113701', 'fitri', '082143331107', 'zen_fitri06@yahoo.co.id', 1, '2017-07-13 04:37:01', '2017-07-13 06:58:14'),
(2465, 'gqoKADEWlM1RrJUCml170713114517', 'Ade irma', '085107111189', 'Sandradelcano@gmail.com', 1, '2017-07-13 04:45:17', '2017-07-13 06:58:14'),
(2466, 'sf4bqfLuKdMRYtpHoc170713120928', 'Mawaddah', '081703533248', 'maw6912@gmail.com', 1, '2017-07-13 05:09:28', '2017-07-13 06:58:14'),
(2467, '3KsGoxC4tspSUtT5Wh170713121354', 'Maisaroh', '0895340785585', 'Mystyle62@yahoo.com', 1, '2017-07-13 05:13:54', '2017-07-13 06:58:14'),
(2468, 'BvW0ZEr3oQSH7bMxAK170713122322', 'neny', '0821-3980-3585', 'neny4492@gmail.com', 1, '2017-07-13 05:23:22', '2017-07-13 06:58:14'),
(2469, '8harDofuEid04ceQrJ170713012908', 'Dwi harsiwi', '085648347416', 'harsiwidwi@gmail.com', 1, '2017-07-13 06:29:08', '2017-07-13 06:58:14'),
(2470, 'E2KyKejf0UUOEGfXGM170713023215', 'Faradibah Surya Widya', '085730303090', 'fmozya@gmail.com', 1, '2017-07-13 07:32:15', '2017-07-26 03:40:58'),
(2471, 'zUDt8mFwRmtyeaCD34170713023835', 'Faradibah Surya Widya', '085730303090', 'fmozya@gmail.com', 1, '2017-07-13 07:38:35', '2017-07-26 03:40:58'),
(2472, 'HzRu9xiPDhYETlL2Gy170713030622', 'Dian', '0852-3286-6994', 'arisdian99@gmail.com', 1, '2017-07-13 08:06:22', '2017-07-26 03:40:58'),
(2473, 'OpXNHdfhfKvJwaftFo170713041747', 'Vika Afrianty ', '81216604777', 'vichaherlambang@gmail.com', 1, '2017-07-13 09:17:47', '2017-07-26 03:40:58'),
(2474, 'hBMFB2WU9uvgmmkROt170713041757', 'Vika Afrianty Herlambang', '81216604777', 'vichaherlambang@gmail.com', 1, '2017-07-13 09:17:57', '2017-07-26 03:40:58'),
(2475, 'QZolgN1v6sWcWNX75H170713041823', 'Vika Afrianty Herlambang', '081216604777', 'vicaherlambang@gmail.com', 1, '2017-07-13 09:18:23', '2017-07-26 03:40:58'),
(2476, 'FV8L5QqcuvvffeTAdL170713041849', 'Vika Afrianty Herlambang', '081216604777', 'vikaherlambang@gmail.com', 1, '2017-07-13 09:18:49', '2017-07-26 03:40:58'),
(2477, 'BC7K5G1MI4R88cOt6f170713045336', 'Ria yanuarti maharani', '08315518055', 'Quinymaharani@gmail.com', 1, '2017-07-13 09:53:36', '2017-07-26 03:40:58'),
(2478, 'b7jaA0lQHi9xjanoBL170713051107', 'Ria yanuarti maharani', '08315518055', 'Quinymaharani@gmail.com', 1, '2017-07-13 10:11:07', '2017-07-26 03:40:58'),
(2479, 'ToBtDQbXDKqtVDEHsv170713061113', 'Sekar', '083831480004', 'Sekaradjie@gmail.com', 1, '2017-07-13 11:11:13', '2017-07-26 03:40:58'),
(2480, '6iSWvjJX8jvBnt4fnJ170713064554', 'Yunar', '085806689262', 'Putri.yunar88@gmail.com', 1, '2017-07-13 11:45:54', '2017-07-26 03:40:58'),
(2481, 'TZGjAJ7W58k1DUG9q2170713101133', 'Ida', '081217500536', 'diptyaayunda@gmail.com', 1, '2017-07-13 15:11:33', '2017-07-26 03:40:58'),
(2482, 'soieWUo9cxg2dAZZyK170714011248', 'Ayunda', '081342594033', 'christine03ners@gmail.com', 1, '2017-07-13 18:12:48', '2017-07-26 03:40:58'),
(2483, '9aw7fcG1uVXUDEMTqd170714083101', 'ginanjar prima', '085725607066', 'ginanjarprima@gmail.com', 1, '2017-07-14 01:31:01', '2017-07-26 03:40:58'),
(2484, 'nANNeUXAISqGNd596M170714085457', 'Nazmi', '081332361765', 'nazmi.dipatriana@yahoo.com', 1, '2017-07-14 01:54:57', '2017-07-26 03:40:58'),
(2485, 'GPWVsDue0FKaXBveVg170714090313', 'Dian', '085230048500', 'princess_deetyas@yahoo.com', 1, '2017-07-14 02:03:13', '2017-07-26 03:40:58'),
(2486, 'TL4005XOFcDC9yajfn170714102512', 'irmaoktiana', '085737242337', 'irmaoktiana@gmail.com', 1, '2017-07-14 03:25:12', '2017-07-26 03:40:58'),
(2487, '9O8Gi3EIPdX16NUZ5W170714113909', 'Anisa alifah', '085231866641', 'alifahanisa@gmail.com', 1, '2017-07-14 04:39:09', '2017-07-26 03:40:58'),
(2488, '7HdvireZaUytjkTPrq170714021309', 'CITRA ENDAH K', '081336601182', 'ncitra.karunia@gmail.com', 1, '2017-07-14 07:13:09', '2017-07-26 03:40:58'),
(2489, 'DaHIprAgLIuAo3bEGR170714022039', 'Dian Ayu Fitriani', '082257501546', 'dian.ayu06@gmail.com', 1, '2017-07-14 07:20:39', '2017-07-26 03:40:58'),
(2490, 'e3JdLC8T3sZIQgv6Hh170714022120', 'tri kartika sari', '082244449800', 'trikartikasari12@gmail.com', 1, '2017-07-14 07:21:20', '2017-07-26 03:40:58'),
(2491, 'czZkzzjWNGfSJ7HAZ6170714022649', 'Filryana Eka', '083830937255', 'filryanaekasyaputri@gmail.com', 1, '2017-07-14 07:26:49', '2017-07-26 03:40:58'),
(2492, 'ai1tSn6kWtDk5kBZA9170714023001', 'DILAH', '087855899766', 'dilah.nurf4dilah@gmail.com', 1, '2017-07-14 07:30:01', '2017-07-26 03:40:58'),
(2493, 'V5wOEJ5eXuexf5EiZs170714023122', 'Revillia', '081230419513', 'Rrevillia@gmail.com', 1, '2017-07-14 07:31:22', '2017-07-26 03:40:58'),
(2494, 'piasZDIAlKYG6n1yMQ170714023423', 'Sifa', '082216855868', 'sifayusuf1@gmail.com', 1, '2017-07-14 07:34:23', '2017-07-26 03:40:58'),
(2495, 'CPaCaj8rPRdqlrFzXk170714035051', 'Rischi', '081334098313', 'Rischirahmawati@gmail.com', 1, '2017-07-14 08:50:51', '2017-07-26 03:40:58'),
(2496, '2MWwgZG0z5cc9vsyjf170714040706', 'Amelia', '081249927203', 'Krisdayanti.amelia@gmail.com', 1, '2017-07-14 09:07:06', '2017-07-26 03:40:58'),
(2497, 'CiCWz8YZfui3aPihTR170714050133', 'Qonita', '081322403977', 'qonita_lnf@yahoo.com', 1, '2017-07-14 10:01:33', '2017-07-26 03:40:58'),
(2498, 'lJ5NO5r3psskLAxnb9170714053421', 'Meidiwh', '085231003500', 'Kmeidiah@yahoo.com', 1, '2017-07-14 10:34:21', '2017-07-26 03:40:58'),
(2499, 'KthFX9uqXFBbYe3GnJ170714055338', 'analia sari', '085785456070', 'analiasari@gmail.com', 1, '2017-07-14 10:53:38', '2017-07-26 03:40:58'),
(2500, '16MbGNwEYxQGNSEvCT170714090823', 'Ahbsb', '081555772525', 'Dbhwank@gmail.com', 1, '2017-07-14 14:08:23', '2017-07-26 03:40:58'),
(2501, 'i6WkMp8gs5I8U6zWOd170714094251', 'prita', '082139940009', 'prita@uwp.ac.id', 1, '2017-07-14 14:42:51', '2017-07-26 03:40:58'),
(2502, 'PToPYWuUIU37mP8KYk170714105355', 'RIS WORO ATIK', '085853175500', 'risworo@gmail.com', 1, '2017-07-14 15:53:55', '2017-07-26 03:40:58'),
(2503, 'YKOOfYHCUuNmztz7F2170715123717', 'RIZQI AMALIA', '085732042093', 'rizqiamalia593@gmail.com', 1, '2017-07-14 17:37:17', '2017-07-26 03:40:58'),
(2504, 'M1wTUdSsRe6e6rHhhk170715052148', 'Mauliza', '085296962250', 'mlija_owie@yahoo.com', 1, '2017-07-14 22:21:48', '2017-07-26 03:40:58'),
(2505, 'diWBkwOQJICMEHIeIK170715093302', 'Liris', '082132919931', 'liris.enggar@gmail.com', 1, '2017-07-15 02:33:02', '2017-07-26 03:40:58'),
(2506, 'gMCNsaQwXgeFr2uvDo170715095529', 'primalia andini', '081252417087', 'andini.primalia@gmail.com', 1, '2017-07-15 02:55:29', '2017-07-26 03:40:58'),
(2507, 'WtVYkMwClIzWcc8LZA170715103341', 'Rizki Amalia Fitri ', '081232223703', 'rzkibuday@gmail.com', 1, '2017-07-15 03:33:41', '2017-07-26 03:40:58'),
(2508, 'IvN64LPBZ79ZrZauZu170715103529', 'Salsabil Delarose ', '082245756262', 'salsabildelarose@gmail.com', 1, '2017-07-15 03:35:29', '2017-07-26 03:40:58'),
(2509, 'LOd2xT62Nq38Yyqs7A170715105548', 'Dyah Wahyu Untari', '089674637780', 'ddoubleu.95@gmail.com', 1, '2017-07-15 03:55:48', '2017-07-26 03:40:58'),
(2510, 'EpAGvgI7r3z1V6FaCv170715010008', 'rindi lestari', '083854147562', 'lestarindi29@gmail.com', 1, '2017-07-15 06:00:08', '2017-07-26 03:40:58'),
(2511, 'eZG0kFyXXsPtdsRKOh170715023515', 'ratna ayu novitasari', '082302172500', 'r_2690@yahoo.com', 1, '2017-07-15 07:35:15', '2017-07-26 03:40:58'),
(2512, '1BNgHHeOzTSF9e2NkJ170715024323', 'Putri Dwi A', '081217213313', 'Putridwianggraini08@gmail.com', 1, '2017-07-15 07:43:23', '2017-07-26 03:40:58'),
(2513, 'gTYJr1ZOgEmCWUpfpR170715035050', 'Fitria deka ', '085733227699', 'fitriadeka17@gmail.com', 1, '2017-07-15 08:50:50', '2017-07-26 03:40:58'),
(2514, 'kfiEItYnsv2XxgYU0k170715035440', 'Ulfia', '085648073613', 'Chullw4@Gmail.com', 1, '2017-07-15 08:54:40', '2017-07-26 03:40:58'),
(2515, '40SUBqW07mzznoSJ1B170715040119', 'Rinda', '081312920659', 'rhidayati@ymail.com', 1, '2017-07-15 09:01:19', '2017-07-26 03:40:58'),
(2516, '2gmIJrBVwS0j9HOQOc170715043644', 'Wulan', '081357416782', 'umitika1@gmail.com', 1, '2017-07-15 09:36:44', '2017-07-26 03:40:58'),
(2517, '4qswn8kjNj02UoN34R170715065751', 'Meilissa Siwentika', '081235410265', 'lissa_may2682@yahoo.com', 1, '2017-07-15 11:57:51', '2017-07-26 03:40:58'),
(2518, 'RM8vmjN0gC9p6Xboaw170715065923', 'Meilissa Siwentika', '081235410265', 'lissa_may2682@yahoo.com', 1, '2017-07-15 11:59:23', '2017-07-26 03:40:58'),
(2519, 'GTuHGGmEfAGfvvXKdE170715110553', 'nia', '0818652762', 'rohmania.nurbanatri@gmail.com', 1, '2017-07-15 16:05:53', '2017-07-26 03:40:58'),
(2520, 'Q1IT9oZnLJn2MMNusn170716012101', 'Risa Gamalani', '081232732745', 'risasaja1@gmail.com', 1, '2017-07-15 18:21:01', '2017-07-26 03:40:58'),
(2521, 'VjhaSN0NVWjgXTSz4o170716071112', 'Petty', '08113413673', 'petty_damayanti@yahoo.com', 1, '2017-07-16 00:11:12', '2017-07-26 03:40:58'),
(2522, 'eb29iO9UHE8jBwY00y170716073005', 'Cholif', '087781033779', 'Cholifah129ani@gmail.com', 1, '2017-07-16 00:30:05', '2017-07-26 03:40:58'),
(2523, '9kqWHxRaL7b3pSNWXf170716083345', 'Lupita', '081216770057', 'liputan.ayu@gmail.com', 1, '2017-07-16 01:33:45', '2017-07-26 03:40:58'),
(2524, 'Rm6p9WT0DLY72ieNLC170716100422', 'dwi', '085546660043', 'alydwee@gmail.com', 1, '2017-07-16 03:04:22', '2017-07-26 03:40:58'),
(2525, 'tGSltwy7PVwwAXqbdx170716061949', 'Dina', '087819523062', 'Alsyameniq@gmail.com', 1, '2017-07-16 11:19:49', '2017-07-26 03:40:58'),
(2526, 'EU1P2Y2xqnvlpd68Py170716062153', 'Rasyidah', '087819523062', 'Aikoshuean@gmail.com', 1, '2017-07-16 11:21:53', '2017-07-26 03:40:58'),
(2527, 'oSEaHRQk2OCZQPC0ko170716072032', 'ICHA', '083854188333', 'musicha333@gmail.com', 1, '2017-07-16 12:20:32', '2017-07-26 03:40:58'),
(2528, 'upvyGXulaqqUlZTecH170716092216', 'Dian Anggraini', '082131884200', 'diananggrainipuspitasari@gmail.com', 1, '2017-07-16 14:22:16', '2017-07-26 03:40:58'),
(2529, 'OlUKW2wv1GamCVqdtQ170716092910', 'Eka', '081328232832', 'ekhaa_ems@yahoo.com', 1, '2017-07-16 14:29:10', '2017-07-26 03:40:58'),
(2530, 'qEMspCSLApJ95njGFZ170716102018', 'Rizki Darul Ula', '085853312330', 'beazky@gmail.com', 1, '2017-07-16 15:20:18', '2017-07-26 03:40:58'),
(2531, 'zLhzXVfDDhnvrBa7rE170716105322', 'retno herawatie', '085731040070', 'rherawatie@ymail.com', 1, '2017-07-16 15:53:22', '2017-07-26 03:40:58'),
(2532, 'IgdjTtMMrMeiaBTs6M170716112444', 'Selvia Handayani', '085781746664 ', 'selviahanda@gmail.com', 1, '2017-07-16 16:24:44', '2017-07-26 03:40:58'),
(2533, 'xr5UW2mE0iUwigt4XB170717043854', 'Ida mawanti', '085854885888', 'Idamawanti76@gmail.co.id', 1, '2017-07-16 21:38:54', '2017-07-26 03:40:58'),
(2534, '3zihGbNm6FhpdUZprN170717054457', 'Reza Annisa ', '085790881963 ', 'sasha_phelps@yahoo.com', 1, '2017-07-16 22:44:57', '2017-07-26 03:40:58'),
(2535, 'mLaiHRdl2eDwAdqfqy170717054814', 'Ida mawanti', '085854885888', 'Idamawanti76@gmail.co.id', 1, '2017-07-16 22:48:14', '2017-07-26 03:40:58'),
(2536, 'BaiXdL4Rac2LhExieT170717055236', 'Idamawanti', '085854885888', 'Idamawanti76@gmail.co.id', 1, '2017-07-16 22:52:36', '2017-07-26 03:40:58'),
(2537, '9ERcXE2xzvcQZXXAs2170717103749', 'Dita', '085649148087', 'dizahra410@gmail.com', 1, '2017-07-17 03:37:49', '2017-07-26 03:40:58'),
(2538, 'AujPJl66C9JtgKEgmK170717114211', 'Dr ieda', '087854392001', 'dr_ieda@yahoo.com', 1, '2017-07-17 04:42:11', '2017-07-26 03:40:58'),
(2539, '984ZXGfFayqgMXZ4PB170717121638', 'Sinta puspita sari', '083849804828', 'Sintapuspita25@gmail.com', 1, '2017-07-17 05:16:38', '2017-07-26 03:40:58'),
(2540, 't4AWbykejIMLcqxvCh170717123040', 'Cornelia Astri Devi', '081230090377', 'cornelia_2292@yahoo.co.id', 1, '2017-07-17 05:30:40', '2017-07-26 03:40:58'),
(2541, '2QR8nFbk8Njv7qzHJd170717012428', 'Alfan Iqbal', '081234141850', 'Alfan_iqbal@yahoo.com', 1, '2017-07-17 06:24:29', '2017-07-26 03:40:58'),
(2542, 'x2iwmG9FInQa4OrNvQ170717023418', 'Ety', '082257675257', 'Etymedip@gmail.com', 1, '2017-07-17 07:34:18', '2017-07-26 03:40:58'),
(2543, 'nDhoafmvOJjY4Xb8w9170717025516', 'selvia', '085781746664', 'selviahanda@gmail.com', 1, '2017-07-17 07:55:16', '2017-07-26 03:40:58'),
(2544, 'ZdGiDvK4xBJIbBZqyl170717032058', 'yusdita', '085706899917', 'arco.eastjava2.indo5@gmail.com', 1, '2017-07-17 08:20:58', '2017-07-26 03:40:58'),
(2545, 'Lal1Z7eL7NsUkwfpFs170717032906', 'febrina citra', '083878925440', 'epynangisan@gmail.com', 1, '2017-07-17 08:29:06', '2017-07-26 03:40:58'),
(2546, 'Oa0y60mgV8j8fHdNfA170717035239', 'yuyun', '08125510788', 'yuyuncsbii@gmail.com', 1, '2017-07-17 08:52:39', '2017-07-26 03:40:58'),
(2547, 'iALATgdKcHcJJxODD2170717055743', 'ika', '085331519378', 'ikamei450@gmail.com', 1, '2017-07-17 10:57:43', '2017-07-26 03:40:58'),
(2548, 'RdpnsQXFlfe9y9aegy170717064353', 'Nur damayanti', '081554999953', 'Wthahirah@gmail.com', 1, '2017-07-17 11:43:53', '2017-07-26 03:40:58'),
(2549, 'umDZZShKy1ljO0qsM2170717064821', 'dini rahma', '085732316867', 'dini.rahma96@yahoo.co.id', 1, '2017-07-17 11:48:21', '2017-07-26 03:40:58'),
(2550, 'P4w7UgzABMKPyqehl1170717065946', 'ika', '085331519378', 'ikamei450@gmail.com', 1, '2017-07-17 11:59:46', '2017-07-26 03:40:58'),
(2551, 'GdAsf4GL3eB7KEcGJD170717083629', 'khusnul', '085746660510', 'cenulcenul94@gmail.com', 1, '2017-07-17 13:36:29', '2017-07-26 03:40:58'),
(2552, 'SvdmUtx0ETBgmRmFz5170718121849', 'Mita Rahayu Arsanti', '087751021118 ', 'Kenzoakino@yahoo.com', 1, '2017-07-17 17:18:49', '2017-07-26 03:40:58'),
(2553, 'qW49S98owKHakZQHDH170718014613', 'Davina', '083854467948', 'davinagio661@gmail.com', 1, '2017-07-17 18:46:13', '2017-07-26 03:40:58'),
(2554, 'aq0M9F00pdAbFdzPuM170718054230', 'yossi apriana', '081332068164', 'yossi.apriana@gmail.com', 1, '2017-07-17 22:42:30', '2017-07-26 03:40:58'),
(2555, '09MDKMdEwtwbRTAW7C170718065037', 'Dani', '082230585099', 'Deezhalee@yahoo.co.id', 1, '2017-07-17 23:50:37', '2017-07-26 03:40:58'),
(2556, 'O87TH1agHa8QCUKeGX170718070026', 'nur rochimah', '085733208657', 'sweet_redrosse@yahoo.com', 1, '2017-07-18 00:00:26', '2017-07-26 03:40:58'),
(2557, 'COYVOcaUdoLDYPPEoR170718074902', 'Fifi hernawati', '085646072844', 'vitaugirl@gmail.com', 1, '2017-07-18 00:49:02', '2017-07-26 03:40:58'),
(2558, 's71OZV2XlkUEnS3SnZ170718085020', 'nurina listya adysti', '085648390004', 'adysti.89@gmail.com', 1, '2017-07-18 01:50:20', '2017-07-26 03:40:58'),
(2559, 'MOrA8cEEECds11PIaH170718104837', 'Nur Fadilla', '081233766516', 'nfadilla944@yahoo.com', 1, '2017-07-18 03:48:37', '2017-07-26 03:40:58'),
(2560, 'IbzrE3ZXrKW8PPrr4L170718112815', 'desy', '082131002279', 'myson_falih@yahoo.com', 1, '2017-07-18 04:28:15', '2017-07-26 03:40:58'),
(2561, 'GgSCpIBCJy3WeCa64E170718120604', 'ayik', '085648742083', 'adislyni@gmail.com', 1, '2017-07-18 05:06:04', '2017-07-26 03:40:58'),
(2562, 'IpJnz6zCYKbypA1Oi4170718012348', 'Endah Pratiwi', '8977306719', 'endahsone@gmail.com', 1, '2017-07-18 06:23:48', '2017-07-26 03:40:58'),
(2563, 'dCXC42zJ5rzwDiz2Li170718012556', 'Syifa', '081234544919', 'Syifasyarifah92@gmail.com', 1, '2017-07-18 06:25:56', '2017-07-26 03:40:58'),
(2564, '8sG0igj1mNvXlDIOCd170718014831', 'Denok novian', '085733176251', 'denoknovian@gmail.com', 1, '2017-07-18 06:48:31', '2017-07-26 03:40:58'),
(2565, 'sRv4ya9wdczWBXymW8170718020135', 'Adhista', '083857073030', 'Ddhista05@gmail.Com', 1, '2017-07-18 07:01:35', '2017-07-26 03:40:58'),
(2566, 'jdd5XIBWmbBHSYezW2170718022438', 'Gebyar Ayuningtyas', '085645575756', 'gebyar.ayuningtyas@yahoo.co.id', 1, '2017-07-18 07:24:38', '2017-07-26 03:40:58'),
(2567, 'ScIhhdMpCh0QVIzZHQ170718022925', 'Dhanietta Agustine', '081222563366', 'Dhanietta@gmail.com', 1, '2017-07-18 07:29:25', '2017-07-26 03:40:58'),
(2568, 'bNHCkMMepz3eodwvrW170718030437', 'Siti Suharti ', '81231396343', 'sitisuharti66@gmail.com', 1, '2017-07-18 08:04:37', '2017-07-26 03:40:58'),
(2569, 'pKgs2wSl5AimGwlS1P170718033849', 'putri', '082333723312', 'pas_callme@yahoo.com', 1, '2017-07-18 08:38:49', '2017-07-26 03:40:58'),
(2570, 'I7POq04OEtdjE1DcDD170718035811', 'Icha', '085895799440', 'Mirza.r.e.safitri@gmail.com', 1, '2017-07-18 08:58:11', '2017-07-26 03:40:58'),
(2571, 'GHTM5l37M2X7F8IJec170718040419', 'Hayuni Devina', '08175268357', 'hayuni.devina@gmail.com', 1, '2017-07-18 09:04:19', '2017-07-26 03:40:58'),
(2572, 'oepqzc8nq755H7AuPN170718042014', 'Arinda Kusuma Pratiwi', '082331495867', 'arindakusuma104@yahoo.com', 1, '2017-07-18 09:20:14', '2017-07-26 03:40:58'),
(2573, 'XFjbe5IyjGpF1TTU7L170718044644', 'rina fitryana', '081234001461', 'rinafitryana90@gmail.com', 1, '2017-07-18 09:46:44', '2017-07-26 03:40:58'),
(2574, 'zPEYRqRW0KtfOEwDGC170718050543', 'Renata', '085732540732', 'renatabrandina@gmail.com', 1, '2017-07-18 10:05:43', '2017-07-26 03:40:58'),
(2575, 'I6K8xBLGqxOVNuxig9170718070555', 'Eny nurhayati', '082131877050', 'enynurhayati136@gmail.com', 1, '2017-07-18 12:05:55', '2017-07-26 03:40:58'),
(2576, 'VrD7iXr7HcfcTa0BVk170718075329', 'sofi', '081330435850', 'sofiyunianti88@gmail.com', 1, '2017-07-18 12:53:29', '2017-07-26 03:40:58'),
(2577, 'PziOkch7LSWuPdX3DE170718091251', 'Ifa', '081216344869', 'kaliva.diana@gmail.com', 1, '2017-07-18 14:12:51', '2017-07-26 03:40:58'),
(2578, 'sVFo51KADstOYTsF7V170718103145', 'Tari', '0811 334 2727', 'Heartbeat.taryta27@gmail.com', 1, '2017-07-18 15:31:45', '2017-07-26 03:40:58'),
(2579, 'tzNUu1bPSzXjkeoaJE170718103238', 'Tari', '0811 334 2727', 'Heartbeat.taryta27@gmail.com', 1, '2017-07-18 15:32:38', '2017-07-26 03:40:58'),
(2580, 'FRzxf9lOY0Ds7jTxto170718104904', 'nuriana', '085755714787', 'nuriana_ptb13@yahoo.co.id', 1, '2017-07-18 15:49:04', '2017-07-26 03:40:58'),
(2581, 'koAwJNTdkf4zoephxS170718105856', 'Ety', '082257675257', 'Etymedip@gmail.com', 1, '2017-07-18 15:58:56', '2017-07-26 03:40:58'),
(2582, 'znKu9cojwGAjiZSSTG170719070735', 'Fita fauziah rahmah', '085755974284', 'erfauziah.08@gmail.com', 1, '2017-07-19 00:07:35', '2017-07-26 03:40:58'),
(2583, 'lDhRzLeAz7fCMzkmPE170719093733', 'Lia', '085755164978 ', 'muflih.zulia@gmail.com', 1, '2017-07-19 02:37:33', '2017-07-26 03:40:58'),
(2584, 'Pwpoy8vxt3bZVbedn3170719101424', 'Rika', '087886962167', 'Rikawhid@gmail.com', 1, '2017-07-19 03:14:24', '2017-07-26 03:40:58'),
(2585, 'K97mE7OD83rtH5v54z170719105941', 'citra septy maharani', '085731808783', 'maharanicitra01@gmail.com', 1, '2017-07-19 03:59:41', '2017-07-26 03:40:58'),
(2586, 'bCNOgcAlRHn8138NzE170719111348', 'Dian', '081217173293', 'diancholida@gmail.com', 1, '2017-07-19 04:13:48', '2017-07-26 03:40:58'),
(2587, 'ysTbxgWiEYAxG31i1t170719125319', 'Chichie', '087852838788', 'chichie_87@yahoo.co.id', 1, '2017-07-19 05:53:19', '2017-07-26 03:40:58'),
(2588, 'rZD5x49JFjoK4MSeLl170719010836', 'ninis', '085730373993', 'ninisbiru@gmail.com', 1, '2017-07-19 06:08:36', '2017-07-26 03:40:58'),
(2589, 'YJelK49zzF3gWg83td170719023153', 'Nia utami ningsih', '081234555427', 'nia.dpro@yahoo.com', 1, '2017-07-19 07:31:53', '2017-07-26 03:40:58'),
(2590, '4WRmkeWVkuDTIyuIki170719025238', 'alvin septyaningtiyas', '085730777732', 'curious.apiin@gmail.com', 1, '2017-07-19 07:52:38', '2017-07-26 03:40:58'),
(2591, 'bI2mL0pe9H0eE3tbXb170719052603', 'Nadya Faradiba', '081246181892', 'dibnadya@gmail.com', 1, '2017-07-19 10:26:03', '2017-07-26 03:40:58'),
(2592, 'Yxbh5HI9TN1gIRbfrA170719071341', 'Riskha ', '081234560848', 'Riskha.dian@yahoo.com', 1, '2017-07-19 12:13:41', '2017-07-26 03:40:58'),
(2593, 'HUQlL3pjXWRgWnpcfs170719090121', 'fitand', '08563063392', 'fitandnatalia@gmail.com', 1, '2017-07-19 14:01:21', '2017-07-26 03:40:58'),
(2594, 'VlsdogjUnjv1nxX0Aq170719092000', 'Eni', '081357745133', 'Eni.wijayanti2@yahoo.co.id', 1, '2017-07-19 14:20:00', '2017-07-26 03:40:58'),
(2595, 'DX6tdncC8LX10WvUwB170719093622', 'Nita', '082338801870', 'tata_its@yahoo.com', 1, '2017-07-19 14:36:22', '2017-07-26 03:40:58'),
(2596, '5Idl6a2QrO8CNj1YuB170720013406', 'alya', '089672536211', 'alyachoirum@gmail.com', 1, '2017-07-19 18:34:06', '2017-07-26 03:40:58'),
(2597, 'GLub2NUlNSi3eWndBH170720071147', 'lilik', '085731221133', 'liy.likpgsd@gmail.com', 1, '2017-07-20 00:11:47', '2017-07-26 03:40:58'),
(2598, 'veRkfPdIJHjCfcSBnf170720080234', 'rizki tri mayasari', '081296631298', 'rizkimayasari@gmail.com', 1, '2017-07-20 01:02:34', '2017-07-26 03:40:58'),
(2599, 'ZEUaFxipNBFrfkUny2170720080407', 'ella mustikasari', '081938011893', 'ella.sari@narotama.ac.id', 1, '2017-07-20 01:04:07', '2017-07-26 03:40:58'),
(2600, 'KmGwtUO8XMF5P187yS170720085446', 'dori', '081234513324', 'dorin.85@gmail.com', 1, '2017-07-20 01:54:46', '2017-07-26 03:40:58'),
(2601, 'icmRRRGav7nGpKQpr2170720095612', 'Nuriska pratiwi', '082256348051', 'Nuriskapratiwi@gmail.com', 1, '2017-07-20 02:56:12', '2017-07-26 03:40:58'),
(2602, 'H8haeVm4fImIrcgb6d170720103404', 'Chantika', '082233561112', 'Chantika.millla@gmail.com', 1, '2017-07-20 03:34:04', '2017-07-26 03:40:58'),
(2603, 'qgUigV5lwjD4jKaEPW170720104729', 'nabila', '08976788578', 'islami.bela@gmail.com', 1, '2017-07-20 03:47:29', '2017-07-26 03:40:58'),
(2604, 'ygEHIJWtXP9Tj44ipi170720015421', 'Nyanil Yusminarti', '081803031393', 'Yusminarti73@gmail.com', 1, '2017-07-20 06:54:21', '2017-07-26 03:40:58'),
(2605, 'VwlBIBB5FWgQCJ8lEc170720021701', 'Rulita amalia', '082230600093', 'seletaamalia08@gmail.com', 1, '2017-07-20 07:17:01', '2017-07-26 03:40:58'),
(2606, 'yHbyJckZTLIbjSL2H7170720022356', 'Fairuzah Rochmi Sudarwati', '081362019650', 'Fairuzah_1025@yahoo.com', 1, '2017-07-20 07:23:56', '2017-07-26 03:40:58'),
(2607, 'cskwbLv8wTYSw6ubuw170720030634', 'Rizka', '08113338076', 'vieriz@yahoo.com', 1, '2017-07-20 08:06:34', '2017-07-26 03:40:58'),
(2608, 'XzhPZywfGK9NpJIQLN170720031025', 'Dea', '082234400095', 'deayulivitasari@gmail.com', 1, '2017-07-20 08:10:26', '2017-07-26 03:40:58'),
(2609, 'pkiza2FbbIavYvksj4170720034015', 'Arini Widiya Putri', '081335588994', 'Ariniwdyp14@gmail.com', 1, '2017-07-20 08:40:15', '2017-07-26 03:40:58'),
(2610, 'ahT0ev1PrRfmiinL3A170720044331', 'hamidah', '08563492077', 'nurhamidah3092@gmail.com', 1, '2017-07-20 09:43:31', '2017-07-26 03:40:58'),
(2611, 'uapKbtRbTESel5jKtE170720083655', 'mega', '081217153482', 'megamaharanis@gmail.com', 1, '2017-07-20 13:36:55', '2017-07-26 03:40:58'),
(2612, '5O7Ay6mH85UV9sVBH7170720092106', 'Rusminah', '081808080570', 'Ibl.logam@gmail.com', 1, '2017-07-20 14:21:06', '2017-07-26 03:40:58'),
(2613, 'aQvkADZ7qgfthlefex170720102258', 'siti ansari', '081219143333', 'siti.ansari@gmail.com', 1, '2017-07-20 15:22:58', '2017-07-26 03:40:58'),
(2614, 'f7YEcqANZvDSi40yog170720104501', 'Indah susanti', '082257803069', 'Susantindah.78@gmail.com', 1, '2017-07-20 15:45:01', '2017-07-26 03:40:58'),
(2615, 'WhiR09CAZAoutLSS7M170720104545', 'Indah susanti', '622257803069', 'Susantindah.78@gmail.com', 1, '2017-07-20 15:45:45', '2017-07-26 03:40:58'),
(2616, 'xUafIUlEXolrSlGJsg170720104656', 'Indah susanti', '082257803069', 'susantindah78@gmail.com', 1, '2017-07-20 15:46:56', '2017-07-26 03:40:58'),
(2617, 'ovjR9gWVEl4QO040r8170720114911', 'Bheta sari dewi', '082143685081', 'bhetasaridewi@gmail.com', 1, '2017-07-20 16:49:11', '2017-07-26 03:40:58'),
(2618, 'L5B2o52duk3lKvMGVU170721111726', 'ARUM TRISNANI YANUARFA ABIDIN', '082229090276', 'arum.tya.6116@gmail.com', 1, '2017-07-21 04:17:26', '2017-07-26 03:40:58'),
(2619, 'UcAfIutXw2tUBQbonr170721112406', 'Rika Noviana ', '085731991120 ', 'zainalgrip@yahoo.co.id', 1, '2017-07-21 04:24:06', '2017-07-26 03:40:58'),
(2620, 'afW2KU4aZzuo2vlL1M170721114634', 'Rinda', '085648005544', 'rindabella88@gmail.com', 1, '2017-07-21 04:46:34', '2017-07-26 03:40:58'),
(2621, 'QhNe3qkcsdNBMihCEf170721115908', 'Risma', '082231666691', 'rismaefanty0606@yahoo.com', 1, '2017-07-21 04:59:08', '2017-07-26 03:40:58'),
(2622, 'JHzEClCN3ko86BS0R4170721120920', 'Ariza Qurrata', '082141775055', 'azzaariza@gmail.com', 1, '2017-07-21 05:09:20', '2017-07-26 03:40:58'),
(2623, 'EEEijXAkM5s1sWdpay170721011453', 'Zendi', '08123518742', 'narithazendi@gmail.com', 1, '2017-07-21 06:14:53', '2017-07-26 03:40:58'),
(2624, 'Vf5upGkT2vqIFwF0GS170721022527', 'Sari', '081234541133', 'Sarry8023@yahoo.com', 1, '2017-07-21 07:25:27', '2017-07-26 03:40:58'),
(2625, 'WGwV9suOYMycoVXFMl170721025405', 'Esti purnasari', '085732073071', 'rsakura89@gmail.com', 1, '2017-07-21 07:54:05', '2017-07-26 03:40:58'),
(2626, '4tnNOeFMxPyxvz2mLC170721035544', 'Utita sahla', '08125206515', 'lilixfm1080@gmail.com', 1, '2017-07-21 08:55:44', '2017-07-26 03:40:58'),
(2627, 'ySqsNBzfXxVz9VubDu170721041437', 'kiki', '082244474803', 'halaliyah15@gmail.com', 1, '2017-07-21 09:14:37', '2017-07-26 03:40:58'),
(2628, 's70Zg01XwPfhytqpXJ170721041522', 'kiki', '082244474803', 'halaliyah15@gmail.com', 1, '2017-07-21 09:15:22', '2017-07-26 03:40:58'),
(2629, 'DNNVvglV5bDyu6OIva170721043151', 'Rani', '08170980815', 'ranidarmayanti.81@gmail.com', 1, '2017-07-21 09:31:51', '2017-07-26 03:40:58'),
(2630, 'g0XXh1wrfqYxax20cJ170721045042', 'Nurul Fitriyah Febriani', '083856596069', 'Nurulff88@yahoo.com', 1, '2017-07-21 09:50:42', '2017-07-26 03:40:58'),
(2631, 'tBV0x87RanN6JtZ5Jj170721093208', 'Sitifatimah', '089606q47754', 'Vinimah0305@gmail.com', 1, '2017-07-21 14:32:08', '2017-07-26 03:40:58'),
(2632, 'pxZxS5BXAiFjhDOTA0170722074552', 'dini', '081252417087', 'andini.primalia@gmail.com', 1, '2017-07-22 00:45:52', '2017-07-26 03:40:58'),
(2633, 'pYxJdhyx00TGCG5auB170722080508', 'Fitriana', '085853126704', 'Fitrianaghonniey@yahoo.co.id', 1, '2017-07-22 01:05:08', '2017-07-26 03:40:58'),
(2634, 'pJnPWLwyrifxL8AHAD170722102005', 'Okta', '081235666560', 'fiani.octa.1230@gmail.com', 1, '2017-07-22 03:20:05', '2017-07-26 03:40:58'),
(2635, 'chDn9Sv7JpzdZDxBUn170722125154', 'Mutia rachmania', '81235969677', 'mutia.rachmania1001@gmail.com', 1, '2017-07-22 05:51:54', '2017-07-26 03:40:58'),
(2636, '7vxp7PxjNd6HiZ9fnS170722011315', 'santy wulandari', '081235535617', 'syantz_oelan@yahoo.com', 1, '2017-07-22 06:13:15', '2017-07-26 03:40:58'),
(2637, 'GXNrvBrZG0vr7VdXmv170722032104', 'Aulia Faradilah', '082301618861', 'aulia.faradilah92@gmail.com', 1, '2017-07-22 08:21:04', '2017-07-26 03:40:58'),
(2638, '8exMWJKRgNnQONW87G170722033846', 'risa', '081803111868', 'risaamaliamaulani@gmail.com', 1, '2017-07-22 08:38:46', '2017-07-26 03:40:58'),
(2639, 'qy56b0jY2I0RHWyoCx170722040751', 'vivi wulandari', '081259604540', 'scpio_vivi@yahoo.com', 1, '2017-07-22 09:07:51', '2017-07-26 03:40:58'),
(2640, 'fY6YkRMLzPIf5TLLPl170722045853', 'Zara', '085704010408', 'zaradarmawan03@gmail.com', 1, '2017-07-22 09:58:53', '2017-07-26 03:40:58'),
(2641, 'YOuspQnjpXjJjO79RP170722050738', 'Nurul', '085646708033', 'nurulkhoirun@ymail.com', 1, '2017-07-22 10:07:38', '2017-07-26 03:40:58'),
(2642, 'xi44WQ9JxoAgF0x2wU170722093845', 'Hermin', '081330642553', 'Epydrh@gmail.com', 1, '2017-07-22 14:38:45', '2017-07-26 03:40:58'),
(2643, 'X8JXKPDFPyj71FCDEz170723052404', 'khaulah', '085732211930', 'khaulahr@gmail.com', 1, '2017-07-22 22:24:04', '2017-07-26 03:40:58'),
(2644, 'MsKGe2T80akWGLiV37170723055313', 'Dhini Paramita S', '081333481791', 'moe_loetz@yahoo.com', 1, '2017-07-22 22:53:13', '2017-07-26 03:40:58'),
(2645, 'oZ9IG9oHB0a0Up8OIr170723114227', 'Ameera', '081335366998', 'Hermantoameera16@gmail.com', 1, '2017-07-23 04:42:27', '2017-07-26 03:40:58'),
(2646, 'gpkBxOqZyDWhOsw9Dp170723121143', 'nidya', '082140418282', 'nidyanawinda@yahoo.com', 1, '2017-07-23 05:11:43', '2017-07-26 03:40:58'),
(2647, 's8Iuj06w52Tc9hFr07170723010031', 'Bella', '082232055088', 'velachristal@gmail.com', 1, '2017-07-23 06:00:31', '2017-07-26 03:40:58'),
(2648, 'yINlISU0pbSmRdc7eG170723022754', 'Hanifah rahmayani ', '08563682774 ', 'haneefaraahma@yahoo.com', 1, '2017-07-23 07:27:54', '2017-07-26 03:40:58'),
(2649, 'KIlDvQop7QpvY1p0BU170723023806', 'Chitra diana', '081234325884', 'Chitra.dier@gmail.com', 1, '2017-07-23 07:38:06', '2017-07-26 03:40:58'),
(2650, 'w2iwAIMinZRySGHDnj170723041616', 'Fitri pertiwi h', '081259066554', 'upik.kipu@gmail.com', 1, '2017-07-23 09:16:16', '2017-07-26 03:40:58'),
(2651, 'kQQbPgT6FmCWzeWnmv170723094004', 'sakina husen', '08121735612', 'sakinahusen@gmail.com', 1, '2017-07-23 14:40:04', '2017-07-26 03:40:58'),
(2652, 'f7jOvC9VCgWzNZ7Spv170724041715', 'Titis', '082141559714', 'titisyasmeen@gmail.com', 1, '2017-07-23 21:17:15', '2017-07-26 03:40:58'),
(2653, 'D5rTtxNXaAyaW8s0P5170724124012', 'Shinta Ayu Novitasari', '081231959101', 'shintaayuno@gmail.com', 1, '2017-07-24 05:40:12', '2017-07-26 03:40:58'),
(2654, 'DgDZpwuUdtnoFQ3UbO170724020212', 'Anna', '082142423981', 'Annamardiana2281@gmail.com', 1, '2017-07-24 07:02:12', '2017-07-26 03:40:58'),
(2655, 'ligkEx7Zx972jJ7gND170724020741', 'nelly', '083832720108', 'nellyseptian@gmail.com', 1, '2017-07-24 07:07:41', '2017-07-26 03:40:58'),
(2656, 'MPOrbmqW7ZAbd2yvCi170724021858', 'Fita wulandari', '085646168202', 'Fitawulandari13@gmail.com', 1, '2017-07-24 07:18:58', '2017-07-26 03:40:58'),
(2657, 'gk74i4AFHsTT6uSG9N170724043354', 'Tia agustin', '08883706161', 'tiaagustin861@gmail.com', 1, '2017-07-24 09:33:54', '2017-07-26 03:40:58'),
(2658, 'stwZ8fPZj63TE9dYDV170724062516', 'febri', '+6281553369555', 'febri.plb@gmail.com', 1, '2017-07-24 11:25:16', '2017-07-26 03:40:58'),
(2659, 'j3JhjNw48HER0iMtRC170724110626', 'NAILY ITQIANA', '081332941030', 'nailyhq@gmail.com', 1, '2017-07-24 16:06:26', '2017-07-26 03:40:58'),
(2660, 'bvu6fry60e6tmx3W2l170724111011', 'NAILY ITQIANA', '081332941030', 'nailyhq@gmail.com', 1, '2017-07-24 16:10:11', '2017-07-26 03:40:58'),
(2661, 'Zp8osN71KBO76g60az170724114251', 'Yulia indah safitri', '0816511717', 'ysavitri777@gmail.com', 1, '2017-07-24 16:42:51', '2017-07-26 03:40:58'),
(2662, 'X8qC0yifLj3Z069p7I170725032843', 'Alldila rezky', '085931000133', 'Alldilarezky277@gmail.com', 1, '2017-07-24 20:28:43', '2017-07-26 03:40:58'),
(2663, 'obsQRY2xm5GS725csC170725081711', 'rendy', '081514529279', 'rendy@bangunarta.co.id', 1, '2017-07-25 01:17:11', '2017-07-26 03:40:58'),
(2664, 'R7qOLKltiosYlJPwtk170725112903', 'nur aini', '00000000', 'nuraqni@gmail.com', 1, '2017-07-25 04:29:03', '2017-07-26 03:40:58'),
(2665, 'hQ4e9PfMTNpyZ64pTi170725013121', 'Devi andalusia', '081330655199', 'deviandalucia@gmail.com', 1, '2017-07-25 06:31:21', '2017-07-26 03:40:58'),
(2666, '0CvozJVxDvsT1SnfQm170725013202', 'Devi andalusia', '081330655199', 'deviandalucia@gmail.com', 1, '2017-07-25 06:32:03', '2017-07-26 03:40:58'),
(2667, 'V6vH8NdBabhp53L4of170725015320', 'Deb', '085853063700', 'Dede_zafir@yahoo.co.id', 1, '2017-07-25 06:53:20', '2017-07-26 03:40:58'),
(2668, 'MWvgbHSaMqkbaz5OoR170725041400', 'Naretha', '085731341990', 'narethatrishinta@gmail.com', 1, '2017-07-25 09:14:00', '2017-07-26 03:40:58'),
(2669, 'yeE8JPBWqtpsZA2Y8q170725050241', 'EYLEN ', '081330150323', 'eylencs@yahoo.com', 1, '2017-07-25 10:02:41', '2017-07-26 03:40:58'),
(2670, 'ZqiUJhbKW6HdtT9XSJ170725055542', 'Maya widyastuti', '081230115511', 'maia.amor@gmail.com', 1, '2017-07-25 10:55:42', '2017-07-26 03:40:58'),
(2671, '51UYcaRc2sAJfCQjYF170725061753', 'yani wijayanti', '081216120120', 'yaniwijayanti@gmail.com', 1, '2017-07-25 11:17:53', '2017-07-26 03:40:58'),
(2672, 'UfoLpGoFWIMEFnV8Xk170725063045', 'Shakina daulika prusdani', '081233777753', 'shakinadaulika@gmail.com', 1, '2017-07-25 11:30:45', '2017-07-26 03:40:58'),
(2673, '4QoYSK7EvafFVpdeBR170725084407', 'dyah sischa', '081233586344', 'dyahsischasari@gmail.com', 1, '2017-07-25 13:44:07', '2017-07-26 03:40:58'),
(2674, 'uc80UmyFqn5HBEAy6G170725095255', 'Farisa Adillah', '082257444542', 'farisa0605@gmail.com', 1, '2017-07-25 14:52:55', '2017-07-26 03:40:58'),
(2675, 'EXSaSgNpzhCxsAjNtU170725113900', 'fathimah baabdullah', '081333101078', 'rifdaa.alamudi@gmail.com', 1, '2017-07-25 16:39:00', '2017-07-26 03:40:58'),
(2676, 'H3bNiKsT1yytOk3t1U170725114021', 'rifda alamudi', '081230000589', 'rifdaa.alamudi@gmail.com', 1, '2017-07-25 16:40:21', '2017-07-26 03:40:58'),
(2677, 'IxK6IYeOX2mlvgE0wK170725114201', 'fathimah baabdullah', '081333101078', 'fathimahmba@gmail.com', 1, '2017-07-25 16:42:01', '2017-07-26 03:40:58'),
(2678, '8RUndgYzeWIkJ6FaX1170726033449', 'lely triyas', '087758894884', 'lelytriyas@gmail.com', 1, '2017-07-25 20:34:49', '2017-07-26 03:40:58'),
(2679, '6DLN5bS33iy3TtH87X170726073131', 'Anisa Paramitha', '0895382093192', 'aparamithadewi3@gmail.com', 1, '2017-07-26 00:31:31', '2017-07-26 03:40:58'),
(2680, 'pyHuvTkM5BiVFXgxWy170726095417', 'Luluk Eka', '08155013733 ', 'luxecha@yahoo.com', 1, '2017-07-26 02:54:17', '2017-07-26 03:40:58'),
(2681, 'XDEeeHl5P8QzTEAHXn170726101613', 'Gresty Febrina', '08175279786', 'krrr.miaow@gmail.com', 1, '2017-07-26 03:16:13', '2017-07-26 03:40:58'),
(2682, 'olJ1dnjPT0FrhEU7zK170726103158', 'amalia', '085648757974', 'machdia@yahoo.com', 1, '2017-07-26 03:31:58', '2017-07-26 03:40:58'),
(2683, 'BxlhwdzkjNDvevT1dN170726103218', 'ika dini', '085733974056', 'kdnnovia@gmail.com', 1, '2017-07-26 03:32:18', '2017-07-26 03:40:58'),
(2684, 'QNK0sywhixQyYTc5sR170726104438', 'Nana Yuli Prihardini', '085733895816', 'nyprihardini@gmail.com', 1, '2017-07-26 03:44:38', '2017-08-01 06:14:42'),
(2685, 'LokJ7RhFHb6eqWFzmM170726124227', 'Wafdah', '082234018263', 'ki2luvislam@gmail.com', 1, '2017-07-26 05:42:27', '2017-08-01 06:14:42'),
(2686, '0tNdD2Ttmp6wlCP0KE170726023315', 'kuncoro', '0811304141', 'dakwah.alfalah.sby@gmail.com', 1, '2017-07-26 07:33:15', '2017-08-01 06:14:42'),
(2687, 'kTwTjzw41LdWvZswUx170726024254', 'Aulia rizky mardiyana', '083856399907', 'auliarizky1903@gmail.com', 1, '2017-07-26 07:42:54', '2017-08-01 06:14:42'),
(2688, 'jIwJHsM61g7cHdl4ZI170726033831', 'mita', '085646030521', 'mitha_ruvindo@yahoo.co.id', 1, '2017-07-26 08:38:31', '2017-08-01 06:14:42'),
(2689, '73Xrl877psz5RLHcQ9170726034054', 'mita', '085646030521', 'mitha_ruvindo@yahoo.co.id', 1, '2017-07-26 08:40:54', '2017-08-01 06:14:42'),
(2690, 'j0v91ut7Y7QxEivsJz170726044147', 'Neni', '081252363531', 'isnainibudiarti@gmail.com', 1, '2017-07-26 09:41:47', '2017-08-01 06:14:42'),
(2691, 'pqWaVsmoLZJ4TMeTBR170726045344', 'Isnainjbudiarti', '081252363531', 'isnainibudiarti@gmail.com', 1, '2017-07-26 09:53:44', '2017-08-01 06:14:42'),
(2692, 'zleRQx884l8TFykaDl170726045442', 'Isnaini budiarti', '081252363531', 'isnainibudiarti@gmail.com', 1, '2017-07-26 09:54:42', '2017-08-01 06:14:42'),
(2693, 'AbpOMvmPylUqtMSRK1170726071327', 'yuli kurnia', '085853223263', 'yulikurnia43@yahoo.co.id', 1, '2017-07-26 12:13:27', '2017-08-01 06:14:42'),
(2694, 'iv6mtQ8BfNF2N7DkFJ170726071705', 'Alvin seotyaningtiyas', '085730777732', 'curious.apiin@gmail.com', 1, '2017-07-26 12:17:05', '2017-08-01 06:14:42'),
(2695, 'miyiDYOIOPc5rFK5Ql170726074342', 'Kiki', '082244668742', 'fadhilcute1@gmail.com', 1, '2017-07-26 12:43:42', '2017-08-01 06:14:42'),
(2696, '81Sw4RpjWrwSaVFHca170726075949', 'Faiqotur rokhmania', '83831442226', 'faiqoturrokhmania@gmail.com', 1, '2017-07-26 12:59:49', '2017-08-01 06:14:42'),
(2697, 'SZ0C1897QBHBE1yl2w170726090736', 'fira', '85230575002', 'fira.nura@gmail.com', 1, '2017-07-26 14:07:36', '2017-08-01 06:14:42'),
(2698, 'GPG3p377cUTUbuUKv6170726111633', 'rizky', '082264141007', 'kiki.yr83@gmail.com', 1, '2017-07-26 16:16:33', '2017-08-01 06:14:42'),
(2699, 'M7vDLMOErnObXMVziC170727040825', 'Dewi', '082244144774', 'd.listyani06@gmail.com', 1, '2017-07-26 21:08:25', '2017-08-01 06:14:42'),
(2700, 'XSWdjy44Nwh4TFWDRH170727081102', 'tri retno', '081332569696', 'trieretno155@gmail.com', 1, '2017-07-27 01:11:02', '2017-08-01 06:14:42'),
(2701, 'V7eAGMHqDFxkexIfOJ170727084016', 'yanuta dian', '081807766650', 'dheeann@yahoo.com', 1, '2017-07-27 01:40:16', '2017-08-01 06:14:42'),
(2702, 'gRxL97Gjf3byoSuAFV170727084039', 'Dita', '082140236467', 'dita.albi@gmail.com', 1, '2017-07-27 01:40:39', '2017-08-01 06:14:42'),
(2703, 'zxDrrArYPgyt4zSKx2170727102330', 'pratiwi', '081232401374', 'timboelnich@gmail.com', 1, '2017-07-27 03:23:30', '2017-08-01 06:14:42'),
(2704, 'bovCZTEjohfA8zscfb170727015147', 'Dwiyani', '08972506940', 'dwi150311@gmail.com', 1, '2017-07-27 06:51:47', '2017-08-01 06:14:42'),
(2705, 'fAZGt2to8vliYxh5LY170727020458', 'Noor Ariffah Liekawati', '081553050678', 'ifa.liekawati@gmail.com', 1, '2017-07-27 07:04:58', '2017-08-01 06:14:42'),
(2706, 'a65sYlvBadsTeeTxpi170727032258', 'santy', '08563491885', 'babuba_girl@yahoo.com', 1, '2017-07-27 08:22:58', '2017-08-01 06:14:42'),
(2707, 'cdK6qQD3ZC4zlf8K0z170727044122', 'diah', '085231083838', 'willy.Bo36@yahoo.com', 1, '2017-07-27 09:41:22', '2017-08-01 06:14:42'),
(2708, 'MM0HmlActc8Np6wvjt170727053045', 'aulia', '0895322628195', 'aulia.nurdianti07@gmail.com', 1, '2017-07-27 10:30:45', '2017-08-01 06:14:42'),
(2709, '00J8QTp5Gr9xAuzA7V170727092512', 'Nanang Eko Prasetiyo', '081330446848', 'nanang.eko.prasetiyo@gmail.com', 1, '2017-07-27 14:25:12', '2017-08-01 06:14:42'),
(2710, 'WjUlOQqHu9oREGWmXJ170728101027', 'DIAH MARGARETA', '08563187137', 'margareta.setro@gmail.com', 1, '2017-07-28 03:10:27', '2017-08-01 06:14:42'),
(2711, 'nn1kLmyIM6yeh6qHGW170728103736', 'martha', '082245641992', 'yussimarta@gmail.com', 1, '2017-07-28 03:37:36', '2017-08-01 06:14:42'),
(2712, 'fpFXdJ4RE8drWa1CkF170728023514', 'harti', '085655112304', 'hartik09@gmail.com', 1, '2017-07-28 07:35:14', '2017-08-01 06:14:42'),
(2713, '2EhUWfAut55YlxXflO170728032918', 'Vienna', '08113035543', 'viennanugroho@gmail.com', 1, '2017-07-28 08:29:18', '2017-08-01 06:14:42'),
(2714, 'kSqRBR07nuxUq59JZM170728040139', 'sri', '081380185815', 'sriharimisrini@gmail.com', 1, '2017-07-28 09:01:39', '2017-08-01 06:14:42'),
(2715, 'zB7NOblcg676R7Ua2w170728040230', 'sri Hari Mis Rini', '081380185815', 'sriharimisrini@gmail.com', 1, '2017-07-28 09:02:30', '2017-08-01 06:14:42'),
(2716, 'XnWl6KOmXuEImN8GxQ170728082546', 'Puti nilamsari', '085730977533', 'keuanganwafa@gmail.com', 1, '2017-07-28 13:25:46', '2017-08-01 06:14:42'),
(2717, 'hoQSFFGAQjh19xT7dq170728085136', 'Rina', '081391323276', 'Aryabada@rocketmail.com', 1, '2017-07-28 13:51:36', '2017-08-01 06:14:42'),
(2718, '1K66QTB7b8wTJ1L0Gk170728091514', 'Robiah', '082234672803', 'robiah37@gmail.com', 1, '2017-07-28 14:15:14', '2017-08-01 06:14:42'),
(2719, 'u7Ah4NS2yEuRJmVI0Z170729120949', 'Imah', '+6285335097488', 'Salimah950@gmal.com', 1, '2017-07-28 17:09:49', '2017-08-01 06:14:42'),
(2720, 'y093FEE1pmzc2lp39A170729122144', 'sindhi ', '085851215359 ', 'sindhi.putri@gmail.com', 1, '2017-07-28 17:21:44', '2017-08-01 06:14:42'),
(2721, 'iGs7V6X0XEI2VWDDAI170729035805', 'Anita Wijayanti', '0857-5517-1474', 'noddonly@gmail.com', 1, '2017-07-28 20:58:05', '2017-08-01 06:14:42'),
(2722, 'DbK4T0Y3HBN6XaATz9170729112109', 'Evi anggraeni', '085707548953', 'Evianggraeni0@gmail.com', 1, '2017-07-29 04:21:09', '2017-08-01 06:14:42'),
(2723, 'kLeZyzgrHnwcEoN00d170729112249', 'Evi', '085707548953', 'Evianggraeni0@gmqil.com', 1, '2017-07-29 04:22:49', '2017-08-01 06:14:42'),
(2724, 'jYjmx2elSRqIDaNsGB170729112741', 'Evi', '085707548953', 'Evianggraeni0@gmail.com', 1, '2017-07-29 04:27:41', '2017-08-01 06:14:42'),
(2725, 'yvWP1OGmBzYZeKPL9C170729121446', 'Diah', '081240882959', 'diahkartikarini@gmail.com', 1, '2017-07-29 05:14:46', '2017-08-01 06:14:42'),
(2726, 'kFk379nYOAhsKdaU02170729012031', 'ida yulia maya syaroh', '081231556663', 'idayulia8@gmail.com', 1, '2017-07-29 06:20:31', '2017-08-01 06:14:42'),
(2727, 'bXETBRgPsB0K5w4UC7170729035414', 'septy', '081249807229', 'septyseptyarini@gmail.com', 1, '2017-07-29 08:54:14', '2017-08-01 06:14:42'),
(2728, 'o34qgAutX8W9U5MKW8170729044154', 'Heny ', '082234447505 ', 'lestariheny3@gmail.com', 1, '2017-07-29 09:41:54', '2017-08-01 06:14:42'),
(2729, 'PjoE5AsF6YFuY3zQh2170729060045', 'Renny', '0857736609808', 'Rennyardiana229@gmail.com', 1, '2017-07-29 11:00:45', '2017-08-01 06:14:42'),
(2730, 'QLU7N6D4HaCgBPtpX8170729060632', 'Pungky', '085646115350', 'damayantipungky@yahoo.co.id', 1, '2017-07-29 11:06:32', '2017-08-01 06:14:42'),
(2731, 'gFwU6YKvdseK2qqrzB170729061336', 'Diyah', '085257455454', 'diyahwe@gmail.com', 1, '2017-07-29 11:13:36', '2017-08-01 06:14:42'),
(2732, 'yP5Pm6iCo4vKEzstB0170729063503', 'Dian', '082233655156', 'zaindian4@gmail.com', 1, '2017-07-29 11:35:03', '2017-08-01 06:14:42'),
(2733, 'Zp1lwcrksLJg5LLt5c170729071844', 'widi', '081803238135', 'widi.bni@gmail.com', 1, '2017-07-29 12:18:44', '2017-08-01 06:14:42'),
(2734, '6mdpHBGrS7iNsVhEcs170729072301', 'Irene Wulansari', '083830564971', 'irene_wulansari@yahoo.com', 1, '2017-07-29 12:23:01', '2017-08-01 06:14:42'),
(2735, 'g28o1Nzf3CudkMtg8D170729074258', 'karina eka putri ', '081335539998', 'karinaekaputri10@gmail.com', 1, '2017-07-29 12:42:58', '2017-08-01 06:14:42'),
(2736, 'dOvpolXrh7nXAtzMOw170729083602', 'DYAH KRISTANTI MAHARANI', '08113173338', 'dkmaharani31@gmail.com', 1, '2017-07-29 13:36:02', '2017-08-01 06:14:42'),
(2737, 'X6ZMHeD7E7BqOKxoqe170729084003', 'Fitri Rahayu', '085398725989', 'fitrirahayu029@gmail.com', 1, '2017-07-29 13:40:03', '2017-08-01 06:14:42'),
(2738, 'UtteyNgCqQ41Pnsxsi170729092626', 'Chaca novilia', '081233271477', 'Novilia.chaca@gmail.com', 1, '2017-07-29 14:26:26', '2017-08-01 06:14:42'),
(2739, 'bVVawucO2ealmVVyDP170729094920', 'irma', '085761118255', 'saidatulmukarromah07@gmail.com', 1, '2017-07-29 14:49:20', '2017-08-01 06:14:42'),
(2740, 'DlOIvm94iqtZcfVO1f170729100926', 'Mira', '087777708585 ', 'Cintakumira@yahoo.co.id', 1, '2017-07-29 15:09:26', '2017-08-01 06:14:42'),
(2741, '7pm8W5H0szj2Q6mB25170729104202', 'Farida Widiyanti', '081330603150', 'farida.wdy@gmail.com', 1, '2017-07-29 15:42:02', '2017-08-01 06:14:42'),
(2742, 'iLcRDWbUkJcKius24v170729104811', 'MUHAIRIYAH SYAFRINA', '085732233831', 'musy4f_girl@yahoo.com', 1, '2017-07-29 15:48:11', '2017-08-01 06:14:42'),
(2743, 'y002q0lMfSIgAWHTJi170729111550', 'Iva', '082234956224', 'Iva.walisongo@gmail.com', 1, '2017-07-29 16:15:50', '2017-08-01 06:14:42'),
(2744, 'fn1ho1Cp3C2h7uFkX4170729111958', 'Iva', '082234956224', 'Iva.walisongo@gmail.com', 1, '2017-07-29 16:19:58', '2017-08-01 06:14:42'),
(2745, 'CrX7JZL9FtzgKgW7S1170729113221', 'nurul badriyah', '083831267200', 'nurulbadriyah92@yahoo.com', 1, '2017-07-29 16:32:21', '2017-08-01 06:14:42'),
(2746, 'RTpgcX2AMtdKM9evkN170730060818', 'Ismiyatul izza p', '085606204332', 'Aizzawa130398@gmail.com', 1, '2017-07-29 23:08:18', '2017-08-01 06:14:42'),
(2747, '2nQ7CM0cuopCxPCwjP170730061039', 'Ismiyatul izza p', '085606204332', 'Aizzawa130398@gmail.com', 1, '2017-07-29 23:10:39', '2017-08-01 06:14:42'),
(2748, 'QEj7PXfrRcWNMeuf1c170730083617', 'nandha', '083830663807', 'nandhamailia@gmail.com', 1, '2017-07-30 01:36:17', '2017-08-01 06:14:42'),
(2749, 'HBvcv4hfHRgZzSdBft170730083903', 'Liza', '082132350763', 'lizaainulmila@gmail.com', 1, '2017-07-30 01:39:03', '2017-08-01 06:14:42'),
(2750, 'h55GWU7XbJDLgMWQ19170730084138', 'Elen Wika Hidayanti', '082230845514', 'wikahidayanti@gmail.com', 1, '2017-07-30 01:41:38', '2017-08-01 06:14:42'),
(2751, '2CSiAmhQa3nCakvRte170730085113', 'Indriana', '085731464912', 'indriana90@gmail.com', 1, '2017-07-30 01:51:13', '2017-08-01 06:14:42'),
(2752, 'R0F8p99uVrbs3IvyOh170730085202', 'Indriana', '085731464912', 'indriana90@gmail.com', 1, '2017-07-30 01:52:02', '2017-08-01 06:14:42'),
(2753, 'W9X1m7iqlwydnOteqQ170730085714', 'Dianita Lindara Saputri', '085730061205', 'dianitanyaa@gmail.com', 1, '2017-07-30 01:57:14', '2017-08-01 06:14:42'),
(2754, 'CXRdvwgx2ePYkmct5i170730090210', 'Etty', '085785773231', 'ettyalsri@gmail.com', 1, '2017-07-30 02:02:10', '2017-08-01 06:14:42'),
(2755, 'NrtmhKJm90OjoRpyKv170730090255', 'Retna Zeni Vivilyah', '082231430460', 'retnachantika@gmail.com', 1, '2017-07-30 02:02:55', '2017-08-01 06:14:42'),
(2756, 'PN8FLpoKacER2MlmkQ170730090934', 'Syaharani', '08972217761', 'syaharanidyah12@gmail.com', 1, '2017-07-30 02:09:34', '2017-08-01 06:14:42'),
(2757, 'yLfEMGa00xbiMdy77P170730091932', 'Puput', '085607703887', 'Poetrikalpika@gmail.com', 1, '2017-07-30 02:19:32', '2017-08-01 06:14:42'),
(2758, 'f58G4Cd0hYJQLqvU30170730093314', 'lely', '082139278566', 'lely.simpson98@gmail.com', 1, '2017-07-30 02:33:14', '2017-08-01 06:14:42'),
(2759, 'gpgTfKN65eTvjppKyl170730094029', 'dini', '081233796578', 'ajengdinik@gmail.com', 1, '2017-07-30 02:40:29', '2017-08-01 06:14:42'),
(2760, 'PXTDTL2Fd9JyM4VJUI170730094619', 'umfar', '085850048557', 'umufarikha09@gmail.com', 1, '2017-07-30 02:46:19', '2017-08-01 06:14:42'),
(2761, 'tmlNfVnT3QRV24t3w2170730101532', 'Ulfi vivi', '081331307904', 'ulfiyatul85@gmail.com', 1, '2017-07-30 03:15:32', '2017-08-01 06:14:42'),
(2762, 'LXr3shnib0MNxJJF8U170730104245', 'erviana', '085649180853', 'ervianad@gmail.com', 1, '2017-07-30 03:42:45', '2017-08-01 06:14:42'),
(2763, 'HcisQN1wrMNfZHRv70170730105401', 'Elvira Danaparamita', '088804801066', 'elviramita99@gmail.com', 1, '2017-07-30 03:54:01', '2017-08-01 06:14:42'),
(2764, 'AQ5ovRjLyYxzoSCseB170730125058', 'yeni', '081217774645', 'yeniafniyatulfuad@gmail.com', 1, '2017-07-30 05:50:58', '2017-08-01 06:14:42'),
(2765, 'NrnTpVr5psU1TMEvVQ170730013534', 'fitria puspitawatie', '085607359795', 'fieputz_23@yahoo.co.id', 1, '2017-07-30 06:35:34', '2017-08-01 06:14:42'),
(2766, 'zpOReQUbRQya8sosoQ170730014541', 'Gadis Maulida', '08113110113', 'Gadismaulida@gmail.com', 1, '2017-07-30 06:45:41', '2017-08-01 06:14:42'),
(2767, 'r4qGk7MM5Sr3mHF7fl170730015505', 'Endah Dwi Utari', '083857594411', 'endahdwiutari18@gmail.com', 1, '2017-07-30 06:55:05', '2017-08-01 06:14:42'),
(2768, 'aHDP2ugCjlCjl3071E170730025146', 'Nita wahyuni', '085730375356', 'da_niwa25@yahoo.co.id', 1, '2017-07-30 07:51:46', '2017-08-01 06:14:42'),
(2769, 'CQNbQQf5yjYWOFHiMQ170730032427', 'Nurul Latifah', '085648337524', 'Latifahnurul85@gmail.com', 1, '2017-07-30 08:24:27', '2017-08-01 06:14:42'),
(2770, '3Pmt8cUd0sLCWPCepL170730032516', 'Hana tsany', '081293949325', 'hanatsany@gmail.com', 1, '2017-07-30 08:25:16', '2017-08-01 06:14:42'),
(2771, 'FVtgAOoJL5jIc5nlOe170730043518', 'Ma''rifatin Insani', '082231376732', 'insani.ikwil@gmail.com', 1, '2017-07-30 09:35:18', '2017-08-01 06:14:42'),
(2772, 'Zi2n0pTtqWyZ51JAjF170730043659', 'Amrina', '085649112641', 'Amrina.amm@gmail.com', 1, '2017-07-30 09:36:59', '2017-08-01 06:14:42'),
(2773, 'qP4ZA5LorWEe1Rsh7E170730061649', 'lisha', '083857069750', 'itsmisha7@gmail.com', 1, '2017-07-30 11:16:49', '2017-08-01 06:14:42'),
(2774, '40DjxvE2NVjIR84fxR170730062008', 'azimah ulya', '081246814680', 'azimahulya29@gmail.com', 1, '2017-07-30 11:20:08', '2017-08-01 06:14:42'),
(2775, 'U4Pif94oGRRAHwoWYi170730071003', 'sarah', '087855579263', 'snwidyaningtiyas@gmail.com', 1, '2017-07-30 12:10:03', '2017-08-01 06:14:42'),
(2776, 'ZdZCFeTZqmKdqaYyId170730082100', 'Wahju Kusumajanti', '0811315843', 'wahjoe07@yahoo.co.id', 1, '2017-07-30 13:21:00', '2017-08-01 06:14:42'),
(2777, 'NHrWjeGQvqaBFnOuNT170730093234', 'dian santana', 'cinta12345', 'diansantana441@gmail.com', 1, '2017-07-30 14:32:34', '2017-08-01 06:14:42'),
(2778, 'DQMkzCgXGreE4wZpwq170731074522', 'Forse', '081330321413', 'forseana@gmail.com', 1, '2017-07-31 00:45:22', '2017-08-01 06:14:42'),
(2779, 'CSaWzrjGGBcNfBz7sz170731082017', 'Sisil desi pratiwi', '085258837922', 'Sisil.desi.p@gmail.com', 1, '2017-07-31 01:20:17', '2017-08-01 06:14:42'),
(2780, 'FiZhAfyjmpQiZLyzq4170731083445', 'Nur Aini Hanafi', '082230221038', 'nurainihanafi17@gmail.com', 1, '2017-07-31 01:34:45', '2017-08-01 06:14:42'),
(2781, 'YNJUCX8xpab8AtTnom170731090644', 'Fitria Marsya Kurniasari', '089698366138', 'fitria.marsya.fm@gmail.com', 1, '2017-07-31 02:06:44', '2017-08-01 06:14:42');
INSERT INTO `download_pricelist` (`id`, `token`, `name`, `phone`, `email`, `readed`, `created_at`, `updated_at`) VALUES
(2782, 'XIJQG6ykPnzObWbbEy170731100134', 'ria', '081249941678', 'riapuspita@yahoo.com', 1, '2017-07-31 03:01:34', '2017-08-01 06:14:42'),
(2783, 'xq40ZIPzjJgDWzUHra170731105922', 'Nuri', '087854003908', 'nuriwayanti1106@gmail.com', 1, '2017-07-31 03:59:22', '2017-08-01 06:14:42'),
(2784, 'WMeMRufK84O41XZzf1170731110523', 'vivi', '085730075700', 'vivi.damayanti@kuehne-nagel.com', 1, '2017-07-31 04:05:23', '2017-08-01 06:14:42'),
(2785, 'BnqOB61UDAW5Dc7fV8170731114058', 'Yulistyowati kusuma akbar', '082244032304', 'juliez_hime@yahoo.com', 1, '2017-07-31 04:40:58', '2017-08-01 06:14:42'),
(2786, 'eLaETJOApM3WiRqoiT170731114721', 'lia', '085648186153', 'liachoirul202@gmail.com', 1, '2017-07-31 04:47:21', '2017-08-01 06:14:42'),
(2787, 'R2PiWA2HkuFDSFyPG2170731122055', 'novi', '087851124678', 'galerireysada@gmail.com', 1, '2017-07-31 05:20:55', '2017-08-01 06:14:42'),
(2788, 'M0je5ECC5JeGDnnSo2170731124616', 'Popi', '082257800191', 'Sriwiatisutamso@gmail.com', 1, '2017-07-31 05:46:16', '2017-08-01 06:14:42'),
(2789, 'O6e0nlNSMGTGiD52HN170731011255', 'nila', '085736367619', 'nilaindarwati15@gmail.com', 1, '2017-07-31 06:12:55', '2017-08-01 06:14:42'),
(2790, 'tQuvxbqe1nNhpNGo6g170731021943', 'Yuli', '082245557535', 'yulyfaily@gmail.com', 1, '2017-07-31 07:19:43', '2017-08-01 06:14:42'),
(2791, 'nDh9czAbXSJLa2Z2Pt170731035934', 'Faradillah Intan Ramadhani', '085731005628', 'faradillahir@gmail.com', 1, '2017-07-31 08:59:34', '2017-08-01 06:14:42'),
(2792, 'LHIXYP7ZjeezncAKrz170731044424', 'Roichatul jannah', '081239024150', 'annafeb1428@gmail.com', 1, '2017-07-31 09:44:24', '2017-08-01 06:14:42'),
(2793, 'NSSwJQVrEpDDNSusSo170731081201', 'Dyah utari wj', '081331260775', 'dyahutariwj@gmail.com', 1, '2017-07-31 13:12:01', '2017-08-01 06:14:42'),
(2794, 'bpgoE3WBVMCE4vWDpe170731081751', 'Revitha Novi', '085787918500', 'tha2_momo@yahoo.com', 1, '2017-07-31 13:17:51', '2017-08-01 06:14:42'),
(2795, 'nJfiYyJEs4UiSZ05rR170731100336', 'Estuti', '08983656326', 'estutii37@gmail.com', 1, '2017-07-31 15:03:36', '2017-08-01 06:14:42'),
(2796, 'SE57z93TSZtLuKfqUO170731104137', 'Fani', '081335520484', 'fany.muzta@gmail.com', 1, '2017-07-31 15:41:37', '2017-08-01 06:14:42'),
(2797, 'Uazlfg2Mc1Yp8vRILo170731114412', 'Charity Hartika Listiyani', '085746403999', 'cha2charity89@gmail.com', 1, '2017-07-31 16:44:12', '2017-08-01 06:14:42'),
(2798, 'M52ajyDNwvr7nRg0jn170801102118', 'Tri Mariyana Utami', '085736301889', 'trimariyanautami@gmail.com', 1, '2017-08-01 03:21:18', '2017-08-01 06:14:42'),
(2799, 'KjG12y1dRvX9gvp403170801113831', 'seindy', '082221033028', 'ndy.seindy@yahoo.com', 1, '2017-08-01 04:38:31', '2017-08-01 06:14:42'),
(2800, 'VIr4xInj8RTfzYum7G170801114018', 'seindy', '082221033028', 'ndy.seindy@yahoo.com', 1, '2017-08-01 04:40:18', '2017-08-01 06:14:42'),
(2801, 'Mv55mhQOebcxTZ7OLC170801124654', 'dwqd', '0818182303494', 'coalsjao@yahoo.com', 1, '2017-08-01 05:46:54', '2017-08-01 06:14:42'),
(2802, 'PFywmlOnpAMnfiiEI1170801021253', 'Aprilia', '08561779060', 'liaapril836@gmail.com', 1, '2017-08-01 07:12:53', '2017-08-15 05:43:08'),
(2803, '96pDnaI9GoIwB9YjKL170801041152', 'dinda yuliana handayani', '082234535756', 'dindayuliana04@yahoo.com', 1, '2017-08-01 09:11:52', '2017-08-15 05:43:08'),
(2804, 'p5n0Dk9qwzE5BtBYgs170801053916', 'rahma', '085790987428', 'fitriarahma90@gmail.com', 1, '2017-08-01 10:39:16', '2017-08-15 05:43:08'),
(2805, 'fmU82sQsI7PBJqE5LG170801054001', 'Ziya', '081249029484', 'ziyadatul.hurriyah.1997@gmail.com', 1, '2017-08-01 10:40:01', '2017-08-15 05:43:08'),
(2806, 'KzJhcxx8TlewVa7l3B170801060217', 'Anggi', '081805199116', 'ihabaahil@icloud.com', 1, '2017-08-01 11:02:17', '2017-08-15 05:43:08'),
(2807, 'w3IjM4zMQwDc9h9BwC170801063907', 'Kartika', '82245036568', 'kartika.lestari0101@gmail.com', 1, '2017-08-01 11:39:07', '2017-08-15 05:43:08'),
(2808, 'nQUujRndJutz3CsjNw170801064748', 'Anggit', '85755064034', 'anggitmahanani@gmail.com', 1, '2017-08-01 11:47:48', '2017-08-15 05:43:08'),
(2809, 'bUmwiKe3e4XoPLrbkp170802053145', 'Dina', '082131243535', 'mursyida.dina@gmail.com', 1, '2017-08-01 22:31:45', '2017-08-15 05:43:08'),
(2810, 'k3y1nnUCVRrbXgGnQA170802060403', 'Firli Annisa', '08995859817', 'anni.firli@gmail.com', 1, '2017-08-01 23:04:03', '2017-08-15 05:43:08'),
(2811, 'f7IucpCVgtnVmLVE1R170802092925', 'Isnaini', '082257105346', 'Krismalaisnaini@yahoo.co.id', 1, '2017-08-02 02:29:25', '2017-08-15 05:43:08'),
(2812, 'r4URWNWTGgnRVW2zbH170802095648', 'aulia ', '089656967986', 'akharisah@gmail.com', 1, '2017-08-02 02:56:48', '2017-08-15 05:43:08'),
(2813, 'wWMOSKi5JvZCC0VaSD170802011853', 'Dwi', '08977280636', 'Rohmahdwiastuti@gmail.com', 1, '2017-08-02 06:18:53', '2017-08-15 05:43:08'),
(2814, 'KnAoaD5umOiyDlaSV1170802012354', 'Sari', '083831898111', 'gmulyasari@yahoo.co.id', 1, '2017-08-02 06:23:54', '2017-08-15 05:43:08'),
(2815, 'CPl5IKp2DI9RmnqIJX170802020851', 'diana', '085749394494', 'diana.zee@yahoo.com', 1, '2017-08-02 07:08:51', '2017-08-15 05:43:08'),
(2816, 'kUJqyhPaf0BUzHnSI8170802032849', 'oppy', '081231359303', 'oppy.putri333@gmail.com', 1, '2017-08-02 08:28:49', '2017-08-15 05:43:08'),
(2817, 'gEWKau0AljXGW9GsWd170802053018', 'Bunga Rizma Fauziah', '085230174824', 'bungaungaaak6@gmail.com', 1, '2017-08-02 10:30:18', '2017-08-15 05:43:08'),
(2818, 'sei7ZLqMTjCrcQ40Ss170802053459', 'Bunga Rizma Fauziah', '085230174824', 'bungaungaaak6@gmail.com', 1, '2017-08-02 10:34:59', '2017-08-15 05:43:08'),
(2819, 'GRiruIJiRBKxYfAi4e170802060116', 'Nathalia', '08113470882', 'anang.ardiansyah@gmail.com', 1, '2017-08-02 11:01:16', '2017-08-15 05:43:08'),
(2820, '70hjM3jhtPoc5sB3sv170802075144', 'alfiah kusuma wardani', '085732587424', 'alfiahkusumaw@gmail.com', 1, '2017-08-02 12:51:44', '2017-08-15 05:43:08'),
(2821, 'EtekeIwYGcg9DTH8Yy170802075222', 'bilqis', '085748229022', 'beeandin@gmail.com', 1, '2017-08-02 12:52:22', '2017-08-15 05:43:08'),
(2822, 'qu1EHDK0grmbQuhSxo170802093446', 'Nina', '081240577167', 'mommy.nina01@gmail.com', 1, '2017-08-02 14:34:46', '2017-08-15 05:43:08'),
(2823, '1TJXNbIL3tBswaZ1ZK170802094608', 'Khikmiyah', '085655022833', 'rachimka@gmail.com', 1, '2017-08-02 14:46:08', '2017-08-15 05:43:08'),
(2824, 'pBfa33HHmcgxEROQTg170802102506', 'Thifani', '083851378385', 'bingungo@ymail.com', 1, '2017-08-02 15:25:06', '2017-08-15 05:43:08'),
(2825, 'wMHl7F4rn9YGb74A5n170803112605', 'layyina yasmin', '082233700104', 'yasminlayyina@gmail.com', 1, '2017-08-03 04:26:05', '2017-08-15 05:43:08'),
(2826, 'Oqoam5r009JvyNbtWM170803113719', 'Alivia', '081233888974', 'Fairuzalivia@gmail.com', 1, '2017-08-03 04:37:19', '2017-08-15 05:43:08'),
(2827, '2BQfMo4IWP0GODmByK170803114413', 'sulianty', '081375283590', 'sulin_00@yahoo.com', 1, '2017-08-03 04:44:13', '2017-08-15 05:43:08'),
(2828, '55Gimsd1hhv5l1Jofs170803115840', 'Amalina ', '082243343762 ', 'Amalinnarahmadhani10@gmail.com', 1, '2017-08-03 04:58:40', '2017-08-15 05:43:08'),
(2829, 'fSoSQ4mQcJGCd7WwiH170803024640', 'Dias Septa', '082244145273', 'diasdios@rocketmail.com', 1, '2017-08-03 07:46:40', '2017-08-15 05:43:08'),
(2830, 'KDJjLrsBW9XxX3XMC5170803064709', 'Diaanrisyanti', '+6282331351005', 'Diaanrisyanti@gmail.com', 1, '2017-08-03 11:47:09', '2017-08-15 05:43:08'),
(2831, 'ajWcJ5yI95ttlekDEN170803104253', 'Rizka', '081233787496', 'Rizkafarida04@gmail.com', 1, '2017-08-03 15:42:53', '2017-08-15 05:43:08'),
(2832, 'p1Pgx5h5x8e3tqhZuw170803105146', 'Dyah nugroho siwi', 'Kurakura', 'Siwidyah5@gmail.com', 1, '2017-08-03 15:51:46', '2017-08-15 05:43:08'),
(2833, 'XT5z4inFu1D13xlmJA170803105226', 'Dyah nugroho siwi', '081225337952', 'Siwidyah5@gmail.com', 1, '2017-08-03 15:52:26', '2017-08-15 05:43:08'),
(2834, 'z9cnr4LlsaHGxu7cBH170804120327', 'Nove', '085746744422', 'novehayyu@gmail.com', 1, '2017-08-03 17:03:27', '2017-08-15 05:43:08'),
(2835, 'R99r6XvRyJ2p5oMQCK170804010042', 'Weni nadia', '087851250142', 'Weni.nandya@gmail.com', 1, '2017-08-03 18:00:42', '2017-08-15 05:43:08'),
(2836, 't7x2AW6qFokLaqqLEc170804100303', 'Nurlailia', '081932457257', 'nurlailia95@gmail.com', 1, '2017-08-04 03:03:04', '2017-08-15 05:43:08'),
(2837, 'UQ7mkM4Sim30QjXVad170804102818', 'Risa anastasia', '082228687840', '12154anastasia83@gmail.com', 1, '2017-08-04 03:28:18', '2017-08-15 05:43:08'),
(2838, 'x87sAPBdexNfjQOzs2170804115333', 'engson qinaris', '081370253980', 'enyokinaris5@gmail.com', 1, '2017-08-04 04:53:33', '2017-08-15 05:43:08'),
(2839, 'jZcaOQBTcZo7owjsvY170804012314', 'Lolly widiya', '85247909452', 'lollygustiayu@gmail.com', 1, '2017-08-04 06:23:14', '2017-08-15 05:43:08'),
(2840, 'XUEghOSlMPW5OFydDb170804023102', 'ICHA', '083854188333', 'musicha333@gmail.com', 1, '2017-08-04 07:31:02', '2017-08-15 05:43:08'),
(2841, '8ui9Jsk2ey2NdCoNZU170804023814', 'nysa', '081330717084', 'nysa_ais@yahoo.com', 1, '2017-08-04 07:38:14', '2017-08-15 05:43:08'),
(2842, 'guxziJp6oFoePN13cb170804025238', 'Inggar', '081216838321', 'Inggaraulia@yahoo.com', 1, '2017-08-04 07:52:38', '2017-08-15 05:43:08'),
(2843, 'fxgf36TgtDscnlJ6NS170804051825', 'reyza', '089636683739', 'reyzas33@gmail.com', 1, '2017-08-04 10:18:25', '2017-08-15 05:43:08'),
(2844, 'f8WOPnKBbyRnTuw4xt170804051922', 'reyza', '089636683739', 'reyzas33@gmail.com', 1, '2017-08-04 10:19:22', '2017-08-15 05:43:08'),
(2845, '1drNXVIFETt7MUihda170804094837', 'Ika fwbri', '085648078924', 'Hoshikomu@gmail.com', 1, '2017-08-04 14:48:37', '2017-08-15 05:43:08'),
(2846, '99nzMXT2WGMqfksJDj170805053554', 'Dhelvin', '085697002700', 'Delvinsuryaningtias@gmail.com', 1, '2017-08-04 22:35:54', '2017-08-15 05:43:08'),
(2847, 'gKS9yvoSgrz8RoWVF5170805071853', 'harianto', '081514220844', 'antorunako@gmail.com', 1, '2017-08-05 00:18:53', '2017-08-15 05:43:08'),
(2848, 'I1D8Jhy9u3B9CSakxN170805110414', 'Dian Sartika', '+6287855901185', 'midorikeroro@gmail.com', 1, '2017-08-05 04:04:14', '2017-08-15 05:43:08'),
(2849, 'zYauUji5CJPkm0PT7A170805111342', 'Intan', '081230336918', 'Intanf18@gmail.com', 1, '2017-08-05 04:13:42', '2017-08-15 05:43:08'),
(2850, 'mPZFPTytL1VkbEdafc170805115009', 'dwi', '085856027023', 'rohmahdwiastuti@gmail.com', 1, '2017-08-05 04:50:09', '2017-08-15 05:43:08'),
(2851, 'KLjOYKH59uUY7oevr9170805123543', 'Ratna', '08973879000', 'febyfiwiks@yahoo.co.id', 1, '2017-08-05 05:35:43', '2017-08-15 05:43:08'),
(2852, 'NAhbSxW4DQNqnO753Q170805123903', 'Nurina', '082257664640', 'Nurinaokta@gmail.com', 1, '2017-08-05 05:39:03', '2017-08-15 05:43:08'),
(2853, 'rPoDGHBXGjQmGXxRdK170805123913', 'Silfia nur hajjah', '089648458818', 'Silfianurhajjah@gmail.com', 1, '2017-08-05 05:39:13', '2017-08-15 05:43:08'),
(2854, 'emGRzfVycVxfu5hnR9170805034956', 'Ety', '082257675257', 'Etymedip@gmail.com', 1, '2017-08-05 08:49:56', '2017-08-15 05:43:08'),
(2855, 'CwdLRPu2usjIScB6lp170805035138', 'Ety', '082257675257', 'Etymedip@gmail.com', 1, '2017-08-05 08:51:38', '2017-08-15 05:43:08'),
(2856, 'RuW3Aq1NKkF52WOkPv170805051218', 'Kartika intan', '085733621143', 'kartikaintanw@gmail.com', 1, '2017-08-05 10:12:18', '2017-08-15 05:43:08'),
(2857, 'k6FOuAdVwh8BKFiSFk170805051449', 'Dyan Wahyu', '082234247894', 'Dyanwahyuningrum@gmail.com', 1, '2017-08-05 10:14:49', '2017-08-15 05:43:08'),
(2858, 'EejDytxccTzl9XWg3g170805062649', 'ANNA', '08', 'accdotanna@gmail.com', 1, '2017-08-05 11:26:49', '2017-08-15 05:43:08'),
(2859, 'cDz4vlIA2NtLJXDLUv170806051006', 'Rini Dwi', '085749780069', 'ladyrose303@gmail.com', 1, '2017-08-05 22:10:06', '2017-08-15 05:43:08'),
(2860, 'De8bW9O6krBjoKoeJy170806100509', 'Pristiyanti Damansari', '083845034137', 'pristiyantidamansari1902@gmail.com', 1, '2017-08-06 03:05:09', '2017-08-15 05:43:08'),
(2861, '81XsPhwPCy0cwLMfyw170806103909', 'Tyut', '081347171698', 'tyut_inthut@yahoo.com', 1, '2017-08-06 03:39:09', '2017-08-15 05:43:08'),
(2862, 'uCVkfpo4rNkcu6YOQQ170806120814', 'Ade Yuliyasmin Sunaryo', '6285645263531', 'adeyuliyasmin@gmail.com', 1, '2017-08-06 05:08:14', '2017-08-15 05:43:08'),
(2863, 'qQdZ97X3Cd78DJ4gmx170806121413', 'Inggrid', '08118881994', 'inggrid494@gmail.com', 1, '2017-08-06 05:14:13', '2017-08-15 05:43:08'),
(2864, 'Ih7j4eZsj30snapGhC170806012428', 'Nur Chanifa Wahyulis', '081331583740', 'nurchanifa151092@gmail.com', 1, '2017-08-06 06:24:28', '2017-08-15 05:43:08'),
(2865, 'x4dgx6KufaCUNN6Sez170806031826', 'Yaniara', '9', 'nad98cchc@gmail.com', 1, '2017-08-06 08:18:26', '2017-08-15 05:43:08'),
(2866, 'BqtJAtviyBDCVw0PE5170806032907', 'lely', '082139278566', 'lely.simpson98@gmail.com', 1, '2017-08-06 08:29:07', '2017-08-15 05:43:08'),
(2867, 'oRNoMo8zudodP9AMRZ170806033225', 'alma', '085645261393', 'almaratul.khoiriyah@gmail.com', 1, '2017-08-06 08:32:25', '2017-08-15 05:43:08'),
(2868, 'rda68CVYSV2rpPvDnu170806033248', 'Jayanti', '085649235633', 'Jayanti.widyanandah88@gmail.com', 1, '2017-08-06 08:32:48', '2017-08-15 05:43:08'),
(2869, 'oQR7gxhUqGbrmlH0lr170806051559', 'Tiwi', '085647002303', 'Tiwiky@windowslive.com', 1, '2017-08-06 10:15:59', '2017-08-15 05:43:08'),
(2870, 'isDaoh0XNNVaPjNI3V170806084032', 'Dindha Ramah Mulia', '085647505438', 'dindharamahmulia@gmail.com', 1, '2017-08-06 13:40:32', '2017-08-15 05:43:08'),
(2871, '4NxQbXi5sy1NIfSPVp170806090326', 'novita', '081548878548', 'christanti.novi@gmail.com', 1, '2017-08-06 14:03:26', '2017-08-15 05:43:08'),
(2872, 'mBofhRjKoIbuKMAbkm170806103253', 'Nur Afiah', '082220310022', 'nurafiah.apt@gmail.com', 1, '2017-08-06 15:32:53', '2017-08-15 05:43:08'),
(2873, 'Jb6P8u2wqvVdaeHXjm170806111503', 'shafa', '085732662200', 'happyshafa@gmail.com', 1, '2017-08-06 16:15:03', '2017-08-15 05:43:08'),
(2874, 'vlxODO8xPPiz0SPyZo170807052015', 'Yuli', '085342444618', 'siscapte@yahoo.com', 1, '2017-08-06 22:20:15', '2017-08-15 05:43:08'),
(2875, 'QSyE1bqWF8hDNioONf170807083957', 'Ninis eka saputri', '085648443885', 'ninis.saputri@yahoo.com', 1, '2017-08-07 01:39:57', '2017-08-15 05:43:08'),
(2876, 'CAjhfKdGEPwE8SHOFN170807084037', 'Ninis eka saputri', '085648443885', 'ninis.saputri@yahoo.com', 1, '2017-08-07 01:40:37', '2017-08-15 05:43:08'),
(2877, 'x7nM1SDMj5kAXLceNK170807090010', 'Nita', '087853888732', 'nita.setiyobudi@gmail.com', 1, '2017-08-07 02:00:10', '2017-08-15 05:43:08'),
(2878, '8hsDAtawMgVNEinAch170807103943', 'Dina novitasari', '085645963330', 'dinamisspink@gmail.com', 1, '2017-08-07 03:39:43', '2017-08-15 05:43:08'),
(2879, 'jG5ac4a8seovD6JW6K170807110935', 'Kiki andani', '083857484658', 'Andani807@gmail.com', 1, '2017-08-07 04:09:35', '2017-08-15 05:43:08'),
(2880, 'OtzcO2HfbQIuvuVOMP170807032013', 'katya wili sarah', '083831990951', 'katyaaldian@gmail.com', 1, '2017-08-07 08:20:13', '2017-08-15 05:43:08'),
(2881, 'HRyJPJUKjHGAWLN7KY170807044337', 'Aisah', '085733102237', 'aiyy.befirst@gmail.com', 1, '2017-08-07 09:43:37', '2017-08-15 05:43:08'),
(2882, 'uQzItjbo5xghMcLPiy170807062305', 'Ratna', '085606613194', 'ratna.fuzzi@gmail.com', 1, '2017-08-07 11:23:05', '2017-08-15 05:43:08'),
(2883, 'xEK9549QNwof4NR72b170807085129', 'niken', '081554205017', 'niken_clarica@yahoo.co.id', 1, '2017-08-07 13:51:29', '2017-08-15 05:43:08'),
(2884, '4R8TXSPYqQwT6rXGiB170807095823', 'Elda damayanti', '081333357610', 'bundabibie@gmail.com', 1, '2017-08-07 14:58:23', '2017-08-15 05:43:08'),
(2885, 's2lS9Q8tQ7i9DYNwe4170808122857', 'Ayu', '082329675131', 'ndusst@gmail.com', 1, '2017-08-07 17:28:57', '2017-08-15 05:43:08'),
(2886, '1UJJCYJFxwU76oMFc3170808082632', 'RIZKY AMELIA', '081703203354', 'eq_manutd@yahoo.com', 1, '2017-08-08 01:26:32', '2017-08-15 05:43:08'),
(2887, 'vQwVYn5uAOOnz8EXWl170808111950', 'ulya', '08563157449', 'ULYAISNYNAME@GMAIL.COM', 1, '2017-08-08 04:19:50', '2017-08-15 05:43:08'),
(2888, 'S5U4iXav6YodoqmOzb170808112124', 'Amanda ', '082230014131', 'Amandaoriflamesurabaya@gmail.com', 1, '2017-08-08 04:21:24', '2017-08-15 05:43:08'),
(2889, 'BNJx8AmN0dyemFpN03170808115136', 'Sekar', '085785013197', 'sekarfazni@gmail.com', 1, '2017-08-08 04:51:36', '2017-08-15 05:43:08'),
(2890, 'ylYnFIA6ZH4bGQKZ5c170808115336', 'Priske yuanita', '082231055518', 'Yuanitapriske@gmail.com', 1, '2017-08-08 04:53:36', '2017-08-15 05:43:08'),
(2891, 'ilKDA9x4I05pcpr3dq170808125432', 'Nuril', '081299139433', 'nuril.mirza14@gmail.com', 1, '2017-08-08 05:54:32', '2017-08-15 05:43:08'),
(2892, 'u5eMgce25qf7DEaqCm170808030214', 'sella', '0857-3007-5044', 'sella.lestari32@gmail.com', 1, '2017-08-08 08:02:14', '2017-08-15 05:43:08'),
(2893, 'zHowZ1lYSIbEXwmb6N170808041856', 'Dilla', '081335646544', 'Dilla316@yahoo.com', 1, '2017-08-08 09:18:56', '2017-08-15 05:43:08'),
(2894, 'kFHzbhFJcS56mI3yfZ170808055917', 'Sifa''un', '085607556397', 'sifaafifah97@gmail.com', 1, '2017-08-08 10:59:17', '2017-08-15 05:43:08'),
(2895, 'nHO6gJkSdSDkEBqoJJ170808080739', 'Selvia Mufidah', '089933881165', 'Apccholic@ymail.com', 1, '2017-08-08 13:07:39', '2017-08-15 05:43:08'),
(2896, '9EPbLO7SRTqK4GNHjD170808090519', 'izzah', '081515112880', 'Maghfirotul.izzah@gmail.com', 1, '2017-08-08 14:05:19', '2017-08-15 05:43:08'),
(2897, 'o8B5wdtTWUSlZmYhKW170808090619', 'izzah', '081515112880', 'Maghfirotul.izzah@gmail.com', 1, '2017-08-08 14:06:19', '2017-08-15 05:43:08'),
(2898, 'POjWgqc5Q2mQou7klo170808093147', 'Ratna yanuarti', '081217671114', 'Nha2.aja@gmail.com', 1, '2017-08-08 14:31:47', '2017-08-15 05:43:08'),
(2899, 'KcaYiv42MdcwnPYJzy170808094031', 'Ratna yanuarti', '081217671114', 'Nha2.aja@gmail.com', 1, '2017-08-08 14:40:31', '2017-08-15 05:43:08'),
(2900, 'MvTucPqFW0seqilyJ8170809062034', 'Retno Sekar', '08118822000', 'Rskarx@gmail.com', 1, '2017-08-08 23:20:34', '2017-08-15 05:43:08'),
(2901, 'pB0wOKcv2deZ49TMrU170809125807', 'Lina', '081703047240', 'Ummuzaidan@gmail.com', 1, '2017-08-09 05:58:07', '2017-08-15 05:43:08'),
(2902, 'EBAomHhq9OE3qDZszE170809010407', 'Lina', '081703047240', 'ummuzaidan@gmail.com', 1, '2017-08-09 06:04:07', '2017-08-15 05:43:08'),
(2903, 'qDcbeOOtCvweHKhhBF170809031743', 'Renny', '085536398793', 'rennymarinatd@gmail.com', 1, '2017-08-09 08:17:43', '2017-08-15 05:43:08'),
(2904, 'TlzcJwGhuuGFJefGtw170810123013', 'muazah wahyu pujiastuti', '085645056521', 'muazawahyu@gmail.com', 1, '2017-08-09 17:30:13', '2017-08-15 05:43:08'),
(2905, 'CbN7uf7coLHJrkx1Xu170810123407', 'muazah wahyu pujiastuti', '085645056521', 'muazawahyu@gmail.com', 1, '2017-08-09 17:34:07', '2017-08-15 05:43:08'),
(2906, 'RuXJvNspRjfMOuwBPJ170810085602', 'Nessa', '082231200191', 'rr.annisaparamitha@gmail.com', 1, '2017-08-10 01:56:02', '2017-08-15 05:43:08'),
(2907, 'HZBLpiFHchjyGDKd8n170810104759', 'Aries Piskha', '083857700651', 'aries.piskhajaya@gmail.com', 1, '2017-08-10 03:47:59', '2017-08-15 05:43:08'),
(2908, 'U18QmX999rg12wanmu170810011015', 'Abiantori', '082132727250', 'Aabiantoroaa@gmail.com', 1, '2017-08-10 06:10:15', '2017-08-15 05:43:08'),
(2909, 'LhmP6EENr04vdeodJP170810052930', 'Ghina', '082233531429', 'Ghinazhasabila1@gmail.com', 1, '2017-08-10 10:29:30', '2017-08-15 05:43:08'),
(2910, '6WnRAovaMDYSMZ2CeN170810053354', 'Cynthia Dian Permatasari', '082234963923', 'cynthiadp08@gmail.com', 1, '2017-08-10 10:33:54', '2017-08-15 05:43:08'),
(2911, 'G8p2VvbU0J76mxm1Ez170810062954', 'Azza Ayu Naresti', '085645015400', 'azza.naresti@yahoo.com', 1, '2017-08-10 11:29:54', '2017-08-15 05:43:08'),
(2912, 'YkqGSfqvTjnBh6vhW6170810074841', 'Azza Ayu Naresti', '085645015400', 'azza.naresti@yahoo.com', 1, '2017-08-10 12:48:41', '2017-08-15 05:43:08'),
(2913, 'T1mHP35AcN8Fgz2xUx170810102643', 'Arum', '6281330028585', 'D_arumdini@yahoo.com', 1, '2017-08-10 15:26:43', '2017-08-15 05:43:08'),
(2914, '6kIJr4quTsnuIsQcEL170810114936', 'Dainese dinar fattia', '083830550343', 'dainesefattia.97@gmail.com', 1, '2017-08-10 16:49:36', '2017-08-15 05:43:08'),
(2915, '5BJe34OTBJCxQaVqG4170811042652', 'Nurus Shobach', '0822-3292-8347', 'shobach.n.23@gmail.com', 1, '2017-08-10 21:26:52', '2017-08-15 05:43:08'),
(2916, 'P2QtFXl0bjy9awebQN170811070541', 'Yeni nurama', '085730888131', 'Yenny.nurama91@gmail.com', 1, '2017-08-11 00:05:41', '2017-08-15 05:43:08'),
(2917, 'JnCBhsKcG9sDJThsLj170811071137', 'Dina inaroh', '085736266535', 'dinainaroh01@gmail.com', 1, '2017-08-11 00:11:37', '2017-08-15 05:43:08'),
(2918, 'Qlty4JWmwARW9BlxYo170811090538', 'ELLA', '083830301034', 'Lailaturosyidah67@gmail.com', 1, '2017-08-11 02:05:38', '2017-08-15 05:43:08'),
(2919, 'AimCAcDcPhk1kGt85F170811094348', 'Farah', '085706199004', 'farahsanib@gmail.com', 1, '2017-08-11 02:43:48', '2017-08-15 05:43:08'),
(2920, 'eV5Oktob4AqQWYaM4j170811094348', 'Farah', '085706199004', 'farahsanib@gmail.com', 1, '2017-08-11 02:43:48', '2017-08-15 05:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `eventpromo`
--

CREATE TABLE `eventpromo` (
  `id` int(11) NOT NULL,
  `type` enum('event','promo') NOT NULL DEFAULT 'event',
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `view` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventpromo`
--

INSERT INTO `eventpromo` (`id`, `type`, `name`, `description`, `image`, `view`, `status`, `created_at`, `updated_at`) VALUES
(1, 'event', 'Event 1', '<p>Event 1</p>\r\n', 'EVENTPROMO__event-1__20170821041854.jpg', 0, 0, '2017-08-21 09:18:54', '2017-08-21 09:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `type` enum('image','video') NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `video` text,
  `view` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `description`, `type`, `image`, `video`, `view`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Topsell Store', '<p>Topsell Store</p>\r\n', 'image', 'GALLERY__topsell-store__20170821041730.jpg', NULL, 0, 0, '2017-08-21 09:17:30', '2017-08-21 09:17:30'),
(2, 'Topsell Store', '<p>Topsell Store</p>\r\n', 'image', 'GALLERY__topsell-store__20170821041802.jpg', NULL, 0, 0, '2017-08-21 09:18:02', '2017-08-21 09:18:02'),
(3, 'Topsell Peduli', '<p>Topsell Peduli</p>\r\n', 'video', NULL, 'https://www.youtube.com/watch?v=2L84AnuXY8c', 0, 0, '2017-08-21 10:23:04', '2017-08-21 10:23:04'),
(4, 'Top Sell Sidoarjo', '<p>Top Sell Sidoarjo</p>\r\n', 'video', NULL, 'https://www.youtube.com/watch?v=8HnKpyUVALk', 0, 0, '2017-08-21 10:22:21', '2017-08-21 10:22:21'),
(5, 'TOPSELL GOES TO SINGAPORE - Experiental Learning', '<p>TOPSELL GOES TO SINGAPORE - Experiental Learning</p>\r\n', 'video', NULL, 'https://www.youtube.com/watch?v=ZHlh6WLp1qk', 0, 0, '2017-08-21 10:23:48', '2017-08-21 10:23:48');

-- --------------------------------------------------------

--
-- Table structure for table `halamanstatis`
--

CREATE TABLE `halamanstatis` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `judul_seo` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `cover` text NOT NULL,
  `view` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `halamanstatis`
--

INSERT INTO `halamanstatis` (`id`, `judul`, `judul_seo`, `deskripsi`, `cover`, `view`, `created_at`, `updated_at`) VALUES
(1, 'Visi dan Misi', 'visi-dan-misi', '<p>Visi dan Misi</p>\r\n', '', 0, '2017-08-15 08:54:24', '2017-08-15 08:54:24'),
(2, 'Sejarah as', 'sejarah-as', '<p>Sejarah as</p>\r\n', '4819d9c69ec437d36e27d1455a3a089d.jpg', 0, '2017-08-29 08:46:08', '2017-08-29 08:46:08'),
(3, 'Manajemen', 'manajemen', '<p>Manajemen</p>\r\n', '', 0, '2017-08-16 06:36:31', '2017-08-16 06:36:31'),
(4, 'Mitra', 'mitra', '<p>Mitra</p>\r\n', '', 0, '2017-08-16 06:39:20', '2017-08-16 06:39:20');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `description` text NOT NULL,
  `respond` int(11) NOT NULL,
  `readed` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_position`
--

CREATE TABLE `job_position` (
  `id` int(11) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `deskripsi` text NOT NULL,
  `image` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menupengunjung`
--

CREATE TABLE `menupengunjung` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `urutan` int(5) NOT NULL,
  `aktif` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `menu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menupengunjung`
--

INSERT INTO `menupengunjung` (`id`, `judul`, `link`, `urutan`, `aktif`, `created_at`, `updated_at`, `menu`) VALUES
(1, 'Home', 'main', 1, '0', '2017-08-14 06:28:01', '0000-00-00 00:00:00', 'home'),
(2, 'Profile', 'main/about', 2, '0', '2017-08-14 06:28:13', '0000-00-00 00:00:00', 'profile'),
(3, 'Product', 'main/product', 3, '0', '2017-08-14 06:28:13', '0000-00-00 00:00:00', 'product'),
(4, 'Store', '#', 4, '0', '2017-08-14 06:28:13', '0000-00-00 00:00:00', 'store'),
(5, 'Event', 'main/event', 5, '0', '2017-08-15 07:15:33', '0000-00-00 00:00:00', 'event'),
(6, 'Gallery', 'main/gallery/picture', 6, '0', '2017-08-15 07:15:40', '0000-00-00 00:00:00', 'gallery'),
(7, 'Career', 'main/career', 7, '0', '2017-08-16 07:44:34', '2017-08-16 07:44:34', 'carrier'),
(8, 'News', 'main/news', 8, '0', '2017-08-14 06:28:13', '0000-00-00 00:00:00', 'news'),
(9, 'Contact Us', 'main/contact', 9, '0', '2017-08-14 06:28:13', '0000-00-00 00:00:00', 'contact');

-- --------------------------------------------------------

--
-- Table structure for table `partnership`
--

CREATE TABLE `partnership` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `url` text NOT NULL,
  `image` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partnership`
--

INSERT INTO `partnership` (`id`, `name`, `url`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Partnership Example 1', '#', 'PARNER__partnership-example-1__20170129035515.png', '2017-01-29 08:55:15', '2017-01-29 08:55:15'),
(3, 'Partnership Example 2', '#', 'PARNER__partnership-example-2__20170129035530.png', '2017-01-29 08:55:30', '2017-01-29 08:55:30'),
(4, 'Partnership Example 3', '#', 'PARNER__partnership-example-3__20170129035542.png', '2017-01-29 08:55:42', '2017-01-29 08:55:42'),
(5, 'Partnership Example 4', '#', 'PARNER__partnership-example-4__20170129035552.png', '2017-01-29 08:55:52', '2017-01-29 08:55:52'),
(6, 'Partnership Example 5', '#', 'PARNER__partnership-example-5__20170129035604.png', '2017-01-29 08:56:04', '2017-01-29 08:56:04'),
(7, 'Partnership Example 6', '#', 'PARNER__partnership-example-6__20170129035616.png', '2017-01-29 08:56:16', '2017-01-29 08:56:16'),
(8, 'Aksamedia', 'http://aksamedia.co.id/', 'PARNER__aksamedia__20170816015526.png', '2017-08-16 06:55:26', '2017-08-16 06:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `id_category` int(11) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `image` text,
  `description` longtext NOT NULL,
  `price` bigint(20) NOT NULL,
  `price_false` bigint(20) NOT NULL,
  `view` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `id_category`, `name`, `image`, `description`, `price`, `price_false`, `view`, `status`, `created_at`, `updated_at`) VALUES
(10, 1, 'Product Example 1', 'PRODUCT__product-example-1__20170821014959.jpg', '<p>Suspendisse potenti. Pellentesque et facilisis tortor, at interdum lorem. Phasellus ante orci, fermentum at dapibus ut, varius a lectus. Duis cursus tempus purus in ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer turpis elit, bibendum et pellentesque ac, fermentum eu diam. Etiam pretium malesuada libero, id ornare erat. Curabitur at sem at ex euismod auctor. Fusce lacinia, turpis eu blandit fringilla, nisl felis bibendum metus, a vestibulum felis justo non nisl. Mauris sed odio quis nisi laoreet imperdiet in ut lectus. Proin ac felis justo. Sed sollicitudin velit vel libero ullamcorper blandit. Maecenas in consequat diam. Proin condimentum, ligula quis suscipit consectetur, ipsum nibh consequat odio, ut volutpat ligula nisi sed metus.</p>\r\n\r\n<p>Suspendisse eu lacus erat. Fusce posuere fermentum luctus. Vivamus venenatis massa id ligula efficitur efficitur. Nunc euismod ante id massa vulputate pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus congue ullamcorper turpis, sed dignissim urna feugiat ac. Donec ut porttitor ligula, et euismod arcu. Aliquam tristique neque lacus, id volutpat justo laoreet eu. Sed commodo maximus leo vitae blandit. Aenean a leo eget libero efficitur vulputate. Curabitur nec euismod risus, vel congue lorem. Pellentesque pretium, arcu ut tincidunt condimentum, turpis ipsum ultrices dui, vel vestibulum mauris libero sit amet tellus. Aliquam vel ante elementum, vehicula orci non, viverra massa. Aenean fermentum sit amet orci ac semper.</p>\r\n', 750000, 800000, 0, 0, '2017-08-21 06:50:00', '2017-08-21 06:50:00'),
(12, 2, 'Product Example 2', 'PRODUCT__product-example-2__20170821014936.jpg', '<p>Suspendisse potenti. Pellentesque et facilisis tortor, at interdum lorem. Phasellus ante orci, fermentum at dapibus ut, varius a lectus. Duis cursus tempus purus in ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer turpis elit, bibendum et pellentesque ac, fermentum eu diam. Etiam pretium malesuada libero, id ornare erat. Curabitur at sem at ex euismod auctor. Fusce lacinia, turpis eu blandit fringilla, nisl felis bibendum metus, a vestibulum felis justo non nisl. Mauris sed odio quis nisi laoreet imperdiet in ut lectus. Proin ac felis justo. Sed sollicitudin velit vel libero ullamcorper blandit. Maecenas in consequat diam. Proin condimentum, ligula quis suscipit consectetur, ipsum nibh consequat odio, ut volutpat ligula nisi sed metus.</p>\r\n\r\n<p>Suspendisse eu lacus erat. Fusce posuere fermentum luctus. Vivamus venenatis massa id ligula efficitur efficitur. Nunc euismod ante id massa vulputate pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus congue ullamcorper turpis, sed dignissim urna feugiat ac. Donec ut porttitor ligula, et euismod arcu. Aliquam tristique neque lacus, id volutpat justo laoreet eu. Sed commodo maximus leo vitae blandit. Aenean a leo eget libero efficitur vulputate. Curabitur nec euismod risus, vel congue lorem. Pellentesque pretium, arcu ut tincidunt condimentum, turpis ipsum ultrices dui, vel vestibulum mauris libero sit amet tellus. Aliquam vel ante elementum, vehicula orci non, viverra massa. Aenean fermentum sit amet orci ac semper.</p>\r\n', 550000, 750000, 0, 0, '2017-08-21 06:49:36', '2017-08-21 06:49:36'),
(13, 3, 'Product Example 3', 'PRODUCT__product-example-3__20170821014916.jpg', '<p>Suspendisse potenti. Pellentesque et facilisis tortor, at interdum lorem. Phasellus ante orci, fermentum at dapibus ut, varius a lectus. Duis cursus tempus purus in ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer turpis elit, bibendum et pellentesque ac, fermentum eu diam. Etiam pretium malesuada libero, id ornare erat. Curabitur at sem at ex euismod auctor. Fusce lacinia, turpis eu blandit fringilla, nisl felis bibendum metus, a vestibulum felis justo non nisl. Mauris sed odio quis nisi laoreet imperdiet in ut lectus. Proin ac felis justo. Sed sollicitudin velit vel libero ullamcorper blandit. Maecenas in consequat diam. Proin condimentum, ligula quis suscipit consectetur, ipsum nibh consequat odio, ut volutpat ligula nisi sed metus.</p>\r\n\r\n<p>Suspendisse eu lacus erat. Fusce posuere fermentum luctus. Vivamus venenatis massa id ligula efficitur efficitur. Nunc euismod ante id massa vulputate pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus congue ullamcorper turpis, sed dignissim urna feugiat ac. Donec ut porttitor ligula, et euismod arcu. Aliquam tristique neque lacus, id volutpat justo laoreet eu. Sed commodo maximus leo vitae blandit. Aenean a leo eget libero efficitur vulputate. Curabitur nec euismod risus, vel congue lorem. Pellentesque pretium, arcu ut tincidunt condimentum, turpis ipsum ultrices dui, vel vestibulum mauris libero sit amet tellus. Aliquam vel ante elementum, vehicula orci non, viverra massa. Aenean fermentum sit amet orci ac semper.</p>\r\n', 1200000, 1500000, 0, 0, '2017-08-21 06:49:16', '2017-08-21 06:49:16'),
(14, 5, 'Product Example 4', 'PRODUCT__product-example-4__20170821014855.jpg', '<p>Suspendisse potenti. Pellentesque et facilisis tortor, at interdum lorem. Phasellus ante orci, fermentum at dapibus ut, varius a lectus. Duis cursus tempus purus in ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer turpis elit, bibendum et pellentesque ac, fermentum eu diam. Etiam pretium malesuada libero, id ornare erat. Curabitur at sem at ex euismod auctor. Fusce lacinia, turpis eu blandit fringilla, nisl felis bibendum metus, a vestibulum felis justo non nisl. Mauris sed odio quis nisi laoreet imperdiet in ut lectus. Proin ac felis justo. Sed sollicitudin velit vel libero ullamcorper blandit. Maecenas in consequat diam. Proin condimentum, ligula quis suscipit consectetur, ipsum nibh consequat odio, ut volutpat ligula nisi sed metus.</p>\r\n\r\n<p>Suspendisse eu lacus erat. Fusce posuere fermentum luctus. Vivamus venenatis massa id ligula efficitur efficitur. Nunc euismod ante id massa vulputate pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus congue ullamcorper turpis, sed dignissim urna feugiat ac. Donec ut porttitor ligula, et euismod arcu. Aliquam tristique neque lacus, id volutpat justo laoreet eu. Sed commodo maximus leo vitae blandit. Aenean a leo eget libero efficitur vulputate. Curabitur nec euismod risus, vel congue lorem. Pellentesque pretium, arcu ut tincidunt condimentum, turpis ipsum ultrices dui, vel vestibulum mauris libero sit amet tellus. Aliquam vel ante elementum, vehicula orci non, viverra massa. Aenean fermentum sit amet orci ac semper.</p>\r\n', 850000, 1000000, 0, 0, '2017-08-21 06:48:55', '2017-08-21 06:48:55'),
(15, 5, 'Product Example 5', 'PRODUCT__product-example-5__20170821014832.jpg', '<p>Suspendisse potenti. Pellentesque et facilisis tortor, at interdum lorem. Phasellus ante orci, fermentum at dapibus ut, varius a lectus. Duis cursus tempus purus in ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer turpis elit, bibendum et pellentesque ac, fermentum eu diam. Etiam pretium malesuada libero, id ornare erat. Curabitur at sem at ex euismod auctor. Fusce lacinia, turpis eu blandit fringilla, nisl felis bibendum metus, a vestibulum felis justo non nisl. Mauris sed odio quis nisi laoreet imperdiet in ut lectus. Proin ac felis justo. Sed sollicitudin velit vel libero ullamcorper blandit. Maecenas in consequat diam. Proin condimentum, ligula quis suscipit consectetur, ipsum nibh consequat odio, ut volutpat ligula nisi sed metus.</p>\r\n\r\n<p>Suspendisse eu lacus erat. Fusce posuere fermentum luctus. Vivamus venenatis massa id ligula efficitur efficitur. Nunc euismod ante id massa vulputate pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus congue ullamcorper turpis, sed dignissim urna feugiat ac. Donec ut porttitor ligula, et euismod arcu. Aliquam tristique neque lacus, id volutpat justo laoreet eu. Sed commodo maximus leo vitae blandit. Aenean a leo eget libero efficitur vulputate. Curabitur nec euismod risus, vel congue lorem. Pellentesque pretium, arcu ut tincidunt condimentum, turpis ipsum ultrices dui, vel vestibulum mauris libero sit amet tellus. Aliquam vel ante elementum, vehicula orci non, viverra massa. Aenean fermentum sit amet orci ac semper.</p>\r\n', 1300000, 1500000, 1, 0, '2017-09-07 06:07:51', '2017-09-07 06:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id`, `id_product`, `image`, `created_at`, `updated_at`) VALUES
(5, 10, 'PRODUCT__product-example-1__20170821014959.jpg', '2017-08-21 06:49:59', '2017-08-21 06:49:59'),
(10, 12, 'PRODUCT__product-example-2__20170821014936.jpg', '2017-08-21 06:49:36', '2017-08-21 06:49:36'),
(11, 12, 'PRODUCT__product-example-2__201702050756301.jpg', '2017-02-05 12:56:30', '2017-02-05 12:56:30'),
(12, 12, 'PRODUCT__product-example-2__201702050756302.jpg', '2017-02-05 12:56:30', '2017-02-05 12:56:30'),
(14, 13, 'PRODUCT__product-example-3__20170821014916.jpg', '2017-08-21 06:49:16', '2017-08-21 06:49:16'),
(18, 14, 'PRODUCT__product-example-4__20170821014855.jpg', '2017-08-21 06:48:55', '2017-08-21 06:48:55'),
(19, 14, 'PRODUCT__product-example-4__201708210148551.jpg', '2017-08-21 06:48:55', '2017-08-21 06:48:55'),
(20, 14, 'PRODUCT__product-example-4__201708210148552.jpg', '2017-08-21 06:48:55', '2017-08-21 06:48:55'),
(22, 15, 'PRODUCT__product-example-5__20170821014832.jpg', '2017-08-21 06:48:32', '2017-08-21 06:48:32'),
(23, 15, 'PRODUCT__product-example-5__20170821014833.jpg', '2017-08-21 06:48:33', '2017-08-21 06:48:33'),
(24, 15, 'PRODUCT__product-example-5__201708210148331.jpg', '2017-08-21 06:48:33', '2017-08-21 06:48:33');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(3, 'Tes Project 2', '<p>Tes Project</p>\r\n', '2017-08-16 10:01:00', '2017-08-16 10:01:00'),
(4, 'Tes Project', '<p>Tes Project</p>\r\n', '2017-08-16 09:48:10', '2017-08-16 09:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `projectimg`
--

CREATE TABLE `projectimg` (
  `id` int(11) NOT NULL,
  `id_project` int(5) NOT NULL,
  `image` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectimg`
--

INSERT INTO `projectimg` (`id`, `id_project`, `image`, `created_at`, `updated_at`) VALUES
(1, 4, '95d64b1d3e3c89d98160c63186d670d6.jpg', '2017-08-16 09:48:11', '2017-08-16 09:48:11'),
(2, 4, 'e54aa09a4590c5aa0b83f0f610d21e41.jpg', '2017-08-16 09:48:11', '2017-08-16 09:48:11'),
(8, 3, 'oppo_neo7.jpg', '2017-08-16 10:03:41', '2017-08-16 10:03:41');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `message` text NOT NULL,
  `readed` int(11) NOT NULL,
  `status` enum('respond','unrespond') NOT NULL DEFAULT 'unrespond',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `author` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `keyword` text NOT NULL,
  `fbpixel` text NOT NULL,
  `analytic` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `image`, `title`, `author`, `description`, `keyword`, `fbpixel`, `analytic`, `created_at`, `updated_at`) VALUES
(1, 'SEO__IMAGE__20170320075543.jpg', 'Topsell', 'topsell', 'pusat handphone dan barang elektronik terbesar dan terlengkap di mojokerto', 'handphone mojokerto', '<script> tes \n</script>', 'tes', '2017-08-28 06:21:27', '2017-08-28 05:33:16');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` text NOT NULL,
  `description_sort` varchar(250) DEFAULT NULL,
  `description` text NOT NULL,
  `view` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `name`, `image`, `description_sort`, `description`, `view`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Service 4', 'SERVICE__rejuvenation__20170320015623.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eu fringilla nulla. In ut molestie nulla. Donec sem risus, tempus in imperdiet eget,', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eu fringilla nulla. In ut molestie nulla. Donec sem risus, tempus in imperdiet eget, commodo ac nisi. Quisque bibendum nibh posuere arcu gravida pellentesque. Curabitur feugiat elit sit amet dolor volutpat, et pharetra magna ullamcorper. Quisque mattis, libero id facilisis condimentum, nisl tellus condimentum odio, ut interdum augue lacus id leo. Integer quis nisl id lectus efficitur fringilla.</p>\r\n\r\n<p>Proin sit amet sapien a turpis lobortis consectetur. Sed porta vestibulum metus, at consequat ligula suscipit a. Vestibulum at risus id neque rhoncus facilisis. In iaculis sapien in metus ornare rhoncus. Pellentesque eu odio in mauris porta fermentum vitae ut leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc egestas turpis nec eleifend aliquam. Ut vel lorem a elit placerat egestas ac rutrum nunc.</p>\r\n', 579, 0, '2017-08-22 02:33:53', '2017-08-22 02:33:53'),
(4, 'Service 3', 'SERVICE__tightening__20170320015042.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eu fringilla nulla. In ut molestie nulla. Donec sem risus, tempus in imperdiet eget,', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eu fringilla nulla. In ut molestie nulla. Donec sem risus, tempus in imperdiet eget, commodo ac nisi. Quisque bibendum nibh posuere arcu gravida pellentesque. Curabitur feugiat elit sit amet dolor volutpat, et pharetra magna ullamcorper. Quisque mattis, libero id facilisis condimentum, nisl tellus condimentum odio, ut interdum augue lacus id leo. Integer quis nisl id lectus efficitur fringilla.</p>\r\n\r\n<p>Proin sit amet sapien a turpis lobortis consectetur. Sed porta vestibulum metus, at consequat ligula suscipit a. Vestibulum at risus id neque rhoncus facilisis. In iaculis sapien in metus ornare rhoncus. Pellentesque eu odio in mauris porta fermentum vitae ut leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc egestas turpis nec eleifend aliquam. Ut vel lorem a elit placerat egestas ac rutrum nunc.</p>\r\n', 447, 0, '2017-08-22 02:33:21', '2017-08-22 02:33:21'),
(5, 'Service 2', 'SERVICE__pigmentation__20170320030313.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eu fringilla nulla. In ut molestie nulla. Donec sem risus, tempus in imperdiet eget,', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eu fringilla nulla. In ut molestie nulla. Donec sem risus, tempus in imperdiet eget, commodo ac nisi. Quisque bibendum nibh posuere arcu gravida pellentesque. Curabitur feugiat elit sit amet dolor volutpat, et pharetra magna ullamcorper. Quisque mattis, libero id facilisis condimentum, nisl tellus condimentum odio, ut interdum augue lacus id leo. Integer quis nisl id lectus efficitur fringilla.</p>\r\n\r\n<p>Proin sit amet sapien a turpis lobortis consectetur. Sed porta vestibulum metus, at consequat ligula suscipit a. Vestibulum at risus id neque rhoncus facilisis. In iaculis sapien in metus ornare rhoncus. Pellentesque eu odio in mauris porta fermentum vitae ut leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc egestas turpis nec eleifend aliquam. Ut vel lorem a elit placerat egestas ac rutrum nunc.</p>\r\n', 957, 0, '2017-08-22 02:32:39', '2017-08-22 02:32:39'),
(6, 'Service 1', 'SERVICE__acne__20170320033123.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eu fringilla nulla. In ut molestie nulla. Donec sem risus, tempus in imperdiet eget,', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eu fringilla nulla. In ut molestie nulla. Donec sem risus, tempus in imperdiet eget, commodo ac nisi. Quisque bibendum nibh posuere arcu gravida pellentesque. Curabitur feugiat elit sit amet dolor volutpat, et pharetra magna ullamcorper. Quisque mattis, libero id facilisis condimentum, nisl tellus condimentum odio, ut interdum augue lacus id leo. Integer quis nisl id lectus efficitur fringilla.</p>\r\n\r\n<p>Proin sit amet sapien a turpis lobortis consectetur. Sed porta vestibulum metus, at consequat ligula suscipit a. Vestibulum at risus id neque rhoncus facilisis. In iaculis sapien in metus ornare rhoncus. Pellentesque eu odio in mauris porta fermentum vitae ut leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc egestas turpis nec eleifend aliquam. Ut vel lorem a elit placerat egestas ac rutrum nunc.</p>\r\n', 1129, 0, '2017-08-22 02:32:06', '2017-08-22 02:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `url` text NOT NULL,
  `image` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `url`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Slider 3', '#', 'SLIDER__slider-3__20170822093525.jpg', 0, '2017-08-22 02:35:25', '2017-08-22 02:35:25'),
(2, 'Slider 3', '#', 'SLIDER__slider-3__20170822093556.jpg', 0, '2017-08-22 02:35:56', '2017-08-22 02:35:56'),
(3, 'Slider 2', '#', 'SLIDER__slider-2__20170822093630.jpg', 0, '2017-08-22 02:36:30', '2017-08-22 02:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `sosmed`
--

CREATE TABLE `sosmed` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `type` enum('facebook','youtube','google','twitter','instagram','other','rss','pinterest','linkedin') NOT NULL DEFAULT 'other',
  `url` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sosmed`
--

INSERT INTO `sosmed` (`id`, `name`, `type`, `url`, `created_at`, `updated_at`) VALUES
(1, 'facebook', 'facebook', 'https://www.facebook.com/hayyusyari/', '2017-02-06 16:47:45', '2017-02-06 16:47:45'),
(2, 'HAYYU Syar''i Skin Clinic Channel', 'youtube', 'https://www.youtube.com/channel/UCP27xU7s2eym35h3tCMZmGQ', '2017-03-20 12:57:52', '2017-03-20 12:57:52'),
(5, 'Instagram', 'instagram', 'https://www.instagram.com/hayyusyari/', '2017-02-06 16:50:19', '2017-02-06 16:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `id` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`id`, `ip`, `tanggal`, `hits`, `online`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.2', '2009-09-11', 1, '1252681630', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(2, '127.0.0.1', '2009-09-11', 17, '1252734209', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(3, '127.0.0.3', '2009-09-12', 8, '1252817594', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(4, '127.0.0.1', '2009-10-24', 8, '1256381921', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(5, '127.0.0.1', '2009-10-26', 108, '1256620074', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(6, '127.0.0.1', '2009-10-27', 52, '1256686769', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(7, '127.0.0.1', '2009-10-28', 124, '1256792223', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(8, '127.0.0.1', '2009-10-29', 9, '1256828032', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(9, '127.0.0.1', '2009-10-31', 3, '1257047101', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(10, '127.0.0.1', '2009-11-01', 85, '1257113554', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(11, '127.0.0.1', '2009-11-02', 11, '1257207543', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(12, '127.0.0.1', '2009-11-03', 165, '1257292312', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(13, '127.0.0.1', '2009-11-04', 59, '1257403499', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(14, '127.0.0.1', '2009-11-05', 10, '1257433172', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(15, '127.0.0.1', '2009-11-11', 13, '1258006911', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(16, '127.0.0.1', '2009-11-12', 10, '1258048069', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(17, '127.0.0.1', '2009-11-14', 14, '1258222519', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(18, '127.0.0.1', '2009-11-17', 2, '1258473856', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(19, '127.0.0.1', '2009-11-19', 16, '1258635469', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(20, '127.0.0.1', '2009-11-21', 4, '1258863505', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(21, '127.0.0.1', '2009-11-25', 3, '1259216216', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(22, '127.0.0.1', '2009-11-26', 1, '1259222467', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(23, '127.0.0.1', '2009-11-30', 11, '1259651841', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(24, '127.0.0.1', '2009-12-02', 9, '1259746407', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(25, '127.0.0.1', '2009-12-03', 17, '1259906128', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(26, '127.0.0.1', '2009-12-10', 69, '1260423794', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(27, '127.0.0.1', '2009-12-12', 26, '1260560082', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(28, '127.0.0.1', '2009-12-11', 5, '1260508621', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(29, '127.0.0.1', '2009-12-13', 8, '1260716786', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(30, '127.0.0.1', '2009-12-14', 9, '1260772698', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(31, '127.0.0.1', '2009-12-15', 9, '1260837158', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(32, '127.0.0.1', '2009-12-16', 7, '1260905627', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(33, '127.0.0.1', '2009-12-17', 48, '1261026791', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(34, '127.0.0.1', '2009-12-18', 11, '1261088534', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(35, '127.0.0.1', '2009-12-22', 3, '1261477278', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(36, '127.0.0.1', '2009-12-25', 2, '1261686043', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(37, '127.0.0.1', '2009-12-26', 29, '1261835507', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(38, '127.0.0.1', '2009-12-27', 7, '1261920445', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(39, '127.0.0.1', '2009-12-28', 3, '1261965611', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(40, '127.0.0.1', '2009-12-29', 21, '1262024011', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(41, '127.0.0.1', '2009-12-30', 24, '1262146708', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(42, '127.0.0.1', '2010-01-01', 12, '1262286131', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(43, '127.0.0.1', '2010-01-03', 38, '1262529325', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(44, '127.0.0.1', '2010-01-12', 89, '1263264291', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(45, '127.0.0.1', '2010-01-14', 54, '1263482540', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(46, '127.0.0.1', '2010-01-15', 57, '1263506901', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(47, '127.0.0.1', '2010-02-11', 30, '1265831568', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(48, '127.0.0.1', '2010-02-13', 2, '1266032303', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(49, '127.0.0.1', '2010-02-14', 3, '1266115347', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(50, '127.0.0.1', '2010-02-15', 15, '1266195235', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(51, '127.0.0.1', '2010-02-18', 1, '1266499945', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(52, '127.0.0.1', '2010-02-22', 5, '1266856332', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(53, '127.0.0.1', '2010-02-25', 46, '1267103145', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(54, '127.0.0.1', '2010-05-12', 10, '1273654648', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(55, '127.0.0.1', '2010-05-16', 195, '1274026185', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(56, '127.0.0.1', '2010-05-17', 2, '1274029517', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(57, '127.0.0.1', '2010-05-19', 1, '1274279374', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(58, '127.0.0.1', '2010-05-27', 16, '1274967085', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(59, '127.0.0.1', '2010-05-30', 4, '1275192045', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(60, '127.0.0.1', '2010-05-31', 13, '1275271939', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(61, '127.0.0.1', '2010-06-05', 1, '1275676869', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(62, '127.0.0.1', '2010-06-06', 2, '1275842170', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(63, '127.0.0.1', '2010-06-15', 3, '1276572924', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(64, '127.0.0.1', '2010-06-22', 206, '1277221605', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(65, '127.0.0.1', '2010-08-02', 17, '1280754660', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(66, '127.0.0.1', '2010-08-20', 7, '1282285305', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(67, '127.0.0.1', '2010-08-30', 21, '1283185430', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(68, '127.0.0.1', '2010-08-31', 53, '1283207455', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(69, '127.0.0.1', '2010-09-02', 133, '1283402651', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(70, '127.0.0.1', '2010-09-05', 35, '1283702206', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(71, '127.0.0.1', '2010-09-13', 10, '1284370291', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(72, '127.0.0.1', '2010-09-17', 12, '1284662303', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(73, '127.0.0.1', '2010-09-22', 2, '1285091212', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(74, '127.0.0.1', '2010-09-23', 47, '1285254071', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(75, '127.0.0.1', '2010-09-26', 32, '1285512806', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(76, '127.0.0.1', '2010-09-27', 48, '1285529871', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(77, '127.0.0.1', '2011-01-19', 18, '1295395096', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(78, '127.0.0.1', '2011-01-21', 6, '1295580166', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(79, '127.0.0.1', '2011-01-22', 3, '1295639704', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(80, '127.0.0.1', '2011-01-25', 2, '1295895420', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(81, '127.0.0.1', '2011-01-27', 20, '1296145564', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(82, '127.0.0.1', '2011-01-28', 5, '1296150116', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(83, '127.0.0.1', '2011-02-01', 10, '1296555613', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(84, '127.0.0.1', '2011-02-02', 1, '1296657225', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(85, '127.0.0.1', '2011-02-05', 3, '1296875908', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(86, '127.0.0.1', '2011-02-07', 5, '1297090649', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(87, '127.0.0.1', '2011-02-09', 182, '1297254341', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(88, '127.0.0.1', '2011-02-10', 268, '1297355704', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(89, '127.0.0.1', '2011-02-16', 6, '1297824002', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(90, '127.0.0.1', '2011-02-17', 2, '1297945065', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(91, '127.0.0.1', '2011-12-28', 12, '1325081007', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(92, '127.0.0.1', '2011-12-29', 13, '1325167281', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(93, '127.0.0.1', '2011-12-31', 34, '1325296088', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(94, '127.0.0.1', '2012-01-02', 1, '1325449458', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(95, '127.0.0.1', '2012-01-03', 55, '1325601219', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(96, '127.0.0.1', '2012-01-04', 1, '1325630436', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(97, '127.0.0.1', '2012-02-08', 86, '1328720292', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(98, '127.0.0.1', '2012-02-09', 110, '1328798857', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(99, '127.0.0.1', '2012-02-10', 87, '1328871532', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(100, '127.0.0.1', '2012-02-11', 16, '1328899301', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(101, '127.0.0.1', '2012-03-31', 87, '1333186737', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(102, '127.0.0.1', '2012-04-01', 69, '1333248528', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(103, '127.0.0.1', '2012-04-02', 9, '1333338582', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(104, '127.0.0.1', '2012-04-03', 31, '1333456570', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(105, '127.0.0.1', '2012-04-04', 2, '1333498207', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(106, '127.0.0.1', '2012-04-05', 5, '1333628029', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(107, '127.0.0.1', '2012-04-08', 22, '1333871463', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(108, '127.0.0.1', '2012-04-09', 109, '1333972788', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(109, '127.0.0.1', '2012-04-10', 70, '1334024998', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(110, '127.0.0.1', '2012-05-01', 8, '1335889888', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(111, '127.0.0.1', '2012-05-02', 17, '1335935829', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(112, '127.0.0.1', '2012-05-27', 6, '1338133681', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(113, '127.0.0.1', '2012-05-29', 22, '1338304361', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(114, '127.0.0.1', '2012-05-30', 5, '1338389383', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(115, '127.0.0.1', '2012-05-31', 5, '1338408772', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(116, '127.0.0.1', '2012-06-01', 5, '1338567612', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(117, '127.0.0.1', '2012-07-01', 10, '1341152776', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(118, '127.0.0.1', '2012-07-29', 12, '1343572702', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(119, '127.0.0.1', '2012-07-30', 15, '1343658587', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(120, '127.0.0.1', '2012-07-31', 179, '1343743877', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(121, '127.0.0.1', '2012-08-03', 11, '1344000498', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(122, '127.0.0.1', '2012-08-08', 28, '1344364863', '2017-09-07 04:12:26', '0000-00-00 00:00:00'),
(123, '127.0.0.1', '2017-09-06', 7, '1344477542', '2017-09-07 07:37:28', '0000-00-00 00:00:00'),
(124, '127.0.0.1', '2017-09-07', 1, '1344601882', '2017-09-07 07:32:41', '0000-00-00 00:00:00'),
(125, '127.0.0.1', '2017-09-07', 1, '1504758583', '2017-09-07 07:29:40', '2017-09-07 04:29:43'),
(129, '::1', '2017-09-12', 10, '1505207484', '2017-09-12 09:11:24', '2017-09-12 09:11:24'),
(128, '::1', '2017-09-08', 2, '1504841438', '2017-09-08 03:30:38', '2017-09-08 03:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `submenupengunjung`
--

CREATE TABLE `submenupengunjung` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `urutan` int(5) NOT NULL,
  `aktif` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `submenupengunjung`
--

INSERT INTO `submenupengunjung` (`id`, `id_menu`, `judul`, `link`, `urutan`, `aktif`, `created_at`, `updated_at`) VALUES
(1, 2, 'Visi dan Misi', 'main/halaman/1/visi-dan-misi', 1, '0', '2017-08-16 03:20:38', '2017-08-16 03:20:38'),
(2, 2, 'Sejarah', 'main/halaman/2/sejarah', 2, '0', '2017-08-16 03:20:59', '2017-08-16 03:20:59'),
(3, 2, 'Manajemen', 'main/halaman/3/manajemen', 3, '0', '2017-08-16 06:38:03', '2017-08-16 06:38:03'),
(4, 2, 'Mitra', 'main/halaman/4/mitra', 4, '0', '2017-08-16 06:39:31', '2017-08-16 06:39:31'),
(5, 2, 'Project', 'main/project', 5, '0', '2017-08-16 06:36:15', '2017-08-16 06:36:15'),
(6, 2, 'Layanan', 'main/service', 6, '0', '2017-08-16 06:42:19', '2017-08-16 06:42:19'),
(7, 2, 'Partner', 'main/partner', 7, '0', '2017-08-16 06:38:34', '2017-08-16 06:38:34'),
(8, 4, 'Offline', 'https://www.google.co.id/maps/place/Topsell+Mojokerto/@-7.4910324,112.4232811,17z/data=!3m1!4b1!4m5!3m4!1s0x2e781283d0bd31b7:0x5d7e63fc5836f710!8m2!3d-7.4910324!4d112.4254698', 1, '0', '2017-08-21 07:02:47', '2017-08-21 07:02:47'),
(9, 4, 'Online', 'main/product', 2, '0', '2017-08-21 07:03:18', '2017-08-21 07:03:18');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `superuser`
--

CREATE TABLE `superuser` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `ipaddress` varchar(250) NOT NULL,
  `lastlog` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('active','blocked') NOT NULL DEFAULT 'blocked',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `superuser`
--

INSERT INTO `superuser` (`id`, `name`, `username`, `password`, `image`, `ipaddress`, `lastlog`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', 'def50200d78131701e8331866d7cd4ff46a6fc3488ea5ca1f05ff9dbf3718829de2361d09a90b238c7ff3646a14831200e53166dcb76b685fc8d06b99d85d2c4a9a828ad28477fc1567941e35c01019a2c1d5ed340ec0884d322cff1e0d0e5096ef9', '', '::1', '2017-09-12 09:11:41', 'active', '2017-01-26 17:00:00', '2017-09-12 09:11:41'),
(4, 'Hengky Irianto', 'hengky', 'def50200a900b4db4f43cab5a048ad6e6bb90da4d50f6c546b058a2e04d1cc5b1dedd9d0e1bd9a672735351e1b8c42dfc39a040c8d47ea49e6ba6085b8122498178efe07c2213a8412fefde13567884303814d4ead97077c4c52bb14', 'ADMIN__hengky-irianto__20170205070844.jpg', '127.0.0.1', '2017-02-05 12:09:14', 'active', '2017-02-05 12:08:44', '2017-02-05 12:09:14'),
(5, 'Guest', 'guest', 'def5020031ed4f8ed44a8c8888639d61804055c5637330c03d8737116eb21bf990c99976f5922c375212e0a475ac0e68d558f201533b490839c95b3ce5022139fbb90f1476710d81de6b0729c834e6ffc570f2d0ad314a203d7fbfb1', 'ADMIN__guest__20170206025844.jpg', '180.251.80.112', '2017-02-05 20:13:55', 'active', '2017-02-05 19:58:44', '2017-02-05 20:13:55'),
(6, 'Aries Hayyu', 'aries', 'def50200769b8e1b102a2d4b27a2e10063fffecdeec3081e933ade7ecd95d6064e7f526ac0b5849f598563b7729447c1b7616f6de6874f877178142770b909c0fe916ab86e65a4120657decf6eebd4761955e84cea31ceea0d8d7b411c50', '', '158.140.167.205', '2017-08-08 08:41:22', 'active', '2017-08-08 05:37:16', '2017-08-08 08:41:22');

-- --------------------------------------------------------

--
-- Table structure for table `superuser_rule`
--

CREATE TABLE `superuser_rule` (
  `id` int(11) NOT NULL,
  `id_superuser` int(11) NOT NULL,
  `menu` enum('blog','product','transaction','gallery','account','inbox','coupon','slider','config','subscribes','member','confirmation','all','seo','auth','helper','sosmed','ads','partnership','config''blog','product','gallery','inbox','slider','config','all','seo','auth','sosmed','eventpromo','service','testimoni','pricelist') NOT NULL DEFAULT 'blog',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `superuser_rule`
--

INSERT INTO `superuser_rule` (`id`, `id_superuser`, `menu`, `created_at`, `updated_at`) VALUES
(76, 1, 'all', '2017-02-05 11:07:59', '0000-00-00 00:00:00'),
(77, 4, 'blog', '2017-02-05 12:08:44', '2017-02-05 12:08:44'),
(78, 4, 'gallery', '2017-02-05 12:08:44', '2017-02-05 12:08:44'),
(79, 4, 'service', '2017-02-05 12:08:44', '2017-02-05 12:08:44'),
(80, 4, 'eventpromo', '2017-02-05 12:08:44', '2017-02-05 12:08:44'),
(81, 4, 'testimoni', '2017-02-05 12:08:44', '2017-02-05 12:08:44'),
(82, 4, 'slider', '2017-02-05 12:08:44', '2017-02-05 12:08:44'),
(83, 4, 'product', '2017-02-05 12:08:44', '2017-02-05 12:08:44'),
(84, 4, 'inbox', '2017-02-05 12:08:45', '2017-02-05 12:08:45'),
(85, 4, 'sosmed', '2017-02-05 12:08:45', '2017-02-05 12:08:45'),
(86, 4, 'seo', '2017-02-05 12:08:45', '2017-02-05 12:08:45'),
(87, 4, 'auth', '2017-02-05 12:08:45', '2017-02-05 12:08:45'),
(88, 5, 'blog', '2017-02-05 19:58:44', '2017-02-05 19:58:44'),
(89, 5, 'gallery', '2017-02-05 19:58:44', '2017-02-05 19:58:44'),
(90, 5, 'service', '2017-02-05 19:58:44', '2017-02-05 19:58:44'),
(91, 5, 'eventpromo', '2017-02-05 19:58:44', '2017-02-05 19:58:44'),
(92, 5, 'testimoni', '2017-02-05 19:58:44', '2017-02-05 19:58:44'),
(93, 5, 'slider', '2017-02-05 19:58:44', '2017-02-05 19:58:44'),
(94, 5, 'product', '2017-02-05 19:58:44', '2017-02-05 19:58:44'),
(95, 5, 'inbox', '2017-02-05 19:58:44', '2017-02-05 19:58:44'),
(96, 5, 'sosmed', '2017-02-05 19:58:44', '2017-02-05 19:58:44'),
(97, 6, 'blog', '2017-08-08 05:37:16', '2017-08-08 05:37:16'),
(98, 6, 'gallery', '2017-08-08 05:37:16', '2017-08-08 05:37:16'),
(99, 6, 'service', '2017-08-08 05:37:16', '2017-08-08 05:37:16'),
(100, 6, 'eventpromo', '2017-08-08 05:37:16', '2017-08-08 05:37:16'),
(101, 6, 'slider', '2017-08-08 05:37:16', '2017-08-08 05:37:16'),
(102, 6, 'product', '2017-08-08 05:37:16', '2017-08-08 05:37:16'),
(103, 6, 'sosmed', '2017-08-08 05:37:16', '2017-08-08 05:37:16'),
(104, 6, 'seo', '2017-08-08 05:37:16', '2017-08-08 05:37:16'),
(105, 6, 'config', '2017-08-08 05:37:16', '2017-08-08 05:37:16');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'topsell', 'topsell store', '2017-08-22 02:40:58', '2017-08-22 02:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `tag_blog`
--

CREATE TABLE `tag_blog` (
  `id` int(11) NOT NULL,
  `id_tag` int(11) NOT NULL,
  `id_blog` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag_blog`
--

INSERT INTO `tag_blog` (`id`, `id_tag`, `id_blog`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2017-08-22 02:41:37', '2017-08-22 02:41:37'),
(2, 1, 2, '2017-08-22 02:43:08', '2017-08-22 02:43:08'),
(3, 1, 3, '2017-08-22 02:43:37', '2017-08-22 02:43:37');

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Ita Ayu Prastiwi - Singer (35 tahun)', 'Sebagai Ibu Rumah Tangga yang juga berprofesi sebagai Penyanyi, berpenampilan cantik dan merawat kesehatan kulit adalah sebuah keharusan bagi diri saya pribadi. Alhamdulillah, sudah 3 tahun saya melakukan perawatan di HAYYU Syar''i Skin Clinic. Selain perawatannya yang memuaskan, untuk harga perawatan di Hayyu Syar''i Skin Clinic tidak terlalu mahal dan cukup terjangkau. Sedangkan produk yang diberikan pun juga cocok bagi kulit saya dibandingkan dengan tempat perawatan kulit yang lain, pokoknya sesuai dengan kebutuhan saya. Terima kasih, Hayyu Syar''i Skin Clinic.', 'TESTIMONI__ita-ayu-prastiwi--singer-35-tahun__20170307014323.jpg', 0, '2017-03-07 06:43:23', '2017-03-07 06:43:23'),
(8, 'Dr. Dima Sari - Dokter Spesialis Mata (34 Tahun)', 'Awalnya, saya merasa kulit saya agak lebih kering, mungkin karena kurang cocok dengan make up yang saya gunakan, sehingga ada komplikasi pada area dahi dan pipi wajah saya. Akhirnya saya mencoba ke HAYYU Syar''i Skin Clinic, dan Alhamdulillah…, baru beberapa kali melakukan perawatan sudah langsung tampak hasilnya, kulit saya jadi lebih lembab dan tidak mudah kering kemudian tidak terlalu sensitif dengan make up yang saya gunakan. Terima kasih Hayyu Syar''i Skin Clinic, Semoga selalu istiqomah dengan visi dan misinya sebagai Klinik Kecantikan Syar''i nomor Satu di Indonesia.', 'TESTIMONI__dr-dima-sari--dokter-spesialis-mata-34-tahun__20170307024849.jpg', 0, '2017-03-07 07:48:49', '2017-03-07 07:48:49'),
(9, 'Lenny - TV Host', 'Sudah lebih dari 7 Tahun, saya mempercayakan perawatan kulit wajah saya di klinik ini, namun jauh sebelum nama HAYYU Syar''i Skin Clinic ada. Pilihan saya jatuh pada HAYYU Syar''i Skin Clinic karena selalu jujur pada saat konsultasi dan tidak selalu menjual produk. Selain itu, amanah dari suami saya apabila melakukan perawatan kulit dan kecantikan di klinik kulit, jangan sampai merubah wajah asli, seperti suntik filler atau botox. Jadi ya, momennya bener-bener tepat, karena HAYYU Syar''i Skin Clinic menawarkan produk yang halal dan tetap membuat cantik namun tidak sampai merubah kealamiahan wajah. Karena Cantik yang alami itu tidak perlu berlebihan, tapi berikhtiar dengan merawat kecantikan dengan produk yang halal dan cara yang syar''i. Terima kasih, Hayyu.', 'TESTIMONI__lenny--tv-host__20170307032521.jpg', 0, '2017-03-07 08:25:21', '2017-03-07 08:25:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `career`
--
ALTER TABLE `career`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download_pricelist`
--
ALTER TABLE `download_pricelist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `eventpromo`
--
ALTER TABLE `eventpromo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_position`
--
ALTER TABLE `job_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menupengunjung`
--
ALTER TABLE `menupengunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partnership`
--
ALTER TABLE `partnership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_productimage_product` (`id_product`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectimg`
--
ALTER TABLE `projectimg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_productimage_product` (`id_project`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sosmed`
--
ALTER TABLE `sosmed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statistik`
--
ALTER TABLE `statistik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenupengunjung`
--
ALTER TABLE `submenupengunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `superuser`
--
ALTER TABLE `superuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `superuser_rule`
--
ALTER TABLE `superuser_rule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_superuserrule_superuser` (`id_superuser`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag_blog`
--
ALTER TABLE `tag_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tagblog_tag` (`id_tag`),
  ADD KEY `fk_tagblog_blog` (`id_blog`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `career`
--
ALTER TABLE `career`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `download_pricelist`
--
ALTER TABLE `download_pricelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2921;
--
-- AUTO_INCREMENT for table `eventpromo`
--
ALTER TABLE `eventpromo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `job_position`
--
ALTER TABLE `job_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menupengunjung`
--
ALTER TABLE `menupengunjung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `partnership`
--
ALTER TABLE `partnership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `projectimg`
--
ALTER TABLE `projectimg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sosmed`
--
ALTER TABLE `sosmed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `statistik`
--
ALTER TABLE `statistik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT for table `submenupengunjung`
--
ALTER TABLE `submenupengunjung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `superuser`
--
ALTER TABLE `superuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `superuser_rule`
--
ALTER TABLE `superuser_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tag_blog`
--
ALTER TABLE `tag_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category_product` (`id`);

--
-- Constraints for table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `fk_productimage_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Constraints for table `superuser_rule`
--
ALTER TABLE `superuser_rule`
  ADD CONSTRAINT `fk_superuserrule_superuser` FOREIGN KEY (`id_superuser`) REFERENCES `superuser` (`id`);

--
-- Constraints for table `tag_blog`
--
ALTER TABLE `tag_blog`
  ADD CONSTRAINT `fk_tagblog_blog` FOREIGN KEY (`id_blog`) REFERENCES `blog` (`id`),
  ADD CONSTRAINT `fk_tagblog_tag` FOREIGN KEY (`id_tag`) REFERENCES `tag` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
