-- drop database SkyBrands_WebNC
create database SkyBrands_WebNC
go
use SkyBrands_WebNC

create table [Admin]
(
	id int identity(1,1) primary key,
	username varchar(50),
	[password] varchar(50)
)

insert into [Admin](username, [password]) values('admin', 'admin')

create table Accounts
(
	id int identity(1,1) primary key,
	username varchar(50),
	[password] varchar(50),
	email varchar(100),
	phoneNumber int
)

create table Categories
(
	categoryId int identity(1,1) primary key,
	categoryName nvarchar(200),
)

create table PublishingCompany
(
	companyId int identity(1,1) primary key,
	companyName nvarchar(200),	
	companyImage varchar(max)
)

create table Books
(
	bookId varchar(10) primary key,
	bookName nvarchar(max),
	bookImage varchar(max),
	author nvarchar(200),
	price money,
	quantity int,
	publishingYear int,
	[language] nvarchar(100),
	numberPage int,
	form nvarchar(50),
	[weight] int,
	bookDescribe nvarchar(max),
	cid int foreign key references Categories(categoryId)
		on update
			cascade
		on delete
			cascade,
	pcid int foreign key references PublishingCompany(companyId)
		on update
			cascade
		on delete
			cascade
)

insert into Accounts(username, [password])
values
	('manhdao', '10062003'),
	('manod', '10062003'),
	('loser', '10062003')

insert into Categories(categoryName)
values
	(N'Skybooks'),
	(N'Skynovel'),
	(N'Skycomics'),
	(N'Skymommy'),
	(N'Sky Special'),
	(N'Tủ sách chữa lành'), --6
	(N'Tủ sách quý cô'),	--7
	(N'Tủ sách sống khác'),	--8
	(N'Deepbooks')

insert into PublishingCompany(companyName, companyImage)
values
	(N'NXB Dân Trí', 'nxb_dantri.png'),
	(N'NXB Giáo Dục', 'nxb_giaoduc.png'),
	(N'NXB Hà Nội', 'nxb_hanoi.png'),
	(N'NXB Kim Đồng', 'nxb_kimdong.png'),
	(N'NXB Phụ Nữ', 'nxb_phunu.png'),
	(N'NXB Thế Giới', 'nxb_thegioi.png'),
	(N'NXB Trẻ', 'nxb_tre.png')

--insert Skybooks
insert into Books(bookID, bookName, bookImage, author, price, quantity, publishingYear, [language], numberPage, form, [weight], bookDescribe, cid, pcid)
values
	('SKB0047', N'Khép Mi Lại Và Yêu', 'kmlvy.png', N'Summer Kat', 88000, 500, 2023, N'Tiếng Việt', 208, N'Bìa Mềm', 200, N'“Không phải lúc nào trao đi tình cảm thì đều sẽ nhận lại được theo cách chúng ta mong đợi, nhưng khoảnh khắc chúng ta biết mình tha thiết muốn ở bên một người, tôi nghĩ đó là hạnh phúc rồi.”
																																	Tuổi trẻ chính là chuỗi ngày ta học cách yêu, học cách từ bỏ, trưởng thành hơn sau mỗi lần tan vỡ và hiểu được giá trị của hạnh phúc từ những điều đến và đi.

																																	Trong “Khép mi lại và yêu”, tác giả Summer Kat sẽ chiếu một “bộ phim” về tình yêu, về thứ cảm xúc mà chúng ta ít nhiều đều sẽ trải qua một lần trong đời.

																																	Trong bộ phim đó,

																																	Có những cảnh phim chúng ta muốn gìn giữ, như khoảnh khắc lần đầu rung động, lần đầu biết nhớ mong, hay lần đầu muốn gắn bó với một ai đó mãi mãi…

																																	Nhưng cũng có những cảnh phim khiến chúng ta đau lòng đến mức không dám nhìn lại, như cái lần ta cố chấp níu kéo một người không còn thương mình, ta vỡ tan những mộng tưởng mình tự xây, ta đối mặt với chia ly hay những ngày ta đứng giữa sân ga, chọn đại một địa điểm để chạy trốn khỏi thực tại.

																																	Những ngày tháng ấy, dù ngây dại, dù khó nắm bắt là thế, nhưng nếu hỏi có muốn xóa đi một phân cảnh nào đó không thì có lẽ câu trả lời là không. Có những điều mà chúng ta sẽ không thể nếm trải lần thứ hai trong đời, và yêu điên cuồng một người trong độ tuổi đôi mươi chính là một điều như vậy.

																																	Mỗi người sẽ có một cách riêng để nhấm nháp tuổi trẻ của mình, và tình yêu của mỗi người cũng chẳng ai giống ai. Nhưng ai cũng sẽ đôi lần phải trải qua mất mát và những cuộc chia ly… Để rồi sau những ngày tháng đó, chúng ta lại tìm cách học quen với một thành phố mới, bắt đầu với những điều mới, và tình yêu sẽ luôn có cách tìm về với mỗi người.

																																	“Khép mi lại và yêu” cho bạn dũng khí để viết tiếp một hành trình yêu mới của riêng mình. Chúng ta có thể không lựa chọn được những ai sẽ xuất hiện trong đời mình, ta cũng sẽ không biết ngày mai mình có phải lòng một ai đó không, không biết mình có thể yêu lần nữa sau những mất mát trong quá khứ không, không biết người ta yêu có khiến ta đau đớn hay không, nhưng hãy cứ bắt đầu. Bởi "thà yêu và lạc lối trong tình yêu còn hơn không bao giờ biết yêu.” (Ernest Hemingway)

																																	Mong bạn có thể khép lại những điều đã cũ, khép lại những tổn thương sâu, “khép mi lại và yêu” một ai đó mãnh liệt như lần đầu bạn biết yêu.', 1, 1),

	('SKB0046', N'Những Em Bé Đang Lớn', 'nebdl.png', N'Làn', 105000, 500, 2023, N'Tiếng Việt', 272, N'Bìa Mềm', 300, N'“Những em bé đang lớn” là chương tiếp theo của “Lê la từ nhà ra ngõ”, một chương mới về cuộc đời của Làn với những câu chuyện đi sâu hơn vào đời sống, những câu chuyện có thể khiến bạn cười nhưng đồng thời cũng có thể làm bạn bật khóc.

																																Sách gồm các phần: Trẻ con - Trẻ con tập lớn - Người lớn - Ai cũng là người lớn - Ai cũng là trẻ con. Đọc tiêu đề mỗi phần cũng có thể hình dung qua về cuốn sách dễ thương này.

																																Tất cả chúng ta đều là những đứa trẻ mộng mơ trước khi trở thành một người lớn chín chắn, trưởng thành. Và mỗi người lớn đều là “trẻ con” với một ai đó. Như cách bạn luôn là “trẻ con” với bố mẹ, như cách bố mẹ vẫn là “trẻ con” với các bác trong nhà, và như cách các bác vẫn luôn là “con trẻ” trong mắt của ông bà.

																																Chúng ta, ai cũng từng là những đứa trẻ. Và những đứa trẻ, bao giờ cũng sẽ có những câu chuyện để nhớ về…

																																Những đứa trẻ đó có thể từng là những đứa trẻ hư, từng mắc không ít sai lầm, từng nói dối, cũng có thể từng nghịch ngợm. Những đứa trẻ đó có thể đủ đầy tình cảm gia đình, cũng có thể thiếu thốn tình thương, cũng có thể không được thương yêu đúng cách.

																																Nhưng, không phải đứa trẻ hư nào lớn lên cũng sẽ trở thành một người lớn tồi. Đời sống chúng ta là tổ hợp của gia đình, bạn bè, trường lớp, của các mối quan hệ xã hội khác nhau. Đứa trẻ sẽ vấp ngã, sẽ gặp những người xấu, nhưng đồng thời có thể tự trưởng thành sau mỗi cú ngã và sẽ được học, được an ủi bởi những người đẹp đẽ và giàu tình yêu thương.

																																Hiện tại dù đang ở đội tuổi mười mấy đôi mươi, hay ba mươi bốn mươi năm mươi… thì chúng ta vẫn luôn “lớn lên” mỗi ngày bằng một cách nào đó. Con cái lớn lên khi biết tự lập, bố mẹ lớn lên khi biết để con rời xa mình và theo đuổi điều con thực sự thuộc về… Chúng ta đều là những “đứa trẻ” đang học lớn, nhưng cũng là những “người lớn” đối với một ai đó trong cuộc đời này.

																																Hy vọng những câu chuyện nhỏ xinh trong “Những em bé đang lớn” có thể mang đến cho bạn một góc nhìn dễ thương về cuộc đời, nơi những đứa bé tập lớn, nơi những người lớn được làm trẻ con, nơi chúng ta ai cũng sẽ là một phần quan trọng trong cuộc đời của một người nào đó.

																																“Những em bé đang lớn” - Mong bạn có thể sảng khoái làm người trưởng thành, nhưng cũng có thể hồn nhiên trở về làm trẻ nhỏ.', 1, 5),
	
	('SKB0045', N'Hôm Nay Thương Nhớ Rơi Vỡ Lòng Ai', 'hntnrvla.png', N'A Tòn', 98000, 500, 2023, N'Tiếng Việt', 208, N'Bìa Mềm', 212, N'Bạn có bao nhiêu vết thương trên người, bạn đếm thử xem?

																																				Bạn có bao nhiêu vết thương trong lòng, bạn đếm được không?

																																				Có phải chúng ta đều đếm được những vết thương trên da nhưng lại chẳng đếm xuể những vết thương trong tim?

																																				“Hôm nay thương nhớ rơi vỡ lòng ai” của tác giả A Tòn đã điểm lại những vết thương đó, những vết thương không thể chạm vào nhưng lại có thể cảm nhận được…

																																				- Vết thương gây ra bởi sự buông tay của người cũ, khi trong lòng bạn vẫn còn yêu

																																				- Vết thương chất chồng qua những đêm nhớ mong kỷ niệm xưa

																																				- Vết thương khi phát hiện ra tình cảm của mình trao đi quá lớn mà nhận lại chẳng bao nhiêu

																																				- Vết thương khi chấp nhận sự thật rằng, mình chỉ quá khứ với những người mình từng hết lòng yêu thương…

																																				A Tòn kéo bạn đi qua những nỗi buồn, đồng cảm với những vụn vỡ của bạn. Để bạn hiểu nỗi buồn có sức tàn phá đáng sợ thật đấy, song nỗi buồn cũng thật đẹp. Con người ta chẳng phải sẽ vụt trưởng thành sau những đêm tan vỡ hay sao?

																																				Đừng chối bỏ hay trốn chạy khỏi những nỗi đau của mình, hãy ngồi xuống đối mặt với nó. Bạn có thể khóc, bạn có thể thét gào, nhưng xin bạn đừng có quên nó đi. Bởi những điều cố gắng để quên thường sẽ chẳng thể quên nhanh được. Hãy hiểu đó là một phần của mình, là những xúc cảm đã tạo nên bạn của hiện tại. Khi bạn có thể bình thản đối mặt với tất cả những điều đã qua, có thể khép lại những điều đã cũ cũng là khi một khởi đầu mới sẽ nở ra trong trái tim bạn.

																																				“Hôm nay thương nhớ rơi vỡ lòng ai”- Mong bạn dù đi qua năm tháng vẫn tin tưởng vào những điều đẹp đẽ xảy ra trong đời.', 1, 5),
	
	('SKB0044', N'Phía Sau Cỗ Torii - Lạc Bước Thanh Xuân', 'psct.png', N'sontungst', 180000, 500, 2023, N'Tiếng Việt', 264, N'Bìa Mềm', 300, N'“Phía sau cỗ torii - Lạc bước thanh xuân” là hành trình của một “gã trai” đi khám phá nước Nhật trong suốt 1600 ngày.

																																						Đặt chân đến Nhật Bản khi còn là một du học sinh lạ lẫm với tất cả mọi thứ tại vùng đất này và rời đi khi Nhật Bản đã trở thành quê hương thứ 2, chuyến đi của sontungst - tác giả cuốn sách sẽ trở thành nguồn cảm hứng mãnh liệt cho những người trẻ ưa trải nghiệm và có niềm yêu thích với xứ sở hoa anh đào.

																																						Nhật Bản dưới góc nhìn của sontungst, có xấu có đẹp, có ảm đạm có rực rỡ, anh không tô hồng hay phóng đại mà kể lại nó một cách rất thực và rất đời. Với hơn 100 bức hình do mình tự chụp, nước Nhật cứ như thế hiện hiện rõ nét và sống động qua mỗi trang sách.

																																						Có những hôm anh chen chúc nhau trong chuyến tàu đông đúc tại Tokyo, bị miệt thị bị hiểu lầm, bị cuốn phăng đi trong nhịp sống hối hả tại nơi đây, hay những ngày cô độc đến nghẹt thở trên đất người, lạc lõng chênh chao giữa thành phố triệu dân…

																																						Nhưng cũng có những hôm anh được “chữa lành” kỳ diệu bởi cảnh sắc núi Phú Sĩ đẹp tới ná thở, bởi những người hàng xóm đáng mến trong khu phố nhỏ Niigata, bởi tô ramen nghi ngút khói hay bởi những người bạn từ lạ thành quen…

																																						Hành trình của sontungst tại Nhật đôi lúc sẽ có bạn đồng hành, đôi lúc sẽ đi một mình, có những ngày đẹp trời nhưng cũng có những ngày mưa giông bão bùng… Nhưng tất cả những điều đó không cản trở anh rong ruổi trên những cung đường tại các thành phố lớn nhỏ. Sontungst đặt chân lên từng ngóc ngách, in bóng trên những cung đường núi gập ghềnh hay nép mình trước vẻ đẹp của thiên nhiên hùng vĩ.

																																						Có những trang sách mà bạn đọc sẽ dở khóc dở cười trước câu chuyện anh bị lợn rừng chặn xe, hay trải nghiệm hết xăng phải dắt bộ giữa đường núi… để từ đó anh có những đúc kết và trải lòng đầy cảm xúc trong “Phía sau cỗ torii”.

																																						Những chuyến đi cho chúng ta rất nhiều thứ, mà có lẽ nhiều nhất là sự trưởng thành!

																																						Khởi đầu có thể bạn chưa biết mình là ai, nhưng tôi tin rằng cứ đi rồi sẽ đến. Bạn sẽ biết đâu là nơi mình thuộc về.

																																						“Phía sau cỗ torii - Lạc bước thanh xuân” không đơn thuần chỉ là một cuốn sách du ký của một chàng trai trẻ khám phá phong cảnh và văn hóa Nhật Bản trong 1600 ngày, đó còn là những trang viết đánh thức cảm hứng đi và sống hết mình trong mỗi con người.', 1, 1),
	
	('SKB0043', N'Tôi Đang Sống Cuộc Đời Tuyệt Vời Nhất', 'tdscdtvn.png', N'Hanfu', 88000, 500, 2023, N'Tiếng Việt', 208, N'Bìa Mềm', 250, N'“Tôi đang sống cuộc đời tuyệt vời nhất” của Hanfu là hành trình tỉnh thức và học yêu bản thân đúng cách của một cô gái từng mang trong mình nhiều tổn thương chưa được chữa lành.

																																						Với những mẩu chuyện nhỏ nằm trong 4 phần chính của cuốn sách (lặn sâu, lực đẩy, nổi lên và trong dòng chảy), mỗi phần sẽ đưa bạn đi theo từng chặng hành trình quay trở về bên trong để cùng đối thoại, gỡ rối, tha thứ và tái sinh cho những “vết nứt” của bạn.

																																						Có thể hành trình này sẽ có khó khăn vì chúng ta phải đối mặt với những phần tối bên trong mình và gặp lại những tổn thương xưa cũ. Nhưng với những chia sẻ qua đúc kết của Hanfu về cách kết nối với Vũ trụ, kết nối với Higher self, cân bằng tính nam và tính nữ… sẽ giúp bạn có có thể bắt đầu và kiên trì với hành trình chữa lành cho tới khi có kết quả tốt đẹp.

																																						Trên chặng đường này, Hanfu muốn nhắn nhủ với bạn rằng:

																																						- Hạnh phúc không phải là một đích đến mà là một hành trình.

																																						- Hãy buông bỏ những gì thuộc về quá khứ, toàn tâm toàn ý chúc phúc lành cho nhau với tất cả lòng biết ơn.

																																						- Đừng trốn tránh bóng tối khi bạn buộc phải bước qua nó để tiến về phía ánh sáng. Sau chừng ấy thời gian, bài học lớn nhất vẫn là thành thật với bản thân.

																																						Mong rằng “Tôi đang sống cuộc đời tuyệt vời nhất” có thể xoa dịu một vài vết thương cũ, để nó được trở thành một người bạn kiệm lời, gửi lời an ủi đến bạn theo cách dịu dàng nhất, để bạn có thêm động lực, mỗi khi cần sự động viên có thể tùy ý lật ra một trang sách bất kỳ và được tiếp thêm lửa để tiếp tục cuộc hành trình của riêng mình.', 1, 5),
	
	('SKB0042', N'Giá Như Thế Gian Này Ai Cũng Chân Thật', 'gntgnacct.png', N'Brianna Wiest', 94000, 500, 2022, N'Tiếng Việt', 224, N'Bìa Mềm', 250, N'“Ánh sáng lọt qua từ những rạn nứt trong đời.”

																																								Đó là chiêm nghiệm của Brianna Wiest - một tác giả nổi tiếng của Thought Catalog -  trong cuốn sách “Giá như thế gian này ai cũng chân thật”.

																																								Brianna là cô gái đã từng trải qua tan vỡ, đã vượt qua và dạn dĩ trưởng thành từ những nỗi đau.

																																								Để trở thành phiên bản “một người lớn hạnh phúc” như hiện tại, cô gái ấy đã đánh đổi nhiều thứ trong đời…

																																								ĐÁNH ĐỔI những đêm thao thức, ám ảnh bởi những điều chưa “hoàn hảo” của bản thân, để chấp nhận rằng đó là điều hiển nhiên của Vũ Trụ và của tất cả những sinh linh đang tồn tại trong nó. Từ đó đạt tới trạng thái yên bình trong tâm trí.

																																								ĐÁNH ĐỔI những mối quan hệ dù thân thiết nhưng độc hại, để hiểu được rằng yêu chính mình là biết cố gắng vì những điều tốt đẹp và biết buông bỏ những con người, sự vật, hoài niệm khiến mình tổn thương.

																																								ĐÁNH ĐỔI những lần thất bại để tìm được một công việc phù hợp và đạt tới một trạng thái lạc quan, luôn trân trọng mọi điều xảy ra trong đời mình, dù tốt hay xấu.

																																								Chúng ta, những người trẻ đang vật lộn với những vấn đề riêng của mình đều sẽ được truyền cảm hứng từ những cố gắng của Brianna.

																																								Không chỉ chia sẻ những trải nghiệm của bản thân khi đối mặt với những vấn đề của cuộc sống, Brianna trong “Giá như thế gian này ai cũng chân thật” còn gây ấn tượng bởi hành trình “tỉnh thức tâm linh”. Đó là điều mà tôi, bạn, gia đình chúng ta hoặc bất kỳ ai đều có thể sẽ trải qua. Nếu nó đã xảy ra với bạn, tôi cảm thấy rất mừng cho bạn. Còn nếu điều đó chưa đến, thì mong rằng bạn trang bị cho mình một tâm trí mở rộng, một tâm thái lạc quan, và một tâm hồn tĩnh lặng để đón nhận tất cả những màu nhiệm sẽ xảy đến trong cuộc đời.

																																								“Giá như thế gian này ai cũng chân thật” - Hy vọng bạn sống trọn vẹn từng phút giây, không nhớ mong quá khứ, không ám ảnh bởi tương lai và tận hưởng hiện tại ở trạng thái tốt đẹp nhất.', 1, 1),
	
	('SKB0041', N'Bên Rìa Cơn Mơ', 'brcm.png', N'Monologue', 88000, 500, 2022, N'Tiếng Việt', 264, N'Bìa Mềm', 300, N'Có phải mạnh mẽ bao giờ cũng là tốt và yếu đuối thì là xấu?

																															Có phải mỉm cười bao giờ cũng là vui và rơi nước mắt là sẽ buồn?

																															Có phải một cuộc đời bằng phẳng sẽ tuyệt hơn là một hành trình nhiều chông gai?

																															…

																															Chúng ta sẽ chẳng thể biết đâu là phải trái đúng sai nếu luôn nhìn từ lăng kính của người bên rìa, chúng ta sẽ thật sự chẳng thể “thấu” một ai nếu không thử sống cuộc đời của họ, nếm những cảm xúc họ trải qua và đi trên những cung đường họ từng rảo bước.

																															“Bên rìa cơn mơ” của Monologue sẽ lật mở những câu chuyện mà có thể bạn bè, người yêu và những người thân thương của bạn đang giấu kín. Là cầu nối để bước vào thế giới của những người trẻ cô độc - Những người chằng chịt vết thương lòng đang cố gắng để yêu thế giới, dù chỉ thêm một chút, cho mỗi ngày.

																															Lật mỗi trang sách, bạn hiểu được sâu trong dáng vẻ tươi cười của một người có thể là một nội tâm vụn vỡ, ẩn sau nét rạng rỡ là nỗ lực hàng đêm để không làm tổn hại chính mình. 

																															Nếu bạn là một người trẻ cô đơn, hoặc bên cạnh bạn có ít nhất một người như vậy:

																															- Mong bạn có thể trân trọng những thương yêu bình dị quanh mình

																															- Mong bạn có thể nán lại một chút, dù chỉ thêm 1 phút cạnh những ai đang tổn thương

																															- Và mong bạn đủ kiên nhẫn để đợi những điều tốt đẹp xuất hiện

																															Khép lại “Bên rìa cơn mơ” với đội ngũ tác giả Daf, R, Cam, Maris và Macmart, dù bạn là ai cũng hy vọng bạn được ủi an và thấu hiểu. Và quan trọng hơn cả, nếu thế giới không thương bạn cũng mong bạn có thể thương lấy chính mình.', 1, 5),
	
	('SKB0040', N'Một Chỗ Ở Quầy Bar', 'mcoqb.png', N'Trịnh Nam Trân', 84000, 500, 2022, N'Tiếng Việt', 184, N'Bìa Mềm', 200, N'“Em phải làm sao với cơn say nóng hổi?

																																		Chiều chỉ nghiêng ngả mà lòng dậy phong ba

																																		Anh ở rất xa, anh đâu thể là gió

																																		Đâu thể mỗi chiều ôm ấp giấc mộng hoa.”

																																		Những dòng thơ da diết đánh dấu sự quay trở lại của nàng thơ Trịnh Nam Trân vào một ngày đông lạnh. Trân đưa bạn lạc vào một “quầy bar”, nơi cô nhẹ nhàng “mời bạn một ly vang tình” để một lần được say mèm trong men hơi yêu thương.

																																		Cuốn sách mang nặng tâm tư của Trân về một đoạn tình dang dở, khi cả hai trái tim nhiệt thành đốt cháy nhau bằng tình yêu. Những vần thơ của Trân vẫn lãng mạn, nữ tính như con người cô đã từng, song trong đó bạn thấy vương lại một gam màu trầm buồn sâu lắng hơn. Tình yêu qua những trang sách của Nam Trân luôn thật đẹp, thật quyến rũ nhưng cũng rất con người. Lặng lẽ quan sát dòng cảm xúc trong “Ở một quầy bar”, bạn nhận ra nỗi buồn, sự chia ly mang một dư vị ngọt ngào đến lạ, để rồi sau bao nhiêu trăn trở được và mất, bạn vẫn tiến về phía trước, tìm kiếm tình yêu với bao chấp niệm hạnh phúc chỉ mình bạn tỏ tường.

																																		“Một cơn say chuếnh choáng

																																		Một ngày tàn ngả nghiêng

																																		Bên đời nhau một thoáng

																																		Về lại vùng trời riêng”

																																		“Một chỗ ở quầy bar” còn chứa đựng các mẩu chuyện tình đậm nét hiện thực đơn giản đến ngỡ ngàng. Vẽ ra trước mắt bạn vài thời điểm trong cuộc đời, khi bạn đã học được cách quên một người từng yêu và rồi cũng bị xóa nhòa trong tâm trí họ. 

																																		Điều đặc biệt được Trịnh Nam Trân gửi tặng ở phần cuối cuốn sách là cả một chương tản văn tâm tình dành riêng cho những độc giả trẻ tuổi của cô và là sự vỗ về dành cho chính cô - một người đã đi qua tuổi trẻ. Bạn sẽ thấy ở đó cả một tuổi trẻ với sự nhiệt huyết sục sôi, là những tháng ngày không sợ hãi, sống với hoài bão cháy bỏng và cả tình yêu nữa. Để khi khép lại các trang sách, bạn hiểu rõ tình yêu là những điều tuyệt vời, đồng thời cũng lấy đi của bạn muôn vàn thứ quý giá. Nhưng mong bạn sẵn sàng đón nhận tất cả mọi tổn thương, để trưởng thành và mỉm cười với tất cả những gì bạn từng có, từng mất đi!

																																		Hãy cho mình một lần được tự do đắm chìm trong men say tình yêu, bạn nhé!', 1, 5),
	
	('SKB0039', N'Và Sao Không Thể Hết Yêu Em?', 'vskthye.png', N'	Nhiều Tác Giả Từ Group Thìa Đầy Thơ', 88000, 500, 2022, N'Tiếng Việt', 168, N'Bìa Mềm', 200, N'Nếu “Thương” của Thìa Đầy Thơ đã khơi dậy những xúc cảm trong lòng bạn theo một cách rất riêng: nhẹ nhàng, lắng đọng và đầy tinh tế thì trong “Và sao không thể hết yêu em” (Thương 2), Thìa Đầy Thơ sẽ cùng bạn đi qua những ngông cuồng, xốc nổi của tuổi trẻ đến ngày có được sự trầm ổn và sâu lắng khi đã trưởng thành.

																																										“Và sao không thể hết yêu em?” dẫn bạn vào một không gian với đầy đủ màu sắc và cung bậc cảm xúc, nơi đó có…

																																										Một tình yêu âm ỉ qua năm tháng chẳng thể bật thành câu,

																																										Một tình yêu mới chớm nở, nhưng đã lụi tàn,

																																										Một tình yêu dung dị nắm tay nhau đi khắp nhân gian,

																																										Hay một tình yêu rộng ra từ trái tim ta, như tình yêu dành cho cái ôm của mẹ đùm bọc ta thuở còn thơ bé...

																																										“Và sao không thể hết yêu em?” không có bóng dáng của một nhân vật nhất định, không gò bó về hình thức thể hiện, song đó lại là một tập thơ rất tình, ngẫu hứng và cũng cũng dạt dào xúc cảm.

																																										Với những sáng tác nổi bật nhất của Thìa Đầy Thơ - Thế hệ những tác giả trẻ luôn giữ gìn và sáng tạo Tiếng Việt, tập thơ “Thương 2” sẽ giúp bạn gạt bỏ những định kiến trong tình yêu, sẵn sàng mở lòng để bắt đầu một hành trình yêu mang đậm dấu ấn cá nhân của bạn.

																																										Gấp lại “Và sao không thể hết yêu em?”, mong bạn dù ở độ tuổi nào, trong giai đoạn nào của cuộc đời cũng sẽ cảm thấy trái tim mình được ấp ôm và vỗ về.

																																										“Bao giờ dương xỉ có hoa,

																																										Rau muống làm nhà, gỗ nghiến làm nem

																																										Bao giờ cho nắng về đêm,

																																										Cho mưa rơi ngược thì em xa mình…”', 1, 5),
	
	('SKB0038', N'Chắc Gì Ta Đã Yêu Nhau (Tái Bản 2022)', 'cgtdyn_remake2022.png', N'Minh Nhật', 88000, 500, 2022, N'Tiếng Việt', 200, N'Bìa Mềm', 220, N'Ngày ấy… người có yêu ta?

																																								Cuộc đời này, có những khoảng trống sinh ra không phải để lấp đầy, giống như em trong những ngày hanh hao đột nhiên thấy lòng mình hoài nghi nhiều.

																																								Như Lê Cát Trọng Lý từng gọi nó là những “hoang mang cần thiết” em cần có để biết trái tim còn biết rung động, biết đau và biết yêu.

																																								Những ngày như thế, hẳn đã có lúc em quay đầu nhìn lại đoạn đường dài em từng bước ngày xưa. Những con người từng lướt qua đời, những cái chạm tay từng ủ đầy hơi ấm, những môi hôn ngọt ngào hay những lần đôi mắt ướt đẫm nỗi đau,… có khi nào em tự hỏi chính mình: Chuyện cũ người xưa có thật sự đúng là tình yêu hay không?

																																								Nếu có những ngày trong đời, lòng em băn khoăn điều ấy, thì cuốn tản văn của Minh Nhật – CHẮC GÌ TA ĐÃ YÊU NHAU sẽ giúp em tìm được đáp án cho những khúc mắc mà bấy lâu em vẫn giữ riêng mình.

																																								Không phải là chuyện tình trong đôi mắt màu hồng của cô gái mới 18, đôi mươi, cũng không phải là suy nghĩ hiếu thắng, thích khẳng định mình của những chàng thanh niên đang lớn mới chập chững vào đời. Càng không phải những câu chuyện tình đắm say, nồng nhiệt đầy miên man cũng đầy bồng bột của tuổi trẻ.

																																								Đọc những câu chuyện mà tác giả Minh Nhật viết em sẽ hiểu ra rằng:

																																								Có những lần em ngoảnh đầu nhìn lại quá khứ, không phải là để rạch ròi phân bua đúng – sai chuyện cũ, hay hờn trách oán hận người xưa.

																																								Nếu chẳng đủ thương nhau ta chắc gì đã nắm tay nhau được từng ấy tháng năm?

																																								Nếu chẳng đủ vì nhau ta chắc gì đã dành được cho nhau những cái ôm chặt đến vậy, những cái hôn sâu đến thế?

																																								Chỉ là một hôm, em nhìn lại.

																																								Em nhìn lại, sau cùng, là để biết ơn

																																								Bởi dù là yêu, là thương, hay chỉ là một thoáng trái tim trót cảm nắng, thì điều quan trọng nhất vẫn là người đã khiến tim em rung lên. Những xúc cảm đa dạng thành hình trong em, giúp em mạnh mẽ, trưởng thành hơn mỗi ngày. Vì thế, có thể không chắc chúng ta đã yêu nhau. Nhưng chắc chắn, chúng ta cần biết ơn nhau, vì đã là một điểm nối trong đời, dù ngắn ngủi hay dài lâu.

																																								Tôi chỉ mong em đọc cuốn sách này để một mai gặp lại người, em sẽ thôi hỏi:

																																								Ngày ấy… anh có thật yêu em không?', 1, 5),
	
	('SKB0037', N'Bạn Không Chỉ Sống Một Lần', 'bkcsml.png', N'Triết Học Đường Phố 2.0', 98000, 500, 2022, N'Tiếng Việt', 240, N'Bìa Mềm', 250, N'Cuốn sách “Bạn không chỉ sống một lần” nằm trong bộ sách gồm 2 tập (“Bạn sẽ sống mấy lần?” và “Bạn không chỉ sống một lần”) của Triết Học Đường Phố 2.0 sẽ giúp bạn tìm thấy câu trả lời cho mình về bài học buông bỏ lòng tham, lòng đố kỵ đối với kẻ khác, sự hằn học khi bị cuộc đời trêu đùa.

																																						Con đường của “Bạn không chỉ sống một lần” cho bạn biết được nửa còn lại của những thắc mắc trong lòng nhưng không mang góc nhìn màu hồng ảo tưởng về cuộc đời. Cuốn sách giúp bạn nhận ra một tâm hồn lạc quan cũng có thể chứa đựng những vết sẹo của sự tổn thương, ẩn sau một lối sống tự do là trách nhiệm cá nhân, ẩn sau sự thành công là những thử nghiệm thất bại và ẩn sau ngôi nhà ở nơi “thiên đường” là những cái giá mà một người sẵn sàng phải trả. Để chân thành yêu thương thế giới, bạn phải học cách chữa lành và thấu hiểu chính mình, bạn cần có thời gian để đi sâu và lắng nghe tiếng nói nội tại đang vang vọng trong tiềm thức của bạn. Cuộc sống càng nhiều kích thích, một người sẽ càng trở nên yếu ớt và mệt mỏi.

																																						“Bạn không chỉ sống một lần” đưa ra các góc nhìn mới lạ của những nhà tâm lý học, nhà nghiên cứu nổi tiếng và các tu sĩ nổi tiếng thế giới, giúp bạn tiếp cận những kiến thức khoa học song hành cùng thế giới tâm linh dưới nhiều quan điểm khác nhau. Dẫn lối cho bạn nhận biết con đường tâm linh đúng đắn, hiểu và biết cách sử dụng Luật Hấp Dẫn để chuyển hóa năng lượng hạnh phúc bên trong mình.

																																						Từ đó, bạn nhận ra đừng mong cầu thế giới sẽ an ủi và làm hài lòng bạn, cũng đừng tìm kiếm năng lượng hay hạnh phúc ở bên ngoài xa xôi, hãy dành thời gian để ngắm nhìn nó ở bên trong chính mình. Dựa vào năng lượng nội tại của bạn. Và cội nguồn hạnh phúc không ở đâu xa ngoài trái tim.', 1, 5),
	
	('SKB0036', N'Bạn Sẽ Sống Mấy Lần?', 'bssml.png', N'Triết Học Đường Phố 2.0', 89000, 500, 2022, N'Tiếng Việt', 208, N'Bìa Mềm', 250, N'Bạn có đang thật sự kiểm soát được tâm trí của chính mình không?

																																				Hay tâm trí của bạn đã bị lập trình bởi văn hóa, tập thể, truyền thông, giải trí, tiêu thụ?

																																				Cuốn sách “Bạn sẽ sống mấy lần?” nằm trong bộ sách gồm 2 tập (“Bạn sẽ sống mấy lần?” và “Bạn không chỉ sống một lần”) của Triết Học Đường Phố 2.0 sẽ giải đáp những khía cạnh mà có thể bạn đã từng trải qua trong cuộc sống nhưng không thể định nghĩa được nó.

																																				“Bạn sẽ sống mấy lần?” vẽ ra một vòng tròn hợp lý hóa mọi thứ bạn làm, bạn nghĩ và cho bạn cái nhìn chân thật về hành vi của bản thân trước những vấn đề xã hội. Bạn luôn bị trói buộc vào sự tồn tại của chính mình. Đôi khi bạn tự tạo cho mình những gánh nặng để chạy đua theo một chuẩn mực xa vời, ngụy biện hay tự lừa dối bản thân để vừa lòng thiên hạ.

																																				Khi gấp lại những trang sách, bạn biết rằng đã đến lúc phải làm chủ con thuyền của đời mình, biết chọn lọc những gì mình sẽ mang theo. 

																																				Cuốn sách còn được lồng ghép quan điểm của các nhà nghiên cứu cổ xưa, nhà hiền triết và tu sĩ nổi tiếng,… nhằm đưa ra góc nhìn đa chiều về các mâu thuẫn trong tâm trí con người và xã hội. Từ đó bạn chúng ta có thể buông bỏ lòng tham, lòng đố kỵ đối với kẻ khác, sự hằn học khi bị cuộc đời trêu đùa. Giữ lại trong tim một chút tình yêu không bi lụy, một chút thản nhiên không vô cảm, một chút thứ tha, bao dung… cuộc sống nhẹ nhàng hơn bao giờ hết.

																																				Thông qua góc nhìn của Triết Học Đường Phố 2.0, bạn cảm nhận được tất cả những gì bạn có thể đọc tên, nhìn thấy, sử dụng như cơ thể, xúc cảm, tâm trí, nghề nghiệp... để hiểu rõ hơn về Cội Nguồn hay tìm hiểu về bản chất của chính mình, đi qua cột mốc cơ thể một cách gần gũi. Từ đó, bạn sẽ tìm được nguồn năng lượng thực sự để phát triển bản thân tốt nhất là đến từ ý thức và bình an nội tâm.', 1, 5),
	
	('SKB0035', N'Mỗi Ngày Gửi Cậu Một Cái Ôm', 'mngcmco.png', N'Là Trang', 129000, 500, 2022, N'Tiếng Việt', 256, N'Bìa Mềm', 300, N'Bạn có biết 108 là con số huyền bí và quyền năng nhất Hệ Mặt Trời không? số 108 tượng trưng cho 108 phiền não của con người - những sự vật, sự việc và cảm xúc dày vò tâm trí và thể xác của chúng ta, cản trở chúng ta sống một cuộc đời hạnh phúc, yên an.

																																			Vẫn là con số 108 đó, cuốn sách đầu tay của tác giả Là Trang - “Mỗi ngày gửi cậu một cái ôm” chứa đựng 108 lá thư với 108 thông điệp dễ thương dành cho tất cả mọi người, những ai đang trăn trở và bị ám ảnh bởi những muộn phiền trong cuộc sống sẽ cảm thấy được ủi an và tiếp thêm động lực để bước tiếp.

																																			“Mỗi ngày gửi cậu một cái ôm” mong bạn là phiên bản hạnh phúc hơn chính mình của ngày hôm qua.

																																			“Mỗi ngày gửi cậu một cái ôm” mong bạn không dằn vặt bởi quá khứ, không áp lực bởi điều chưa xảy đến trong tương lai và sống trọn vẹn từng khoảnh khắc của hiện tại.

																																			“Mỗi ngày gửi cậu một cái ôm” mong bạn yêu thương mình trong những lúc rực rỡ nhất, nhưng cũng không quên vỗ về mình trong những phút giây vụn vỡ, hãy trân trọng mọi cảm xúc của bản thân dù đó có là tích cực hay tiêu cực.
																																			….

																																			Với vỏn vẹn 256 trang sách, Là Trang chia sẻ những thông điệp và góc nhìn thú vị về tình yêu, gia đình, học tập, ước mơ, tất tần tật những gì khiến chúng mình bận tâm và băn khoăn. Hy vọng bạn trong những lúc chênh vênh nhất sẽ được cổ vũ và động viên bằng “một cái ôm” nhẹ nhàng nhưng chất chứa nhiều dịu dàng, thấu cảm và yêu thương.', 1, 5),
	
	('SKB0034', N'Trái Tim Còn Cháy Và Tay Còn Cầm', 'ttccvtcc.png', N'SangSang', 88000, 500, 2022, N'Tiếng Việt', 216, N'Bìa Mềm', 250, N'Trái Tim Còn Cháy Và Tay Còn Cầm là một thước phim tuyệt đẹp về tình yêu.

																																					Đôi lúc dữ dội…
																																					“vẫn là em tự mình ôm lấy
																																					ngổn ngang và thổn thức xót xa
																																					xót xa dẫu thế vậy mà
																																					dẫu từ một phía… cũng là tình yêu”

																																					Đôi lúc lại dịu êm…
																																					“sẽ có những ngày ta mỏi mệt
																																					chỉ mong người đó ở cạnh bên
																																					ngồi xếp bằng đùi cho thẳng thớm
																																					để mình ngã xuống gối đầu lên”

																																					Tác giả sangsang cùng những giai điệu thơ tâm tình sẽ cùng bạn gợi lên những rạo rực thuở mới yêu, đôi lần khắc khoải trong nhung nhớ, một vài buổi bâng khuâng hết nắm rồi lại buông. Và sau cuối, sẽ cùng bạn tìm ra câu trả lời cho xúc cảm của mình.

																																					Đọc Trái Tim Còn Cháy Và Tay Còn Cầm như đang nằm nép mình trong một căn phòng êm ái. Nơi ta được thả trôi cảm xúc bên trong. Được bật khóc, được mỉm cười, được cho nỗi nhớ tràn ra và chạm vào bóng dáng mỗi đêm ta nhớ mong.

																																					Ta hiểu yêu là nắm lấy, nhưng biết buông đúng lúc cũng là yêu
																																					Ta hiểu ngọt ngào - đắm say là yêu, nhưng đắng cay - khắc khoải cũng là yêu
																																					Yêu có muôn vàn dáng vẻ đó, nhưng yêu cũng thu nhỏ vừa đủ bằng dáng vẻ của 1 người…

																																					Mọi sắc thái trong tình ái đều được cô đọng trong Trái Tim Còn Cháy Và Tay Còn Cầm, tập thơ tựa một giấc mộng hè êm ái mà bất cứ ai cũng mong muốn được mơ một lần trong đời.

																																					Nguyện cầu cho tất cả chúng ta, dù đi qua bốn mùa mưa nắng vẫn được cạnh bên người nuôi dưỡng ngọn lửa tình trong trái tim của mình.', 1, 5),
	
	('SKB0033', N'Mặt Trời Trong Suối Lạnh', 'mttsl.png', N'Nguyễn Phương Văn', 83000, 500, 2022, N'Tiếng Việt', 160, N'Bìa Mềm', 200, N'“Mặt trời trong suối lạnh” - lạc lõng, cô độc và khát khao thấu hiểu đến thế!

																																				Nguyễn Phương Văn đã hoá thân xuất thần vào các nhân vật trong chuyện của mình, vào Sanh, Giang, Li, Quyên, Di… khiến họ bứt mình bước ra khỏi trang sách, tái hiện một cách chân thực thế giới của những người trẻ trong thế kỷ XX - thời kỳ Việt Nam có nhiều biến động về chính trị.

																																				Tác giả phô diễn nỗi sợ ngàn đời vẫn âm ỉ cháy trong trái tim của mỗi người trẻ - sợ không được “chạm vào”, được giãi bày và sẻ chia. Nó là một phần của tuổi trẻ, ở bất kỳ thời kỳ nào.

																																				Những người trẻ trong “Mặt trời trong suối lạnh” không thể chống lại hiện thực khốc liệt, không thay đổi được hướng đi của thời đại, họ chỉ đành thả mình trôi vô định trong nỗi buồn và mông lung về hiện thực. Có lẽ điều duy nhất khiến họ cảm nhận được sự hiện hữu của mình là trong những lần gần gũi với người tình, đắm mình trong khoái lạc của thể xác.

																																				Sự cô độc của nhân vật này nối liền nhân vật khác, tựa như trò chơi domino không có điểm kết thúc. Ta cảm nhận được sự hoang tàn, lạc lối, lại thấu suốt được bối cảnh đầy biến động của thời đại lúc bấy giờ.

																																				TÌNH YÊU là một trong những điều cứu rỗi linh hồn, là cầu nối để hơi ấm người với người được gần gũi nhau hơn.

																																				Khép lại những trang cuối trong “Mặt trời là suối lạnh”, ta hiểu được nỗi thống khổ những người trẻ thời kỳ cha ông ta. Họ gánh trên vai mình kỳ vọng của những người đi trước, dắt díu thế hệ đàn em đi sau. Có nhiều lúc họ nhận ra mình đã đánh mất chính mình. 

																																				Nhưng trong thời đại biến động đó, có người bị nỗi sợ chèn ép và rơi xuống “đầm lầy”, nhưng cũng có người lạc quan, dũng cảm sống tiếp và kiếm tìm ý nghĩa thực sự của tự do và tình yêu.

																																				“Mặt trời trong suối lạnh” - Cho tuổi trẻ cô độc và điên cuồng.', 1, 5),
	
	('SKB0032', N'Đi Vòng Thế Giới Vẫn Quanh Một Người', 'dvqtgvqmn.png', N'Lam', 96000, 500, 2022, N'Tiếng Việt', 240, N'Bìa Mềm', 250, N'“có khi đi khắp đất trời
																																					giẫm mềm sương núi, rối bời chân mây
																																					mà lòng chẳng thấy đắm say
																																					như khi ngồi cạnh đan tay một người”

																																					Đi Vòng Thế Giới Vẫn Quanh Một Người là tập thơ chứa đựng những gì dịu dàng nhất, ẩn giấu những nỗi niềm, gói ghém những nhớ thương và đan cài hàng vạn sợi tình trong mỗi trang viết.

																																					Một ấn phẩm ngọt ngào dành tặng cho những ai:
																																					Đã và đang cất giấu trong trái tim mình một tình yêu
																																					Đã đau đớn, đã vượt qua hoặc vẫn đang xoay xở để chữa lành thương tổn
																																					Cho những cô gái, chàng trai đang quay cuồng với thanh xuân nhưng vẫn chưa tìm được câu trả lời cho một nửa phù hợp của mình.

																																					Đi Vòng Thế Giới Vẫn Quanh Một Người cùng với ngôn từ trong trẻo của mình sẽ giúp bạn hiểu hơn về cảm xúc và rối ren mà bạn đang mang.

																																					Chúng ta dù ở độ tuổi nào, dù miệng từng phủ nhận hay trốn tránh tình yêu thì thực ra đều đang ôm một khát khao được chạm vào và được kiên nhẫn thấu hiểu.

																																					Có người đứng trước những đổ vỡ trong tình ái, lựa chọn trở nên bận rộn để quên đi. Lại có người xách balo và đi đến một nơi thật xa, với mong muốn bỏ lại quá khứ, vứt đi kỉ niệm để có thể làm lại. Nhưng cũng có người giữ nguyên nhịp sống, dù đêm hôm trước có khóc lóc thì ngày hôm sau vẫn mỉm cười và hết mình với cuộc đời. Nhưng sau tất cả, chúng ta đều nhận ra - vì người ấy ở trong tim, nên dù cố gắng quên cỡ nào, có tỏ ra bình thản ra sao, có đi xa tới đâu thì “vẫn quanh một người” mà thôi.

																																					Lời giải đáp cho câu hỏi có cần quên hay không? Làm cách nào để bày tỏ và làm sao để biết được người ấy là “đúng người” cũng sẽ được lật mở qua từng trang viết dịu dàng trong Đi Vòng Thế Giới Vẫn Quanh Một Người.

																																					Tác giả tập thơ - Lam, cùng với những giai điệu thơ lấp lánh đã tái hiện lại bức tranh đẹp đẽ và rực rỡ về cuộc đời. Có tình yêu, có gia đình, có bạn bè và có chính chúng ta trong những năm tháng tất bật của tuổi trẻ.

																																					Đi Vòng Thế Giới Vẫn Quanh Một Người khẽ mở hòm ký ức bạn cất giấu nhưng sẽ để vào bên trong những dư vị ngọt ngào, đẹp đẽ cùng lời nhắn nhủ:

																																					“mong em ngủ giấc thật ngon
																																					sớm mai tỉnh dậy trăng tròn đã phai
																																					mong em dẫu có yêu ai
																																					cũng không quên phải yêu mình đầu tiên”', 1, 5),
	
	('SKB0031', N'Tô Bình Yên Vẽ Hạnh Phúc (Tái Bản 2022)', 'tbyvhp_remake2022.png', N'Kulzsc', 88000, 500, 2022, N'Tiếng Việt', 96, N'Bìa Mềm', 150, N'Sau thành công của cuốn sách đầu tay “Phải lòng với cô đơn” chàng họa sĩ nổi tiếng và tài năng Kulzsc đã trở lại với một cuốn sách vô cùng đặc biệt mang tên: "Tô bình yên - vẽ hạnh phúc” – sắc nét phong cách cá nhân với một chút “thơ thẩn, rất hiền”.

																																								Không giống với những cuốn sách chỉ để đọc, “Tô bình yên – vẽ hạnh phúc” là một cuốn sách mà độc giả vừa tìm được “Hạnh phúc to to từ những điều nho nhỏ” vừa được thực hành ngay lập tức. Một sự kết hợp mới lạ đầy thú vị giữa thể loại sách tản văn và sách tô màu. Lật mở cuốn sách này, bạn sẽ thấy vô vàn những điều nhỏ bé dễ thương lan tòa nguồn năng lượng tích cực. Và kèm theo một list những điều tuyệt vời khiến bạn không thể bỏ lỡ:

																																								- Tận tình chỉ dẫn: 8 hướng dẫn tô màu đầy hứng thú từ Kulzsc

																																								- Tranh vẽ đơn giản, gần gũi. Nét vẽ đáng yêu, dễ thương

																																								- Chủ đề xoay quanh những điều bình yên trong cuộc sống: Đọc sách, đi dạo, dọn dẹp nhà cửa, trồng cây, ăn cơm mẹ nấu, nghe một bản nhạc hay, và nghĩ về nụ cười của một ai đó…

																																								- Mỗi bức tranh lại là những lời thủ thỉ, tâm tình của tác giả. Là những điều nhắn gửi nho nhỏ mong bạn bớt đi những xao động:

																																								“Em chọn hạnh phúc

																																								Em chọn bình yên

																																								Em chọn bên cạnh

																																								Những điều an yên”

																																								Hay đơn giản là những giãi bày ngắn gọn, thay nỗi lòng của một ai đó: "Tớ biết cậu một mình vẫn ổn, nhưng có những chuyện, có ai đó cùng làm, vẫn hơn."

																																								Thông qua những hình vẽ đang đợi được lấp đầy bằng muôn vàn sắc màu ấy, Kulzsc sẽ giúp bạn - những người lớn cô đơn, những ai đang cần bổ sung vitamin hạnh phúc “truy tìm” những niềm vui bị bỏ quên hay tuyệt chiêu để đối phó với stress.

																																								Bởi tô màu là một hình thức chữa lành đơn giản mà hiệu quả, nên mỗi khi thấy bực dọc, chán nản, hay khiến mình bận rộn hơn hãy thử tìm tới “Tô bình yên - vẽ hạnh phúc” cùng hộp màu đã cất lâu trong tủ và Sao không thể là một đám mây màu tím, một mái tóc vàng tươi hay một nụ hoa màu xanh biển nhỉ? Không cần phải đắn đo đâu, bạn cứ thoải mái xóa đi căng thẳng, xóa đi những gam màu u ám, tự tay mình điểm tô những màu sắc tươi sáng lấp lánh, đầy ắp hy vọng theo ý thích, tận hưởng những phút thư giãn thật bình yên không muộn phiền thôi nào.', 1, 5),
	
	('SKB0030', N'Tan - Lê Ngọc', 'tan.png', N'Lê Ngọc', 84000, 500, 2022, N'Tiếng Việt', 168, N'Bìa Mềm', 200, N'Nếu một ngày tuổi trẻ chỉ còn là một vệt sáng nhạt nhòa của kí ức, bạn sẽ chọn ghi nhớ điều gì nhất? Một bóng hình, một lời hứa, hay một ai đó khiến trái tim bạn “tan chảy” rồi “vỡ tan”? Chúng ta, dẫu đi qua bao nhiêu năm tháng, vẫn luôn hướng về những điều đẹp đẽ nhất của quá khứ, luôn mong được sống lại những rung cảm tình yêu - dù là tình cuối hay chỉ là tình dở dang, vẫn là những kỷ niệm không bao giờ bị thời gian vùi lấp.

																														Bạn sẽ được sống lại từng cung bậc của một tình yêu dường như là bất tận: từ chớm nở cho đến khi đắm say, vỡ tan rồi thành kỷ niệm và sống mãi trong “Tan” của tác giả Lê Ngọc. Ở đó, bạn sẽ gặp lại chính mình với những xúc cảm thật nhất của một trái tim yêu : Là khao khát gặp nhau mỗi lần tạm biệt; Là sự tủi hờn đến bất lực sau mỗi lần lặng im; Là những bất an phủ đầy tâm trí và cả những mộng mơ theo vào từng giấc ngủ đêm đêm; Là những lần trái tim bạn có vỡ tan vì ai đó, bạn vẫn chọn yêu họ bằng tất cả những mảnh ghép không còn lành lặn,

																														Để rồi một buổi sáng bạn thức dậy, sau những va vấp trong tình yêu, bạn thấy trái tim mình an yên, bạn biết cách yêu bản thân kể cả những khiếm khuyết, bạn cho bản thân được là chính mình trọn vẹn bên cạnh một người. Bạn nhận ra: Phải đủ đầy, ta mới có thể cho đi mà không cần gắng sức. Rồi một ngày tình yêu mà bạn nguyện cầu sẽ ghé thăm và ở lại bên cạnh bạn mãi mãi.

																														“Tan” khơi gợi ham muốn được hít thở thật sâu, được yêu cho thật tận của mỗi người.

																														“Tan” là những câu chữ ngẫu hứng nhưng đầy lắng đọng và nghệ thuật, được phủ bằng một màu bàng bạc của ký ức, nơi những rực rỡ đan xen làm hạnh phúc càng thêm ngọt ngào và nỗi buồn càng trở nên sâu sắc.

																														“Tan” đi đến tận cùng những nỗi niềm thổn thức của cả một thế hệ người trẻ: khao khát yêu, được yêu và tiếp tục tin yêu.

																														Khi gấp lại trang cuối cùng của cuốn sách, thứ đọng lại không phải là nỗi buồn bi lụy, lại càng không phải nỗi giằng xé, đắng cay, nó đơn thuần chỉ là cảm giác lòng có chút xôn xao rồi chợt cơn gió thổi nỗi buồn đi và ta thấy lòng nhẹ bẫng khi nghĩ về những điều đã qua. Mong rằng “Tan” sẽ là liều thuốc ngọt ngào giúp bạn xoa dịu những yếu mềm để tìm thấy bình yên đích thực trong trái tim mình.', 1, 1),
	
	('SKB0029', N'Dear, Darling', 'deardarling.png', N'Hiên', 88000, 500, 2022, N'Tiếng Việt', 200, N'Bìa Mềm', 250, N'“Dear, darling

																																Nếu tình yêu có hạn sử dụng,

																																Em mong là dùng được trăm năm.”

																																Quay trở lại sau 2 năm vắng bóng, “Dear darling” của Hiên gửi tặng bạn những lời thủ thỉ rất đỗi dịu dàng, rất đỗi ngọt ngào và cũng rất đỗi thơ qua 200 trang viết.

																																Cuốn sách kết nối những tâm hồn cùng rung cảm trước cái đẹp và có chung tần số hạnh phúc, yêu thương. Hiên ký thác tất cả niềm yêu sống, những ngày mạnh mẽ đi qua nỗi buồn và vẹn tròn tình cảm của mình lên mỗi câu chữ.

																																Nếu bạn không hài lòng về thế giới này, có lẽ những lời nhắn nhủ trong “Dear, darling” sẽ đánh thức hạt mầm yêu thương đang bị phủ màn trong trái tim của bạn:

																																- “Cuộc đời vô thường, thời gian có hạn. Thêm một lần gặp gỡ, cũng chính là bớt một lần gặp gỡ. Mong chúng ta trân trọng mọi khoảnh khắc cuộc đời mình.”

																																- “Chúng ta chỉ có một cuộc đời,

																																Nếu có thể, đừng lãng phí nhau…”

																																Đời người là một bản nhạc. Bản nhạc dù vui đến mấy cũng sẽ luôn có nốt thăng và nốt trầm. Có lúc cao, có lúc thấp. Có lúc nhanh, có lúc chậm. Vậy nên, chỉ cần bạn không từ bỏ giữa chừng, thì rồi ngày vui sẽ lại đến, nắng lại về, nhất định sẽ gặp được bình an.

																																Khép lại những trang cuối của “Dear, darling”, hy vọng bạn mãi mãi tự do yêu thương, trong những đêm đầu hạ thắp lên một chuyện tình dịu dàng đáng nhớ, hát vang khúc tình ca để những tháng năm thanh xuân của mình thêm rực rỡ, căng tràn.

																																Mong rằng “Dear, darling” sẽ là lời an ủi dịu dàng nhất dành cho bạn.', 1, 5),
	
	('SKB0028', N'Lại Là Ếch Ộp', 'lleo.png', N'Nguyễn Hưng Đệ Nhất', 92000, 500, 2022, N'Tiếng Việt', 192, N'Bìa Mềm', 200, N'"Lại là Ếch Ộp", lại là Nguyễn Hưng Đệ Nhất - người sẽ mang đến cho bạn sự hài hước, mặn mà, bắt trend "thời thượng" trong từng trang sách đây!

																																		Hàng tá truyện từ trong nhà ra ngoài ngõ, từ câu cá cho đến chuyện ma, chuyện ra đường rồi chuyện cấp ba, hay cách hạ gục một thằng con trai và ti tỉ thứ chuyện khác, tất tần tật đều có trong "Lại là Ếch Ộp"!

																																		Ở lần trở lại này, anh Ếch vẫn sẽ tặng bạn những câu thả thính cực dính, cực chất lượng:

																																		"Đố anh biết 36 kế, kế nào hay nhất?
																																		Kế bên em."

																																		"Hôm nay anh học toán hì
																																		Vuông tròn chẳng có, toàn hình bóng em."

																																		Đọc xong "Lại là Ếch Ộp" bạn còn có ngay bí kíp để trở thành một người yêu chuẩn mực hay bạn sẽ biết "Làm gì để cứu vãn tình yêu đang chết dần?".

																																		Trong tập sách này, bạn còn tìm được "Hướng dẫn cơ bản cho người mới học vẽ" được viết bởi CEO của Tập đoàn Doanh nghiệp Ếch Entertainment, mong sẽ có thể phần nào giúp đỡ các bạn khi mới đặt chân vào sở thích vẽ vời.

																																		Không chỉ vậy, bạn sẽ còn thấy được những góc nhìn khác về cuộc sống, thế nào là người tích cực và tiêu cực, thế nào là người tốt,

																																		Mỗi ngày chúng ta phải đối mặt với hàng tá những muộn phiền, trăm thứ cần giải quyết, tỉ thứ phải lo toan. Nhưng nếu bạn cứ mãi loay hoay trong mớ hỗn độn ấy thì sẽ càng mệt mỏi hơn thôi. Vậy nên Ếch Ộp ở đây để mang lại cho bạn những phút giây thư giãn, vui vẻ bằng những trang sách hài hước, độc nhất vô nhị.

																																		Trở lại với tuyển tập "Lại là Ếch Ộp", Nguyễn Hưng Đệ Nhất - chủ fanpage Ếch Ộp sẽ tiếp tục gửi đến cho chúng ta hàng nghìn tiếng cười cùng những góc nhìn độc đáo về cuộc sống. Mua ngay cuốn sách này để trải nghiệm bạn nhé!', 1, 1),
	
	('SKB0027', N'Lê La Từ Nhà Ra Ngõ', 'lltnrn.png', N'Làn', 89000, 500, 2022, N'Tiếng Việt', 216, N'Bìa Mềm', 250, N'“Lớn rồi! Thật ra chẳng có gì hoàn hảo. Chỉ cần mọi thứ hài hòa”

																																Trong “Lê la từ nhà ra ngõ” của Làn, bạn đọc dễ dàng bắt gặp chính mình trong đó, nơi những câu chuyện đời thường được phác họa mộc mạc, nơi yêu thương được gợi nhớ chỉ bằng một cái tên và là nơi mình nhận ra cuộc đời thật tươi đẹp và đáng sống.

																																Soi mình trong ký ức của Làn với những “thước phim” chân thật như câu chuyện về bà, về mâm cơm tựa mâm cỗ mỗi lần con gái học xa về thăm nhà, hay như về sự ấm áp trong dăm ba câu bố hỏi mỗi lần gọi điện - dù lần nào câu hỏi cũng chỉ là con có khỏe không, con đã ăn cơm chưa?

																																Sách gồm 2 phần là TỪ NHÀ và RA NGÕ.

																																“TỪ NHÀ” đưa ta vào thế giới của những an yên thường nhật, có những người thân trong gia đình, có những ngọt ngào chỉ có thể miêu tả bằng 2 chữ “tình thân”. Đọc “Từ nhà” để hiểu cội nguồn của yêu thương chính là gia đình. Gia đình là nơi nuôi dưỡng không chỉ về thể xác mà còn về tâm hồn của mỗi người. Lật từng trang sách như lật một lớp vỏ mà bố mẹ đang cất giấu, bố mẹ thực ra cũng chỉ là những người bình thường, cũng là lần đầu tiên làm bố mẹ. Bởi vậy nếu được, hãy tha thứ trước sự quan tâm vụng về và hãy kiên nhẫn hơn với gia đình của mình.

																																“RA NGÕ” được Làn kể dưới dáng vẻ của bác bán nước đầu ngõ, của bà đồng nát, của những người lạ mặt mà ta từng gặp gỡ hay chỉ lướt qua nhau 1 lần rồi không bao giờ gặp lại. Tất cả những cái tên đều thật lạ tai và có lẽ cũng chẳng hề liên quan đến nhau. Nhưng với Làn, với “Lê la từ nhà ra ngõ” ta hiểu tất cả mọi người đều có một mối liên kết, đó chính là LÒNG TỐT - thứ keo kết nối vô hình song vô cùng bền bỉ và chắc chắn.

																																“Lòng tốt nó như một cái vòng. Ai đó tốt với cậu, cậu nhận và đem tặng nó cho người khác, người ta sẽ nhận và lại gửi gắm đi. Rồi nó sẽ trở thành một cái vòng rộng ơi là rộng. Cậu sẽ là một mắt xích của cái vòng đó. Việc của mình đôi khi không phải bằng mọi giá quay lại cái mắt xích bên trên, mà là nối thêm một mắt xích nữa. Và tuyệt đối đừng để mình là mắt xích cuối cùng.”

																																“Lê la từ nhà ra ngõ” giống như một bông bồ công anh, chỉ cần một làn gió nhẹ cũng đem những yêu thương bung tỏa từ những góc nhỏ nhất trong nhà ra những thênh thang ngoài đường xá. Cuốn sách tựa một cuốn “hồi ký” chung dành tặng cho tất cả những người trẻ - những người từng thấy chênh chao và vô định trên hành trình trưởng thành, những ai cần 1 nơi để tìm về và gửi gắm những nỗi lòng của mình.

																																Với cách kể chuyện hóm hỉnh và có chút “ngẫu hứng”, đọc “Lê la từ nhà ra ngõ” như đang trò chuyện cùng cô bạn nhà kế bên. Để khi khép lại những trang sách cuối cùng, ta chấp nhận rằng cuộc sống này dù không hoàn hảo nhưng cũng đáng sống đó chứ. Cuộc sống nơi những người ta thương vẫn đang hít thở dưới bầu trời cao rộng.

																																Đầu năm 2022, mến gửi bạn những trang sách dễ thương trong “Lê la từ nhà ra ngõ”, hãy thả mình vào từng con chữ để thêm yêu, thêm trân quý cuộc sống giản đơn song cũng ẩn chứa nhiều điều diệu kỳ xung quanh mình.', 1, 5),
	
	('SKB0026', N'Tạm Biệt Tôi Của Nhiều Năm Về Trước', 'tbtcnnvt.png', N'An', 95000, 500, 2022, N'Tiếng Việt', 248, N'Bìa Mềm', 240, N'Dành tặng bạn, những người muốn buông bỏ những “điều đã cũ” nhưng chưa đủ can đảm.
																																				Dành tặng những ai đang khao khát được “chạm vào”, được vỗ về và thấu hiểu.
																																				Dành tặng cho tất cả chúng ta, trong những năm tháng tươi đẹp nhất của thanh
																																				xuân, đang có một chốn để mơ về, có một ước mơ để theo đuổi và có một ai đó để
																																				da diết nhớ thương.

																																				“Tạm biệt tôi của nhiều năm về trước” là ấn phẩm mới nhất của An, chàng tác giả
																																				từng được biết tới với “cơn sốt” sách “Hẹn nhau phía sau tan vỡ” - liên tục cháy
																																				hàng và chinh phục trái tim của hàng vạn độc giả trẻ.

																																				Trong “Tạm biệt tôi của nhiều năm về trước”, với 248 trang viết kèm minh họa
																																				được thực hiện bởi chính tác giả, An dẫn bạn đọc bóc tách từng tổn thương chưa
																																				được chữa lành bên trong mình. Dù đó là vết thương do ai gây ra, vì lý do gì, vào
																																				thời điểm nào, còn sâu hay đã vơi… thì đều được vỗ về và ủi an.

																																				“Để trưởng thành chúng ta phải nói lời tạm biệt với nhiều người, và có thể là tạm
																																				biệt chính bản thân mình trong quá khứ.”

																																				“Đôi khi chúng ta tha thứ cho một người không phải vì họ xứng đáng nhận được,
																																				mà vì bạn xứng đáng với sự thanh thản, không cần bận tâm về những chuyện đã
																																				qua nữa.”

																																				“Chỉ khi bạn đi về phía ánh sáng, chiếc bóng mới hắt về phía sau. Đừng tự giam
																																				cầm mình trong quá khứ, hãy làm gì đó để bản thân cảm thấy tốt hơn. Rồi mọi
																																				chuyện cũng sẽ qua, mọi vết thương đều sẽ lành lại.“

																																				Hãy chọn nói Tạm Biệt những kỉ niệm đã cũ mèm, cho phép nó rời bỏ mình, để
																																				ngày thêm an tĩnh và đêm thêm an yên.

																																				Khép lại “Tạm biệt tôi của nhiều năm về trước”, bạn sẽ trở thành một bạn hoàn
																																				toàn mới - 1 dáng vẻ sâu lắng, kiên cường và lắng đọng hơn.

																																				Mùa xuân này, hãy trao gửi những dòng tâm tình ngọt ngào trong “Tạm biệt tôi
																																				của nhiều năm về trước” cho chính mình và những người mà bạn thương.

																																				Chúc bạn 4 mùa trong 1 năm, mùa nào cũng dịu dàng và vô ưu.', 1, 1),
	
	('SKB0025', N'Anh', 'anh.png', N'Liêu Hà Trinh', 132000, 500, 2021, N'Tiếng Việt', 288, N'Bìa Cứng', 300, N'Tiếp nối những cuộc trò chuyện thân mật, riêng tư và không kém phần dịu dàng từ cuốn sách “Em" mà Liêu Hà Trinh đã gửi gắm đến độc giả, là những lời bộc bạch được cô đọng tinh tế trong “Anh".

																														Nếu như Em là những lời thở than, những tâm tư trải dài từ tình yêu đến cuộc sống, những khao khát yêu đương cháy bỏng và cả những phút cô đơn đến ướt lòng thì Anh lại được Liêu Hà Trinh khoác cho mình một gam màu trầm trưởng thành và sâu lắng hơn.

																														Cùng ngồi lại với Liêu Hà Trinh, lắng nghe “Anh” cất lời tâm sự. Anh mang đến những câu chuyện, góc khuất, những lời tự sự của 15 chàng trai nổi tiếng mà bạn đã quen mặt trên màn ảnh, trên mạng xã hội. Kết hợp với những vần thơ “chạm tim” như một chất xúc tác cho cảm xúc “Anh” chắc chắn sẽ khiến bạn tự nguyện mở lòng.

																														Liệu đằng sau những thang điểm xuất sắc, vóc dáng hoàn mỹ, tài sản kếch xù, khả năng đọc vị chết người, và cả những hạnh phúc lộng lẫy được phô diễn trên màn ảnh hay trên mạng xã hội là những bí mật gì? Và liệu những câu chuyện, những đồn thổi trên mạng xã hội, những tô vẽ của cộng đồng mạng về họ có đúng hay không? Hay ta sẽ được bắt gặp một hình ảnh khác, một hình ảnh mộc mạc, trần trụi và cô đơn hơn của họ?

																														Nếu bạn cũng tò mò, vậy hãy để “Anh” của Liêu Hà Trinh dẫn lối, dần dần tìm đường mở cánh cửa cất giữ những câu chuyện sâu lắng, những ký ức ngủ quên và cả những góc khuất cô đơn mà những “quý anh” này đã khéo léo cất giấu trong ngăn tủ.

																														Và biết đâu được, câu chuyện của họ lại có thể mang về cho chính bạn một mảnh chìa khóa của khát khao giải tỏa những cảm xúc bị dồn nén bấy lâu trong tình yêu.

																														Hy vọng, khép lại Anh, bất cứ cô gái nào cũng có thể thở phào nhẹ nhõm rằng đàn ông không luôn xấu tính như thiên hạ vẫn dệt thêu. Và cuốn sách này cũng chẳng là một âm mưu “tẩy trắng” phái mạnh từ tác giả. Mà đích đến cuối cùng, là thật tâm mong EM được nhẹ nhõm hơn khi nghe lời thành thực chúc phúc từ : ANH.

																														“Sau cùng, dù thế giới có nỗ lực cách chia thế nào thì một nửa của Anh vẫn hướng về Em và ngược lại.”

																														Bởi Anh và Em là hai mảnh ghép không thể thiếu, chúng ta cần nhau để cùng hoàn thiện và xây đắp những điều tươi đẹp. Chúng ta hợp lại vừa đủ một chữ: YÊU.', 1, 5),
	
	('SKB0024', N'Hiểu Tâm Lý Rành Tâm Ý', 'htlrty.png', N'Huy Đức', 123000, 500, 2021, N'Tiếng Việt', 344, N'Bìa Mềm', 350, N'“Hầu hết chúng ta đều không hiểu tình yêu khởi nguồn từ đâu và phải làm sao để lựa chọn, nhưng vẫn không ngăn được con tim mình đem lòng yêu thương kẻ khác”
																																	Thế nào là hạnh phúc, thế nào là tình yêu?
																																	Tại sao mình lại yêu người này chứ không phải là một ai khác?
																																	Có tồn tại hay không người được gọi là một nửa “hoàn hảo” của mình?

																																	Nếu bạn đang tìm lời giải đáp cho những câu hỏi trên thì Hiểu Tâm Lý Rành Tâm Ý chính là cuốn sách dành cho bạn.

																																	Hiểu Tâm Lý Rành Tâm Ý đánh dấu cột mốc quay trở lại của cây bút gây tiếng vang “Tại sao em ít nói thế?” - Huy Đức sau 3 năm vắng bóng. Tại đây, Huy Đức lí giải mọi thứ dưới góc nhìn , lột trần mọi điều bạn đang thực sự sợ hãi trong tình yêu, từ đó giúp bạn đối mặt và đón nhận một con người mới hơn của chính mình.
 

																																	Bạn có cơ hội mở rộng thế giới nội tâm dưới nhiều chiều khác nhau để tìm được bản chất của tình yêu mà mình đang thực sự tìm kiếm. Để hiểu rằng muốn có được hạnh phúc thì phải tranh đấu. Hơn cả, yêu là sự kết nối của cảm xúc, nhưng bạn cũng cần tỉnh táo và lý trí để giúp tình yêu luôn lành mạnh và rực rỡ sắc màu.
 

																																	Chìa khóa cho một mối quan hệ bền vững cũng được Huy Đức bật mí giữa những câu chuyện đời thường vô cùng chân thực trong Hiểu tâm lý rành tâm ý. Qua đó độc giả được kết nối với “đứa trẻ bên trong” mình, chữa lành thương tổn quá khứ để tự tin và dành lấy tình yêu thực sự thuộc về mình.
 

																																	Và sau cùng, dù bạn là ai thì cũng đừng quên rằng “Hạnh phúc là sự lựa chọn của mỗi người và nó luôn dành cho những người xứng đáng nhất”', 1, 5),
	
	('SKB0023', N'Kỳ Tích Là Tên Gọi Khác Của Nỗ Lực', 'ktltgkcnl.png', N'23thang12', 124000, 500, 2021, N'Tiếng Việt', 224, N'Bìa Mềm', 250, N'“Đừng tìm về quá khứ dù cho có bị dằn vặt. Cũng đừng đặt hi vọng quá lớn khi tương lai chưa tới. Điều bạn có thể làm tốt nhất là hiện tại. Hãy làm thật tốt ngày hôm nay nhé.”

																																						“Kỳ tích là tên gọi khác của nỗ lực” là chiếc chìa khoá diệu kỳ giúp bạn mở ra nhiều cánh cửa đang bị khoá trái trong trái tim mình, để lắng nghe điều mà bạn đang sợ hãi, để xoa dịu những tổn thương và để giải phóng những khả năng tiềm ẩn của chính mình.

																																						Nếu bạn đang trong hành trình tìm gặp một phiên bản tốt hơn của bản thân,

																																						Nếu bạn là đã/đang là một người “nhạy cảm”,

																																						Và nếu bạn từng trải qua nhiều ngày tháng cảm thấy lạc lõng, cô độc thì đừng ngần ngại mà để Kỳ tích là tên gọi khác của sự nỗ lực trở thành một người bạn “tâm giao” giúp bạn bộc lộ lòng mình.

																																						Với 224 trang viết kèm minh hoạ dễ thương, tác giả cuốn sách - 23tháng12 (Trinh Nguyễn) chia sẻ những góc nhìn khác nhau về lòng tốt, về hạnh phúc, về gia đình, về tình bạn… và về những con người ta từng gặp, những mảnh đất ta từng đặt chân, về tất cả những điều đã làm nên ta ở hiện tại.

																																						Ý nghĩa của bình yên cũng được lật mở qua mỗi trang sách, “bình yên ở bên trong tâm mỗi người, đừng cố gắng tìm nó ở bên ngoài, đừng tìm nó ở ai khác. Sự bình yên hãy từ tâm mình mà ra.”

																																						Mỗi trang viết đều nhắc bạn nhớ về sự đặc biệt và đáng trân quý của bản thân. Bạn là một “phiên bản” giới hạn và duy nhất trên thế giới này. Trong bạn chứa đựng những khả năng và cá tính để làm thế giới trở nên đẹp đẽ và đáng sống hơn.

																																						“Kỳ tích là tên gọi khác của sự nỗ lực” - Hãy trải nghiệm và tận hưởng trọn vẹn từng khoảnh khắc trong hiện tại, NỖ LỰC chính là chìa khoá để bạn khai phá những KỲ TÍCH trong cuộc đời mình. Dám làm dám dấn thân, dám thử dám chịu trách nhiệm và quan trọng hơn cả, hãy cố gắng hết mình. Bạn luôn học được nhiều thứ khi mình cố gắng hết sức. Dù kết quả có là gì thì đó cũng là một hành trình đầy vẻ vang.',	1, 5),
	
	('SKB0022', N'Vui Vẻ Không Quạu Nha (Tái Bản 2021)', 'vvkqn_remake2021.png', N'Ở Đây Zui Nè', 69000, 500, 2021, N'Tiếng Việt', 280, N'Bìa Mềm', 300, N'Cuộc đời ngày ngày nói yêu mình.

																																								Xong cuộc đời lại đủ thứ phức tạp và bất công với mình.

																																								Vậy là cuộc đời ghét mình rồi!

																																								Thôi nào!

																																								Thả lỏng và tận hưởng sự vui vẻ đi. Vì chẳng phải cuộc đời đang ghét bạn đâu, mà chính bạn bạn đang loay hoay với những mệt nhọc ở trên đời. Ví dụ như nay đã là deadline mà bỗng bị rớt mạng, sáng nay đi làm quên đem theo ví, hay đồng nghiệp ở công ty nói xấu mình,

																																								Nếu kể ra thì sẽ có ti tỉ thứ không theo ý mình mỗi ngày. Không nói đến những chuyện bực tức khác, những nỗi buồn chúng ta không làm chủ được, những điều vô tình đến khiến ta quạu cọ và xấu xí. Rồi khi chúng ta cứ để chúng trong lòng sự phiền muộn không biết kéo dài đến bao giờ mới kết thúc.

																																								Cho nên, thay vì để tâm đến những chuyện khiến mình không vui, hãy lựa chọn vui vẻ, bạn sẽ thấy cuộc đời trở nên tuyệt vời hơn rất nhiều. Và để cân bằng những cảm xúc ấy “Vui vẻ không quạu nha” chính là một món quà để lan tỏa và nhân lên niềm vui, một cuốn sách mà ai cũng cần phải có để thêm yêu những điều nhỏ xíu đáng yêu xung quanh mình.

																																								Vui vẻ không quạu nha - Cuốn sách không chỉ mặn mà đúng như tên gọi của nó mà còn bắt kịp các xu hướng được quan tâm từ fanpage nổi tiếng “Ở đây zui nè” sẽ giúp bạn có những tràng cười vui vẻ không ngớt, có cái nhìn khoan dung cởi mở hơn, nhìn nhận những xui xẻo vấp phải bỗng trở nên nhỏ bé dưới góc độ dí dỏm và hài hước.

																																								Vui vẻ không quạu nha - xin được gửi đến những bạn trẻ đang dễ giận dữ, cau có ngoài thế giới kia, những ai đang buồn phiền về rắc rối nào đó, “trái tim” nhỏ bé này còn phải dành cho niềm vui, đừng để bực bội, dỗi hờn từ những điều không đáng chiếm hết chỗ.

																																								Và hãy hét to với Thế giới rằng “Mình là một người tràn đầy năng lượng,” luôn sẵn sàng để hạnh phúc hơn.', 1, 5),
	
	('SKB0021', N'Tinh Cầu Này Có Một Người Tôi Yêu', 'tcncmnty.png', N'Angelado, Men’s diary', 129000, 500, 2021, N'Tiếng Việt', 184, N'Bìa Mềm', 200, N'BẠN CÓ THỰC SỰ HIỂU NGƯỜI ĐÀN ÔNG BÊN CẠNH MÌNH KHÔNG?

																																								Đọc “Tinh cầu này có một người tôi yêu” giống như du hành vào vũ trụ của những tiểu hành tinh cô đơn. Mỗi một hành tinh là một người đàn ông với những câu chuyện riêng và cảm xúc bị giấu đi chỉ bởi cái nhãn “phái mạnh”.

																																								Chúng ta sẽ cười ngặt nghẽo bởi những tình huống “đời” hơn bao giờ hết, cũng sẽ không kìm được nước mắt mà khóc thun thút, lại không ngớt gật gù vì bắt gặp những hình ảnh quen thuộc trong từng câu chuyện. 

																																								73 câu chuyện có thật trong sách là 73 góc nhìn khác nhau về một người đàn ông.

																																								Đàn ông - họ nghĩ gì về phụ nữ?

																																								Đàn ông - lúc cô đơn họ sẽ như thế nào?

																																								Đàn ông - họ có thực sự mạnh mẽ tới vậy không?

																																								Đàn ông - có phải cứ yêu vào ai cũng hoá một đứa trẻ?...

																																								Ta bắt gặp dáng vẻ của mối tình đầu của mình, của cậu bạn thân, của người bố ta thương, của người mà ta đã từng yêu, của người mà ta muốn về chung một nhà… Tất cả những dáng vẻ của một người đàn ông đều được cô đọng lại trong Tinh cầu này có một người tôi yêu.

																																								Ta hiểu được rằng một nửa còn lại của thế giới - những người đàn ông cũng có những phút giây yếu lòng, cũng khát khao những chiếc ôm, cũng rơi lệ vì chia ly và cũng cô độc như triệu triệu những con người khác trên tinh cầu này.

																																								Cuốn sách này dành tặng những người đàn ông, những người phụ nữ và những người muốn hiểu về cảm xúc để sống trọn vẹn và trân trọng người mình thương.

																																								Tác giả cuốn sách - Angelado  cũng là người sáng lập của fanpage Men’s diary - một “địa chỉ” quen thuộc để gửi gắm tâm tình, để xoa dịu hàng ngàn trái tim đang thổn thức bởi yêu bằng ngôn từ và nét vẽ của mình.

																																								Khép lại “Tinh cầu này có một người tôi yêu”, đừng ngần ngại mà ôm lấy người đàn ông của bạn bởi sau vỏ bọc mạnh mẽ ấy, có lẽ là một trái tim cần lắm những vỗ về và ủi an.', 1, 1),
	
	('SKB0020', N'Thương', 'thuong.png', N'Nhiều Tác Giả', 75000, 500, 2021, N'Tiếng Việt', 168, N'Bìa Mềm', 200, N'"Em nói em từ bỏ
																															Sao em lại đau lòng?
																															Em nói em từ bỏ
																															Sao em còn trông mong?"

																															Được viết bởi các tác giả đến từ Group Thìa Đầy Thơ - nơi hội tụ thế hệ trẻ yêu thơ và làm thơ, "Thương" là một tập thơ rất tình, ngẫu hứng, và đầy sáng tạo. Ở “Thương ” không có bóng dáng của một nhân vật nhất định, nhưng mang lại cho người đọc đầy đủ tất cả cảm xúc về tình yêu, tuổi trẻ và cuộc đời.

																															Thực sự không khó để tìm được sự đồng điệu tâm hồn với những dòng thơ ấy. Sự đồng cảm trong giai điệu mà “Thương” phủ lên đôi môi của độc giả có chút nhẹ nhàng, bâng quơ, gần gũi, dễ đọc, dễ đánh thức sự lãng mạn cùng những tâm tư chưa từng tỏ bày cùng ai. Đó là thứ thơ phóng khoáng, trẻ trung đầy sức sống, đôi khi da diết, đôi khi lửng lơ, phảng phất đủ loại thăng trầm được biểu đạt theo một cách hết sức dễ chịu. Bạn hẳn sẽ thấy chính mình trong đó. Đó là những ấm áp len lỏi của tình cảm gia đình, là ngọt ngào hạnh phúc của tình yêu, là những phút giây chậm lại để sống. Là nhớ thương chờ đợi, là giận hờn vu vơ, là lo sợ được mất và cả những tổn thương, những lần tự chữa lành.

																															Màu sắc đặc biệt trong “Thương” nằm ở sự thành thật nhưng mang đậm chất mơ mộng rất đặc trưng của thơ. Những góc nhìn về cuộc sống, về quan hệ bạn bè, với xã hội và vẻ đẹp tình yêu đều được phơi bày hết sự giản đơn, đời thường:

																															“Ba giờ mẹ vẫn dậy
																															Mặc giá rét mùa đông
																															Vì tình mẹ ấm áp
																															Còn hơn bếp lửa hồng.”

																															Không gò bó về phương thức diễn đạt, đa dạng về thể loại, chất lượng về nội dung, cùng sự linh hoạt trẻ trung, nhưng cũng rất lắng đọng và nghệ thuật, “Thương” chắc chắn sẽ đem lại cho bạn những rung cảm đẹp đẽ và nhiều bất ngờ vể một thế hệ trẻ làm thơ . Một thế hệ vẫn luôn tìm cách giữ gìn và phát huy sự diệu kỳ của tiếng Việt.

																															Dù là đọc để thưởng thức, hay đọc để tìm sự ủi an. Gấp lại “Thương”, mong rằng những “thương đau” nếu có trong lòng bạn cũng tới ngày được xoa dịu và hơn cả là để “thương yêu”, thêm một lần nữa đầy trong tim!

																															Đây sẽ món quà vỗ về trái tim bạn sau những giông bão cuộc đời, đưa bạn trở về những ngày tháng niên thiếu tươi đẹp.', 1, 5),
	
	('SKB0019', N'Giỏ Trái Cây', 'gtc.png', N'Liêu Hà Trinh', 124000, 500, 2021, N'Tiếng Việt', 160, N'Bìa Cứng', 200, N'“Khó khăn thế này, mình càng phải cạnh nhau

																																Giống như cây bầu, cần giàn leo để sống

																																Giống như Sài Gòn, cắn răng qua biến động

																																Giống như chúng mình, ăn ít lại để chia”

																																Liêu Hà Trinh khắc hoạ một chữ “Thương” thật lớn qua “Giỏ Trái Cây”, ký gửi nỗi niềm của mình lên từng trang viết.

																																Tôi, bạn và chúng ta - tất cả những con người đều chịu ít nhiều ảnh hưởng do biến động từ đại dịch. Dù là ở nghĩa bóng hay nghĩa đen, mỗi người đều cần cho mình 1 “Giỏ trái cây” để thân thể khoẻ mạnh, để tâm hồn sáng trong và nồng đượm mến thương.

																																Đây cuốn sách chuyên chở sự tươi mát của năng lượng lạc quan, chia sẻ tinh thần ủi an, và ve vuốt nhẹ nhàng như một giỏ trái cây, một thùng rau củ chuyền tay nhau trong giai đoạn “thành phố bệnh”. Dù là táo, lê, cam, quýt, hay mâm cúng “cầu vừa đủ xài” (mãng cầu, dừa, đu đủ, xoài) thì quà tặng từ tấm lòng, với lời cầu mong sức khoẻ và bình an luôn cần thiết cho bất cứ ai, bất cứ đâu.

																																Không chỉ vậy, giỏ trái cây ấy còn chứa “trái yêu”, “trái tình”, “trái nghĩa”
																																Hãy lấy cho mình một trái nếu bạn thiếu, và lấy thêm một trái nữa để dành tặng cho những người bạn nghĩ có thể họ đang cần.

																																Với 158 trang viết gồm tản văn và lời thơ, Giỏ trái cây như một nơi để ta bình tâm an trú trong những ngày chênh vênh, để hiểu, để thêm yêu chính mình cũng như những người xung quanh ta.

																																Một tác phẩm khắc họa chân thật và giản dị hơn bao giờ hết về Việt Nam mình trong những ngày cùng đan tay gom sức chống dịch.

																																Đọc để nhớ ta từng có những ngày sống trong 4 bức tường

																																Đọc để ngẫm về những ngày niềm vui vừa vặn bằng một tủ lạnh đủ thức ăn

																																Đọc để nhắc ta từng đau những nỗi đau thật khác, trước dáng vẻ của một người vợ mất chồng, của những đứa con côi cút mất cha, của những người xung quanh ta giờ thành những người trong tim ta…', 1, 5),
	
	('SKB0018', N'Em - Liêu Hà Trinh (Tái Bản - Bìa Cứng)', 'em.png', N'Liêu Hà Trinh', 119000, 500, 2021, N'Tiếng Việt', 168, N'Bìa Cứng', 200, N'Em - dành tặng bạn, những cô gái bước qua đoạn tình cảm sâu đậm nhưng đau đớn và thích nói về nỗi buồn.

																																						Em - dành tặng bạn, những cô gái đã lo lắng, đã mắc kẹt giữa những khe hở của cuộc sống, đã bất lực cô độc tới thế,nhưng rồi đã trưởng thành dũng cảm sống như thế.

																																						Em - dành tặng bạn, những cô gái những tưởng lạnh lùng như sỏi đá nhưng nội tâm cũng mỏng manh yếu mềm.

																																						Mà thật ra, Em - không hề có giới hạn cho ai và không ai.

																																						Em dành cho tất cả những cô gái trên thế giới này, qua lăng kính phản chiếu EM -  ME (Tôi),  khắc nghiệt nhưng cũng đầy trìu mến chứa đựng trong cuốn sách của Liêu Hà Trinh - đều có thể từ từ cảm nhận, thấu hiểu và soi tỏ chính bản thân mình nhiều hơn.

																																						Bởi trong Em - Liêu Hà Trinh, bằng những dòng tản văn sắc sảo, nội lực… đến những vần thơ tràn đầy tính nữ, sẽ khéo léo, tinh tế dẫn dắt bạn cởi bỏ những bí mật giấu kín, bóc tách những gai góc đơn độc, lắng nghe những rung động mạnh mẽ trong tim mình bằng cách chậm chậm chạm tới và sẻ chia. Từ cảm xúc hoang sơ khi tim vừa biết vỡ, choáng ngợp trái dấu tuổi đôi mươi, đến chơi vơi của tuổi 30 nhiều trăn trở và mâu thuẫn. Để rồi gửi gắm lời động viên thân mật tự đáy lòng, xoa dịu tất cả bất an chôn giấu, cùng "em" bước qua từng bướt ngoặt thăng trầm của cuộc sống,

																																						“Anh có biết về nỗi buồn của em?

																																						Nó rối rắm và đồng thời dễ hiểu

																																						Đan vào nhau như ngân hà tuyệt duyệt

																																						Nhưng nào ai hái được nổi sao trời

																																						Những hố đen có thật ở trên đời

																																						Cuốn người ta vào nghìn trùng tư lự

																																						Nơi cuối cùng, muốn ôm người lắm chứ

																																						Kể người nghe, em vất vả thế nào

																																						Kể cho người, em yếu đuối ra sao…”

																																						Có chút cổ điển, có chút lãng mạn, có chút thổn thức nhưng cũng rất hiện thực - mong Em sẽ là “ngọn lửa đỏ” mang đến cho bạn sự chính trực, uy nghiêm, và cả sự hồn nhiên, mềm mại. Là món quà đủ dịu dàng đủ yêu thương vỗ về mọi cảm xúc vui buồn trong cuộc sống vừa rực rỡ hân hoan, vừa mệt mỏi lạ lùng.', 1, 5),
	
	('SKB0017', N'Mình Chỉ Là Người Bình Thường', 'mclnbt.png', N'Kulzsc', 138000, 500, 2021, N'Tiếng Việt', 120, N'Bìa Mềm', 200, N'Sau thành công của cuốn sách tô màu “Tô bình yên, vẽ hạnh phúc” – cuốn sách tạo nên cơn sốt trên các bảng xếp hạng sách bán chạy, tái bản từ khi chưa phát hành, tháng 4 này, “nam thần vạn người mê”, họa sĩ tài hoa Kulzsc đã trở lại với siêu phẩm “Mình chỉ là người bình thường” - muốn trao đi rất nhiều yêu thương.

																																			Không chỉ là sự kết hợp đầy thú vị, mới mẻ giữa thể loại tản văn và sách tô màu, cuốn sách này giúp bạn được thư giãn khi tô vẽ, được trút bỏ nỗi buồn khi viết những điều giấu kín trong tim ra từng trang giấy, được lan tỏa năng lượng tích cực từ những điều nhỏ bé dễ thương.

																																			“Mình chỉ là người bình thường” - muốn trao đi rất nhiều yêu thương còn là NHẬT KÍ của chính tác giả, ghi lại khoảng thời gian thanh xuân tươi đẹp nhất của Kulzsc. Đẹp bởi những điều tuyệt vời, đẹp bởi những khi may mắn, đẹp bởi cả những lúc khó khăn, đẹp bởi cô đơn, đẹp bởi những rung động thật khẽ…

																																			“Mình nghĩ đơn giản thế này này, áp lực của cuộc sống đã quá nhiều, bạn đừng vô tình tạo áp lực cho bản thân, theo kiểu năm này phải làm được điều này, đến tuổi này phải đạt được cái này cái kia, phải thật nhanh chóng thành công… Thật ra, cuộc sống không có ép buộc bạn. Bạn mình vẫn hay bảo: cậu phải cố gắng, phải vui vẻ, phải tích cực. Mình bảo chẳng có cái gì là “phải” ở đây cả, nếu thấy cần thiết thuận với con tim, thì mình sẽ làm, mình không thích gồng gánh. Trên đời này, chỉ có một điều mình thấy cần phải làm, đó là sống thật hạnh phúc.”

																																			“Thứ chúng ta tìm kiếm có lẽ không phải hào nhoáng đủ đầy, mà có khi chỉ đơn giản là bình yên không lo nghĩ. Một thảm cỏ xanh, một chiều nắng ấm, một chiếc lá vàng trên tay, mọi gánh nặng như dừng lại trong một chốc, bởi vì cuộc sống vẫn luôn có những khoảnh khắc đẹp như thế.”

																																			Đó cũng chính là lời nhắn gửi của Kulzsc đến bạn. Mong rằng, khi bạn cầm trên tay cuốn sách này, cũng chính là lúc bạn cầm trên tay một phần tuổi trẻ của chính mình, để cảm nhận những thước phim tua chậm, quãng thời gian đã và đang qua đi, để biết yêu thêm cuộc sống bởi những điều giản đơn. Và mỗi sớm mai tỉnh giấc, bạn sẽ luôn là một – người – bình – thường – hạnh – phúc – nhất – thế - gian này.', 1, 5),
	
	('SKB0016', N'Chỉ Về Nhà Để Ngủ', 'cvndn.png', N'Minh Nhật', 88000, 500, 2021, N'Tiếng Việt', 176, N'Bìa Mềm', 200, N'“Trong tiểu vũ trụ của mỗi người, thứ năng lượng quan trọng nhất không phải vật chất, mà là cảm giác của sự tồn tại, khát khao thấy mình có ý nghĩa, hoặc những gì mình làm trở nên ý nghĩa”

																																“Chỉ về nhà để ngủ” của Minh Nhật như một trạm cấp “vé du hành” miễn phí, để mỗi người đều có cơ hội khám phá sâu vào vũ trụ bản thân.

																																Thông qua những câu chuyện hiện thực gần gũi, cùng chất văn mang đậm dấu ấn Minh Nhật - rất riêng và đầy cảm xúc, Chỉ về nhà để ngủ dễ dàng "chạm" đến sự “đồng cảm” nơi trái tim độc giả, giúp ta thoát khỏi vòng xoay vội vã của cuộc sống, sống chậm lại, gom mạnh mẽ và đưa ta về với một khoảng lặng đủ để thấy nhẹ nhõm và bình yên.

																																Đặc biệt tại thời điểm cả thế giới đều đang chịu ảnh hưởng từ đại dịch, “chiếc vé” này cho ta được giao tiếp với chính mình nhiều hơn, để hiểu và tìm được cảm hứng sống mỗi ngày.

																																Giữa những trang sách có đôi lúc ta khẽ giật mình vì nhận ra chính bản thân trong đó, giống như soi vào một “chiếc gương”. Để thành thật đối diện với những mong muốn và phần con người sâu thẳm của mình.

																																Thậm chí ở rất nhiều người, đó có thể là một con người hoàn toàn khác hẳn với mặt nạ xã hội mà họ trưng ra. “Gương mặt mộc” đó có thể là một gương mặt “xấu xí” – một bản thể chằng chịt những nỗi đau – một trái tim với nhiều vết cắt hoặc cũng có thể là những giọt nước mắt, đã cất giấu bấy lâu được nhẹ nhàng lăn xuống. Để sau khi thẳng thắn đối diện rồi thì suy ngẫm, rồi hiên ngang sải bước qua. Đó cũng là lúc ta thực sự bước ra khỏi lớp kén bọc và cảm nhận mình hoàn toàn khác.

																																Sống có mục đích và nhiều đam mê hơn.

																																Lời giải đáp cho câu hỏi “Thế nào là Trưởng Thành” cũng dần được bật mở.

																																Chúng ta không thể lớn lên qua những đời sống tầm thường, mà trưởng thành từ những trải nghiệm phi thường.

																																Chúng ta cũng không lớn lên bằng việc liên tiếp đặt những câu hỏi về quá khứ, mà trưởng thành khi có thể chấp nhận nó như một phần của những điều đã xảy ra, để bước tiếp.

																																Và sau cùng, hãy dành cho mình những giây phút, lùi lại một chút và nhìn về phía trước. Mong bạn hiểu được rằng “Hãy cho phép mình buồn để chờ những niềm vui thật đẹp”.', 1, 5),
	
	('SKB0015', N'Chúng Ta Không Thể Là Bạn', 'ctktlb.png', N'Mộc Diệp Tử', 89000, 500, 2021, N'Tiếng Việt', 280, N'Bìa Mềm', 300, N'Trên tình bạn, lại dưới tình yêu.

																																			Vậy mình gọi nhau hai chữ “tình nhân” được không?

																																			“Tình nhân”, một mối quan hệ không ràng buộc được người ta tạo ra để ngỡ là bảo vệ tình cảm và quyền lợi của mình nhưng thường lại là nguyên nhân khiến nhiều người tổn thương. Bởi một lẽ ở vị trí này, người ta nào có cái quyền tối thiểu là yêu và được ghen như những người bình thường.

																																			Min và Hana, nhân vật chính trong “Chúng ta không thể là bạn” - cuốn sách đánh dấu sự quay trở lại của nữ tác giả Mộc Diệp Tử - người ghi chép tháng năm, đã lựa chọn cho mình một mối quan hệ không ràng buộc như thế, chỉ vì không biết phải yêu thương thế nào cho đúng. Khi một người muốn được yêu lại có quá khứ quá phức tạp cùng những tổn thương khó phai, mà người muốn cho đi tình yêu lại quá trẻ và cá tính để trở thành một bến bờ dịu dàng, bao dung. Cứ thế, từ Việt Nam tới Nhật Bản, một người đuổi, một người chạy trên con đường tình yêu tuy chưa từng được một lần ước hẹn rõ ràng nhưng đã sớm trở thành một mối tình khắc cốt ghi tâm.

																																			Với lối kể chuyện khéo léo và ngôn từ tinh tế, Mộc Diệp Tử sẽ khiến bạn phải bật cười rồi lại bật khóc khi theo dõi cung bậc cảm xúc và diễn biến tâm lý tình cảm của nhân vật, để thấy dường như trong câu chuyện tình trắc trở của Min và Hana cũng có bóng dáng của chính mình: Nghĩ rằng tình yêu là cam nguyện trả giá, hoặc ai yêu trước người ấy sẽ thua, nên một mực giữ mình rồi vô ý mà tổn thương người mình yêu. Qua “Chúng ta không thể là bạn”, Mộc Diệp Tử đã thành công khắc họa tâm lý sợ yêu đầy phức tạp của người trẻ và từ đó mà phủi đi những khúc mắc trong tâm tư của người đọc, chỉ lối cho những xót xa được hàn gắn, xóa dần những ám ảnh cũ xưa, tô thêm màu yêu cùng tự tin vào trái tim đã nguội lạnh, để bạn có thể thử nếm vị hạnh phúc sau quá nhiều chát đắng nhân duyên.

																																			Đặc biệt, không chỉ kể một câu chuyện tình yêu, trong cuốn sách này, bạn sẽ gặp lại cả những bài viết tản mạn về cuộc sống gần gũi, man mác buồn nhưng ẩn chứa sức mạnh chữa lành đậm chất Mộc Diệp Tử. Những nhỏ nhặt giản đơn đời thường, những con chữ chứa đựng sự dịu dàng quen thuộc ấy nhất định sẽ khiến bạn như được tiếp thêm động lực để tiếp tục hi vọng vào những điều tốt đẹp ở ngày mai, để tiếp tin tưởng vào sự chân thành, hạnh phúc của tình yêu thời hiện đại.

																																			“Cuộc đời sẽ luôn có người vì bạn mà chọn giành mọi thứ, cũng có người vì bạn mà từ bỏ mọi thứ, người chọn tiến lên, người chọn lùi về, bạn buộc phải bỏ lỡ một người mới có thể gặp được người tiếp theo. Suy cho cùng, đó chính là sự sắp đặt của duyên phận.”

																																			Đôi khi người ta phải dũng cảm một chút, để thừa nhận những tình cảm sâu trong mình. Hoặc an lành chọn cách bỏ qua rung động cũ, đợi thời gian tìm cho mình một mối nhân duyên mới. Nên lựa chọn thế nào, chúc bạn sau khi đọc xong trang sách cuối cùng của “Chúng ta không thể là bạn” sẽ tự mình hiểu rõ!', 1, 5),
	
	('SKB0014', N'Từ Điển Tiếng “Em” - Tái Bản 2021', 'tdte_remake2021.png', N'Khotudien', 69000, 500, 2021, N'Tiếng Việt', 280, N'Bìa Mềm', 300, N'Bạn sẽ bất ngờ, khi cầm cuốn “từ điển” xinh xinh này trên tay.

																																							Và sẽ còn ngạc nhiên hơn nữa, khi bắt đầu đọc từng trang sách…

																																							Dĩ nhiên là vì “Từ điển tiếng “Em” không phải là một cuốn từ điển thông thường rồi!

																																							Nói đến “từ điển”, xưa nay chúng ta đều nghĩ về một bộ sách đồ sộ, giải thích ý nghĩa, cách dùng, dịch, cách phát âm, và thường kèm theo các ví dụ về cách sử dụng từ đó.

																																							Tuy nhiên, với cuốn sách “Từ điển tiếng “em”, các bạn sẽ hết sức bất ngờ với những định nghĩa mới, bắt trend, sáng tạo, thông minh và vô cùng hài hước.

																																							Tiếng “em” [danh từ] ở đây là tiếng lòng của những người yêu sự thật, ghét sự giả dối

																																							Cô đơn [tính từ] không phải là không có ai bên cạnh, mà là người mình muốn ở cạnh lại không hề ở bên

																																							Sống lỗi [động từ] là cách sống của mấy bạn có người yêu cái là bỏ bê bạn bè liền hà

																																							Nhưng đây không chỉ là cuốn sách chỉ biết nói dăm ba câu chuyện về tình yêu.

																																							Còn nhiều hơn thế!

																																							Là những câu cửa miệng của giới trẻ thời nay; là hoạt động tưởng vô bổ nhưng cần thiết cho sự sống: ăn, ngủ, tắm, gội cũng được định nghĩa hết sức dí dỏ Và cũng không thiếu những “tật xấu, thói hư” nghĩ đến đã thấy “tức cái lồng ngực”

																																							Và bạn yên tâm, “tập đoàn” Kho Từ Điển điều hành bởi Thịt Kho – Hiệp Thị - 2 chủ xị cho ra đời cuốn sách nhỏ bé xíu xiu nhưng mới mẻ và mặn mà vô cùng này sẽ khiến bạn thoát mác “người tối cổ” cười cả ngày không chán, nhìn bạn bè quanh mình bằng ánh mắt dễ thương, tận hưởng cuộc đời với những định nghĩa hoàn toàn!!!

																																							Cuốn sách này giống như một chiếc hộp Pandora thú vị và hấp dẫn người đọc, vì bạn không thể đoán trước được tác giả sẽ “định nghĩa” câu nói đó theo nghĩa nào, cho ta thêm thích thú với những ngôn từ đáng yêu sử dụng mỗi ngày.

																																							Vậy nên, ngay bây giờ, bạn đã sẵn sàng để mở ra những điều thú vị trong cuốn sách này chưa!!!', 1, 5),
	
	('SKB0013', N'Phải Lòng Với Cô Đơn (Tái Bản 2020)', 'plvcd_remake2020.png', N'Kulzsc', 86000, 500, 2020, N'Tiếng Việt', 256, N'Bìa Mềm', 280, N'Cô đơn ơi, lại đây chơi !

																																							Từ cổ chí kim, con người ta sinh ra vốn đã một mình, có người bầu bạn thì tốt mà không có cũng chẳng sao.

																																							Ai cũng có thể tự kiếm tiền, tự lo cho bản thân, tự đứng dậy sau những vấp ngã. Buồn thì vui chơi với bạn bè, chán thì đi shopping, rảnh dỗi thì xem dăm ba bộ phim hài... biết bao thú vui có thể tự mình tận hưởng, không có người yêu thì đã làm sao?

																																							Nếu cả thế giới cho ta biết có người yêu hạnh phúc thế nào, ta cũng chẳng ngần ngại gì mà cho cả thế giới biết mình cô đơn vui vẻ ra làm sao.

																																							Cô đơn hay có người kề cạnh, cũng chỉ là một trạng thái. Ai cũng có lúc này, lúc kia. Và nếu như bạn đang cô đơn, thì đừng lo, bởi tình yêu luôn khó nói. Một ngày đẹp trời nọ, rất có thể nó sẽ ập vào đời bạn mà chẳng cần lý do.

																																							Tới lúc đó, bạn sẽ có cả hàng trăm việc để giải quyết, lo người yêu giận, nghĩ xem ngày kỷ niệm nên làm gì, đi hẹn hò thì ăn gì, mặc như thế nào... Chắc chắn lúc đó, bạn sẽ vô cùng bối rối và vô cùng lo lắng. Nhưng đó là chuyện của tương lai, còn bây giờ, bạn là người vô cùng tự do. Trong lúc đám bạn đang mải mê nghĩ cách dỗ dành người yêu thì bạn có thể đi bất cứ đâu, làm mọi việc mình thích và thả thính bất cứ ai mình muốn. Cô đơn cũng có nhiều điểm tốt đấy thôi!

																																							Vậy nên, thả lỏng và tận hưởng sự cô đơn đi nào. Vì chẳng ai thoát được tình yêu. Cho nên thi thoảng, cô đơn cũng là một phước lành ! Phải lòng với cô đơn chính là một cuốn sách mà ai cũng cần phải có dưới góc nhìn đầy mới mẻ và tươi trẻ của Kulzsc về sự cô đơn.

																																							Xóa tan cái định nghĩa cô đơn là nỗi buồn, Phải lòng với cô đơn là món quà dành tặng cho bất cứ ai vẫn đang một mình. Khi cô đơn, bạn hoàn toàn có thể tập trung để yêu thương chính mình, điều đó không phải tuyệt vời hay sao?

																																							Phải lòng với cô đơn mất rồi, nên cô đơn à, lại đây chơi! Chỉ là cô đơn thôi có gì đâu mà phải buồn, nhỉ. Vui lên nào vì bên cạnh chúng ta còn có sự cô đơn !', 1, 5),
	
	('SKB0012', N'Một Cuốn Sách Buồn… Cười - Vui Vẻ Không Quạu Nha 2', 'mcsbc.png', N'Ở Đây Zui Nè', 79000, 500, 2021, N'Tiếng Việt', 280, N'Bìa Mềm', 300, N'“Tôi lúc 6 tuổi: Mẹ ơi, 25 tuổi con sẽ mua cho mẹ một căn nhà lớn và chiếc xe hơi!

																																										Tôi lúc 25 tuổi: Mẹ yêu, shipper đến rồi con còn thiếu 20k để nhận hàng.”

																																										Đúng là tuổi trẻ chưa trải sự đời, lớn rồi mới biết hóa ra cuộc đời không chỉ có màu hồng, không phải cái gì mình thích, mình muốn là a lê hấp bạn sẽ có được ngay, mà trái lại - bạn phải vật lộn với đủ thứ, dù chỉ đơn giản là để sống một đời bình thường thôi.

																																										Nhưng mà hỏi thật lòng nhé, cuộc đời thực sự “khó ở” và “buồn” tới vậy à?

																																										Nếu mà có, thì xin mời bạn mở ngay cuốn sách mới tinh này của Skybooks, “Một cuốn sách buồn… cười” để thấy hóa ra đời cũng khá là buồn… cười! Tinh túy và mang siêu năng lực “hút hồn” khiến bạn không thể rời mắt, “Một cuốn sách buồn… cười” - tác phẩm thứ hai nối tiếp thành công của cuốn sách Bestseller “Vui vẻ không quạu nha” từ tác giả Ở Đây Zui Nè sẽ khiến bạn cười như chưa bao giờ được cười sau những giờ chiến đấu với cuộc đời đầy căng thẳng!

																																										Mang đậm tính hài hước, tếu táo và trẻ trung của Gen Z, đây sẽ là một cuốn sách dễ dàng khiến nhiều người thích thú bởi như nhìn thấy chính bản thân trong từng trang sách:

																																										“Có thể bạn thấy tôi bình tĩnh với mọi thứ. Nhưng thực ra trong đầu tôi đã bỏ cuộc 7749 lần”.

																																										“Vì đây là cuộc sống, nên ngày trước bạn có thể khóc vì người yêu cũ, và tiếp theo bạn thả thính đu dây một lúc với bảy người!”

																																										“Bạn có biết là con gái luôn đọc tin nhắn trong bảng xem trước. Nhưng họ chỉ trả lời khi họ thật sự muốn trả lời.”

																																										Nhỏ nhắn, nhưng dí dỏm một cách đầy thông minh, tác giả Ở Đây Zui Nè sẽ biến đủ thứ rắc rối thường ngày vẫn làm bạn đau đầu như chuyện “sừng”, chuyện sắm đồ online, chuyện bạn bè, chuyện lương lậu, gia đì thành những chuyện dễ thở và bớt bực bội hơn rất nhiều.

																																										“Một cuốn sách buồn… cười” hi vọng siêu phẩm độc đáo này sẽ giúp bạn “đắm mình” trong bể muối để mặn mòi từ da dẻ, thư giãn và điều chỉnh tâm trạng theo cách nghịch ngợm mà đơn giản nhưng hiệu nghiệm nhất!

																																										Vì cuộc đời vốn không dễ dàng, sao chúng mình không sống nó theo một cách khác? Hạnh phúc hơn, theo một cách buồ cười nhỉ?', 1, 5),
	
	('SKB0011', N'Ếch Ộp - Tuyển Tập Truyện Siêu Ngắn', 'echop_truyenngan.png', N'Nguyễn Hưng', 89000, 500, 2020, N'Tiếng Việt', 200, N'Bìa Mềm', 200, N'“Người yêu cũ là gì?”
																																							Là Vitamin A. Bởi vì các loại quả chứa Vitamin A đều giúp chúng ta sáng mắt ra.

																																							- “Thuốc độc nào mạnh nhất trên đời?”
																																							Tình yêu. Vì nó tác động thẳng lên não, làm mất tỉnh táo và tấn công vào tim, làm chúng ta chết từ từ.

																																							- “Đâu là cảm giác cô đơn nhất?”
																																							Là khi ngồi ăn lẩu một mình vì bạn thân đi chơi với người yêu.

																																							Hài hước, mặn mà, bắt sóng nhanh chóng các xu hướng được giới trẻ quan tâm chính là những gì có trong cuốn sách “Ếch ộp – Tuyển tập truyện siêu ngắn”. Từ chuyện FA, yêu đương, chia tay, đến chuyện trong nhà ngoài ngõ, văn hóa mua hàng inbox, tà tưa full topping, ma sói gắn kết tình đồng đội… gi gỉ gì gi cái gì cũng có.
																																							Cuộc sống của chúng ta, mỗi ngày có hàng tá những mệt mỏi, muộn phiền bủa vây bạn. Cúi xuống thì thấy hết tiền, ngẩng đầu thì thấy deadline, sếp mắng, người yêu quạu,… Nếu như bạn cứ mãi chìm đắm trong mớ hỗn độn, loay hoang ấy thì tâm trạng càng trở nên tiêu cực hơn thôi.
																																							Vậy nên hãy lật giở từng trang sách siêu hài hước, độc nhất vô nhị của chủ fanpage Ếch ộp – Truyện tranh Cực Vip Pro Luxury để thả lỏng, tận hưởng sự vui vẻ, xóa tan đi những xui xẻo, cau có bạn gặp phải:
																																							Năm 20 tuổi, khi các bạn đang kiếm tiền thì tôi đã có mọi thứ…
																																							… Từ thứ 2 đến chủ nhật

																																							Không chỉ vậy, anh Ếch còn tặng bạn trọn bộ bí kíp “cua trai – tán gái” với những câu thả thính không thể không dính:
																																							Cho mình một chai nước chanh nhé!
																																							Có ngay ạ
																																							Không đường nhé!
																																							Ơ, anh không sợ chua ạ?
																																							Vì em đủ ngọt rồi!
																																							“Ếch ộp – Tuyển tập truyện siêu ngắn” nhưng đảm bảo siêu độc, siêu hay, cười đắm say siêu nhiều ngày! Không tin thì mua ngay cuốn sách này, bạn nhé!', 1, 1),
	
	('SKB0010', N'Làm Phụ Nữ Không Khổ Tí Nào', 'lpnkktn.png', N'Kim Oanh', 86000, 500, 2019, N'Tiếng Việt', 224, N'Bìa Mềm', 250, N'Cuốn sách phá vỡ mọi định kiến yếu mềm về con gái - Giúp phụ nữ chủ động, tự tin làm chủ cuộc đời mình
																																			Làm phụ nữ, bạn có thể kiêu hãnh đi trên đôi giày cao gót, khoác lên người một chiếc váy xinh xắn thời thượng. Làm phụ nữ, bạn có thể biến hóa từ một cô nàng bánh bèo thành một cô nàng cá tính chỉ cần bạn muốn. Làm phụ nữ, bạn có thể bộc lộ cảm xúc theo cách mà bạn thấy thoải mái nhất mà không bị đè nén. Làm phụ nữ, bạn có thể sáng nắng chiều mưa trưa gió mùa là chuyện hết sức bình thường. Làm phụ nữ, bạn có thể biến những điều tưởng chừng không thể trở thành chân lý.

																																			Với những đặc quyền chỉ dành riêng cho phụ nữ đã được cả thế giới công nhận ấy bạn hoàn toàn có thể dùng nó để “xoay chuyển” thế giới theo cách riêng của mình. Từ đó thay vì mệt nhoài than thở “Làm phụ nữ sao khổ quá”, làm phụ nữ - bạn hãy tận hưởng điều này như một đặc ân trời ban dành cho bản thân.

																																			Vốn dĩ định mệnh của phụ nữ không phải là sinh ra đã khổ, sinh ra đã thiệt thòi, vất vả. Thế nên dù có trắc trở ra sao hãy cứ lạc quan mà mỉm cười nhắc nhở chính mình: “ Làm phụ nữ không khổ tí nào”

																																			Với “LÀM PHỤ NỮ KHÔNG KHỔ TÍ NÀO" - cuốn sách này sẽ cho bạn cái nhìn rất khác biệt để trở thành người phụ nữ hạnh phúc, thay vì nói những điều bạn muốn nghe Kim Oanh sẽ nói cho bạn những điều bạn cần biết để hiểu được giá trị mà mỗi người phụ nữ nên có và duy trì trong cuộc sống. Bạn cũng sẽ hiểu ra rằng: giá trị của bản thân mởi là thứ quyết định cuộc sống của bạn.

																																			“Làm phụ nữ không khổ tí nào” - bằng việc đưa ra những dẫn chứng ví dụ xác thực qua các nghiên cứu của các chuyên gia tâm lý học bạn sẽ thấy rõ những lầm tưởng lâu này vẫn đóng rễ trong quan điểm của mình về việc phụ nữ thì nên thế này hay thế kia.

																																			“Làm phụ nữ không khổ tí nào” - hãy đọc cuốn sách này để biết tiến cũng biết lùi, biết lúc nào nên tỏ ra yếu mềm và lúc nào nên mạnh mẽ, biết rằng mình cũng xứng đáng được trân trọng và yêu thương thay vì phải tỏ ra bất cần để thể hiện giá trị nữ quyền.

																																			Bởi đã đến lúc phụ nữ cần bước ra từ những lề thói cũ, những định kiến và sự tự giới hạn về “phận hồng nhan” để chủ động làm chủ cuộc đời của mình!', 1, 5),	
	
	('SKB0009', N'Tiếc Rằng Mình Chẳng Đợi Được Nhau', 'trmcddn.png', N'Khải Vệ', 86000, 500, 2019, N'Tiếng Việt', 224, N'Bìa Mềm', 250, N'"Muốn bình yên là phải biết đủ.

																																				Đủ yêu thì giữ, đủ buồn thì buông"

																																				Trên đời này, tuyệt nhiên cái gì cũng đều có giới hạn.

																																				Không ai yêu mãi được một người trong vô vọng. Càng chẳng ai chờ mãi được một bóng lưng vô tình.

																																				Thất vọng đủ nhiều, ai rồi cũng sẽ đều phải buông tay.

																																				Thế giới vẫn quay, chỉ mình bạn ngồi lại. Ai cũng đang chiến đấu với đủ điều ngoài kia, bạn không thể ôm mãi nỗi đau mà trì hoãn những chuyện khác trong cuộc đời mình được.

																																				Vậy nên, bạn à.

																																				Đứng dậy, bước đi và sống tiếp.

																																				Vì dù bạn có ngồi đó bao lâu nữa, cũng không ai quay trở lại, càng không ai bên cạnh bạn mãi để vực bạn dậy đâu. Tất cả đều chỉ có thể là bạn, chỉ có thể là bạn mới giúp mình đứng lên được.

																																				Chuyện tình yêu, suy cho cùng cũng chỉ là một gia vị trong cuộc sống. Có thì đậm đà, nhưng không có thì cũng chẳng sao. Học cách sống nhạt đi một chút không chết ai cả.

																																				Hôm nay đủ yêu thì giữ.

																																				Ngày mai đủ buồn thì buông.

																																				Níu làm gì nếu mình đã đủ thương đau.

																																				Tiếc làm gì nếu mình đã chẳng đợi được nhau.

																																				Tháng năm vốn dĩ ngắn ngủi, đừng lãng phí thêm thời gian của bạn nữa, đừng để bình yên của mình phụ thuộc vào bất kì ai,  đừng vì những thứ không đáng mà tiếp tục va vấp đau lòng.

																																				Một chữ buông có thể sẽ chẳng dễ dàng, có thể sẽ mất nhiều thời gian, nhưng rồi bạn sẽ ổn, sẽ thôi đau, sẽ chẳng sao nữa.

																																				"Tiếc rằng mình chẳng đợi được nhau" - Dành cho bạn - những trái tim đang đi sự yên bình khi đi qua những ngày ngập bão.

																																				Mong rằng cuốn sách này giúp bạn thêm can trường để ngẩng đầu lên, bỏ lại sau lưng tất cả mọi yêu thương, hờn ghét và đứng dậy sống tiếp những ngày tốt hơn cho chính bản thân mình!', 1, 5),

	('SKB0008', N'Hiện Tại Kiên Trì Tương Lai Kiên Cố', 'htkttlkc.png', N'aT', 86000, 500, 2020, N'Tiếng Việt', 272, N'Bìa Mềm', 280, N'Người ta nói tương lai được kiến tạo từ những ngày mà chúng ta đi qua, đầy rẫy những áp lực dồn nén từ mọi phía. Đó chính là lúc chúng ta rèn giũa bản thân, thử thách mình xem có thể chịu đựng được những đổi thay của một đời đầy biến động hay không?
																																				Nghe có vẻ hơi đáng sợ và không muốn đối mặt, nhưng thực ra chỉ cần kiên trì, mọi thứ đều sẽ ổn.

																																				Chỉ cần bạn kiên trì, bạn sẽ từng chút từng chút góp nhặt cơ hội, dũng khí và mạnh mẽ hơn.
																																				Chỉ cần bạn kiên trì, bạn có thể hiện thực hóa những gì mà mình mong muốn, sống một cách thoải mái, nhẹ nhõm và rực rỡ hơn.
																																				Chỉ cần bạn kiên trì, một chút, mỗi ngày, thì tương lai nhất định bạn sẽ đi trên con đường dễ dàng và càng ngày càng thong dong hơn.

																																				Ngược lại, nếu bạn cứ sợ hãi, trì hoãn và chẳng làm gì cả thì đừng mong ngày mai cuộc đời sẽ đối tốt với bạn hơn hôm qua. Cuộc sống vẫn luôn phải tiếp tục, vẫn luôn có khó khăn mà bạn cần phải trải qua. Bởi vậy, không cần biết sau mỗi bình minh, chúng ta sẽ lại bị vùi dập hay nhận được một món quà, nhưng hãy tự nhủ: "Hiện tại kiên trì, tương lai kiên cố".

																																				"Hiện tại kiên trì, tương lai kiên cố" - cuốn sách được viết bằng sự sẻ chia chân thành và những trải nghiệm từ tác giả aT, sẽ giúp người đọc cảm thấy đủ đầy, nâng niu những giá trị do sự nỗ lực của bản thân xây dựng nên, niềm hạnh phúc và bình an ươm mầm trong sâu thẳm.
																																				“Việc của bồ công anh không phải là sống như đời hoa hồng, mà là sống hẳn hoi đời của mình, nở bông hoa của chính mình”
																																				Phải rồi, kẻ không bị đời thay đổi, là kẻ có thể thay đổi cuộc đời. Chiến thắng luôn thuộc về người dám theo đuổi đến cuối cùng.

																																				Một lần nữa với câu thần chú “Hiện tại kiên trì, tương lai kiên cố”! Hy vọng sẽ giúp bạn có một trái tim lạc quan, thêm vững vàng trên hành trình hoàn thiện bản thân, vì một cuộc sống tốt đẹp hơn.

																																				Nhất định phải thực sự cố gắng, để sống một đời không nuối tiếc!', 1, 5),

	('SKB0007', N'Chuyện Chúng Ta Không Cần Người Thứ Ba', 'cctkcntb.png', N'Hạt Dẻ Dưa Hấu', 89000, 500, 2020, N'Tiếng Việt', 192, N'Bìa Mềm', 200, N'Hai người thì nồng nhiệt, ba người thì mất vui.

																																								Và "Chuyện chúng ta không cần người thứ ba" là cuốn sách để chúng ta cùng nhau thấu hiểu điều giản đơn ấy.

																																								"Chuyện chúng ta không cần người thứ ba" - giống như cái tên của nó, cuốn sách này không phải là những câu chuyện tình yêu êm đềm chỉ mang màu hạnh phúc, đó còn là những câu chuyện không mấy bình yên nhưng cũng đầy hiện thực:

																																								“Nhà đã dột lại còn gặp mưa giông, crush chưa đổ thì lại có đứa cán ngang đường, yêu nhau chưa về chung nhà thì sừng non đã rục rịch nhú lên".

																																								Qua 11 truyện ngắn với những nhân vật có độ tuổi, thân phận, hoàn cảnh khác nhau cùng đủ loại tình huống trái ngang, dở khóc dở cười được kể bằng một giọng văn linh hoạt khéo léo và cũng rất hài hước hóm hỉnh, tác giả Hạt Dẻ Dưa Hấu đã phác thảo 11 câu chuyện đầy thú vị chất chứa hơi thở của cuộc sống. 11 câu chuyện hấp dẫn thậm chí đôi khi có chút éo le nhưng không hề nặng nề hay ảm đạm ấy sẽ dẫn dắt bạn bước vào thế giới tương tư đầy phức tạp của xã hội hiện đại, nơi mà chúng ta gặp quá nhiều chuyện lừa gạt nhưng vẫn nhen nhóm đâu đó những mong mỏi về thứ tình yêu lâu dài không tạm bợ.

																																								“Chuyện chúng ta không cần người thứ ba” - ở đó bạn sẽ bắt gặp những câu chuyện quen thuộc như: đau đầu khi “theo đuổi nam thần”; tiếc nuối khi thanh xuân vụt mất; day dứt khôn cùng khi không thể bên cạnh người mình thương; buồn tủi, đau đớn khi gặp thứ “đàn ông trăng hoa”… Và dù là yêu thương hay thù hận; nồng nhiệt hay phai mờ; sâu đậm hay dửng dưng… tất cả những thái cực của tình yêu đều có trong “Chuyện chúng ta không cần người thứ ba". Để rồi phơi bày hàng loạt các vấn đề thực tế của xã hội, đem đến những lời khuyên thẳng thắn dành cho những người đang yêu, để yêu một cách tỉnh táo.

																																								“Chuyện chúng ta không cần người thứ ba” – gửi đến những ai đang hoài nghi về tình yêu, hoài nghi về sự tồn tại của chân thành, chung thủy, hãy đọc cuốn sách này. Vừa đủ mềm mỏng, vừa đủ cứng rắn, “Chuyện chúng ta không cần người thứ ba” không phải để bạn quá mức cảnh giác rồi sợ hãi nói không với tình yêu, mà là để yêu một cách đúng đắn, sáng suốt hơn.  Bởi chúng ta đều là những con người bình thường trong tình yêu, cũng khát cầu những hạnh phúc đơn sơ, cũng dễ yếu đuối, cũng dễ ích kỷ , cũng dễ cố chấp nhưng dù thế nào cũng đừng mù quáng và cũng đừng dễ dàng để vuột mất những người đáng được trân trọng.

																																								“Chuyện chúng ta không cần người thứ ba”-chúc mối tình của chúng ta sẽ là mối tình vừa vặn nhất, chân thành nhất, vững chãi nhất từ cả hai phía - để sau tất cả không có bất kỳ ai phải rời đi!', 1, 5),

	('SKB0006', N'Cô Gái Cãi Lời Thượng Đế', 'cgcltd.png', N'Ploy', 109000, 500, 2019, N'Tiếng Việt', 392, N'Bìa Mềm', 400, N'Tớ đã vì cậu mà tin vào tất cả những điều hoang đường nhất. Đã vì cậu mà lang thang năm châu bốn bể tìm cách về quá khứ. Đã vì cậu mà ngu ngốc làm hại bao nhiêu người. Đến cả cuộc sống của chính mình, bây giờ tớ chỉ có thể cắn răng mà chấp nhận những sứt mẻ. Vậy mà cậu chẳng hay chẳng biết gì hết… "


																																	Trong cuộc đời này, đã có chàng trai hay cô gái nào khiến bạn yêu đến ngu muội, yêu đến thay đổi tâm tính, yêu đến cả bản thân cũng không màng, đến nỗi bạn có thể vứt bỏ tất cả vì người ấy chưa?

																																	“Cô gái cãi lời Thượng Đế” là câu chuyện nói về hành trình tìm cách thay đổi sự sắp đặt của vận mệnh của cô nàng Thụy Khanh - một nữ cường nhân điển hình;  vì Tuấn Minh - một chàng trai có thể khiến cô từ bỏ hiện tại tốt đẹp để tìm về quá khứ.

																																	Trong hành trình ấy, Ploy tinh tế dẫn dắt ta tới những góc khuất về cái chết năm 17 tuổi của Tuấn Minh. Thấp thoáng trong mỗi chương truyện là yếu tố kì bí về một thế giới tồn tại song song với thực tại. Những chi tiết đan xen, xâu chuỗi, giọng văn mượt mà phảng phất hương vị ngọt ngào xen lẫn đắng cay tạo hấp dẫn cho bạn đọc.

																																	“Cô gái cãi lời Thượng Đế” là hành trình nhiều vụn vỡ và nước mắt nhưng cũng chứa chan hạnh phúc ngây ngô của tuổi học trò. Đó là câu chuyện đầy cảm động bởi tình cảm của Thụy Khanh dành cho Tuấn Minh, dù đã 13 năm trôi qua nhưng cô vẫn luôn đau đáu, một mực tìm cách đưa Tuấn Minh trở về từ Thiên Đàng, mặc cho những lời can ngăn, cảnh báo, mặc cho cuộc sống của cô có thể bị đảo lộn, cho dù tương lai của cô và Tuấn Minh chẳng biết sẽ đi về đâu.

																																	“Cô gái cãi lời Thượng Đế” là cuốn sách như vậy, nhẹ nhàng nhưng chất chứa nhiều cung bậc cảm xúc từ bi thương cho đến những điểm chấm hạnh phúc mong manh của nữ chính Thụy Khanh và “chàng trai về từ thiên đàng” Tuấn Minh.

																																	Cuốn sách không chỉ có những nỗi đau, mà còn xen lẫn cả những kỷ niệm đẹp đẽ, trong sáng của tuổi thanh xuân. Rất có thể bạn sẽ thấy bóng dáng của mình trong mối tình ngây dại thuở học trò, như lần đầu tiên tặng hoa cho con gái hay khuôn mặt đỏ như trái cà chua lúc được người ấy lau bảng giúp.

																																	Đánh dấu sự trở lại đầy khác biệt của Ploy với những cuốn bí kíp ý nghĩa dành cho phụ nữ trước đó, bằng giọng văn logic nhưng vẫn đầy cảm xúc, “Cô gái cãi lời Thượng Đế” sẽ đưa bạn vào một câu chuyện tình yêu với những nút thắt mở cuốn hút.

																																	13 năm chờ đợi, 13 năm cho một tình yêu, cuối cùng sẽ đi đến đâu, để lại những gì, hãy đọc để tự cảm nhận để, tự tìm đáp án cho những đắn đo, nghi ngại vẫn tồn tại trong trái tim, bạn nhé!', 1, 5),
	
	('SKB0005', N'Đã Qua Chẳng Vãn Hồi Chỉ Cần Bước Tiếp Thôi', 'dqcvhccbtt.png', N'Hanfu', 86000, 500, 2020, N'Tiếng Việt', 216, N'Bìa Mềm', 220, N'Đâu đó giữa những bộn bề và hối hả, vội vã của cuộc sống vẫn sẽ có vài khoảnh khắc chúng ta muốn chậm lại, cho bản thân một quãng nghỉ để tạm quên đi những mệt mỏi, áp lực, để hồi tưởng, nhớ về những kỉ niệm đã qua, về một thời ta từng non trẻ, dại khờ và ngây thơ, chưa từng biết muộn phiền và trăn trở về thời gian, cuộc sống.

																																							Và "Đã qua chẳng vãn hồi chỉ cần bước tiếp thôi" - cuốn sách mới của Hanfu đã viết cho những ngày như thế, những ngày người ta chẳng rõ cảm xúc của chính mình, những ngày ngẩn ngơ và hoang mang trước những đổi thay từng chút một của cuộc đời, những ngày cần cho mình khoảng lặng, cần thêm dũng khí để mạnh mẽ hướng về tương lai - nơi vẫn còn rất nhiều điều đáng để chờ mong.

																																							"Đã qua chẳng vãn hồi chỉ cần bước tiếp thôi" - với 5 chủ đề: Self help (bạn có thể cần đến nó), beloved (bạn sẽ yêu nó vì thấy câu chuyện của bất cứ ai đó giống mình), note to self (và cả những điều bạn nghĩ mình nên thay đổi) you will be fine (rồi bạn sẽ ổn thôi và bước tiếp thay vì ngoái đầu nhìn quá khứ), sau cùng là From Hanfu – mong bạn sẽ luôn hạnh phúc kiên trì bước tiếp vì con đường mình đang đi.

																																							Mong bạn hiểu rằng cho dù từng vấp ngã, cho dù từng sai lầm tiếp nối sai lầm, bạn vẫn có con đường cần phải đi. Đừng sợ hãi, hiện tại là điều bạn sẽ phải bước qua nếu muốn tương lai là hạnh phúc. Cũng đừng đợi đến khi quá muộn mới trân trọng thời gian bạn có và trân trọng những những yêu thương bạn bởi năm tháng tưởng dài nhưng cũng sẽ trôi qua chỉ trong một lần chớp mắt mà thôi.

																																							"Đã qua chẳng vãn hồi chỉ cần bước tiếp thôi" – có một món quà ấm áp đầu xuân Skybooks gửi đến bạn như thế, cùng bạn gói ghém những nuối tiếc ở một góc nào đó trong lòng, như một hành trang để bạn vững vàng trưởng thành…Để bạn cũng có thể nhớ về một khoảng thời gian tươi đẹp đã qua, khiến bạn mỉm cười để rồi sau đó lại có thể tiếp tục cuộc hành trình mà mình đang hướng tới thật nhẹ nhàng,bình yên.

																																							Bởi ai rồi cũng cần phải bước tiếp, còn những chuyện của quá khứ chúng ta hãy nhớ để mỉm cười, để thêm mạnh mẽ và kiên cường chứ không phải để nuối tiếc mà day dứt tổn thương.

																																							Nhớ nhé!', 1, 5),

	('SKB0004', N'Nhất Định Hạnh Phúc Cả Lúc Cô Đơn', 'ndhpclcd.png', N'Hanfu', 85000, 500, 2018, N'Tiếng Việt', 208, N'Bìa Mềm', 220, N'“Tình cảm cũng như hành lý, sau mỗi chuyến đi đều phải sắp xếp lại để còn tiếp tục cuộc hành trình. Chuyến đi của mình còn dài, cứ thong thả, từ từ mà gói ghém…”

																																				Trưởng thành rồi, ta sẽ hiểu, có những việc trong đời ta nghĩ mà không như ta nghĩ. Người ta yêu đầu tiên không phải người ta yêu cuối cùng. Người ta yêu sâu đậm chưa chắc là người yêu ta đậm sâu. 

																																				Chúng ta sẽ nhận ra rằng chẳng có gì là chắc chắn, là cố định, là vĩnh cửu. Tất cả đều chỉ là nhất thời. Yêu sâu đậm, cũng có ngày quay lưng.

																																				Chúng ta sẽ buộc phải học cách làm quen với việc từ bỏ những điều quan trọng. 

																																				Yêu một ai đó, rồi chia tay, trở về cuộc sống một mình.

																																				Có thể, bạn sẽ cảm thấy việc đó quá kinh khủng ở lần đầu. Là không tin được, là chẳng hiểu tại sao lại thế, là oán hận, giận dữ. Nhưng rồi thời gian sẽ khiến bạn nhận ra rằng chuyện chia ly cũng là chuyện thường tình.

																																				Cảm xúc là nhất thời, ai có thể đoán định được đây.

																																				Chuyến đi nào cũng có hồi hết, chuyến phiêu lưu đến xử sở tình yêu cũng vậy. Và túi hành lý chứa đầy tình cảm ấy, sau mỗi chuyến đi, bạn lại sẽ biết cách sắp xếp gọn gàng, nhanh chóng hơn.

																																				Cô đơn hay đã có người yêu, cũng chỉ là một trang thái sẽ xuất hiên trong cuộc đời bạn ở một thời điểm nhất định.

																																				Khi bạn đã quen và hiểu được luật lệ tình cảm trong thế gian này, bạn sẽ chẳng còn thấy đáng sợ, oán hận, hay giận dữ gì nữa cả.

																																				Cô đơn, cũng chỉ là chuyện thường tình thôi. Là chuyện ai cũng phải trải qua trong đời. Là chuyện chẳng ai tránh khỏi để có thể trưởng thành.

																																				Vậy nên, hà cớ gì lại chẳng sống hạnh phúc, ngay cả lúc cô đơn ?

																																				Chúc bạn một mùa đông cô đơn nhưng vẫn rất ấm áp cùng tác phẩm mới nhất của Hanfu « Nhất định hạnh phúc, cả lúc cô đơn » !', 1, 5),

	('SKB0003', N'Chúng Ta Sống Có Vui Không?', 'ctscvk.png', N'Nguyễn Phong Việt', 86000, 500, 2020, N'Tiếng Việt', 224, N'Bìa Mềm', 250, N'Những người trẻ đang bận vật lộn giữa cuộc sống mưu sinh? Những người trẻ phải từ bỏ đam mê, oằn mình thực hiện ước mơ còn dang dở của bố mẹ?

																																					Ắt hẳn, mỗi người trẻ trong cuộc sống của mình đều từng có những lúc băn khoăn hoang mang giữa những lựa chọn, sống vô định giữa những mục tiêu.

																																					Nhưng có khi nào bạn dừng lại, suy ngẫm và đặt câu hỏi rằng:

																																					"Nếu chúng ta làm việc không vui, yêu một ai đó không vui, đi đâu đó không vui… Vậy chúng ta sống để làm gì?"

																																					Chúng ta sống có vui không? Dù  bạn đã hoặc chưa từng tự hỏi mình sẽ là cuốn sách giúp bạn tìm ra câu trả lời vì sao đã cố gắng vẫn chẳng thể hài lòng với chính cuộc sống này, mỗi câu chuyện chia sẻ lại là một lý do đơn giản nhưng đã bị bỏ quên trên con đường vội vã trưởng thành, hoặc rằng nó vẫn ở đâu đó trong lòng bạn chờ bạn mở ra cánh cửa đón nhận nó.

																																					Bởi đời người đôi khi chỉ cần một ai đó, dù là xa lạ, hỏi rằng: "Bạn sống có vui không?"

																																					Nhiều người trẻ cùng thế hệ biết cách đi tới hạnh phúc, thay vì những mộng tưởng.

																																					Nhưng có những người đôi khi cố đi tìm sự phù phiếm, so sánh bản thân hơn thua với người đời mà quên mất bình an hạnh phúc là xuất phát từ tâm hồn.

																																					Hạnh phúc không phải một điểm đến mà là một hành trình dài.

																																					Hạnh phúc nảy mầm từ những điều bạn làm trong hành trình đi tới thành công.

																																					Đôi khi quá trình ấy không quan trọng việc bạn có tìm được hay không nhưng những bài học trên hành trình tìm kiếm đó sẽ mở ra nhiều trải nghiệm tuyệt vời.

																																					Bằng lời văn gần gũi nhưng sâu lắng của nhà thơ Nguyễn Phong Việt - người từng trải qua tuổi trẻ nhiệt huyết, cũng va chạm đủ với mọi thăng trầm của đời sống, “Chúng ta sống có vui không?” sẽ đem đến những bất ngờ dành cho độc giả đã quen gặp anh qua thơ. Với tất cả những trải nghiệm mà anh đã đi qua, mỗi chúng ta đều có thể thấy phảng phát một phần chính bản thân mình để rồi suy ngẫm, khích lệ mình hơn, phấn đấu và sống như những gì mình hằng mong đợi. 

																																					Sau đó, hãy sống thật tốt, tận hưởng trọn vẹn cho tuổi trẻ của mình bởi chúng ta đâu thể biết được ngày cuối cùng ta sống: hôm nay, ngày mai hay một ngày nào đó khác!',
																																					1, 5),

	('SKB0002', N'Bao Nhiêu Thương Nhớ Cho Vừa', 'bntncv.png', N'Nguyễn Phong Việt', 98000, 500, 2020, N'Tiếng Việt', 160, N'Bìa Mềm', 200, N'Với khả năng sáng tác miệt mài không ngừng nghỉ, vẫn đúng hẹn mỗi mùa Giáng Sinh, nhà thơ Nguyễn Phong Việt tiếp tục đem đến một tập thơ mới mang tên “Bao nhiêu thương nhớ cho vừa” - một tập thơ đầy chiêm nghiệm về cuộc sống.

																																					"Có vài ngày chúng ta muốn gọi tên
																																					bằng niềm thương, nỗi nhớ
																																					nhưng một giọt nước mắt đã rơi ngay vào lúc chúng ta muốn nén vào lòng một hơi thở
																																					lạnh buốt một chút mùi tan vỡ
																																					nên lại thôi…"

																																					- Trích “Bao nhiêu thương nhớ cho vừa”- Tác giả Nguyễn Phong Việt.

																																					Vẫn là những dòng thơ mang sắc thái mềm mại, lãng mạn lại dịu dàng thấu tường bao tương tư tình yêu, giông bão đời người, đậm chất thơ Nguyễn Phong Việt, "Bao nhiêu thương nhớ cho vừa” là cuốn sách chất chứa trong đó bao tâm sự và nỗi niềm khó tỏ giúp chúng ta thấy chính mình đang ở góc nào đó nơi lưng chừng tuổi trẻ, nơi chúng ta hối hả với dòng chảy của thời gian, nơi chúng ta loay hoay bận rộn tìm kiếm chốn bình yên đủ rộng để trú vào.

																																					Ở lưng chừng ấy chúng ta có thể đơn côi, có thể buồn tủi, có thể đớn đau. Nhưng đó cũng có thể là những an ủi ân cần, lặng thinh và những yêu thương ngọt ngào.

																																					Ở lưng chừng ấy, có những mối quan hệ giữa người với người, có ích kỷ đem chôn, có hương vị của trách nhiệm trong tình thương đến bao nhiêu cho vừa.

																																					Ở lưng chừng ấy, "Bao nhiêu thương nhớ cho vừa" giống như lời hỏi han chăm sóc đúng thời điểm, thắp lên ngọn lửa hy vọng trong lòng chúng ta, hong khô những giọt nước mắt, sưởi ấm những trái tim tổn thương sau bao lần vỡ vụn.

																																					Để rồi, từng dòng thơ nhẹ nhàng gieo vào lòng chúng ta những đóa hoa đồng cảm, chạm tới những góc khuất chúng ta vẫn cật lực giấu kín, chúng ta thấy ở đó một cái tôi khác cũng đã từng mềm yếu. Nhưng cái mềm yếu không bi lụy, vì sau tất cả ai rồi cũng phải rời đi, phải chấp nhận những gai góc xù xì của cuộc đời. Chúng ta rời đi khi đã đủ mạnh mẽ, để trân trọng bản thân và tìm được hạnh phúc riêng cho chính mình. Vì đôi khi:

																																					“Có những buổi sáng
																																					chúng ta có hẹn với một tiếng cười!

																																					Có hẹn mỗi năm, gặp lại nhà thơ Nguyễn Phong Việt trong mùa Giáng Sinh này, hãy pha một ấm trà, ngồi xuống, cùng Skyboks chậm rãi và bình tĩnh lật mở từng trang thơ “Bao nhiêu thương nhớ cho vừa” , một tập thơ tràn đầy xúc cảm và tinh tế để rũ bỏ hết những ưu phiền, mở lòng đón nhận bao đắm say lặng thinh của thực tại theo một lối đi khác an yên hơn!',
																																					1, 5),

	('SKB0001', N'Cảm Ơn Người Đã Rời Xa Tôi - Tái Bản 2021', 'condrxt_remake2021.png', N'Hà Thanh Phúc', 89000, 500, 2021, N'Tiếng Việt', 232, N'Bìa Mềm', 250, N'Khi còn trẻ, chúng ta thường hiếm khi hiểu được thế nào là tình yêu sâu sắc, chỉ tới ngày mất đi mới biết vội vàng tìm lại. Mà khi đó thứ ta còn vớt vát được chỉ là chút kỷ niệm, hoặc là một bài học đắng ngắt về tình yêu kèm theo nỗi cô đơn và day dứt tới không ngừng.

																																										Những hoài niệm, tiếc nuối dai dẳng, những nỗi buồn thật đẹp của năm tháng không thể trở lại ấy đều được Hà Thanh Phúc gom nhặt, kết hợp với hành trình trải nghiệm tự thân cũng từng rất cô độc và trăn trở tạo ra một "Cảm ơn người đã rời xa tôi" giàu cảm xúc và thoả mãn những ai thích thứ văn chương màu xám.

																																										Thứ văn chương có màu sắc tuy nghe có vẻ ảm đạm nhưng dưới ngòi bút của Hà Thanh Phúc, bằng lối kể chuyện vô cùng tinh tế, bằng sự dũng cảm khi khai thác những số phận dị biệt, bằng cách khéo léo dịu dàng gửi gắm những thông điệp lạc quan đã giúp "Cảm ơn người đã rời xa tôi" tuy dằng dặc nỗi buồn nhưng lại không hề khiến nỗi buồn bị lặp lại nhàm chán. Qua đó Hà Thanh Phúc còn khiến người đọc nhớ lại tất thảy mọi thứ, mọi hồi ức, mọi lời ly biệt. Để rồi quay lại đối diện thành thật với những cảm xúc mà đã từng có lúc người ta tìm cách chạy trốn nó.  

																																										Chậm rãi lật giở từng trang của "Cảm ơn người đã rời xa" là 16 câu chuyện hoang hoải đến xót lòng. Nỗi buồn trong những trang sách như ken lại dày đặc, phũ phàng và hiện thực hơn bao giờ hết:

																																										Ở đó có những chàng trai, cô gái sau khi có tất cả mới chạnh lòng nhận ra mình đã để lỡ người thương. Có đôi bạn tan nát vì cùng tranh chỗ đứng trong một mối tình. Có người bỏ đi biệt xứ, tìm cho mình vài mối tình chỉ để cay đắng nhận ra mình còn vấn vương chuyện cũ… Có người đáng trách, có người đáng thương, tất cả đều loay hoay đi tìm cho mình chút bình yên.

																																										“Cảm ơn người đã rời xa tôi”, cuốn sách từng gây tiếng vang, liên tục lọt Top Best - seller của tác giả Hà Thanh Phúc vào năm năm trước nay sẽ được ra mắt một phiên bản hoàn toàn mới, đây là món quà mà anh dành tặng cho không chỉ những bạn đọc cảm mến câu chữ của anh mà còn cho cả những ai đang yêu và không đủ dũng cảm để đặt dấu chấm cho một mối tình vô vọng...

																																										Vì buông tay người mình yêu trăm phần là chuyện khó. Vì chấp nhận bứt mình ra khỏi cuộc đời của một người mình ước ao được sống trọn vẹn là cuộc thử thách mong manh của lý trí và con tim. Vì đời mấy khi gặp được người khiến mình muốn yêu mà cũng được họ yêu tới cháy bỏng, nên hiểu làm sao được khi một ngày thức dậy - thấy mình chỉ là một trang giấy người ta lật qua?

																																										“Nhưng đôi khi cuộc sống là vậy. Người mình ở cạnh, đôi khi lại chẳng thể là người mình yêu nhất…”

																																										Dù muốn dù không, chúng ta đôi khi phải chấp nhận: "Cảm ơn người đã rời xa tôi".

																																										“Cảm ơn vì đã để tôi tự minh học được cách mạnh mẽ.”', 1, 5)


--insert Skynovel
insert into Books(bookID, bookName, bookImage, author, price, quantity, publishingYear, [language], numberPage, form, [weight], bookDescribe, cid, pcid)
values
	('SKN0001', N'Đừng Để Mẹ Khóc', 'ddmk.png', N'Kim Joo Young', 86000, 500, 2019, N'Tiếng Việt', 280, N'Bìa Mềm', 300, N'Có ai đó đã từng nói rằng: “Vì Thượng đế không thể tạo ra các thiên thần ở khắp mọi nơi, nên Người đã tạo ra những người mẹ.” “Đừng để mẹ khóc” của Kim Joo Young chính là câu chuyện về một thiên thần như thế.
	
																																Cuốn sách mở ra khung cảnh một miền quê, ở nơi đó có người mẹ nghèo khó, tảo tần, hy sinh cả tuổi xuân những mong đổi lấy ngày tháng bình yên cho các con của mình. Thế nhưng vì những hiểu lầm dai dẳng trong quá khứ mà Bae Kyung-won – người con trai được bà yêu thương nhất đã xa cách mẹ mình suốt mấy chục năm.  

																																Nỗi đau đó cứ âm ỉ cháy cho đến một ngày Bae Kyung-won hay tin… mẹ mình đã mất.

																																Trở về quê hương đưa tiễn bà trên chặng đường cuối cùng, đến lúc này Bae Kyung-won mới thấu hiểu được tất thảy những đắng cay mà bà đã phải chịu đựng. Người mẹ cứng rắn tưởng như không gì có thể làm khó nổi của ông… hóa ra cũng chẳng mạnh mẽ đến vậy.  Từng trang ký ức hiện về, những nút thắt dần được tháo mở khiến Kyung-won nhận ra, những ngày tháng ấu thơ có bàn tay ấm áp của mẹ chở che mới chính là quãng thời gian đáng giá và hạnh phúc nhất.

																																Với lối kể chuyện tự nhiên, chân thật, “Đừng để mẹ khóc” như một thước phim quay chậm khắc họa nên câu chuyện đầy nước mắt về tình mẫu tử. Nhẹ nhàng, đầy tình cảm nhưng lại có thể chạm đến những góc sâu nhất trong trái tim người đọc, cuốn tiểu thuyết đã khiến hàng triệu trái phải thổn thức và trở thành một trong những tựa sách best seller tại xứ sở kim chi.', 2, 5),
	
	('SKN0002', N'Phòng Kín Nhốt Cá (Bộ 2 Tập)', 'pknc.png', N'Mặc Bảo Phi Bảo', 256000, 500, 2021, N'Tiếng Việt', 792, N'Bìa Mềm', 800, N'“Nếu như không biết đến thể thao điện tử, chưa từng bước vào thế giới này, Dt, cậu muốn làm gì?”

																																				“Không có nếu như.” Chỉ cần thế giới đó có cô ấy, thì sẽ có tôi.

																																				---------

																																				Lần đầu tiên nhìn thấy Ngải Tình từ xa, Dt đã trúng “tiếng sét ái tình”:

																																				“Anh gặp ai cũng vô ý

																																				Chỉ rung động khi nhìn thấy một người…”

																																				Thuở đó, Ngải Tình là thần tượng trong lòng rất nhiều người đam mê thể thao điện tử, là “thánh nhắm chuẩn” với giác quan thứ sáu cực nhạy trong mỗi trận thi đấu, cũng là cô gái rất hay đỏ mặt, giống hệt biệt danh mọi người gọi cô – AppleDog. Thuở đó, cô đã có người sát cánh kề bên…

																																				Yêu thầm chính là cảm giác vừa ngọt ngào lại vừa chua xót. Dt những tưởng bản thân chỉ có thể mãi đứng phía xa, lẳng lặng dõi theo bóng lưng và từng bước chân của cô. Nhưng số phận thật trớ trêu, tình yêu của cô chẳng được bền lâu. Cậu muốn bù đắp những tiếc nuối năm ấy cho cô, bởi vậy đã quyết tâm bước chân lên con đường thể thao điện tử nơi cô thuộc về.

																																				Yêu thầm mười năm, biết bao nhiệt tình đều chẳng hề giảm đi, bởi vì người mà cậu hướng tới luôn chỉ có một.

																																				Chính cô đã khiến cậu từ một người không biết chút khái niệm gì về thể thao điện tử trở thành “Tay trái của thần” được người người ngưỡng mộ. Chính cô cũng đã giúp cậu tìm được sự nghiệp bản thân hằng yêu, tìm được lý tưởng của chính mình, tìm được con đường tương lai…

																																				Với lối viết nhẹ nhàng vốn có của Mặc Bảo Phi Bảo, “Phòng kín nhốt cá” chính là những cung bậc cảm xúc pha lẫn đắng cay ngọt bùi kể từ lúc thầm yêu cho đến khi được thỏa ước nguyện bên nhau của chàng trai Dt. Cậu vốn không dám mơ ước được đi cùng Ngải Tình đến cuối đời, cậu chỉ hy vọng trong những khoảnh khắc sát cánh kề bên, cậu và cô có thể trở thành ánh mặt trời rực rỡ nhất trong lòng nhau.

																																				Dt, AppleDog’s time.

																																				Thời đại của anh cũng chính là thời đại của em.', 2, 5),
	
	('SKN0003', N'Yêu Em Là Điều Tuyệt Vời Nhất Anh Đã Làm', 'yeldtvnadl.png', N'Sênh Ly', 160000, 500, 2020, N'Tiếng Việt', 440, N'Bìa Mềm', 450, N'“Trên đời này chỉ có hai loại tình cảm có thể gọi là lãng mạn: Một loại gọi là đồng cam cộng khổ, loại khác là đồng quy vu tận.

																																							Việc chúng ta nên làm nhất là cùng người mình yêu đầu tiên đồng cam cộng khổ, rồi cùng người yêu tiếp theo đồng quy vu tận.”

																																							-------

																																							Nếu nói nhân duyên của câu chuyện tình yêu này bắt đầu từ đâu, thì có lẽ tất cả đều do căn bệnh mất ngủ khó chữa của Thẩm Tích Phàm.

																																							Thẩm Tích Phàm – một cô gái có thể được xếp vào hàng ngũ tinh anh của xã hội, nhưng để có được điều đó, cô đã phải đánh đổi bằng vô số áp lực công việc, kèm theo đó là những đêm trằn trọc mất ngủ.

																																							Và rồi mọi chuyện bắt đầu từ khi cô gặp được bác sĩ chủ trị của mình – một chàng trai ấm áp có tên giống hệt một vị thuốc Đông Y – Hà Tô Diệp.

																																							Ai cũng ngỡ như đó chỉ là một cuộc gặp gỡ thoáng qua bình thường giữa bệnh nhân và bác sĩ, thế nhưng số phận thật kì diệu, sau ngày hôm đó, họ lại vô tình gặp lại nhau, khu nhà họ sống cũng ở cạnh nhau, thậm chí đến cả đi siêu thị thôi cũng có thể đụng phải người kia. Cứ như vậy… thứ hảo cảm ở giây phút ban đầu đã biến thành thành tình yêu từ lúc nào chẳng hay.

																																							Họ – những người đều từng chịu tổn thương của mối tình trước đó, tưởng chừng sẽ khó lòng một lần nữa tin tưởng vào tình yêu, thế nhưng hai trái tim chẳng còn lành lặn ấy lại cứ muốn đi ngược chiều để xích lại gần nhau.

																																							Tình yêu của Thẩm Tích Phàm và Hà Tô Diệp chẳng hề rực rỡ tựa pháo hoa, cũng chẳng đớn đau đến chết đi sống lại như trong những bộ phim truyền hình. Tất cả đều nhẹ nhàng như những vạt nắng vàng trong một buổi sáng đầu đông, như hương thuốc Đông Y được phơi khô trước sân nhà, như những lần anh vươn tay chạm vào mái tóc đen tung bay trong gió của cô…

																																							Một khoảnh khắc thoáng qua… nhưng lại khắc ghi đến cả một đời.

																																							Thời điểm đẹp nhất của một người, không phải sớm nhất, cũng chẳng phải muộn nhất,

																																							Có những người ở bên cạnh ta cả đời, ta chẳng mảy may động lòng,

																																							Cũng có những người chỉ cần liếc mắt vài giây, đã trở thành nhớ mãi không quên,

																																							Chỉ cần nguyện ý ở bên nhau, thì đó chính là thời điểm tốt nhất, là khoảnh khắc tuyệt vời nhất…

																																							Trong những năm tháng đẹp đẽ như gấm hoa của cuộc đời, Thẩm Tích Phàm đã gặp được Hà Tô Diệp, yêu anh, cuối cùng quyết định ở bên anh trọn đời.

																																							Thanh xuân tới phút này đây, viên mãn không một tiếng thở than.

																																							“Yêu em là điều tuyệt vời nhất anh đã làm” của Sênh Ly là cuốn sách từng ghi dấu ấn sâu đậm trong lòng độc giả Đại Lục với câu chuyện tình yêu dịu dàng xoay quanh các vị thuốc Đông Y và chàng trai bác sĩ ấm áp Hà Tô Diệp. Bằng giọng văn nhẹ nhàng, từng câu từng chữ trong “Yêu em là điều tuyệt vời nhất anh đã làm”  sẽ chữa lành mọi trái tim tan vỡ.', 2, 5),
	
	('SKN0004', N'Trời Sinh Vụng Về, Hãy Bù Đắp Bằng Sự Kiên Trì', 'tsvvhbdbskt.png', N'Lư Tư Hạo', 129000, 500, 2020, N'Tiếng Việt', 368, N'Bìa Mềm', 400, N'Có khi nào bạn tự hỏi: Tại sao chúng ta phải cố gắng hết mình, trong khi những người khác chẳng cần làm gì cũng có được mọi thứ?

																																									Tại sao chúng ta phải chạy hết tốc lực, trong khi những người khác chỉ cần thả bước thong dong?

																																									Thực ra, đa phần chúng ta đều là những người không được ông trời ưu ái, cũng chẳng hề có tài năng thiên bẩm. Vậy mà ai ai cũng mơ ước một cuộc sống viên mãn, muốn được tự do tự tại đi du lịch nhiều nơi, muốn được sống là chính mình trong những năm tháng tuổi trẻ…

																																									Mơ ước thì nhiều, nhưng người thực sự kiên trì được thì có mấy ai?

																																									Chúng ta muốn thay đổi thế giới, nhưng ngay đến thói quen bản thân ghét cay ghét đắng cũng không bỏ được.
																																									Chúng ta muốn đi du lịch, nhưng ngay cả xuống tầng mua đồ ăn cũng lười chẳng buồn nhấc chân.

																																									Chúng ta muốn học thêm những điều mới, nhưng ngay cả dũng khí mở trang sách đầu tiên cũng không có.
																																									Dần dà, chúng ta trở thành những con người thụ động, chỉ biết than thân trách phận, không chịu nỗ lực nhưng lại muốn nhanh chóng đạt được ước mơ.

																																									Một tảng đá xù xì phải trải qua trăm ngàn nhát búa mới có thể trở thành tác phẩm nghệ thuật được người đời kính ngưỡng. Một viên ngọc thô sẽ chẳng có mấy giá trị nếu nó không trải qua quá trình mài dũa khó khăn để rồi lộ ra vẻ đẹp rực rỡ ẩn giấu bên trong. Cuộc đời này cũng vậy, chỉ khi bạn đủ kiên trì chịu đựng được những gì người khác không thể chịu đựng, đủ nỗ lực đi trên con đường không phải ai cũng dám đi, khi ấy thành công sẽ mỉm cười với bạn.

																																									Nhà hoạt động nhân quyền vĩ đại Martin Luther King, Jr. từng nói rằng: “Nếu bạn không thể bay, hãy chạy, nếu bạn không thể chạy, hãy đi, nếu bạn không thể đi, hãy bò, nhưng làm gì đi nữa, bạn cũng phải tiếp tục tiến về phía trước.” Bạn có thể bình thường, có thể vụng về, có thể chậm chạp hơn người khác, nhưng nhất định phải kiên trì hơn họ, bền bỉ hơn họ. Bởi vì chỉ cần một giây chần chừ thôi, bạn đã vô tình tụt lại phía sau hàng vạn người. Nếu bạn không dũng cảm, không nỗ lực sẽ chẳng có ai mạnh mẽ thay bạn cả!
																																									Lạc lõng, mệt mỏi, thiếu động lực, không biết phải làm sao với tuổi trẻ của chính mình... nếu bạn đang cảm thấy như vậy, hãy một lần thử tìm đến “Trời sinh vụng về, hãy bù đắp bằng sự kiên trì” của Lư Tư Hạo.

																																									Không khô khan giáo điều cũng chẳng to tát lớn lao, “Trời sinh vụng về, hãy bù đắp bằng sự kiên trì” chỉ là những lời tâm tình mộc mạc đồng hành cùng bạn qua những đoạn đường gập ghềnh nhất của tuổi trẻ. Khi mà trong đời đã có quá nhiều người dạy ta phải sống thế nào, đôi khi tất cả những gì bạn cần, chỉ là một lời tâm tình, một sự sẻ chia, thấu hiểu mà thôi.

																																									 “Hãy cứ nỗ lực như thế nhé.
																																									Ngày tháng về sau, mong sao bạn và tôi ngày càng có thể sống là chính mình.”', 2, 5),
	
	('SKN0005', N'Đừng Cúi Đầu Mà Khóc, Hãy Ngẩng Đầu Mà Đi', 'dcdmkhndmd.png', N'Lư Tư Hạo', 119000, 500, 2020, N'Tiếng Việt', 312, N'Bìa Mềm', 320, N'Tiến về phía trước đi, thế giới này không quan tâm đến sự yếu đuối của bạn đâu!

																																								Bạn ăn cơm một mình, mỗi lần đều ăn ở cùng một quán, gọi cùng một món ăn.

																																								Bạn dạo phố một mình, bần thần nhìn một bộ quần áo trong tủ kính rất lâu, nhưng cuối cùng không thử.

																																								Bạn một mình âm thầm làm việc đến bán mạng, bụng đói thì ăn nốt mẩu bánh mì, uống nốt cốc sữa sót lại từ buổi sáng, để rồi sau đó lại một mình dẫm lên cái bóng của chính mình để về nhà.

																																								Nếu bạn nghĩ bản thân mình như vậy là tội nghiệp, là mệt mỏi, là đáng thương đến bật khóc… thì hãy dừng lại và suy nghĩ thử xem.

																																								Ở cái tuổi vẫn còn gập ghềnh chưa trải đủ sự đời, không nhà, không xe, đi làm vẫn phải chen chúc để kịp chuyến xe bus chật chội, làm việc vẫn phải nhìn sắc mặt của người khác, nói cười chẳng thể theo ý mình… Và tất cả những gì bạn làm được chỉ là khóc thôi sao?!

																																								Thế giới này vốn sẽ không vì nỗi buồn của bất kỳ ai mà dừng lại.

																																								Cuộc sống cũng sẽ không vì ai rơi nước mắt mà sẽ đối xử nhẹ nhàng hơn.

																																								Đừng cúi đầu nhìn xuống cái bóng dưới chân mình nữa, hãy thử ngẩng đầu lên mà xem!

																																								Bạn ăn cơm một mình… chính là để đợi một người thật lòng muốn dẫn bạn đi ăn mỗi ngày.

																																								Bạn không thể mua những thứ mình thích ngay lúc này… nhưng không có nghĩa là sau này cũng vậy.

																																								Bạn làm việc đến bán mạng… nhưng rồi sẽ có một ngày mọi nỗ lực của bạn được đền đáp mà thôi.

																																								Đúng vậy, chỉ cần tiếp tục ngẩng đầu kiêu hãnh bước đi, thì trên đời này chẳng có gì có thể làm khó được bạn mãi.

																																								Vẫn là chàng trai Lư Tư Hạo cùng giọng văn nhẹ nhàng nhưng sâu lắng đã chinh phục hàng triệu trái tim trong những tác phẩm trước, “Đừng cúi đầu mà khóc, hãy ngẩng đầu mà đi” dù chẳng thể khiến con đường bạn đang đi bớt gập ghềnh hơn, nhưng sẽ là cuốn sách tuyệt nhất để dẫn đường cho tuổi trẻ của bạn và tôi, những tuổi trẻ đang chênh vênh lạc lối chẳng biết đi về đâu.', 2, 5),
	
	('SKN0006', N'Đêm Trước Bình Minh', 'dtbm.png', N'Lư Tư Hạo', 136000, 500, 2022, N'Tiếng Việt', 306, N'Bìa Mềm', 358, N'Đêm trước bình minh – Chỉ khi vượt qua được buổi đêm tối tăm nhất, cuộc sống của bạn mới trở nên rực rỡ sắc màu.

																																	Tỉnh dậy vào buổi sáng sau đêm nhà cửa hỗn loạn vì bị khói thuốc hun đầy, Trương Vũ Ngang – một thanh niên công sở vừa bước sang tuổi ba mươi đột nhiên bị mất ngủ triền miên vì một giấc mơ kỳ lạ - nhận ra mình đang nằm ở một trung tâm trị liệu, bác sĩ xa lạ trước mắt chẩn đoán anh mắc chứng rối loạn cảm xúc giai đoạn hưng cảm.

																																	Trong thời gian sinh sống tại trung tâm điều trị, một người luôn sống lầm lũi, cô độc như Trương Vũ Ngang đã quen được vài người bạn mới: một thanh niên luôn theo đuổi chủ nghĩa lý tưởng nhưng bị hiện thực tàn khốc đánh bại, một đứa trẻ bị trói buộc bởi định kiến của gia đình và trường học, còn cả một cô gái từng mắc chứng rối loạn cuồng ăn.

																																	Kể từ ngày đặt chân tới nơi đây, Trương Vũ Ngang buộc phải đối diện với “căn bệnh rối loạn cảm xúc” và những ký ức đã qua, dần mở rộng trái tim khắc đầy những vết sẹo của bản thân, từ đó tìm ra cách thức để cuộc sống trở nên có ý nghĩa hơn. Cùng lúc ấy, tất cả những người mà anh gặp được cũng đang đứng trước sự lựa chọn của chính mình.

																																	“Từ tận đáy lòng có một giọng nói cứ mãi chất vấn sự lựa chọn của tôi, trước kia tôi luôn phớt lờ, nhưng bây giờ quyết định đón nhận nó.”

																																	Với cách kể chuyện chậm rãi mà dịu dàng, Lư Tư Hạo đã viết nên cuốn tiểu thuyết “Đêm trước bình minh” – một cuốn sách tâm lý nhưng nhẹ nhàng, đưa lối bạn thoát khỏi những trầm luân mỏi mệt. Chỉ khi vượt qua được buổi đêm tối tăm nhất, cuộc sống của bạn mới trở nên rực rỡ sắc màu.

																																	Có lẽ ngay lúc này bạn đang phải đối mặt với màn đêm tăm tối nhất, nhưng điều đó cũng đồng nghĩa rằng quãng đường về sau sẽ không còn tối tăm đến vậy nữa, mỗi phút mỗi giây kể từ giờ phút này trở đi chính là thời gian đếm ngược chờ bình minh tới. Hi vọng ánh ban mai sẽ chiếu rọi chặng hành trình tiếp theo của mỗi chúng ta.', 2, 5),
	
	('SKN0007', N'Những Đứa Trẻ Không Có Ô', 'ndtkco.png', N'Hỉ Dương Tử', 115000, 500, 2022, N'Tiếng Việt', 320, N'Bìa Mềm', 350, N'Những đứa trẻ không được sinh ra đã ở vạch đích luôn luôn phải nỗ lực hơn rất nhiều.

																																			Cuộc đời mỗi người vốn không ai giống ai. Có những đứa trẻ sinh ra đã ở vạch đích, nhờ sự hậu thuẫn của bố mẹ mà dễ dàng đạt được thành công, nhưng cũng có những đứa trẻ sinh ra trong hoàn cảnh khốn khó, ngày đêm vật lộn với cuộc sống mưu sinh, chắt chiu từng đồng một để có cơm ăn áo mặc. Song điều đó không đồng nghĩa với việc tương lai của chúng sẽ mãi chìm đắm trong sự đói nghèo. Cơ hội và thành công không bỏ qua bất cứ ai chăm chỉ và nỗ lực hết sức mình.

																																			Sau khi bước chân vào xã hội, rất nhiều người trẻ bắt đầu nảy sinh nghi hoặc với niềm tin và lý tưởng của bản thân, họ tựa như con thuyền nhỏ lênh đênh giữa đại dương mênh mông, nhất thời lạc mất phương hướng. Hoàn cảnh biến đổi chớp nhoáng khiến mọi người không ngừng lo lắng về những vấn đề cá nhân, chỉ muốn giải quyết chúng ngay tức khắc, bởi vậy con người rất dễ hình thành tâm lý âu lo về xã hội, thường quá chú trọng đến những nhu cầu cơ bản và các mục tiêu bình thường nhất, để rồi mất niềm tin và lý tưởng.

																																			Tổng thống thứ 44 của Hoa Kỳ Barack Hussein Obama về hưu ở độ tuổi 50, Donald John Trump 70 tuổi mới trở thành tổng thống thứ 45 của Hoa Kỳ. Mỗi người đều phát triển theo cách của riêng mình, và thành công không bao giờ là muộn cho dù bạn ở bất kỳ độ tuổi nào. Vì vậy, xin đừng hoài nghi, hay so sánh mình với cuộc đời của người khác, cũng đừng bỏ cuộc giữa chừng, chỉ cần bạn không từ bỏ bản thân, thành công cũng sẽ không bao giờ rời xa bạn.

																																			“Những đứa trẻ không có ô” giống như một món quà gửi tặng các bạn trẻ đang phải vật lộn giữa cuộc sống mưu sinh như một niềm an ủi cũng những lời khuyên về cuộc đời hay cách làm thế nào để thành công trong cuộc sống mà còn đưa lại những ví dụ về những người nổi tiếng, những doanh nhân thành đạt - những cuộc đời trải qua sự cơ cực trong suốt quãng thời gian còn trẻ như ốm đau bệnh tật, cái nghèo luẩn quẩn hay bị những người xấu hãm hại, và trải qua nhiều thất bại nhưng họ vẫn không ngừng nỗ lực học hỏi, phấn đấu, ngã ở đâu đứng lên chỗ đó để gặt hái được những trái ngọt thành công. Hi vọng cuốn sách này sẽ thắp sáng lại ngọn lửa nhiệt huyết trong các bạn, sưởi ấm con tim lạnh giá vì cuộc đời, tuyết chảy băng tan, đón ánh nắng mùa xuân tràn đầy rực rỡ để viết lại một khởi đầu mới, hướng đến một tương lai sáng lạn.

																																			Hãy nhớ, bất kể làm việc gì, chỉ cần dám bắt tay vào hành động, thì bạn đã thành công một nửa rồi.', 2, 5),
	
	('SKN0008', N'Dám Mơ Lớn, Đừng Hoài Phí Tuổi Trẻ', 'dmldhptt.png', N'Lư Tư Hạo', 119000, 500, 2022, N'Tiếng Việt', 328, N'Bìa Mềm', 365, N'Những ngày mười tám đôi mươi ta đều mơ những giấc mơ lớn, đều khao khát đạp tung tất cả để bay ra khỏi vòng tay của gia đình, mẹ cha.

																																					Những ngày hăm lăm nhìn lại hình như giấc mơ đã tiêu hao đi ít nhiều…

																																					Ta chậm lại, bớt kì vọng hơn, cũng bớt nỗ lực hơn. Hình như ta không còn trẻ nữa.

																																					Để rồi những bộn bề của cuộc sống cuốn giấc mơ của bạn đi như dòng nước hững hờ cuốn trôi chiếc lá. Cứ thế, bạn vội vã trưởng thành, vội vã yêu, vội vã sống, vội vã quên đi khát khao mình từng có. Ừ thì ta lớn rồi phải không?

																																					Nhưng bạn biết không: Bung mình ra sống một đời nhiệt huyết rực rỡ hay thu mình lại bình bình yên yên nơi góc nhà…lựa chọn là ở bạn?

																																					Tuổi trẻ của bạn chẳng phải tuổi tác hay số đếm, tuổi trẻ được định nghĩa bằng đam mê, bằng ngọn lửa bằng khao khát trong bạn.

																																					Một ngày bạn còn sống với những khát vọng, còn bản lĩnh dám chọn những thách thức chính là tuổi trẻ của bạn.

																																					Trẻ mà ngu ngốc cũng được nhưng đừng bỏ cuộc.

																																					Trẻ mà sai cũng được nhưng đừng gục ngã.

																																					Trẻ mà đi chậm cũng được đi nhanh cũng được nhưng đừng quên ước mơ đời mình.

																																					Nếu tuổi trẻ chẳng có gian truân, chỉ đơn giản là ngày dài tháng rộng lẳng lặng trôi qua, là sắp đặt của mẹ cha, là an ổn sống một đời tẻ nhạt… Vậy chẳng phải hoài phí lắm hay sao?

																																					Được chắp bút bởi một trong những tác giả trẻ tài năng nhất Trung Quốc – Lư Tư Hạo, “Dám mơ lớn, đừng hoài phí tuổi trẻ”  gieo vào lòng bạn một ngọn lửa nhỏ âm ỉ mà sáng trong để nhen nhóm lại những giấc mơ mãnh liệt trong bạn.', 2, 5),
	
	('SKN0009', N'Từ Ngày Mai Hãy Làm Người Hạnh Phúc', 'tnmhlnhp.png', N'Toái Toái', 118000, 500, 2022, N'Tiếng Việt', 280, N'Bìa Mềm', 300, N'Ngày hôm nay của bạn thế nào, có mệt không?

																																						Ngày hôm nay của bạn có đang hoang mang mơ hồ?

																																						Ngày hôm nay của bạn có đang hoài nghi bản thân?

																																						Vậy thì cuốn sách “Từ ngày mai hãy làm người hạnh phúc” này là dành cho bạn. “Từ ngày mai hãy làm người hạnh phúc” sẽ đồng hành bên bạn, dịu dàng gửi gắm các thông điệp ý nghĩa chân thành và tích cực về tình thân, tình bạn, tình yêu… dễ dàng chạm tới trái tim bạn, vỗ về sự tủi thân trong bạn, xoa dịu nỗi cô độc của bạn.

																																						Những con người khác nhau với những câu chuyện khác nhau, nhưng đều là những băn khoăn trăn trở của người trẻ trên hành trình trưởng thành, phấn đấu trở thành một “bản thân” tốt đẹp hơn, hạnh phúc hơn ở tương lai.

																																						Thực chất, hạnh phúc không phải thứ gì quá mức to lớn xa vời, mà chỉ là những điều rất đỗi nhỏ bé ở xung quanh ta. Tựa như lúc tuyết phủ rợp trời, được lim dim thiếp đi trong căn nhà sáng ánh đèn, bên chậu than hồng ấm áp đã là niềm hạnh phúc to lớn nhất của cuộc đời vậy.

																																						“Mỗi ngày là khởi đầu, cũng là kết thúc. Mỗi ngày đều chỉ là quá khứ của ngày mai.

																																						Hãy hướng tới ngày mai với tình yêu, đối đãi với mọi người, mọi chuyện bằng lòng yêu thương.

																																						Hãy yêu cuộc đời giật gấu vá vai của mình.

																																						Hãy bước về phía trước với lòng yêu thương, cho đến khi bạn trở nên thuần khiết, bao dung, tâm hồn trong sáng, khoáng đạt.

																																						Từ ngày mai hãy làm người hạnh phúc.”', 2, 5),
	
	('SKN0010', N'Tôi Lại Mơ Thấy Giấc Mơ Ấy', 'tlmtgma.png', N'Yoru Sumino', 98000, 500, 2022, N'Tiếng Việt', 280, N'Bìa Mềm', 321, N'“Đối với cô Hitomi, hạnh phúc là gì ạ?”

																																				“À, cô có nhiều định nghĩa lắm. Đúng rồi, cô nói trước cho Koyanagi biết này. Vào giờ tiếng Nhật ngày mai, chúng ta sẽ cùng suy nghĩ xem hạnh phúc là gì đấy.”

																																				----

																																				Một ngày nọ, trong giờ học tiếng Nhật, cô bé Koyanagi Nanoka hay còn gọi là Nat-chan được cô giáo Hitomi giao cho một bài tập mà với cô bé đó chính là bài tập khó nhất trên đời, khó hơn cả mớ bài tập toán cao ngất. Bài tập ấy chính là đi tìm câu trả lời cho câu hỏi: Hạnh phúc là gì?

																																				Vậy thì hạnh phúc là gì nhỉ? Là những điều rất đỗi bình dị gần gũi hay thật lớn lao xa vời? Đây cũng chính là câu hỏi dẫn dắt chúng ta đi xuyên suốt câu chuyện “Tôi lại mơ thấy giấc mơ ấy”.

																																				Ở đó, cô bé Nanoka, đang học tiểu học cảm thấy mình thông minh hơn hẳn những người bạn cùng lớp, chỉ có duy nhất một người khiến cô bé cảm thấy không thể hiểu nổi chính là cậu bạn cùng bàn Kiryu.

																																				Ở đó, Nanoka đã gặp gỡ cô bạn mèo cụt đuôi sang chảnh, cùng đồng hành với “cô nàng” đi rất nhiều nơi, gặp được rất nhiều người, như chị Abazure làm công việc “bán các mùa”, một bà lão tài giỏi có thể làm được rất rất nhiều thứ, và cả chị Minami biết viết truyện nữa.

																																				Cả ba người đều đưa ra những gợi ý, lời khuyên giúp Nanoka tháo gỡ khúc mắc, giải quyết một vài vấn đề trong cuộc sống. Thế nhưng sau đó, sau khi chia sẻ rằng mình mơ thấy “giấc mơ ấy”, họ lại lần lượt “biến mất dần”… Tại sao lại vậy?

																																				Liệu Nanoka có tìm được câu trả lời cho câu hỏi của cô Hitomi? Liệu sau tất cả những câu chuyện đã trải qua, những người cô bé đã gặp thì hạnh phúc với Nanoka thực sự là gì?

																																				Khi đọc “Tôi lại mơ thấy giấc mơ ấy” ở những độ tuổi khác nhau, bạn sẽ có những cảm nhận khác nhau, và tìm ra thêm nhiều thông điệp khác nữa. Cùng với khái niệm “cuộc đời như…”, “hạnh phúc là…”, sự kỳ diệu tựa như sợi chỉ đỏ xâu chuỗi mọi thứ xuyên suốt cuốn tiểu thuyết.

																																				Dưới ngòi bút sâu sắc mà trong sáng của tác giả Yoru Sumino, sợi chỉ ấy gắn kết các tình tiết tưởng chừng vô duyên vô cớ, chẳng liên quan với nhau, và đến trang cuối cùng, mọi sự bất ngờ trở nên hợp lý và đong đầy ý nghĩa theo một cách kỳ diệu nhất, khiến độc giả ngẩn người, rồi hẳn sẽ ngẫm lại những trang sách mà mình đã đọc lâu thật lâu. Thậm chí, biết đâu chừng bạn cũng sẽ muốn gặp được “Nat-chan” của bản thân, muốn mơ một giấc mơ thật nhiều thật nhiều lần giống như Nanoka, và muốn được nhìn ngắm thế giới qua lăng kính sáng trong của cô bé đáng yêu này.', 2, 5),
	
	('SKN0011', N'Dù Ngủ Dù Thức', 'dndt.png', N'Tomoka Shibasaki', 129000, 500, 2023, N'Tiếng Việt', 328, N'Bìa Mềm', 350, N'“Đó là Thượng Hải.” Nhìn chữ Hán trên màn hình, Baku nói. “Đi đến đó thôi.”

																																	“Em cũng muốn.”

																																	“Mình đi cùng nhau nhé?” Baku vẫn dán mắt vào màn hình.

																																	“Thiệt hông anh? Khi nào?”

																																	Baku không đáp mà chỉ nhìn tôi, nét mặt giống hệt lúc anh rời mắt khỏi màn hình tivi để nhìn tôi.

																																	Bỏ qua lời hứa hẹn sẽ đi cùng nhau tới mọi nơi. Rằng ở đâu có Asako, Baku nhất định sẽ đến. Baku đã rời bỏ Asako và bước lên chuyến tàu đi Thượng Hải.

																																	Năm 1999, Asako gặp Baku tại tòa vọng cảnh ở Osaka khi cô vừa tốt nghiệp đại học, lúc ấy cô mới chỉ 22 tuổi. Cô đã phải lòng anh từ giây phút cùng ngắm pháo bông trên tòa nhà cao chọc trời ấy. Tình cờ gặp lại một lần nữa, cả hai đã đem lòng yêu nhau.

																																	Baku đã ở bên cạnh Asako trong những năm tháng thanh xuân và cùng cô trải qua rất nhiều chuyện. Với Asako, Baku lúc nào cũng bí ẩn bởi không chỉ ngoại hình của anh mà cả hành động cũng vậy. Thi thoảng, Baku sẽ đột ngột biến mất, không một lý do, không liên lạc được và rồi đột ngột trở về. Nhưng mùa đông năm ấy, Baku đã thực sự biến mất hoàn toàn hỏi cuộc đời Asako.

																																	5 năm sau, khi Asako đã quên được người đàn ông với đôi mắt với mí lót, đường nét khuôn mặt vuông vức, miệng lớn và đôi môi mỏng ấy thì cô lại bắt gặp Ryohei - chàng trai có ngoại hình giống hệt với Baku. Những ký ức, thương nhớ cuộn trào trong trái tim Asako. Một lần nữa cô lại rơi vào tình yêu.

																																	Những tưởng Ryohei và Asako sẽ mãi bên nhau hạnh phúc, nhưng một lần nữa hình ảnh của Baku lại xuất hiện. Baku hiện giờ đã là một diễn viên nổi tiếng được nhiều người hâm mộ. Nhìn thấy người mà năm ấy mình hết lòng yêu thương, trái tim Asako vô cùng rối bời. Giữa Ryohei - người có ngoại hình giống Baku và Baku đã thực sự trở về kia, rốt cuộc ai mới là người mà cô yêu?

																																	“Dù ngủ dù thức” chính là hành trình tìm kiếm câu trả lời cho câu hỏi trong trái tim của Asako. Những giằng xé tâm lý, tâm tư tình cảm khó tỏ bày của người con gái khi yêu được tác giả Tomoka Shibasaki tinh tế và khéo léo thể hiện trong cuốn tiểu thuyết này. Thêm vào đó, bút pháp miêu tả cảnh vật chi tiết, độc đáo của “Dù ngủ dù thức” còn giúp bạn đọc khám phá vô vàn những điều thú vị về đất nước Nhật Bản.

																																	Liệu câu trả lời cho tình yêu của Asako có dễ dàng đoán được, hay có một quyết định không thể ngờ tới? Hãy đọc “Dù ngủ dù thức” để cùng Asako bước vào hành trình tìm kiếm câu trả lời ấy nhé!', 2, 5)


--insert Skycomics
insert into Books(bookID, bookName, bookImage, author, price, quantity, publishingYear, [language], numberPage, form, [weight], bookDescribe, cid, pcid)
values
	('SKC0001', N'Anh Với Em Hay Chó Với Mèo', 'avehcvm.png', N'Sengae', 150000, 500, 2022, N'Tiếng Việt', 272, N'Bìa Mềm', 200, N'Anh em nào “như thể tay chân” chứ cặp sinh đôi Baek Goon và Bok chắc chắn không phải! Như chó với mèo, chành chọe tối ngày, tưởng chừng như không cãi vã tị nạnh nhau là sẽ không thể sống khỏe! Người duy nhất có thể “trị” được hai đứa chỉ có người bố thường xuyên phải đi xa.

																																	Nhưng kể cả khi bố có ở nhà thì cũng không thể ngăn cản cuộc chiến không hồi kết giữa hai anh em, mà lí do “khai chiến” chính là bất kì lí do gì dù “nhỏ như con kiến”. Khác nhau một trời một vực, chỉ giống nhau ở gương mặt, nhưng cả hai lại luôn “đồng cam cộng khổ” trong những rắc rối khó hiểu, những trò nghịch ngợm nhố nhăng.

																																	Không chỉ khiến bạn nhớ lại những tháng ngày thơ ấu chí chóe mà vui vẻ bên anh chị em, bộ truyện còn đưa bạn đồng hành cùng cuộc sống học đường cười ra nước của Baek Goon và Bok bên những người bạn muôn màu muôn vẻ. Từ nhà ra ngõ, từ lớp đến trường, cặp song sinh và hội bạn lầy lội sẽ kéo bạn vào một câu chuyện đời thường đầy bất thường, không thể đoán trước!

																																	Đến từ Sengae – tác giả webtoon đình đám của Hàn Quốc với hàng triệu lượt đọc và chia sẻ, series truyện tranh hài hước về cuộc sống thường nhật lầy lội, đánh nhau sứt đầu mẻ trán của hai anh em Baek Goon và Bok sẽ khiến bạn không thể rời mắt!', 3, 3),

	('SKC0002', N'Here U Are', 'hya.png', N'Djun', 99000, 500, 2022, N'Tiếng Việt', 192, N'Bìa Mềm', 200, N'“Tôi thích anh. Tôi muốn anh cũng thích tôi…’’

																											…

																											Sau khi những hiểu lầm ban đầu đã được hóa giải, chàng sinh viên Ngu Dương dần trở nên thân thiết hơn với đàn em khóa dưới Lê Hoán - người có vẻ ngoài “dữ dằn” nhưng thực ra lại rất hiền lành và ấm áp. Họ cùng nhau xem phim và dạo phố, rồi chia sẻ những ưu tư của mình cho người kia lúc nào chẳng hay.

																											Lê Hoán vốn bị bạn bè xung quanh xa lánh, thậm chí bị vu oan chỉ vì vẻ ngoài lầm lì ít nói, trước một Ngu Dương luôn đối xử chân thành với mình, đã bắt đầu nảy sinh tình cảm đặc biệt chưa thể gọi tên. Thế nhưng Ngu Dương lúc này lại có quá nhiều mối lo âu suy nghĩ. Gia đình không thấu hiểu, họ hàng lời ra tiếng vào, ánh mắt của người ngoài, của xã hội,... khiến một người từng chịu nhiều tổn thương như Ngu Dương trở nên hoảng sợ, bất an.', 3, 3),

	('SKC0003', N'Người bà tài giỏi vùng Saga', 'nbtgSAGA.png', N'Yoshichi Shimada', 50000, 500, 2022, N'Tiếng Việt', 194, N'Bìa Mềm', 200, N'Thời gian thấm thoắt thoi đưa, cậu nhóc Akihiro hay nhõng nhẽo, khóc nhè được gửi về sống với người bà “tài giỏi dữ thần” ở Saga nay đã lên lớp 4. 
																																				Dù rằng Akihiro đã quá quen thuộc với cuộc sống ở Saga nhưng cậu vẫn luôn nhớ mẹ khôn nguôi. Và rồi cuối cùng, cậu nhóc đã được gặp mẹ như mong ước nhưng cuộc gặp gỡ đó lại chỉ có đúng 12 phút thôi! Vậy Akihiro sẽ bên mẹ như thế nào trong những phút giây ngắn ngủi ấy đây? 

																																				Thấm nhuần sự nghèo khó truyền thống từ gia đình, Akihiro vẫn luôn nghĩ rằng nhà mình là khổ nhất cái mảnh đất này. Nhưng rồi một cơn bão lớn tràn qua, Akihiro mới biết được những người bạn “con nhà nông” xung quanh cũng có những nỗi lo lắng và khó khăn riêng. Qua cơn bão, cậu và người bạn thân Nanri của mình đều tìm được cho riêng bản thân những sứ mệnh vô cùng đặc biệt!

																																				Ngoài ra, trong tập này, cậu nhóc luôn “đội sổ” như Akihiro lại được trổ tài làm “thầy” dạy Toán cho bạn cùng lớp. Học hành í ẹ là thế mà sao Akihiro lại giỏi Toán đến mức dạy được cho bạn học chứ? Cậu có bí quyết gì và sẽ làm thế nào để dạy cho người khác đây?', 3, 5),

	('SKC0004', N'Cuộc Sống Thượng Lưu Của Hoàng Đế Mèo', 'cstlchdm.png', N'Bạch Trà, Đỗ Thu Thủy', 89000, 500, 2016, N'Tiếng Việt', 300, N'Bìa Mềm', 300, N'Cuộc sống thượng lưu của hoàng đế mèo – Tự truyện của con mèo quyền lực nhất thế giới

																																			Hoàng đế mèo - cuốn sách bán 40 triệu bản trong 1 tuần đã có mặt ở Việt Nam

																																			Hoàng đế mèo - Con mèo bỉ bựa, đội lên đầu chủ, rất láo nháo nhưng không ai ghét được

																																			Tin không? Bạn sẽ cười vỡ bụng cho mà coi! Nhưng nếu bạn nuôi mèo bạn sẽ thấy đúng không để đâu cho hết

																																			Hoàng Thượng là một chú mèo bình thường, cũng ăn, cũng quậy phá, bắt con sen phải hầu hạ ngày đêm. Có những nỗi lo lắng, khổ tâm khi không được ai quan tâm hay bỏ đói. Đôi khi Hoàng Thượng cũng hờn ghen khó chịu khi người thương của con sen đến nhà chơi.

																																			Cuộc sống thượng lưu của hoàng đế mèo xoay quanh những câu chuyện rất bình thường của một con mèo muốn trở thành trung tâm của trời đất. Một ông chú tồ tẹt chấp nhận đội ngược Hoàng Thượng lên đầu để sống hạnh phúc xóa tan những tháng ngày xoay vòng tẻ nhạt.

																																			Cuộc đời vương giả của chú mèo đã thu hút được hàng nghìn lượt yêu thích,theo dõi trên weibo. Các fan liên tục mèo nhèo truyện mới khiến tác giả Bạch Trà vẽ mỏi tay không kịp. Cuốn truyện đã công phá thế giới với 40 triệu bản in bán hết veo. Sức hấp dẫn của của Hoàng Thượng thật kinh khủng!

																																			Bạn sẽ thấy chính cuộc sống của mình trong những khung vẽ đáng yêu của Bạch Trà. Một con mèo béo ị với khuôn mặt cau có khó ở đang hờn cả thế giới. Những khoảnh khắc đầy yêu thương lắng đọng sau những lần cãi nhau chí chóe bất hòa, ghét thì ghét vậy thôi, Hoàng Thượng vẫn là số một!

																																			Một cuốn sách đáng yêu cho những tín đồ yêu mèo và cho tất cả những con sen đang ngày đêm phục tùng lũ đầy lông ngạo mạn.', 3, 1),

	('SKC0005', N'Bí Kíp Thả Thính Của Mèo Coko ', 'bkttcmCOKO.png', N'MixFlavor', 75000, 500, 2019, N'Tiếng Việt', 300, N'Bìa Mềm', 300, N'“Bí kíp thả thính của mèo Coko” – Hương vị tình yêu của một chú mèo “mất bi”

																																			“Thính” mèo, đảm bảo chất lượng, đảm bảo thành công; được điều chế bởi Coko – một chú mèo trắng gặp người người mến, gặp mèo mèo thương đây!

																																			Hỡi nhân gian còn đang "lầm than" trong chuyện tình ái, Coko đã xuất hiện để cứu giúp các vị rồi đây!

																																			“Bí kíp thả thính của mèo Coko” là câu chuyện về chú mèo đực tên thật là Trần Tuấn Vĩ. Khỏe mạnh, vạm vỡ, lanh lợi, Coko có một siêu năng lực được Tiểu yêu Tinh ban tặng, đó là biến thành một cô bé đáng yêu. Vâng, một-cô-bé-đáng-yêu.  

																																			Tiểu yêu tinh không chỉ vô tư “chuyển giới” cho Coko, cô nàng còn khuyến mãi cho chú thêm biết bao câu chuyện dở khóc dở cười như tìm mèo lạc, đi thi chui cuộc thi tài năng dành cho thú cư Và dù Alex có là một chàng mèo đỏng đảnh bị chiều quá sinh hư, hay bồ câu Vương Tử có là một anh bồ câu béo ị vênh váo, thì Coko vẫn có cách để “điều trị” những tật xấu này, để cuối cùng tất cả đều trở thành bạn tốt.

																																			Khi không ở trong hình dáng con người, Coko là một chú mèo chung sống với hai người chủ nuôi là Tiểu Mai vừa xinh vừa hiền và Đại Hiên thích đùa dai. Ở với Tiểu Mai thì vui, nhưng nếu nhà chỉ còn mình Coko với Đại Hiên, thì thật sự điên đầu. Không thể kể hết những trò trêu chọc mà Đại Hiên đã bày ra với Coko, nhưng vì Coko là một chú mèo vạn người mê, nên chú có thể “điều trị” được người chủ trái khoáy này.

																																			Các bạn có bao giờ tự hỏi, khi chúng ta không có mặt ở nhà thì thú cưng sẽ làm những gì không? Xin được tiết lộ, đó là một cuộc sống vô cùng sôi động.

																																			Hài hước, đáng yêu, ngọt ngào và dạt dào cảm xúc, “Bí kíp thả thính của mèo Coko” hi vọng sẽ đem đến cho các bạn thật nhiều niềm vui, nhiều "kĩ năng" thả thính mới cũng như những nụ cười vui vẻ.', 3, 7),

	('SKC0006', N'Tây Du Hí', 'tdh.png', N'Mèo Mốc', 380000, 500, 2021, N'Tiếng Việt', 120, N'Bìa Mềm', 150, N'Hòa trộn giữa Tây Du Kí của Ngô Thừa Ân với sự hài hước “thời thượng” từ Nhật kí Mèo Mốc, Tây Du Hí tạo ra một phong cách hài hước mới mẻ xứng đáng để bạn “móc hầu bao”.

																												Ngày xửa ngày xưa, ở đất nước nọ có một hòn đảo nằm giữa biển, trên đảo có một quả núi gọi là Hoa Quả Sơn, trên đỉnh Hoa Quả Sơn có một bức tượng kì cục hình con gà mái… Một cái mở màn dài thòng chả liên quan gì tới truyện cho tới một ngày kia, bức tượng nứt ra một quả trứng, và quả trứng nở ra một con khỉ, và con khỉ ấy là Tôn Ngộ Không – nhân vật được vạn người mến mộ.

																												Tôn Ngộ Không của Mèo Mốc là một con khỉ đá láo toét, thích quậy phá, ăn chơi nhảy múa tiệc tùng tại Hoa Quả Sơn. Cho đến ngày kia, chú ta nổi hứng lên đường đi tìm học phép trường sinh, đặng tìm kế sinh tồn trước cuộc sống đang ngày một trở nên “đáng sợ”.

																												Ngày con khỉ Tôn của tác giả Mèo Mốc lên đường vượt biển, cũng là ngày bắt đầu chuyến hành trình hài hước và quái đản một cách đầy bất ngờ. Trong cuộc hành trình ấy, độc giả sẽ gặp lại những nhân vật đã vô cùng quen thuộc với tuổi thơ mình: tứ hải long vương, Bồ Đề Sư tổ, Hỗn Thế Ma vương… và rất nhiều những nhân vật lạ hoắc kì quặc khác không hiểu từ đâu cũng đột ngột “xé khung tranh” chui vào đòi đất diễn.

																												Tuy chỉ khác danh tác lẫy lừng của Ngô Thừa Ân một chữ “h”, nhưng Tây Du Hí là một trải nghiệm mới khác xa cả tỉ dặm. Một bộ truyện hài hước, nhưng là một sự hài hước liền mạch, nối tiếp nhau từ trang này qua trang khác, theo một cốt truyện có sự phát triển, có cao trào và… ào ào các thứ khác. “Các thứ các” là gì, đó là điều Mèo Mốc để dành cho độc giả khám phá.', 3, 1),

	('SKC0007', N'Chuyện Vặt Của Múc', 'cvcm.png', N'Bích Ngọc', 85000, 500, 2016, N'Tiếng Việt', 144, N'Bìa Mềm', 250, N'CHUYỆN VẶT CỦA MÚC - Cho những cô cậu tưng tửng chẳng giống ai

																															Múc là cô nàng 20 tuổi rất tưng tửng

																															Múc có hơn 200 lượt fan trên Facebook

																															Múc nổi danh với tài vẽ đủ thứ trên đời, toàn chuyện ngốc xít mà ngẫm ra đúng phết

																															Có lẽ không cần giới thiệu nhiều về Múc, bởi những mẩu chuyện dở dở ương ương của Múc bấy lâu nay đã trở thành lựa chọn yêu thích của “cư dân” toàn cõi Facebook.

																															Nào thì chuyện bôi xấu "anh" người yêu cứ đòi được gọi bằng anh nhưng động cãi nhau là nhệch mồm “Chị hơn em một tuổi”, là chuyện gia đình có cậu em trai bé xiu xíu khiến Múc đôi lúc phụng phịu vì bị cho “ra rìa”, là đứa bạn thân hiểu mình hiểu cả những điều mình còn chưa nói…

																															Từng mẩu truyện, là từng khoảnh khắc – không phân biệt giản đơn hay phức tạp, lớn lao hay nhỏ bé, được cô gái mới chớm hai mươi lưu giữ lại bằng hình ảnh, màu sắc, và cả tiếng cười mà nó tạo ra nơi người đọc.

																															Chuyện vặt của Múc là cuốn truyện tranh giản dị, nhưng sẽ giúp bạn cảm nhận chân thực cách mà một cô gái trẻ yêu thương cuồng nhiệt từng chi tiết nhỏ nhất của cuộc sống xung quanh mình. Đây cũng sẽ là cuốn sách truyền cho bạn niềm vui, sự lạc quan yêu đời và điểm thêm chút "màu hồng" vào cuộc sống ngổn ngang bận rộn.

																															Hãy dừng lại và cầm Chuyện vặt của Múc lên cho những ngày cần lắm một động lực để cười tươi với cuộc đời.', 3, 1),

	('SKC0008', N'Mèo Mốc', 'mm.png', N'Mèo Mốc', 50000, 500, 2023, N'Tiếng Việt', 104, N'Bìa Mềm', 200, N'Phiên bản “đen thui” của Mèo Mốc đã bước sang tập thứ 3 với sự góp mặt của dàn nhân vật vô cùng “đồ sộ”, trong một thế giới với hai màu đen trắng y chang nhân vật chính cùng những câu chuyện hài hước nhí nhố mang thương hiệu Mèo Mốc.

																											Dù đã “di cư” sang một vùng đất mới thiếu đi sắc màu rực rỡ vốn có, anh thanh niên, mà thực ra là con mèo, vẫn sống êm đềm hạnh phúc giữa những người bạn "anh em có phúc cùng hưởng có hoạ tự chịu" và gia đình mình. Chú mèo béo đen một màu này sẽ khiến bạn cười ngặt nghẽo với những tình huống trời ơi đất hỡi nhưng quen thuộc đến lạ, cười quên hết sự đời để rồi bị “Mốc hóa” lúc nào không hay.

																											Không chỉ có mỗi Mèo Mốc phiên bản mà ai ai cũng biết, biệt đội “Mốc hư cấu” (hay còn gọi là “Mốc ngũ sắc”) cũng đã “nhảy dù” xuống thế giới đen trắng! Nhưng biệt đội Mốc rực rỡ này sẽ biến thành như thế nào khi thế giới giờ chỉ còn hai màu trắng đen?', 3, 1)


--insert Skymommy
insert into Books(bookID, bookName, bookImage, author, price, quantity, publishingYear, [language], numberPage, form, [weight], bookDescribe, cid, pcid)
values
	('SKM0001', N'Nuôi Con Bằng Yêu Thương - Dạy Con Bằng Lý Trí (Parenting With Love And Logic) - Tái Bản 2022', 'ncbytdcblt.png', N'Foster Cline, Jim Fay', 114000, 500, 2022, N'Tiếng Việt', 328, N'Bìa Mềm', 350, N'- Cuốn sách mở ra cuộc cách mạng nuôi dạy con trên toàn thế giới

																																																								Nuôi con bằng yêu thương - Dạy con bằng lý trí (tựa sách gốc: Parenting with love and logic) đã được dịch ra rất nhiều ngôn ngữ trên thế giới. Và tại Việt Nam, rất nhiều cha mẹ đã nhiệt tình đón nhận ý tưởng nuôi dạy con bằng phương phát Yêu thương và Lý trí này. Đó là lý do, cuốn sách được tái bản lần thứ 2 với phần bổ sung các ví dụ thực tế để cha mẹ có thể tương tác cùng con cái, cùng nuôi dạy một em bé tự lập, biết đưa ra quyết định cho bản thân, giàu tình yêu thương, và có thái độ tích cực với cuộc sống.

																																																								- Tại sao lại là Yêu Thương và Lý Trí?

																																																								Trên thực tế, các phương pháp nuôi dạy con đều xuất phát từ tình yêu thương. Nhưng trong tình yêu thương ấy không có chỗ cho sự dễ dãi và thiếu tôn trọng. Tình yêu thương ấy phải đủ lớn để chấp nhận việc trẻ sẽ mắc sai lầm, đủ mạnh để có thể cho con đối diện với hậu quả tự nhiên từ những sai lầm đó. Nếu cha mẹ cùng con giải quyết những hậu quả ấy bằng sự cảm thông, thấu hiểu, đồng cảm thì đây chắc chắn là cuộc cách mạng thực sự.

																																																								- Cuốn sách gồm 2 phần chính:

																																																								Phần 1: tập trung vào việc xây dựng những khái niệm cơ bản của việc nuôi dạy con như:

																																																								- Cách tự đánh giá bản thân, cách phân thích và đánh giá vấn đề
																																																								- Cách trung hòa giữa tức giận và tranh luận,
																																																								- Cách dùng ngôn từ khuyến khích con nói chuyện theo hướng tích cực,
																																																								- Cách đưa ra các lựa chọn đa dạng và cách thể hiện sự đồng cảm khi trẻ phải đối mặt với hậu quả từ những sai lầm của chúng
																																																								- Đưa ra những thông điệp bổ sung cho quá trình thực hành phương pháp "nuôi con bằng yêu thương, dạy con bằng lý trí".

																																																								Phần 2: đưa ra 48 viên gạch giúp cha mẹ xử lý những vấn đề họ phải đối mặt trong khoảng 10 năm đầu đời của trẻ, giúp phụ huynh tìm được đường đi đúng trong sự nghiệp làm cha mẹ của mình

																																																								Gần gũi và kinh điển, thực tế nhưng không kém phần khoa học, Nuôi con bằng yêu thương, dạy con bằng lý trí được ví như kim chỉ nam dành cho mọi cha mẹ trên hành trình nuôi dạy con.', 4, 6),

	('SKM0002', N'Cha Mẹ Độc Hại (Tái Bản 2022)', 'cmdh.png', N'Susan Forward PhD, Craig Buck', 148000, 500, 2022, N'Tiếng Việt', 344, N'Bìa Mềm', 350, N'Mọi người thường cho rằng cha mẹ là bến đỗ an toàn nhất của con trẻ, mọi chuyện cha mẹ làm đều là vì yêu thương con. Tuy nhiên có một số bậc cha mẹ có những hành vi tiêu cực và gây tổn thương cho con cái vì họ chưa từng đặt mình vào vị trí của con. Đó là những bậc cha mẹ độc hại: toxic parents.

																																								Và đây cũng là tựa đề cuốn sách được Skymommy chuyển ngữ (Toxic Parents – Cha mẹ độc hại), nhận được sự quan tâm của nhiều cha mẹ, tiếp tục được tái bản, với mong muốn đem lại sự an ủi, chữa lành nỗi đau cho những đứa con trưởng thành từ gia đình độc hại; vượt qua di chứng tổn thương và giành lại cuộc đời.

																																								Những vấn đề chính được đề cập trong cuốn sách này:

																																								Phần 1: Nhận diện cha mẹ độc hại

																																								Tác giả chỉ ra 6 kiểu cha mẹ độc hại thông qua các trường hợp cụ thể, phân tích gốc rễ vấn đề thông qua từng trường hợp, nó làm người đọc dễ dàng nhận ra mình có thuộc trường hợp đấy không, nó sẽ gây ra hậu quả gì, nhận định của mình về vấn đề đó như thế nào và hướng giải quyết ra sao. Bao gồm: Cha mẹ chưa trọn vẹn, cha mẹ kiểm soát, cha mẹ nghiện rượu, cha mẹ bạo hành lời nói, cha mẹ bạo hành thể xác, cha mẹ lạm dụng tình dục.

																																								Phần 2: Hướng dẫn cách giải phóng bản thân khỏi những tổn thương từ cha mẹ độc hại bằng sự thông thái và tử tế, chẳng hạn như cách kiểm soát cơn giận đối với cha mẹ độc hại, tác hại của sự tha thứ quá sớm, và cách giải quyết những vấn đề khó nhằn như nghiện rượu và loạn luân.

																																								Không bao giờ là quá trễ để thay đổi. Cho dù bạn cảm thấy tồi tệ như thế nào trong quá khứ hay bạn có những lối cư xử không lành mạnh ra sao trong hiện tại, bạn vẫn có thể phục hồi từ quá khứ bị cha mẹ bạo hành và có một cuộc sống hạnh phúc, ý nghĩa.

																																								Thông điệp gửi tới bạn từ cuốn sách này:

																																								Thứ nhất, cuốn sách lên tiếng cho những đứa con từng bị ngược đãi bởi cha mẹ mình, và cung cấp cho nạn nhân những con đường để lấy lại sự tin tưởng và tính tự chủ. Sự chia sẻ trong cuốn sách như là lời tâm sự, lời động viên và luôn nhắc nhở người đọc rằng, dù thế nào bạn sẽ không cô đơn, luôn có người sẵn sàng lắng nghe bạn, cùng bạn vượt qua những giai đoạn tâm lí khó khăn nhất trong cuộc đời.

																																								Thứ hai, có lẽ quan trọng nhất là, lời nhắn nhủ đến những người đã làm cha mẹ, nếu bạn là cha mẹ độc hại, mong bạn nhìn nhận lại bản thân, không phải là để trách móc mà là sửa chữa. Bạn sẽ không lặp lại những hành vi độc hại lên con cái bạn và vô tình hủy hoại cuộc đời của chúng.', 4, 6),

	('SKM0003', N'Cơ Thể Con Là Của Con (Tái bản 2022)', 'ctclcc.png', N'Dagmar Geisler', 75000, 500, 2022, N'Tiếng Việt', 34, N'Bìa Mềm', 100, N'“Cơ thể con là của con” kể về cô bé Clara có một điều đặc biệt đó là: Cơ thể của cô bé chỉ thuộc về một mình cô bé mà thôi. Clara nhận thức được sự thay đổi của cơ thể mình hàng ngày và bé tự hào về điều đó. Cô bé rất thích được ôm và âu yếm. Tuy nhiên không phải lúc nào cũng vậy. Clara không thích bị ôm hôn ngấu nghiến hay những trò đùa quá trớn. Cô bé quyết định nói “Không” khi mình cảm thấy không thích và thoải mái. Nếu người đó cố tình vi phạm, cô bé sẽ tự biết cách bảo vệ mình bằng cách tránh xa và kể cho những người tin tưởng.

																																						Để nói “KHÔNG” và tránh khỏi những sự đụng chạm khó chịu từ người khác không phải là điều dễ dàng. Trẻ em có thể dễ dàng tự ý thức được những gì chúng thích hay không thích. Do đó điều quan trọng là dạy cho bé ý thức về cơ thể và cảm xúc của mình. Chỉ khi hiểu được điều đó bé mới có thể vạch ra giới hạn an toàn cho bản thân.

																																						Cuốn sách này được tạo nên bởi những hình ảnh đáng yêu với cốt truyện rõ ràng, nhấn mạnh vào thái độ con tôn trọng cơ thể con, con tôn trọng người khác và mọi người cũng cần tôn trọng con.

																																						Cơ thể con là của con là 1 trong 4 cuốn sách thuộc bộ sách "Con có thể tự bảo vệ mình" được mua bản quyền từ Đức - một trong những quốc gia chú trọng nền giáo dục trẻ em - bậc nhất trên thế giới. Là bộ sách mà mọi em bé 5+ đều nhất định cần có!', 4, 6),

	('SKM0004', N'Đó Là Tớ, Từ Đầu Đến Chân (Tái bản 2022)', 'dlttddc.png', N'Dagmar Geisler', 82000, 500, 2022, N'Tiếng Việt', 50, N'Bìa Mềm', 100, N'“Giáo dục giới tính” vẫn là một trong những nội dung nhạy cảm nhất trong quan niệm nuôi dạy con của cha mẹ từ xưa đến nay. Nhiều cha mẹ cảm thấy bối rối với việc nên bắt đầu dạy từ đâu, dạy khi nào hay dạy như thế nào cho đúng cách. Cũng có một số cha mẹ không biết gì hoặc chỉ hiểu lờ mờ về giáo dục giới tính. Chính vì vậy, khi được đề cập tới vấn đề này, nhiều người đã chọn cách “đánh trống lảng” hoặc trả lời kiểu giấu giếm.

																																								Ở độ tuổi dậy thì, trong mắt các em thì mọi thứ đều rất mới mẻ và khác lạ. Chúng tò mò về mọi thứ: ngoại hình, tình dục, sức khỏe sinh sản hay chuyện tình cảm. Khi không được giải đáp thỏa đáng từ gia đình cũng như nhà trường, phần lớn trẻ phải tự mày mò tìm hiểu. Phần lớn, các em thường tự tìm hiểu thông tin kiến thức qua các nguồn không chính thống: web sex, băng đen, truyện sex, tạp chí điều này ẩn chứa nhiều nguy hại có thể làm sai lệch nhận thức của trẻ.

																																								Đã đến lúc người lớn chúng ta nên bắt đầu giáo dục giới tính cho con càng sớm càng tốt!

																																								“Đó là tớ, từ đầu đến chân” đề cập tới vấn đề giáo dục giới tính một cách khác lạ. Trong đó những hình ảnh trừu tượng và khó giải thích như xúc cảm, được tác giả mượn hình ảnh rất đáng yêu: “con bướm bị mắc kẹt trong dạ dày” để mô tả cảm xúc của cậu bé Tobi khi rung động trước bạn gái hay cảm giác từ nụ hôn của dì Olga được vẽ dưới hình tượng một con ốc sên đang bò qua mặt Nicki.

																																								Những câu chuyện được đề cập trong cuốn sách đều là những thắc mắc vô cùng dễ thương và hợp lí của bọn trẻ: Các bạn nam không chơi búp bê, các bạn nữ thì không đánh nhau, điều đó liệu có đúng? Có phải khi hai bạn thích nhau thì thường trêu chọc nhau không? Tình yêu sẽ xuất hiện như thế nào? Tuổi dậy thì chúng mình cần phải làm gì? Cách tiếp cận cởi mở, thẳng thắn và cũng vô cùng dí dỏm này hứa hẹn đem đến cho cha mẹ và con cái những bài học hữu ích và thú vị.

																																								Ngoài ra, giống như lời tuyên ngôn mạnh mẽ ở ngay trang bìa “Đó là tớ, từ đầu tới chân”, cuốn sách còn mang đến thông điệp mạnh mẽ và dứt khoát về việc trẻ em có quyền nói “Không!” với những điều chúng không thích và biết tự bảo vệ mình. Điểm đặc biệt nữa của cuốn sách chính là đề cập tới “Những quyền lợi của trẻ em”: Không một đứa trẻ nào được phép bị phân biệt đối xử chỉ vì chúng là một bé gái hay bé trai. Giáo dục giới tính đúng đắn chính là cách để giáo dục các bạn nhỏ về tình yêu thương, về sự tôn trọng chính bản thân và những người xung quanh.

																																								Đây là cuốn sách không những dành trẻ em mà cho cả người lớn, những người bạn muốn giúp các em có cuộc sống an toàn và lành mạnh hơn trong tương lai.

																																								“Đó là tớ, từ đầu đến chân” là 1 trong 4 cuốn sách thuộc bộ sách "Con có thể tự bảo vệ mình" được mua bản quyền từ Đức - một trong những quốc gia chú trọng nền giáo dục trẻ em - bậc nhất trên thế giới. Là bộ sách mà mọi em bé 5+ đều nhất định cần có!', 4, 6),

	('SKM0005', N'Con Không Bao Giờ Đi Cùng Người Lạ (Tái Bản 2022)', 'ckbgdcnl.png', N'Dagmar Geisler', 75000, 500, 2022, N'Tiếng Việt', 34, N'Bìa Mềm', 100, N'“Con không bao giờ đi cùng người lạ” kể về: Giờ tan trường, trong khi hầu hết các bạn nhỏ đều được đón về chỉ còn mình Lu đứng trước cửa chờ đợi. Lu gặp những người quen đề nghị đưa Lu về nhưng Lu đã từ chối. Vì sao vậy? Bởi Lu không hề biết hết tất cả mọi thông tin về họ và Lu chỉ được phép đi cùng những người có trong danh sách cha mẹ cho phép.

																																										Lạm dụng trẻ em diễn ra chủ yếu là môi trường gần gũi với trẻ. Do đó, điều quan trọng là làm cho trẻ hiểu rằng chỉ được phép đi cùng với những người được cha mẹ dặn dò từ trước và phải cẩn thận thậm chí cả với những người quen biết xung quanh trẻ.

																																										Bằng những câu chuyện được chia sẻ, ta thấy rằng : không có nơi nào trên thế giới này an toàn bằng vòng tay và cách giáo dục sáng suốt của cha mẹ. Hãy giúp con học cách tự bảo vệ mình cha mẹ nhé.

																																										Con không bao giờ đi cùng người lạ là 1 trong 4 cuốn sách thuộc bộ sách "Con có thể tự bảo vệ mình" được mua bản quyền từ Đức - một trong những quốc gia chú trọng nền giáo dục trẻ em - bậc nhất trên thế giới. Là bộ sách mà mọi em bé 5+ đều nhất định cần có!', 4, 6),

	('SKM0006', N'Con Không Bao Giờ Đi Lạc (Tái bản 2022)', 'ckbgdl.png', N'Dagmar Geisler', 75000, 500, 2022, N'Tiếng Việt', 34, N'Bìa Mềm', 100, N'CON KHÔNG BAO GIỜ ĐI LẠC là câu chuyện về cô bé Lu bị lạc mẹ trong khu chợ trời. Nhờ vào sự tự tin và thuộc nằm lòng những kỹ năng cần thiết, cô bé không những tìm được mẹ mà còn giúp đỡ cậu bé Roberto tìm lại được bố của bạn ấy nữa.

																																							Vì bản tính hiếu động và tò mò, nên trẻ rất dễ bị lạc khi đi cùng cha mẹ hoặc người thân đến những nơi đông người như chợ, siêu thị, công viên, trung tâm giải trí Khi đó không những các con mà cả cha mẹ sẽ rất hoảng loạn, chính vì vậy chúng ta cần trang bị cho mình những kiến thức để luôn thật bình tĩnh và hướng dẫn con các kỹ năng cần thiết để xử lý tình huống khi đi lạc.

																																							Ngoài những điều thông thường mà ai cũng biết như: dạy con đứng yên tại chỗ, dạy con ghi nhớ thông tin liên lạc của bố mẹ,… thì cuốn sách còn có những tình huống dạy con như: KHÔNG ĐI THEO NGƯỜI LẠ ĐỂ GỌI ĐIỆN và LÀM THẾ NÀO KHI CON KHÔNG NHỚ THÔNG TIN LIÊN LẠC để con giải quyết một cách chuẩn xác và thông minh theo những nguyên tắc cơ bản đã được mẹ chỉ bảo.

																																							Với hình vẽ sinh động, cốt truyện hấp dẫn, đan xen những nguyên tắc được đưa vào theo tình huống gần gũi thực tế, cuốn sách sẽ khiến các bạn nhỏ vô cùng yêu thích, qua đó cung cấp cho trẻ em và các bậc cha mẹ những lời khuyên hữu ích khi gặp sự cố ngoài ý muốn.

																																							CON KHÔNG BAO GIỜ ĐI LẠC là 1 trong 4 cuốn sách thuộc bộ sách "Con có thể tự bảo vệ mình" được mua bản quyền từ Đức - một trong những quốc gia chú trọng nền giáo dục trẻ em - bậc nhất trên thế giới. Là bộ sách mà mọi em bé 5+ đều nhất định cần có!', 4, 6),

	('SKM0007', N'Vì Mông Bé Cũng Cần Được Thở', 'vmbccdt.png', N'Brandi Brucks', 79000, 500, 2019, N'Tiếng Việt', 108, N'Bìa Mềm', 120, N'Em bé của bạn đã đến lúc có thể trở thành những em bé “trưởng thành”, và những người làm cha mẹ như chúng ta đang rất hi vọng thiên thần bé bỏng của mình có thể vui vẻ nói “bai bai” những chiếc bỉm đã gắn bó cùng bé.

																																					Việc bỏ bỉm cho bé sẽ chẳng còn khó khan như bạn nghĩ, bởi: “BẠN LÀ CHA MẸ, BẠN CÓ THỂ LÀM ĐƯỢC”

																																					Nếu nghe được những lời này giúp bạn thở phào nhẹ nhõm thì cuốn sách này dành cho bạn. Nếu bạn nghĩ rằng  “Ôi dào, mỗi việc bỏ bỉm và tập cho con đi vệ sinh đúng chỗ thôi mà, sao phải lắm chuyện” thì cuốn sách này chắc chắn dành cho bạn. Bởi có một sự thật, việc bỏ bỉm và tập cho con đi vệ sinh đúng chỗ có thể là một trải nghiệm rất khó chịu. Nhưng “Vì mông bé cũng cần được thở” – tuyệt chiêu giúp trẻ bỏ bỉm chỉ sau 3 ngày sẽ giúp bạn không còn cảm thấy như vậy nữa. Brandi Brucks với tư cách là một chuyên gia, cô ấy đã giúp cho các bậc phụ huynh vượt qua quá trình này mà không “phát điên”.

																																					Nếu bất kì thời điểm nào con bạn vẫn tự coi mình là một em bé và muốn mặc bỉm lại, hãy nói với em bé rằng bé không còn bé bỏng nữa, và bạn rất tự hào vì bé đã trở thành một anh/chị lớn. Đôi khi không còn là em bé nữa có thể là một quá trình chuyển đổi khó khăn, vì vậy hãy làm bé an tâm bằng cách nói với con rằng bạn yêu bé rất nhiều và việc bé lớn dần lên sẽ có rất nhiều điều thú vị.

																																					Cuốn sách này là thứ phải nằm trên giá sách của mỗi bậc phụ huynh. Nó nhắc nhở cha mẹ rằng, khi họ dạy trẻ biết đi vệ sinh đúng chỗ, từ đó giúp trẻ bỏ bỉm, họ sẽ nhận được thành quả hết sức ngọt ngào. Đây là cuốn sách với bản hướng dẫn tuyệt vời. Giống như Brandi nói, hãy nắm quyền chủ động, có thái độ lạc quan và luôn luôn khích lệ trẻ. Khi dạy con tập đi vệ sinh đúng chỗ, đừng là một người bạn. Hãy là cha mẹ của con.', 4, 6),

	('SKM0008', N'Cha Mẹ Là Số Phận Của Con Cái', 'cmlspccc.png', N'Tiến sĩ Vũ Thu Hương', 96000, 500, 2017, N'Tiếng Việt', 328, N'Bìa Mềm', 330, N'Cuốn sách dành cho tất cả các cha mẹ Việt, một cách nuôi dạy con thuần Việt nhưng hiệu quả cao hơn rất nhiều so với bất kỳ cuốn sách nuôi con kiểu Nhật, Mỹ, Anh, Pháp… nào khác.

																																							Sinh con và nuôi con khỏe mạnh, hạnh phúc là điều ai cũng hướng tới nhưng không phải bậc cha mẹ nào cũng nhận thức được vai trò của mình. Cha mẹ thường nuôi dạy con theo hai xu hướng: hoặc để con phát triển “tự nhiên”, không uốn nắn rèn giũa; hoặc thường xuyên bao bọc con quá mức, yêu con không đúng cách. Việc nuôi dạy con sai cách và nhận thức không đúng về việc sinh con, không nắm rõ được trách nhiệm của mình sẽ khiến trẻ ương bướng, không biết tự chịu trách nhiệm và không thể trưởng thành. Đúng như tên gọi, “Cha mẹ là số phận của con cái” sẽ mang đến những quan điểm rất khác về việc sinh con, nuôi con. Sách gồm 4 chương:

																																							Chương 1 – Cha mẹ là số phận của con cái: bản chất của việc nuôi dạy và tầm quan trọng của cha mẹ đối với con cái.

																																							Chương 2 – Việc học của con: hiểu rõ việc học của trẻ là gì và những điều trẻ cần phải học từ cuộc sống chứ không đơn giản chỉ kiến thức tại trường. Bên cạnh đó, tác giả cũng hướng dẫn cha mẹ cách chọn trường mầm non cho con, dạy con học tiểu học, hỗ trợ khi con lên những lớp cao hơn.

																																							Chương 3 – Kỹ năng sống cho con: đề cập đến tất cả những kỹ năng bắt buộc mà trẻ cần phải học để bảo vệ bản thân và tự giải quyết được những việc trong khả năng khi không có người lớn hỗ trợ. Trẻ cần SỐNG CÒN trước khi SỐNG THÀNH CÔNG.

																																							Chương 4 – Trả con về với cuộc đời: trẻ em đều là những cá thể độc lập, sẽ có ngày trẻ phải tự bước ra khỏi vòng tay của cha mẹ. Cha mẹ dù yêu thương con đến mấy cũng nên có những cách dạy dỗ để con trưởng thành, biết tự lập và chịu trách nhiệm với cuộc đời của chúng.   

																																							“Cha mẹ là số phận của con cái” cũng có thể được coi là cuốn sách “vạch tội” cha mẹ. Các câu hỏi như “Cha mẹ sinh con để làm gì?”, “Cha mẹ là gì của con cái?”, “Có cần tôn trọng con?”… tưởng là những thắc mắc rất đơn giản, không mấy ai quan tâm nhưng đó mới là gốc rễ của vấn đề nuôi dạy trẻ. Tuy nhiên từ đó, cha mẹ sẽ hiểu thực sự bản chất của vấn đề, mình đã và đang sai ở đâu, để có phương pháp nuôi dạy con hợp lý. ', 4, 6),

	('SKM0009', N'Đếm Ngược Tới Ngày Gặp Con Yêu', 'dntngcy.png', N'Susan Magee', 99000, 500, 2018, N'Tiếng Việt', 392, N'Bìa Mềm', 420, N'Đếm ngược tới ngày gặp con yêu/ Đếm ngược thai kì sẽ đồng hành với bạn trong chín tháng mang thai bằng những bí quyết thiết thực, nhừng lời khuyên hữu ích và những tiết lộ chân thật nhất về mang thai – sinh nở.

																																							Cung cấp cho thai phụ nền tảng và kinh nghiệm thông qua 280 ngày đếm ngược thai kì + 14 ngày sau dự sinh với những thông tin và lời khuyên hữu ích từ sản phụ khoa hàng đầu Hoa Kì.

																																							Cùng mẹ làm quen với những thay đổi tâm sinh lý trong thời kỳ mang thai

																																							Tránh được những bỡ ngỡ lo lắng không đáng có về những thay đổi mới mẻ trong cơ thể khi mang thai. 

																																							Giúp thai phụ biết đặt ra những đòi hỏi/ yêu cầu hợp lí đối với chồng để mối quan hệ của 2 người trong giai đoạn thai kì được duy trì tốt đẹp.

																																							Các đề mục trong sách bao gồm: Chỉ dẫn của bác sĩ, sự thật là thế đấy, những việc cần làm... đều được trình bày rõ ràng, giúp người đọc dễ theo dõi và áp dụng.

																																							Ngoài những thông tin mang tính khoa học, cuốn sách còn đưa đến cho bạn "lời khuyên từ các chiến hữu" - những người đã cất cánh an toàn khỏi Xứ Sở Mang Thai. Bạn sẽ nhìn thấy thực tế và tìm thấy lời động viên quý báu để thành công vượt qua 9 tháng tuyệt vời nhất của cuộc đời bạn. 

																																					Đếm ngược tới ngày gặp con yêu – một cuốn sách cần đọc khi mang thai, truyền cảm hứng để bạn tự tin vượt qua hành trình trở thành một người mẹ bình an và khỏe mạnh.

																																					Thông tin tác giả & dịch giả:

																																					Cuốn sách được viết bởi Susan Magee và cố vấn chuyên môn Tiến sĩ Kara Nakisbendi - bác sĩ sản phụ khoa nổi tiếng tại Hoa Kỳ với sự nhiệt tình, đặc biệt hiểu rõ những biến đổi tâm lý thai phụ và có nhiều kinh nghiệm trong việc chăm sóc, đồng hành cũng như giúp các bà mẹ vượt cạn an toàn. 

																																					Đặc biệt hơn, cuốn sách được:

																																					► Chuyển ngữ bởi DỊCH GIẢ MẸ ONG BÔNG (đồng tác giả "Nuôi con không phải là cuộc chiến") 

																																					► HIỆU ĐÍNH bởi TIẾN SĨ - BÁC SĨ BÙI CHÍ THƯƠNG - Giảng viên Đại học Y Dược TP.HCM - Chuyên gia về sản phụ khoa và phẫu thuật nội soi phụ khoa của Bệnh viện Đại học Y Dược TP.HCM và Bệnh viện Từ Dũ TP.HCM.', 4, 6),

	('SKM0010', N'Bí Mật Do Thái - Khơi Dậy Tài Năng Trẻ', 'bmdtkdtnt.png', N'Michal Nahari Larkin B Ed (Hons)', 79000, 500, 2018, N'Tiếng Việt', 256, N'Bìa Mềm', 300, N'“Bí mật Do thái khơi dậy tài năng trẻ” là chuyến hành trình khám phá thế giới đầy thú vị, bất ngờ của giáo dục Do Thái, một nền giáo dục từ lâu đã nổi tiếng về sự sáng tạo và tôn trọng cá nhân trẻ.

																																												Cùng những quan điểm rút ra từ những trải nghiệm thú vị trong nhiều năm của tác giả Michal Nahari, người đã có hơn ba thập kỷ làm trong lĩnh vực mầm non với vai trò là giáo viên, đây chính là cuốn cẩm nang để cha mẹ thấu hiểu, tin tưởng và yêu thương trẻ một cách đúng đắn;  song hành với giáo dục nhà trường để định hướng và phát huy tài năng con trẻ.

																																												Cuốn sách chủ yếu đưa ra các phương pháp nhằm giải quyết hai yếu tố: Yếu tố thứ nhất là mối liên hệ giữa thầy cô – học sinh/ bố mẹ - con cái. Và yếu tố thứ hai chính là phương tiện mà các người thầy áp dụng để đánh thức niềm đam mê và hứng thú của các em.

																																												Thay vì ở tư thế đối phó, chỉ thị cho học sinh, một giáo viên hãy trở thành người tôn trọng sự sáng tạo và niềm đam mê của trẻ, vui vẻ ủng hộ và khuyến khích các em tìm tòi khám phá thêm để có thể trở thành người có ảnh hưởng tích cực đến học sinh bằng 8 yếu tố cơ bản: Tình yêu, Tôn trọng, Công nhận, Tin tưởng, Lắng nghe, Giáo dục, tạo động lực, Thú vị, Chia sẻ và Ảnh hưởng. Bằng cách đó, chúng ta sẽ tạo ra môi trường học tập mà mỗi học sinh đều được tôn trọng sự khác biệt, và bản thân giáo viên là người hiểu được tầm quan trọng của cách tiếp cận, ứng xử với học sinh, thì đứa trẻ sẽ luôn ở trạng thái vui vẻ khi đến trường, thoả sức sáng tạo và tự tin với chính mình.

																																												“Bí mật Do Thái khơi dậy tài năng trẻ” còn có rất nhiều trích dẫn của các nhà giáo dục, các nhà đào tạo và các giáo sư thuộc tất cả các tầng lớp trong xã hội. Chính là những ảnh hưởng góp phần thay đổi lớn lao những đứa trẻ bây giờ cũng chính là tương lai của thế giới sau này', 4, 6),

	('SKM0011', N'Dạy Con Yêu Sách, Gieo Mầm Tính Cách', 'dcysgmtc.png', N'Nhóm Thư Gửi Con', 69000, 500, 2018, N'Tiếng Việt', 200, N'Bìa Mềm', 210, N'Việc vun đắp tình yêu đọc sách cho con ngay từ khi còn bé là nền tảng cho sự thành công trong tương lai của mỗi đứa trẻ. Nhưng khi bắt tay vào thực hiện, bố mẹ lại cảm thấy như là một cuộc chiến với hàng loạt câu hỏi bủa vây: làm sao để kiên nhẫn khi con luôn hiếu động giằng xé sách? Con ghét sách, con muốn xem hoạt hình? Bố/mẹ tự ti với giọng nói, không biết đọc diễn cảm cho con nghe?...

																																								Dạy con yêu sách gieo mầm tính cách sẽ giúp cha mẹ:

																																								- Lựa chọn sách phù hợp với từng nấc tuổi

																																								- Mách nhỏ những mẹo tương tác với con khi đọc sách

																																								- Gỡ rối những băn khoăn lo lắng khi đọc sách cùng con

																																								- Vun đắp tình yêu sách cho con sớm và đúng cách

																																								Dạy con yêu sách gieo mầm tính cách không đơn thuần là một cuốn sách lý thuyết suông. Thông qua những câu chuyện và bài học được lấy từ chất liệu thực tiễn: “Chú sâu Minh “háu” sách”; “Bộ sưu tập các vai diễn của Minh”; Mun Mun với “tất cả cùng đi ị”… bố mẹ hoàn toàn có thể áp dụng và dễ dàng tương tác với trẻ.

																																								Việc dạy con đọc sách đã khó, việc dạy con yêu sách còn khó hơn rất nhiều. Nó đòi hỏi sự kiên nhẫn, trách nhiệm và phản chiếu tấm gương từ bố mẹ. Hãy cùng con đọc những cuốn sách hay thay vì cho con chơi game để dỗ dành. Hãy trao cho con những cuốn sách thay vì những chiếc ipad, smartphone. Hãy để những cuốn sách thay đổi hành vi của trẻ, tự làm đầy một thế giới tinh thần phong phú, và “sáng tạo” một em bé vui vẻ, hạnh phúc  trong chính mình.', 4, 6),

	('SKM0012', N'Hành Trình Học Làm Mẹ', 'hthlm.png', N'Naoko Miyaji', 69000, 500, 2018, N'Tiếng Việt', 200, N'Bìa Mềm', 220, N'Mang thai và sinh con là một hành trình trải qua nhiều cung bậc cảm xúc. Đầy ắp sự viên mãn, hạnh phúc nhưng cũng không thiếu những vất vả, nhọc nhằn; không ít những bỡ ngỡ, lạ lẫm …

																																		9 tháng 10 ngày loay hoay với những cơn ốm nghén, phù chân, đau lưng… rồi lo lắng ăn gì, uống gì để không ảnh hưởng tới con… cuối cùng cảm thấy như mắc kẹt trong mớ suy nghĩ liệu có đang nuôi con sai cách?

																																		Ông bà, cô dì chú bác, thậm chí những người hàng xóm có nhiều kinh nghiệm nuôi dạy con bắt đầu xì xào nhỏ to khiến bạn gần như tuyệt vọng:

																																		Sao con còi thế!

																																		Sao con khóc nhiều thế!

																																		Sao ít sữa thế!

																																		Sao càng ngày càng béo thế!

																																		…

																																		“Hành trình học làm mẹ” của Naoko Miyaji như “đi guốc trong bụng” các bà mẹ bỉm sữa, đồng cảm và thấu hiểu với “cảm giác buồn chán sau sinh”, truyền cho bạn nguồn năng lượng tích cực để:

																																		Ngưng HY SINH bản thân mình vì con cái

																																		Người ta thường dùng những mỹ từ cho sự hi sinh của người mẹ, nhưng nếu chẳng may mẹ bị ốm thì cuối cùng cũng không thể chăm sóc chu đáo cho con được, và nếu người mẹ rơi vào tình trạng mệt mỏi đến mức không thể duy trì sự sống cho bản thân thì thật khó để con có thể vui vẻ sống tiếp cuộc đời của mình. Chúng ta hi sinh bản thân, chúng ta hi vọng quá nhiều vào con, để rồi khi con không đáp ứng được những kỳ vọng đó chúng ta lại tức giận, lại hối hận… Thêm vào đó, việc mẹ hi sinh bản thân để chăm lo hết cho con khiến con không nhận ra người khác cũng có
																																		nhu cầu, nguyện vọng riêng. Nên trong hành trình làm mẹ, hãy ưu tiên và yêu thương bản thân mình.

																																		Ngưng SO SÁNH bản thân mình với những người mẹ khác

																																		Sẽ có không ít các bà mẹ cảm thấy lạc lõng, căng thẳng trong cuộc gặp gỡ của các mẹ bỉm sữa. Hình ảnh những bà mẹ nuôi con đảm đang, làm đồ chơi cho con, nấu nhiều món ăn dặm cho con, con ít ốm ít sốt… hay vấn đề nhà cửa, đất đai… khiến bạn tủi thân và cảm thấy xa rời. Nhưng nếu bạn ý thức được rằng không bao giờ so sánh con mình với con nhà khác thì cũng không cần so sánh mình với những bà mẹ khác. Hãy nuôi con theo cách của bạn. Quan sát và trau dồi kiến thức trong hành trình làm mẹ.

																																		Ngưng HOÀN HẢO và học cách cân bằng cuộc sống

																																		Khi một đứa trẻ được sinh ra thì một “người mẹ” cũng xuất hiện. Cả mẹ và con sẽ tác động và thay đổi lẫn nhau. Trải qua quá trình con phát triển cả về thể chất và tinh thần, người mẹ cũng sẽ trưởng thành từng chút một. Đừng cố gắngbiến mọi khuyết điểm trở nên hoàn hảo, bởi bạn biết không “Hành trình học làm mẹ” nói với bạn rằng: không có cách trở thành một người mẹ hoàn hảo và có triệu cách để trở thành người mẹ hạnh phúc”.', 4, 6),

	('SKM0013', N'Con Sẽ Là Một Em Bé Hạnh Phúc', 'cslmebhp.png', N'World Mommy', 79000, 500, 2017, N'Tiếng Việt', 200, N'Bìa Mềm', 210, N'Mang thai, sinh con an toàn và nuôi dạy con trưởng thành là một quá trình nhiều vất vả, lo âu nhưng cũng không thiếu niềm vui, những niềm hạnh phúc. Ngay từ khi con còn trong bụng, bất kỳ người mẹ nào cũng mong muốn mang lại cho con một cuộc sống đủ đầy, tạo ra một bầu không khí gia đình ngập tràn tiếng cười. Nhưng rồi, năm tháng qua đi, áp lực từ cuộc sống, ảnh hưởng từ truyền thông khiến các bậc cha mẹ chỉ chú trọng đến việc làm sao để con cao lớn, thông minh, thành tài mà quên đi rằng ngay từ ban đầu, chúng ta luôn muốn trẻ hạnh phúc.

																																					Hạnh phúc của trẻ đâu thể chỉ đến từ những bữa ăn ngon, đồ chơi đẹp. Hạnh phúc của trẻ bắt nguồn từ chính xúc cảm bên trong mà trẻ cảm nhận được. Bằng những lời yêu thương, sự chăm sóc, quan tâm đúng mực, sự lắng nghe chia sẻ hàng ngày, bố mẹ hoàn toàn có thể giúp con cảm thấy thoải mái trong ngôi nhà yêu thương. Bên cạnh đó, một điều quan trọng cũng không kém để góp phần tạo nên hạnh phúc cho trẻ, nhưng bố mẹ lúc nào cũng quên mất, chính là niềm hạnh phúc của bố mẹ. Trẻ không thể có tâm trạng thoái mái, phát triển tự nhiên nếu như bố mẹ thường xuyên mệt mỏi, cáu gắt và không biết cách chăm sóc bản thân mình. Được viết bởi World Mommy – Hội chuyên gia chăm sóc trẻ Nhật Bản, Con sẽ là một em bé hạnh phúc không chỉ tập trung vào quá trình nuôi dạy con khỏe mạnh mà còn giúp các mẹ biết cách chăm sóc bản thân từ khi mang thai. Cuốn sách bao gồm:

																																					- Chương 1 – Thời kỳ mang thai: gồm những kiến thức trong thời kỳ mang thai, sự thay đổi về cơ thể của mẹ và bé; chăm sóc sức khỏe cho sản phụ trong khi mang thai và sau khi sinh.

																																					- Chương 2 – Giáo dục trẻ giai đoạn 0-3 tuổi: hiểu về quá trình phát triển ngôn ngữ và hành vi ở trẻ trong độ tuổi 0-3; phương pháp mát xa cho trẻ; cách giúp con tự lập, những trò chơi giúp kích thích trí não trẻ phát triển tốt hơn…

																																					- Chương 3 – Giáo dục trẻ giai đoạn 3-6 tuổi: hiểu biết về sự phát triển não bộ của trẻ giai đoạn này; cách kích thích 5 giác quan ở trẻ; để trẻ cảm thấy hạnh phúc thông qua cách giáo dục hàng ngày của bố mẹ…

																																					Với Con sẽ là một em bé hạnh phúc, các mẹ sẽ có những chỉ dẫn hiệu quả để chăm sóc bản thân khỏe mạnh, nuôi con hạnh phúc; các bố cũng sẽ thấu hiểu được những nỗi lo lắng, sự thay đổi cơ thể của vợ khi mang thai và cách để khiến gia đình nhỏ của mình thật hạnh phúc.', 4, 6),

	('SKM0014', N'Đừng Lo Để Cho Con Nghĩ', 'dldccn.png', N'Aiko Shibata', 79000, 500, 2018, N'Tiếng Việt', 208, N'Bìa Mềm', 220, N'"Đừng lo để cho con nghĩ" là cuốn sách ghi lại trải nghiệm thực tế của trẻ em mầm non Nhật Bản theo dòng chảy 4 mùa Xuân - Hạ - Thu - Đông. Xoay quanh thiên nhiên bốn mùa như một vòng tuần hoàn lặp đi lặp lại theo hình xoắn ốc, việc bố mẹ khám phá sự trưởng thành của trẻ cũng dần rộng mở theo.

																																			Đằng sau những trò chơi, những hoạt động, những bức ảnh và câu chuyện thực tế trong cuốn sách, bố mẹ sẽ hiểu được tâm lí của con mình khi ở trường như thế nào. Từ những buổi đầu tiên đến lớp vì sao con khóc? Có cần quá lo lắng vì tiếng khóc ấy hay không? Rồi đến những tình huống hay gặp phải như ở trường con rất ngoan, rất tự lập nhưng về nhà lại mè nheo, bướng bỉnh cũng được tác giả trả lời một cách rất thuyết phục qua từng câu chuyện.

																																			Bên cạnh đó, phụ huynh còn nắm bắt được những bài học sâu sắc về tâm lí của trẻ thơ. Thấu hiểu những góc nhìn háo hức khám phá thế giới xung quanh say mê nhất, nồng nhiệt nhất. Để hiểu vì sao con trẻ luôn tỏa ra thứ răng lượng tràn đầy sức sống.

																																			“Đừng lo để cho con nghĩ” như một lời nhắc nhở bố mẹ rằng: hãy để tầm mắt mình ngang hàng với trẻ, để con được tự do suy nghĩ, biểu đạt, từ đó bố mẹ sẽ là người thấu hiểu, khích lệ và cổ vũ con bước vào thế giới theo cách của riêng mình.', 4, 6),

	('SKM0015', N'Chi Chi Chành Chành - Tuổi Thơ Để Dành', 'ccccttdd.png', N'Hà Nội vi vu', 72000, 500, 2019, N'Tiếng Việt', 152, N'Bìa Mềm', 200, N'Năm tháng nào rồi cũng qua đi, khoảnh khắc nào rồi cũng xếp vào ký ức dù là vui hay buồn. Tuổi thơ cũng vậy, nó đã đi về miền ký ức, tuy nhiên những gì mà nó để lại mãi đong đầy trong mỗi chúng ta khó mà lãng quên.

																																							Tuổi thơ qua đi để lại một miền kí ức đẹp đẽ đơn thuần mà sẽ có một phút giây nào đó trong cuộc đời, chúng ta – những người đã trưởng thành thèm khát tới tột cùng được quay trở lại ngày thơ ấy. Nơi có cánh cò trắng bay trong lời bà ru, những chú trâu thong dong trở về cùng tiếng sáo mục đồng, những buổi trưa hè trốn ngủ ngồi dưới gốc bưởi chơi ô ăn quan, chơi chuyền hay bắn bi, đánh khăng đánh đáo. Tuổi thơ là dòng sông mát lành để ta thỏa sức vẫy vùng, tắm táp cho tâm hồn thêm tươi mới, bỏ quên đi tất cả những mệt mỏi trên mỗi bước đường ta phải trưởng thành.

																																							Cuốn sách “Chi chi chành chành – Tuổi thơ để dành” ra đời giúp bạn quay trở về tuổi thơ qua những trò chơi dân gian, những ca khúc thiếu nhi đã in sâu trong tâm trí chúng ta thưở bé. Với tất cả những kí ức ngọt ngào về tuổi thơ mà tất cả chúng ta ai cũng luôn trân quý, nhóm tác giả Hà Nội vi vu mong muốn đem những đặc trưng văn hóa, nghệ thuật của Việt Nam đến với tất cả bạn bè trong và ngoài nước, tặng lại kỉ niệm ấu thơ cho những người đã đi qua, và đem tới một tuổi thơ trong trẻo cho các bạn nhỏ ở khắp nơi trên dải đất chữ S.

																																							Đặc biệt với công nghệ tăng cường thực tế ảo, cuốn sách sẽ là món quà thú vị dành tặng các bạn nhỏ, giúp các bạn nhỏ biết thêm về các trò chơi dân dã đầy hấp dẫn, những bài hát thiếu nhi thân thương đã đi qua bao tháng năm…

																																							Cuốn sách gồm 2 phần chính:

																																							Phần 1: Bài hát thiếu nhi: Ở phần này tất cả chúng ta sẽ như đắm chìm trong thế giới âm nhạc của tuổi thơ qua rất nhiều những bài hát thiếu nhi đã theo chúng ta đi cùng năm tháng. Đặc biệt hơn khi chúng ta cài ứng dụng AR Hà Nội vi vu qua Smart phone sẽ rất thú vị trên hành trình đưa chúng ta sống lại những năm tháng ấy.

																																							Phần 2: Trò chơi dân gian: Những trò chơi dân gian vô cùng quen thuộc như kéo co, mèo đuổi chuột, oẳn tù tì, đánh bi… mà những năm tháng tuổi thơ chúng ta đã chơi không biết bao nhiêu lần cũng không chán. Tất cả sẽ được tái hiện lại với phần hình ảnh vô cùng sinh động qua ứng dụng AR Hà Nội vi vu.', 4, 6)


--insert SkySpecial
insert into Books(bookID, bookName, bookImage, author, price, quantity, publishingYear, [language], numberPage, form, [weight], bookDescribe, cid, pcid)
values
	('SKS0001', N'Từ Phú Điền Đến New York', 'tpndNY.png', N'Tuyết Lan', 215000, 500, 2022, N'Tiếng Việt', 136, N'Bìa Cứng', 300, N'HÀNH TRÌNH BUNG NỞ RỰC RỠ CỦA ĐÓA HOA MANG TÊN TUYẾT LAN

																																			Cuốn sách dành cho tất cả những ai đang ấp ủ những giấc mơ
																																			Đánh thức sự mạnh mẽ, tự tin; giúp bạn dám yêu và dám sống

																																			Ghi danh Á quân cuộc thi Vietnam’s Next Top Model năm 2010, Tuyết Lan đã trở thành gương mặt người mẫu ấn tượng của làng thời trang Việt Nam.

																																			Với khuôn mặt đậm chất Á và những biểu cảm cá tính, cùng nỗ lực vượt bậc trong cách làm việc và thể hiện xuất sắc trong các shoot hình nghệ thuật, năm 2012,  Tuyết Lan kí hợp đồng với công ty quản lý và đào tạo người mẫu hàng đầu thế giới Wilhelmina Models. Từ đây, đánh dấu bước ngoặt trong hành trình vươn ra biển lớn của Tuyết Lan.

																																			Và đây cũng là lý do Từ Phú Điền Đến New York ra đời. Cuốn sách ghi lại một cách sống động và chân thật nhất hành trình lao động không ngừng nghỉ ở tuổi đôi mươi. Từ một cô bé gầy gò, đen nhẻm, tuổi thơ cơ cực khó khăn ở ngôi làng nhỏ ở Phú Điền cho tới những đêm không ngủ ở NewYork. Đó không phải là hành trình nhung lụa với những bữa tiệc sang trọng, những bộ cánh đắt đỏ, hào nhoáng mà là những ngày kiệt sức ở Florida, nỗi ám ảnh mang tên “ngôi nhà chung”, sự đào thải khắc nghiệp của nghề và những cám dỗ thì luôn xuất hiện một cách đầy quyến rũ.

																																			Nhưng chính từ những khó khăn, chông gai của những ngày trẻ dại, đã khiến Tuyết Lan nỗ lực không ngừng. Và qua mỗi trang sách của mình, cô đã gửi gắm biết bao lời an ủi, động viên đến những người trẻ rằng:

																																			YÊU BẢN THÂN: Đừng bao giờ so sánh bản thân với bất kỳ ai. Ngay cả khi bạn không hoàn hảo hay khiếm khuyết, tất cả chúng ta đều là những bản thể duy nhất.

																																			SỐNG CÓ ƯỚC MƠ: Ai cũng có quyền được mơ. Sống có ước mơ, bạn sẽ nhìn nhận mọi thứ và định hướng cuộc sống của mình rõ ràng hơn, có mục tiêu hơn. Quan trọng hơn, đừng để người khác dập tắt ước mơ của bạn dù ở bất kỳ hình thức nào”.

																																			NỖ LỰC LÀM VIỆC: Đôi khi để sống, ta phải làm cả những công việc không hề yêu thích hoặc chẳng có chút kinh nghiệm nào. Nhưng đừng ngại thử, bởi đó là cách cuộc sống này vận hành. Biết đâu được, trong chính những công việc tưởng chừng xa lạ đó, bạn sẽ nhặt được những hạt bụi vàng quý giá.

																																			TIN VÀO GIÁ TRỊ CỦA BẢN THÂN MÌNH: Hãy biến mình trở thành một tặng vật mà tiền không thể mua được. Bạn có thể nghèo về vật chất, nhưng hãy luôn là người giàu có về tâm hồn và phẩm hạnh.

																																			Và cuối cùng, HÃY SỐNG NGỌT NGÀO VÀ TỐT BỤNG, dù hoàn cảnh của bạn như thế nào. Hãy giúp đỡ mọi người khi có thể, bằng những gì mình có được mà không cần nhận lại. Hãy học cách tha thứ, để từ đó tìm được sức mạnh tiến về phía trước.

																																			Cuốn sách cũng có một chương viết về “những mối tình”. Ở đó có nước mắt của một cuộc hôn nhân tan vỡ, nhưng đồng thời cũng lấp ló ánh mặt trời sau cơn giông mù mịt khi có một người đàn ông đã phá vỡ bức tường mà Tuyết Lan xây nên bảo vệ mình. Người dùng sự chân thật để xoa dịu những tổn thương. Và đó cũng là mạch ngầm chảy xuyên suốt cuốn sách, mạch thở của TÌNH YÊU: Yêu bản thân. Yêu người khác. Yêu thương thế giới mà ta đang sống. Bạn có thể vứt bỏ mọi thứ, nhưng đừng bao giờ để cuộc sống không có tình yêu.

																																			Từ Phú Điền Đến New York không chỉ đơn giản là một cuốn sách viết về cuộc sống cá nhân của một người, nó còn là một bộ phim về cuộc sống của tất cả chúng ta – những người mang trong mình trái tim rộng mở và những ước mơ lớn. Mong bạn gấp lại cuốn sách này, sẽ thêm thấu hiểu bản thân, mạnh mẽ, tự tin, dám yêu và dám sống.', 5, 5),

	('SKS0002', N'Chạm', 'cham.png', N'Ưng Hoàng Phúc', 249000, 500, 2022, N'Tiếng Việt', 216, N'Bìa Cứng', 300, N'“Rồi một ngày, con sẽ đứng chung sân khấu hát cùng với các anh chị!”

																															Đó là tuyên bố dõng dạc của một cậu nhóc chừng 13-14 tuổi gầy gò, đen nhẻm nhưng đã ôm mộng đứng ở trung tâm sân khấu bán niềm vui cho mọi người. Cậu nhóc với cái tên Nguyễn Quốc Thanh, cũng chính là chàng ca sĩ đình đám Ưng Hoàng Phúc với những bản hit bất hủ như: “Thà Rằng Như Thế”, “Tôi Đi Tìm Tôi”, “Cắn Rứt”, “Vì Sao Trong Lòng Tôi”, “Người Ta Nói”,… đã từng bước trở thành “huyền thoại VPop” của thế hệ 8x, 9x.

																															Ở cái tuổi ham vui, Ưng Hoàng Phúc cũng như mọi cậu nhóc mới lớn khác, bày đủ trò nghịch phá. Ước mơ nho nhỏ mỗi ngày chỉ là mong rằng mình sẽ lớn lên, đi đây đi đó, ăn ngon mặc đẹp và được tìm hiểu, được khám phá, được thấy những cái hay, cái mới trong đời. Nhưng cũng chính nhờ sự ủng hộ của bà con miền Tây sông nước năm ấy, sự cổ vũ nhiệt tình của mẹ, cả Dì Chín Vân đã gieo một hạt mầm mạnh mẽ vào trái tim của cậu - hạt mầm mang tên: Hào quang nổi tiếng. 

																															Bốn từ này cũng là những từ chính xác nhất để miêu tả tuổi trẻ nhiệt huyết, sự thành công vang dội của Ưng Hoàng Phúc, từ khi còn là cậu ca sĩ nhỏ người với cái tên Ốc Tiêu, cho đến ngày trở thành một hiện tượng âm nhạc tới mức ở khắp mọi miền trên đất nước, không ai là không thuộc từng bài hát của anh.

																															Nhưng cuộc đời luôn có quá nhiều những bất ngờ, trên con đường sự nghiệp vốn đang chỉ đầy hoa hồng ấy, bỗng một ngày chất đầy những khó khăn. Kể từ đó, có một Ưng Hoàng Phúc rất khác xuất hiện, một Ưng Hoàng Phúc mà bạn phải thực sự CHẠM để hiểu rõ. Đằng sau những bài báo, những mỹ từ tô vẽ hay cả những câu chuyện thị phi là rất nhiều những câu chuyện cần được CHẠM để thấu tỏ. Tất cả những cái CHẠM sâu lắng ấy, đều được Liêu Hà Trinh chắp bút vô cùng mộc mạc, chân thành qua lời kể của Ưng Hoàng Phúc trong cuốn sách viết về anh - cuốn sách mang tên CHẠM. 

																															Ở CHẠM, ta không chỉ bắt gặp cậu nhóc Quốc Thanh tinh nghịch, lắm trò. Không chỉ bắt gặp “thằng” Ốc Tiêu với niềm đam mê ca hát mãnh liệt và mong muốn chạm đến đỉnh hào quang nơi ánh đèn sân khấu lấp lánh sắc màu… Ta còn bắt gặp một Ưng Hoàng Phúc ngã xuống từ đỉnh cao của vinh quang, quay về con số 0 tròn trĩnh vì chống chọi với những cơn đau bệnh tật, hay một Ưng Hoàng Phúc trưởng thành, điềm đạm, và cả một Ưng Hoàng Phúc hết lòng vì những người anh yêu và những người đã tin tưởng, ủng hộ anh đến cùng. 

																															Cuốn sách với sự chân thành và tận tụy của Ưng Hoàng Phúc qua ngòi bút của Liêu Hà Trinh mang đến thông điệp mạnh mẽ rằng: chỉ khi ta không ngừng cố gắng, nỗ lực chiến thắng những điều tưởng chừng đã được số phận an bài, ta sẽ CHẠM được tới ước mơ, hạnh phúc mà mình chờ mong.  

																															Khép lại CHẠM, chính ta cũng được trở về với vùng ký ức đầy sống động của một thuở thiếu thời, những chúng ta của một thời yêu đương vụng dại nhưng đầy nhung nhớ ấy.

																															Ưng Hoàng Phúc, không chỉ là một cái tên, vì cuộc đời của anh, là một phần thanh xuân của chúng em!

																															“Các bạn đưa Phúc chạm được đến mơ ước của mình, Phúc có vinh hạnh đưa các bạn chạm đến vùng trời ký ức qua những lời ca, câu hát. Phúc dường như đã tỏ tường được ý nghĩa của một cuộc đời theo cách riêng của mình.”', 5, 5)


--insert TusachChualanh
insert into Books(bookID, bookName, bookImage, author, price, quantity, publishingYear, [language], numberPage, form, [weight], bookDescribe, cid, pcid)
values
	('SKH0001', N'Trước Khi Muốn Từ Bỏ, Hãy Nghĩ Tới Ngày Mai', 'tkmtbhntnm.png', N'Lâm Thanh Huyền', 96000, 500, 2020, N'Tiếng Việt', 372, N'Bìa Mềm', 327,N'SINH MỆNH DÙ DÀI HAY NGẮN, VẪN LÀ CUỘC DU HÀNH ĐẸP ĐẼ KHÔNG HỐI TIẾC

																																											“Trước khi muốn từ bỏ, hãy nghĩ tới ngày mai” tuyệt phẩm của Lâm Thanh Huyền một trong tám cây bút tản văn đương đại xuất sắc nhất Đài Loan đã đưa hàng triệu con tim trên khắp châu Á tìm lại lòng nhiệt thành của mình.
																																											Một trong những năng lực quan trọng mà con người hiện đại còn thiếu là CẢM GIÁC AN TOÀN VỀ BẢN THÂN, vô tình bị chôn vùi dưới lớp lớp mưu sinh xô đẩy. Chừng nào còn dựa vào những thứ vay mượn bên ngoài, chúng ta mãi không thể tìm được niềm vui đơn thuần.

																																											Còn vay mượn danh tiếng thì còn phải trả nợ bằng bản tâm trong sáng.
																																											Còn vay mượn địa vị thì còn phải trả nợ bằng tri kỷ thâm giao.
																																											Còn vay mượn hào nhoáng hiện kim thì còn phải trả nợ bằng tâm hồn an ổn.
																																											Bận rộn lo lắng vay mượn cả một đời người như vậy, có khi nào bạn nhớ lại rằng mình đã từng là một đứa trẻ vô tư chạy trong mưa chẳng cần chỗ trú, còn không quên che chở cho một nhành hoa run rẩy ven đường?
																																											Thiếu đi sự tự tin, thiếu đi nhiệt huyết với cuộc đời, thiếu đi khả năng cảm nhận vẻ đẹp đơn thuần, mọi thứ tiền bạc, địa vị hay sắc đẹp chỉ như tấm da bọc ngoài tâm hồn mục ruỗng.

																																											“Trước khi muốn từ bỏ, hãy nghĩ tới ngày mai” – một ánh văn trong trẻo, là người bạn đồng hành để con đường phía trước của bạn không còn mơ màng, đơn độc:

																																											Học hỏi từ thất bại để nuôi dưỡng VỐN SỐNG NỘI TÂM.
																																											Thấu tỏ nỗi bi ai và vô thường để vun đắp lòng NHÂN TỪ THUẦN PHÁC.
																																											Trải qua đắng cay ngọt bùi để xây dựng TAM QUAN (nhân sinh quan, thế giới quan, giá trị quan).
																																											Tình yêu cuộc sống không phải món quà đặc biệt mà số phận dành riêng cho một số người, mà là con đường dành cho bất kỳ ai vẫn dám bước đi dù trải qua bao nhiêu vấp ngã.
																																											Khi coi tất cả vui buồn được mất trong cuộc đời là NHỮNG TRẢI NGHIỆM, ta sẽ thản nhiên, phóng khoáng suốt tứ kiếp nhân duyên.

																																											Khi đã hiểu rõ giá trị của bản thân, bạn còn sợ gì không có đường bước tiếp?

																																											Không quan trọng giấy tờ tùy thân nói bạn bao nhiêu tuổi, chỉ cần tâm hồn bạn còn tha thiết với cuộc sống, sinh mệnh dù dài hay ngắn vẫn là một chuyến du hành đẹp đẽ không hối tiếc.', 6, 3),

	('SKH0002', N'Nâng Lên Được, Đặt Xuống Được', 'nlddxd.png', N'Trương Di', 86000, 500, 2018, N'Tiếng Việt', 232, N'Bìa Mềm', 250, N'Nâng Lên Được, Đặt Xuống Được – TẠI SAO CHÚNG TA CÔ ĐƠN, MẤT MÁT VÀ KHÔNG HẠNH PHÚC?

																																					Những người nổi tiếng TRẦM CẢM và tự tử.

																																					Những người trẻ TRẦM CẢM bỏ trốn hoặc điên loạn.

																																					Những bà mẹ trẻ áp lực sau sinh TRẦM CẢM và những hậu quả đầy nước mắt.

																																					Chúng ta đang phải đối diện với điều gì? Chúng ta liệu có đang bước đúng và bước vững trên hành trình hạnh phúc của mình.

																																					Khi trầm cảm được quan tâm ngang với ung thư, người ta cũng bắt đầu tự hỏi lại thước đo đích thực của hạnh phúc?

																																					Bởi nếu hạnh phúc là cảm giác vui vẻ khi có tiền, có nhà cửa, có danh tiếng, có người quan tâm thì hẳn chẳng có người nổi tiếng nào tự tử vì trầm cảm?

																																					“Nâng lên được,đặt xuống được” là góc nhìn khác về trầm cảm, cô độc, một mình và về cả những giá trị ta đang theo đuổi.

																																					Chúng ta đang sống vì điều gì? Vì vật chất? Vì được nhắc đến. Điều cốt lõi là chúng ta muốn khẳng định bản thân. Nỗi sợ cái chết, sợ bị phủ nhận khiến chúng ta không ngừng tích cóp những giá trị có thể nhìn được, cầm được như tiền bạc, nhà cửa, người tình, hay... like và share. Có điều, thứ hạnh phúc vay mượn từ bên ngoài cũng sẽ dễ dàng trôi qua, để lại những vết nứt đau đớn trong lòng mỗi người.

																																					“Nâng lên được, đặt xuống được” không chỉ là thông diệp, là cách sống, tác giả còn viết chạm và sâu về hành trình của những người được xem là Cô độc. Hướng nội đôi khi khiến chúng ta thành công hạnh phúc chậm hơn. Nhưng chắc chắn sẽ bền lâu hơn. Nỗi sợ sinh ra để ngáng chân ta, khuyết điểm sinh ra để được lấp đầy, nội tâm sinh ra để được thấu hiểu. Và chúng ta được sinh ra xứng đáng để hạnh phúc dù theo cách này hay cách khác. Hành trình học cách nâng đặt, học cách buông bỏ, vượt lên những mất mát tổn thương để thấy lòng mình vơi nhẹ, để đủ bản lĩnh, đủ mạnh mẽ đối diện với giông gió cuộc đời là hành trình không dễ dàng.

																																					“Nâng lên được, đặt xuống được” dành cho bạn sự thấu hiểu để bạn tin rằng: Tâm an thì đời an. Tâm sóng gió thì đời đảo điên.

																																					Vậy nên an nhiên hay không? Hạnh phúc hay không chính là phụ thuộc ở việc bạn có dám buông bỏ, có can đảm sống cho những điều nhỏ bé bên trong mình hay không?

																																					Tặng bạn cuốn sách này, hy vọng cuộc sống của bạn an lành!', 6, 6),

	('SKH0003', N'Đường Nào Cũng Trong Lòng Bàn Tay', 'dnctlbt.png', N'Đại sư Tinh Vân', 89000, 500, 2020, N'Tiếng Việt', 248, N'Bìa Mềm', 250, N'“Trời đã cho ta hạt giống sinh mệnh, chỉ có thể nỗ lực chăm sóc đến ngày nở hoa.”

																																								Trên đời này làm gì có đường, người ta đi mãi thì thành đường thôi.

																																								Trên đời này vận mệnh thực sự có tồn tại, hiển hiện trên nét mặt, trên đường chỉ tay, nhưng chẳng phải tất cả đều thuộc về con người chúng ta hay sao?

																																								Bàn tay nhỏ bé của con người có thể làm được những gì?

																																								Có thể lật giở trang sách để tiếp thu tri thức, làm giàu tâm hồn.

																																								Có thể lao động cần cù để tạo ra của cải giá trị.

																																								Có thể buông bỏ hận thù, thả trôi phiền não.

																																								Có thể nâng đỡ những mảnh đời khác, trao gửi yêu thương.

																																								Có thể vạch ra đường đi cho chính mình, nắm bắt cơ hội, siết chặt quyết tâm.

																																								Tự do chân chính không phải là nhàn thân lười biếng, mà là nỗ lực để có một chân trời rộng lớn tốt đẹp hơn. Đừng đợi ai đó cầm tay mình chỉ đường dẫn lối, hãy chủ động bắt tay học hỏi. Đừng đợi ai đó đặt vào tay mình những thứ sẵn có, hãy tự tạo ra cuộc sống cho mình.

																																								Bởi vì, đường nào cũng trong lòng bàn tay!

																																								Tiếp nối phần “sự nghiệp và cuộc sống” từ cuốn sách “Một đời đáng giá, đừng sống qua loa”, “Đường nào cũng trong lòng bàn tay” là phần “nhân sinh và tinh thần”, tập hợp những tri thức quý báu và lời khuyên chân thành từ Đại sư Tinh Vân, để mỗi người đọc thấu hiểu bản thân, hoàn thiện “một đời đáng giá” của mình.', 6, 3),

	('SKH0004', N'Một Đời Đáng Giá Đừng Sống Qua Loa', 'mddgdsql.png', N'Đại sư Tinh Vân', 75000, 500, 2019, N'Tiếng Việt', 272, N'Bìa Mềm', 300 , N'Cuộc đời mỗi người thành hình vào cái ngày được sinh ra, nhưng chỉ thực sự có hồn vào ngày người đó bắt đầu sống cho đàng hoàng, cẩn thận.

																																									Cuộc sống này giống như xây một ngôi nhà, vững chãi hay cheo leo, suy cho cùng là ở cách mỗi người lựa chọn đầu tư vào những “hạng mục” quan trọng:

																																									- Đầu tư vào BẢN THÂN, từ sức khỏe tinh thần đến cơ thể, bởi chúng ta là điểm tựa vững chắc nhất cho chính mình trên hành trình
																																									cuộc đời.

																																									- Đầu tư vào SỰ NGHIỆP, không phải để lưu danh với đời, mà để sự tồn tại của bản thân có ý nghĩa, không trở thành gánh nặng của
																																									người khác.

																																									- Đầu tư vào GIA ĐÌNH, bất kể là gia đình từ khi chúng ta sinh ra, hay gia đình ta tự xây dựng sau này, bởi tình thân đẹp đẽ sẽ nuôi dưỡng ra một trái tim bao dung.

																																									- Đầu tư vào BẠN BÈ, bởi chúng ta là tổ hợp của 5 người bạn thân nhất. Đi với ong sẽ tìm thấy hoa. Đi với ruồi sẽ ra bãi rác.

																																									Có người trân trọng cuộc đời như xây một ngôi nhà kiên cố, chẳng ngại đào từng tấc đất thô, chọn từng viên gạch tốt, mồ hôi rơi xuống lúc cần lao để không phải đổi bằng nước mắt sau này hối hận.

																																									Có người qua loa với cuộc đời, tránh né khó khăn trong hiện tại, vì ngại khó sợ đau mà trú tạm dưới gốc cây, rồi có ngày sức tàn lực kiệt, giông bão ập tới lại phải chịu lạnh trong mưa gió.

																																									Thời gian sẽ mang tuổi trẻ đi rất mau, nhưng sẽ còn giữ lại rất lâu những gì tuổi trẻ chúng ta đã sống.

																																									“Đừng chết ở tuổi 25, nhưng đến 75 mới được đem chôn.”', 6, 3),

	('SKH0005', N'Như Mây Bình Thản, Như Nước Thong Dong', 'nmbtnntd.png', N'Akira Uenishi', 83000, 500, 2019, N'Tiếng Việt', 216 , N'Bìa Mềm', 220, N'Nhân sinh như chén nước, khi vơi lúc đầy. Con đường này vốn chưa bao giờ bằng phẳng, là đường cùng hay là thử thách, chỉ cách nhau bởi một suy nghĩ mà thôi.
																																									Không ít lần, ta tự ngước theo những đám mây trôi trên bầu trời xanh thăm thẳm và thầm ngưỡng mộ, ước ao rằng: Giá như cuộc đời cũng nhẹ nhàng, êm đềm như mây, bình thản bay ngang qua trời.
																																									Không ít lần, ta tự hỏi làm sao để như dòng nước chảy, vẫn tĩnh tại êm đềm, lại vừa có thể mạnh mẽ, bền bỉ.
																																									Không ít lần, ta luôn dằn vặt vì những điều đã trải qua, mơ hồ vì những điều chưa đến.
																																									Xin đừng chỉ nhìn rồi ngưỡng mộ mây trôi, ao ước như nước chảy, mà hãy học cách sống “Như mây bình thản, như nước thong dong”, ấy là:
																																									Cuộc đời này đâu cần đong đếm những tổn thương, bi ai hay khắc khoải. Nhân gian này, mỗi người đều có một con đường để lựa chọn, để đi. Trên từng bước chân qua đều là thử thách, hãy cứ bước chậm rãi, nhưng thật vững vàng.
																																									Có người vì phù phiếm mà đến bên ta, thì cũng sẽ có kẻ vì phù phiếm bỏ ta mà đi. Vì thế, nếu thấy nặng nề quá, hãy nhẹ lòng buông bỏ.
																																									Tranh giành thiệt hơn chỉ là cái mẽ bề ngoài. Hãy như dòng nước kia, không phân cao thấp, không chia trước sau, từ từ mà chảy, tĩnh tại mà trôi.
																																									Sắc mây thay đổi theo từng giờ. Cứ lựa đời mà sống, thiệt một chút nhưng không bon chen, mất một chút nhưng được thanh thản.
																																									Nếu không tự mình tìm được bình an từ bên trong, thì loài người này dù có đi thêm hàng thiên niên kỷ nữa, vẫn cứ trầm luân, vẫn cứ đau khổ. Khi ấy, “Thanh Thản” chỉ còn là một tính từ, một trạng thái trong cuốn từ điển mà thôi.
																																									Biển lớn trên trái đất này dù sao vẫn có kích thước giới hạn, vậy mà còn sức dung nạp được trăm nghìn dòng sông, vạn ngàn con suối, dòng thác. Huống hồ lòng người tuy bé nhỏ nhưng mênh mông vô cùng, hà cớ gì không thể bỏ qua những điều nhỏ nhặt, không bao dung, không khoan thai mà sống?!
																																									Đời này đâu cần phức tạp, chỉ cần sống như nước chảy, như mây kia, nhẹ nhàng đi hết một kiếp cười. Dù trong tay không còn gì, thì ta vẫn còn nụ cười hiền luôn ẩn giấu trong một trái tim bình lặng.', 6, 6),

	('SKH0006', N'Bài Học Vuông Tròn', 'bhvt.png', N'Tam Nguyệt Sở Ca', 82000, 500, 2021, N'Tiếng Việt', 248, N'Bìa Mềm', 250, N'BÀI HỌC VUÔNG TRÒN – BIẾT MÌNH ĐỂ TRANH, HIỂU ĐỜI ĐỂ THUẬN

																																				Bài Học Vuông Tròn - hạnh phúc của đời người, một nửa nên tranh, nửa kia nên thuận.

																																				Vuông - là cứng cỏi, kiên cường, quy tắc rõ ràng, lý trí đúng lúc

																																				Tròn - là mềm dẻo, khéo léo, thấu hiểu nhân sinh, có lòng trắc ẩn.

																																				Con người, sống “vuông” quá, duy lý quá thì dễ bị cái tôi và khuôn mẫu cứng nhắc tự giới hạn bản thân, còn để góc cạnh sắc nhọn của mình làm tổn thương người khác. Sống “tròn“ quá lại dễ bị cảm xúc đánh lừa lý trí, mặc người điều khiển.

																																				Trên đời không có lối sống nào làm mẫu số chung cho tất cả, chỉ có cách mỗi người tự lựa chọn con đường của mình ra sao, dung hợp vuông - tròn thế nào, để tranh đúng thứ cho mình mà không ngáng đường người khác, thuận theo tự nhiên mà không phó mặc số phận.

																																				“Bài học vuông tròn - Biết mình để tranh, hiểu đời để thuận” là tập hợp những bài học về lối cư xử khéo léo, vuông - tròn hòa hợp, để bạn biết tiến lui đúng lúc, hài lòng với bản thân mà không gây thù oán với thế giới.

																																				Cuộc sống là sự tổng hòa của những thời khắc tươi đẹp và đen tối. Nhưng trên đời không có sự phân biệt ɾõ ɾàng giữa bi kịch và hỉ kịch, nḗᴜ bạn có thể bước ɾa từ bi kịch, đó là hỉ kịch. Nḗᴜ bạn chìm đắm mãi tɾong hỉ kịch, đó là bi kịch.

																																				Trời tròn đất vuông, mong bạn thong dong giữa đôi dòng thuận nghịch.

																																				Mong cho tâm hồn bạn ôn hòa, nhưng không bao giờ thỏa hiệp.

																																				Mong bạn không mơ mộng hão huyền nhưng lòng luôn hướng về phương xa.

																																				Mong bạn luôn có mục tiêu để theo đuổi, sống tốt mỗi ngày và luôn làm hết sức mình.

																																				Mong bạn giữ được tâm lương thiện nhưng không đánh mất nguyên tắc của bản thân.

																																				Mong bạn dù có thể hiện tài năng cũng không quên khiêm tốn.', 6, 6),

	('SKH0007', N'Ngày tâm ta an, sóng gió sẽ tan', 'nttasgst.png', N'Lý Lê, Thẩm Gia Kha', 98000, 500, 2018, N'Tiếng Việt', 288 , N'Bìa Mềm', 290, N'PHIỀN NÃO trong đời được gói gọn trong 12 chữ:

																																									“BUÔNG KHÔNG NỠ, NGHĨ KHÔNG THÔNG, NHÌN KHÔNG THẤU, QUÊN KHÔNG N­ỔI! “

																																									Bởi vậy mà, biết bao sóng gió ngày ngày vẫn kéo đến bên ta. Chúng ta thường nhìn vào kẻ khác để so sánh, để dao động, để hơn thua, cũng có nghĩa ta đã tự đặt mình vào một cuộc đua khốc liệt.

																																									Có mệt mỏi không? Ừ Có!

																																									Khi đã mệt mỏi, đi qua những nông sâu chốn hồng trần, ta chỉ mong mỗi sớm thức giấc thấy lòng xanh như lá, bỏ lại những phù phiếm xa hoa, đón lấy niềm an lạc.

																																									Liệu ta có làm được không? Khó đấy, vì ta khao khát muốn được bình yên mà không nhận ra rằng: Ngày tâm ta an, sóng gió sẽ tan. Ta không thể đòi hỏi sự tự do từ bên ngoài trong khi thâm tâm chưa tự tại. Chỉ khi BUÔNG ĐƯỢC, NGHĨ THÔNG, NHÌN THẤU, QUÊN NỔI, ta mới thấy tâm mình bình an. Những trang sách bảo ta rằng:

																																									Cuộc đời này, như một đám mây, mỗi kẻ nhìn vào mà hình dung một hình dáng cho mình.
																																									Cuộc đời này, như một câu hỏi mở, mỗi kẻ đều có đáp án của riêng mình.
																																									Cuộc đời này, như một tách trà, mỗi kẻ sẽ có cách thưởng thức riêng.
																																									Cuộc sống chính là sự thảnh thơi, vui vẻ. Thay vì gồng mình lên cố gắng, hãy để mọi chuyện trở nên tự nhiên, thong dong. Nếu quá mệt mỏi, hãy ngồi xuống, thưởng một ngụm trà, ngắm một nhành hoa, an yên sống. Nếu lòng người quá rộng như hư không, thì hãy để tâm ta lắng lại.

																																									Cuốn sách chữa lành bán chạy nhất Trung Quốc năm 2017 nay đã được ra mắt bạn đọc Việt với tên gọi “Ngày tâm ta an, sóng gió sẽ tan”. Hy vọng cuốn sách là người đồng hành thân thiết với bạn trên hành trình đạt đến sự an vui từ nội tâm. Để ai có duyên đọc nó sẽ nhẹ nhàng đi qua nỗi mênh mông của kiếp người.', 6, 3),

	('SKH0008', N'Bình tĩnh sống', 'bts.png', N'TS Patrizia Collard', 66000, 500, 2020, N'Tiếng Việt', 136, N'Bìa Mềm', 150, N'BÌNH TĨNH KHÔNG PHẢI CHẬM CHẠP, ĐÓ LÀ SỰ CẨN TRỌNG

																																			Khi đèn đỏ chưa chuyển sang xanh mà người đằng sau đã bấm còi inh ỏi. Bình tĩnh!

																																			Khi đám đông đổ xô đi tích trữ đồ ăn mùa dịch. Bình tĩnh!

																																			Khi tất cả mọi người nói bạn sai rồi. Bình tĩnh!

																																			Bình tĩnh không phải là chậm chạp, mà đó là sự cẩn trọng dành cho bản thân và cuộc đời.

																																			Môi trường đông đúc, náo động luôn luôn lôi kéo những tâm thức chưa được tôi rèn. Ta trở nên vội vã, tham lam, dễ nóng giận, dễ đánh mất bản thân từ lúc nào mà không hay biết.

																																			“BÌNH TĨNH SỐNG” – cuốn sách nhỏ hướng tới lối sống CALM sẽ giúp bạn gieo trồng lại bình yên trên chính khu vườn tâm thức của mình. CALM là gì:

																																			Clean (Dọn dẹp): dọn sạch những “cỏ dại” tham lam, những “hạt sạn” sân si trong tâm trí.

																																			Appreciation (Trân trọng): gây dựng mảnh đất từ tình yêu thương bản thân và lòng biết ơn cuộc sống.

																																			Learning (Học hỏi): chăm chút cho những hạt mầm bình an bằng tri thức, chân lý và cảm xúc tích cực.

																																			Mindfulness (Chánh niệm): nuôi dưỡng bình an bằng luyện tập chánh niệm - sống trong hiện thực.

																																			Khi luyện tập CALM, bạn chế ngự được những ham muốn và cảm xúc tiêu cực, tự tạo ra một khoảng bình an ở trong tâm. Nơi đó không có toan tính và nỗi sợ hãi, không có so sánh và tị hiềm. Chúng ta không bị áp lực phải ganh đua và làm việc không ngừng nghỉ.

																																			Chúng ta sẽ hiểu rõ hơn năng lực và giá trị thực của bản thân, để từ đó có thể phát huy tốt nhất khả năng của mình. Quan trọng nhất là chúng ta sẽ bắt đầu được chữa lành, theo đó là cảm nhận được niềm hạnh phúc và bình an sâu thẳm.

																																			Giữ được bình tĩnh trong bối cảnh hoảng loạn là bản lĩnh thực thụ, là lối thoát, là sáng suốt. Nếu bạn dễ dàng bị cảm xúc chi phối theo cách tiêu cực, đã đến lúc bạn luyện tập CALM – Bình Tĩnh Sống.

																																			Bình tĩnh không chỉ tạo nên khí chất đặc biệt, mà còn là một kỹ năng sống còn quan trọng trong thế giới hiện nay.

																																			KEEP CALM!', 6, 3),

	('SKH0009', N'Không Sợ Đêm Đen Bởi Trong Lòng Có Ánh Sáng', 'ksddbtlcas.png', N'Mễ Tô', 98000, 500, 2020, N'Tiếng Việt', 288, N'Bìa Mềm', 284, N'“Trong bất cứ hoàn cảnh nào, chúng ta đều có một quyền tự do sau cuối, đó là quyết định thái độ của bản thân.”  
 
																																									Đứng trước nỗi thất vọng: Có người khóc òa đau đớn, có người học được cách thôi đặt kỳ vọng vào người khác.
 
																																									Đứng trước những mất mát: Có người mãi than vãn về những bất hạnh đó, có người lại thấy mình vẫn còn may mắn vì nhận ra giá trị của những gì mình đang có.
 

																																									Đứng trước gian nan: Có người chùn bước hoặc loay hoay tìm lối thoát, có người dấn bước với tất cả ý chí, sức mạnh và dũng cảm đương đầu mọi thử thách.
 
																																									Đứng trước thất bại: Có người suy sụp muốn buông xuôi, có người vượt lên, vững vàng bước tiếp con đường của mình với một bài học quý giá thêm vào hành trang trải nghiệm cuộc sống.
 
																																									“Không sợ đêm đen bởi trong lòng có ánh sáng” - một cuốn sách, một tâm niệm dành tặng cho tất cả những ai đang đặt những bước chân đầu tiên trên con đường tự lập, để mỗi chúng ta hiểu rằng:

																																									Có ánh sáng của lòng từ bi sẽ không sợ những đoạn đường đời đầy cám dỗ.
																																									Có ánh sáng của trí tuệ sẽ không sợ lạc vào ngõ cụt bế tắc phương hướng
																																									Có ánh sáng của sự kiên trì sẽ không sợ đi mãi mà không đợi được bình minh.
																																									Chúng ta giống như những bức tường, có va vấp với bão giông cuộc đời, có những khe nứt, nhưng đó cũng là nơi ánh sáng chiếu vào. 
 
																																									Đến sau cùng, chúng ta vẫn là người quyết định và làm chủ cuộc đời mình.
 
																																									Hoặc hờ hững khuất phục, làm khán giả và cảm nhận cuộc đời mình qua định nghĩa, qua cách nhìn của người khác.
 
																																									Hoặc hăng hái nhập cuộc và hiểu rõ hơn cuộc sống qua những trải nghiệm của bản thân.', 6, 3),

	('SKH0010', N'Triết Lý Từ Những Điều Tầm Thường', 'tltndtt.png', N'Rani Shah, Gemma Corell', 92000, 500, 2021, N'Tiếng Việt', 168, N'Bìa Mềm', 200, N'Trong thế giới bận rộn ngày nay, đặc biệt là trong giai đoạn có nhiều biến cố này, việc chăm sóc sức khỏe tinh thần nên được coi trọng tương tự như việc có đủ thực phẩm thiết yếu.

																																										Thay vì tích trữ quá nhiều thực phẩm ăn liền và nghe ngóng tin tức liên tục chúng ta nên học cách “đi vào bên trong“ để khởi tạo sự bình an vững chãi.

																																										Và chúng ta có thể học những cách thức sinh tồn và chăm sóc bản thân từ những loài cây và động vật xung quanh. 
 
																																										Triết Lý Từ Những Điều Tầm Thường - được Forbes bình chọn là một trong 21 cuốn sách đáng đọc nhất năm 2021, chứa đựng những bài học thú vị nhất từ thế giới tự nhiên, giúp chúng ta bắt đầu thói quen chăm sóc bản thân thật đơn giản. 
 
																																										Tác giả, cựu sinh viên ngành sinh vật học Rani Shah, kết hợp cùng họa sĩ Gemma Correll, đã chọn lọc những kiến thức thú vị nhất về bản năng sinh tồn và hành vi của loài lười, tôm, chuồn chuồn, hoa hướng dương, và nhiều sinh vật khác trong tự nhiên, liên hệ thành những bài học quan trọng cho loài người. 

																																										Những bông hoa hướng dương nói với bạn: “Hãy luôn hướng về phía mặt trời”
																																										Những chú sứa dạy bạn: “Hãy học cách thư giãn và thả mình theo dòng chảy”
																																										Những chú khỉ bảo rằng: “Luôn tò mò và học hỏi. Chắc chắn sẽ có những sai lầm. Nhưng thay vì để sai lầm giới hạn bạn, hãy cho phép chúng dạy bạn trưởng thành.”
 
																																										Cuốn sách này sẽ là món quà ý nghĩa cho tất cả những người lớn muốn chữa lành đứa trẻ bên trong mình, và tất cả những trẻ em muốn tìm hiểu và sống hòa hợp trong một hành tinh xinh đẹp.', 6, 3),

	('SKH0011', N'Raw Vegan - Sức mạnh chữa lành của thực vật', 'rvsmclctv.png', N'Norman W Walker', 92000, 500, 2020, N'Tiếng Việt', 224, N'Bìa Mềm', 250, N'Thứ đắng nhất không phải là thuốc, mà là sự hối hận khi nhận ra đã quá muộn để thay đổi lối sống.

																																											Thứ đắt nhất không phải là tiền bạc, mà là thời gian tự do bạn phải đánh đổi để chống đỡ bệnh tật.

																																											Nhìn vào tỷ lệ người mắc ung thư mỗi năm, nhất là độ tuổi ngày càng trẻ hóa, nhất là khi đó là một người quen, người thân của bạn, bạn có giật mình không?

																																											Nhìn chính mình mỗi ngày đều thiếu sức sống, chỉ đủ sức chống chọi bệnh tật và những cảm xúc thất thường, không thể tập trung để làm việc, sáng tạo, cống hiến, bạn có thấy mình đang “sống mòn”?

																																											Thứ bạn nên thay đổi không phải là loại thuốc đắt hơn, bệnh viện tốt hơn, mà chính là LỐI SỐNG của bạn, bắt đầu từ việc ăn uống và sinh hoạt. Bởi “bạn là những gì bạn ăn, mỗi thực phẩm có một tần số riêng, và chỉ những thực phẩm mang tần số cao, giàu “năng lượng sống“ mới có thể nuôi dưỡng và nâng cấp cơ thể cũng như tâm trí bạn.

																																											“Raw vegan - sức mạnh chữa lành của thực vật” - công trình nghiên cứu công phu và đầy đủ nhất của TS. Norman W. Walker về chế độ ăn thuần thực vật và lối sống khoa học, là cuốn sách mà mỗi gia đình nên đặt trong tủ sách sức khỏe và căn bếp của mình để nhắc nhở mỗi người:

																																											Nhận ra những lợi ích quan trọng của chế độ ăn uống thuần thực vật trong việc chữa bệnh và hình thành một lối sống mới đơn giản, lành mạnh và vui khỏe mỗi ngày.
																																											“Giật mình” trước những thực phẩm độc hại mà chúng ta đang tiêu thụ và loại bỏ chúng từ dần dần đến vĩnh viễn khỏi thực đơn.
																																											Hiểu được cơ chế hoạt động của các tế bào, tuyến và nội tạng trong cơ thể, từ đó thiết lập lối sinh hoạt đúng nguyên lý cân bằng và thuận tự nhiên.
																																											Quan tâm đến sức khỏe tinh thần, hình thành tư duy sống trẻ,, bởi trạng thái tâm trí quyết định thể trạng của mỗi con người
																																											Tự kiểm chứng những kiến thức về sức khỏe, tự xây dựng thói quen kỷ luật và chịu trách nhiệm với chính mình.
																																											Bạn là người quyết định rằng bạn không chỉ "ổn", mà thực sự khỏe mạnh yêu đời, bạn không chỉ "tồn tại", mà đang sống trọn từng phút giây.', 6, 6),

	('SKH0012', N'Soi Mình Trong Thế Giới Muôn Hình', 'smttgmh.png', N'Tiên Alien', 92000, 500, 2021, N'Tiếng Việt', 264, N'Bìa Mềm', 300, N'Dành cho những ai đang ở giai đoạn chênh vênh

																																							Dành cho những ai đang chững lại

																																							Dành cho những ai mỗi ngày bất an vì cảm thấy mình không có gì

																																							Chúng ta dường như luôn quẩn quanh đi tìm một mục đích sống, một ý nghĩa cuộc đời, mà không nhận ra đằng sau ấy là một nỗi sợ.

																																							Sợ thua kém người khác.

																																							Sợ nghèo đói, sợ cô đơn, sợ cơ cực.

																																							Có hai cách để giải quyết nỗi sợ, một là mượn những vật ngoài thân để xua đi cảm giác bất an, đây là cách mà các khóa học làm giàu nhanh, mỹ phẩm hiệu quả sau-một-đêm, nghi lễ cầu phúc giải nghiệp… lấy tiền từ bạn.

																																							Hai là dùng sức mạnh nội tâm của mình để hóa giải. Đây là cách mà chúng ta thực hành bài học cuộc đời.

																																							“Soi mình trong thế giới muôn hình” là cuốn sách cùng bạn hóa giải những mâu thuẫn trong lòng, hòa giải cùng thế giới bên ngoài.

																																							Giác ngộ hay tỉnh thức không phải là học thêm một khóa học, đọc thêm một cuốn sách, có thêm một người thầy, tập thêm một kỹ thuật… mà là gỡ bỏ mọi dính mắc với bên ngoài.

																																							Món ăn ngon hay không ngon, bạn cũng thưởng thức. Người ta có tử tế với bạn hay không, bạn vẫn tử tế và yêu thương bản thân.

																																							Đừng quên soi mình mỗi ngày:

																																							"Nhìn lại phía sau để rút ra bài học

																																							Nhìn về phía trước để thấy hy vọng

																																							Nhìn xung quanh để sống cùng thực tại

																																							Và nhìn vào bên trong để tìm thấy chính mình".', 6, 6),

	('SKH0013', N'Bạn Chỉ Cần Sống Tốt, Trời Xanh Tự An Bài', 'bccsttxtab.png', N'Kotoha Yao', 115000, 500, 2018, N'Tiếng Việt', 200, N'Bìa Mềm', 220, N'Chẳng phải có ai đó đã từng nói rằng: Trên đời này, ta thường quên mất việc của bản thân, thích xen vào việc của người khác và lo lắng chuyện của ông trời. Vậy thì muốn vui vẻ, chỉ cần để tâm đến việc của mình, đừng xen vào việc của người khác và hãy để trời xanh tự an bài.

																																									Làm người, nên hiểu mệnh, đừng xem mệnh. Mệnh ở đây chính là những điều ta đã gieo trong quá khứ, việc đang làm trong hiện tại và tất cả sẽ ảnh hưởng đến tương lai. Hiểu mình là ai, đang đứng ở vị trí nào, cần sống và cư xử ra sao để trước hết thấy bản thân tự tại, trung dung. Thế giới của người khác, vận của trời, nếu không bước vào được thì đừng cố chen vào, làm khó người khó mình. Hà tất phải như vậy?

																																									"Bạn chỉ cần sống tốt, trời xanh tự an bài” sẽ kéo ta về với chân mệnh của mỗi người, rồi khi gấp lại cuốn sách, ta nhận ra rằng:

																																									Đừng bao giờ gắn chặt đời mình với người khác. Ai là chân chính, ai là sắt son. Không ai là của ai cả, đừng vơ mọi chuyện vào mình.
																																									Ai rồi cũng quay trở về với cát bụi. Cớ sao lại không cho mình cơ hội trân trọng thế giới này, tự sống một đời vui vẻ.
																																									Chỉ có ta mới tự ngắt kết nối với Trái Đất, bịt đôi tai, nhắm đôi mắt để không thấy thế giới xung quanh. Chứ thực ra, Trái Đất vẫn bao dung và đợi chờ ta.
																																									Thời điểm ta bất an nhất chính là khoảnh khắc dễ bị lay động nhất. Nếu như thân thể cần ăn thì thâm tâm cũng cần được nuôi dưỡng từ những điều dung dị, tĩnh lặng.
																																									Vạn vật trên thế gian này đều xoay chuyển theo quy luật tự nhiên. Nếu phạm vào luật tự nhiên, dù ta biết hay không, cũng coi là phạm luật. Thời gian tuần tự bốn mùa, con người có sinh có tử, ắt vạn vật có sinh sôi, có héo tàn. Vậy thì, ở đời, chỉ cần chầm chậm sống, xuôi theo như dòng nước. Không phân cao thấp, không chia trước sau. Từ từ mà chảy, tĩnh tại mà trôi. Còn mọi chuyện, hãy để trời xanh tự an bài.', 6, 6),

	('SKH0014', N'Tôi Không Thích Ồn Ào (Tái Bản 2021)', 'tktoa.png', N'Ashley Davis Bush', 75000, 500, 2021, N'Tiếng Việt', 136, N'Bìa Mềm', 150, N'NHỮNG THỨ GIÁ TRỊ THÌ KHÔNG ỒN ÀO

																																									Đại bàng một mình bay lượn trên những tầng mây, lũ gà thì kêu quang quác dưới mặt đất.
																																									Những tờ tiền giấy nhẹ bẫng nhưng mua được nhiều thứ hơn đống tiền xu leng keng.
																																									Những người giản dị và khiêm tốn tạo ra nhiều giá trị xã hội hơn những kẻ ba hoa.

																																									Ồn ào là âm thanh của cuộc sống hiện đại tôn sùng vật chất và hư danh. Sống giữa ồn ào, con người khó mà tĩnh lặng. Khi tâm trí xao động, hỗn loạn, con người sẽ dễ dàng nổi nóng, đưa ra những quyết định sai lầm, dễ sinh bệnh tật, tự tổn thương chính mình.

																																									Vậy thì, hãy tự cho bản thân những giây phút lặng yên để:
																																									Hít sâu và thở chậm - để cảm nhận sự hiện diện của thực tại, để không lạc lối vì mải chạy theo những điều phù phiếm.
																																									Đọc thật chậm và chiêm nghiệm những câu chữ đẹp đẽ - để có tư duy sâu sắc và sự đồng cảm đáng quý hơn khi chỉ đọc qua loa vài dòng status trên mạng.
																																									Ôm lấy cơ thể và lắng nghe trái tim mình - để thấu hiểu và yêu thương bản thân nhiều hơn, để không bỏ mặc chính mình vì không biết “tôi là ai”.

																																									Bởi vì:
																																									Yên lặng là cách để chúng ta đi vào những điều sâu thẳm.
																																									Tối giản là cách để chúng ta sống trọn vẹn nhất.

																																									Từ hôm nay, vẫn với 24 giờ đó, hãy dành thời gian quý giá luyện tập câu thần chú “Tôi không thích ồn ào” - để trở thành một phiên bản an tĩnh hơn, giá trị hơn.', 6, 3),

	('SKH0015', N'Nóng Giận Là Bản Năng, Tĩnh Lặng Là Bản Lĩnh', 'nglbntllbl.png', N'Tống Mặc', 89000, 500, 2020, N'Tiếng Việt', 264, N'Bìa Mềm', 300, N'Sai lầm lớn nhất của chúng ta là đem những tật xấu, những cảm xúc tiêu cực trút bỏ lên những người xung quanh, càng là người thân càng dễ gây thương tổn.

																																										Cái gì cũng nói toạc ra, cái gì cũng bộc lộ hết không phải là thẳng tính, mà là thiếu bản lĩnh. Suy cho cùng, tất cả những cảm xúc tiêu cực của con người đều là sự phẫn nộ dành cho bất lực của bản thân. Nếu bạn đúng, bạn không cần phải nổi giận. Nếu bạn sai, bạn không có tư cách nổi giận.

																																										Đem một nắm muối bỏ vào cốc nước, cốc nước trở nên mặn chát. Đem một nắm muối bỏ vào hồ nước, hồ nước vẫn ngọt lành. Lòng người cũng vậy, càng nông cạn càng dễ biến chất, càng sâu sắc càng khó lung lay. Ý nghĩa của đời người không ngoài việc tu tâm dưỡng tính, để mở lòng ra bao la như biển hồ, trước những nắm muối thị phi của cuộc đời vẫn thản nhiên không xao động.

																																										“Nóng giận là bản năng, tĩnh lặng là bản lĩnh” là từ bỏ “tam độc”, tu dưỡng một trái tim trong sáng:

																																										Từ bỏ “tham” – bớt một phần ham muốn, thêm một phần tự do.
																																										Từ bỏ “sân” – bớt một phần tranh chấp, thêm một phần ung dung.
																																										Từ bỏ “si” – bớt một phần mê muội, thêm một phần tĩnh tâm.
																																										Cuốn sách là tập hợp những bài học, lời tâm sự về nhân sinh, luận về cuộc đời của đại sư Hoằng Nhất – vị tài tử buông mọi trần tục để quy y cửa Phật, người được mệnh danh tinh thông kim cổ và cũng có tầm ảnh hưởng lớn trong Phật giáo.

																																										Trưởng thành, hãy để lòng rộng mở, tiến gần đến chữ “Người”, học được cách bao dung, học được cách khống chế cảm xúc. Đừng để những xúc động nhất thời như ngọn lửa, tưởng thiêu rụi được kẻ thù mà thực ra lại làm bỏng tay ta trước.', 6, 6)


--insert TusachQuyco
insert into Books(bookID, bookName, bookImage, author, price, quantity, publishingYear, [language], numberPage, form, [weight], bookDescribe, cid, pcid)
values
	('SKW0001', N'Thượng Đế Giấu Đàn Ông Tốt Đâu Cả Rồi?', 'tdgdotdcr.png', N'Dương Băng Dương', 109000, 500, 2020, N'Tiếng Việt', 352 , N'Bìa Mềm', 360, N'Khi thượng đế ban phát lòng chung thuỷ phần lớn đàn ông che ô rồi phải không?

																																									Phụ nữ cho dù tài giỏi, xuất sắc đến đâu cũng chưa chắc đã tránh khỏi vấp ngã trong tình yêu, hôn nhân. Điều khiến chúng ta càng bất ngờ hơn là rất nhiều anh chồng có vợ giỏi giang, xinh đẹp vẫn đi cặp bồ với những cô gái thua kém vợ mình về mọi mặt. Không phải “Tuesday" hay “Trà Xanh" ngày nay quá nguy hiểm mà thời nào cũng không thiếu những gã đàn ông tồi!

																																									Cuốn sách “Thượng đế giấu đàn ông tốt đâu cả rồi?” sẽ giúp bạn hiểu được:

																																									• Tâm sinh lý hai giới khác nhau như thế nào?

																																									• Vì sao đàn ông lại hay ngoại tình?

																																									• Bạn cần biết những gì để nhận diện những gã đàn ông tồi đó.

																																									Nếu như bạn vẫn đang loay hoay chưa tìm được người bạn đời lý tưởng thì hãy xem những chỉ dẫn trong cuốn sách “Thượng đế giấu đàn ông tốt đâu cả rồi?” để trở thành một cô gái “trong mơ của phái mạnh” và lựa chọn được người đàn ông như ý nhé. Bạn sẽ trở nên tuyệt vời và hạnh phúc!', 7, 5),

	('SKW0002', N'Nhạy Cảm Trong Tình Yêu - Thăng Hoa Hay Bi Kịch?', 'ncttythhbk.png', N'Elaine N Aron, Phd', 119000, 500, 2020, N'Tiếng Việt', 368, N'Bìa Mềm', 400, N'“Sao cứ phải làm quá lên thế?" Nhạy cảm trong tình yêu, mệt lắm có phải không?

																																												- Chỉ một cái nhíu mày của đối phương đã liền lo lắng, không biết mình có làm gì sai khiến người ta phiền lòng không.

																																												- Một ngày không thấy tin nhắn đã thấy bất an, trong đầu vẽ ra bao nhiêu kịch bản.

																																												- Giỏi nắm bắt cảm xúc của người khác nhưng lại không giỏi kiểm soát cảm xúc của chính mì

																																												Người khác không hiểu được, cứ nghĩ rằng bạn đang làm quá lên!

																																												Nhưng người nhạy cảm sinh ra vốn đã có sự quan sát tỉ mỉ, nhìn nhận sâu sắc và những xúc cảm tinh tế, mãnh liệt hơn người khác: dễ vui, dễ buồn, dễ đồng cảm và cần những khoảng thời gian một mình, để chìm đắm vào thế giới nội tâm phong phú của riêng. Vậy thì nhạy cảm trong tình yêu, thăng hoa hay bi kịch?

																																												Hệ thần kinh đặc biệt nhạy cảm sở hữu nhiều lợi thế để có được một mối quan hệ lãng mạn và hạnh phúc. Người nhạy cảm sẽ là một người tình tuyệt vời, luôn ngọt ngào và biết quan tâm nửa kia. Nhưng chỉ trong trường hợp hai người thấu hiểu nhau và hiểu chính bản thân mình. Nếu không, sự nhạy cảm lại là lưỡi dao khiến cả hai đau khổ và tổn thương.

																																												Cuốn sách “Nhạy cảm trong tình yêu - thăng hoa hay bi kịch?":

																																												- Như một tiếng chuông ngân, đánh thức những “đặc quyền” của các tế bào nhạy cảm bên trong bạn.

																																												- Như kim chỉ nam để cải thiện những mối quan hệ của người nhạy cảm, giúp bạn thoả mãn và hoà hợp hơn khi chung sống cùng những người không nhạy cảm (chiếm khoảng 80% dân số thế giới).

																																												- Như một người bạn đầy thấu hiểu và sẻ chia, để nói với người nhạy cảm rằng: “Bạn không cô đơn đâu và bạn cũng không hề bất thường!”

																																												Cuốn sách là những đúc kết nghiên cứu suốt nhiều năm của tiến sĩ tâm lý học ELAINE N. ARON - tác giả của những cuốn sách INTERNATIONAL BESTSELLER như Highly Sensitive Person, được xuất bản ở Việt Nam với tên: “Người nhạy cảm - Món quà hay lời nguyền?”.

																																												“Nhạy cảm trong tình yêu - thăng hoa hay bi kịch?” với tên gốc là Highly Sensitive Person In Love cũng đã được tiêu thụ hàng triệu bản trên toàn thế giới và mang về những giải thưởng danh giá, những thành tựu vang dội cho tác giả.

																																												Đây cũng sẽ là cuốn sách kỹ năng tâm lý đầu tiên thấu hiểu những trái tim nhạy cảm!', 7, 5),

	('SKW0003', N'Lựa Chọn Nào Cũng Cần Dũng Khí', 'lcnccdk.png', N'Thải Vi', 89000, 500, 2020, N'Tiếng Việt', 272, N'Bìa Mềm', 280, N'Muốn việc nhẹ thì phải từ bỏ lương cao.

																																				Muốn đứng ở vị trí cao thì phải từ bỏ thói vô kỷ luật.

																																				Muốn chọn hôn nhân khi còn trẻ thì phải từ bỏ niềm vui vị kỷ.
																																				Là phụ nữ, càng khó đưa ra quyết định cho cuộc đời mình, phần vì bên ngoài còn quá nhiều định kiến, phần vì bản thân người phụ nữ vốn duy tình, nhiều quyết định đáng ra nên làm rõ bằng lý trí thì lại nghe theo “trái tim” mách bảo.

																																				Thế nhưng đời người có hạn, việc đáng tiếc nhất là chần chừ không dứt khoát, vừa không sòng phẳng cắt đứt đi quá khứ vừa không chịu cho tương lai cơ hội, vừa tự làm khổ bản thân vừa ảnh hưởng đến cuộc đời người khác. Nếu không có khả năng quyết đoán đúng - sai, thì ít nhất cũng cần dũng khí dấn thân, dám làm dám chịu.

																																				Nếu bạn đã từng hoang mang trước những ngã rẽ, thì cuốn sách “Lựa chọn nào cũng cần dũng khí" sẽ giúp bạn:
																																				Thấu hiểu bản thân để đưa ra những lựa chọn tối ưu nhất.

																																				Nuôi dưỡng sự mạnh mẽ để đối mặt với những gì mình đã chọn.

																																				Rèn luyện bản lĩnh để luôn sẵn sàng trước mọi lựa chọn: tiếp tục hay từ bỏ, đương đầu hay chấp nhận,

																																				Không quên hoàn thiện bản thân trở nên ưu tú, để có khả năng lựa chọn những gì mình mong muốn.

																																				“Lựa chọn nào cũng cần dũng khí” chính là tấm gương phản chiếu những cô gái hay phân vân, thiếu quyết đoán. Bạn không chỉ bắt gặp hình ảnh bản thân trong những câu chuyện về tình yêu, hôn nhân, sự nghiệp… mà còn hiểu được nguồn cơn và thấy trước được hậu quả của mỗi hành động thiếu lý trí.

																																				Đừng để cuộc đời mình ngập lụt trong sự do dự hay tiếc nuối. Dũng cảm lên!', 7, 5),

	('SKW0004', N'Sống Bản Lĩnh Theo Cách Một Quý Cô - All The Rules (Tái Bản 2020)', 'sbltcmqc.png', N'Ellen Fein, Sherrie Schneider', 96000, 500, 2020, N'Tiếng Việt', 320, N'Bìa Mềm', 350, N'Lồng ngực trái của người đàn ông không phải là nơi an toàn nhất, mà là nơi dễ thay đổi nhất. Cho nên, phụ nữ chỉ có thể dựa vào chính mình.

																																																			Ngay từ khi còn nhỏ, những bé gái thường được nuôi dạy theo một khuôn mẫu nếu không Công, Dung, Ngôn, Hạnh; thì cũng đến tuổi phải nghĩ đến chuyện lập gia đình với hàng tá những hệ quả của việc “ổn định” kéo theo. Đến tuổi trưởng thành, không ít cô gái mơ mộng về những anh chàng Mr Right sẽ mang lại cho mình một cuộc sống vừa đủ đầy, vừa lãng mạn.

																																																			Hãy ngưng ảo tưởng!!!

																																																			· Bạn không thể có được hạnh phúc nếu chính bản thân mình còn phụ thuộc hạnh phúc vào người người khác.

																																																			· Bạn không thể tìm được Mr Right nếu bạn không tự hoàn thiện bản thân.

																																																			· Và sẽ chẳng có ai yêu bạn nếu bạn không tự yêu chính mình.

																																																			All the Rules – Bộ sách nổi đình đám trên toàn thế giới với số lượng phát hành lên tới HÀNG TRIỆU bản đã giúp các cô nàng tìm được hướng đi của cuộc đời mình. Các nàng sẽ nhận ra rằng:

																																																			· Tự lập và biết phớt lờ những mối quan hệ khiến bạn mất thời gian để rồi không đi đến đâu cả.

																																																			· Tự trọng và tự tôn chính là chìa khóa hấp dẫn đấng mày râu, cũng là một cách sống đầy khí chất.

																																																			· Luôn luôn có những cách để bạn cân bằng với những mối quan hệ xung quanh, ở tất cả mọi trường hợp. Nếu bạn chưa biết, đó là do bạn chưa đọc All the Rules – Sống bản lĩnh theo cách một quý cô mà thôi.

																																																			Chẳng có bất kỳ một cô gái nào muốn mình tự ti, luôn vướng vào những mối quan hệ khiến mình phải day dứt, đau khổ cả. Vậy thì hãy đứng dậy và ngẩng cao đầu. Chỉ cần phía trên còn ánh mặt trời, bạn vẫn còn có cơ hội tỏa sáng.', 7, 3),

	('SKW0005', N'Bắt Mạch Những Kẻ Sợ Yêu', 'bmnksy.png', N'Tamsen Firestone, Robert W Firestone PhD, Leslie S Greenberg PhD', 89000, 500, 2020, N'Tiếng Việt', 296, N'Bìa Mềm', 300, N'Khi chúng ta cô đơn, cơ thể sẽ tiết ra cortisol làm suy giảm hệ miễn dịch. Vậy nên việc thiếu vắng tình yêu sẽ làm cằn cỗi cả tâm hồn và sức khoẻ của bạn, khiến bạn dễ mắc bệnh hơn. Bạn có đang né tránh bước vào một mối quan hệ gắn bó? Nếu thấy quen thuộc với những đặc điểm sau đây thì hãy tới phòng khám “Bắt mạch những kẻ sợ yêu" ngay nhé!
																																																	Bạn đã độc thân khá lâu hoặc luôn gặp thất bại trong chuyện tình cảm.
																																																	Bạn rất khó tin tưởng và chia sẻ với người khác. Khi người ấy bày tỏ mong muốn được hiểu sâu hơn về bạn, bạn thường tìm cách lảng tránh. Bạn không muốn ràng buộc với người mình yêu và luôn chuẩn bị cho mình một đường lui.
																																																	Bạn phân vân khá nhiều trong tình yêu và thường tự hỏi lựa chọn của mình là đúng hay sai.
																																																	Bạn thấy xa lạ và ngại ngùng với những cử chỉ âu yếm, yêu thương.
																																																	Sự bất cần và bí ẩn của bạn là nét thu hút trong giai đoạn đầu của mối quan hệ, nhưng càng về sau, tính cách này gây ra sự mệt mỏi và kém nồng nhiệt.
																																																	Mỗi chúng ta đều mang một nỗi sợ hãi: sợ bị tổn thương. Nếu ai đó biết về ta quá rõ, họ có thể làm ta đau. Vậy nên những kẻ sợ yêu thường mặc những “chiếc áo giáp" để che chắn bản thân mình. Làm sao tình yêu có thể chạm vào trái tim bạn nếu bạn cứ cố tình che chắn như vậy?
																																																	“Bắt mạch những kẻ sợ yêu" sẽ giúp bạn cởi bỏ chiếc áo giáp phòng thủ ấy.
																																																	Ai cũng đều có khả năng bị phản bội trong tình yêu. Đó là câu chuyện của tương lai, không ai biết trước được. Vậy tại sao bạn cứ phải lo lắng về điều chưa xảy ra?
																																																	Dù bạn từng đau khổ tới mức nào thì những năm tháng đã qua đều ở lại trong quá khứ. Thế nên khi tình yêu đến thêm lần nữa, đừng sợ hãi!
																																																	Mạnh dạn bộc lộ nhu cầu của bản thân và sự không hoàn hảo của mình. Bạn sẽ được yêu bởi chính con người bạn mà không cần bất kỳ một “mánh khoé" nào.
																																																	“Bắt mạch những kẻ sợ yêu" - Cuốn sách giúp tình yêu chạm vào từng tế bào của bạn.', 7, 6),

	('SKW0006', N'Men Chase Women Choose - Chuyện Tình Yêu Bạn Biết Được Bao Nhiêu?', 'ctybbdbn.png', N'ThS Dawn Maslar', 109000, 500, 2021, N'Tiếng Việt', 288, N'Bìa Mềm', 300, N'ĐÀN ÔNG THEO ĐUỔI, PHỤ NỮ LỰA CHỌN - ĐỪNG NHẦM VAI!

																																															"Làm sao để người ấy chết mê chết mệt tôi?

																																															Làm sao để người ấy không thể dứt bỏ tôi được?"

																																															Khi bạn hiểu được cách mà tình yêu vận hành dưới góc độ khoa học - Men chase women choose, bạn sẽ thôi không đặt những câu hỏi vô nghĩa như vậy nữa, mà sẽ biến những mong ước trong tình yêu của bản thân trở thành sự thật.

																																															Tâm lý sợ bị bỏ rơi, tổn thương từ những đổ vỡ khiến nhiều người lo lắng khi đứng trước tình yêu. Bởi chúng ta nghĩ tình yêu là cảm xúc, thất thường và khó nắm bắt. Nhưng thực ra, tình yêu đầy logic và khoa học.

																																															Giống như tất cả các chu kỳ trong tự nhiên, tình yêu cũng có các giai đoạn phát triển nhất định để đi đến tình yêu đích thực - sự cam kết lâu dài. Chúng ta thường lầm tưởng rằng, não bộ và các hormone trong cơ thể chỉ tác động tới sự đam mê - giai đoạn thu hút và hẹn hò. Nhưng không! Chúng chi phối cả khi chúng ta đã bước vào giai đoạn thấu hiểu và cam kết.

																																															Một khi bạn hiểu được quy luật men chase women choose, việc tìm kiếm và duy trì tình yêu sẽ trở nên dễ dàng hơn nhiều.

																																															Bạn sẽ hiểu được:

																																															• Tại sao người theo đuổi cần phải là phái mạnh? Phụ nữ có thể thả thính thoải mái nhưng sự chủ động hãy dành phần cho đàn ông! Bởi cảm giác yêu của nam giới chỉ có thể được hình thành qua quá trình chinh phục!

																																															• Tại sao nam và nữ lại có cách yêu và những nhu cầu trong tình yêu khác nhau? Hệ thống não Limbic (phụ trách chức năng cảm xúc) của đàn ông nhỏ xíu, bởi vậy nên bản năng của anh ấy là lý trí. Một cô gái thông minh hãy cho anh ấy biết yêu không chỉ là những màn ân ái vồ vập lấy nhau để rồi sau một "cuộc yêu", mỗi người lại trở về với thế giới đơn độc của riêng mình.

																																															• Tại sao yêu lâu tình yêu thường nhạt dần? Làm thế nào để giữ mãi ngọn lửa đam mê kể cả khi đã kết hôn lâu năm?

																																															Testosterone và những “hormone tình yêu” khác chi phối tất cả các giai đoạn này! Thạc sĩ sinh học Dawn Maslar đã mang tới cho chúng ta cách áp dụng “khoa học về sự hấp dẫn” trong cuốn sách “Men chase women choose - Chuyện tình yêu bạn biết được bao nhiêu?” Đây không chỉ là một cuốn sách khoa học tình yêu đơn thuần mà còn là cuốn cẩm nang giúp bạn không còn bị cảm xúc chi phối hay đau khổ vì chuyện tình cảm!', 7, 5),

	('SKW0007', N'Đừng Chỉ Đẹp Mà Không Hiểu Chuyện', 'dcdmkhc.png', N'Mai Tử', 89000, 500, 2019, N'Tiếng Việt', 280, N'Bìa Mềm', 300, N'Nếu như ngoại hình là cách tạo hóa đối xử với mỗi người, thì sự hiểu chuyện chính là cách mỗi người đối xử với bản thân.
																																					Một con người, nhất là người phụ nữ chỉ đẹp mà không hiểu chuyện, vừa là lãng phí của trời cho, vừa là thiếu tôn trọng chính mình; vừa dễ bị đàn ông lợi dụng, vừa hay bị những người phụ nữ khác coi thường. Chỉ cần sảy tay lỡ miệng thể hiện sự không hiểu chuyện, rất nhiều cô gái đã phải trả giá, nhẹ thì vướng vào rắc rối lặt vặt, nặng thì có thể bị lợi dụng, bị hãm hại.
																																					“Đừng chỉ đẹp mà không hiểu chuyện” chính là cuốn sách dành cho bạn nếu bạn muốn:
																																					Rèn luyện sự TỰ TIN để thể hiện con người mình một cách thẳng thắn mà không kém phần duyên dáng.
																																					Rèn luyện sự LINH HOẠT để cứng rắn khi cần, mềm dẻo khi nên.
																																					Rèn luyện sự TINH TẾ để nhìn thấu nhân tâm, đoán biết lòng người, để hiểu thế nào là “ý tại ngôn ngoại”, là “ngôn ngữ không cần lời nói".
																																					Rèn luyện sự S U SẮC để đồng điệu với những tâm hồn xung quanh, để xây dựng những mối quan hệ khăng khít và bền vững.
																																					Rèn luyện sự CHỈN CHU để bản thân đẹp hơn mỗi ngày cả về hình thức lẫn tâm hồn.
																																					Gia đình chẳng thể che chở bạn được mãi, một người đàn ông cũng chưa chắc có thể làm điểm tựa lâu dài. Trước khi mong chờ dựa dẫm vào ai đó, chi bằng mỗi người phụ nữ hãy tự mình học cách hiểu chuyện khôn khéo, để vừa giữ được những mối quan hệ hòa hợp, vừa tự bảo vệ được mình khỏi sa ngã trong xã hội phức tạp rối ren này.
																																					Cho dù bạn tự thấy ngoại hình mình xinh đẹp hay chưa thu hút lắm, cái bạn cần nhất vẫn là một bộ não nhiều nếp nhăn và cái lưỡi biết uốn bảy lần trước khi nói.
																																					“Đừng chỉ đẹp mà không hiểu chuyện” - Vẻ đẹp thực sự toát ra từ cốt cách bên trong!', 7, 5),

	('SKW0008', N'Bình Tĩnh Khi Ế, Mạnh Mẽ Khi Yêu - All The Rules - Tái Bản', 'btkemmky.png', N'Ellen Fein, Sherrie Scheneider', 86000, 500, 2021, N'Tiếng Việt', 155, N'Bìa Mềm', 200, N'TUYỆT CHIÊU THOÁT Ế CHO CÔ NÀNG LẬN ĐẬN TÌNH DUYÊN

																																																	CỨ 5 PHỤ NỮ MỸ HẠNH PHÚC THÌ CÓ 2 NGƯỜI ÁP DỤNG “THE RULES” TỪ CUỐN SÁCH NÀY! 

																																																	Cuốn sách dành cho những người “lận đận tình duyên” , cho những cô gái thật sự nghĩ mình xứng đáng với những người đàn ông tốt nhất, những cuộc tình đáng giá nhất, chứ không chỉ là thoáng qua! 

																																																	Chúng ta đã bao lần phải tự hỏi: “Mình cũng đâu đến nỗi nào mà chẳng hiểu sao đến giờ vẫn ế?” 

																																																	Bạn có cảm thấy việc tìm ra người đàn ông phù hợp với mình thật là vô vọng? 

																																																	Tại sao bạn đã cố gắng rất nhiều mà vẫn không được anh ta đáp lại?

																																																	Hay thậm chí bạn đã từng hét lên: Sao đàn ông quanh mình toàn những người không ra gì? 
																																																	25 tuổi, chẳng có gì trong tay, thêm tình duyên lận đận. Hẳn đã có lúc bạn nghĩ thôi chẳng cần gì, chỉ cần sống vui là đủ rồi. Nhưng nếu có một bí quyết thoát kiếp ế, thoát kiếp duyên tới duyên đi, đứt gánh giữa đường; nếu có bộ bí quyết như thế thì tại sao lại không thử?

																																																	Bạn có tin 5 phụ nữ hạnh phúc ở Mỹ thì có 2 phụ nữ xem cuốn sách này là THE RULES – Bộ bí kíp để tìm đến người đàn ông như ý?

																																																	Trọn bộ kí kíp ấy được biên soạn thành tiếng Việt và chính là bảo bối bạn cầm trên tay: “Bình tĩnh khi Ế, mạnh mẽ khi Yêu”.

																																																	Cứ ngồi yên thì tình yêu đích thực sẽ chẳng bao giờ gõ cửa, nhưng cứ đuổi theo thì tình yêu cũng sẽ chạy càng xa. Tình yêu không phải một trò may rủi, để tìm và giữ được nó, bạn đều cần những chiến lược thông minh: Bí quyết tuyệt đối về luật 72h, những cuộc hẹn ngày thứ 7, những từ chối – chấp nhận, cách bạn cười – cách bạn nói; cách bạn cho anh ta biết bạn đáng giá… Tất cả tồn tại trong cuốn sách này. Và việc của bạn là TUYỆT ĐỐI áp dụng nó và có người đàn ông của cuộc đời mình… 

																																																	THE RULES tái bản hàng chục lần, tạo nên cả một trào lưu sống cho phụ nữ Mỹ và lần xuất bản ở Viet Nam này, Tủ sách Quý cô hi vọng sẽ chạm tay được thật nhiều các bạn nữ Việt, trở thành bộ cẩm nang ứng xử hoàn hảo như cuốn sách đã làm được ở Mỹ. 

																																																	Lận đận tình duyên vốn là một từ không tồn tại trong từ điển những cô gái biết đến cuốn sách này. Và bạn xứng đáng với tất cả những điều tốt đẹp hơn mà bạn đang có.', 7, 5),

	('SKW0009', N'Bóc Mẽ Những Cái Cớ Của Đàn Ông', 'bmncccdo.png', N'Greg Behrendt, Liz Tuccillo', 89000, 500, 2019, N'Tiếng Việt', 272, N'Bìa Mềm', 280, N'“BÓC MẼ NHỮNG CÁI CỚ CỦA ĐÀN ÔNG” – Đập tan những ảo tưởng về đàn ông
																																										“Đàn ông thà chịu đựng việc bị một con voi dẫm lên người, còn hơn là phải nói thẳng với bạn rằng anh ta không thích bạn.”
																																										Anh ta thờ ơ với bạn.
																																										Anh ta không nhắn tin trước sau vài lần hẹn hò. Bạn liên tục phải chủ động liên lạc.
																																										Anh ta có hàng ngàn cái cớ cho những lần hủy hẹn hoặc “delay”: Bận công tác, bận thăm nhà, bận đưa chó đi khám…
																																										Và rồi, đây là những gì mà bạn và hội chị em của mình thường kết luận:
																																										Anh ta mới thất tình nên còn sợ hãi chưa dám ngỏ lời yêu sợ tổn thương
																																										Có lẽ anh ấy không muốn hủy hoại tình bạn đang tốt đẹp giữa hai người.
																																										Có lẽ anh ấy quá bận rộn với công việc nên hãy cho anh ta thời gian.
																																										Những câu nói trên nghe có vẻ thật xuôi tai, và làm bạn dịu lòng… Nhưng đã đến lúc bạn, và cả hội chị em của mình nên dừng việc bào chữa và ngụy biện cho sự hờ hững đến từ những gã đàn ông quanh bạn. Bởi sự thật ấy à?', 7, 3),

	('SKW0010', N'Trí Thông Minh Của Sự Tinh Tế', 'ttmcstt.png', N'Tô Mạn', 89000, 500, 2021, N'Tiếng Việt', 248, N'Bìa Mềm', 250, N'CÓ PHẢI MUỐN ĐƯỢC CHIỀU THÌ PHẢI “BIẾT ĐIỀU"?

																																				Vì sao có những cô gái cuộc sống lúc nào cũng gặp may mắn, đi làm thì dễ dàng thăng tiến, về nhà thì được chồng yêu thương, gia đình thuận hoà chẳng cãi vã bao giờ? Tất cả là nhờ “Trí thông minh của sự tinh tế" cả đấy! “Trí thông minh" ấy không phải sẵn có trời sinh mà là do quá trình rèn giũa tạo thành.

																																				Thành thật mà nói thì phụ nữ, ai mà chẳng muốn được yêu chiều? Nhưng đôi khi muốn được cưng chiều mà không khéo léo lại thành đòi hỏi. Đôi khi đặt ra những tiêu chuẩn cho các mối quan hệ, nhưng không biết cách diễn đạt sẽ thành thực dụng…

																																				Thẳng thắn không xấu nhưng sống tinh tế sẽ tốt hơn rất nhiều. Khi có được “Trí thông minh của sự tinh tế" bạn sẽ biết:

																																				Bộc lộ nhu cầu không có gì sai nhưng phải “đòi hỏi" làm sao mà người ta sẽ vui vẻ, tự nhiên thực hiện điều đó cho mình trong hạnh phúc.
																																				Hiểu rõ bản thân, nhưng cũng hiểu rõ người bên cạnh. Biết yêu chính mình nhưng càng biết yêu thương người khác.
																																				Có được hạnh phúc mà không quên đi lòng biết ơn. Được cưng chiều cũng sẽ không quên chăm sóc, quan tâm đến đời sống, tinh thần của người mình yêu thương,
																																				Cuốn sách “Trí thông minh của sự tinh tế" sẽ giúp bạn hiểu rõ tâm tư người đối diện thông qua ngôn ngữ cơ thể, giao tiếp, ngoại hình, thói quen, sở thích… để từ đó có được những gì mình mong muốn và khiến những người xung quanh mình cũng cảm thấy hạnh phúc hơn, cuộc sống tốt đẹp, hài hoà hơn.

																																				“Trí thông minh của sự tinh tế": Cuốn sách giúp phụ nữ tìm thấy vẻ đẹp và “sức mạnh" đích thực toát ra từ cốt cách bên trong!', 7, 5),

	('SKW0011', N'Đặc Quyền Của Gái Hư (Tái Bản 2021)', 'dqcgh.png', N'Kara King', 86000, 500, 2021, N'Tiếng Việt', 284, N'Bìa Mềm', 300, N'“ĐẶC QUYỀN CỦA GÁI HƯ” – TUYỆT CHIÊU GIÚP PHÁI ĐẸP NẮM MỌI THỨ TRONG TAY, XOAY MỌI THỨ QUANH MÌNH.

																																						Cuốn sách giúp bạn nhận ra đã đến lúc bạn không còn phải lựa chọn giữa tình yêu, sự tôn trọng hay một chiếc nhẫn. Bởi bạn xứng đáng có được tất cả những điều đó!

																																						Bằng những chia sẻ thẳng thắn và lối suy nghĩ cởi mở về những vấn đề nhạy cảm trong đời sống của phái đẹp, tác giả Kira King sẽ giúp bạn phá vỡ mọi rào cản mà trước giờ bạn vẫn hằng e sợ.

																																						Quan hệ tình dục trước hôn nhân liệu có phải là xấu?

																																						Làm tình với người mình yêu có bị coi là dễ dãi?

																																						Là phụ nữ thì không nên chủ động trong chuyện “giường chiếu”?

																																						Với “ĐẶC QUYỀN CỦA GÁI HƯ”, bạn sẽ tìm được đáp án của riêng bạn cho tất cả những câu hỏi còn bỏ ngỏ đó. Nhưng dù câu trả lời bạn chọn có là gì, thì khi khám phá hết 12 sức mạnh tiềm ẩn của phái đẹp (tương đương với 12 chương sách), bạn cũng sẽ hiểu ra rằng: Bạn có thể lấy mọi thứ bạn muốn từ đàn ông mà không còn cần phải lo sợ việc sẽ bị tổn thương, bị lừa, hay bị đá.

																																						Bởi khi đã hiểu rõ nội lực và giá trị của chính bản thân mình, bạn luôn có thể thay đổi và có được mọi thứ bạn khao khát.

																																						Đôi khi bạn cũng cần tham lam, và thật nhẫn tâm để nắm mọi thứ trong tay, xoay mọi thứ quanh mình. Thế giới này cần những người phụ nữ như vậy để bớt đi khổ đau, vơi đi nước mắt.

																																						Và hãy đọc cuốn sách này với một trái tim vững vàng, một cái đầu thật rộng mở. Sau cùng, bạn sẽ có được lời cam kết, chiếc nhẫn và cả người đàn ông trong mơ của bạn.', 7, 5),

	('SKW0012', N'Hãy Tôn Trọng Nỗ Lực Của Một Cô Gái', 'httnlcmcg.png', N'Dương Hy Văn', 89000, 500, 2020, N'Tiếng Việt', 256, N'Bìa Mềm', 260, N'Bạn có thể không xinh đẹp, không biết trang điểm, thậm chí có thể rất béo, bạn có thể không xuất sắc, có thể không có chí tiến thủ, thậm chí có thể không thông minh, nhưng TÔI THÌ KHÔNG THỂ.

																																							Bạn thừa nhận không: Bộ dáng đáng thương nhất của một cô gái chính là khi phải tự nhận về hai chữ “không xứng”.

																																							Bị từ chối một công việc đáng mơ ước, bạn chỉ có thể tự nhận năng lực của mình không xứng với giá trị lao động, giá trị xã hội của vị trí đó.
																																							Thích một người nhưng không dám tiến tới, bởi vì bạn tự ti với ngoại hình, hoàn cảnh của mình.

																																							Hoặc đơn giản nhất, một cô gái không dám nhìn vào gương, không mặc nổi bộ đồ mình yêu thích, còn có thể trách ai ngoài chính mình đã không quản nổi cái miệng và thói quen sinh hoạt?

																																							Có lẽ cô gái nào cũng đã trải qua những lần bị từ chối như vậy. Nhưng đó cũng là bước ngoặt tạo ra những số phận khác nhau: có người nỗ lực để thay đổi bản thân, biến mình thành một phiên bản tốt hơn; cũng có người ngày càng khép mình tự ti, an phận thủ thường ôm giấc mơ xinh đẹp, tài giỏi, tình yêu lãng mạn mãi mãi không thành sự thật.

																																							“Hãy tôn trọng nỗ lực của một cô gái” là cuốn sách thức tỉnh các cô gái khỏi giấc mơ “một bước lên trời”.

																																							• Không có kỳ tích nào xảy ra chỉ trong một đêm, tất cả là quá trình tích lũy không ngừng nghỉ của bạn qua thời gian dài.

																																							• Không có bữa tiệc nào là miễn phí, bạn phải đánh đổi một thứ tương xứng để có được thứ mình muốn.

																																							• Không có ai khác ngoài chính bạn có thể tạo ra sự bình yên từ nội tâm cho chính mình, cho dù bạn có thay đổi chỗ ở, nhảy việc, làm đẹp bề ngoài… nhưng tâm trí hẹp hòi tự ti thì mãi mãi vẫn không cảm thấy an toàn.

																																							Đã qua rồi cái thời các cô gái tin vào những câu “súp gà” an ủi cho sự an phận thủ thường của mình, tin vào một hoàng tử có thể giúp mình đổi đời từ cô bé Lọ Lem thành công chúa

																																							Ý nghĩa của sự cố gắng chính là: Khi không có kỳ tích xảy ra, bạn vẫn có niềm tin vào năng lực của bản thân. Khi may mắn đột nhiên tìm đến, bạn cảm thấy mình xứng đáng có được sự may mắn này.', 7, 6),

	('SKW0013', N'Để Số Đo Không Là Nỗi Lo', 'dsdklnl.png', N'Đông Đồng', 96000, 500, 2022, N'Tiếng Việt', 256, N'Bìa Mềm', 260, N'Bạn đã từng ăn kiêng mãi mà không thấy kết quả như mong đợi?

																																			Bạn đang cố gắng ăn uống lành mạnh hơn nhưng các con số trên cân không hề giảm?

																																			Bạn đang thất vọng, mệt mỏi và thực sự muốn bỏ cuộc?

																																			Nếu bạn đang vật lộn với việc giảm cân mặc dù đã thực hiện một chế độ ăn uống lành mạnh, bạn không hề đơn độc.

																																			Giống như hầu hết mọi thứ trong cuộc sống, có rất nhiều yếu tố góp phần tạo nên thành công cho việc giảm cân. Trên thực tế, bạn có thể đang làm theo những lời khuyên sai lầm hoặc lỗi thời. Điều này có thể ngăn bạn nhìn thấy những thay đổi mà bạn đang tìm kiếm.

																																			Cuốn sách “Để số đo không là nỗi lo” - Tại sao bạn ăn ít mà vẫn mập? sẽ chỉ ra chính xác yếu tố chính ảnh hưởng đến cân nặng và sức khỏe tổng thể của chúng ta đồng thời đi sâu vào cách bạn đạt được mức giảm cân như mong đợi và điều gì đang cản trở sự tiến bộ của bạn.

																																			Thông qua cuốn sách, bạn sẽ biết cách:

																																			- Loại bỏ tình trạng “tích nước”, đúng hơn là giữ nước khiến cơ thể phù nề.

																																			- Mang lại sự cân bằng cho cơ thể và hiểu chính xác cách thức hoạt động của nó.

																																			- Áp dụng các công thức phù hợp, phương pháp khoa học có thể giúp giảm trọng lượng cơ thể và giảm sự căng thẳng bên trong.

																																			- Biến hành trình giảm cân thành con đường thú vị để xây dựng một lối sống lành mạnh bền vững, khiến bạn tự hào về sức khỏe, sự hiểu biết và yêu thương bản thân.

																																			Trong cuốn sách này, tác giả đã dùng góc nhìn của Đông y để phân tích, đưa ra các phương pháp chữa tận gốc vấn đề, cải thiện tình trạng thừa cân. Bạn sẽ có trong tay không chỉ kiến thức về thực dưỡng, giảm cân mà còn là những phương pháp tích cực và hiệu quả nhất để có được vóc dáng đẹp cùng sức khỏe ổn định nhất.

																																			“Để số đo không là nỗi lo” - cho bạn một vẻ ngoài tươi trẻ cùng cơ thể thon gọn tràn đầy sức sống.', 7, 6),

	('SKW0014', N'Tính Nữ - Dữ Dội và Dịu Êm', 'tnddvde.png', N'Sasha K Shillcutt, MD', 88000, 500, 2021, N'Tiếng Việt', 308, N'Bìa Mềm', 351, N'“Phụ nữ có thể vừa nữ tính, vừa dữ dội. Chúng ta có thể vừa dẫn đầu các cuộc cách mạng, vừa quan tâm đến những người đi theo chúng ta. Chúng ta có thể thống trị, cũng có thể hợp tác, nhưng nếu muốn thành công, chúng ta phải biết cách sống giữa hoa hồng và gai nhọn. Cần biết rằng: bạn có thể tử tế và ngầu.”

																																							• Trích: Tính nữ | TS. Sasha K. Shillcutt

																																							Phụ nữ rõ ràng có thể đóng rất nhiều vai trò và họ đều sẽ thể hiện rất tốt những vai trò đó nếu được trao cho một cơ hội.

																																							Trên thế giới có rất nhiều những người phụ nữ tài giỏi và nắm giữ những vị trí lãnh đạo quan trọng trong các cơ quan, tổ chức. Có thể kể đến như: Người phụ nữ quyền lực nhất thế giới (Theo tạp chí Forbes) - thủ tướng Đức Angela Merkel, bà Hillary Clinton người tranh cử chức tổng thống và Michelle Obama - cựu đệ nhất phu nhân Hoa Kỳ Tất nhiên còn có hàng trăm ngàn, hàng triệu, hàng trăm triệu những người phụ nữ tài năng ngoài kia, người vừa có thể mạnh mẽ chinh phục những công việc khó nhằn, lại biết dịu dàng, mềm mỏng xây dựng các mối quan hệ và giữ gìn một gia đình hạnh phúc.

																																							Tuy nhiên, trong ánh hào quang và những lời khen không ngớt dành cho những người phụ nữ tài năng, ta không thể không nhìn thấy ở một góc khuất nào đó vẫn có những người phụ nữ đang ẩn mình, rụt rè và sợ hãi. Những người phụ nữ không dám tự tin bung nở và khoe trọn tài năng hay con người thật của mình. Bởi họ sợ những đánh giá từ dư luận, sợ những tiếng cười chê và thất bại. Vì thế họ chọn để bản thân mình vô hình. Một sự vô hình có chủ ý. Thế nhưng, chúng ta không thể rút lui và “vô hình” mãi mã

																																							Nếu bạn cũng đang cảm thấy như vậy, cảm thấy tài năng của mình không được đánh giá đúng, nỗ lực của mình bị người khác ngó lơ, sự khác biệt của mình bị người khác cười chê cho là dị biệt, thì cuốn Tính nữ của tác giả Sasha Shillcutt chính là dành cho bạn.

																																							Cuốn sách này được viết cho một nhóm người mang trong mình những tâm hồn đẹp đẽ bị lu mờ bởi những điều tầm thường và sự bảo thủ. Cuốn sách này là một lời kêu gọi hãy sống chân thực, trở thành chính con người bạn, vì đó là con người mà thế giới muốn được biết. Nó nói về việc giành ưu thế và trở nên đủ can đảm để tự định nghĩa thành công trong đời sống cá nhân và nghề nghiệp của bạn, bất kể có khác biệt với những người xung quanh đến đâu. Nó nói về việc làm chủ dũng khí của mình, nhưng đồng thời cũng thể hiện sự nhân hậu.

																																							Bằng cách kể lại những câu chuyện cá nhân, cùng việc sẵn lòng chia sẻ minh bạch những thành công lẫn thất bại của mình với tư cách một người phụ nữ, người vợ, người mẹ, người bác sĩ và người bạn đã truyền cảm hứng cho nhiều người, cộng thêm khiếu hài hước và trí tuệ của mình, tác giả - bác sĩ Sasha Shillcutt đã đưa ra các kĩ thuật đơn giản, dễ thực hiện nhưng vô cùng hiệu quả để tất cả các quý cô có thể khám phá sự sôi nổi và dũng cảm trong con người mình.

																																							Không kêu gọi phụ nữ đứng lên chiến tranh đòi bình đẳng giới hay phải tranh cãi để đòi quyền lợi và cơ hội. Tính nữ của Sasha Shillcutt chỉ đơn giản là một cuốn sách giúp bạn dám đối mặt với sự thật, đối mặt với nỗi sợ sâu thẳm bên trong bạn và đối mặt với chính tài năng và sự đặc biệt mà bạn đã vô tình hoặc cố tình ẩn giấu nó đi.

																																							Để cho bạn dần dũng cảm bước ra khỏi cái bóng và chia sẻ sự thật, Sasha Shillcutt đã thành thật chia sẻ hết tất những vấn đề của bản thân, từng bước cùng bạn thức tỉnh và viết nên một cuốn sổ tay nữ giới.

																																							“Mình phải chia sẻ những câu chuyện thực tế để tất cả chúng ta thức tỉnh và viết nên một cuốn sổ tay nữ giới mới.” Chúng ta phải bước ra khỏi cái bóng và chia sẻ sự thật. Chúng ta phải dũng cảm nhưng không cần quá phi thường, chỉ cần vừa đủ thôi.

																																							Bằng cách lồng ghép khéo léo những Bài kiểm tra nội tâm, Tính nữ của Sasha Shillcutt giúp bạn dần khám phá ra những bí mật của bản thân, những trở ngại đã kìm hãm sự thành công và tài năng của bạn. Từ đó tổng quan lại và đưa bạn đến thế giới của sự gan góc và nhân từ để giúp bạn vừa can đảm, vừa nhân hậu, để nói với bạn rằng bạn có quyền nắm giữ sức mạnh với tư cách là phụ nữ, bởi vì đó là ý nghĩa của việc sống là chính mình.

																																							Mang đến những lời khuyên thực tế, chân thành dành cho mọi phụ nữ đang khao khát trở nên mạnh mẽ, can trường và hướng về tương lai. Cuốn sách này giống như một đơn thuốc chữa lành những gì vốn luôn khiến chúng ta phiền não.

																																							Bởi Sasha Shillcutt đã từng là bạn - một cô gái nép mình dưới cái bóng của sự thiếu tự tin, vậy nên cô thấu hiểu hết những khó khăn và mặc cảm mà bạn đang phải chịu đựng. Nhưng Shillcutt đã kiên cường, đã dữ dội và mạnh mẽ chiến đấu để vượt qua nó. Vậy nên chắc chắn Tính nữ của Sasha Shillcutt cũng sẽ giúp bạn, bạn cũng sẽ trở thành một cô gái tử tế và ngầu.', 7, 6),

	('SKW0015', N'Đi Đường Cũ Không Thể Tới Nơi Mới', 'ddckttnm.png', N'Thang Bội', 99000, 500, 2021, N'Tiếng Việt', 296, N'Bìa Mềm', 300, N'“Tôi không sợ thực hiện tất cả những điều trước mắt, điều tôi sợ là mình không thể chạm đến tương lai mà bản thân mong muốn.”

																																						Bạn của năm nay có khác gì của bạn năm trước không?
																																						Hay cuộc sống của bạn vẫn thế, có lúc vui tươi, có lúc buồn tẻ, có lúc mơ hồ vô định.?
																																						Phải chẳng cả bạn và rất nhiều những cô gái trẻ đang hoang mang giữa hiện tại để tìm kiếm định hướng cho bản thân giữa một xã hội xô bồ với muôn vàn lựa chọn về tình yêu, sự nghiệp và lối đi?

																																						Mỗi ngày, bạn làm hàng nghìn công việc không tên, rồi bẽ bàng nhận ra cuộc sống công sở vốn chẳng như mơ.
																																						Bạn nhận ra từ trước tới nay tình cảm của mình chỉ là những vòng luẩn quẩn nối tiếp nhau, yêu- thương- giận hờn- li biệt.
																																						Bạn không biết làm sao để giữ cho những mối quan hệ trở nên bền chặt, tốt đẹp hay e sợ khi kết nối với ai đó mới trong cuộc đời mình

																																						Mua nhà, mua xe, tìm người yêu, kết hôn, sinh con, kiếm thật nhiều tiền. Những mục tiêu thành công trên ý nghĩa dần dần xuất hiện trước mặt bạn đầy lấp lánh nhưng cũng khiến cô gái nhỏ bé như bạn nơm nớp lơ sợ, không dám tiến về phía trước.

																																						“Đi đường cũ không thể tới nơi mới” - Cuốn sách sẽ viết về hầu hết mọi thứ mà một cô gái có thể phải đối mặt trong quá trình trưởng thành như những suy ngẫm về bản thân, khám phá mối quan hệ giữa hai giới, hay mối quan hệ với người thân trong gia đình,

																																						Cuốn sách nhắc nhở bạn hãy tập từ biệt những “con đường cũ” hay đúng hơn là những “lối mòn” của sợ hãi đang hằn sâu trong tâm trí bạn.

																																						Những “nơi mới” chính là những chân trời rộng mở để được bạn khám phá những điều mới mẻ, thú vị, được mở rộng tầm nhìn hạn hẹp của mình ra với thế giới ngoài kia, để đóa hoa trong bạn được bung nở rực rỡ.

																																						Từ câu chuyện của chính mình, tác giả Thang Bội sẽ thôi thúc bạn phá vỡ những bức tường ngăn cách bạn đến với cuộc sống mà bạn thực sự mong muốn bằng những câu chữ chứa đầy sự quyết tâm, cởi mở và rung động lòng người.

																																						Bạn đã sẵn sàng đón nhận phiên bản mới của chính mình?', 7, 1)



--insert TusachSongkhac
insert into Books(bookID, bookName, bookImage, author, price, quantity, publishingYear, [language], numberPage, form, [weight], bookDescribe, cid, pcid)
values
	('SKK0001', N'Tôi Chọn Hôm Nay, Tôi Chọn Hạnh Phúc', 'tchntchp.png', N'Taketoshi Ozawa', 76000, 500, 2017, N'Tiếng Việt', 186, N'Bìa Mềm', 190, N'Những năm tháng tuổi trẻ, cuộc sống không phải lúc nào cũng trải đầy màu hồng. Sẽ có những ngày hân hoan mỉm cười và cũng có những chuỗi ngày ảm đạm mãi không dứt.

																																						Ai rồi cũng đôi lần đứng giữa ranh giới của sự nhạt nhẽo thường nhật. Cảm thấy mờ mịt về tương lai phía trước. Thậm chí không muốn bước chân ra ngoài khi nghĩ đến việc: sẽ đi về đâu?…

																																						Nhưng cuộc sống là như vậy. Nếu không mạnh mẽ như một chiến binh. Nếu không chọn HÔM NAY chọn HẠNH PHÚC thì bạn mãi mãi dừng lại. Ở phía sau. Trong bóng tối.

																																						Như một slogan truyền cảm hứng “TÔI CHỌN HÔM NAY, TÔI CHỌN HẠNH PHÚC” – cuốn sách đạt kỷ lục bán 30 VẠN BẢN chỉ trong vòng 1 năm tại Nhật Bản đã thổi bùng ngọn lửa sống bằng trái tim cháy bỏng, sống bằng nhiệt huyết trào dâng cho hàng triệu hàng triệu người bằng việc:

																																						Ngưng đo giá trị cuộc sống của mình bằng việc so sánh với người khác.

																																						Đẩy lùi những suy nghĩ tiêu cực. Kéo gần lại khoảng cách giữa thực tại và hy vọng.

																																						Luôn sống với tâm thế hôm nay là ngày cuối cùng của cuộc đời: an nhiên và hạnh phúc

																																						Bạn biết không, câu hỏi duy nhất chúng ta nên đặt ra không phải là liệu có tồn tại cuộc sống sau khi chết hay không mà là bạn đã thật sự sống trước khi chết hay không?

																																						Chỉ cần bạn không buông mình khi thất bại, chỉ cần bạn sống thật kiên cường thì dù cơn bão có dữ dội đến chừng nào nó cũng sẽ qua đi, vòm trời sẽ vẫn xanh trở lại.

																																						Hãy sống như hôm nay là ngày cuối cùng…

																																						Hãy chọn hôm nay. Hãy chọn hạnh phúc', 8, 6),

	('SKK0002', N'Mặc Kệ Thiên Hạ - Sống Như Người Nhật', 'mkthsnnn.png', N'Mari Tamagawa', 79000, 500, 2017, N'Tiếng Việt', 192, N'Bìa Mềm', 200, N'Cuốn sách gối đầu giường cho những người hay lo lắng, sợ hãi và luôn thấy mình kém may mắn

																																						Dành cho những ai muốn được sống là chính mình, cuộc đời của mình, tuổi trẻ của mình.

																																						Đã đến lúc bạn nên dừng tìm kiếm sự an ủi ở người khác, hoặc chờ đợi sự giúp đỡ từ một ai đó. Bởi an ủi hay giúp đỡ về mặt cảm xúc đôi khi giống như con dao hai lưỡi. Nó có thể giúp bạn chống đỡ lo âu hay muộn phiền nhất thời, nhưng lại đẩy bạn chìm sâu hơn vào những cảm xúc tiêu cực đó. Giống như một đứa trẻ khi vấp ngã, bạn mong đợi một sự xoa dịu từ người lớn, mà quên mất rằng sự “hỗ trợ” ấy chỉ càng khiến bạn mãi chẳng thể nào “biết đi”.

																																						Và Mặc hệ thiên hạ, sống như người Nhật chính là cuốn sách dành cho những người muốn đi bằng chính đôi chân mình. Dành cho những người muốn gạt bỏ những nỗi sợ bởi chính tay mình, chứ không cầu cứu bất kì sự trợ giúp nào.

																																						Hãy thử sống một ngày “mặc kệ thiên hạ”, mặc kệ những lời nhận xét từ người khác. Hãy thử sống một ngày bạn cho phép mình từ bỏ, từ bỏ những thứ khó khăn, ngổn ngang lo lắng. Hãy thử sống một ngày bạn trân trọng mọi cung bậc cảm xúc bên trong con người bạn.

																																						“Nếu bạn có thể thẳng thắn đối diện với bản thân và từ bỏ những thứ đang giam cầm bạn, bạn sẽ trở thành con người có chính kiến, biết quý trọng hơn và đặt những cảm xúc của bản thân lên trên mọi ánh nhìn của người khác.”

																																						Mari Tamagawa khuyến khích mỗi người nên sống thật và ngưng phán xét bản thân. Thật lãng phí khi bạn để cuộc đời mình phải trải qua những tháng ngày khổ sở chỉ vì cái nhìn của người khác. Cũng đừng tin vào những “chiếc phao” cứu cánh mà bạn nhầm tưởng rằng sẽ giúp mình rũ bỏ được mọi lo lắng. Tổn thương tâm lí, áp lực hay nỗi sợ… của bản thân, chúng ta phải đối mặt với nó, chiến đấu và tự chữa trị cho chính mình.

																																						Đã đến lúc bạn cần phải nói lời tạm biệt với cuộc sống đầy âu lo đang rút cạn năng lượng của bạn. Cuộc đời của bạn không thuộc về ai khác, cuộc đời của bạn thuộc về bạn. Tháng 3 này hãy để “Mặc kệ thiên hạ, sống như người Nhật” giúp bạn bắt đầu cuộc đời mới, cuộc đời mang tên chính mình.', 8, 3),

	('SKK0003', N'Mình Là Cá, Việc Của Mình Là Bơi', 'mlcvcmlb.png', N'Takeshi Furukawa', 89000, 500, 2017, N'Tiếng Việt', 192, N'Bìa Mềm', 300, N'Đã bao nhiêu lần bạn tự hỏi về sự tồn tại của bản thân trên thế giới này?

																																					Đã bao nhiêu lần bạn thấy mình chìm trong những ý nghĩ tích cực nhất.

																																					Đã bao nhiêu lần bạn bỏ lỡ cơ hội đáng lẽ thuộc về bạn?

																																					Một cuốn sách hay không chỉ là cuốn sách khiến bạn nhìn thấy chính bản thân mình trong đó mà còn là một cuốn sách giúp bạn trở nên tốt hơn.

																																					Đâu đó đã có người nói rằng, nếu điều gì khiến bạn vui vẻ nhưng không khiến bạn tốt lên, hãy từ bỏ nó.“Mình là cá, việc của mình là bơi” sẽ khiến bạn thấy rằng

																																					Tự đày đọa bản thân bằng những ý nghĩ tiêu cực chỉ khiến bạn rút ngắn thời gian của những tháng ngày vui vẻ.
																																					Muốn yêu cuộc sống này, trước hết cần biết chấp nhận bản thân và yêu chính mình đã.
																																					Cuộc sống ngắn ngủi lắm, chớp mắt một cái là bạn đã thêm một tuổi.
 
																																					Vậy thì đừng lãng phí cơ hội làm điều mình muốn.

																																					Hãy sống như một chú cá, bơi hết mình, cố gắng hết sức dù cho ngày mai có ra sao đi nữa.
																																					Chỉ cần là một hạt giống mạnh mẽ, bạn sẽ trở thành một cây cổ thụ. Cuộc sống hiện đại vốn chứa đựng vô vàn những điều phức tạp, đừng giăng mắc thêm những “cái bẫy” cho chính bản thân bằng những suy nghĩ tiêu cực.
																																					Hãy tập trung vào việc mình có thể làm được và làm tốt công việc ấy. Cuộc đời không bao giờ cho chúng ta những thử thách mà con người không thể vượt qua được. Trái tim con người vốn là tạo vật mạnh mẽ nhất, chỉ cần bạn luôn ghi nhớ điều đó.', 8, 3),

	('SKK0004', N'Khuyết Điểm Được Sinh Ra Để Lấp Đầy', 'kdsrdld.png', N'Emily-Anne Rigal', 86000, 500, 2018, N'Tiếng Việt', 224, N'Bìa Mềm', 250, N'KHI BẠN CÒN ĐỨNG NƠI VẠCH XUẤT PHÁT VÀ KHÓC LÓC VÌ SỰ THIỆT THÒI, NGƯỜI KHÁC ĐANG CHẠY VỀ ĐÍCH!

																																						Bạn có gì trong tay, ngay bây giờ:

																																						Công việc tàm tạm với mức lương đủ sống

																																						Người yêu hơi vô tâm nhưng cũng đủ để có người nói chuyện

																																						Mối quan hệ gia đình không quá thấu hiểu nhưng lúc khó khăn sẽ luôn bên cạnh

																																						Và bạn có khuyết điểm, đầy những yếu điểm để những gì đang có là đủ ổn định rồi

																																						Chúng ta quên mất một điều: Chúng ta còn có tuổi trẻ.

																																						Tuổi trẻ là gì? Là cơ hội để bước ra, bước mạnh mẽ và chắc chắn, vượt qua mọi khuyết điểm không ngừng vươn lên.

																																						Ai cũng có xuất phát điểm của mình. Bạn có thể không có điều kiện bằng người này, có thể không có bằng này bằng kia du học nước ngoài, hay chẳng có nhan sắc mĩ miều, thân hình chuẩn chỉnh. Nhưng điều đó, chẳng quyết định điều gì cả. Đúng! Khuyết điểm, vạch xuất phát của bạn không sinh ra để nằm yên ở đó. Chúng sinh ra để bạn dẫm lên và chạy… chạy… không ngừng chạy cho đến khi bạn nhìn thấy nơi mà bạn muốn đến.

																																						Nếu vạch đích đã kẻ sẵn dưới chân mình, việc gì chúng ta cần phải trưởng thành. Nếu như cuộc sống này vẹn toàn, thì những điều không hay, những khuyết điểm lại trở thành thứ thừa thãi. Và thử hỏi xem sống một cuộc sống như vậy, chúng ta sống để làm gì?

																																						“Khuyết điểm được sinh ra để lấp đầy” sẽ vạch cho bạn thấy:

																																						Niềm tin nào đang kìm chân bạn để bạn còn mãi loay hoay chưa chịu nhấc chân lên khỏi vạch xuất phát?

																																						Đập vỡ hết những nguyên tắc, những khắt khe và sự tự ti đang ràng buộc để có thể “BUNG LỤA”

																																						Để bạn khao khát hơn với mơ ước của mình, dám nghĩ xem mình thực sự muốn làm gì nếu như không có thất bại

																																						Hãy nhắm mắt lại, tưởng tượng về một nơi, một điều mà bạn cảm thấy mình thực sự khi mình ở đó, được làm công việc đó và thuộc về nó. Hãy nghĩ lại giấc mơ khi còn nhỏ, bạn muốn làm gì, bạn muốn sống một cuộc đời như thế nào. Hãy thả mình tại nơi bắt đầu, để biết nơi bạn muốn đến.

																																						Thực tâm mỗi người, không ai muốn sống một cuộc đời nhạt nhòa. Trước khi để sóng xóa dấu chân thì cũng hãy in dấu chân ấy trên cát, in dấu chân ấy vào trái tim những người yêu thương mình. Thành tích và sự phát triển không bao giờ là thứ để khoe mẽ, nó là điều ý nghĩa chứng minh rằng, BẠN ĐÃ SỐNG MỘT CUỘC ĐỜI XỨNG ĐÁNG RA SAO.', 8, 3),

	('SKK0005', N'Cân Bằng Cảm Xúc, Cả Lúc Bão Giông', 'cbcxclbg.png', N'Richard Nicholls', 105000, 500, 2021, N'Tiếng Việt', 350, N'Bìa Mềm', 360, N'Một ngày, chúng ta có khoảng 16 tiếng tiếp xúc với con người, công việc, các nguồn thông tin từ mạng xã hội, loa đài báo giấy… Việc này mang đến cho bạn vô vàn cảm xúc, cả tiêu cực lẫn tích cực.
																																						Bạn có thể thấy vui khi nhìn một em bé đến trường nhưng 5 phút sau đã nổi cơn tam bành khi bị đứa trẻ con đi xe đạp đâm sầm vào lại còn ăn vạ.
																																						Hoặc bạn rất dễ phát điên nếu như chỉ còn 5 giây nữa đèn giao thông chuyển từ đỏ sang xanh mà kẻ đi đằng sau bấm còi inh ỏi.
																																						Hay là, bạn thấy buồn chỉ vì hôm nay trời mưa man mác, mà vẫn phải ngồi trong văn phòng làm việc, bạn bi quan rằng tuổi trẻ thật buồn tẻ.
																																						Hãy thừa nhận đi! Ai trong số chúng ta cũng sẽ trải qua những điều này. Và cuốn sách này dạy bạn cách làm hòa với chính những tiêu cực bên trong mình…
																																						Đa số những cảm xúc tiêu cực chỉ thỏa mãn được chúng ta ở thời điểm hiện tại. Tức là chúng ta có thể sẽ nhận được sự thoải mái khi la hét, cáu giận, chửi thề một ai đó nhưng những âm thanh ta phát ra, suy nghĩ ta truyền đi sẽ đóng vai một con dao sắc lẹm đâm ngược lại vào chính thân thể mình. Các mối quan hệ, cuộc sống, công việc của chúng ta sẽ dần rơi vào sự mệt mỏi, bế tắc.
																																						Học được cách cân bằng cảm xúc cũng chính là học được cách làm chủ cuộc đời mình thông minh, sáng suốt và đúng hướng.
																																						“Cân bằng cảm xúc, cả lúc bão giông” khác biệt hoàn toàn so với những cuốn sách về cảm xúc thông thường khác khi:
																																						Chỉ cho người đọc những lý do khiến chúng ta luôn tiêu cực và bản chất của những điều này là gì?
																																						Những điều khiến chúng ta thường xuyên nóng giận và không hạnh phúc bắt nguồn từ đâu?
																																						Đưa ra những bài tập cụ thể để cân bằng cảm xúc mỗi ngày như: Ngừng suy nghĩ trong một khoảng thời gian cố định, tưởng tượng một quá trình, tập sống với bản thân mỗi ngày…
																																						Cân bằng phương trình của cuộc đời không dễ, cuốn sách này không chỉ là lý thuyết còn cho bạn những kĩ năng, phướng pháp tận tình nhất để giúp bạn làm chủ cảm xúc của mình.', 8, 6),

	('SKK0006', N'Nắm Dây Cương, Đừng Để Đời Đi Lạc', 'ndcddddl.png', N'Yasushi Kitagawa', 89000, 500, 2019, N'Tiếng Việt', 255, N'Bìa Mềm', 270, N'Cuốn sách được xem là “sách dẫn đường” của giới trẻ Nhật
																																					Được viết bởi “Người thầy Quốc dân” Yashushi Kitagawa
																																					Ban đã thật sự sống hay chưa? Bạn có đang lạc đường? Rốt cuộc ý nghĩa cuộc sống của bạn là gì?
																																					Tuổi trẻ vốn là tuổi của hoang mang, hồ nghi của hàng vạn những câu hỏi vì sao.

																																					Có những lúc bạn chợt nhận ra, bất kể bản thân nỗ lực ra sao, hạnh phúc và thành công vẫn không đến với mình?

																																					Bạn cảm thấy may mắn mãi không tới với mình, chuyện tốt lành ngày một ít đi.

																																					Bạn luôn băn khoăn việc gì mình nên làm, việc gì không, thậm chí mình có tư cách để thành công không?

																																					Khi đã thất bại quá nhiều lần, ta thường tự nhủ bản thân phải cố gắng lại lần nữa, quyết tâm để thành công, nhưng nói thì dễ, làm mới khó. Ta thường chần chừ, lưỡng lự, và cuối cùng, khi không nắm chắc, ta lại chẳng làm gì. Vòng xoáy cuộc đời kéo ta trôi tuột đi, đôi khi lạc lối.

																																					Cho đến tận bây giờ, thật lòng, mỗi ngày của bạn có thật sự hạnh phúc và hài lòng?

																																					Có những câu chuyện người trẻ nào cũng phải trải qua, có những hành trình ai cũng phải đi. Và nắm dây cương, đừng để đời đi lạc – Cuốn sách được xem là “Nhà Giả Kim” của người trẻ Nhật, là cuốn sách “dẫn đường” để bạn không lạc lối và đơn độc trên hành trình khám phá chính mình.

																																					“Nắm dây cương, đừng để đời đi lạc” là hành trình đi tìm ý nghĩa cuộc sống của chàng trai trẻ, cũng là của tất cả chúng ta.

																																					Những cuộc gặp gỡ, những bài học gieo vào lòng người hạt mầm của sự tử tế, lòng bao dung, của nghị lực sống, của sự thấu hiểu bản thân. Mỗi câu chuyện nhỏ, mỗi cuộc gặp gỡ giống như một nấc thang để bạn bước dần bước dần. Và tin chắc rằng khi khép cuốn sách lại bạn sẽ đủ mạnh mẽ để đứng dậy: Sống cho ước mơ đời mình.', 8, 6),

	('SKK0007', N'Tương Lai Bạn Muốn Là Ai?', 'tlbmla.png', N'Andro Donovan', 89000, 500, 2021, N'Tiếng Việt', 280, N'Bìa Mềm', 300, N'“Bạn thấy thế nào nếu hôm nay là ngày cuối cùng của cuộc đời?” Nếu thực sự muốn trả lời rằng mình “mãn nguyện, hạnh phúc và hài lòng”, hãy đọc cuốn sách này!

																																		Với cách diễn đạt gãy gọn, cụ thể, vô cùng thực tế và dễ áp dụng, tác giả Andro Donovan – diễn giả, nhà tư vấn hàng đầu của các CEO và doanh nhân thành đạt trên thế giới - sẽ giúp bạn:

																																		• KHÁM PHÁ: Nhận thức được giá trị của bản thân và tìm ra mục đích sống của riêng mình.

																																		• GIẢI PHÓNG: Tìm hiểu điều gì đang cản trở hạnh phúc của bạn và giành lại quyền kiểm soát.

																																		• PHÁT TRIỂN: Bắt đầu hành trình thiết kế cuộc đời bạn mong muốn.

																																		Bạn sẽ tìm được định hướng đúng đắn để phát triển, hoàn thiện bản thân, bắt đầu tạo nên cuộc sống với tầm nhìn rộng mở, rõ ràng và trở thành một phiên bản tốt hơn của chính bạn, bằng cách:

																																		- Đánh giá khách quan bản thân của hiện tại

																																		- Gạt bỏ những thiên kiến ngăn cản bản thân vươn xa

																																		- Khơi gợi lên mục đích sống và tìm ra lối đi cho mình

																																		- Lập kế hoạch cho tương lai, xác định những mục tiêu ngắn hạn và mục tiêu lâu dài

																																		- Cân bằng giữa sở trường và “đam mê” để không bị lạc lối, áp lực

																																		- Tự kỷ luật bản thân để có kết quả tốt nhất

																																		Qua đó, câu hỏi "Tương lai bạn muốn là ai?" cũng sẽ không còn mơ hồ và làm khó bạn nữ

																																		- Tương lai bạn muốn LÀM NGHỀ gì, không phải do gia đình định hướng hay chạy theo xu hướng, mà đó là cách bạn sử dụng KỸ NĂNG

																																		- Tương lai bạn sẽ GẶP GỠ ai, không phải dựa vào may mắn hay ngồi im chờ duyên tới, mà dựa vào cách bạn xây dựng THẾ GIỚI QUAN

																																		Tương lai bạn muốn SỐNG như thế nào, không phụ thuộc vào hoàn cảnh bên ngoài, mà tùy thuộc vào chiều sâu TÂM HỒN

																																		Hãy nhớ rằng, vị trí của bạn hôm nay chỉ là vạch xuất phát mà thôi.

																																		Tương lai bạn muốn là ai, bạn phải đi về phía trước mới có câu trả lời.

																																		Hy vọng bạn của tương lai sẽ hài lòng với chính mình và cảm ơn những nỗ lực của bạn trong quá khứ.', 8, 6),

	('SKK0008', N'Ngoài Vùng Sợ Hãi Có Gì Vui?', 'nvshcgv.png', N'Koichi Honda', 86000, 500, 2020, N'Tiếng Việt', 200, N'Bìa Mềm', 200, N'MỌI THỨ BẠN MUỐN ĐỀU Ở PHÍA BÊN KIA NỖI SỢ, KỂ CẢ ƯỚC MƠ

																																			Con người ta có vô vàn điều sợ hãi: sợ xấu, sợ nghèo, sợ đau, sợ thất bại, sợ thay đổi, sợ lựa chọn, sợ nói trước đám đông, sợ bị chỉ trích, sợ năng lực không được công nhận, sợ cảm giác thiếu an toàn… Thấy không? Nỗi sợ đã kéo bạn lùi xa cả vạch xuất phát của bản thân.

																																			Nghĩ mà xem, khi bạn thử một điều gì mới, ví dụ như quần áo mới, công việc mới, gặp gỡ người mới, hay làm một điều chưa từng trước đây… bạn có cảm thấy sợ và không thoải mái không? Thường thì là có. Nhưng sau đó càng thử, bạn sẽ càng thấy quen và ngày một phát triển bản thân hơn.

																																			Ước mơ của bạn cũng cần phải vượt qua ranh giới sợ hãi mới có thể thành hiện thực.

																																			“Ngoài vùng sợ hãi có gì vui?” là cuốn sách nổi tiếng nhất của Koichi Honda – một doanh nhân, diễn giả rất được yêu mến tại Nhật Bản. Ngay từ lần xuất bản đầu tiên, cuốn sách đã lọt top best-seller, liên tục tái bản ở đất nước mặt trời mọc cũng như được dịch ra nhiều thứ tiếng khác.

																																			Tại sao cuốn sách lại thu hút nhiều độc giả tới vậy? Vì nó đúc kết những kinh nghiệm vô giá để người đọc vượt qua sự sợ hãi và chạm tới thành công. Hành trang ấy gồm có:

																																			- Mindset thành công.

																																			- Biết mình là ai, nhưng không phải để ghét bỏ bản thân hay kiêu ngạo, mà để yêu lấy mình.

																																			- Kết nối với nhau bằng niềm vui, bởi ta sẽ cần vài người bạn đồng hành.

																																			- Hãy nghĩ rằng mình xứng đáng.

																																			- Học hỏi nhưng áp dụng có chọn lọc, bởi con người giống như chiếc điện thoại, cần cài đặt những ứng dụng tương thích mới có thể hoạt động tốt.

																																			Để thành công trong cuộc sống, bạn phải luôn sẵn sàng đối mặt với những nỗi sợ của bản thân. Nếu bạn muốn những điều chưa bao giờ có, thì bạn phải làm những việc chưa bao giờ làm.

																																			“Chưa từng có ai chết vì không thoải mái, nhưng sống trong danh nghĩa của sự thoải mái đã giết chết nhiều ý tưởng, nhiều cơ hội, nhiều hành động và nhiều sự phát triển hơn tất cả mọi thứ cộng lại.”

																																			Bước ra cho cả thế giới thấy bạn là ai và có thể làm được gì đi nào!', 8, 6),

	('SKK0009', N'Những Gì Bạn Biết Về Mình Đều Sai', 'ngbbvmds.png', N'Don Miguel Ruiz & Barbara Emrys', 84000, 500, 2019, N'Tiếng Việt', 240, N'Bìa Mềm', 250, N'“Bạn chỉ cần trở thành phiên bản tốt nhất của chính mình thôi!”

																																									NHƯNG NẾU ĐÂY LÀ PHIÊN BẢN TỐT NHẤT THÌ SAO?

																																									- Bạn có phải là cơ thể trì trệ và lười vận động của mình không? Chắc không đâu, dù bạn vẫn phải hết lòng bảo vệ nó.

																																									- Bạn có phải là những gì người khác nói về bạn không? Chắc chắn không rồi, bản thân bạn sao có thể do người khác quyết định được.

																																									- Vậy chắc bạn là những gì tự bản thân bạn nghĩ về mình chứ? Hình như cũng không phải, toàn mấy điều tiêu cực thế cơ mà!

																																									Rốt cuộc thì “bạn là ai”? Một câu hỏi tưởng chừng như vô cùng đơn giản sao lại thành khó trả lời thế nhỉ? Nếu như ngay cả bản thân bạn còn không biết mình là ai, mình cần làm gì, thì trở thành “phiên bản tốt nhất của chính mình” bằng cách nào đây?

																																									Hãy để “Những gì bạn biết về mình đều sai” mở ra cánh cửa nhận thức mới cho bạn. Cuốn sách là cuộc hành trình đi tìm lời giải cho 3 câu hỏi quan trọng nhất đời người: TA LÀ AI? CÁI GÌ LÀ THẬT? và TÌNH YÊU LÀ GÌ? Nó đặt bạn vào thế phải lựa chọn: hoặc là thách thức niềm tin cố hữu bấy lâu nay để tìm ra sự thật, hoặc đóng sập cánh cửa lại và bước tiếp trên con đường mòn quen thuộc.

																																									“Những gì bạn biết về mình đều sai” là cuốn sách dành cho những ai đang khát khao tìm ra sự thật về bản thân mình. Cho những ai sẵn sàng đặt câu hỏi, và không ngại bước qua những rào cản cố hữu.

																																									Một trong 2 tác giả của “Những gì bạn biết về mình đều sai” chính là Don Miguel Ruiz - người viết nên các cuốn sách best-seller trên toàn thế giới như Bốn thỏa ước, Bậc thầy của tình yêu

																																									Mọi việc diễn ra trên đời này chẳng vì nó đúng hay sai. Không ai có quyền đánh giá bạn, và bạn cũng không có quyền tự dằn vặt, hành hạ bản thân mình. Hãy nhớ, cuộc sống luôn muốn đối thoại với bạn. Nếu bạn thiện chí lắng nghe và thay đổi, thế giới của bạn mới có thể đổi thay.', 8, 3),

	('SKK0010', N'Người Nhạy Cảm - Món Quà Hay Lời Nguyền', 'nncmqhln.png', N'Elaine N Aron', 74000, 500, 2019, N'Tiếng Việt', 384, N'Bìa Mềm', 400, N'“NHẠY CẢM” KHÔNG PHẢI LÀ CÁI TỘI!

																																						Bạn là người có đời sống nội tâm phức tạp?

																																						Đôi khi bạn cảm thấy dường như không ai hiểu được mình?

																																						Bạn cũng là kiểu người thường để ý đến cái nhìn của người khác?

																																						Luôn cố gắng làm mọi thứ thật tốt, nhưng cũng vì vậy mà khiến bản thân không vui?

																																						Vậy rất có thể bạn là kiểu người CỰC KỲ NHẠY CẢM (Highly Sensitive Person), và có đến 15-20% dân số thế giới là người giống bạn cơ, nên đừng lo, cũng đừng sợ, bạn không phải KẺ KỲ LẠ DUY NHẤT.

																																						Người nhạy cảm được sinh ra với những xúc cảm tinh tế và mãnh liệt hơn người khác: dễ khóc, dễ cười, dễ đồng cảm với người khác, đôi khi thích thu mình, đôi khi lại muốn hòa nhập cùng mọi người, suy nghĩ về nhiều thứ, dễ cảm thấy lạc lõng, chỉ một kích thích nhỏ cũng khiến tinh thần bất ổn…

																																						Bạn sở hữu nhiều ưu điểm vượt trội nhưng cũng gặp nhiều khó khăn trong cuộc sống thường ngày, nhất là việc kiểm soát cảm xúc. Cũng bởi vậy mà đôi khi người cực kì nhạy cảm (HSP) trở thành những kẻ lập dị trong mắt mọi người, dễ bị người khác hiểu nhầm là kiểu người thái quá, giả tạo, và bị số đông xa lánh.

																																						“Người nhạy cảm – món quà hay lời nguyền” là CUỐN SÁCH ĐẦU TIÊN CÔNG NHẬN GIÁ TRỊ CỦA SỰ NHẠY CẢM và xem đó như một điều thiết yếu cho xã hội. Cuốn sách sẽ cho bạn thấy:

																																						Bạn không phải kẻ lập dị, càng không phải giả tạo. Bạn đơn chỉ là một người nhạy cảm

																																						Thấu hiểu để đồng cảm với bản thân nhiều hơn

																																						Bạn khác biệt nhưng bạn có giá trị của riêng mình

																																						“Người nhạy cảm – món quà hay lời nguyền” với tên gốc Highly Sensitive Person đã:

																																						Tiêu thụ hàng triệu bản trên khắp thế giới, có mặt tại hàng chục quốc gia, trở thành INTERNATONAL BESTSELLER.

																																						Mang lại thành công vang dội cho tác giả - tiến sĩ Elaine N Aron với những giải thưởng, sự ghi nhận danh giá

																																						Một trong số ít những cuốn sách được nhiều người nổi tiếng trên thế giới đặc biệt đánh giá cao như tác giả John Gray, Riane Eisler, ca sĩ kiêm nhạc sĩ đình đám Alanis Morissette…

																																						Ai cũng mang trong mình những giá trị khác biệt từ khi sinh ra và điều đó tạo nên màu sắc cho thế giới này. 

																																						Vậy nhạy cảm là món quà hay lời nguyền? Chắc bạn cũng đã có câu trả lời cho riêng mình rồi.', 8, 6),

	('SKK0011', N'Tuổi Trẻ Kiên Cường Để Sống Điên Cuồng', 'ttkcdsdc.png', N'Max Kirishima', 79000, 500, 2019, N'Tiếng Việt', 200, N'Bìa Mềm', 220, N'E sợ những điều không chắc chắn, ngại ngần trước những kết quả không tốt là tâm lý hết sức bình thường của con người. Và bởi theo những gì đa số chúng ta biết, thất bại đồng nghĩa với "mất đi", nghĩa là ta sẽ phải nếm trải cảm giác đau khổ, chật vật, cay đắng, chán chườ

																																						Người ta sợ mất đi vì người ta đang sở hữu, càng có nhiều càng do dự, càng có nhiều càng băn khoăn, càng có nhiều càng e ngại.

																																						Ngẫm lại thì, sống một cuộc sống điên cuồng hơn có thể cho bạn nhiều thất bại hơn nhưng cũng nhiều trải nghiệm hơn.

																																						Ở tuổi 20, bạn có đủ điều kiện để dẫu "thua keo này" thì vẫn có thời gian phục hồi để lại "bày keo khác". Vậy thì, giữa "làm rồi hối hận" và "hối hận vì đã không làm", bạn chọn cái nào đây?

																																						Hãy chọn tôi luyện cho mình một trái tim, kiên cường, bản lĩnh và bước ra đến một cuộc sống thật điên cuồng rực rỡ.', 8, 3),

	('SKK0012', N'Sống Hết Mình Cho Ngày Hôm Nay', 'shmcnhn.png', N'Taketoshi Ozawa', 74000, 500, 2017, N'Tiếng Việt', 152, N'Bìa Mềm', 160, N'“Đừng làm nô lệ cho ngày hôm qua hay ngày mai, hãy chỉ biết đến ngày hôm nay thôi.” (Trích “Sống hết mình cho ngày hôm nay”)

																																				Bạn là người luôn chìm đắm trong những ký ức, kỷ niệm của quá khứ?

																																				Bạn là người lúc nào cũng thấy hiện tại thật nhàm chán?

																																				Bạn là người lúc nào cũng hoang mang khi nghĩ đến tương lai?

																																				Đã đến lúc bạn dừng suy nghĩ ấy lại và đưa tâm trí mình đến thẳng “ngày cuối cùng của cuộc đời”. Chỉ khi bạn nghĩ mình đón nhận cái chết như thế nào, bạn sẽ biết mình phải sống cho những tháng ngày hiện tại ra sao.

																																				“Sống hết mình cho ngày hôm nay” KHÔNG phải là cuốn sách hướng dẫn bạn phải cố gắng, phải tích cực, phải làm điều này điều kia. Nó vượt qua một cuốn sách thông thường và chạm đến người đọc bằng những triết lý dung dị nhưng sâu sắc.

																																				Chúng ta thường không bao giờ trân trọng những điều ngay bên cạnh mình và coi đó là điều hiển nhiên. Thực ra, điều quan trọng thực sự vẫn luôn bên bạn. Chỉ vì bực mình điều gì đó, bạn bỏ qua một ngày đẹp trời; chỉ vì chút sĩ diện, bạn không làm hòa với đứa bạn thân; chỉ vì tự ái, bạn không nói lời xin lỗi với bố mẹ; chỉ vì quá bận rộn, bạn không góp nhặt từng giây phút trân quý bên gia đình.

																																				Bạn đã quá để tâm đến thế giới bên ngoài và quên mất việc đi tìm ý nghĩa thực sự cho cuộc sống của mình. Điều bạn cần làm chính là trân trọng những giây phút bình dị nhất từ ngày hôm nay, nếu có cố gắng điều gì đó, hãy cố gắng từ giây phút này. Đừng để đến khi bạn không còn có mặt trên cõi đời này nữa, khi bạn không thể tự ăn uống, tự đi lại, bạn mới thấy tiếc nuối. “Hối hận” luôn là thứ cảm xúc đáng ghét nhất.

																																				Cuốn sách lập kỷ lục với 30 VẠN BẢN bán hết trong vòng 1 năm tại Nhật Bản sẽ giúp bạn tìm thấy chính mình.', 8, 6),

	('SKK0013', N'Một Ngày Của Tôi Có 48 Giờ - 12 Thói Quen “Healthy & Balanced”', 'mnctc48g.png', N'Anh Tuan Le', 89000, 500, 2020, N'Tiếng Việt', 224, N'Bìa Mềm', 250, N'Để cảm thán cuộc sống suôn sẻ hay bế tắc, chúng ta có một câu cửa miệng “ăn ở cả”. Có thể nói, “ăn ở” chính là những THÓI QUEN SINH HOẠT làm nên mỗi giờ, mỗi ngày, mỗi năm và cả một giai đoạn trong đời người.

																																											Ai cũng biết một cuộc sống có ý nghĩa bắt đầu từ những thói quen lành mạnh. Vậy tại sao vẫn có nhiều người “sống mòn”, thức khuya dậy trễ, ăn uống không kiểm soát, không có kế hoạch làm việc hiệu quả?

																																											Trong cuốn sách “Một ngày của tôi có 48 giờ”, tác giả trẻ Anh Tuan Le sẽ chia sẻ tất cả về cách tạo dựng 12 thói quen “healthy & balanced”, giúp bạn từng bước thay đổi giao diện bản thân và nâng cấp chất lượng cuộc sống. Mỗi thói quen đều được tiến hành bằng 3 câu hỏi:

																																											What (Cái gì) - Công cụ thực hành thói quen: chia sẻ tất cả những ứng dụng hiệu quả giúp bạn quản lý sinh hoạt hằng ngày: dậy sớm, ngủ đúng giờ, theo dõi sức khỏe, thiền, viết lách, quản lý tài chính…

																																											How (Như thế nào) - Cách thức thực hành thói quen: cách áp dụng những thủ thuật tâm lý để giải quyết vấn đề, cách phân loại và quản lý công việc.

																																											Why (Tại sao) - Động lực thực hành thói quen: Đây là câu hỏi quan trọng nhất quyết định sự thành bại của mỗi người. Vì mỗi cá nhân có một nền tảng khác nhau, chúng ta phải tự tìm ra động lực và cách thức của chính mình. Mỗi quyết định của chúng ta đều xuất phát từ một nỗi sợ sâu bên trong. Khi tìm ra nỗi sợ sâu thẳm đó, bạn đã giải quyết được một nửa vấn đề. Một nửa còn lại phụ thuộc vào sự quyết tâm và kiên trì của bạn.

																																											Mục đích của tất cả những thói quen này là hướng đến một cuộc sống với 3 tiêu chí: sự tối giản (minimalist), sự hiệu quả (productivity) và chánh niệm (mindfulness - một lối sống thiền, tập trung vào hiện tại).

																																											Thời gian là loại tài sản công bằng nhất vì ai cũng chỉ có 24 giờ mỗi ngày. Cách bạn đầu tư vào bản thân ngày hôm nay sẽ quyết định sự tiến bộ trong sự nghiệp, hài lòng với bản thân và chất lượng cuộc sống của bạn ngày mai.', 8, 3),

	('SKK0014', N'Khi Cô Độc Là Sự Lựa Chọn', 'kcdlslc.png', N'Akiko Shimoju', 83000, 500, 2020, N'Tiếng Việt', 200, N'Bìa Mềm', 220, N'Bạn có cảm giác gì khi ở một mình? Bức bối hay tĩnh tại? Sợ sệt hay tận hưởng? Thấy yên tĩnh hay vắng lặng? Muốn lao ngay đến chỗ ai đó, bất kể là người như thế nào, hay ở yên đấy, chỉ ta với ta?
																																		Hãy thử cảm nhận và suy nghĩ về điều đó, bởi nó rất quan trọng. Nó sẽ đưa bạn đến một trong hai ốc đảo: cô đơn hoặc cô độc.
																																		Nếu ví cô đơn là khoảng không tối tăm vô định, thì cô độc là trời đêm đầy sao tĩnh lặng. Cùng là ở một mình, nhưng "Khi cô độc là sự lựa chọn", ta có thể:
																																		Tận hưởng cảm giác yên tĩnh, không bị ai làm phiền, không bị ai nhìn ngó.
																																		Hướng sự chú ý vào bản thân.
																																		Nhìn ngắm, cảm nhận những gì ta không thể phát hiện khi ở cùng người khác.
																																		Để cảm xúc lắng đọng, để cái đầu nghỉ ngơi, để con tim tĩnh tại.
																																		Náo nhiệt mãi cũng chán, yên ả mãi cũng buồn, tốt hơn cả là dành cho mình một khoảng lặng vào những lúc thích hợp. Giống như trong âm nhạc, khoảnh khắc một âm thanh vừa dứt và nốt nhạc tiếp theo chưa vang lên đẹp đến lạ thường.
																																		Không phải nhốt mình trong nhà lao vô hình, mà là dừng chân một lúc, cảm nhận, khắc ghi những cảm xúc, trải nghiệm trước đó để sẵn sàng cho chặng đường tiếp theo.
																																		Hãy là chú chim cô độc sải cánh trên trời cao, cất tiếng hát trong thầm lặng.', 8, 3),

	('SKK0015', N'Tỉnh Táo Trước Quảng Cáo', 'tttqc.png', N'Cao Đức', 95000, 500, 2021, N'Tiếng Việt', 272, N'Bìa Mềm', 300, N'Thử thành thật xem, có phải bạn vừa mua một chiếc áo đang được giảm giá “sốc” mặc dù nó chẳng cần thiết với bản thân không?
																																Hay là đêm qua bạn vừa thức đêm để săn sale online mười mấy đơn hàng 1k khiến sáng hôm sau đi học/ đi làm muộn?
																																Rồi thì thời sinh viên đã từng tham gia mấy buổi học tiếng Anh miễn phí của các trung tâm, cuối cùng bị “dụ” đăng ký khóa học tốn vài triệu đồng mà kết quả chẳng đi đến đâu?

																																Có thể bạn không nhận ra, nhưng những thứ bạn tưởng như là miễn phí ấy thực ra lại rất “đắt đỏ”. Bởi để có được đồ miễn phí, bạn đôi khi phải đánh đổi thời gian, sự chuyên nghiệp, quyền riêng tư, tính kịp thời, thậm chí là sức khỏe lâu dài và số tiền lớn hơn phía sau. Chúng ta lầm tưởng trả phí có rủi ro, miễn phí không có rủi ro, rốt cuộc đặt tiêu điểm chú ý lên chi phí, nhưng lại xem nhẹ MỤC ĐÍCH CHÍNH của mình – Miễn phí có thể mang đến GIÁ TRỊ mà bạn thật sự cần hay không?

																																Bản năng của con người vốn sợ mất mát, nên thường thích sự miễn phí là điều dễ hiểu. Nhưng suy nghĩ này cũng vô tình dẫn đến một loại tư duy cực kỳ tai hại: thích những thứ hiệu quả nhanh mà không cần bỏ ra công sức. Không muốn làm mà vẫn có “thứ ngon” để ăn? Nỗ lực “ảo” lại còn muốn thành quả lớn? Vậy thì đây chính là miếng mồi ngon cho kẻ xấu lợi dụng chúng ta đấy!

																																Trong thời đại bùng nổ thông tin như hiện nay, luôn giữ được cái nhìn tỉnh táo là một kỹ năng vô cùng quan trọng. Vậy nên cuốn sách “Tỉnh táo trước quảng cáo” này ra đời với mục đích vạch trần những chiêu trò lợi dụng lòng tin của con người, giúp bạn tránh được các “giá trị ảo” và những khoản “thuế IQ” không cần thiết.

																																Trên đời này làm gì có bữa ăn nào MIỄN PHÍ. Hãy tỉnh táo để bớt đi những hối hận sau này bạn nhé!', 8, 6)


--insert Deepbooks
insert into Books(bookID, bookName, bookImage, author, price, quantity, publishingYear, [language], numberPage, form, [weight], bookDescribe, cid, pcid)
values
	('SKD0001', N'Yên', 'yen.png', N'@yenlamtho', 88000, 500, 2022, N'Tiếng Việt', 168, N'Bìa Mềm', 170, N'“Tớ mong cậu luôn biết

																											Cậu rất tốt, rất xinh

																											Cậu thông minh, hiếu biết

																											Mong cậu yêu lấy mình.” 

																											Thân gửi tới những cô gái nhỏ tập thơ “Yên”, cuốn sách đầu tay của tác giả trẻ @yenlamtho 

																											Đã bao giờ cậu bị thương tổn bởi những lời phán xét một chiều?

																											Đã bao giờ cậu vì yêu thương người khác mà quên đi chính mình?

																											Hay băn khoăn trong tương lai cậu sẽ là ai? 

																											Vài năm nữa, hay là cả cuộc đời này, đều mong rằng cậu sẽ hạnh phúc dù có thế nào đi chăng nữa.

																											Mong rằng cậu chỉ là chính mình thôi chứ đừng là ai khác.

																											Mong rằng nước mắt hay nụ cười đều có thể tự nhiên mà đến, tự nhiên mà đi trên khuôn mặt cậu, không cần kìm nén cũng chẳng gượng gạo.

																											Yêu đời, yêu người hay yêu chính mình, mong rằng cậu sẽ sống thật an yên.

																											Đó chính là những thông điệp đầy tích cực mà “Yên" muốn dành tặng bạn.

																											“Yên” là một lời động viên, lời nhắn gửi dịu dàng mà tác giả @yenlamtho muốn gửi gắm tới độc giả của mình. Những lời thơ trong trẻo, dịu dàng nhưng không kém phần tinh nghịch sẽ khiến bạn bật cười vui vẻ khi thấy bóng hình mình qua những góc nhìn thân quen của “Yên”. Không chỉ là chuyện tình yêu đơn thuần, Yên còn dạy người ta cách yêu lấy chính mình thông qua những hình ảnh và ngôn từ đẹp đẽ, dịu dàng.

																											Hãy để “Yên” gửi tới cậu một cái ôm đầy ấm áp và ngọt ngào.

																											Nếu có thể, hãy luôn chăm sóc bản thân như một đứa trẻ cần được vỗ về yêu thương. Nếu sự yêu thương bên trong đủ đầy, ta sẽ dễ dàng bao dung, chấp nhận và trao đi yêu thương cho người khác nhiều hơn.

																											Khi cho đi nhiều hơn, tự khắc bên trong ta sẽ dần tìm lại được sự vui vẻ và thanh thản ở bên trong chính tâm hồn mình.

																											Hy vọng rằng, sau khi khép lại “Yên", cũng là lúc mỗi chúng ta tìm lại được sự bình yên trong chính tâm hồn mình.', 9, 5),

	('SKD0002', N'Thương Người Năm Ấy Rời Xa Năm Này', 'tnnarxnn.png', N'Hall Of Dreamers', 86000, 500, 2020, N'Tiếng Việt', 216, N'Bìa Mềm', 220, N'“Niềm vui thì không phải lúc nào cũng cần được chia sẻ, nhưng nỗi buồn, thì vĩnh viễn nên được giải tỏa cùng nhau.
																																						Đáng thương nhất của mỗi người, chính là mất đi khả năng bộc lộ cảm xúc.
																																						Đáng giận nhất của mỗi người, chính là cứ thích tỏ ra mình vẫn ổn, dù ngực trái đang đau nhức từng cơn.”

																																						“Chúng tôi viết cho nỗi buồn của người trẻ” - Nhóm tác giả Hall Of Dreamers bằng những gì chân thật nhất sẽ đưa "Thương người năm ấy rời xa năm này" khẽ chạm vào tòa thành ký ức chôn sâu trong lòng mỗi người để rồi nhận ra những giá trị của "xúc cảm" và "biến cố".

																																						"Thương người năm ấy rời xa năm này” giống như một trạm dừng chân nơi nhà ga tuổi trẻ. Nơi để bạn cùng trải lòng với những nỗi buồn thật đẹp và hoài niệm của thanh xuân. Nơi mà bạn có thể thoải mái hòa mình cùng những lần trật nhịp yêu đầy tự do và đôi lúc là dũng khí để ngắm nhìn những kỷ niệm đã héo úa với người nhưng còn sắc lẹm với ta ngay cả trong hiện tại.

																																						"Chúng ta cần biến cố để trưởng thành. Để thôi tin tưởng và tiếp tục những mù quáng thời thanh xuân. Chấp nhận một điều gì đó đủ an bình cho tương lai tới".

																																						Nếu bạn còn ủ rũ vì những dang dở, vì những tan vỡ không thành tiếng, vì những mơ hồ không rõ quanh mình. Tháng tư này hãy để “Thương người năm ấy rời xa năm này” ru bạn vào một nỗi mơ an yên dịu dàng, đưa bạn về với nỗi niềm ngày cũ nhưng không phải để buồn hay đắm chìm trong quá khứ mà để bạn đối diện với nó và mỉm cười, nhẹ nhõm tiếp tục đi tiếp con đường mà mình đang hướng tới với ngập tràn hy vọng và an lành.

																																						Mong bạn hiểu rằng, dù có đớn đau hay cô độc, năm tháng đã qua đều là một món quà.
																																						Chỉ cần chúng ta bước chân ra khỏi ô cửa ấy, mọi thứ đã phải ở lại với thời gian.', 9, 5),

	('SKD0003', N'Mình Về Hà Nội Để Thương Nhau', 'mvhndtn.png', N'Minh Ngọc', 109000, 500, 2019, N'Tiếng Việt', 200, N'Bìa Mềm', 220, N'Trong cuộc đời chúng ta, mỗi người đều có một nơi để trở về, một nơi ôm ấp và chở che cho chúng ta trong những ngày áp lực đến nỗi muốn vứt hết tất cả, những ngày cảm thấy chẳng có ai thấu hiểu được mình, những ngày cô độc và mệt nhoà Một nơi để lưu giữ những kỷ niệm tuổi trẻ, thanh xuân và cùng ta khóc, cùng ta cười và cùng ta trưởng thành.

																																			“Mình về Hà Nội để thương nhau” là cuốn tự truyện viết về một nơi như thế, bởi một tình yêu tha thiết dành cho thành phố này.

																																			“Mình về Hà Nội để thương nhau” là bức tranh gần gũi, ấm áp và đa màu sắc của những người trẻ còn đang hoang mang, chao đảo trước ngưỡng cửa trưởng thành nhưng vẫn mang trái tim son trẻ, tràn đầy tình yêu với Hà Nội.

																																			Hà Nội chất chứa câu chuyện của tuổi trẻ có phần điên dại, của thanh xuân trong trẻo, của những đêm nhạc indie, những câu hát vang một góc phố. “Mình về Hà Nội để thương nhau” ta tìm về Hà Nội, về người thương, về những khoảnh khắc khó quên từ trong những câu chuyện nhỏ viết về kỷ niệm, trải nghiệm của chính tác giả cho những ngày thu, xuân, đông, hạ, những ngày Hà Nội còn xanh bằng lối kể chuyện nhẹ nhàng, thủ thỉ đậm chất Hà Nội.

																																			Nếu là một người yêu Hà Nội, bạn chớ bỏ qua bất kỳ chi tiết nào trong cuốn sách này. Bởi khi bạn là một mảnh của thủ đô, chắc hẳn bạn sẽ thấy thanh xuân nồng nhiệt của chính mình trong đó, lang thang giữa một góc dưới tán cây của đường Hoàng Diệu, đường Phan Đình Phù Còn nếu không, cuốn sách sẽ là cẩm nang giúp bạn có cái nhìn rõ nét về Hà Nội và mong một lần được đặt chân đến thành phố cổ kính đầy lãng mạn này, để trải nghiệm, cảm nhận những "chuyện" của Hà Nội.

																																			Bạn đừng ngạc nhiên khi cuốn sách khiến chúng ta kể cả những ai chưa một lần ghé thăm Hà Nội phải thốt lên, “Chao ôi, Hà Nội thật tuyệt!” và nhận ra rằng có một Hà Nội đẹp đến vậy, có nhiều điều về Hà Nội bạn chưa rõ tới vậy, để rồi thêm yêu một Hà Nội có những lúc rất xô bồ, nhưng cũng rất trầm tĩnh khiến lòng bạn bình yên.

																																			Và gấp lại trang sách, mong bạn có thể cảm nhận Hà Nội một cách chân thật hơn. Hà Nội tấp nập, ồn ào tàu xe và đầy những thử thách của tuổi trẻ thật đấy, nhưng Hà Nội cũng chính là nơi trú ẩn thân thương, dịu dàng dành cho những ai biết yêu, biết thương, biết trân trọng thành phố này!', 9, 5),

	('SKD0004', N'Dưới Trời Xanh Không Có Anh Vẫn Mỉm Cười', 'dtxkcavmc.png', N'Minh Lạc', 83000, 500, 2020, N'Tiếng Việt', 192, N'Bìa Mềm', 203, N'Thật ra từng ấy năm cố gắng trở nên tốt đẹp hơn, chỉ mong được một lần đường hoàng đứng bên cạnh anh ấy. Ba mẹ anh ấy không dị nghị, ba mẹ tôi không xấu hổ, anh ấy không vì bốn chữ “môn đăng hộ đối" mà chùn chân. Còn tôi không vì những điều trên mà đỏ mắt.

																																					Vậy mà, cuối cùng, mắt vẫn cay

																																					Em thấy đấy, trong tình yêu, vốn không phải em mong muốn thuận lợi, cả đời sẽ đều êm ấm.

																																					Có những lúc giữa hạnh phúc chúng ta lại gặp phải những biến cố bất ngờ đủ khiến mình nặng nề, buồn bã và chẳng còn thấy yên bình.
																																					Có những lúc chúng ta tưởng chừng đã gặp đúng người, có thể kết thúc những chuỗi ngày cô đơn, nhưng dường như càng nghiêm túc, lại càng không được như mong đợi. Những hy vọng tươi đẹp ban đầu ngày một trở nên ít ỏi, thất vọng thì lại ngày một tích luỹ trở nên nhiều thêm.
																																					Lại có cả những lúc chúng ta tìm mọi cách để trốn tránh mọi thứ vì sợ hãi, vì chẳng dám bắt đầu lại, vì đã mất niềm tin.

																																					Nhưng cô gái ơi, dưới trời xanh này em phải tin rằng:
																																					Chúng ta rồi sẽ ổn thôi.
																																					Không phải người này sẽ là người khác.
																																					Không có vết thương nào kéo dài mãi.
																																					Không có tình yêu đau khổ một phía nào có thể duy trì.

																																					Dưới trời xanh này, dù có ai hoặc không ai, mong em hãy mỉm cười thật an yên.
																																					Bởi đằng sau tất cả những điều đã qua, đã mất, những buồn vui, tiếc nuối đến cuối cùng chúng ta đều cần cảm thấy hạnh phúc, dù là ngắn hạn hay dài hạn trong chính tim mình.', 9, 5),

	('SKD0005', N'Yêu Không Định Kiến', 'ykdc.png', N'VOGE', 83000, 500, 2020, N'Tiếng Việt', 184, N'Bìa Mềm', 200, N'Xung quanh bạn có những định kiến nào?
																														Con trai thì?
																														- Không được bộc lộ cảm xúc
																														- Phải rộng lượng
																														- Học cao làm to
																														Và con gái thì?
																														- "Học cao thằng nào nó lấy"
																														- Con nhà người ta
																														- "Làm cao sao lo nội trợ được"
																														Có thể thấy rằng, “định kiến” đến từ những tư duy đã cũ của thế hệ trước, đến cả từ những áp lực xã hội. Và để góp phần vào công cuộc, làm giảm bớt hay phá vỡ dần những định kiến vẫn còn tồn tại “Yêu không định kiến” – sẽ cùng người đọc kiểm định lại những “chuẩn mực” sai lầm, hướng tới một xã hội mà mọi cơ hội, đánh giá đều công bằng với cả nam và nữ.

																														“Yêu không định kiến” - đây là cuốn sách của nhóm tác giả Vietnam Organization for Gender Equality (VOGE), một tổ chức hoàn toàn do thanh niên lập ra với sứ mệnh xây dựng thế hệ trẻ Việt Nam có đầy đủ kiến thức về bất công giới, có trách nhiệm và ý thức thay đổi, đóng góp cho cộng đồng.

																														Tập trung vào những vấn đề giới và định kiến xoay quanh tình yêu đôi lứa, “Yêu không định kiến” đưa ra cuộc thảo luận đa chiều về tình yêu với các mối quan hệ xã hội: từ những bậc phụ huynh đến bạn bè và cả những người quan sát bên ngoài xã hội.

																														Thông qua những câu chuyện không của riêng ai: chuyện ai là người chi trả trong những cuộc hẹn hò, những hành vi ghen tuông, nữ tính xích mích nữ quyền… nhóm tác giả giúp người đọc nâng cao nhận thức về tình yêu, tránh trở thành nạn nhân của bạo lực giới và bất bình đẳng giới. Không chỉ vậy, VOGE chỉ ra những hậu quả, những hành vi độc hại vì định kiến và mang đến cái nhìn sâu sắc từ bên trong các định kiến chênh lệch giữa thế hệ trẻ và phụ huynh đồng thời gợi ý những cách xử lý để cuộc sống tươi sáng hơn.

																														Với những câu hỏi và sự gợi mở, cuốn sách đề cập đến những vấn đề gây tranh cãi nhưng không áp đặt mà mang tính mở rộng suy nghĩ, để mỗi người can đảm đấu tranh, can đảm yêu thương mỗi ngày.

																														“Giới tính không phải giới hạn! Đừng để điều gì ngăn cản bạn yêu thương.”', 9, 5),

	('SKD0006', N'Đổi Nụ Cười Lấy Bên Người Trăm Năm', 'dnclbntn.png', N'Thủy Vũ', 83000, 500, 2021, N'Tiếng Việt', 168, N'Bìa Mềm', 200, N'“Có lẽ tình yêu nào cũng luôn có một kẻ ngu ngơ” – Thủy Vũ đã viết trong cuốn sách “Đổi nụ cười lấy bên người trăm năm” của mình như vậy. Ngu ngơ ở đây là yêu mà không dám thổ lộ; là rung động nhưng lặng lẽ chọn cách rời xa; là tưởng đã chạm vào nhưng đến cuối, hai người cách biệt hai phương trời. Để rồi phải mộng ước được đánh đổi niềm vui, nụ cười – sẵn sàng lựa chọn bất hạnh, đau khổ chỉ cần được bên người mình yêu mà thôi.

																																			Thủy làm thơ bằng tâm hồn nhạy cảm, dễ tổn thương. Luôn đặt nhân vật vào những “chiếc bóng cô đơn”, mang “nỗi buồn không đáng có”, đẩy mình vào “bi kịch” & “dối lừa”, chỉ biết cô đơn mà khóc, không một người bên cạnh thở than:

																																			Em có thể gọi cho anh được không?

																																			Em vẫn nhớ dãy số lạnh lùng ấy

																																			Gọi trăm cuộc nhưng anh không nhấc máy

																																			Như thể em là kẻ lạ trong đời.

																																			Bạn đã từng nhấc máy gọi cho ai đó mà chỉ sợ họ đã thay số chưa? Đã từng chỉ muốn nhắn hỏi hôm nay thế nào nhưng sợ không được hồi đáp chưa? Tôi tin là có! Và bởi chúng ta ai cũng từng trải qua những cung bậc cảm xúc như vậy nên cuốn sách này dễ đọc, dễ chạm vào phần sâu nhất trong trái tim bạn, kể cả khát khao thầm kín nhất:

																																			Muốn là sợi dây biết buộc chặt
																																			Để giữ lấy những thứ cho riêng mình
																																			Muốn làm cánh chim trời điêu linh
																																			Trốn trong mây mà khóc đời giông bão.

																																			Ngoài phần thơ “Nói với chính mình” như lời tâm tình thủ thỉ , “Đổi nụ cười lấy bên người trăm năm” còn một phần truyện ngắn mang tên “Nói với tình yêu” lại là lời hồi đáp cho tất cả. Hầu hết, nhân vật trong những truyện ngắn của Thủy đều là người trẻ, sợ cô đơn, mang vết thương sâu trong lòng, theo đuổi một mối tình hư thực. Đó cũng là những người trốn tránh thực tại bằng cách dịch chuyển đến những vùng đất mới, xa lánh tất cả mọi người, thậm chí lựa chọn cách cực đoan nhất là kết liễu sinh mệnh của chính mình. Nhưng tình yêu mà, chúng ta không thể lý giải, cũng không cần lý do. Chỉ cần một lần được sống chết vì người mình yêu cũng đủ để nỗi buồn hóa thành màu xanh:

																																			Ai cũng nghĩ mình đau muôn ngả
																																			Nhưng chung lại cùng đi một lối về
																																			Khi thời gian thổi phai tất cả
																																			Cũng là lúc ta tỉnh khỏi cơn mê.

																																			Mong bạn, khi gấp lại cuốn sách này, cũng bước ra khỏi “cơn mê” của mình, để chạm vào mùa xuân với tất cả dịu ngọt thiết tha nhất bạn nhé!', 9, 5),

	('SKD0007', N'Buồn Treo Góc Tủ Chuyện Cũ Phai Mờ', 'btgtccpm.png', N'Sad Boy With Phone', 83000, 500, 2021, N'Tiếng Việt', 224, N'Bìa Mềm', 250, N'Luôn có 2 khoảnh khắc trong ngày khiến người ta không thôi nhung nhớ, đó là hoàng hôn và ban mai. Thời khắc cuối cùng của một ngày, lúc chập choạng nhá nhem tối, chúng ta sẽ trôi về một miền thương nhớ cũ - nhớ những thứ chúng ta không thể tìm lại, chỉ đến và rời đi một lần duy nhất. Miền thương nhớ ấy được gói ghém trong “Buồn treo góc tủ, chuyện cũ phai mờ” - một cuốn sách viết về những dở dang của tuổi đôi mươi, khi chúng ta có thể bỏ lỡ một người mình yêu, một hoài bão, một ngã rẽ nào đó trong đời. Những đứt gãy tuổi đôi mươi ấy có thể theo chúng ta rất nhiều năm về sau, nhưng cuối cùng, chúng ta chỉ có thể đón chúng trong hoài niệm dưới hoàng hôn vàng rực.

																																						Nhưng Buồn treo góc tủ, chuyện cũ phai mờ cũng có ánh vàng mơ của thời khắc ngày mới. Đó là khi chìm đắm trong những tổn thương ngày xưa cũ, chúng ta sẽ học được cách trân trọng, yêu thương mọi điều đã qua:

																																						Rồi sẽ có người đến kịp lúc ban mai

																																						Thay em giữ hộ tổn thương ngày xưa cũ

																																						Họ sẽ trao em một tình yêu vừa đủ

																																						Để cả một đời êm ả tựa như ru.”

																																						Buồn treo góc tủ, chuyện cũ phai mờ là lời nhắn gửi đến mỗi chúng ta rằng: Hoàng hôn của hôm nay khác hoàng hôm của hôm qua, người của năm này đã khác nhiều năm trước. Mọi thứ thay đổi theo quy luật của tự nhiên, mà gặp mặt và chia ly cũng là một phần trong số đó. Cuộc đời làm sao có thể nắm lấy hạnh phúc khi mãi ôm những điều cũ kĩ? Một đời rát dài, sẽ đến lúc chuyện cũ mờ phai. Mong bạn mở lòng tha thứ để ngày mai sống một đời an nhiên, hạnh phúc bạn nhé!', 9, 5),

	('SKD0008', N'Hẹn Nhau Phía Sau Tan Vỡ', 'hnpstv.png', N'An', 86000, 500, 2020, N'Tiếng Việt', 232, N'Bìa Mềm', 250, N'Cuốn sách này…

																															Dành tặng những tâm hồn tan vỡ, đã yêu, đã chia ly, đã từ biệt…

																															Và lời chúc cho một cuộc hạnh ngộ đủ đầy yêu thương.

																															“Có nhiều lần tự hỏi, tại sao ngoài kia có biết bao chuyện tình đẹp, sao mình lần nào cũng dở dang?”

																															Sau chia tay, có phải bạn luôn loay hoay với rất nhiều hoài nghi, vô vàn thứ cảm xúc rối ren phức tạp, và tự hỏi như thế, tự căn dặn mình những lời lẽ: mạnh mẽ lên, sẽ ổn thôi, đừng hối hận…?

																															Cũng có thể, bạn trải nghiệm những mối tình thoáng chốc, để rồi sau cuối, trong những ngày ngập tràn cô đơn, đã luôn tự hỏi, làm thế nào để trở về khoảng thời gian hạnh phúc bên – người – xưa – cũ?

																															Hay chỉ là muốn biết, liệu có một cách nào khác, để bạn được hạnh phúc trong những dự tính mới - dù chỉ một mình…?

																															Câu trả lời nằm ở cuốn sách này – Hẹn nhau phía sau tan vỡ - một cuốn tản văn man mác buồn khiến những ai đã từng rung động phải thổn thức như đối diện với chính câu chuyện của mình. Nhưng cuốn sách này tuyệt đối không chỉ chất chứa những điều bi lụy, chua xót. Sau mỗi câu chữ, tác giả luôn biết cách nhen nhóm lên một ngọn lửa lòng, để lấp đầy những khoảng trống trong tâm hồn tan vỡ, tìm về nơi chất chứa những kỉ niệm cũ đáng nhớ nhưng phải quên, để bạn đủ dũng khí nói lời xin lỗi và cảm ơn:

																															Xin lỗi vì đã để trái tim phải chịu nhiều tổn thương

																															Xin lỗi vì phải đi thật xa và thật lâu

																															Mới hiểu rằng phía sau tan vỡ là con đường từ tổn thương đến yên bình

																															Và mình, hẹn nhau ở phía cuối…', 9, 5),

	('SKD0009', N'Chuyện Kể Rằng Có Nàng Và Tôi', 'ckrcnvt.png', N'Nhiều Tác Giả', 72000, 500, 2022, N'Tiếng Việt', 152, N'Bìa Mềm', 200, N'Đối với những người trẻ được sống như ý không phải lúc nào cũng dễ dàng, đặc biệt với những người đã phải trải qua một quãng thời gian khó khăn rồi mới có thể tìm được con người thật của mình, là chính mình. Những câu chuyện tình của họ có nhiều dang dở vì những mặc cảm, rào cản, khao khát được làm điều mình muốn, gắn bó với người mình yêu thương cả đời là các mong ước nhỏ trong lòng.

																																			Để rồi khi không thể giãi bày cùng ai, họ mang những điều thầm kín thổi vào những vần thơ nơi chỉ có những “câu chuyện về nàng và tôi”.

																																			“Chuyện kể rằng có nàng và tôi” là cuốn sách nhỏ với những áng thơ nhẹ nhàng, lãng mạn thể hiện mối giao hòa đẹp đẽ trong tâm hồn những người con gái. Tình yêu của họ vượt trên tất thảy mọi định kiến, chỉ còn lại là những cảm xúc dạt dào, vô tận. Trong những câu thơ đôi khi họ là những người lãng du cô đơn bước chân qua đám đông tranh cãi ồn ào và luôn khao khát tìm kiếm hạnh phúc.

																																			“em chỉ là kiến nhỏ
																																			còn nàng lại là mây
																																			ngẩng đầu lên sẽ thấy
																																			mà sao với được đây”

																																			Rồi đôi khi lại đưa ta vào những cung bậc hân hoan, hạnh phúc của tình yêu, sự bao dung của những trái tim ngập tràn nắng ấm, vượt qua mọi ánh nhìn xa lạ của xã hội, mãi khiến ta muốn đắm chìm trong đó.

																																			“Ta yêu nhau từ những điều nhỏ nhặt
																																			Chút vụn vặt ta góp lại yêu thương
																																			Ta yêu nhau giữa cuộc sống vô thường
																																			Nắm tay nhau qua một đời nghiêng ngả”

																																			Dưới ngòi bút uyển chuyển, sắc sảo của nhiều tác giả, “Chuyện kể rằng có nàng và tôi” không chỉ là một cuốn sách về tình yêu dang dở, bao cảm xúc mật ngọt tán tỉnh của những nàng đồng tính nữ mà còn là những bản ngã, niềm tin và hy vọng, đủ ngọt ngào để quyến rũ tâm hồn độc giả.  

																																			Cuốn sách giúp bạn gỡ bỏ những bức tường thành định kiến để đắm mình trong tình yêu nhiệm màu, vì ai rồi cũng có quyền hạnh phúc trong thế giới nhỏ của họ dù là giới tính nào đi chăng nữa.', 9, 5),

	('SKD0010', N'Dường Như Hạnh Phúc Bỏ Quên Mình', 'dnhpbqm.png', N'Shin', 90000, 500, 2021, N'Tiếng Việt', 256, N'Bìa Mềm', 300, N'- Dành cho những ai đang loay hoay kiếm tìm hạnh phúc

																																		- Muốn quên đi một gương mặt, một ánh nhìn

																																		- Và thôi không nhắc về năm tháng đón đưa

																																		Giữa những năm tháng tuổi trẻ cuồng nhiệt, luôn có những người bi lụy, cô đơn đến mức cứ tưởng chừng bản thân sẽ đổ ngay trên mặt đất trong vòng một hay hai giây nữa bởi vì không có một điểm tựa, một bàn tay đưa ra níu lại.

																																		Một hay hai giây đó chính là những khoảnh khắc mà chỉ có ai đã từng cô đơn, đã từng mệt mỏi trong một cuộc tình mới có thể hiểu thấu. Người không biết hạnh phúc ra sao? Nó có hình dạng như thế nào? Mùi vị là gì mà con người cứ mải chạy theo để rồi chính mình lại đi lạc trong những mộng tưởng của bản thân? “Dường như hạnh phúc bỏ quên mình” ghi lại những hình ảnh những người trẻ như thế - những người luôn tự vấn bản thân:

																																		Có phải chúng ta khi sinh ra đã được mặc định là dở dang?

																																		Rốt cuộc là chúng ta đang chờ đợi điều gì từ đối phương vậy?

																																		Rốt cuộc là cái bản thân này đang mong mỏi điều gì sau cuộc tình đấy?

																																		Nhiều lúc thấy mình chông chênh quá nhưng lại chẳng biết vị trí cân bằng của chính mình ở đâu để mà trụ lại.

																																		Cuốn sách với những giai điệu buồn bã ngân vang chạm đến trái tim tan vỡ của bạn; nhưng đồng thời cũng là ly cocktail đánh thức sự mạnh mẽ sâu thẳm trong con người bạn. Cũng nhiều lần đau rồi, cũng nhiều mệt mỏi rồi, cũng lắm xót xa rồi, có cố gắng níu giữ thì cũng là vô ích. Chuyện hợp tan trên đời là chuyện thường, vì thế đừng tìm kiếm xa xôi, bởi đánh mất, đôi khi cũng là hạnh phúc.', 9, 5),

	('SKD0011', N'Về Nghe Yêu Kể', 'vnyk.png', N'Minh Chính, MCs', 99000, 500, 2022, N'Tiếng Việt', 168, N'Bìa Mềm', 200, N'"Tình yêu luôn có cách kể chuyện của riêng nó, chỉ là bạn có đủ kiên nhẫn để lắng "
																															Đó là câu mở đầu của chương trình radio Về Nghe Yêu Kể của tác giả Minh Chính – MC’s. Chắc hẳn trái tim bạn ít nhất đã từng rung động một lần vì chữ yêu bởi làm sao có ai sống trên đời mà lại không nhớ thương một người nào. Vì vậy, tình yêu chính là những mảnh ghép muôn hình muôn dạng từ câu chuyện tình yêu của mỗi người.

																															Những dáng vẻ khác nhau của xúc cảm tuổi trẻ, của những trái tim thổn thức vì tình yêu được tác giả cô đọng qua những câu thơ, những lời văn nhẹ nhàng mà thấm thía. Tác giả Minh Chính – MC’s là một người kể chuyện truyền cảm hứng nổi tiếng với những video hàng lượt triệu lượt xem trên kênh “9show”  đã đặt rất nhiều tâm tình để viết lên cuốn sách Về Nghe Yêu Kể.

																															Cuốn sách viết cho tất cả những người đã, đang và chưa từng trải qua tình yêu. Có người cho rằng: Tình yêu đẹp nhất thuộc về những năm tháng thanh xuân, người lại cho rằng tình yêu đẹp là thứ tình cảm vững chãi khi cả hai đã trưởng thành. Dù là dáng vẻ nào thì thứ tình cảm nồng nhiệt, tràn đầy xúc cảm ấy cũng đều mang vẻ lộng lẫy lẫn chút gai góc của một đóa hoa hồng. Nó vừa khiến hai tâm hồn đắm say, nhưng có khi lại làm cho đôi trái tim dại khờ phải rỉ máu.  Những dẫu có đớn đau thế nào, hãy cứ yêu đi đừng e ngại, bởi chúng ta chẳng sống hai lần.

																															Cuốn sách còn dành cho những mỗi tình đơn phương khờ dại những người đã vì quá tin mà lạc lối, vì quá sợ mà rút lui, quá hi vọng để rồi đau đớn, quá hời hợt để vụt mất nhau. Người yêu đơn phương sợ tỏ tình, vì sợ biết được trong tim họ không hề có mình, còn trong tim mình đầy ắp bóng hình họ. Dù thế nào đi nữa, chúng ta vẫn tin sẽ có một cái kết đẹp dành cho những người yêu đơn phương, những người mà tác giả gọi là những người thương thầm đáng yêu.

																															Đáng yêu ở chỗ họ đủ mạnh mẽ che chở cho bạn những chuyện nhỏ to nhưng lại rụt rè ngỏ lời yêu bạn. Dừng lại một chút và quan sát xem, có bao nhiêu mối cơ duyên đang lấp ló quanh mình?

																															Qua những câu thơ, những lời văn trong Về Nghe Yêu Kể bạn sẽ nhận ra cuộc sống này vốn dĩ là một sự cân bằng: mỗi lần sai lầm sẽ làm bạn trưởng thành lên, mỗi lần vấp ngã đồng nghĩa với việc ta phải tự mình vực dậy. Vì ta còn trẻ nên hãy biết sống và yêu theo cách làm cho bản thân mình hạnh phúc: đừng bi lụy khi tình hết, cũng đừng níu kéo lúc tình đi.', 9, 5),

	('SKD0012', N'Đêm Đã Sâu, Sao Em Chưa Tắt Đèn?', 'ddssectd.png', N'Yang Phan', 88000, 500, 2022, N'Tiếng Việt', 184, N'Bìa Mềm', 200, N'Cố nhạc sĩ Trịnh Công Sơn từng viết “Lúc còn trẻ chúng ta từ bỏ, cho rằng đó chỉ là một cuộc tình, nhưng cuối cùng mới biết, đó thực ra là cả cuộc đời".

																																			Phải những ai từng bỏ lỡ nhau mới hiểu điều này đau đớn nhường nào.

																																			Nhưng còn những người vẫn luôn biết trân trọng tình cảm của mình thì sao?

																																			Thì cũng đâu phải câu chuyện nào cũng sẽ có kết thúc đẹp?

																																			Vẫn luôn có hàng trăm ngàn câu chuyện tình dang dở, dù người ta biết tình yêu đó là chính là thứ mình mong muốn cả đời.

																																			Những cuộc tình như vậy, phải chăng còn day dứt hơn?

																																			Chúng ta hãy cùng nhau đi tìm bình yên bên trong những khổ đau qua cuốn sách Đêm Đã Sâu, Sao Em Chưa Tắt Đèn? của tác giả Yang Phan. Chàng tác giả trẻ được yêu mến bởi những câu chuyện buồn, nhưng thật đến đau lòng.

																																			Đêm Đã Sâu, Sao Em Chưa Tắt Đèn? ra đời với mong muốn cùng bạn nhìn thẳng vào nỗi đau của bản thân và những người xung quanh thông qua 28 câu chuyện. Mỗi nhân vật, mỗi tình huống, mỗi niềm thống khổ trong 28 câu chuyện này sẽ giúp bạn nhận ra mình không cô đơn, rằng trên thế giới vẫn có triệu triệu người đã và đang chống chọi với mất mát, đau thương cùng khó khăn trong hành trình trưởng thành.

																																			Quan trọng hơn, qua Đêm Đã Sâu, Sao Em Chưa Tắt Đèn?, tác giả cũng muốn gửi gắm một điều đến bạn: Trong bóng tối đen đặc như nhung, luôn có sự hiện diện của những vì sao. Chấm sáng hy vọng vẫn luôn ở đâu đó xung quanh bạn.

																																			Mong bạn khi đến với Đêm Đã Sâu, Sao Em Chưa Tắt Đèn? sẽ nhận ra ngoài kia mây đen đã dần tản đi, để những đốm sáng bắt đầu hiện hình…', 9, 5),

	('SKD0013', N'Tàn Tro', 'tt.png', N'HIRO t', 108000, 500, 2022, N'Tiếng Việt', 264, N'Bìa Mềm', 300, N'Nếu như một ngày, thế giới rơi vào bóng tối. Vạn vật lụi tàn thành đống tàn tro. Cơ hội được sống chỉ dành cho số ít người may mắn. Liệu đứng giữa ranh giới mỏng manh của sự sống và cái chết, bạn có thể giữ vững được sự thiện lương vốn có? Bạn sẽ nhường điều may mắn ít ỏi ấy cho người khác, hay chiến đấu đến cùng để tiếp tục được sống?

																											“Tàn tro” là bức tranh u tối về cuộc chiến tâm lý của những người đang đấu tranh trong thành phố gò bó, ẩn chứa nhiều nguy hiểm bởi đại dịch virus “12 phút đen tối”. Với nỗi bất an về từng cơn đau tước đoạt đi sự sống đang hiện hữu xung quanh, họ dần trở nên hoài nghi lẫn nhau và bắt đầu buông lơi những giá trị vốn có của mình.

																											“Chẳng ai biết ngày mai sẽ ra sao khi mà hôm nay họ còn chưa chắc liệu mình có thể sống sót hay không.”

																											Trên chiếc xe chật ních chứa đựng đầy ắp khao khát được sống của những người còn sót lại, họ tìm đường tới Thánh Địa hay tìm đến mảnh đất mà họ được "an toàn", HIRO t vẽ ra bao góc nhìn đa chiều về cuộc chiến sinh tồn. Thật giả dường như chỉ còn là một ranh giới mong manh và đôi khi những người được họ dành hết tình cảm lại trở thành gánh nặng và tình yêu cũng có thể trở thành con dao hai lưỡi.

																											Nhưng rồi đứng giữa sợi dây sinh tử mỏng manh, liệu tình yêu có trở thành phép màu giúp con người ta tái thiết sự sống, giúp vạn vật hồi sinh từ đống tàn tro?

																											“Tàn tro” sẽ giúp giải đáp mọi thắc mắc của bạn. Khép lại những trang sách cuối cùng, bạn sẽ trân trọng hơn những cơn mưa hối hả ngày hè, biết ơn buổi sáng thức giấc được khỏe mạnh, quý trọng hơn một cái ôm, một cái nắm tay an ủi giữa những ngày thật bình thường. Vì “Thời buổi này, hạnh phúc đôi khi rất đơn giản. Một bữa ăn no. Một giấc ngủ đầy đặn. Một lộ trình bình an. Và một niềm tin rằng vạch đích ngày càng gần họ hơn.”

																											Mong manh nhất là con người nhưng kiên cường nhất cũng chính là con người.', 9, 5),

	('SKD0014', N'Một Ngày Giông Bão Đi Qua', 'mngbdq.png', N'Duy Mỹ', 82000, 500, 2022, N'Tiếng Việt', 152, N'Bìa Mềm', 150, N'Gửi đến bạn

																																Người đã từng nghĩ đến việc rời đi

																																Người đã từng chịu đựng sự chia ly

																																Người đã từng rơi và trái tim

																																Từng tan nát

																																Vì trong mỗi chúng ta

																																Là một ngôi sao “vẫn tỏa sáng đến tận cùng”

																																“Một ngày giông bão đi qua” của tác giả Duy Mỹ chính là lời an ủi dịu dàng nhất dành tặng bạn sau những đau thương bạn đã và đang trải qua trong cuộc đời quá đỗi chông chênh này. Cuốn sách bao gồm nhiều vần thơ tình gây thương nhớ, những câu tản văn đi vào sâu trong trái tim đánh thức tình yêu tưởng chừng đã ngủ quên nơi ngực trái của bạn.

																																Dù cho bạn yêu ai, và đó là tình yêu như thế nào, hai người đàn ông, hai người phụ nữ, hay một người phụ nữ và một người đàn ông, thì tình yêu luôn là những gì tốt đẹp nhất mà bạn có được. Nên nếu bạn yêu ai đó, hãy níu giữ lấy tình yêu ấy. Vì đôi khi nó chỉ đến với bạn một lần duy nhất. Hãy tôn thờ, trân trọng và giữ chặt lấy nó.

																																Suy cho cùng, tình yêu là thứ duy nhất giúp con người rũ bỏ tính tự phụ và cái tôi ngông nghênh của mình.

																																Mong rằng,

																																Ngày mai sẽ là một ngày tuyệt đẹp trên đồi sương giăng đầy nắng và gió. Đôi vai trần này không gánh những đau thương.

																																Cho dù đi qua bao nhiêu giông bão, bạn vẫn giữ được trái tim nguyên vẹn yêu thương như lúc đầu.', 9, 1),

	('SKD0015', N'Đến Cuối Cùng Ai Cũng Cần Một Người Thương', 'dccaccmnt.png', N'Én - Thích A Tèo', 98000, 500, 2023, N'Tiếng Việt', 240, N'Bìa Mềm', 300, N'Đến cuối cùng, ai cũng cần một người thương.

																																								Thương hết cả những lúc bạn xấu xí.

																																								Thương hết cả những xót xa để bạn không còn cảm thấy đơn độc, tủi hờn.

																																								Thương cả những lúc bạn cáu gắt vì mệt mỏi, không bao giờ bỏ bạn mà đi.

																																								Đến cuối cùng, ai cũng cần có một người thương, hoặc thương một ai đó, để có thể cảm nhận được vị ngọt của yêu thương, vị chua của giận dỗi, vị chát của mong chờ và cả vị đắng khi tình yêu tan vỡ. Mỗi dư vị khi chúng ta nếm qua sẽ đều để lại một cho bản thân một cảm xúc riêng biệt không thể nào quên.

																																								Và có lẽ, yêu chỉ đơn giản là có một người, luôn đợi một người, trở về, sau những cãi vã, hay khi ta chệch hướng, say đời.

																																								“Đến cuối cùng, ai cũng cần một người thương” - cuốn sách này là sự kết hợp đầy duyên dáng của hai cây viết trẻ “Én” và “Thích A Tèo”. Hai tác giả đã tái hiện lại nhiều dáng vẻ khác nhau của tình yêu qua nhiều câu truyện ngắn với giọng văn gần gũi nhưng không kém phần sâu sắc. Từng áng văn như đi sâu vào trong lòng độc giả. Để rồi, chúng ta sẽ bắt gặp chính bản thân mình trong câu chuyện tình yêu đó, đã từng đắm say, từng hạnh phúc, từng đau khổ khi nhìn người mình thương rời xa.

																																								Và nếu có vấp ngã trên hành trình tình kiếm tình yêu đích thực thì xin bạn hãy nhớ rằng: “Một đời người rất dài nhưng tuổi xuân thì có hạn, đừng lãng phí nó ở một trạm dừng chân mà ta không rõ đó có phải trạm cuối cùng hay không. Tiến về phía trước, biết đâu sẽ bắt gặp một bàn tay luôn chờ đợi mình”.', 9, 5)

