-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 13, 2017 lúc 10:27 SA
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id_giohang` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `user` varchar(255) NOT NULL,
  `soluong` int(10) NOT NULL,
  `tinhtrang` text NOT NULL,
  `ngaydat` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id_hoadon` int(10) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `diachi` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` int(20) NOT NULL,
  `fax` int(20) NOT NULL,
  `cty` varchar(255) NOT NULL,
  `id` varchar(10) NOT NULL,
  `soluong` int(10) NOT NULL,
  `tongtien` float NOT NULL,
  `ngaydat` datetime NOT NULL,
  `tinhtrang` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id_hoadon`, `hoten`, `diachi`, `email`, `dienthoai`, `fax`, `cty`, `id`, `soluong`, `tongtien`, `ngaydat`, `tinhtrang`) VALUES
(36, 'PhÃ¹ng Äá»©c Long', '559 Kim NgÆ°', 'phunglong30101996@gmail.com', 971789000, 2147483647, 'TLU COMPANY', '78713611', 3, 173970000, '2017-05-09 20:35:09', 'dathang'),
(39, 'Long Phung', '559 Kim nguu, 170 Tay Son', 'phunglong30101996@gmail.com', 971789000, 1234, 'HÃ  Ná»™i', '123123', 2, 38000000, '2017-05-11 10:40:25', 'dathang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `id_lienhe` int(10) NOT NULL,
  `hoten` text NOT NULL,
  `cty` text NOT NULL,
  `email` text NOT NULL,
  `dienthoai` int(20) NOT NULL,
  `fax` int(20) NOT NULL,
  `diachi` text NOT NULL,
  `noidung` text NOT NULL,
  `ngaylienhe` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`id_lienhe`, `hoten`, `cty`, `email`, `dienthoai`, `fax`, `diachi`, `noidung`, `ngaylienhe`) VALUES
