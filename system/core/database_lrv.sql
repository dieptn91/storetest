-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 29, 2021 at 08:03 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_lrv`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdon`
--

DROP TABLE IF EXISTS `chitietdon`;
CREATE TABLE IF NOT EXISTS `chitietdon` (
  `madon` int(11) NOT NULL AUTO_INCREMENT,
  `masp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL,
  `ngaytao` date NOT NULL,
  `ngayupdate` date NOT NULL,
  PRIMARY KEY (`madon`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chucnang`
--

DROP TABLE IF EXISTS `chucnang`;
CREATE TABLE IF NOT EXISTS `chucnang` (
  `macn` int(11) NOT NULL AUTO_INCREMENT,
  `tencn` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhcn` text COLLATE utf8_unicode_ci NOT NULL,
  `icon` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `macha` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL,
  `ngaytao` date NOT NULL,
  `ngayupdate` date NOT NULL,
  PRIMARY KEY (`macn`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chucnang`
--

INSERT INTO `chucnang` (`macn`, `tencn`, `hinhcn`, `icon`, `link`, `macha`, `trangthai`, `ngaytao`, `ngayupdate`) VALUES
(1, 'Admin', '', '', '', '', 1, '2021-01-03', '2021-01-03');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

DROP TABLE IF EXISTS `donhang`;
CREATE TABLE IF NOT EXISTS `donhang` (
  `madh` int(11) NOT NULL AUTO_INCREMENT,
  `sodt` text COLLATE utf8_unicode_ci NOT NULL,
  `ngaylap` date NOT NULL,
  `ngaygiao` date NOT NULL,
  `tongtien` float NOT NULL,
  `makh` int(11) NOT NULL,
  `trangthaidon` int(11) NOT NULL,
  `thanhtoan` int(11) NOT NULL,
  `vanchuyen` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL,
  `ngaytao` date NOT NULL,
  `ngayupdate` date NOT NULL,
  PRIMARY KEY (`madh`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
CREATE TABLE IF NOT EXISTS `khachhang` (
  `makh` int(11) NOT NULL AUTO_INCREMENT,
  `tenkh` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `cmnd` int(9) NOT NULL,
  `sodt` text COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL,
  `ngaytao` datetime NOT NULL DEFAULT current_timestamp(),
  `ngayupdate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`makh`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`makh`, `tenkh`, `email`, `cmnd`, `sodt`, `diachi`, `trangthai`, `ngaytao`, `ngayupdate`) VALUES
(26, 'Đinh Tiên Anh', 'sdfghj5074@gmail.com', 916347074, '096915362', 'Số 254,Đường Ngô Quyền,Quận Bình Tân,Phường 7,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(25, 'Cao An Mỹ', 'jklzxc7077@gmail.com', 757535402, '063250171', 'Số 1210,Đường Lê Duẩn,Quận 9,Phường 6,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(24, 'Bùi Bình Phương', 'ghjklz9031@gmail.com', 218996579, '068847212', 'Số 413,Đường Tô Hiến Thành,Quận 9,Phường 3,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(23, 'Cao Bình Hậu', 'xcvbnm6300@gmail.com', 663228312, '034120624', 'Số 487,Đường Nguyễn Tri Phương,Quận 3,Phường 8,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(22, 'Hồ Bình Nhật', 'tyuiop4930@gmail.com', 148650232, '076090762', 'Số 354,Đường Nguyễn Tri Phương,Quận 10,Phường 14,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(21, 'Bùi Hòa An', 'etyuio9660@gmail.com', 820094805, '072805346', 'Số 806,Đường Lý Chính Thắng,Quận 1,Phường 13,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(20, 'Lê Nhật Vinh', 'uiopas1338@gmail.com', 318814272, '090604137', 'Số 310,Đường Lê Duẩn,Quận 8,Phường 8,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(19, 'Võ Thủy Bá', 'iopasd6327@gmail.com', 805723157, '037388203', 'Số 1338,Đường Nguyễn Đình Chiểu,Quận 2,Phường 15,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(18, 'Trần Thủy Mỹ', 'uretyu2319@gmail.com', 337862685, '020798799', 'Số 1057,Đường Lý Chính Thắng,Quận 9,Phường 10,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(27, 'Đinh Anh Mỹ', 'qurety4341@gmail.com', 858402786, '057267828', 'Số 1173,Đường Nguyễn Đình Chiểu,Quận 10,Phường 2,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(28, 'Mạc Phương Hòa', 'asdfgh9274@gmail.com', 257875879, '066368847', 'Số 20,Đường Điện Biên Phủ,Quận 11,Phường 10,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(29, 'Đòan Hậu An', 'ghjklz9161@gmail.com', 283539132, '080765080', 'Số 246,Đường Lý Chính Thắng,Quận Tân Bình,Phường 2,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(30, 'Đòan Tiên Tiên', 'qurety5045@gmail.com', 700195031, '095140423', 'Số 1364,Đường Lý Thường Kiệt,Quận Bình Thạnh,Phường 15,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(31, 'Mạc Hậu Văn', 'pasdfg7654@gmail.com', 657344859, '025458852', 'Số 998,Đường Lê Duẩn,Quận 3,Phường 6,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(32, 'Lý Phương Phương', 'fghjkl7097@gmail.com', 339679626, '094557668', 'Số 1070,Đường Lý Thường Kiệt,Quận 3,Phường 15,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(33, 'Võ Thủy Bá', 'lzxcvb9621@gmail.com', 302099089, '030366116', 'Số 954,Đường Ngô Quyền,Quận 10,Phường 14,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(34, 'Mạc Hòa Bá', 'hjklzx1582@gmail.com', 804999123, '037819608', 'Số 1047,Đường Lê Quang Định,Quận Bình Thạnh,Phường 4,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(35, 'Hồ Hòa Anh', 'fghjkl9916@gmail.com', 343826058, '018558700', 'Số 1239,Đường 3 tháng 2,Quận Tân Phú,Phường 4,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(36, 'Lý Hậu Hậu', 'etyuio4378@gmail.com', 537482291, '010137764', 'Số 529,Đường Lê Quang Định,Quận Phú Nhuận,Phường 4,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(37, 'Cao Phương Phương', 'klzxcv7571@gmail.com', 538892631, '025302889', 'Số 781,Đường Phan Xích Long,Quận Bình Thạnh,Phường 8,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(38, 'Lý An Nhật', 'fghjkl996@gmail.com', 923416369, '050717762', 'Số 378,Đường Lê Quang Định,Quận Bình Tân,Phường 15,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(39, 'Cao An Bá', 'zxcvbn1117@gmail.com', 442122159, '027229080', 'Số 1320,Đường Lý Thường Kiệt,Quận 7,Phường 9,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(40, 'Lý Tiên Thủy', 'qurety6152@gmail.com', 151990738, '056162581', 'Số 1423,Đường Điện Biên Phủ,Quận 1,Phường 3,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(41, 'Đinh Thủy Vinh', 'ghjklz6692@gmail.com', 462901862, '027174583', 'Số 785,Đường Lý Thường Kiệt,Quận 12,Phường 5,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(42, 'Bùi Vinh Hậu', 'opasdf2795@gmail.com', 337409036, '019970888', 'Số 800,Đường Lê Lợi,Quận 8,Phường 9,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(43, 'Hồ Ý Vinh', 'jklzxc5927@gmail.com', 487642902, '054648598', 'Số 405,Đường Lý Thường Kiệt,Quận 3,Phường 7,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(44, 'Đinh Ý Ý', 'ghjklz6218@gmail.com', 404772267, '033159126', 'Số 315,Đường Nguyễn Tri Phương,Quận 5,Phường 10,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(45, 'Lý Hòa Tiên', 'pasdfg906@gmail.com', 889785093, '029393338', 'Số 912,Đường Tô Hiến Thành,Quận 7,Phường 4,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(46, 'Trần Bá Thủy', 'uiopas5698@gmail.com', 550977274, '058044554', 'Số 1135,Đường Lê Lợi,Quận 11,Phường 10,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(47, 'Nguyễn Mỹ Văn', 'sdfghj9824@gmail.com', 739655393, '036121744', 'Số 26,Đường Lê Lợi,Quận 6,Phường 11,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(48, 'Lý Tiên Bình', 'dfghjk152@gmail.com', 688517881, '049160729', 'Số 398,Đường Lê Duẩn,Quận Tân Phú,Phường 2,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(49, 'Hồ Hậu Thị', 'uiopas6572@gmail.com', 611522470, '058947616', 'Số 966,Đường Lý Chính Thắng,Quận 7,Phường 10,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(50, 'Lê Vinh Mỹ', 'asdfgh1591@gmail.com', 163276815, '085807336', 'Số 1034,Đường Lý Chính Thắng,Quận 9,Phường 8,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(51, 'Trần Bình Văn', 'hjklzx9820@gmail.com', 332802354, '061664145', 'Số 1284,Đường Nguyễn Đình Chiểu,Quận 2,Phường 10,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(52, 'Lý Mỹ Tiên', 'uiopas8484@gmail.com', 122977659, '053317525', 'Số 1461,Đường Điện Biên Phủ,Quận Phú Nhuận,Phường 5,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(53, 'Mạc Anh Anh', 'qurety6782@gmail.com', 107293418, '069792188', 'Số 654,Đường Phan Xích Long,Quận 10,Phường 4,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(54, 'Trịnh Thị Vinh', 'xcvbnm3078@gmail.com', 116091529, '040193882', 'Số 352,Đường Nguyễn Đình Chiểu,Quận 1,Phường 8,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(55, 'Đòan Bình Bình', 'pasdfg3854@gmail.com', 966181250, '098596216', 'Số 436,Đường Phan Xích Long,Quận 11,Phường 7,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(56, 'Lê Tiên Ý', 'ghjklz9282@gmail.com', 353425904, '057931544', 'Số 754,Đường Nguyễn Đình Chiểu,Quận 4,Phường 12,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(57, 'Đòan Hậu Hòa', 'iopasd8350@gmail.com', 987527209, '063672003', 'Số 911,Đường Phan Đăng Lưu,Quận Tân Bình,Phường 6,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(58, 'Trịnh Bá Thị', 'yuiopa3813@gmail.com', 225346017, '046391119', 'Số 938,Đường Lê Duẩn,Quận 12,Phường 1,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(59, 'Bùi Phương Mỹ', 'iopasd630@gmail.com', 428020518, '025114912', 'Số 222,Đường Phan Xích Long,Quận Tân Phú,Phường 14,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(60, 'Hồ Văn Mỹ', 'sdfghj7698@gmail.com', 972093473, '013470358', 'Số 958,Đường Tô Hiến Thành,Quận 6,Phường 12,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(61, 'Hồ Ý Thị', 'klzxcv6846@gmail.com', 836463250, '064260696', 'Số 53,Đường 3 tháng 2,Quận 11,Phường 9,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(62, 'Trịnh Thủy Phương', 'pasdfg1781@gmail.com', 480073049, '016686668', 'Số 1245,Đường Lý Thường Kiệt,Quận 5,Phường 6,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(63, 'Bùi Tiên Bá', 'lzxcvb8970@gmail.com', 324882479, '056878513', 'Số 393,Đường Phan Đăng Lưu,Quận 7,Phường 10,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(64, 'Mạc Phương Phương', 'opasdf3621@gmail.com', 698854184, '050783814', 'Số 285,Đường Nguyễn Đình Chiểu,Quận 7,Phường 15,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(65, 'Hồ Hậu Thị', 'jklzxc8098@gmail.com', 714417627, '016753628', 'Số 927,Đường Lê Lợi,Quận Phú Nhuận,Phường 10,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(66, 'Lê Bá Tiên', 'retyui3518@gmail.com', 613105162, '099500496', 'Số 486,Đường Điện Biên Phủ,Quận 10,Phường 15,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(67, 'Lý Nhật Thủy', 'qurety9413@gmail.com', 999756735, '019319499', 'Số 609,Đường Lý Chính Thắng,Quận 10,Phường 8,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(68, 'Mạc Tiên Mỹ', 'yuiopa9601@gmail.com', 271707028, '085456219', 'Số 1095,Đường Lý Chính Thắng,Quận Phú Nhuận,Phường 2,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(69, 'Nguyễn Hòa Bá', 'zxcvbn6069@gmail.com', 529658732, '037029890', 'Số 980,Đường Ngô Quyền,Quận 2,Phường 11,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(70, 'Võ Bá Vinh', 'uretyu6558@gmail.com', 115104023, '087379862', 'Số 37,Đường Lê Quang Định,Quận 9,Phường 9,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(71, 'Hồ Văn Tiên', 'yuiopa4764@gmail.com', 770230531, '024132689', 'Số 318,Đường Phan Đăng Lưu,Quận 9,Phường 8,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(72, 'Mạc Phương Bình', 'yuiopa3193@gmail.com', 844225217, '037468473', 'Số 1086,Đường Lê Duẩn,Quận 11,Phường 10,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(73, 'Đòan Hòa Nhật', 'xcvbnm5660@gmail.com', 172629849, '074162307', 'Số 1251,Đường 3 tháng 2,Quận Bình Tân,Phường 2,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(74, 'Cao Hòa Phương', 'uretyu9841@gmail.com', 106041968, '049974364', 'Số 542,Đường 3 tháng 2,Quận 9,Phường 1,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(75, 'Đinh Hòa Thị', 'fghjkl5078@gmail.com', 968817299, '050832440', 'Số 749,Đường Phan Đăng Lưu,Quận Phú Nhuận,Phường 6,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(76, 'Lý Phương Thị', 'tyuiop4973@gmail.com', 194331158, '090854212', 'Số 446,Đường Lê Lợi,Quận 9,Phường 9,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(77, 'Đinh Mỹ Thị', 'retyui6724@gmail.com', 833753379, '025024766', 'Số 259,Đường Điện Biên Phủ,Quận 6,Phường 5,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(78, 'Võ Tiên Vinh', 'tyuiop1970@gmail.com', 228913411, '034656241', 'Số 1380,Đường Nguyễn Đình Chiểu,Quận Bình Thạnh,Phường 11,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(79, 'Mạc Anh Thị', 'retyui5897@gmail.com', 425026109, '041924190', 'Số 780,Đường Tô Hiến Thành,Quận 2,Phường 9,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(80, 'Đòan Ý Vinh', 'hjklzx6401@gmail.com', 617355241, '059144875', 'Số 620,Đường Nguyễn Đình Chiểu,Quận Phú Nhuận,Phường 11,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(81, 'Võ Hòa Văn', 'dfghjk9241@gmail.com', 431930929, '077531506', 'Số 167,Đường 3 tháng 2,Quận 2,Phường 8,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(82, 'Nguyễn Nhật Thủy', 'uiopas3444@gmail.com', 763270226, '055087590', 'Số 852,Đường Nguyễn Đình Chiểu,Quận 12,Phường 11,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(83, 'Trịnh Vinh Mỹ', 'ghjklz6916@gmail.com', 810478544, '043465746', 'Số 1481,Đường Điện Biên Phủ,Quận 2,Phường 10,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(84, 'Võ Ý Phương', 'iopasd281@gmail.com', 664759166, '035600741', 'Số 133,Đường Nguyễn Đình Chiểu,Quận 9,Phường 5,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(85, 'Mạc Vinh Thủy', 'dfghjk5629@gmail.com', 598824920, '036620205', 'Số 282,Đường Tô Hiến Thành,Quận 10,Phường 3,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(86, 'Lý Thủy Anh', 'hjklzx8401@gmail.com', 424649943, '094828678', 'Số 1081,Đường Phan Xích Long,Quận 8,Phường 8,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(87, 'Đinh Bá Thủy', 'zxcvbn5901@gmail.com', 700066369, '063856611', 'Số 1058,Đường Lê Quang Định,Quận Tân Phú,Phường 8,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(88, 'Trần Hòa Phương', 'xcvbnm9889@gmail.com', 550994655, '032801208', 'Số 75,Đường Lê Duẩn,Quận 9,Phường 8,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(89, 'Mạc Nhật Anh', 'klzxcv2520@gmail.com', 599830292, '064752323', 'Số 1209,Đường Lý Thường Kiệt,Quận Tân Bình,Phường 14,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(90, 'Hồ Văn Tiên', 'hjklzx8473@gmail.com', 683279796, '046459330', 'Số 1488,Đường Ngô Quyền,Quận 10,Phường 15,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(91, 'Bùi Bá Tiên', 'dfghjk6810@gmail.com', 845021898, '089453483', 'Số 1288,Đường Nguyễn Đình Chiểu,Quận Tân Bình,Phường 6,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(92, 'Nguyễn Ý Phương', 'sdfghj353@gmail.com', 982375332, '030706790', 'Số 1342,Đường Nguyễn Tri Phương,Quận 12,Phường 15,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(93, 'Cao Thủy Văn', 'klzxcv8071@gmail.com', 439247175, '091224518', 'Số 1456,Đường Lê Lợi,Quận 5,Phường 7,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(94, 'Đòan Thủy Thủy', 'tyuiop1697@gmail.com', 492287771, '034821654', 'Số 528,Đường Tô Hiến Thành,Quận 6,Phường 13,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(95, 'Lý Bình Văn', 'klzxcv3941@gmail.com', 591351053, '045206300', 'Số 172,Đường Điện Biên Phủ,Quận 8,Phường 9,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(96, 'Lê Ý Vinh', 'pasdfg1725@gmail.com', 791537407, '063123493', 'Số 827,Đường Phan Xích Long,Quận Bình Thạnh,Phường 8,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(97, 'Mạc Hậu Bình', 'lzxcvb1945@gmail.com', 497996548, '029117914', 'Số 621,Đường Điện Biên Phủ,Quận 3,Phường 12,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(98, 'Nguyễn Mỹ Tiên', 'zxcvbn1524@gmail.com', 727449774, '035860398', 'Số 1139,Đường Lê Quang Định,Quận 6,Phường 8,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(99, 'Lê Bá An', 'klzxcv4003@gmail.com', 677102274, '091599886', 'Số 1014,Đường Phan Đăng Lưu,Quận 11,Phường 5,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(100, 'Lý Thị Ý', 'dfghjk5880@gmail.com', 372878034, '068117413', 'Số 447,Đường Ngô Quyền,Quận Tân Bình,Phường 13,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(101, 'Trần Anh Văn', 'pasdfg2908@gmail.com', 810229165, '040258976', 'Số 803,Đường Điện Biên Phủ,Quận 9,Phường 4,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(102, 'Võ Bình Hậu', 'opasdf8299@gmail.com', 682390894, '022595518', 'Số 169,Đường Lê Quang Định,Quận 11,Phường 11,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(103, 'Lê Vinh Bình', 'lzxcvb6504@gmail.com', 653674897, '031571070', 'Số 424,Đường Phan Đăng Lưu,Quận 11,Phường 9,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(104, 'Lê Hậu Thị', 'yuiopa5841@gmail.com', 582568170, '095874588', 'Số 954,Đường Lê Duẩn,Quận Bình Tân,Phường 2,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(105, 'Mạc Tiên Văn', 'yuiopa4892@gmail.com', 195711866, '096152727', 'Số 759,Đường Phan Xích Long,Quận Bình Tân,Phường 14,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(106, 'Nguyễn Mỹ Vinh', 'hjklzx1125@gmail.com', 817398900, '033364362', 'Số 206,Đường Lý Thường Kiệt,Quận 7,Phường 3,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(107, 'Trịnh Mỹ Thủy', 'iopasd6219@gmail.com', 998607911, '012779184', 'Số 192,Đường Lý Thường Kiệt,Quận 9,Phường 13,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(108, 'Trịnh Hòa An', 'klzxcv6312@gmail.com', 170979241, '027399578', 'Số 1265,Đường 3 tháng 2,Quận Bình Thạnh,Phường 7,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(109, 'Trần Phương Tiên', 'tyuiop9845@gmail.com', 792722642, '020330951', 'Số 1093,Đường Lý Thường Kiệt,Quận 12,Phường 8,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(110, 'Đòan Tiên An', 'etyuio7510@gmail.com', 368871914, '053151971', 'Số 943,Đường 3 tháng 2,Quận Phú Nhuận,Phường 7,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(111, 'Lê Mỹ Thủy', 'uretyu2444@gmail.com', 115568999, '045037231', 'Số 853,Đường Ngô Quyền,Quận 11,Phường 10,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(112, 'Lê Ý Thủy', 'dfghjk5460@gmail.com', 375164912, '045652581', 'Số 1122,Đường Ngô Quyền,Quận Tân Phú,Phường 12,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(113, 'Trịnh Ý Thị', 'lzxcvb9429@gmail.com', 698808915, '071352754', 'Số 351,Đường Lê Quang Định,Quận 2,Phường 14,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(114, 'Hồ Hậu Mỹ', 'lzxcvb3329@gmail.com', 610605273, '047754568', 'Số 1041,Đường Lê Quang Định,Quận 6,Phường 13,Tp.HCM', 0, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(115, 'Lý Thị Ý', 'ghjklz7073@gmail.com', 875259651, '094600844', 'Số 666,Đường Phan Xích Long,Quận 9,Phường 15,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(116, 'Bùi Thị Hòa', 'yuiopa7460@gmail.com', 975691949, '043746379', 'Số 1137,Đường Tô Hiến Thành,Quận 5,Phường 10,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(117, 'Đòan Hậu Văn', 'etyuio2232@gmail.com', 526700596, '058003900', 'Số 886,Đường Ngô Quyền,Quận 2,Phường 12,Tp.HCM', 1, '2021-01-01 10:17:05', '2021-01-01 10:17:05'),
(1, 'Cao Ý Thị', 'uiopas5225@gmail.com', 502817339, '072984080', 'Số 149,Đường Phan Đăng Lưu,Quận 8,Phường 4,Tp.HCM', 1, '2021-01-01 10:20:54', '2021-01-01 10:20:54'),
(2, 'Mạc Thị Thị', 'hjklzx6202@gmail.com', 659695581, '029483435', 'Số 668,Đường Điện Biên Phủ,Quận Tân Bình,Phường 8,Tp.HCM', 0, '2021-01-01 10:20:54', '2021-01-01 10:20:54'),
(3, 'Hồ Anh Văn', 'pasdfg3355@gmail.com', 849589266, '064793311', 'Số 653,Đường Tô Hiến Thành,Quận 11,Phường 5,Tp.HCM', 0, '2021-01-01 10:20:54', '2021-01-01 10:20:54'),
(4, 'Nguyễn Bình Bình', 'sdfghj1262@gmail.com', 901047308, '049166172', 'Số 793,Đường Tô Hiến Thành,Quận 9,Phường 9,Tp.HCM', 1, '2021-01-01 10:20:54', '2021-01-01 10:20:54'),
(5, 'Trịnh Hòa Văn', 'pasdfg918@gmail.com', 464590381, '057653821', 'Số 1196,Đường Lý Thường Kiệt,Quận 12,Phường 11,Tp.HCM', 1, '2021-01-01 10:20:54', '2021-01-01 10:20:54'),
(6, 'Mạc Thị Tiên', 'ghjklz8580@gmail.com', 287438968, '093525458', 'Số 698,Đường Nguyễn Tri Phương,Quận 9,Phường 11,Tp.HCM', 1, '2021-01-01 10:20:54', '2021-01-01 10:20:54'),
(7, 'Lý Vinh Anh', 'qurety3079@gmail.com', 276808294, '038197657', 'Số 1137,Đường Lê Lợi,Quận 11,Phường 12,Tp.HCM', 0, '2021-01-01 10:20:54', '2021-01-01 10:20:54'),
(8, 'Đòan Mỹ Thị', 'retyui8438@gmail.com', 459128682, '067766513', 'Số 954,Đường Lý Thường Kiệt,Quận Bình Tân,Phường 5,Tp.HCM', 0, '2021-01-01 10:20:54', '2021-01-01 10:20:54'),
(9, 'Lý Thị Nhật', 'qurety2222@gmail.com', 936290191, '066193709', 'Số 675,Đường Lê Duẩn,Quận 8,Phường 14,Tp.HCM', 1, '2021-01-01 10:20:54', '2021-01-01 10:20:54'),
(10, 'Lý Hòa Thị', 'retyui9652@gmail.com', 146881653, '031164933', 'Số 1355,Đường Lê Duẩn,Quận 4,Phường 14,Tp.HCM', 1, '2021-01-01 10:20:54', '2021-01-01 10:20:54'),
(11, 'Trần Tiên Mỹ', 'fghjkl3749@gmail.com', 894253456, '089679018', 'Số 1160,Đường Nguyễn Tri Phương,Quận 8,Phường 2,Tp.HCM', 1, '2021-01-01 10:20:54', '2021-01-01 10:20:54'),
(12, 'Lý Bá Thủy', 'hjklzx4130@gmail.com', 314877066, '052702114', 'Số 23,Đường 3 tháng 2,Quận 9,Phường 11,Tp.HCM', 1, '2021-01-01 10:20:54', '2021-01-01 10:20:54'),
(13, 'Hồ An Thị', 'xcvbnm4358@gmail.com', 808023965, '054509386', 'Số 750,Đường Điện Biên Phủ,Quận Phú Nhuận,Phường 5,Tp.HCM', 0, '2021-01-01 10:20:54', '2021-01-01 10:20:54'),
(14, 'Nguyễn Ý Hòa', 'uretyu5456@gmail.com', 792487574, '064270427', 'Số 394,Đường 3 tháng 2,Quận 7,Phường 11,Tp.HCM', 0, '2021-01-01 10:20:54', '2021-01-01 10:20:54'),
(15, 'Võ Văn Phương', 'tyuiop5710@gmail.com', 524953111, '018104454', 'Số 477,Đường Lý Chính Thắng,Quận 9,Phường 5,Tp.HCM', 1, '2021-01-01 10:20:54', '2021-01-01 10:20:54'),
(16, 'Trần Phương Anh', 'zxcvbn9207@gmail.com', 740815780, '067828308', 'Số 150,Đường Nguyễn Tri Phương,Quận 9,Phường 4,Tp.HCM', 1, '2021-01-01 10:20:54', '2021-01-01 10:20:54'),
(17, 'Lý Anh Mỹ', 'ghjklz6228@gmail.com', 362722736, '023647789', 'Số 325,Đường Điện Biên Phủ,Quận 11,Phường 5,Tp.HCM', 0, '2021-01-01 10:20:54', '2021-01-01 10:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

DROP TABLE IF EXISTS `loaisp`;
CREATE TABLE IF NOT EXISTS `loaisp` (
  `maloai` int(11) NOT NULL AUTO_INCREMENT,
  `tenloai` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL,
  `macha` int(11) DEFAULT NULL,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `tukhoa` text COLLATE utf8_unicode_ci NOT NULL,
  `motatk` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhchiase` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL,
  `ngaytao` date NOT NULL,
  `ngayupdate` date NOT NULL,
  PRIMARY KEY (`maloai`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`maloai`, `tenloai`, `hinhanh`, `macha`, `alias`, `tukhoa`, `motatk`, `hinhchiase`, `trangthai`, `ngaytao`, `ngayupdate`) VALUES
(1, 'Điện thoại', '', 0, '', '', '', '', 1, '2021-01-03', '2021-01-03'),
(2, 'Điện thoại thông minh', '', 1, '', '', '', '', 1, '2021-01-03', '2021-01-03'),
(3, 'Điện thoại thường', '', 1, '', '', '', '', 1, '2021-01-03', '2021-01-03'),
(4, 'Máy tính bảng', '', NULL, '', '', '', '', 1, '2021-01-03', '2021-01-03'),
(5, 'Máy tính bảng thường', '', 4, '', '', '', '', 1, '2021-01-03', '2021-01-03'),
(6, 'Surface', '', 4, '', '', '', '', 1, '2021-01-03', '2021-01-03');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
CREATE TABLE IF NOT EXISTS `nhacungcap` (
  `mancc` int(11) NOT NULL AUTO_INCREMENT,
  `tenncc` text COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `sodt` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL,
  `ngaytao` date NOT NULL,
  `ngayupdate` date NOT NULL,
  PRIMARY KEY (`mancc`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`mancc`, `tenncc`, `diachi`, `email`, `sodt`, `hinhanh`, `trangthai`, `ngaytao`, `ngayupdate`) VALUES
(1, 'Công ty TNHH NGK Coca-Cola Việt Nam', '485 Xa lộ Hà Nội, Phường Linh Trung, Quận Thủ Đức, tp. HCM, Việt Nam\r\n', 'vu@coca-cola.com', '0838961000', 'no-image', 1, '2020-12-28', '2020-12-28'),
(2, 'Công ty TNHH Điện Tử Samsung Vina', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh\r\n', 'info@samsung.com', '02839157310', 'no-image', 1, '2020-12-28', '2020-12-28');

-- --------------------------------------------------------

--
-- Table structure for table `nhomquantri`
--

DROP TABLE IF EXISTS `nhomquantri`;
CREATE TABLE IF NOT EXISTS `nhomquantri` (
  `manhom` int(11) NOT NULL AUTO_INCREMENT,
  `tennhom` text COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL,
  `ngaytao` date NOT NULL,
  `ngayupdate` date NOT NULL,
  PRIMARY KEY (`manhom`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhomquantri`
--

INSERT INTO `nhomquantri` (`manhom`, `tennhom`, `mota`, `trangthai`, `ngaytao`, `ngayupdate`) VALUES
(1, 'Nhom Admin', 'Quan li nguoi dung(them,sua,xoa...)', 1, '2020-12-28', '2020-12-28'),
(2, 'Nhom nguoi dung', 'Xem sp, dat hang, thanh toan', 1, '2020-12-28', '2020-12-28');

-- --------------------------------------------------------

--
-- Table structure for table `nhomtintuc`
--

DROP TABLE IF EXISTS `nhomtintuc`;
CREATE TABLE IF NOT EXISTS `nhomtintuc` (
  `matt` int(11) NOT NULL AUTO_INCREMENT,
  `tentt` text COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL,
  `macha` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL,
  `ngaytao` date NOT NULL,
  `ngayupdate` date NOT NULL,
  PRIMARY KEY (`matt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen`
--

DROP TABLE IF EXISTS `phanquyen`;
CREATE TABLE IF NOT EXISTS `phanquyen` (
  `macn` int(11) NOT NULL,
  `maqt` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL,
  `ngaytao` date NOT NULL,
  `ngayupdate` date NOT NULL,
  PRIMARY KEY (`macn`,`maqt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phanquyen`
--

INSERT INTO `phanquyen` (`macn`, `maqt`, `trangthai`, `ngaytao`, `ngayupdate`) VALUES
(1, 1, 1, '2021-01-03', '2021-01-03');

-- --------------------------------------------------------

--
-- Table structure for table `quantri`
--

DROP TABLE IF EXISTS `quantri`;
CREATE TABLE IF NOT EXISTS `quantri` (
  `maqt` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tenqt` text COLLATE utf8_unicode_ci NOT NULL,
  `tendangnhap` text COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` text COLLATE utf8_unicode_ci NOT NULL,
  `manhom` int(11) NOT NULL,
  `avatar` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `trangthai` int(11) NOT NULL,
  `ngaytao` datetime DEFAULT NULL,
  `ngayupdate` datetime DEFAULT NULL,
  PRIMARY KEY (`maqt`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quantri`
--

INSERT INTO `quantri` (`maqt`, `tenqt`, `tendangnhap`, `matkhau`, `manhom`, `avatar`, `trangthai`, `ngaytao`, `ngayupdate`) VALUES
(1, 'admin', 'admin123', '25f9e794323b453885f5181f1b624d0b', 1, '', 1, '2021-01-03 00:00:00', '2021-01-03 00:00:00'),
(2, 'nguoidung03', 'user', '123', 1, 'images//file_1611906922.jpg', 1, '2021-01-29 00:00:00', '2021-01-29 00:00:00'),
(13, 'admin7', 'admin7', '', 2, '', 1, '2021-01-29 00:00:00', '2021-01-29 00:00:00'),
(14, 'admin81', 'admin8', '', 1, '', 1, '2021-01-29 00:00:00', '2021-01-29 00:00:00'),
(15, 'admin91', 'admin9', '', 1, 'images//file_1611907350.jpg', 1, '2021-01-29 00:00:00', '2021-01-29 00:00:00'),
(18, 'sdađsad', 'sadad', '123123', 1, '', 3, '2021-01-15 00:00:00', '2021-01-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `masp` int(11) NOT NULL AUTO_INCREMENT,
  `tensp` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `chitiet` text COLLATE utf8_unicode_ci NOT NULL,
  `gia` float NOT NULL,
  `soluong` int(11) NOT NULL,
  `maloai` int(11) NOT NULL,
  `mancc` int(11) NOT NULL,
  `dshinh` text COLLATE utf8_unicode_ci NOT NULL,
  `tukhoa` text COLLATE utf8_unicode_ci NOT NULL,
  `motatk` text COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhchiase` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL,
  `ngaytao` date NOT NULL,
  `ngayupdate` date NOT NULL,
  PRIMARY KEY (`masp`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `hinhanh`, `mota`, `chitiet`, `gia`, `soluong`, `maloai`, `mancc`, `dshinh`, `tukhoa`, `motatk`, `alias`, `hinhchiase`, `trangthai`, `ngaytao`, `ngayupdate`) VALUES
(1, 'Điện thoại Samsung A71', '/pub-assit/img/ssa70.jpg', 'Màn hình 6\"5, Ram 4gb', '-Màn hình OLED 6\"5\r\n-RAM 4gb\r\n-Chip Snapdragon 737\r\n-Rom 3gb\r\n-Hỗ trợ thẻ micro 128gb', 10999000, 1, 1, 2, '', '#samsunga70,#manhinh6\"5,#ram4gb', 'samsung a70,màn hình6\"5, ram 4gb', '', '', 1, '2021-01-03', '2021-01-03');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

DROP TABLE IF EXISTS `tintuc`;
CREATE TABLE IF NOT EXISTS `tintuc` (
  `matt` int(11) NOT NULL AUTO_INCREMENT,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL,
  `tieude` text COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `tukhoa` text COLLATE utf8_unicode_ci NOT NULL,
  `motatk` text COLLATE utf8_unicode_ci NOT NULL,
  `timkiem` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhchiase` text COLLATE utf8_unicode_ci NOT NULL,
  `manhomtt` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL,
  `ngaytao` date NOT NULL,
  `ngayupdate` date NOT NULL,
  PRIMARY KEY (`matt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
