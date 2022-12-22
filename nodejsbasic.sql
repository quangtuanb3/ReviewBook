-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2022 at 05:28 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodejsbasic`
--

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `id` int(11) NOT NULL,
  `bookName` varchar(510) NOT NULL,
  `category` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `review` varchar(10) NOT NULL,
  `bookStatus` varchar(255) NOT NULL,
  `Imgsrc` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`id`, `bookName`, `category`, `author`, `summary`, `review`, `bookStatus`, `Imgsrc`) VALUES
(0, 'Mắt biếc', 'Novel', 'Nguyễn Nhật Ánh', 'Mắt biếc kể về cuộc đời của nhân vật chính tên Ngạn. Ngạn sinh ra và lớn lên ở một ngôi làng tên là làng Đo Đo (thuộc xã Bình Quế - huyện Thăng Bình - tỉnh Quảng Nam - cũng là nguyên quán của tác giả). Lớn lên cùng với Ngạn là cô bạn hàng xóm có đôi mắt tuyệt đẹp tên là Hà Lan. Tuổi thơ của Ngạn và Hà Lan gắn bó với bao nhiêu kỉ niệm cùng đồi sim, đánh trống trường... Tình bạn trẻ thơ dần dần biến thành tình yêu thầm lặng của Ngạn dành cho Hà Lan. Đến khi lớn hơn một chút, cả hai phải rời làng ra thành phố để tiếp tục học. Khi tấm lòng của Ngạn luôn hướng về Hà Lan và về làng, thì Hà Lan không cưỡng lại được cám dỗ của cuộc sống xa hoa nơi đô thị và ngã vào vòng tay của Dũng. Việc Hà Lan ngã vào vòng tay Dũng, một thanh niên nhà giàu, sành điệu, giỏi võ nhưng rất thiếu đứng đắn đã làm cho Ngạn đau khổ rất nhiều vì điều Ngạn cần là hạnh phúc của Hà Lan.\r\n\r\nMỗi khi Dũng làm Hà Lan tổn thương cô lại tìm Ngạn để tâm sự, điều đó lại càng làm cho Ngạn buồn thêm. Có lần Ngạn đã đánh nhau với Dũng vì Hà Lan và kết quả tất nhiên là Ngạn thua nhưng điều đó đã không làm cho Ngạn bớt đi tính anh hùng, sẵn sàng đánh nhau mỗi khi Hà Lan bị bắt nạt. Cũng từ đó những cảm xúc mỗi khi Hà Lan tìm đến Ngạn để giãi bày niềm tâm sự giảm bớt đi.\r\n\r\nHà Lan có thai, nhưng gia đình Dũng không chấp nhận, Dũng ruồng bỏ Hà Lan và làm đám cưới với Bích Hoàng. Cô đành gửi con về cho bà ngoại chăm sóc và đặt tên là Trà Long. Tuy hiểu rõ tình yêu của Ngạn dành cho mình, Hà Lan vẫn không đáp lại vì cô hiểu rõ mình muốn sống theo một lối sống hoàn toàn khác với Ngạn. Bằng tình yêu của mình dành cho Hà Lan, Ngạn hết lòng yêu thương và chăm sóc cho Trà Long. Trà Long lớn lên trở thành cô giáo trường làng, và vô cùng yêu quý Ngạn. Trong khi ai cũng nghĩ rằng Trà Long sẽ là sự nối tiếp những gì mà Hà Lan đã bỏ dở trong đời Ngạn, thì Ngạn quyết định ra đi vì anh nhận ra rằng Trà Long chỉ là cái bóng của Hà Lan trong anh mà thôi.', '7.5/10', 'completed', '/images/matbiec.jpg'),
(1, 'One piece', 'Manga, Action', 'Oda Eiichiro', 'Câu chuyện kể về Monkey D. Luffy, một chàng trai trẻ tuổi, được thần tượng thời thơ ấu của mình là Shanks \"Tóc Đỏ\" truyền cảm hứng trở thành một hải tặc, bắt đầu cuộc hành trình tại East Blue tìm kiếm kho báu danh giá và trở thành Tân Vua Hải Tặc. Trong quá trình thành lập băng hải tặc Mũ Rơm, Luffy đã giải cứu và kết bạn với một kiếm sĩ tên là Roronoa Zoro(ロのノア ゾロ), và họ bắt đầu tìm kiếm One Piece. Họ tham gia vào cuộc hành trình cùng Nami(ナミ), một hoa tiêu; Usopp(ウソプ), một tay thiện xạ; Vinsmoke Sanji(ヴィンスモク サンジ), một đầu bếp. Họ có được một con tàu tên là Going Merry(ゴイング メリー) và đối đầu với những băng hải tặc khét tiếng của East Blue. Khi Luffy và đồng đội của cậu bắt đầu cuộc phiêu lưu của, những người khác tham gia vào băng sau đó trong bộ truyện, bao gồm Tony Tony Chopper(トニー チョパー), một bác sĩ và là một con tuần lộc biết nói; Nico Robin(ニコ ロビン), một nhà khảo cổ học; Franky(フランキー), một thợ đóng tàu cyborg; Brook(ブルーク), một nhạc công và Jinbei(ジンベイ), một người cá và là cựu thành ', '8/10', 'uncompleted', '/images/onepie.jpg'),
(3, 'Wuthering Heights', 'Novel, Action', 'Emily Brontë', 'Wuthering Heights is an 1847 novel by Emily Brontë, initially published under her pen name Ellis Bell. It concerns two families of the landed gentry living on the West Yorkshire moors, the Earnshaws and the Lintons, and their turbulent relationships with Earnshaw\'s foster son, Heathcliff. The novel was influenced by Romanticism and Gothic fiction.\r\n\r\nWuthering Heights is now widely considered to be one of the greatest novels ever written in English, but contemporaneous reviews were polarised. It was controversial for its depictions of mental and physical cruelty, including domestic abuse, and for its challenges to Victorian morality and religious and societal values.', '8.7/10', 'completed', '/images/doi-gio-hu.jpg'),
(4, 'Hồng Lâu Mộng', 'Novel', 'Tào Tuyết Cần', 'Tác phẩm xoay quanh câu chuyện tình duyên trắc trở giữa hai anh em con cô con cậu: Giả Bảo Ngọc và Lâm Đại Ngọc, từ đó mô tả cuộc sống nhiều mặt của một đại gia đình quý tộc đời Minh từ lúc cực thịnh cho đến lúc suy vi trong vòng tám năm.\r\n\r\nTiểu thuyết mở đầu bằng một huyền thoại: Nữ Oa luyện đá ngũ sắc vá trời, luyện được năm vạn lẻ một viên. Viên linh thạch còn thừa được đưa về Thanh Ngạnh. Tiểu thuyết cũng đưa tích trời Thần Anh chăm sóc cây tiên Giáng Châu. Thần Anh và Giáng Châu duyên nợ, chịu ơn nhau nên phải đầu thai xuống hạ giới để \"lấy hết nước mắt của đời ta để trả lại cho chàng\". Từ đó dẫn ra bao nhiêu oan gia phong lưu đều phải xuống trần để trả duyên nợ, sinh ra bao nhiêu chuyện sau này.', '6.5/10', 'completed', '/images/hong-lau-mong.jpg'),
(6, 'Đông chu liệt quốc', 'History', 'Sái Nguyên Phóng', 'Đông Chu liệt quốc đề cập đến thời kỳ lịch sử rất dài khoảng hơn 500 năm (770 TCN - 221 TCN) của Trung Quốc, bắt đầu từ đời Tuyên vương nhà Chu cho đến khi Tần Thủy Hoàng thống nhất Trung Hoa. Sử sách cũng gọi thời kỳ ấy là đời Đông Chu, được chia làm hai giai đoạn là Xuân Thu và Chiến Quốc. Trong lịch sử Trung Hoa đây là thời kỳ quá độ từ chế độ phong kiến đến tập quyền. Đông Chu liệt quốc là bộ sách rất hay, trong truyện không những đề cập đến các mốc lịch sử rất dài đồng thời cũng đề cập, mô tả rất nhiều nhân vật nổi tiếng của lịch sử Trung Hoa, từ các bậc anh hùng như Tín Lăng quân, Lạn Tương Như, Ngô Khởi, Ngũ Tử Tư đến các nhà quân sự lỗi lạc như Tôn Tử, Phạm Lãi, Tôn Tẫn và các nhà chính trị-tư tưởng lớn như Khổng Tử, Quản Trọng.', '7/10', 'completed', '/images/dongchulietquoc.jpg'),
(7, 'The Count of Monte Cristo', 'Action', 'Alexandre Dumas', 'The story takes place in France, Italy, and islands in the Mediterranean during the historical events of 1815–1839: the era of the Bourbon Restoration through the reign of Louis-Philippe of France. It begins on the day that Napoleon left his first island of exile, Elba, beginning the Hundred Days period when Napoleon returned to power. The historical setting is a fundamental element of the book, an adventure story centrally concerned with themes of hope, justice, vengeance, mercy, and forgiveness. It centers on a man who is wrongfully imprisoned, escapes from jail, acquires a fortune, and sets about exacting revenge on those responsible for his imprisonment.', '7.5/10', 'completed', '/images/lousi.jpg'),
(8, 'White Fang', 'Action, Novel', 'Jack London', 'White Fang is a novel by American author Jack London (1876–1916) — and the name of the book\'s eponymous character, a wild wolfdog. First serialized in Outing magazine between May and October 1906, it was published in book form in October 1906. The story details White Fang\'s journey to domestication in Yukon Territory and the Northwest Territories during the 1890s Klondike Gold Rush. It is a companion novel (and a thematic mirror) to London\'s best-known work, The Call of the Wild (1903), which is about a kidnapped, domesticated dog embracing his wild ancestry to survive and thrive in the wild.', '8/10', 'completed', '/images/whitefang.jpg'),
(9, 'Gintama', 'manga, action', 'Sorachi Hideaki ', 'Gintama là câu chuyện diễn ra ở Edo (được đổi tên thành Tokyo từ năm 1868), Nhật Bản, vào cuối thời Edo khi nơi này đang bị xâm lược bởi bọn người ngoài hành tinh được gọi chung là Amanto (天人あまんと (Thiên Nhân)?). Các samurai Nhật Bản đã chiến đấu chống lại Amanto nhưng thất bại, và Amanto ra lệnh cấm mang gươm ở nơi công cộng. Cốt truyện tập trung vào một samurai lập dị tên là Sakata Gintoki, người đã giúp chàng trai trẻ Shimura Shinpachi cứu chị gái cậu ta từ một nhóm người ngoài hành tinh muốn đưa cô vào kỹ viện. Bị ấn tượng bởi Gintoki, Shinpachi đã quyết định đi theo Gintoki để \"học cách trở thành một samurai\" và làm các công việc tự do cùng với anh ta để có thể trả tiền thuê nhà hàng tháng. Hai người bọn họ đã cứu một cô bé người ngoài hành tinh Yato tên là Kagura khỏi một nhóm Yakuza, những kẻ muốn lợi dụng sức mạnh siêu phàm của cô bé để giết người. Kagura đã nhập nhóm cùng Shinpachi và Gintoki, lập nên Vạn Sự Ốc Gin-chan. Trong khi thực hiện những công việc được thuê, họ đã đụng độ lực lượng cảnh sát Shinsengumi vài lần. Shinsengumi và họ đôi khi liên kết với nhau khi phải chống lại những tên tội phạm đặc biệt nguy hiểm. Họ cũng đã gặp gỡ nhưng đồng bọn cũ của Gintoki trong cuộc chiến chống lại Amanto trước đây, bao gồm chuyên gia khủng bố Katsura Kotarō – người vẫn giữ mối quan hệ bạn bè với họ cho dù tham vọng của anh ta là lật đổ chế độ Mạc Phủ, hay Takasugi Shinsuke – người đóng vai trò đối kháng trong suốt câu chuyện, muốn lật đổ Mạc Phủ bằng những cách thức tàn ác hơn so với Katsura.\r\n\r\nMặc dù Gintama là một tập hợp những mẩu chuyện ngắn, nhưng vẫn có một vài câu chuyện được phát triển dần dần qua nhiều chương tiếp nối nhau.', '9/10', 'completed', '/images/gintama2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `email`, `phone`, `address`) VALUES
(1, 'admin', 'admin1', 'admin', 'admin@gmail.com', '1234567', 'Thua Thien Hue');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
