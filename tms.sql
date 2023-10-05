-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-06-07 21:11:53
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `tms`
--

-- --------------------------------------------------------

--
-- 資料表結構 `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 傾印資料表的資料 `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-05-11 11:18:49');

-- --------------------------------------------------------

--
-- 資料表結構 `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `FromDate` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToDate` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Comment` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 傾印資料表的資料 `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'test@gmail.com', '2020-07-11', '2020-07-18', 'I want this package.', '2020-07-08 06:38:36', 2, 'u', '2020-07-08 06:53:45'),
(2, 2, 'test@gmail.com', '2020-07-10', '2020-07-13', 'There is some discount', '2020-07-08 06:43:25', 1, NULL, '2020-07-08 06:52:44'),
(3, 1, 'thuo881942@gmail.com', '2023-06-09', '2023-06-15', 'g sb b b  s ', '2023-06-02 16:52:05', 0, NULL, NULL),
(4, 1, 'bbb@gmail.com', '2023-06-09', '2023-06-10', '讚啦', '2023-06-03 16:34:32', 2, 'u', '2023-06-07 19:09:23'),
(5, 9, 'bear11101110@gmail.com', '2023-06-26', '2023-06-28', '希望可以很好玩，不好玩就退費', '2023-06-04 15:29:16', 0, NULL, NULL),
(6, 1, '1@gmail.com', '2023-06-13', '2023-06-30', 'qdqd', '2023-06-07 11:55:12', 2, 'u', '2023-06-07 19:09:31'),
(7, 1, '44@gmail.com', '2023-06-11', '2023-06-24', '讚', '2023-06-07 17:17:06', 2, 'u', '2023-06-07 19:09:36'),
(8, 1, '44@gmail.com', '2023-06-13', '2023-06-16', 'd', '2023-06-07 17:26:44', 0, NULL, NULL),
(9, 1, '44@gmail.com', '2023-06-09', '2023-06-30', 'fbfb', '2023-06-07 17:26:56', 2, 'u', '2023-06-07 19:09:45'),
(10, 2, '99@gmail.com', '2023-06-13', '2023-06-13', 'qqq', '2023-06-07 18:03:23', 2, 'u', '2023-06-07 19:09:50'),
(11, 6, 'hello@gmail.com', '2023-06-24', '2023-06-26', '看烏龜', '2023-06-07 18:30:35', 2, 'u', '2023-06-07 19:09:56');

-- --------------------------------------------------------

