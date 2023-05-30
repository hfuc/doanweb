-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 30, 2023 lúc 03:32 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ban_mu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `level`) VALUES
(1, 'võ văn thắng', 'thangpro9669@gmail.com', '123', 0),
(2, 'Hoàng Văn Phúc', 'hvp@gmail.com', '123', 0),
(3, 'nguyễn tiến anh', 'nta@gmail.com', '123', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int(11) NOT NULL,
  `ho_ten` varchar(150) NOT NULL,
  `dia_chi` varchar(250) NOT NULL,
  `email` varchar(150) NOT NULL,
  `so_dien_thoai` char(20) NOT NULL,
  `noi_dung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name_receiver` varchar(150) NOT NULL,
  `phone_receiver` char(20) NOT NULL,
  `address_receiver` text NOT NULL,
  `total_price` float NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `cart_payment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `name_receiver`, `phone_receiver`, `address_receiver`, `total_price`, `status`, `created_at`, `cart_payment`) VALUES
(22, 10, 'ad', '0971366275', 'ha noi', 7960000, 0, '2023-05-23 15:46:40', 'Thanh toán khi nhận hàng'),
(23, 11, 'd', '', 'ff', 4080000, 0, '2023-05-23 15:57:31', 'Thanh toán khi nhận hàng'),
(24, 11, 'thangdzai', '', 'ff', 1990000, 0, '2023-05-23 16:03:02', 'Thanh toán khi nhận hàng'),
(25, 11, 'võ văn thắng', '', 'ff', 5970000, 0, '2023-05-25 07:40:20', 'Thanh toán khi nhận hàng'),
(26, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 1400000, 0, '2023-05-25 11:30:21', 'Thanh toán khi nhận hàng'),
(27, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 13870000, 0, '2023-05-25 11:33:27', 'Thanh toán khi nhận hàng'),
(28, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 980000, 0, '2023-05-25 11:34:39', 'Thanh toán khi nhận hàng'),
(29, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 3500000, 0, '2023-05-25 17:46:36', 'Thanh toán khi nhận hàng'),
(30, 12, 'võ văn thắng', '0876522288', 'Lạng Sơn', 0, 0, '2023-05-25 18:14:13', 'Thanh toán khi nhận hàng'),
(31, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 0, 0, '2023-05-25 18:17:08', 'Thanh toán khi nhận hàng'),
(33, 12, 'võ văn thắng', '0876522288', 'Lạng Sơn', 1400000, 0, '2023-05-26 04:28:57', 'Thanh toán vnpay'),
(34, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 0, 0, '2023-05-27 15:54:35', 'Thanh toán khi nhận hàng'),
(35, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 3000000, 0, '2023-05-27 16:34:11', 'Thanh toán vnpay'),
(36, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 4200000, 0, '2023-05-27 16:56:41', 'Thanh toán vnpay'),
(37, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 0, 0, '2023-05-27 16:56:47', 'Thanh toán khi nhận hàng'),
(38, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 3000000, 0, '2023-05-27 16:58:38', 'Thanh toán khi nhận hàng'),
(39, 12, 'fuc10ngiu', '0876522288', 'Lạng Sơn', 0, 0, '2023-05-27 17:02:22', 'Thanh toán khi nhận hàng'),
(40, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 0, 0, '2023-05-27 17:06:43', 'Thanh toán khi nhận hàng'),
(41, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 0, 0, '2023-05-27 17:07:21', 'Thanh toán khi nhận hàng'),
(42, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 0, 0, '2023-05-27 17:07:51', 'Thanh toán khi nhận hàng'),
(43, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 0, 0, '2023-05-27 17:08:51', 'Thanh toán khi nhận hàng'),
(44, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 0, 0, '2023-05-27 17:09:22', 'Thanh toán khi nhận hàng'),
(45, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 1700000, 0, '2023-05-27 17:11:29', 'Thanh toán vnpay'),
(46, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 1700000, 0, '2023-05-27 17:11:53', 'Thanh toán vnpay'),
(47, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 1200000, 0, '2023-05-27 17:19:43', 'Thanh toán vnpay'),
(48, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 1900000, 0, '2023-05-27 17:23:09', 'Thanh toán vnpay'),
(49, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 0, 0, '2023-05-27 17:26:43', 'Thanh toán khi nhận hàng'),
(50, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 3700000, 0, '2023-05-27 17:28:03', 'Thanh toán vnpay'),
(51, 12, 'Hoàng Phúc', '0876522288', 'Lạng Sơn', 1200000, 0, '2023-05-28 00:38:04', 'Thanh toán vnpay'),
(52, 14, 'Hoàng Phúc', '087653', 'lang son', 0, 0, '2023-05-28 06:39:00', 'Thanh toán khi nhận hàng'),
(53, 14, 'Hoàng Phúc', '087653', 'lang son', 1200000, 0, '2023-05-28 06:39:37', 'Thanh toán vnpay'),
(54, 14, 'Hoàng Phúc', '087653', 'lang son', 0, 0, '2023-05-28 06:44:59', 'Thanh toán khi nhận hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_product`
--

CREATE TABLE `order_product` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_product`
--

INSERT INTO `order_product` (`order_id`, `product_id`, `quantity`) VALUES
(22, 2, 4),
(23, 3, 1),
(23, 5, 1),
(24, 2, 1),
(25, 2, 3),
(26, 135, 1),
(26, 146, 1),
(27, 2, 1),
(27, 3, 1),
(27, 5, 1),
(27, 148, 1),
(28, 3, 1),
(29, 5, 1),
(29, 131, 1),
(30, 7, 2),
(31, 7, 1),
(31, 149, 1),
(33, 135, 1),
(33, 140, 1),
(34, 7, 1),
(35, 5, 1),
(36, 5, 1),
(36, 7, 1),
(37, 5, 1),
(37, 7, 1),
(38, 5, 1),
(39, 2, 1),
(39, 147, 1),
(40, 7, 1),
(40, 146, 1),
(41, 5, 1),
(42, 7, 1),
(43, 133, 1),
(44, 140, 1),
(45, 7, 1),
(45, 131, 1),
(46, 7, 1),
(46, 131, 1),
(47, 7, 1),
(48, 7, 1),
(48, 144, 1),
(49, 5, 1),
(49, 147, 1),
(50, 133, 1),
(50, 139, 1),
(51, 7, 1),
(52, 5, 2),
(52, 7, 1),
(53, 7, 1),
(54, 133, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `id` int(11) NOT NULL,
  `ten_san` varchar(250) NOT NULL,
  `mo_ta` text NOT NULL,
  `anh` varchar(250) NOT NULL,
  `gia` float NOT NULL,
  `khuyen_mai` float NOT NULL,
  `danh_muc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `ten_san`, `mo_ta`, `anh`, `gia`, `khuyen_mai`, `danh_muc`) VALUES
