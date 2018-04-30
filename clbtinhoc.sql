-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 30, 2018 lúc 05:00 PM
-- Phiên bản máy phục vụ: 10.1.26-MariaDB
-- Phiên bản PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `clbtinhoc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `start_at` date NOT NULL,
  `end_at` date NOT NULL,
  `fee` float DEFAULT '0',
  `limited` int(11) NOT NULL,
  `joined` int(11) DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `activities`
--

INSERT INTO `activities` (`id`, `title`, `content`, `start_at`, `end_at`, `fee`, `limited`, `joined`, `status`) VALUES
(2, 'Phát cháo tình nguyện tại bệnh viên Ung bứu', '<p>Hoạt động 1</p>\r\n', '2018-04-23', '2018-04-27', 0, 100, 0, 1),
(3, 'Lập trình hướng đối lượng với C ++', '<p style=\"text-align:justify\">&emsp;Lập tr&igrave;nh Hướng đối tượng l&agrave; một trong những phương ph&aacute;p lập tr&igrave;nh m&agrave; mọi lập tr&igrave;nh vi&ecirc;n đều phải biết v&agrave; sử dụng th&agrave;nh thạo.Kh&oacute;a học n&agrave;y sẽ hướng dẫn bạn tất cả c&aacute;c kh&aacute;i niệm từ cơ bản đến về lập tr&igrave;nh hướng đối tượng với C++. Mỗi b&agrave;i học được tr&igrave;nh b&agrave;y với l&yacute; thuyết v&agrave; v&iacute; dụ minh họa dễ hiểu.Kh&oacute;a học th&iacute;ch hợp với những bạn muốn hiểu r&otilde; về phương ph&aacute;p lập tr&igrave;nh hướng đối tượng.V&igrave; lập tr&igrave;nh hướng đối tượng rất quan trong n&ecirc;n CLB quyết định mở kh&oacute;a học để hướng dẫn cơ bản v&agrave;&nbsp;tận t&igrave;nh nhất gi&uacute;p cho c&aacute;c bạn hiểu r&otilde; được bản chất của hướng đối tượng từ đ&oacute; gi&uacute;p c&aacute;c bạn hiểu được b&agrave;i tập tr&ecirc;n lớp hơn cũng như nắm được nhất định căn bản về hướng đối tượng.</p>\r\n', '2018-04-16', '2018-04-19', 200000, 20, 0, 0),
(4, 'Lập trình Java cơ bản', '<p>Lập tr&igrave;nh Java cơ bản</p>\r\n', '2018-04-24', '2018-04-25', 150000, 20, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attendance`
--