--
-- 資料表結構 `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `EmailId` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `MobileNumber` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 傾印資料表的資料 `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Jone Paaire', 'jone@gmail.com', '4646464646', 'Enquiry for Manali Trip', 'Kindly provide me more offer.', '2020-07-08 06:30:32', 1),
(2, 'Kishan Twaerea', 'kishan@gmail.com', '6797947987', 'Enquiry', 'Any Offer for North Trip', '2020-07-08 06:31:38', NULL),
(3, 'Jacaob', 'Jai@gmail.com', '1646689721', 'Any offer for North', 'Any Offer for north', '2020-07-08 06:32:41', 1),
(4, 'henru', 'jjj@gmai.com', '5555', 'df', 'vnkuryn kusb', '2023-06-02 17:20:10', NULL),
(5, 'a', 'anuj@gmail.com', 'aa', 'aaa', 'aaa', '2023-06-07 18:24:03', NULL),
(6, 'qqwqw', 'qwqw@gmail.com', 'qwqw', 'qwqw', 'qwqw', '2023-06-07 18:32:54', NULL),
(7, '44', '44@gmail.com', '4', '44', '44', '2023-06-07 19:06:22', NULL),
(9, 'ji3jij3i', 'hello@gmail.com', '1513123', '123', 'qwqwqw', '2023-06-07 19:11:24', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Issue` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 傾印資料表的資料 `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(1, 'test@gmail.com', 'Booking Issues', 'I am not able to book package', '2020-07-08 06:36:03', 'Ok, We will fix the issue asap', '2023-06-07 19:07:12'),
(2, 'test@gmail.com', 'Refund', 'I want my refund', '2020-07-08 06:56:29', NULL, NULL),
(3, 'thuo881942@gmail.com', 'Booking Issues', 'er  rr et', '2023-06-02 17:21:19', NULL, NULL),
(4, '44@gmail.com', 'Booking Issues', '好爛', '2023-06-07 17:23:02', NULL, NULL),
(5, '44@gmail.com', 'Cancellation', '456456', '2023-06-07 17:23:19', NULL, NULL),
(6, '44@gmail.com', 'Booking Issues', '好爛', '2023-06-07 17:27:20', NULL, NULL),
(7, '44@gmail.com', 'Other', '吉娃娃', '2023-06-07 17:28:31', NULL, NULL),
(8, '99@gmail.com', 'Cancellation', 'qqqqqqq', '2023-06-07 18:04:43', NULL, NULL),
(9, 'hello@gmail.com', 'Booking Issues', '454564564654', '2023-06-07 18:35:28', NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 傾印資料表的資料 `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(22, 'Operation', '<p align=\"justify\"><font size=\"5px\"><strong><font color=\"#990000\">(1)非使用者 </font><br><br></strong>1. 您可以瀏覽我們的所有行程<br> 2. 在右上角的Sign Up註冊一個新帳號</font></p>\r\n<p><font size=\"5px\"><strong><font color=\"#990000\">(2)使用者 </font><br><br></strong>1. 在喜歡的行程後進行下訂，也留下你想對我們說的話<br> 2. 可在上方我的行程查看所有訂單</font></p>\r\n										'),
(11, 'contact', '<p align=\"justify\"><font size=\"5px\"><strong><font color=\"#990000\">(1)許証曜</font><br><br></strong>1. <a href=\"mailto:s110916041@stu.ntue.edu.tw\">Email</a><br> 2. 台北教育大學資訊科學系大三</font></p>\r\n\r\n<p><font size=\"5px\"><strong><font color=\"#990000\">(2)楊宗翰 </font><br><br></strong>1. <a href=\"mailto:s110916041@stu.ntue.edu.tw\">Email</a><br> 2. 台北教育大學資訊科學系大三<br>3. <a href\"https://www.instagram.com/yang_henry__/\">IG</a></font></p>\r\n');

-- --------------------------------------------------------

--
-- 資料表結構 `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PackageType` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PackageLocation` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PackageDetails` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PackageImage` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 傾印資料表的資料 `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, '蘭嶼三天兩夜・浮潛、生態與文化探索之旅｜含船票・機車・住宿・體驗行程', '團體、情侶', '蘭嶼', 5300, '在蘭嶼進行三天兩夜的行程，其中包含許多海上活動，以及專業又貼心的浮潛教練Louis，會手把手帶你體驗浮潛的樂趣。', '1.浮潛備有全套裝備\r\n2.夜觀角鴞行程大約會在19:00~20:00之間出發，時間約2小時左右\r\n3.套裝行程旅遊如有任何項目不參者則視同放棄，不得要求退費或抵扣其他付費項目\r\n4.飛魚季期間（4月～6月）請旅客勿隨意觸碰拼板舟及登船拍照，敬請配合當地文化與禁忌', 'Lanyu.jpg', '2023-06-02 05:21:58', NULL),
(2, '台北101觀景台', '團體、情侶', '台北', 420, '900K+ 人參加過', '1.89樓觀景台打造全新空間「高空Sky Lounge區」，讓夜晚賞月賞景更有氣氛、更加浪漫。白天亦有絕佳視野，可以享受各種風情與色彩的黃昏美景！\r\n2.101樓層以「世界最高秘境花園」主題與遊客見面，館內360度環繞鏡面牆設計，將天空、雲朵和陽光映照於室內，宛如置身雲端花園，遠眺群山、俯瞰台北城市地景風貌。\r\n', 'Taipei.jpg', '2020-07-08 05:37:40', '2023-06-03 05:18:26'),
(3, '澎湖藍洞: 南方四島&七美島&藍洞一日遊', '情侶、家人', '澎湖', 1093, '親臨澎湖，體驗大自然精心雕琢的仙境', '1.騎機車或搭遊覽車漫遊七美島，島上交通沒煩惱\r\n2.領略七美人塚、巨獸「石獅」、海蝕平台「小台灣」等天然美景.\r\n3.登陸東吉島，途經鋤頭嶼，欣賞多變的地層結構與巨大的海蝕洞\r\n4.探訪西吉嶼藍洞，感受陽光從水面折射而成的藍色仙境', 'Penghu.jpg', '2023-06-02 05:41:07', '2023-06-03 05:23:30'),
(4, '基隆島登島、環島、上燈塔、繞象鼻岩體驗', '家族旅遊', '基隆', 700, '每年4、5月為野百合花季，9、10月為金孤挺花季，可在島上欣賞美麗的花海', '1.15人成團，如未達到最低成團人數，將安排改期或全額退款-\r\n2.乘坐豪華遊艇出海登陸基隆島，朝聖拍照新景點\r\n3.一次辦理船票上岸，輕鬆遊覽東北角海島風光', 'Keelung.jpg', '2023-06-02 05:45:58', NULL),
(5, '南投｜清境農場＆合歡山一日遊', '家族旅遊、情侶', '南投', 1173, '4K+ 人參加過、行程時長：9小時  - 10小時	', '1.南投一日遊，輕鬆遊合歡山與清境農場兩大中部最熱門觀光景點！\r\n2.造訪有「小歐洲」之稱的清境農場，感受高山原野自然恬靜的氣息\r\n3.前往全台最高海拔咖啡廳「合歡山3158 Café」來些熱食飲品補充體力\r\n4.打卡台灣公路最高點武嶺，將四周山線盡收眼底', 'Cingjing.jpg', '2023-06-02 05:49:13', NULL),
(6, '小琉球潛水｜體驗潛水・一對一免證照', '團體', '小琉球', 400, '4K+ 人參加過', '1.有機會與海龜共游，探索綺麗海底世界\r\n2.全程由專業潛水教練帶領，無證照也能感受潛水樂趣\r\n3.教練一對一指導，每位學員皆可獲得高品質教學\r\n4.提供水下拍攝服務，並提供原始檔照片及影片', 'Xiaoliuqiu.jpeg', '2023-06-02 05:51:26', NULL),
(7, '宜蘭：七尾河漂流體驗', '朋友、團體', '宜蘭', 999, '季節限定', '1.來一場刺激的宜蘭漂流之旅\r\n2.與家人或朋友一起沿著湍急的河流暢遊\r\n3.順流而下，欣賞台灣東部令人驚嘆的鄉村美景\r\n4.提供南澳火車站至下車點方便舒適的接送服務', 'Nan_ao.jpg', '2023-06-02 05:54:42', NULL),
(8, '綠島藍洞｜藍洞祕境探險之旅', '情侶、團體', '綠島', 600, '季節限定,2 - 10人團,行程時長：2小時 - 2小時30分鐘	', '1.探索綠島海底世界，揭開藍洞的神祕面紗，欣賞豐富的熱帶魚群與美麗的珊瑚礁\r\n2.綠島海域，除了擁有豐富的魚類資源、美麗的珊瑚礁還有美麗的海蝕洞秘境\r\n3.專業教練帶領，專業教練帶領，提供每位體驗者最完善的照顧，探險過程安心又盡興\r\n4.行程提供全套裝備及活動拍攝服務，讓您留下美麗的旅行記憶', 'Green.jpg', '2023-06-02 06:05:24', NULL),
(9, '清水斷崖SUP立槳・獨木舟體驗', '朋友、情侶', '花蓮', 1445, '季節限定,行程時長：3小時', '1.在台灣十景之一的花蓮清水斷崖玩SUP／獨木舟，欣賞太平洋海天一色\r\n2.專業教練指導陪同，附贈拍照服務，為你捕捉最美的回憶\r\n3.體驗近年超夯的立式划槳SUP！站著、坐著、趴著隨你玩！', 'Hualien.jpg', '2023-06-02 06:07:48', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `MobileNumber` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `EmailId` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 傾印資料表的資料 `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'aaa', '0976150198', 'thuo881942@gmil.com', '47bce5c74f589f4867dbd57e9ca9f808', '2023-06-03 16:05:32', NULL),
(2, 'bbb', '097779', 'bbb@gmail.com', '08f8e0260c64418510cefb2b06eee5cd', '2023-06-03 16:13:26', NULL),
(3, '許容禎', '0908100250', 'bear11101110@gmail.com', '49545bc1be0b8aaaec5c1b24d80fd4c0', '2023-06-04 15:27:32', NULL),
(4, '789', '789', '789@gmail.com', '68053af2923e00204c3ca7c6a3150cf7', '2023-06-06 07:58:26', NULL),
(5, '1', '1', '1@gmail.com', '6512bd43d9caa6e02c990b0a82652dca', '2023-06-07 11:12:40', '2023-06-07 19:08:24'),
(6, '1', '12', '12@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710', '2023-06-07 11:12:58', NULL);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- 資料表索引 `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- 資料表索引 `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