(2, 'Nón MLB Bic Classic Monogram Bucket Hat New York Yankees Black', 'Chính sách đổi hàng:\r\n\r\nĐối tượng và thời hạn đổi hàng\r\nÁp dụng cho khách hàng thanh toán đầy đủ khi mua trực tiếp và mua online tại website: https://mlb-korea.vn/ . \r\nPhạm vi sản phẩm được đổi: Sản phẩm đúng giá trị và sản phẩm giảm giá không quá 30%.\r\nThời hạn đổi hàng: Trong vòng 14 ngày kể từ ngày khách hàng nhận được sản phẩm.\r\nCác mặt hàng không áp dụng đổi hàng: Vớ, khăn, Trang sức, shoescare, khẩu trang.\r\nTrường hợp đổi hàng\r\nPhát sinh lỗi từ phía cửa hàng, nhà sản xuất, lỗi sản phẩm,... (MLB Việt Nam sẽ thanh toán chi phí vận chuyển đến khách hàng).\r\nPhát sinh từ nhu cầu của khách hàng. (Khách hàng sẽ thanh toán chi phí vận chuyển hàng hóa tới MLB Việt Nam và đổi về)\r\nNội dung chính sách đổi hàng\r\nSản phẩm đạt yêu cầu đổi phải chưa qua sử dụng cũng như chưa giặt/ ủi/ là, không có mùi lạ, nguyên nhãn mác, chưa cào mã (nếu có), hộp/ bao bì sản phẩm đi kèm (nếu có).\r\nSản phẩm không bị lỗi do quá trình lưu giữ, vận chuyển của người sử dụng.\r\nKhách hàng có chứng từ mua hàng đầy đủ tại MLB Việt Nam\r\nMỗi sản phẩm chỉ được đổi 01 lần\r\nVới trường hợp khách hàng đã đổi hàng 01 lần nhưng sản phẩm đổi có phát sinh vấn đề về lỗi sản phẩm, lỗi nhà sản xuất, sai hình ảnh,... nếu như khách hàng không còn nhu cầu đổi hàng thì MLB Việt Nam sẽ tiến hành hoàn tiền theo quy trình của Công ty.\r\n\r\nGiá trị sản phẩm đổi phải bằng giá hoặc cao hơn giá thanh toán sản phẩm phát sinh nhu cầu đổi (Không bao gồm phí giao hàng), phần chênh lệch sau khi đổi sang sản phẩm có giá trị thấp hơn, MLB Việt Nam sẽ không hoàn lại.', 'https://bizweb.dktcdn.net/100/446/974/products/non-mlb-bic-classic-monogram-bucket-hat-new-york-yankees-black-3ahtm013n-50bks-1.jpg?v=1683135068500', 1990000, 1500000, 'MLB'),
(3, 'Nón MLB Diamond Monogram Structured Ball Cap Boston Red Sox D.Beige', '1549000', 'https://bizweb.dktcdn.net/100/446/974/products/non-mlb-diamond-monogram-structured-ball-cap-boston-red-sox-d-beige-3acpm032n-43bgd-1.jpg?v=1683045474807', 980000, 980000, 'MLB'),
(4, 'Mũ Versace Jeans Couture Blue Hat In Barocco Print Màu Xanh Vàng', 'Mũ Versace Jeans Couture Abbigliamento Uomo Phối Màu thiết kế đẹp mắt, kiểu dáng thời trang. Mũ được làm từ chất liệu Polyester thoáng mát mang lại cảm giác thoải mái khi sử dụng.\r\n\r\nForm mũ chuẩn đẹp, các đường may rất chắc chắn và tinh tế đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.\r\n\r\n– Thiết kế kiểu dáng thể thao năng động, hiện đại.\r\n\r\n– Thoáng khí, không phai màu, dễ giặt và dễ bảo quản.\r\n\r\n– Sản phẩm được làm từ chất liệu cao cấp, bền đẹp trong suốt quá trình sử dụng.', 'https://cdn.vuahanghieu.com/unsafe/0x500/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2023/02/mu-versace-jeans-couture-blue-hat-in-barocco-print-mau-xanh-vang-63ea063080878-13022023164312.jpg', 2450000, 2450000, 'Versace'),
(5, 'Mũ Versace Jeans Couture Abbigliamento Uomo Phối Màu', 'Mũ Versace Jeans Couture Abbigliamento Uomo Phối Màu thiết kế đẹp mắt, kiểu dáng thời trang. Mũ được làm từ chất liệu Polyester thoáng mát mang lại cảm giác thoải mái khi sử dụng.\r\n\r\nForm mũ chuẩn đẹp, các đường may rất chắc chắn và tinh tế đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.\r\n\r\n– Thiết kế kiểu dáng thể thao năng động, hiện đại.\r\n\r\n– Thoáng khí, không phai màu, dễ giặt và dễ bảo quản.\r\n\r\n– Sản phẩm được làm từ chất liệu cao cấp, bền đẹp trong suốt quá trình sử dụng.', 'https://guvip.vn/wp-content/uploads/2020/07/mu-versace-jeans-couture-abbigliamento-uomo-phoi-mau_5f194d3a2216d.jpeg', 3100000, 3000000, 'Versace'),
(6, 'Mũ Versace Jean Couture Logo Cap Màu Trắng', 'Mũ Versace Jean Couture Logo Cap Màu Trắng thiết kế đẹp mắt, kiểu dáng thời trang. Mũ được làm từ chất liệu cotton thoáng mát mang lại cảm giác thoải mái khi sử dụng.\r\n\r\nForm mũ chuẩn đẹp, các đường may rất chắc chắn và tinh tế đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.\r\n\r\n– Thiết kế kiểu dáng thể thao năng động, hiện đại.\r\n\r\n– Thoáng khí, không phai màu, dễ giặt và dễ bảo quản.\r\n\r\n– Sản phẩm được làm từ chất liệu cao cấp, bền đẹp trong suốt quá trình sử dụng.', 'https://guvip.vn/wp-content/uploads/2020/07/mu-versace-jean-couture-logo-cap-mau-trang_5f194b4ee5a9c.jpeg', 2750000, 2750000, 'Versace'),
(7, 'Nón MLB Diamond Monogram Structured Ball Cap Boston Red Sox D.Beige', 'Chính sách trả hàng:\r\n\r\nĐối tượng và thời hạn trả hàng\r\nÁp dụng cho khách hàng thanh toán đầy đủ khi mua trực tiếp và mua online tại website: https://mlb-korea.vn/ . \r\nPhạm vi sản phẩm được trả: Sản phẩm đúng giá trị.\r\nThời hạn trả hàng: Trong vòng 03 ngày kể từ ngày khách hàng nhận được sản phẩm.\r\nCác mặt hàng không áp dụng trả hàng: Vớ, khăn, Trang sức, shoescare, khẩu trang.\r\nTrường hợp trả hàng\r\nPhát sinh lỗi từ phía cửa hàng, nhà sản xuất, lỗi sản phẩm,... (MLB Việt Nam sẽ thanh toán chi phí vận chuyển trả).\r\nNhu cầu trả từ phía khách hàng với những lý do: nhầm size/không vừa size (KH sẽ thanh toán mọi chi phí vận chuyển)\r\nNội dung chính sách trả hàng\r\nSản phẩm đạt yêu cầu trả phải chưa qua sử dụng cũng như chưa giặt/ ủi/ là, không có mùi lạ, nguyên nhãn mác, chưa cào mã (nếu có), hộp/ bao bì sản phẩm đi kèm (nếu có).\r\nSản phẩm không bị lỗi do quá trình lưu giữ, vận chuyển của người sử dụng.\r\nKhách hàng có chứng từ mua hàng đầy đủ tại MLB Việt Nam\r\nQuy định tiếp nhận và xử lý trả hàng:\r\n*** Đối với khách hàng mua trực tiếp tại cửa hàng thì sẽ đến tại chính cửa hàng đó để được tiếp nhận và làm thủ tục trả hàng.\r\n\r\n*** Đối với khách hàng mua online tại website: https://mlb-korea.vn/ : \r\n\r\nKhách hàng liên hệ hotline hoặc gmail yêu cầu trả hàng.\r\nKhách hàng gửi sản phẩm có nhu cầu trả về địa chỉ được cung cấp bởi CSKH như đã trao đôi.\r\nSau khi MLB Việt Nam thẩm định hàng hóa được gửi về từ khách hàng, sản phẩm đạt yêu cầu trả sẽ được CSKH liên hệ và xác nhận được hoàn tiền. Thời gian hoàn tiền trong vòng 3 ngày (trừ thứ 7, chủ nhật), tính từ thời điểm được xác nhận.\r\nNếu sản phẩm không đạt yêu cầu trả, MLB Việt Nam sẽ liên hệ và gửi sản phẩm về lại khách hàng (Chi phí vận chuyển khách hàng thanh toán). Trường hợp khách hàng không nhận lại sản phẩm và thanh toán chi phí vận chuyển, sản phẩm sẽ được MLB Việt Nam toàn quyền quyết định và xử lý.\r\n\r\nKhách hàng sẽ được hoàn tiền với số tiền đã thanh toán sản phẩm (Chi phí giao hàng sẽ được trừ vào số tiền hoàn trả).\r\nPhương thức thanh toán: MLB Việt Nam sẽ hoàn trả vào tài khoản ngân hàng của khách hàng trong 3 ngày (trừ thứ 7 và chủ nhật), tính từ lúc CSKH xác nhận đơn hàng được chấp nhận hoàn tiền', 'https://bizweb.dktcdn.net/100/446/974/products/non-mlb-diamond-monogram-structured-ball-cap-boston-red-sox-d-beige-3acpm032n-43bgd-1.jpg?v=1683045474807', 1234000, 1200000, 'MLB'),
(131, 'Nón MLB Curlsive Color Matching Unstructured Ball Cap LA Dodgers D.Blue', 'Chính sách trả hàng:\r\n\r\nĐối tượng và thời hạn trả hàng\r\nÁp dụng cho khách hàng thanh toán đầy đủ khi mua trực tiếp và mua online tại website: https://mlb-korea.vn/ . \r\nPhạm vi sản phẩm được trả: Sản phẩm đúng giá trị.\r\nThời hạn trả hàng: Trong vòng 03 ngày kể từ ngày khách hàng nhận được sản phẩm.\r\nCác mặt hàng không áp dụng trả hàng: Vớ, khăn, Trang sức, shoescare, khẩu trang.\r\nTrường hợp trả hàng\r\nPhát sinh lỗi từ phía cửa hàng, nhà sản xuất, lỗi sản phẩm,... (MLB Việt Nam sẽ thanh toán chi phí vận chuyển trả).\r\nNhu cầu trả từ phía khách hàng với những lý do: nhầm size/không vừa size (KH sẽ thanh toán mọi chi phí vận chuyển)\r\nNội dung chính sách trả hàng\r\nSản phẩm đạt yêu cầu trả phải chưa qua sử dụng cũng như chưa giặt/ ủi/ là, không có mùi lạ, nguyên nhãn mác, chưa cào mã (nếu có), hộp/ bao bì sản phẩm đi kèm (nếu có).\r\nSản phẩm không bị lỗi do quá trình lưu giữ, vận chuyển của người sử dụng.\r\nKhách hàng có chứng từ mua hàng đầy đủ tại MLB Việt Nam\r\nQuy định tiếp nhận và xử lý trả hàng:\r\n*** Đối với khách hàng mua trực tiếp tại cửa hàng thì sẽ đến tại chính cửa hàng đó để được tiếp nhận và làm thủ tục trả hàng.\r\n\r\n*** Đối với khách hàng mua online tại website: https://mlb-korea.vn/ : \r\n\r\nKhách hàng liên hệ hotline hoặc gmail yêu cầu trả hàng.\r\nKhách hàng gửi sản phẩm có nhu cầu trả về địa chỉ được cung cấp bởi CSKH như đã trao đôi.\r\nSau khi MLB Việt Nam thẩm định hàng hóa được gửi về từ khách hàng, sản phẩm đạt yêu cầu trả sẽ được CSKH liên hệ và xác nhận được hoàn tiền. Thời gian hoàn tiền trong vòng 3 ngày (trừ thứ 7, chủ nhật), tính từ thời điểm được xác nhận.\r\nNếu sản phẩm không đạt yêu cầu trả, MLB Việt Nam sẽ liên hệ và gửi sản phẩm về lại khách hàng (Chi phí vận chuyển khách hàng thanh toán). Trường hợp khách hàng không nhận lại sản phẩm và thanh toán chi phí vận chuyển, sản phẩm sẽ được MLB Việt Nam toàn quyền quyết định và xử lý.\r\n\r\nKhách hàng sẽ được hoàn tiền với số tiền đã thanh toán sản phẩm (Chi phí giao hàng sẽ được trừ vào số tiền hoàn trả).\r\nPhương thức thanh toán: MLB Việt Nam sẽ hoàn trả vào tài khoản ngân hàng của khách hàng trong 3 ngày (trừ thứ 7 và chủ nhật), tính từ lúc CSKH xác nhận đơn hàng được chấp nhận hoàn tiền.', 'https://bizweb.dktcdn.net/100/446/974/products/non-mlb-curlsive-color-matching-unstructured-ball-cap-la-dodgers-d-blue-3acpc013n-07bld-1.jpg?v=1682938616797', 980000, 500000, 'MLB'),
(132, 'Mũ Versace Jeans Couture Logo Embroidered Baseball Cap Màu Đen', 'Mũ Versace Jeans Couture Logo Embroidered Baseball Cap Màu Đen thiết kế đẹp mắt, kiểu dáng thời trang. Mũ được làm từ chất liệu cotton thoáng mát mang lại cảm giác thoải mái khi sử dụng.\r\n\r\nForm mũ chuẩn đẹp, các đường may rất chắc chắn và tinh tế đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.\r\n\r\n– Thiết kế kiểu dáng thể thao năng động, hiện đại.\r\n\r\n– Thoáng khí, không phai màu, dễ giặt và dễ bảo quản.\r\n\r\n– Sản phẩm được làm từ chất liệu cao cấp, bền đẹp trong suốt quá trình sử dụng.', 'https://guvip.vn/wp-content/uploads/2020/07/mu-versace-jeans-couture-logo-embroidered-baseball-cap-mau-den_5f194cdd2a583.jpeg', 2450000, 2450000, 'Versace'),
(133, 'Mũ Adidas Trefoil Baseball Cap – Pink Spirit (EK2994) Màu Hồng', 'Mũ Adidas Trefoil Baseball Cap – Pink Spirit (EK2994) Màu Hồng thiết kế trẻ trung. Mũ được làm từ chất vải cotton mềm mại mang lại cảm giác thoải mái nhất cho người sử dụng.\r\n\r\nForm mũ chuẩn đẹp, đường may vô cùng tỉ mỉ và chắc chắn đảm bảo hài lòng mọi khách hàng.', 'https://guvip.vn/wp-content/uploads/2020/07/mu-adidas-trefoil-baseball-cap-pink-spirit-ek2994-mau-hong_5f194b5e65d77.jpeg', 750000, 750000, 'Adidas'),
(134, 'Mũ Adidas Trefoil Baseball Cap Màu Hồng Nhạt', 'Mũ Adidas Trefoil Baseball Cap Màu Hồng Nhạt thiết kế trẻ trung. Mũ được làm từ chất vải cotton mềm mại mang lại cảm giác thoải mái nhất cho người sử dụng. Form mũ chuẩn đẹp, đường may vô cùng tỉ mỉ và chắc chắn đảm bảo hài lòng mọi khách hàng.  Sản phẩm bền', 'https://guvip.vn/wp-content/uploads/2020/07/mu-adidas-trefoil-baseball-cap-mau-hong-nhat_5f194a972f627.jpeg', 750000, 750000, 'Adidas'),
(135, 'Mũ lưỡi trai Golf adidas - HT3339', 'Thông tin sản phẩm\r\n \r\nChính sách bán hàng\r\n \r\nĐánh giá\r\nCHIẾC MŨ GOLF PHONG CÁCH TOUR CÓ SỬ DỤNG CHẤT LIỆU TÁI CHẾ.\r\nVung gậy như những tay golf chuyên nghiệp trong chiếc mũ golf adidas phong cách thi đấu này. Chất vải jacquard siêu nhẹ và viền thấm mồ hôi may liền đảm bảo cảm giác thoải mái suốt ngày dài trên sân. Quai khuy bấm cho phép bạn điều chỉnh độ ôm vừa ý. Làm từ một loạt chất liệu tái chế và có chứa tối thiểu 40% thành phần tái chế, sản phẩm này đại diện cho một trong số rất nhiều các giải pháp của chúng tôi hướng tới chấm dứt rác thải nhựa.', 'https://assets.adidas.com/images/w_600,f_auto,q_auto/5040e83a4f07417db051af1e0068e6c4_9366/Mu_Snapback_Tour_DJen_HT3339.jpg', 650000, 650000, 'Adidas'),
(136, 'Mũ lưỡi trai Golf adidas - HT3337', 'CHIẾC MŨ GOLF PHONG CÁCH TOUR CÓ SỬ DỤNG CHẤT LIỆU TÁI CHẾ.\r\nVung gậy như những tay golf chuyên nghiệp trong chiếc mũ golf adidas phong cách thi đấu này. Chất vải jacquard siêu nhẹ và viền thấm mồ hôi may liền đảm bảo cảm giác thoải mái suốt ngày dài trên sân. Quai khuy bấm cho phép bạn điều chỉnh độ ôm vừa ý. Làm từ một loạt chất liệu tái chế và có chứa tối thiểu 40% thành phần tái chế, sản phẩm này đại diện cho một trong số rất nhiều các giải pháp của chúng tôi hướng tới chấm dứt rác thải nhựa.', 'https://assets.adidas.com/images/w_600,f_auto,q_auto/d13381202ae344108538af2300f5bfd4_9366/Tour_Snapback_Hat_Blue_HT3337.jpg', 450000, 450000, 'Adidas'),
(137, 'Mũ Versace Jean Couture Logo Cap Màu Trắng', 'Mũ Versace Jean Couture Logo Cap Màu Trắng thiết kế đẹp mắt, kiểu dáng thời trang. Mũ được làm từ chất liệu cotton thoáng mát mang lại cảm giác thoải mái khi sử dụng.\r\n\r\nForm mũ chuẩn đẹp, các đường may rất chắc chắn và tinh tế đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.\r\n\r\n– Thiết kế kiểu dáng thể thao năng động, hiện đại.\r\n\r\n– Thoáng khí, không phai màu, dễ giặt và dễ bảo quản.\r\n\r\n– Sản phẩm được làm từ chất liệu cao cấp, bền đẹp trong suốt quá trình sử dụng', 'https://guvip.vn/wp-content/uploads/2020/07/mu-versace-jean-couture-logo-cap-mau-trang_5f194b4ee5a9c.jpeg', 2750000, 2750000, 'Versace'),
(138, 'Mũ Versace Jeans Couture Logo Baseball Cap Màu Đen', 'Mũ Versace Jeans Couture Logo Baseball Cap Màu Đen thiết kế đẹp mắt, kiểu dáng thời trang. Mũ được làm từ chất liệu cotton thoáng mát mang lại cảm giác thoải mái khi sử dụng.\r\n\r\nForm mũ chuẩn đẹp, các đường may rất chắc chắn và tinh tế đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.\r\n\r\n– Thiết kế kiểu dáng thể thao năng động, hiện đại.\r\n\r\n– Thoáng khí, không phai màu, dễ giặt và dễ bảo quản.\r\n\r\n– Sản phẩm được làm từ chất liệu cao cấp, bền đẹp trong suốt quá trình sử dụng.', 'https://guvip.vn/wp-content/uploads/2020/07/mu-versace-jeans-couture-logo-baseball-cap-mau-den_5f194be295283.jpeg', 2500000, 2500000, 'Versace'),
(139, 'Mũ Versace Jeans Couture Logo Embroidered Baseball Cap Màu Đen', 'Mũ Versace Jeans Couture Logo Embroidered Baseball Cap Màu Đen thiết kế đẹp mắt, kiểu dáng thời trang. Mũ được làm từ chất liệu cotton thoáng mát mang lại cảm giác thoải mái khi sử dụng.\r\n\r\nForm mũ chuẩn đẹp, các đường may rất chắc chắn và tinh tế đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.\r\n\r\n– Thiết kế kiểu dáng thể thao năng động, hiện đại.\r\n\r\n– Thoáng khí, không phai màu, dễ giặt và dễ bảo quản.\r\n\r\n– Sản phẩm được làm từ chất liệu cao cấp, bền đẹp trong suốt quá trình sử dụng', 'https://guvip.vn/wp-content/uploads/2020/07/mu-versace-jeans-couture-logo-embroidered-baseball-cap-mau-den_5f194cdd2a583.jpeg', 2950000, 2950000, 'Versace'),
(140, 'MŨ DAD CAP PREMIUM ESSENTIALS', 'Lớp ngoài: Vải twill làm từ 100% cotton\r\nViền thấm mồ hôi: Vải khăn bông làm từ 100% cotton\r\nCảm giác mềm mại\r\nMóc chữ D phía sau\r\nLogo Ba Lá thêu nổi\r\nMade with Better Cotton\r\nMàu sản phẩm: Black\r\nMã sản phẩm: IC3031', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/262f754c9c2f4dcf8a0daf2e008bffbf_9366/Mu_Dad_Cap_Premium_Essentials_DJen_IC3031_01_standard.jpg', 750000, 750000, 'ESSENTIALS'),
(141, 'MŨ BÓNG CHÀY BA LÁ', '100% cotton\r\nVành cong\r\nQuai tùy chỉnh phía sau có móc chữ D\r\nMàu sản phẩm: Semi Lucid Blue\r\nMã sản phẩm: IB9971', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/41ea625761f44e698c66af0100e97629_9366/Mu_Bong_Chay_Ba_La_Mau_xanh_da_troi_IB9971_01_standard.jpg', 500000, 500000, 'Adidas'),
(142, 'MŨ BÓNG CHÀY ADIDAS REKIVE', 'Chất liệu chính: Vải taffeta làm từ 100% polyester tái chế\r\nCác mảng phối: Vải dệt kim đôi làm từ 100% polyester tái chế\r\nQuai điều chỉnh phía sau\r\nHuy hiệu silicon adidas Rekive\r\nMàu sản phẩm: Purple Rush\r\nMã sản phẩm: IB9205', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/0eaa136a9a614fa8b448af0100b1e2bb_9366/Mu_Bong_Chay_adidas_Rekive_Mau_tim_IB9205_01_standard.jpg', 850000, 750000, 'Adidas'),
(143, 'MŨ LƯỠI TRAI AEROREADY ESSENTIAL', 'Chất liệu chính: Vải ripstop làm từ 100% polyester tái chế\r\nViền thấm mồ hôi: Vải dệt kim đôi làm từ 100% polyester tái chế\r\nAEROREADY\r\nLưỡi trai mềm\r\nQuai điều chỉnh phía sau\r\nMàu sản phẩm: Dark Blue / White\r\nMã sản phẩm: IC6514', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/b878029790d24a37b47eaef501266fba_9366/Mu_Luoi_Trai_AEROREADY_Essential_Mau_xanh_da_troi_IC6514_01_standard.jpg', 420000, 420000, 'ESSENTIAL'),
(144, 'MŨ BÓNG CHÀY AEROREADY ADIDAS X MARIMEKKO', 'Kích cỡ vừa với hầu hết mọi người\r\nVải dệt dobby làm từ 90% polyester tái chế, 10% elastane\r\nAEROREADY\r\nVành cong\r\nQuai tùy chỉnh phía sau\r\nCấu trúc năm múi\r\nLogo adidas x Marimekko\r\nMàu sản phẩm: Green Tint / Black\r\nMã sản phẩm: HT3901', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/e893d2a2f502427d9c22af8500ed0870_9366/Mu_Bong_Chay_AEROREADY_adidas_x_Marimekko_mau_xanh_la_HT3901_01_standard.jpg', 750000, 700000, 'Adidas'),
(145, 'MŨ BÓNG CHÀY STREET', 'Lớp ngoài: Vải twill làm từ 100% cotton\r\nLớp lót: Vải dệt trơn làm từ 100% polyester tái chế\r\nViền thấm mồ hôi: Vải dệt kim đôi làm từ 100% polyester tái chế\r\nChóp mũ và vành lưỡi trai cong vừa\r\nQuai điều chỉnh phía sau\r\nMàu sản phẩm: Black / White / White\r\nMã sản phẩm: HT6355', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/2bd908c4a3a844b1b116af0100fce6e6_9366/Mu_Bong_Chay_Street_DJen_HT6355_01_standard.jpg', 450000, 450000, 'Adidas'),
(146, 'MŨ LƯỠI TRAI CHẠY BỘ GẤP GỌN X-CITY HEAT.RDY', 'Vải ripstop làm từ 100% polyester tái chế\r\nHEAT.RDY\r\nCác mảng phối lưới\r\nVành phẳng có thể lật lên\r\nCó thể gấp gọn\r\nQuai sau co giãn điều chỉnh được có lỗ đuôi ngựa ẩn\r\nCác chi tiết phản quang\r\nMàu sản phẩm: Coral Fusion / Reflective Silver\r\nMã sản phẩm: HR7056', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/26aea0f9302b4f2284a4aef900afe42e_9366/Mu_Luoi_Trai_Chay_Bo_Gap_Gon_X-City_HEAT.RDY_trai_cam_HR7056_01_standard.jpg', 750000, 600000, 'Adidas'),
(147, '\r\nMũ Gucci Original GG Canvas Baseball With Web Beige', 'Mũ Gucci Nam Original GG Canvas Baseball with Web Beige được thiết kế vô cùng tinh tế. Mặt ngoài mũ làm bằng chất liệu vải Canvas được in hình logo “GG” nối nhau đặc trưng của hãng Gucci, xung quanh mũ được may với các đường chỉ cực kì sắc nét.\r\n\r\nHai bên mũ được thêu mỗi tấm vải gồm 2 màu đỏ xanh huyền thoại của hãng Gucci.\r\n\r\nLưỡi mũ được bao bọc 1 miếng da quanh viền và được may mỗi tấm vải 2 bên với những đường chỉ rất tinh tế.\r\n\r\nMiếng dán bằng da sau mũ, điều chỉnh tăng giảm được, phù hợp với mọi loại đầu.\r\n\r\nBên trong mũ Original GG làm bằng chất liệu vải Cotton được lót thêm tấm bông tạo cảm giác êm ái cho đầu khi đội.\r\n\r\nMũ được làm bằng chất liệu hàng đầu của Ý và được phủ 1 lớp keo chống thấm nước tạo sự dễ chịu và thoải mái khi mang với mọi khách hàng cho dù khó tính nhất.\r\n\r\nMũ có thiết kế vừa vặn, dễ phối đồ với quần jeans, quần short và áo thun hay polos tạo nên sự sang trọng và mạnh mẽ.', 'https://guvip.vn/wp-content/uploads/2020/07/mu-gucci-original-gg-canvas-baseball-with-web-beige_5f194c9b12e96.jpeg', 6200000, 550000, 'Gucci'),
(148, 'Mũ Gucci Kingsnake Print GG Supreme Baseball Beige Size S', 'Mua Mũ Gucci Kingsnake Print GG Supreme Baseball Beige Size S, hình rắn đỏ, Giá tốt Mũ Gucci Kingsnake Print GG Supreme Baseball Beige cho Nam được thiết kế sắc xảo tượng trưng cho sự không ngoan và quyền lực. Mặt ngoài mũ được in hình “Kingsnake” với logo “GG” nối nhau đặc trưng của', 'https://guvip.vn/wp-content/uploads/2020/07/mu-gucci-kingsnake-print-gg-supreme-baseball-beige-size-s_5f194b9f54924.jpeg', 7800000, 700000, 'Gucci'),
(149, 'Mũ Gucci Kingsnake Print GG Supreme Baseball Beige Size S', 'Kiểu dáng: Mũ lưỡi trai\r\nGiới tính: Nam\r\nMàu sắc: Nâu nhạt\r\nChất liệu: Canvas\r\nXuất xứ: Ý\r\nMặt hàng: Có sẵn\r\nSize: S', 'https://guvip.vn/wp-content/uploads/2020/07/mu-gucci-kingsnake-print-gg-supreme-baseball-beige-size-s_5f194b9f54924.jpeg', 7800000, 700000, 'Gucci'),
(150, 'Mũ Gucci Original GG Canvas Baseball With Web Black Size M', 'Kiểu dáng: Mũ lưỡi trai\r\nGiới tính: Nam\r\nMàu sắc: Đen\r\nChất liệu: Canvas\r\nXuất xứ: Ý\r\nMặt hàng: Có sẵn\r\nSize: M', 'https://guvip.vn/wp-content/uploads/2020/07/mu-gucci-original-gg-canvas-baseball-with-web-black-size-m_5f194b8650c0b.jpeg', 6900000, 6900000, 'Gucci'),
(151, 'Mũ Gucci Original GG Canvas Black Size M', 'Kiểu dáng: Mũ lưỡi trai\r\nGiới tính: Unisex\r\nMàu sắc: Đen\r\nChất liệu: Cotton\r\nXuất xứ: Ý\r\nMặt hàng: Có sẵn\r\nSize: M', 'https://guvip.vn/wp-content/uploads/2020/07/mu-gucci-original-gg-canvas-black-size-m_5f194b44bc782.jpeg', 4900000, 4000000, 'Gucci'),
(152, 'Mũ Gucci Kingsnake Print GG Supreme Baseball Black Size S', 'Kiểu dáng: Mũ lưỡi trai\r\nGiới tính: Nam\r\nMàu sắc: Đen\r\nChất liệu: Lưới dệt\r\nXuất xứ: Ý\r\nMặt hàng: Có sẵn\r\nSize: S', 'https://guvip.vn/wp-content/uploads/2020/07/mu-gucci-kingsnake-print-gg-supreme-baseball-black-size-s_5f194af1e64ab.jpeg', 6500000, 6500000, 'Gucci'),
(153, 'Mũ Gucci Guccy Polka Dot Hat Màu Đen', 'Kiểu dáng: Mũ lưỡi trai\r\nGiới tính: Unisex\r\nMàu sắc: Đen\r\nChất liệu: Canvas\r\nXuất xứ: Ý', 'https://guvip.vn/wp-content/uploads/2020/07/mu-gucci-guccy-polka-dot-hat-mau-den_5f194ae729394.jpeg', 7290000, 7290000, 'Gucci'),
(154, 'Mũ Gucci Bee Print GG Supreme Baseball Beige Size S', 'Kiểu dáng: Mũ lưỡi trai\r\nGiới tính: Nam\r\nMàu sắc: Nâu nhạt\r\nChất liệu: Canvas\r\nXuất xứ: Ý\r\nSize: S', 'https://guvip.vn/wp-content/uploads/2020/07/mu-gucci-bee-print-gg-supreme-baseball-beige-size-s_5f194add5ac95.jpeg', 7800000, 7800000, 'Gucci'),
(155, 'Mũ Gucci GG Supreme Supreme Baseball Cap With Feline Head In Neutrals', 'Kiểu dáng: Mũ lưỡi trai\r\nGiới tính: Nam\r\nMàu sắc: Nâu nhạt\r\nChất liệu: Canvas\r\nXuất xứ: Ý\r\nMặt hàng: Có sẵn', 'https://guvip.vn/wp-content/uploads/2020/07/mu-gucci-gg-supreme-supreme-baseball-cap-with-feline-head-in-neutrals_5f194a455e1eb.jpeg', 11900000, 11900000, 'Gucci'),
(156, 'Mũ Gucci Children’s Original GG Canvas Hat Vân Mono Màu Vàng', 'Kiểu dáng: Mũ lưỡi trai\r\nGiới tính: Unisex\r\nMàu sắc: Vàng\r\nChất liệu: Canvas\r\nXuất xứ: Ý', 'https://guvip.vn/wp-content/uploads/2020/07/mu-gucci-childrens-original-gg-canvas-hat-van-mono-mau-vang_5f19491a25dd0.jpeg', 3400000, 3400000, 'Gucci');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone_number` char(20) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(150) NOT NULL,
  `token` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `address`, `password`, `token`) VALUES
(7, 'Nguyễn Tiến Anh', 'tienanhlol@gmail.com', '0986538387', 'Hoài Đức-  Hà Nội', '123', ''),
(8, 'Ngô Xuân Đức', 'ngoxuanduc@gmail.com', '0986538387', 'Đông Anh', '123', ''),
(9, 'Nguyễn Đức Triệu', 'ductrieu@gmail.com', '0375164533', 'Đông Anh', '123', ''),
(10, 'ad', 'thangpro9669@gmail.com', '0971366275', 'ha noi', '123', ''),
(11, 'ad', 'minhhieu0722@gmail.com', '', 'ff', 'thangthang', ''),
(12, 'Hoàng Phúc', 'phucchoangg202@gmail.com', '0876522288', 'Lạng Sơn', '123', ''),
(13, 'Hoàng Phúc', 'phucchoa02@gmail.com', '0876522288', 'lang son', '123', ''),
(14, 'Hoàng Phúc', 'phucchoa202@gmail.com', '087653', 'lang son', '123', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vn_pay`
--

CREATE TABLE `vn_pay` (
  `id_vnpay` int(11) NOT NULL,
  `code_cart` varchar(50) NOT NULL,
  `vnp_amount` varchar(100) NOT NULL,
  `vnp_bankcode` varchar(100) NOT NULL,
  `vnp_banktranno` varchar(100) NOT NULL,
  `vnp_cardtype` varchar(100) NOT NULL,
  `vnp_orderinfo` varchar(100) NOT NULL,
  `vnp_paydate` varchar(100) NOT NULL,
  `vnp_tmncode` varchar(100) NOT NULL,
  `vnp_transactionno` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `vn_pay`
--

INSERT INTO `vn_pay` (`id_vnpay`, `code_cart`, `vnp_amount`, `vnp_bankcode`, `vnp_banktranno`, `vnp_cardtype`, `vnp_orderinfo`, `vnp_paydate`, `vnp_tmncode`, `vnp_transactionno`) VALUES
(17, '915', '170000000', 'NCB', 'VNP14023720', 'ATM', 'Thanh toan GD:915', '20230528001307', '14023720', '00'),
(18, '', '170000000', 'NCB', 'VNP14023720', 'ATM', 'Thanh toan GD:915', '20230528001307', '14023720', '00'),
(19, '9998', '120000000', 'NCB', 'VNP14023724', 'ATM', 'Thanh toan GD:9998', '20230528002004', '14023724', '00'),
(20, '9965', '190000000', 'NCB', 'VNP14023725', 'ATM', 'Thanh toan GD:9965', '20230528002330', '14023725', '00'),
(21, '935', '370000000', 'NCB', 'VNP14023727', 'ATM', 'Thanh toan GD:935', '20230528002838', '14023727', '00'),
(22, '1479', '120000000', 'NCB', 'VNP14023762', 'ATM', 'Thanh toan GD:1479', '20230528073852', '14023762', '00'),
(23, '2904', '120000000', 'NCB', 'VNP14023840', 'ATM', 'Thanh toan GD:2904', '20230528133955', '14023840', '00'),
(24, '', '120000000', 'NCB', 'VNP14023840', 'ATM', 'Thanh toan GD:2904', '20230528133955', '14023840', '00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vn_pay`
--
ALTER TABLE `vn_pay`
  ADD PRIMARY KEY (`id_vnpay`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `vn_pay`
--
ALTER TABLE `vn_pay`
  MODIFY `id_vnpay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `san_pham` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