(14, 'Phùng Đức Long', 'TLU-University', 'phunglong30101996@gmail.com', 971789000, 0, 'Hà Nội', 'hàng chất lượng tốt\r\n', '2017-05-08 09:19:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id_loai` int(10) NOT NULL,
  `id_nhom` int(11) NOT NULL,
  `tenloaisp` text NOT NULL,
  `ghichu` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id_loai`, `id_nhom`, `tenloaisp`, `ghichu`) VALUES
(15, 2, 'Loa Laptop', ''),
(7, 1, 'Samsung', ''),
(6, 1, 'Toshiba', ''),
(5, 1, 'Sony', ''),
(11, 2, 'USB 3G', ''),
(10, 2, 'USB', ''),
(13, 2, 'Chuột', ''),
(4, 1, 'HP Compaq', ''),
(3, 1, 'Asus', ''),
(9, 1, 'Lenovo', ''),
(8, 1, 'Dell', ''),
(1, 1, 'Apple (Macbook)', ''),
(2, 1, 'Acer', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomsanpham`
--

CREATE TABLE `nhomsanpham` (
  `id_nhom` int(10) NOT NULL,
  `tennhom` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nhomsanpham`
--

INSERT INTO `nhomsanpham` (`id_nhom`, `tennhom`) VALUES
(1, 'Laptop'),
(2, 'Phụ kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(20) NOT NULL,
  `id_loai` int(10) NOT NULL,
  `tensp` text NOT NULL,
  `mota` text NOT NULL,
  `hinh` text NOT NULL,
  `gia` int(15) NOT NULL,
  `ghichu` text NOT NULL,
  `soluongban` int(10) NOT NULL,
  `id_menu` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `id_loai`, `tensp`, `mota`, `hinh`, `gia`, `ghichu`, `soluongban`, `id_menu`) VALUES
(123123, 4, 'HP ZBook 15', '<p><span style=\"color: rgb(68, 68, 68); font-family: MyriadProSemibold, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">Intel® Core™ i7-7500U (2.7 GHz, up to 3.5 GHz, 4 MB cache, 2 cores) + Intel® HD Graphics 620), 8 GB LPDDR3-1866 SDRAM (onboard), 256 GB PCIe® NVM™ M.2 SSD , 13.3\" diagonal FHD IPS UWVA BrightView Corning® Gorilla® Glass WLED-backlit (1920 x 1080), Wireless 802.11 b/g/n/ac, USB TYPE C x2, Webcam 1.3M, Microphone, Bluetooth 4.1, HDMI, 1.4 Kg, Pin 4 Cell, Windows 10 pro</span></p>', 'HP-ZBook-15.jpg', 19000000, 'new', 0, 0),
(49260, 1, 'MacBook Air MD760', '<p>CPU<span style=\"white-space:pre\" class=\"Apple-tab-span\">	</span>Intel, Core i5 Haswell, 4250U, 1.30 GHz</p>\r\n<p>RAM<span style=\"white-space:pre\" class=\"Apple-tab-span\">	</span>DDR3L(On board), 4 GB</p>\r\n<p>Đĩa cứng<span style=\"white-space:pre\" class=\"Apple-tab-span\">	</span>SSD, 128 GB</p>\r\n<p>M&agrave;n h&igrave;nh rộng<span style=\"white-space:pre\" class=\"Apple-tab-span\">	</span>13.3 inch, HD (1440 x 900 pixels)</p>\r\n<p>Cảm ứng<span style=\"white-space:pre\" class=\"Apple-tab-span\">	</span>Kh&ocirc;ng</p>\r\n<p>Đồ họa<span style=\"white-space:pre\" class=\"Apple-tab-span\">	</span>Intel HD Graphics 5000, Share 1664MB</p>\r\n<p>Đĩa quang<span style=\"white-space:pre\" class=\"Apple-tab-span\">	</span>Kh&ocirc;ng</p>\r\n<p>HĐH theo m&aacute;y<span style=\"white-space:pre\" class=\"Apple-tab-span\">	</span>Mac OS X</p>\r\n<p>PIN/Battery<span style=\"white-space:pre\" class=\"Apple-tab-span\">	</span>4cell Li - Polymer</p>\r\n<p>Trọng lượng (Kg)<span style=\"white-space:pre\" class=\"Apple-tab-span\">	</span>1.35</p>', 'MacBookAirMD760.jpg', 11990000, 'new', 1, 0),
(71368667, 7, 'Samsung XE700T1C', '<p>&nbsp;</p>\r\n<h2 style=\"margin: 0px; padding: 0px; word-wrap: break-word; font-size: 38px; line-height: 38px; font-weight: normal; font-family: PFSquareSansProMedium, Arial, sans-serif;\">Trợ thủ văn ph&ograve;ng di động</h2>\r\n<p class=\"headline\" style=\"margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;\">Trải nghiệm sự tiện dụng của một m&aacute;y t&iacute;nh bảng với sức mạnh của một m&aacute;y t&iacute;nh x&aacute;ch tay thự thụ với Samsung ATIV Tab 7</p>\r\n<p class=\"headline\" style=\"margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;\">&nbsp;</p>\r\n<h3 style=\"margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;\">Sự lựa chọn của giới chuy&ecirc;n nghiệp</h3>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;\">Nếu bạn cần một thiết bị hỗ trợ mạnh mẽ đ&iacute;ch thực, Samsung ATIV Tab 7 sẽ đ&aacute;p ứng mọi nhu cầu của bạn. Với bộ vi xử l&yacute; Intel &reg; Core &trade; i5 thế hệ mới nhất, m&aacute;y cho ph&eacute;p duyệt web nhanh hơn, xử l&yacute; đa t&aacute;c vụ mạnh mẽ, chuyển đổi video hoặc &acirc;m nhạc, v&agrave; c&oacute; thể chạy c&aacute;c ứng dụng &quot;nặng k&yacute; nhất&quot;.</p>\r\n<h3 style=\"margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;\">Đ&aacute;p ứng mọi nhu cầu - từ s&aacute;ng tạo đến giải tr&iacute;</h3>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;\">Một thiết kế mang t&iacute;nh c&aacute;ch mạng kết hợp sức mạnh của một m&aacute;y t&iacute;nh x&aacute;ch tay với t&iacute;nh cơ động của m&aacute;y t&iacute;nh bảng. Bạn c&oacute; thể tận hưởng c&aacute;c tiện &iacute;ch giải tr&iacute; một c&aacute;ch linh hoạt v&agrave; thuận tiện dụng đang di chuyển, như duyệt web, kết nối mạng x&atilde; hội, xem phim v&agrave; chơi game. Chỉ cần gắn th&ecirc;m b&agrave;n ph&iacute;m v&agrave; touchpad l&agrave; bạn đ&atilde; c&oacute; thể giải quyết c&ocirc;ng việc hiệu quả, v&agrave; s&aacute;ng tạo như tr&ecirc;n một m&aacute;y t&iacute;nh x&aacute;ch tay.</p>\r\n<h3 style=\"margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;\">Viết khi di chuyển</h3>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;\">B&uacute;t S Pen đ&atilde; đưa trải nghiệm viết v&agrave; vẽ thực tế v&agrave;o thế giới m&aacute;y t&iacute;nh. Được chế tạo nh&agrave; sản xuất c&ocirc;ng nghệ h&agrave;ng đầu Wacom, với 1024 mức cảm ứng cho độ ch&iacute;nh x&aacute;c si&ecirc;u việt theo ti&ecirc;u chuẩn của c&aacute;c thiết kế gia chuy&ecirc;n nghiệp, tạo cảm gi&aacute;c như đang d&ugrave;ng một c&acirc;y b&uacute;t hoặc b&uacute;t ch&igrave; th&ocirc;ng thường. Để tối ưu h&oacute;a sự thoải m&aacute;i v&agrave; tiện dụng, b&uacute;t c&oacute; k&iacute;ch thước v&agrave; h&igrave;nh d&aacute;ng như b&uacute;t thật v&agrave; được cắm ở khe b&ecirc;n h&ocirc;ng m&aacute;y.</p>', 'SamsungXE700T1C.jpg', 15000000, 'hienthi', 1, 0),
(71368670, 7, 'Samsung NP530U3C', '<p>&nbsp;<span style=\"font-family: PFSquareSansProMedium, Arial, sans-serif; font-size: 38px; line-height: 38px;\">Samsung Series 5 ULTRA</span></p>\r\n<p class=\"headline\" style=\"margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;\">Sức mạnh của một Ultrabook&trade; hiệu năng</p>\r\n<h3 style=\"margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;\">Thiết kế si&ecirc;u di động</h3>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;\">Với những người thường xuy&ecirc;n di chuyển, việc phải mang theo b&ecirc;n người một chiếc notebook cồng kềnh bao giờ cũng l&agrave; một g&aacute;nh nặng lớn.Thấu hiểu điều đ&oacute;, Samsung mang đến bạn Notebook Series 5 535 c&oacute; thiết kế rất mỏng (14.9 ~ 17.6mm), nhẹ(1.52 kg) - th&iacute;ch hợp cho cuộc sống năng động h&agrave;ng ng&agrave;y của bạn. Với Samsung Series 5 535, bạn sẽ lu&ocirc;n c&oacute; văn ph&ograve;ng của m&igrave;nh, ở mọi l&uacute;c, mọi nơi.</p>', 'SamsungNP530U3C.jpg', 11000000, 'hienthi', 0, 0),
(71368671, 7, 'Samsung NP900X3C', '<p>&nbsp;<span style=\"font-family: PFSquareSansProMedium, Arial, sans-serif; font-size: 38px; line-height: 38px;\">Mỏng đến kh&ocirc;ng ngờ - thiết kế ho&agrave;n hảo</span></p>\r\n<p class=\"headline\" style=\"margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;\">&bull; Mỏng đến kh&ocirc;ng ngờ - thiết kế ho&agrave;n hảo<br />\r\n&bull; Thiết kế chưa từng thấy trước nay<br />\r\n&bull; Samsung Fast Solutions<br />\r\n&bull; M&agrave;n h&igrave;nh r&otilde; hơn, s&aacute;ng hơn v&agrave; rộng hơn</p>\r\n<p class=\"headline\" style=\"margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;\">&nbsp;</p>', 'SamsungNP900X3C.jpg', 13999999, 'new', 4, 0),
(71368672, 7, 'Samsung NP300E4X', '<p>&nbsp;<span style=\"font-family: PFSquareSansProMedium, Arial, sans-serif; font-size: 38px; line-height: 38px;\">Đ&aacute;p ứng mọi nhu cầu tại gia</span></p>\r\n<p class=\"headline\" style=\"margin: 20px 0px 0px; padding: 0px; word-wrap: break-word; font-size: 17px; font-family: PFSquareSansProMedium, Arial, sans-serif; color: rgb(102, 102, 102); line-height: 22px;\">Samsung Notebook Series 3</p>\r\n<h3 style=\"margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;\">M&agrave;n h&igrave;nh mảnh mai</h3>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;\">G&oacute;p phần tạo n&ecirc;n một thiết kế si&ecirc;u di động l&agrave; viền m&agrave;n h&igrave;nh cực mỏng &ndash; chỉ bằng một &ldquo;l&oacute;ng tay&rdquo; (mỏng hơn 55 - 60% so với c&aacute;c model trước đ&oacute;*). Chiếc laptop sẽ nhỏ hơn v&agrave; nhẹ hơn nhưng kh&ocirc;ng ảnh hưởng đến k&iacute;ch thước m&agrave;n h&igrave;nh, thật dễ để bạn mang theo b&ecirc;n m&igrave;nh khi ra ngo&agrave;i. Đặc biệt, với thiết kế sang trọng của chiếc laptop, bạn sẽ lu&ocirc;n tr&ocirc;ng thật s&agrave;nh điệu.&nbsp;<br />\r\n* So s&aacute;nh với d&ograve;ng laptop RV / RC</p>\r\n<h3 style=\"margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;\">Thời lượng sử dụng pin l&ecirc;n tới 7.5 giờ</h3>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;\">Thật thoải m&aacute;i với thời lượng sử dụng pin k&eacute;o d&agrave;i l&ecirc;n tới 7.5 giờ* (pin 4400 mAh) / 8.9 giờ* (pin 5200 mAh) cho mỗi lần sạc. Do đ&oacute;, bạn c&oacute; thể l&agrave;m việc l&acirc;u hơn ở qu&aacute;n cafe, lớp học hay bất cứ nơi n&agrave;o &ndash; v&agrave; thậm ch&iacute; vẫn c&ograve;n pin để bạn giải tr&iacute; cuối ng&agrave;y. *Dựa tr&ecirc;n kết quả kiểm tra BatteryMark v&agrave; sẽ kh&aacute;c nhau t&ugrave;y cấu h&igrave;nh m&aacute;y</p>\r\n<h3 style=\"margin: 0px 0px 8px; padding: 0px; word-wrap: break-word; font-size: 12px; line-height: 1.2; color: rgb(1, 1, 1); font-family: Arial, sans-serif;\">Khả năng đồ họa mạnh mẽ</h3>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; word-wrap: break-word; line-height: 1.5; font-family: Arial, sans-serif;\">Card đồ họa thế hệ mới NVIDIA GeForce mang đến những trải nghiệm video v&agrave; game tuyệt vời, với khả năng đồ họa 3D cao cấp v&agrave; bộ nhớ DDR3 mạnh mẽ. Đ&acirc;y quả l&agrave; chiếc m&aacute;y t&iacute;nh l&yacute; tưởng để chơi những game th&ocirc;ng dụng, xem phim HD hay chỉnh sửa ảnh.</p>', 'SamsungNP300E4X.jpg', 11310000, 'new', 0, 0),
(71368673, 6, 'tecra-Z50', '', 'tecra-Z50.jpg', 13300000, 'new', 0, 0),
(7, 6, 'ToshibaR930', '<p>&nbsp;<strong style=\"border: 0px; font-size: small; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, arial, helvetica, sans-serif;\"><strong style=\"border: 0px; font-size: 13px; margin: 0px; padding: 0px;\">N&acirc;ng cao Trải nghiệm của Bạn</strong><br style=\"line-height: 10px;\" />\r\n<br style=\"line-height: 10px;\" />\r\n</strong><span style=\"color: rgb(51, 51, 51); font-family: tahoma, arial, helvetica, sans-serif; font-size: small;\">Gọn nhẹ v&agrave; Thoải m&aacute;i. Đặc điểm kỹ thuật ưu việt. H&igrave;nh ảnh phim si&ecirc;u thực sắc n&eacute;t, hỗ trợ &acirc;m bass tuyệt hảo. Satellite L50. Đ&oacute; l&agrave;n tất cả những g&igrave; bạn cần để nội trội giữa đ&aacute;m đ&ocirc;ng.</span><strong style=\"border: 0px; font-size: small; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, arial, helvetica, sans-serif;\">&nbsp;</strong></p>\r\n<p style=\"border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"border: 0px; font-size: small; margin: 0px; padding: 0px; font-family: tahoma, arial, helvetica, sans-serif;\">Bộ Tăng tốc HD của Toshiba</span></strong></p>\r\n<p><span style=\"border: 0px; font-size: small; margin: 0px; padding: 0px; font-family: tahoma, arial, helvetica, sans-serif;\">Tăng truy cập v&agrave;o c&aacute;c ứng dụng v&agrave; c&aacute;c chương tr&igrave;nh y&ecirc;u th&iacute;ch của bạn nhanh hơn l&ecirc;n đến 60 %, c&ocirc;ng nghệ của Bộ tăng tốc HDD của Toshiba gi&uacute;p bộ nhớ hệ thống phản ứng nhanh hơn.</span></p>', 'ToshibaR930.jpg', 15460000, 'new', 0, 0),
(895, 5, 'VAIO® Tap 11', '<p><span style=\"font-size: larger;\"><span style=\"font-family: Tahoma;\">Tablet PC Windows VAIO&reg; Tap 11 đầu ti&ecirc;n của Sony với th&acirc;n m&aacute;y đạt thiết kế mỏng v&agrave; nhẹ với b&agrave;n ph&iacute;m từ kh&ocirc;ng d&acirc;y. B&uacute;t cảm ứng số cho sử dụng linh hoạt v&agrave; hiệu quả như b&uacute;t viết tr&ecirc;n giấy. Một thiết kế độc đ&aacute;o, nhiều ứng dụng, t&iacute;ch hợp c&ocirc;ng nghệ nghe nh&igrave;n cao cấp trong một chiếc Tablet PC ho&agrave;n hảo</span></span></p>', 'VAIOTap11.jpg', 12990000, 'hienthi', 0, 0),
(71368674, 5, 'VAIO® Pro 13', '<p><span style=\"font-size: large;\">Trọng lượng nhẹ với hiệu suất tuyệt vời.</span></p>\r\n<p>&nbsp;</p>\r\n<p style=\"margin: 0px 25px 0px 0px; padding: 0px; font-size: 12px; line-height: 1.5; color: rgb(0, 0, 0); font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" class=\"rangeText\">VAIO<span style=\"font-size: 10px; vertical-align: baseline;\" class=\"reg\">&reg;</span><span class=\"Apple-converted-space\">&nbsp;</span>Pro  11/13 l&agrave; một chiếc Ultrabook mỏng v&agrave; si&ecirc;u nhẹ với cấu tr&uacute;c carbon bền  bỉ, đạt khả năng kết nối tuyệt vời, b&agrave;n ph&iacute;m thoải m&aacute;i khi g&otilde;, v&agrave; những  t&iacute;nh năng kh&aacute;c gi&uacute;p chiếc m&aacute;y trở th&agrave;nh một c&ocirc;ng cụ tuyệt vời cho c&ocirc;ng  việc. Được trang bị bộ xử l&iacute; Intel<span style=\"font-size: 10px; vertical-align: baseline;\" class=\"reg\">&reg;</span>mạnh  mẽ, Windows 8, tấm nền IPS Full HD với TRILIMINOS Display cho điện  thoại, v&agrave; những t&iacute;nh năng cao cấp kh&aacute;c như ổ cứng SSD tốc độ cao v&agrave; một  t&ugrave;y chọn Pin th&ecirc;m cho m&aacute;y c&agrave;ng gi&uacute;p chiếc m&aacute;y trở n&ecirc;n vượt trội.</p>\r\n<p style=\"margin: 0px 25px 0px 0px; padding: 0px; font-size: 12px; line-height: 1.5; color: rgb(0, 0, 0); font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" class=\"rangeText\">&nbsp;</p>\r\n<p style=\"margin: 0px 25px 0px 0px; padding: 0px; font-size: 12px; line-height: 1.5; color: rgb(0, 0, 0); font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" class=\"rangeText\">&nbsp;</p>', 'VAIOPro13.jpg', 15990000, 'new', 0, 0),
(875, 5, 'VAIO® Pro 11', '<h3 style=\"margin: 15px 0px 10px; padding: 0px; font-size: 22px; font-family: Arial; font-weight: normal; color: rgb(0, 0, 0); font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" class=\"subTitle\">Trọng lượng nhẹ với hiệu suất tuyệt vời.</h3>\r\n<p style=\"margin: 0px 25px 0px 0px; padding: 0px; font-size: 12px; line-height: 1.5; color: rgb(0, 0, 0); font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" class=\"rangeText\">VAIO<span style=\"font-size: 10px; vertical-align: baseline;\" class=\"reg\">&reg;</span><span class=\"Apple-converted-space\">&nbsp;</span>Pro 11/13 l&agrave; một chiếc Ultrabook mỏng v&agrave; si&ecirc;u nhẹ với cấu tr&uacute;c carbon bền bỉ, đạt khả năng kết nối tuyệt vời, b&agrave;n ph&iacute;m thoải m&aacute;i khi g&otilde;, v&agrave; những t&iacute;nh năng kh&aacute;c gi&uacute;p chiếc m&aacute;y trở th&agrave;nh một c&ocirc;ng cụ tuyệt vời cho c&ocirc;ng việc. Được trang bị bộ xử l&iacute; Intel<span style=\"font-size: 10px; vertical-align: baseline;\" class=\"reg\">&reg;</span>mạnh mẽ, Windows 8, tấm nền IPS Full HD với TRILIMINOS Display cho điện thoại, v&agrave; những t&iacute;nh năng cao cấp kh&aacute;c như ổ cứng SSD tốc độ cao v&agrave; một t&ugrave;y chọn Pin th&ecirc;m cho m&aacute;y c&agrave;ng gi&uacute;p chiếc m&aacute;y trở n&ecirc;n vượt trội.</p>', 'VAIOPro11.jpg', 13990000, 'hienthi', 0, 0),
(914362335, 5, 'VAIO® Fit 14', '<h3 style=\"margin: 15px 0px 10px; padding: 0px; font-size: 22px; font-family: Arial; font-weight: normal; color: rgb(0, 0, 0); font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" class=\"subTitle\">Hiển thị tuyệt đẹp với mọi nội dung</h3>\r\n<p style=\"margin: 0px 25px 0px 0px; padding: 0px; font-size: 12px; line-height: 1.5; color: rgb(0, 0, 0); font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" class=\"rangeText\">VAIO<span style=\"font-size: 10px; vertical-align: baseline;\" class=\"reg\">&reg;</span><span class=\"Apple-converted-space\">&nbsp;</span>Fit 14/15 l&agrave; chiếc m&aacute;y t&iacute;nh tối ưu cho cả c&ocirc;ng việc v&agrave; giải tr&iacute; của bạn. Chất lượng h&igrave;nh ảnh r&otilde; n&eacute;t, sống động được tạo ra bằng những c&ocirc;ng nghệ n&acirc;ng cao h&igrave;nh ảnh độc đ&aacute;o của Sony tr&ecirc;n VAIO. M&agrave;n h&igrave;nh hỗ trợ cảm ứng hoạt động linh hoạt v&agrave; tiện lợi hơn. Thiết<br />\r\nkế nổi bật biểu trưng cho chất lượng v&agrave; đa năng thể hiện xuy&ecirc;n suốt qua sự tinh giản v&agrave; thanh tho&aacute;t của chiếc m&aacute;y</p>\r\n<p style=\"margin: 0px 25px 0px 0px; padding: 0px; font-size: 12px; line-height: 1.5; color: rgb(0, 0, 0); font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" class=\"rangeText\">&nbsp;</p>\r\n<h3 style=\"margin: 15px 0px 10px; padding: 0px; font-size: 22px; font-family: Arial; font-weight: normal; color: rgb(0, 0, 0); font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" class=\"subTitle\">Cảm nhận &acirc;m thanh tuyệt hơn</h3>\r\n<p style=\"margin: 0px 25px 0px 0px; padding: 0px; font-size: 12px; line-height: 1.5; color: rgb(0, 0, 0); font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" class=\"rangeText\">VAIO<span style=\"font-size: 10px; vertical-align: baseline;\" class=\"reg\">&reg;</span><span class=\"Apple-converted-space\">&nbsp;</span>Fit 14E/15E tuyệt vời như một chiếc Notebook b&ecirc;n bạn mỗi ng&agrave;y. Chế độ ClearAudio+ tự động tối ưu h&oacute;a chất lượng &acirc;m thanh v&agrave; những giai điệu m&ecirc; đắm từ cập loa đ&ocirc;i c&ocirc;ng suất lớn cho bạn n&acirc;ng cao trải nghiệm &acirc;m nhạc. VAIO<span style=\"font-size: 10px; vertical-align: baseline;\" class=\"reg\">&reg;</span><span class=\"Apple-converted-space\">&nbsp;</span>Fit 15E c&ograve;n trang bị loa si&ecirc;u trầm mạnh mẽ gi&uacute;p tăng cường tiếng Bass phong ph&uacute;. C&ocirc;ng nghệ NFC cho bạn mở rộng c&aacute;ch thưởng thức &acirc;m nhạc. Những g&igrave; bạn cần cho nhu cầu c&ocirc;ng việc v&agrave; giải tr&iacute; đều c&oacute; thể t&igrave;m thấy ở ch&iacute;nh sản phẩm n&agrave;y.</p>', 'VAIOFit14.jpg', 15990000, 'new', 0, 0),
(795, 4, 'Elitebook 840', '<p><span style=\"color: rgb(68, 68, 68); font-family: MyriadProSemibold, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">Intel Core i5 5300u (4*2.30Ghz, 3MB Smart cache, 1600Mhz FSB, 15W), 4GB DDR3 BUS 1600Mhz, 500GB SATA, DVD-RW Double Layer, 14 LED HD (1366 x 768) 16:9 Gloss, Intel HD GPU Graphics 5500, Wireless 802.11 b/g/n, NIC 1 Gbps, Card Reader 5.1, Webcam 1.3M, Microphone, Bluetooth, HDMI, 1.8 Kg, Pin 4 Cell, DOS,</span></p>', 'Elitebook840.jpg', 8500000, 'hienthi', 0, 0),
(0, 4, 'HP Spectre13 GOLD', '<p><span style=\"color: rgb(68, 68, 68); font-family: MyriadProSemibold, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">Intel® Core™ i7-7500U (2.7 GHz, up to 3.5 GHz, 4 MB cache, 2 cores) + Intel® HD Graphics 620), 8 GB LPDDR3-1866 SDRAM (onboard), 256 GB PCIe® NVM™ M.2 SSD , 13.3\" diagonal FHD IPS UWVA BrightView Corning® Gorilla® Glass WLED-backlit (1920 x 1080), Wireless 802.11 b/g/n/ac, USB TYPE C x2, Webcam 1.3M, Microphone, Bluetooth 4.1, HDMI, 1.4 Kg, Pin 4 Cell, Windows 10 pro</span></p>', 'hp spectre13.jpg', 32000000, 'new', 0, 0),
(905, 3, 'ASUS X451CA15', '<p><span style=\"color: rgb(68, 68, 68); font-family: MyriadProSemibold, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">Intel Core i3 3217U (4*1.80Ghz, 3MB Smart cache, 1600Mhz FSB, 17W), Intel 7 Series Express, 2GB DDR3 BUS 1600Mhz, 500 GB SATA, DVD-RW Double Layer, 14.0 LED HD (1366 x 768) 16:9 Gloss, Intel HD GPU Graphics 4000, Wireless 802.11 b/g/n, NIC 1Gbps, Card Reader 5.1, Webcam, Microphone, Bluetooth, HDMI, USB 3.0, 2.1Kg, Pin 4 Cell, DOS, Pin &amp; Adapter bảo h&agrave;nh 12 th&aacute;ng, C&oacute; 2 m&agrave;u : Trắng - Đen</span></p>', 'ASUSX451CA15.jpg', 6570000, 'hienthi', 0, 0),
(2147483647, 3, 'ZENBOOK UX21A', '<p style=\"margin: 0px 0px 4em; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">Thi&ecirc;́t l&acirc;̣p n&ecirc;n các ti&ecirc;u chu&acirc;̉n mới v&ecirc;̀ c&ocirc;ng ngh&ecirc;̣ và thời trang, ZENBOOK Prime chỉ dày 3mm phía đầu máy &amp; 9mm phía đu&ocirc;i máy. M&aacute;y sử dụng phương ph&aacute;p thiết kế thủ c&ocirc;ng tinh vi với th&acirc;n m&aacute;y bằng hợp kim nguy&ecirc;n khối cho trọng lượng nhẹ m&agrave; bền bỉ. Vỏ ngoài gồm họa ti&ecirc;́t những đường tròn đ&ocirc;̀ng t&acirc;m tinh quay lan tỏa th&ecirc;̉ hi&ecirc;̣n sự v&ocirc; t&acirc;̣n trong triết l&yacute; Thi&ecirc;̀n. Thiết kế tổng quan được tối ưu h&oacute;a mang lại một giao diện ho&agrave;n chỉnh kết hợp giữa thẩm mỹ &amp; tốc độ, phục vụ ho&agrave;n hảo cho cả c&ocirc;ng việc lẫn giải tr&iacute;. Đ&ecirc;̉ duy trì giao di&ecirc;̣n này, ASUS đã phát tri&ecirc;̉n bộ phụ ki&ecirc;̣n của ZENBOOK Prime thật ấn tượng và tinh t&ecirc;́.</p>', 'ZENBOOKUX21A.jpg', 11670000, 'hienthi', 0, 0),
(8148, 3, 'Asus UX301', '<p>Windows 8 Pro Hoặc những phi&ecirc;n bản c&oacute; sẵn kh&aacute;c</p>\r\n<p><br />\r\nSi&ecirc;u hiệu suất được tăng cường nhờ bộ xử l&yacute; Intel&reg; </p>\r\n<p><br />\r\nCore&trade; Intel® Core™ i7 4500U 1.8 GHz ~ 3.0 GHz</p>\r\n<p><br />\r\n13.3\" IPS Full HD (1920x1080) cảm ứng đa điểm bọc kính cường lực Gorilla Glass 3</p>\r\n<p><br />\r\nTích hợp Intel® HD Graphics 4400</p>\r\n<p><br />\r\nMỏng nhẹ đ&aacute;ng kinh ngạc v&agrave; si&ecirc;u di động</p>\r\n<p><br />\r\nTích hợp Loa và Array Microphone\r\nCông nghệ Bang & Olufsen ICEpower®\r\nSonicMaster.</p>', 'AsusUX30.jpg', 14800000, 'new', 0, 0),
(74609, 3, 'zenbook-ux305u', '<p>VIVOBOOK</p>\r\n<p>Windows 10 Hoặc những phi&ecirc;n bản c&oacute; sẵn kh&aacute;c<br />\r\nBộ vi xử l&yacute; Intel® Core™ i5 6200U 2.3Ghz turbo 2.8Ghz. Memory\r\nLPDDR3 1600 MHz SDRAM, OnBoard Memory 4 GB / 8 GB<br />\r\nM&agrave;n h&igrave;nh cảm ứng ch&iacute;nh x&aacute;c cho trải nghiệm trực quan<br />\r\nThiết kế mỏng nhẹ sang trọng v&agrave; phong c&aacute;ch<br />\r\nTận hưởng c&ocirc;ng nghệ SonicMaster cho trải nghiệm &acirc;m thanh sống động v&agrave; mạnh mẽ<br />\r\nCảm nhận sự mượt m&agrave; tự nhi&ecirc;n với b&agrave;n di chuột ASUS Smart Gesture v&agrave; chức năng khởi động lại trong v&ograve;ng 2 gi&acirc;y</p>', 'zenbook-ux305u.jpg', 16789000, 'new', 0, 0),
(1, 9, 'YOGA 2 PRO', '<p>M&agrave;n h&igrave;nh: 13,3&quot; cảm ứng 10 điểm chạm, tấm nền IPS<br />\r\nĐộ ph&acirc;n giải tối đa: 3200 x 1800 pixels<br />\r\nCPU: Intel Haswell Core i7, 1.8Ghz<br />\r\nGPU: Intel HD Graphics 4400<br />\r\nRAM: 4GB, c&ocirc;ng nghệ DDR3L 1600MHz<br />\r\nSSD: 256GB<br />\r\nPin: tối đa c&oacute; thể đạt 9 giờ<br />\r\nHệ điều h&agrave;nh: Windows 8.1 64 bit<br />\r\nLật gập xoay t&ugrave;y chỉnh tối đa đến 360 độ<br />\r\nMỏng 15,5mm, nặng 1.39kg</p>', 'YOGA2PRO.jpg', 12490000, 'new', 0, 0),
(8, 9, 'Thinkpad X1-carbon-G3', '<p>CPU: 5th Gen Intel Core i5-5300U Processor (3M Cache, 2.3GHz), Turbo Boost 2.0 (2.9GHz) , Intel vPro™ Technology<br />\r\nRAM: 8GB DDR3L<br />\r\nSSD: 256GB Sata3 Siêu nhanh<br />\r\nM&agrave;n h&igrave;nh: 14.0\" Full HD (1920x1080), anti-glare, 300 nits, 400:1 contrast ratio<br />\r\nGPU: Intel HD Graphics 5500<br />\r\nBảo h&agrave;nh: 12 th&aacute;ng</p>', 'x1-carbon.jpg', 17990000, 'new', 0, 0),
(66, 9, 'lenovo Thinkpad T460s', '<p>CPU: C6th Generation Intel® Core™ i7 2.6ghz turbo 3.4Ghz<br />\r\nRAM: 8GB DDR4 1600Mhz-Up to 20 GB DDR4<br />\r\nSSD 256 GB chạy xé gió <br />\r\nM&agrave;n h&igrave;nh: 14\" FHD (1920 x 1080) IPS, Anti-Glare <br />\r\nGPU: Intel HD Graphics 530<br />\r\nBảo h&agrave;nh: 12 th&aacute;ng</p>', 'lenovothinkpadt460s.jpg', 2100000, 'hienthi', 0, 0),
(121, 8, 'Dell Precision M4700', '<p>CPU: Core i7 3720QM 8*2.6Ghz turbo 8*3.6Ghz - dòng chip 4 nhân 8 luồng cực mạnh<br />\r\nRAM: 16GB DDR3 1600 Mhz<br />\r\nỔ Cứng: 512GB Sata3 SSD<br />\r\nM&agrave;n h&igrave;nh: 15.6&quot; HD LED<br />\r\nGPU: Quadro K2000m</p>', 'Dell-Precision-M4700.jpg', 16390000, 'new', 0, 0),
(59, 8, 'DELL Latitude-E6540', '', 'Dell Latitude-e6540.jpg', 12599000, 'hienthi', 0, 0),
(573447, 1, 'Macbook 12', '', 'macbook12.jpg', 29990000, 'new', 0, 0),
(78713611, 1, 'MACBOOK PRO 15 2016', '<p>Thiết kế đẳng cấp, unibody liền lạc nh&ocirc;m nguy&ecirc;n khối, si&ecirc;u mỏng, si&ecirc;u gọn, si&ecirc;u nhẹ.<br />\r\nChip Intel thế hệ 5, core i7 cực mạnh.<br />\r\nKết nối USB TYPE C ThunderBolt si&ecirc;u nhanh.<br />\r\nTouchpad đa điểm tuyệt vời.<br />\r\nỔ cứng dung lượng lớn,tốc độ cao 512GB SSD  tha hồ lưu trữ dữ liệu v&agrave; phim ảnh.<br />\r\nHệ điều h&agrave;nh Mac mượt, tương th&iacute;ch tối đa với phần cứng.<br />\r\nĐ&egrave;n LED nền b&agrave;n ph&iacute;m cực đẹp.<br />\r\nPin d&ugrave;ng rất l&acirc;u, thời gian d&ugrave;ng ở chế độ ti&ecirc;u chuẩn l&ecirc;n đến 8 giờ.</p>', 'mbp15touch.jpg', 57990000, 'new', 0, 0),
(92, 2, 'Travelmate P645', '<p>CPU: Core i5 - 4300U, 1.8Ghz upto 2.7Ghz<br />\r\nRAM: 8GB DDR3L 1600Mhz<br />\r\nỔ Cứng: 500GB Sata 5400rpm<br />\r\nM&agrave;n h&igrave;nh: 14.0 inch<br />\r\nGPU: Intel HD 4400</p>', 'Travelmate P645.jpg', 12090000, 'hienthi', 0, 0),
(959, 2, 'Aspire VN7 Black', '<p>CPU: 5th Gen Intel Core™ i7 5500U Processor, Intel vPro™ Technology<br />\r\nRAM: 8GB DDR3L<br />\r\nSSD: 256GB Sata3 Siêu nhanh<br />\r\nM&agrave;n h&igrave;nh: 14.0\" Full HD (1920x1080)<br />\r\nGPU: Intel HD Graphics 5500<br />\r\nBảo h&agrave;nh: 12 th&aacute;ng</p>', 'Aspire-V15-V17-Nitro-Black-Edition-2.jpg', 1390000, 'new', 0, 0),
(70, 11, 'D-LINK DWM 156', '', 'USB3GDLINKDWM156.jpg', 590000, 'new', 0, 0),
(21, 11, 'Fast Connect MF190', '', 'FastConnectMF190.jpg', 690000, 'new', 0, 0),
(41, 11, 'D-COM 3G', '', 'DCOM3G.jpg', 530000, 'new', 0, 0),
(3, 10, 'KINGSTON 32G', '', 'KINGSTON32G.jpg', 550000, 'hienthi', 0, 0),
(6, 10, 'PNY LOVELY 8G', '', 'PNYLOVELY8G.jpg', 299000, 'new', 0, 0),
(77, 15, 'MICROLAB M119/2.1', '', 'MICROLABM1192.1.jpg', 789000, 'hienthi', 0, 0),
(4297, 15, 'SOUNDMAX A850', '<p><span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">- Hệ thống loa: 2 + 1 loa si&ecirc;u trầm<span class=\"Apple-converted-space\">&nbsp;</span></span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" />\r\n<span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">- Chống nhiễm từ<span class=\"Apple-converted-space\">&nbsp;</span></span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" />\r\n<span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">- Tương th&iacute;ch: Laptop,PC,VCD<span class=\"Apple-converted-space\">&nbsp;</span></span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" />\r\n<span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">- Nguồn: 220-240V. Tổng c&ocirc;ng suất 25W<span class=\"Apple-converted-space\">&nbsp;</span></span><br style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" />\r\n<span style=\"color: rgb(102, 102, 102); font-family: Arial, Verdana, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;\">- Điều chỉnh &acirc;m thanh Volume, Bass, Treble<span class=\"Apple-converted-space\"> <br />\r\n</span></span></p>', 'SOUNDMAXA850.jpg', 640000, 'new', 0, 0),
(30, 13, 'LOGITECH M187', '', 'LOGITECHM187.jpg', 298000, 'hienthi', 0, 0),
(98, 13, 'Vtrack 800', '', 'Vtrack800.jpg', 235000, 'hienthi', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `hoten` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` int(20) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `hieuluc` int(10) NOT NULL,
  `capquyen` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`hoten`, `diachi`, `email`, `dienthoai`, `user`, `pass`, `hieuluc`, `capquyen`) VALUES
('Long 56TH2', 'Hà Nội', 'phunglong30101996@gmail.com', 1657990372, 'Admin', '81dc9bdb52d04dc20036dbd8313ed055', 1, 1),
('long', 'Hà Nội', 'phunglong30101996@gmail.com', 971789000, 'longphung', '835718cd98dd945614f938be046138aa', 1, 3),
('Thuan ', 'Nam Dinh', 'thuanvd96@gmail.com', 962009563, 'Thuandz', 'f448fe4f8c3078b023fd85913d3e6d5f', 1, 3),
('Pham Tuyet Hang', 'Nam Dinh', 'hangptt42@wru.vn', 963207022, 'hangptt', '44a0812d63f224046e7d37bc8ec67610', 1, 3),
('Phùng Đức Long', '559 Kim Ngưu', 'longpd42@wru.vn', 986266121, 'windgod1996', 'c803868d37811990d66955d6bc769ebe', 1, 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id_giohang`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id_hoadon`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id_lienhe`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id_loai`);

--
-- Chỉ mục cho bảng `nhomsanpham`
--
ALTER TABLE `nhomsanpham`
  ADD PRIMARY KEY (`id_nhom`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id_giohang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id_hoadon` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id_lienhe` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483647;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