CREATE TABLE `attendance` (
  `id` bigint(20) NOT NULL,
  `id_activity` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `times` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attendance`
--

INSERT INTO `attendance` (`id`, `id_activity`, `created_at`, `times`) VALUES
(1, 2, '2018-04-20 15:56:17', 1),
(2, 3, '2018-04-30 18:49:40', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attendance_detail`
--

CREATE TABLE `attendance_detail` (
  `id` bigint(20) DEFAULT NULL,
  `id_user` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `name_cat` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name_cat`) VALUES
(1, 'Thông báo'),
(5, 'Hoạt động'),
(6, 'Tin tức nổi bật'),
(7, 'Tin tức tuyển dụng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) NOT NULL,
  `id_user` bigint(20) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` bigint(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `id_cat` bigint(11) DEFAULT NULL,
  `write_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `created_at`, `updated_at`, `view`, `id_cat`, `write_by`) VALUES
(7, 'Lập trình hướng đối tượng với C++', '<p>Lập tr&igrave;nh Hướng đối tượng l&agrave; một trong những phương ph&aacute;p lập tr&igrave;nh m&agrave; mọi lập tr&igrave;nh vi&ecirc;n đều phải biết v&agrave; sử dụng th&agrave;nh thạo.Kh&oacute;a học n&agrave;y sẽ hướng dẫn bạn tất cả c&aacute;c kh&aacute;i niệm từ cơ bản đến về lập tr&igrave;nh hướng đối tượng với C++. Mỗi b&agrave;i học được tr&igrave;nh b&agrave;y với l&yacute; thuyết v&agrave; v&iacute; dụ minh họa dễ hiểu.Kh&oacute;a học th&iacute;ch hợp với những bạn muốn hiểu r&otilde; về phương ph&aacute;p lập tr&igrave;nh hướng đối tượng.V&igrave; lập tr&igrave;nh hướng đối tượng rất quan trong n&ecirc;n CLB quyết định mở kh&oacute;a học để hướng dẫn cơ bản v&agrave;&nbsp;tận t&igrave;nh nhất gi&uacute;p cho c&aacute;c bạn hiểu r&otilde; được bản chất của hướng đối tượng từ đ&oacute; gi&uacute;p c&aacute;c bạn hiểu được b&agrave;i tập tr&ecirc;n lớp hơn cũng như nắm được nhất định căn bản về hướng đối tượng.<br />\r\n<img alt=\"\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f51/1/16/1f449.png\" style=\"height:16px; width:16px\" />Thời gian đăng k&iacute; : Từ 16/4 ==&gt; 19/4/2018<img alt=\"\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fd0/1/16/1f448.png\" style=\"height:16px; width:16px\" /><br />\r\nLịch học: Thứ 3 v&agrave; thứ 6:17h30=&gt;19h30</p>\r\n\r\n<p>DO Đ&Acirc;Y L&Agrave; KH&Oacute;A HỌC CLB TIN HỌC TỔ CHỨC N&Ecirc;N NHẦM ĐỂ CLB C&Oacute; THỂ QUẢN L&Yacute; TỐT HƠN DO Đ&Oacute; MỖI BẠN KHI ĐĂNG K&Iacute; KH&Oacute;A HỌC N&Agrave;Y SẼ Đ&Oacute;NG 200K(COI NHƯ TIỀN CỌC) .NẾU CUỐI KH&Oacute;A C&Aacute;C BẠN KH&Ocirc;NG NGHỈ BUỔI N&Agrave;O TH&Igrave; C&Aacute;C BẠN SẼ ĐƯỢC HO&Agrave;N TIỀN LẠI SỐ TIỀN BAN ĐẦU BẠN Đ&Oacute;NG</p>\r\n', '2018-04-23 02:30:48', '2018-04-23 03:03:43', 7, 5, 2),
(8, 'Codegym Đà Nẵng tuyển dụng làm việc tại Mỹ và Nhật', '<p>Codegym Đ&agrave; Nẵng ra đời nhằm g&oacute;p phần giải quyết vấn đề thiếu hụt nh&acirc;n sự nh&acirc;n lực ngh&agrave;nh phần mềm tại Th&agrave;nh Phố Đ&agrave; Nẵng. Cung cấp cho c&aacute;c bạn sinh vi&ecirc;n c&aacute;c kỹ thuật lập tr&igrave;nh cần thiết để sẳn s&agrave;ng l&agrave;m việc tại c&aacute;c c&ocirc;ng ty Mỹ v&agrave; Nhật.<br />\r\nM&ocirc;<br />\r\n- M&ocirc; h&igrave;nh đ&agrave;o tạo ho&agrave;n to&agrave;n kh&aacute;c biệt v&agrave; hiện đại so với c&aacute;c trung t&acirc;m hiện nay<br />\r\n- Cam kết đầu ra<br />\r\n- Hợp t&aacute;c v&agrave; đồng h&agrave;nh với doanh nghiệp tr&ecirc;n Th&agrave;nh Phố Đ&agrave; Nẵng<br />\r\n- Được đ&agrave;o tạo c&ocirc;ng nghệ mới bắt kịp cuộc c&aacute;ch mạng thứ 4.0<br />\r\n- Những kỹ năng mềm, tư duy về nghề nghiệp v&agrave; được định - hướng về tương lai sẽ trở th&agrave;nh một người lập tr&igrave;nh như thế n&agrave;o<br />\r\nKhả năng cập nhật c&ocirc;ng nghệ tức th&igrave; ngay khi đi học v&agrave; đi l&agrave;m<br />\r\nC&aacute;c bạn c&oacute; thể t&igrave;m hiểu th&ecirc;m th&ocirc;ng tin tại<br />\r\nWebsite:<a href=\"https://l.facebook.com/l.php?u=http%3A%2F%2Fcodegymdanang.com%2F&amp;h=ATPNMatrX-nX6q8JFHOzicSc9iYjtr74in4znjjv5j-nO4U5izetOOLWDx7HZADq53pGHPTIxspztdnTNoztAiO3OXz5c_uLPgT1eGXYS6kvpjImDNBLU4BGeBAEXh-_GETtOm8\" rel=\"noopener nofollow\" target=\"_blank\">http://codegymdanang.com/</a><br />\r\nGroup fac:<a href=\"https://www.facebook.com/groups/codegymdanang/?ref=gs&amp;fref=gs&amp;dti=1476588875946000&amp;hc_location=group\">https://www.facebook.com/groups/codegymdanang/?ref=group_browse_new</a><br />\r\nFanpace:&nbsp;<a href=\"https://www.facebook.com/codegymdanang/\">https://www.facebook.com/codegymdanang/</a></p>\r\n', '2018-04-23 02:33:54', '2018-04-23 02:33:54', 0, 7, 2),
(10, 'Thông báo tuyển trợ giảng Trung tâm tin học Bách khoa', '<p>Hiện nay Trung t&acirc;m tin học B&aacute;ch khoa cần tuyển 02 trợ giảng<br />\r\nY&ecirc;u cầu: Nữ&nbsp;<br />\r\n- Sinh vi&ecirc;n CNTT năm cuối<br />\r\n- C&oacute; &yacute; tự gi&aacute;c, c&oacute; tinh thần tinh thần tr&aacute;ch nhiệm với c&ocirc;ng việc<br />\r\n- Ngoại h&igrave;nh ưa nh&igrave;n, giọng n&oacute;i chuẩn<br />\r\n- Gắn b&oacute; l&acirc;u d&agrave;i<br />\r\n- Ưu ti&ecirc;n bạn giao tiếp tốt, đ&atilde; tham gia c&ocirc;ng t&aacute;c đo&agrave;n, đội<br />\r\n- C&ocirc;ng việc sẽ trao đổi cụ thể trong buổi PV<br />\r\nQuyền lợi:&nbsp;<br />\r\n- Được đ&agrave;o tạo chuy&ecirc;n m&ocirc;n 1 th&aacute;ng<br />\r\n- Lương thỏa thuận<br />\r\n- Trở th&agrave;nh giảng vi&ecirc;n cho trung t&acirc;m<br />\r\nHồ sơ gồm:<br />\r\n- L&yacute; lịch tr&iacute;ch ngang<br />\r\n- T&oacute;m tắt qu&aacute; tr&igrave;nh học tập<br />\r\nGửi CV qua email: vanhuynhcit@gmail.com&nbsp;<br />\r\nPhỏng vấn đạt mới nhận hs file cứng.<br />\r\nĐịa chỉ: Trung t&acirc;m tin học B&aacute;ch khoa, 54 Nguyễn Lương Bằng, Li&ecirc;n Chiểu, Đ&agrave; Nẵng<br />\r\nĐiện thoại: 0905.446.724</p>\r\n', '2018-04-23 02:43:08', '2018-04-23 02:43:08', 6, 1, 2),
(11, 'Phát cháo tình nguyện tại bệnh viên Ung bứu', '<p>V&agrave;o ng&agrave;y 25/4/2018, ch&uacute;ng ta sẽ mở hoạt động ph&aacute;t ch&aacute;o t&igrave;nh nguyện với mục đ&iacute;ch hỗ trợ c&aacute;c gia đ&igrave;nh c&oacute; người th&acirc;n đang điều trị tại bệnh vi&ecirc;n Ung bứu. Dự kiến cung cấp 300 suất ch&aacute;o. V&igrave; số lượng suất ch&aacute;o nhiều n&ecirc;n mong c&aacute;c th&agrave;nh vi&ecirc;n tham gia nhiệt t&igrave;nh.v.v...</p>\r\n', '2018-04-23 02:49:27', '2018-04-23 02:49:27', 4, 5, 2),
(12, 'Đẩy mạnh phong trào “Sinh viên tình nguyện”', '<p>Thực hiện phong tr&agrave;o &quot;Sinh vi&ecirc;n t&igrave;nh nguyện v&igrave; cộng đồng&quot;, Đo&agrave;n trường đ&atilde; vận động hơn 1.000 lượt ĐVTN tham gia chương tr&igrave;nh &quot;Tiếp sức m&ugrave;a thi&quot;; quy&ecirc;n g&oacute;p 51,6 triệu đồng để hỗ trợ SV c&oacute; ho&agrave;n cảnh kh&oacute; khăn; ủng hộ 23,2 triệu đồng cho đồng b&agrave;o miền Trung bị hậu quả của thi&ecirc;n tai&hellip;</p>\r\n', '2018-04-23 03:05:11', '2018-04-23 03:05:11', 1, 6, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `description`) VALUES
(1, 'MEMBER', 'Thành viên'),
(2, 'ACCESS_ADMIN', 'Truy cập trang quản lý'),
(3, 'ADMIN', 'Tất cả quyền'),
(4, 'RULE_MANAGER', 'Quản lý nội quy'),
(5, 'CAT_MANAGER', 'Quản lý thể loại tin'),
(6, 'NEWS_MANAGER', 'Quản lý tin tức'),
(7, 'ROLES_MANAGER', 'Quản lý chức vụ'),
(8, 'ACTIVITY_MANAGER', 'Quản lý hoạt động'),
(9, 'USER_MANAGER', 'Quản lý tài khoản'),
(10, 'ATTENDANCE', 'Điểm danh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `role`) VALUES
(1, 'Thành viên'),
(2, 'Chủ nhiệm'),
(3, 'Phó chủ nhiệm'),
(4, 'Thủ quỹ'),
(5, 'Ủy viên'),
(6, 'Cố vấn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` bigint(20) NOT NULL,
  `id_role` bigint(20) NOT NULL,
  `id_permission` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `id_role`, `id_permission`) VALUES
(5, 2, 3),
(6, 1, 1),
(7, 3, 2),
(8, 3, 4),
(9, 3, 5),
(10, 3, 6),
(11, 3, 7),
(12, 3, 8),
(13, 3, 9),
(16, 3, 10),
(17, 4, 2),
(18, 4, 4),
(19, 5, 2),
(20, 5, 5),
(21, 5, 6),
(22, 5, 8),
(23, 6, 2),
(24, 6, 4),
(25, 6, 5),
(26, 6, 6),
(27, 6, 7),
(28, 6, 8),
(29, 6, 9),
(30, 6, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rules`
--

CREATE TABLE `rules` (
  `id` bigint(20) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `write_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rules`
--

INSERT INTO `rules` (`id`, `content`, `write_by`) VALUES
(6, '<p style=\"text-align:justify\"><span style=\"font-size:11.5px\"><span style=\"color:#000000\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;times new roman&quot;,times\">&nbsp;Khi tham gia CLB, mỗi th&agrave;nh vi&ecirc;n đều phải tu&acirc;n thủ c&aacute;c quy định sau:</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:18pt; text-align:justify\"><span style=\"font-size:11.5px\"><span style=\"color:#000000\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;times new roman&quot;,times\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mỗi học kỳ CLB sinh hoạt &iacute;t nhất 4 lần.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:18pt; text-align:justify\"><span style=\"font-size:11.5px\"><span style=\"color:#000000\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;times new roman&quot;,times\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&aacute;c t&agrave;i liệu chia sẻ, hoặc những trao đổi trong c&aacute;c buổi sinh hoạt, hội thảo về lĩnh vực Tin học, học tập nghi&ecirc;n cứu&hellip;. đều phải đ&uacute;ng nội dung v&agrave; mục ti&ecirc;u đ&atilde; đề ra v&agrave; phải được l&atilde;nh đạo CLB duyệt trước.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:18pt; text-align:justify\"><span style=\"font-size:11.5px\"><span style=\"color:#000000\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;times new roman&quot;,times\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mọi thắc mắc c&oacute; li&ecirc;n quan đến CLB đều được giải đ&aacute;p v&agrave; trao đổi trực tiếp trong c&aacute;c buổi sinh hoạt.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:18pt; text-align:justify\"><span style=\"font-size:11.5px\"><span style=\"color:#000000\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;times new roman&quot;,times\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nghi&ecirc;m cấm th&aacute;i độ đả k&iacute;ch, c&aacute;c h&agrave;nh vi lập b&egrave; ph&aacute;i g&acirc;y chia rẽ, mất đo&agrave;n kết trong CLB. Tất cả c&aacute;c &yacute; kiến đ&oacute;ng g&oacute;p phải dựa tr&ecirc;n tinh thần đo&agrave;n kết v&agrave; x&acirc;y dựng một tập thể vững mạnh, một trong CLB gương mẫu s&aacute;ng tạo.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:18pt; text-align:justify\"><span style=\"font-size:11.5px\"><span style=\"color:#000000\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;times new roman&quot;,times\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mọi hoạt động phải tu&acirc;n theo quy định của Khoa, Trường v&agrave; của ph&aacute;p luật Nh&agrave; nước Việt Nam.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:18pt; text-align:justify\"><span style=\"font-size:11.5px\"><span style=\"color:#000000\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;times new roman&quot;,times\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Khai trừ khỏi CLB Tin học: Những th&agrave;nh vi&ecirc;n vi phạm một trong c&aacute;c điểu sau sẽ bị khai trừ khỏi CLB:</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:54pt; text-align:justify\"><span style=\"font-size:11.5px\"><span style=\"color:#000000\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;times new roman&quot;,times\">&nbsp; &nbsp; Vi phạm c&aacute;c quy định tr&ecirc;n.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:54pt; text-align:justify\"><span style=\"font-size:11.5px\"><span style=\"color:#000000\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;times new roman&quot;,times\">&nbsp; &nbsp; Đi trễ hoặc vắng (kh&ocirc;ng c&oacute; l&yacute; do ch&iacute;nh đ&aacute;ng) hơn &frac12; thời gian sinh hoạt của CLB.</span></span></span></span></span></span></p>\r\n', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `klass` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `id_role` bigint(20) DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `klass`, `phone`, `username`, `password`, `created_at`, `enabled`, `id_role`, `email`) VALUES
(2, 'Dũng', 'Nguyễn Quang', '14CNTT', '0935634876', 'nguyenquangdung', 'f506ac7dcf7d89f4d3840fdb0924b5d2', '2018-04-22 15:06:00', 1, 2, 'nguyenquangdung5560@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_activities`
--

CREATE TABLE `user_activities` (
  `id` bigint(20) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `id_activity` bigint(20) NOT NULL,
  `joined_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_activity` (`id_activity`);

--
-- Chỉ mục cho bảng `attendance_detail`
--
ALTER TABLE `attendance_detail`
  ADD KEY `attendance_detail_ibfk_1` (`id_user`),
  ADD KEY `attendance_detail_ibfk_2` (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_ibfk_1` (`id_user`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_ibfk_2` (`id_cat`),
  ADD KEY `news_ibfk_1` (`write_by`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_permissions_ibfk_1` (`id_role`),
  ADD KEY `role_permissions_ibfk_2` (`id_permission`);

--
-- Chỉ mục cho bảng `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rules_ibfk_1` (`write_by`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`username`),
  ADD KEY `id_role` (`id_role`);

--
-- Chỉ mục cho bảng `user_activities`
--
ALTER TABLE `user_activities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_activity` (`id_user`,`id_activity`),
  ADD KEY `id_activity` (`id_activity`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `rules`
--
ALTER TABLE `rules`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `user_activities`
--
ALTER TABLE `user_activities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`id_activity`) REFERENCES `activities` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `attendance_detail`
--
ALTER TABLE `attendance_detail`
  ADD CONSTRAINT `attendance_detail_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_detail_ibfk_2` FOREIGN KEY (`id`) REFERENCES `attendance` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`write_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `news_ibfk_2` FOREIGN KEY (`id_cat`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_permissions_ibfk_2` FOREIGN KEY (`id_permission`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `rules`
--
ALTER TABLE `rules`
  ADD CONSTRAINT `rules_ibfk_1` FOREIGN KEY (`write_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `user_activities`
--
ALTER TABLE `user_activities`
  ADD CONSTRAINT `user_activities_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_activities_ibfk_2` FOREIGN KEY (`id_activity`) REFERENCES `activities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
