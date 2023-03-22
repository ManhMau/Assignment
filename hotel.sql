use Trading2022
GO

CREATE TABLE [dbo].[Account](
	[accountID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NULL,
	[password] [nvarchar](30) NULL,
	[roleID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[accountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([accountID], [name], [password], [roleID]) VALUES (1, N'admin@gmail.com', N'admin', 2)
INSERT [dbo].[Account] ([accountID], [name], [password], [roleID]) VALUES (2, N'abc@gmail.com', N'123', 1)
INSERT [dbo].[Account] ([accountID], [name], [password], [roleID]) VALUES (3, N'manhmau@gmail.com', N'123', 1)
INSERT [dbo].[Account] ([accountID], [name], [password], [roleID]) VALUES (4, N'manh707@gmail.com', N'123', 1)
INSERT [dbo].[Account] ([accountID], [name], [password], [roleID]) VALUES (5, N'mau1@gmail.com', N'123', 1)
INSERT [dbo].[Account] ([accountID], [name], [password], [roleID]) VALUES (6, N'abc1@gmail.com', N'123', 1)
INSERT [dbo].[Account] ([accountID], [name], [password], [roleID]) VALUES (7, N'a@gmail.com', N'123', 1)
INSERT [dbo].[Account] ([accountID], [name], [password], [roleID]) VALUES (8, N'a1@gmail.com', N'123', 1)
INSERT [dbo].[Account] ([accountID], [name], [password], [roleID]) VALUES (9, N'a2@gmail.com', N'123', 1)
INSERT [dbo].[Account] ([accountID], [name], [password], [roleID]) VALUES (10, N'a3@gmail.com', N'123', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO

CREATE TABLE [dbo].[Room](
	[RoomNO] [int] IDENTITY(1,1) NOT NULL,
	[RoomType] [int] NULL,
	[isActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoomNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (1, 1, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (2, 1, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (3, 1, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (4, 1, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (5, 1, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (6, 2, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (7, 2, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (8, 2, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (9, 2, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (10, 2, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (11, 3, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (12, 3, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (13, 3, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (14, 3, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (15, 3, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (16, 4, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (17, 4, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (18, 4, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (19, 4, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (20, 4, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (21, 5, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (22, 6, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (23, 5, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (24, 6, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (25, 5, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (26, 6, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (27, 5, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (28, 6, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (29, 1, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (30, 1, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (31, 5, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (32, 12, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (33, 12, 0)
INSERT [dbo].[Room] ([RoomNO], [RoomType], [isActive]) VALUES (34, 12, 0)
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
CREATE TABLE [dbo].[RoomType](
	[typeID] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](30) NULL,
	[money] [float] NULL,
	[img1] [nvarchar](100) NULL,
	[img2] [nvarchar](100) NULL,
	[img3] [nvarchar](100) NULL,
	[img4] [nvarchar](100) NULL,
	[square] [int] NULL,
	[peoplePerRoom] [int] NULL,
	[bathNum] [int] NULL,
	[description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RoomType] ON 
INSERT [dbo].[RoomType] ([typeID], [type], [money], [img1], [img2], [img3], [img4], [square], [peoplePerRoom], [bathNum], [description]) VALUES (1, N'Phòng Cổ Điển', 2300000, N'images/codien1.jpg', N'images/codien2.jpg', N'images/codien3.jpg', N'images/codien4.jpg', 40, 4, 1, N'Phòng mang kiến trúc cổ điển thời Phục Hưng, pha đậm nét Châu Âu, tạo cảm giác hoài tưởng cho mỗi khách hàng. Không gian cho những người thích sự lãng mạn, trang nghiêm, cổ kính. Phòng tĩnh lặng, tạo cảm giác dễ chịu cho khách hàng. Hướng nhìn ra biển, chúng ta có thể ngắm những làn sóng xô bồ cùng cảnh hoàng hôn thơ mộng.')
INSERT [dbo].[RoomType] ([typeID], [type], [money], [img1], [img2], [img3], [img4], [square], [peoplePerRoom], [bathNum], [description]) VALUES (2, N'Phòng Gia Đình', 2600000, N'images/giadinh1.jpg', N'images/giadinh2.jpg', N'images/giadinh3.jpg', N'images/giadinh4.jpg', 60, 6, 2, N'Nơi đây là không gian dành cho những gia đình cần sự  thư giãn, bối cảnh hài hòa, dễ chịu. Mỗi gia đình chúng ta chắc hẳn hầu hết sau mỗi ngày làm việc mệt mỏi thì luôn muốn tìm cho mình một chô xả căng thẳng, muộn phiền. Nơi đây chính là không gian dành cho gia đình bạn, nơi gắn kết tình yêu thương giữa vợ chồng và con cái. Đôi khi trong cuộc sống mình phải tạo cho bản thân những khoảnh khắc thật đáng nhớ.')
INSERT [dbo].[RoomType] ([typeID], [type], [money], [img1], [img2], [img3], [img4], [square], [peoplePerRoom], [bathNum], [description]) VALUES (3, N'Phòng Cao Cấp', 3500000, N'images/caocap1.jpg', N'images/caocap2.jpg', N'images/caocap3.jpg', N'images/caocap4.jpg', 30, 3, 1, N'Đơn giản-Sang trọng chính là yếu tố tạo nên sự trang nghiêm. Sẽ phù hợp hơn cho những cuộc gặp gỡ hoặc công tác xa, phong cách lịch thiệp phối giữa cổ điển và hiện đại, mang đến cho khách hàng những trải nghiệm thú vị nhất.')
INSERT [dbo].[RoomType] ([typeID], [type], [money], [img1], [img2], [img3], [img4], [square], [peoplePerRoom], [bathNum], [description]) VALUES (4, N'Phòng Thượng Hạng', 4500000, N'images/thuong1.jpg', N'images/thuong2.jpg', N'images/thuong3.jpg', N'images/thuong4.jpg', 35, 2, 1, N'Không gian toát lên sự quý tộc, đẳng cấp và cực kì sang trọng. Chúng ta chắc hẳn ai cũng có những cuộc gặp gỡ quan trọng, hay là cần một nơi nghỉ ngơi thật sự đẳng cấp. Thật hay Albert chúng tôi tạo ra những không gian quý phái, đáp ứng mọi nhu cầu, sự  tiện nghi của khách hàng.')
INSERT [dbo].[RoomType] ([typeID], [type], [money], [img1], [img2], [img3], [img4], [square], [peoplePerRoom], [bathNum], [description]) VALUES (5, N'Phòng Cổ Điển - Mini', 2000000, N'images/mini1.jpg', N'images/mini2.jpg', N'images/mini3.jpg', N'images/mini4.jpg', 30, 2, 1, N'Phòng mang kiến trúc cổ điển thời Phục Hưng, pha đậm nét Châu Âu, tạo cảm giác hoài tưởng cho mỗi khách hàng. Không gian cho những người thích sự lãng mạn, trang nghiêm, cổ kính. Phòng tĩnh lặng, tạo cảm giác dễ chịu cho khách hàng. Hướng nhìn ra biển, chúng ta có thể ngắm những làn sóng xô bồ cùng cảnh hoàng hôn thơ mộng.')
INSERT [dbo].[RoomType] ([typeID], [type], [money], [img1], [img2], [img3], [img4], [square], [peoplePerRoom], [bathNum], [description]) VALUES (6, N'Phòng Thương Gia', 4000000, N'images/thuonggia1.jpg', N'images/thuonggia2.jpg', N'images/thuonggia3.jpg', N'images/thuonggia4.jpg', 45, 2, 1, N'Phòng nghỉ của khách sạn được trang bị máy điều hòa, truyền hình cáp màn hình phẳng, ấm đun nước, vòi sen, máy sấy tóc và bàn làm việc. Mỗi phòng còn có tủ để quần áo và phòng tắm riêng. Khách nghỉ tại Brandi Gate Hotel & Spa có thể thưởng thức bữa sáng kiểu lục địa. Khách sạn còn có bàn đặt tour và dịch vụ cho thuê xe hơi trong khi trung tâm dịch vụ doanh nhân được trang bị báo, máy fax và máy photocopy.')
INSERT [dbo].[RoomType] ([typeID], [type], [money], [img1], [img2], [img3], [img4], [square], [peoplePerRoom], [bathNum], [description]) VALUES (7, N'Phòng Vip', 5000000, N'images/phongvip1.jpg', N'images/phongvip2.jpg', N'images/phongvip3.jpg', N'images/phongvip4.jpg', 50, 6, 1, N'Giường ngủ Sofitel MyBed cỡ lớn (King size), một phòng ngủ chính, phòng tắm tuyệt đẹp với bồn tắm kiểu Pháp, vòi sen xông hơi và bộ đồ dùng phòng tắm hiệu Hermès, dịch vụ trọn gói của Club Metropole bao gồm ăn sáng, wifi trong phòng và khu vực công cộng, trà chiều, cocktail buổi tối, không gian hội họp, trà và cà phê.')
SET IDENTITY_INSERT [dbo].[RoomType] OFF
GO

CREATE TABLE [dbo].[Booking](
	[bookingID] [int] IDENTITY(1,1) NOT NULL,
	[roomNo] [int] NOT NULL,
	[accountID] [int] NOT NULL,
	[inDate] [datetime] NULL,
	[outDate] [datetime] NULL,
	[notice] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[bookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([bookingID], [roomNo], [accountID], [inDate], [outDate], [notice]) VALUES (1, 21, 2, CAST(N'2022-03-20T00:00:00.000' AS DateTime), CAST(N'2023-03-21T00:00:00.000' AS DateTime), N'thêm 2 khăn tắm')
INSERT [dbo].[Booking] ([bookingID], [roomNo], [accountID], [inDate], [outDate], [notice]) VALUES (2, 21, 2, CAST(N'2022-03-22T00:00:00.000' AS DateTime), CAST(N'2023-03-26T00:00:00.000' AS DateTime), N'them bàn chải đánh răng')
INSERT [dbo].[Booking] ([bookingID], [roomNo], [accountID], [inDate], [outDate], [notice]) VALUES (3, 6, 2, CAST(N'2022-03-24T00:00:00.000' AS DateTime), CAST(N'2023-03-26T00:00:00.000' AS DateTime), N'them sữa tắm')
INSERT [dbo].[Booking] ([bookingID], [roomNo], [accountID], [inDate], [outDate], [notice]) VALUES (4, 1, 2, CAST(N'2022-03-21T00:00:00.000' AS DateTime), CAST(N'2023-03-23T00:00:00.000' AS DateTime), N'them dầu gội')
INSERT [dbo].[Booking] ([bookingID], [roomNo], [accountID], [inDate], [outDate], [notice]) VALUES (5, 16, 2, CAST(N'2022-03-20T00:00:00.000' AS DateTime), CAST(N'2023-03-22T00:00:00.000' AS DateTime), N'ok')
INSERT [dbo].[Booking] ([bookingID], [roomNo], [accountID], [inDate], [outDate], [notice]) VALUES (6, 2, 4, CAST(N'2022-03-20T00:00:00.000' AS DateTime), CAST(N'2023-03-21T00:00:00.000' AS DateTime), N'cần thêm khăn tắm')
INSERT [dbo].[Booking] ([bookingID], [roomNo], [accountID], [inDate], [outDate], [notice]) VALUES (7, 2, 4, CAST(N'2022-03-22T00:00:00.000' AS DateTime), CAST(N'2023-03-28T00:00:00.000' AS DateTime), N'được')
INSERT [dbo].[Booking] ([bookingID], [roomNo], [accountID], [inDate], [outDate], [notice]) VALUES (8, 11, 5, CAST(N'2022-03-20T00:00:00.000' AS DateTime), CAST(N'2023-03-22T00:00:00.000' AS DateTime), N'abc')
INSERT [dbo].[Booking] ([bookingID], [roomNo], [accountID], [inDate], [outDate], [notice]) VALUES (9, 11, 5, CAST(N'2022-03-24T00:00:00.000' AS DateTime), CAST(N'2023-03-28T00:00:00.000' AS DateTime), N'okk')
INSERT [dbo].[Booking] ([bookingID], [roomNo], [accountID], [inDate], [outDate], [notice]) VALUES (10, 7, 1, CAST(N'2022-03-24T00:00:00.000' AS DateTime), CAST(N'2023-03-26T00:00:00.000' AS DateTime), N'thêm 1 chăn')
INSERT [dbo].[Booking] ([bookingID], [roomNo], [accountID], [inDate], [outDate], [notice]) VALUES (11, 3, 5, CAST(N'2022-03-20T00:00:00.000' AS DateTime), CAST(N'2023-03-21T00:00:00.000' AS DateTime), N'thêm 1 gối')
INSERT [dbo].[Booking] ([bookingID], [roomNo], [accountID], [inDate], [outDate], [notice]) VALUES (12, 3, 5, CAST(N'2022-03-23T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), N'cần thêm ghế')
INSERT [dbo].[Booking] ([bookingID], [roomNo], [accountID], [inDate], [outDate], [notice]) VALUES (13, 22, 6, CAST(N'2022-03-20T00:00:00.000' AS DateTime), CAST(N'2023-03-21T00:00:00.000' AS DateTime), N'oka')
INSERT [dbo].[Booking] ([bookingID], [roomNo], [accountID], [inDate], [outDate], [notice]) VALUES (14, 22, 6, CAST(N'2022-03-23T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), N'cần giá treo đồ')
INSERT [dbo].[Booking] ([bookingID], [roomNo], [accountID], [inDate], [outDate], [notice]) VALUES (15, 4, 6, CAST(N'2022-03-21T00:00:00.000' AS DateTime), CAST(N'2023-03-22T00:00:00.000' AS DateTime), N'k có điều khiển máy lạnh')
INSERT [dbo].[Booking] ([bookingID], [roomNo], [accountID], [inDate], [outDate], [notice]) VALUES (16, 12, 6, CAST(N'2022-03-20T00:00:00.000' AS DateTime), CAST(N'2023-03-21T00:00:00.000' AS DateTime), N'abs')
INSERT [dbo].[Booking] ([bookingID], [roomNo], [accountID], [inDate], [outDate], [notice]) VALUES (17, 5, 4, CAST(N'2022-03-20T00:00:00.000' AS DateTime), CAST(N'2023-03-21T00:00:00.000' AS DateTime), N'thêm dép đi trong phòng')
INSERT [dbo].[Booking] ([bookingID], [roomNo], [accountID], [inDate], [outDate], [notice]) VALUES (18, 17, 4, CAST(N'2022-03-20T00:00:00.000' AS DateTime), CAST(N'2023-03-21T00:00:00.000' AS DateTime), N'ok')
INSERT [dbo].[Booking] ([bookingID], [roomNo], [accountID], [inDate], [outDate], [notice]) VALUES (19, 18, 7, CAST(N'2022-03-21T00:00:00.000' AS DateTime), CAST(N'2023-03-22T00:00:00.000' AS DateTime), N'ok')
INSERT [dbo].[Booking] ([bookingID], [roomNo], [accountID], [inDate], [outDate], [notice]) VALUES (20, 17, 7, CAST(N'2022-03-22T00:00:00.000' AS DateTime), CAST(N'2023-03-23T00:00:00.000' AS DateTime), N'khăn mặt')
SET IDENTITY_INSERT [dbo].[Booking] OFF
GO
CREATE TABLE [dbo].[Review](
	[reviewID] [int] IDENTITY(1,1) NOT NULL,
	[accountID] [int] NOT NULL,
	[rating] [int] NULL,
	[status] [nvarchar](300) NULL,
	[roomType] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[reviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Review] ON 
INSERT [dbo].[Review] ([reviewID], [accountID], [rating], [status], [roomType]) VALUES (1, 2, 5, N'phòng đẹp', 5)
INSERT [dbo].[Review] ([reviewID], [accountID], [rating], [status], [roomType]) VALUES (2, 2, 5, N'phong to dep', 2)
INSERT [dbo].[Review] ([reviewID], [accountID], [rating], [status], [roomType]) VALUES (3, 2, 5, N'phong dep the', 1)
INSERT [dbo].[Review] ([reviewID], [accountID], [rating], [status], [roomType]) VALUES (4, 2, 5, N'phong ok', 4)
INSERT [dbo].[Review] ([reviewID], [accountID], [rating], [status], [roomType]) VALUES (5, 4, 5, N'phong sach', 1)
INSERT [dbo].[Review] ([reviewID], [accountID], [rating], [status], [roomType]) VALUES (6, 5, 5, N'phong sach se', 3)
INSERT [dbo].[Review] ([reviewID], [accountID], [rating], [status], [roomType]) VALUES (7, 1, 5, N'phong ok', 2)
INSERT [dbo].[Review] ([reviewID], [accountID], [rating], [status], [roomType]) VALUES (8, 5, 5, N'gọn gàng,sạch sẽ', 1)
INSERT [dbo].[Review] ([reviewID], [accountID], [rating], [status], [roomType]) VALUES (9, 6, 5, N'tốt', 6)
INSERT [dbo].[Review] ([reviewID], [accountID], [rating], [status], [roomType]) VALUES (10, 7, 5, N'phong dep lam', 4)
INSERT [dbo].[Review] ([reviewID], [accountID], [rating], [status], [roomType]) VALUES (11, 8, 5, N'phong sach dep', 4)
INSERT [dbo].[Review] ([reviewID], [accountID], [rating], [status], [roomType]) VALUES (12, 9, 4, N'okkk', 4)
INSERT [dbo].[Review] ([reviewID], [accountID], [rating], [status], [roomType]) VALUES (13, 10, 5, N'abc', 5)
SET IDENTITY_INSERT [dbo].[Review] OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List_Food_Order](
	[bookingID] [int] NULL,
	[foodId] [int] NULL,
	[quantity] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[List_Food_Order] ([bookingID], [foodId], [quantity]) VALUES (1, 2, 1)
INSERT [dbo].[List_Food_Order] ([bookingID], [foodId], [quantity]) VALUES (1, 100, 1)
INSERT [dbo].[List_Food_Order] ([bookingID], [foodId], [quantity]) VALUES (1, 1, 1)
INSERT [dbo].[List_Food_Order] ([bookingID], [foodId], [quantity]) VALUES (1, 200, 1)
INSERT [dbo].[List_Food_Order] ([bookingID], [foodId], [quantity]) VALUES (1, 201, 1)
INSERT [dbo].[List_Food_Order] ([bookingID], [foodId], [quantity]) VALUES (1, 3, 3)
INSERT [dbo].[List_Food_Order] ([bookingID], [foodId], [quantity]) VALUES (5, 1, 2)
INSERT [dbo].[List_Food_Order] ([bookingID], [foodId], [quantity]) VALUES (6, 1, 2)
INSERT [dbo].[List_Food_Order] ([bookingID], [foodId], [quantity]) VALUES (6, 200, 1)
INSERT [dbo].[List_Food_Order] ([bookingID], [foodId], [quantity]) VALUES (8, 101, 2)
INSERT [dbo].[List_Food_Order] ([bookingID], [foodId], [quantity]) VALUES (8, 202, 1)
INSERT [dbo].[List_Food_Order] ([bookingID], [foodId], [quantity]) VALUES (13, 1, 1)
INSERT [dbo].[List_Food_Order] ([bookingID], [foodId], [quantity]) VALUES (16, 2, 1)
INSERT [dbo].[List_Food_Order] ([bookingID], [foodId], [quantity]) VALUES (18, 1, 1)
INSERT [dbo].[List_Food_Order] ([bookingID], [foodId], [quantity]) VALUES (19, 201, 1)
INSERT [dbo].[List_Food_Order] ([bookingID], [foodId], [quantity]) VALUES (21, 3, 1)
INSERT [dbo].[List_Food_Order] ([bookingID], [foodId], [quantity]) VALUES (23, 1, 1)
INSERT [dbo].[List_Food_Order] ([bookingID], [foodId], [quantity]) VALUES (25, 202, 1)
INSERT [dbo].[List_Food_Order] ([bookingID], [foodId], [quantity]) VALUES (26, 1, 2)
INSERT [dbo].[List_Food_Order] ([bookingID], [foodId], [quantity]) VALUES (28, 201, 1)
INSERT [dbo].[List_Food_Order] ([bookingID], [foodId], [quantity]) VALUES (28, 202, 1)
GO
CREATE TABLE [dbo].[Role](
	[roleID] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([roleID], [roleName]) VALUES (1, N'User')
INSERT [dbo].[Role] ([roleID], [roleName]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
CREATE TABLE [dbo].[Food](
	[foodID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[foodImage] [varchar](500) NULL,
	[foodCategoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[foodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Food] ON 
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (1, N'Mì Goreng Vị Đặc Biệt Indomie (85G X 40 Gói/Thùng)', 165000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/7d/f7/2f/aca98551ad6ab5218aed62dc2523399b.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (2, N'Bánh gạo lứt superfoods GUfoods - Mix siêu hạt chia + quinoa + yến mạch - Ăn kiêng, Tập gym, Thực dưỡng, Eat clean', 199000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/3c/2d/dc/d4527a2a190af63e611a26aa6681de08.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (3, N'Mì Goreng Rasa Iga Penyet Vị Sườn Indomie (80G X 40 Gói/Thùng)', 165000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/63/77/63/9b269122cb386aee258f7fa502bf4aad.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (4, N'1 BỊCH KHÔ GÀ LÁ CHANH SIÊU NGON TÂN LỘC PHÁT - 40G', 19000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/8f/e1/1e/df894a4d04f6ff7d2d139f7f55311ac8.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (5, N'Mì Goreng Rendeng Vị Bò Cay Indomie (91G X 40 Gói/Thùng)', 165000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/e4/31/44/777e5f614df1616aa3ff8a4b6f74dc08.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (6, N'Bún gạo lứt ăn kiêng GUfoods - Giảm cân, Thực dưỡng, Eat clean', 75000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/92/60/af/68775e8ee000857d10579a5a6713fca8.png', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (7, N'Mì Hảo Hảo tôm chua cay - 75g - 138165 - [8934563138165]', 109000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/9d/b3/26/5aaceb69345da98320b34f6aa7df2c92.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (8, N'Thùng Mì Hảo Hảo Hương Vị Tôm Chua Cay (30 Gói/ Thùng)', 109000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/d2/3e/b7/2e48945a8c46643cbb8a2afe8a299cdd.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (9, N'Bánh Biscotti ăn kiêng Nguyên cám GUfoods (có 3 vị: Nguyên bản + Socola + Matcha) - Lành mạnh, Thơm ngon, Phù hợp Eat clean', 89000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/e1/04/20/e3d21e0900d11a281b233237f5b16647.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (10, N'1kg Khô gà lá chanh thượng hạng hiệu TETE', 135000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/b2/87/7b/854c0f47ae0732dcfabaacfe927d00d2.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (11, N'Snack ăn kiêng gạo lứt ngũ cốc nguyên hạt GUfoods - Thanh đạm, Tiện lợi, Phù hợp Eat clean', 35000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/10/12/40/ed525d9830b50e6d1a93d88aead49c19.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (12, N'Cơm cháy gạo lứt chà bông - cơm cháy gạo lứt rong biển giòn rôm rốp ăn vặt ăn kiêng', 22000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/66/67/42/76a21c762f1ca2420f53299f6bf5fa25.png', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (13, N'Cơm Cháy Lắc Khô Gà Lá Chanh TeTe 500 gram', 55000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/c8/d4/cf/75cde5f87c3fc26b82b8e0f842b7174e.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (14, N'Mì Hảo Hảo Hương vị Tôm Chua Cay (Thùng 30 gói)', 109000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/e6/87/b0/ef425e9d68b1036109739506eb3d9c96.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (15, N'1kg Chà Bông Heo Thượng Hạng Dinh Dưỡng Cho Bữa Ăn Ngon Hiệu SK FOOD', 250000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/57/1b/fb/d94dd1bb646c23a0ed44d983e2f7d180.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (16, N'Snack ăn kiêng gạo lứt nướng mật ong GUfoods - Thanh đạm, Tiện lợi, Healthy, Phù hợp Eat clean, Tốt cho sức khoẻ', 21000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/d7/30/b6/6ad180fc2aa36cc70a056d8110ad3a83.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (17, N'Thanh gạo lứt ngũ cốc ăn kiêng GUfoods (2 vị Rong biển / Mix trái cây) - Lành mạnh, Healthy, Ăn kiêng, Giảm cân, Eat clean', 109000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/69/44/81/016f41ac917f14c0f05d3ddfa7b75656.png', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (18, N'Bánh thực dưỡng gạo lứt GUfoods - Vị mè đen/Vị rong biển - Ăn kiêng, Eat Clean, Thuần chay, Healthy', 25000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/75/bf/67/2ee6df8a6264c2b91b8678897b844307.png', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (19, N'Bánh gạo lứt hạt quinoa ăn kiêng GUfoods - Hỗ trợ Giảm cân, Tập Gym, Thực dưỡng, Eat clean', 60000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/77/ff/7e/8890fa0811fa2f7c8518ed0fcadd6c83.png', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (20, N'Ngũ Cốc Calbee Nhật Bản', 239000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/84/cb/d2/0c3cc6156c7684f17941c9783c104de7.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (21, N'Granola Yến Mạch Mix Hạt Giảm Cân MFOOD Hủ 500g', 150000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/b6/ce/64/b7c05cf4d5f68520f95ff1d6eef13836.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (22, N'Granola ăn kiêng gạo lứt yến mạch GUfoods - Hỗ trợ giảm cân, Tập Gym, Eat clean', 79000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/b0/79/11/858e8b7c78ce635f2476993cbd787b0e.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (23, N'Ngũ Cốc Trái Cây Calbee FURUGURA Nhật Bản', 181000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/8c/45/00/ce4c325525ba9c82809a42eaa36bbb9c.png', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (24, N' Rong biển / Lá kim cuốn cơm Hàn Quốc O food 10g, sử dụng cho các món kimbap, sushi', 29000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/71/e8/a5/4a58b4288e2493cb77d63126b8a89162.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (25, N'1kg Khô gà lá chanh thượng hạng cao cấp', 225000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/fd/45/56/f5195099f2326ee1c5dd96c349cff09a.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (26, N'1KG CƠM GẠO LỨT SẤY RONG BIỂN GIÒN THƠM HIỆU SK FOOD', 99000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/8f/e7/63/a9cb0756dd7090b84c9dd11a066f0891.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (27, N'(COMBO 2 HŨ) MỰC SẤY KHÔ ƯỚP VỊ ĐẬM ĐÀ - MỖI HỘP 200G', 179000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/1a/42/9f/eb8d4dfe9b11dd31f7ce2ea33c63fc00.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (28, N'1KG KHÔ GÀ BƠ TỎI ĐẶC BIỆT THƯƠNG HIỆU SK FOOD', 245000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/26/6f/08/2c623081118e1afc9c4832d28b612662.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (29, N'1KG - COMBO 2 BỊCH CƠM GẠO LỨT RONG BIỂN CHẤT LƯỢNG TÂN LỘC PHÁT', 119000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/26/c9/12/6f7f12c2dff132f80ce489dc7641c391.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (30, N'Lá Rong Biển Khô Daesang 200g Dùng Nấu Canh Rong Biển - Nhập Khẩu Hàn Quốc', 115000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/a1/91/31/1930d1650d3ae191b9c5feb8160059c6.png', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (31, N'Ngũ Cốc Trái Cây Calbee Ít Đường Nhật Bản 600g', 229000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/15/4c/34/d48f9733451df8d33f2915d3f3e574c4.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (32, N'(COMBO 2 HŨ) MỰC SẤY KHÔ TẨM VỊ VÀ MỰC SẤY KHÔ XÉ SỢI - MỖI HŨ 200G', 119000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/51/55/2c/007bb8c5ac5b9e09f218d25026d13ad5.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (33, N'Bánh gạo lứt nguyên hạt GUfoods - Vị Đường ăn kiêng - Vị ngọt dễ ăn - Tập gym, Giảm cân, Eat clean', 55000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/85/77/6a/6858ae7c674fb9d4a9427b3ea5b623e0.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (34, N' 500G Khô gà lá chanh + 500G Khô gà bơ tỏi loại cay vừa', 159000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/93/48/ec/e40c6250c05f8aefb69482f36c99b6fb.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (35, N' Rong biển / Lá kim tẩm dầu Oliu O food giòn, thơm, gia vị vừa miệng, ăn liền hoặc ăn kèm', 25000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/fc/aa/63/d7d63a9c3968036157cffd345caa65c8.png', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (36, N'1KG CƠM CHÁY LẮC KHÔ GÀ GIÒN NGON ĐẬM VỊ THƯƠNG HIỆU TÂN LỘC PHÁT', 129000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/85/41/af/c2a2ccb1a05ed3d9235f44b5dcd406af.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (37, N'Pa tê gan ngỗng hiệu Glavproduct, 90 g', 35000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/64/13/97/6fbfba8288e4830a8398cbcf9cac1068.png', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (38, N'Khô Gà Lá Chanh Cay TeTe 500gram', 78000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/4a/ec/d7/f2fe193892e5a53df9dcf746118ca156.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (39, N'1KG - COMBO 2 HŨ CƠM GẠO LỨT RONG BIỂN TLP - ĂN CHAY ĐƯỢC', 119000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/f4/d0/e5/9c00ed6739e3374efaee37a9b1029f66.jpg', 1)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (40, N'Gạo lứt sấy ăn liền GUfoods  - Ăn kiêng, thực dưỡng, eat clean', 33000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/eb/f1/3c/24d00333a65323da1b89c4673c5738a0.png', 1)
GO
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (41, N'Nước Dừa Xiêm VICO FRESH 1L', 68000, 199, N'https://salt.tikicdn.com/cache/280x280/ts/product/4b/cd/50/ecba4bf65062d1cdc1fd149c1b5d6c76.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (42, N'Nước dừa Dứa Vico Fresh hộp 1L', 68000, 198, N'https://salt.tikicdn.com/cache/280x280/ts/product/92/63/bb/7bf950cbe11a303f94200bd923d9854d.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (43, N'Nước Ép Dứa Malee 1L (Thái Lan)', 64800, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/35/55/8b/310ce13788042af5b900e643c76d80e4.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (44, N'Nước nho mẫu đơn sparkling OKF Hàn Quốc 500ML', 10000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/01/15/c3/a08f905a7f4defdc2bb53858551aadf7.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (45, N'1 HỘP NƯỚC DỪA SEN VICO FRESH 1L', 48000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/08/03/40/e640ce3d57d24868ce7145088c0f15a2.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (46, N'Nước Ép Lựu Và Trái Cây Hỗn Hợp Malee 1L (Thái Lan)', 64800, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/68/86/f6/e95651150dffe97d1980f4eeb8cb832f.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (47, N'Lốc 6 Chai Nước Cam Có Tép Teppy Minute Maid (1L / Chai)', 153000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/15/1e/1a/c5b98656cb03e0eb17c9225ab185fd32.png', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (48, N'Thùng 24 hộp Nước dừa xiêm VICO FRESH (330ml / hộp)', 389000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/2d/04/88/b1f74f2fbc49a6dd10f8ddccead40a2b.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (49, N'COMBO 6 HỘP DỪA DỨA VICO FRESH 330ML ', 150000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/b3/65/b4/9a24330d127302a2e15d77cf11384c4b.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (50, N'Nước dừa Cocoxim Xiêm Xanh 330ml P12 - Thùng 12 hộp', 180000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/d7/be/fb/51e1319172c5ef6f891d09b8e892d951.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (51, N'Nước ép nam việt quất và trái cây hỗn hợp (100%) Tipco 1 lít', 68000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/7e/63/bc/08fbfd321802bd3a3757e5a1295bd19c.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (52, N'Nước Ép Vải Malee 1L (Thái Lan)', 64800, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/79/8b/71/5d1abbae8689fb2b6ab5fbf668c1fa38.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (53, N'Nước sinh tố trái cây xanh (Táo - Xoài - Kiwi) OKF Hàn Quốc 350ml', 19000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/f4/e3/4c/0c708e7c455d02b9a82507fca397da6e.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (54, N'Thùng 12 hộp Nước dừa xiêm VICOFRESH (1 lít/hộp)', 500000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/b8/3d/78/a3a417123764f7a1f3b6106035737148.png', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (55, N'1 HỘP NƯỚC DỪA SEN VICO FRESH 330ML', 20000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/27/86/cc/1acf2a2ba992a4d8168c20299605393c.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (56, N'Nước Ép Trái Cây Cherry Và Nho 100% Tipco Nhậu Khẩu Thái Lan ', 68000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/8e/83/ef/010e48def005afa58f19c87b8f6d156a.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (57, N'1 HỘP NƯỚC DỪA  DỨA VICO FRESH 330ML', 22000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/09/7d/18/86f099dab7ee5e534bb73659b6cac49a.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (58, N'Nước ép táo Sangaria cắt giảm calories 340g', 28000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/c9/ea/3b/87502830d01892e01d9d226d8455d2d2.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (59, N'Nước dưa hấu có ga sparkling OKF Hàn Quốc 500ml', 22000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/fb/11/0f/5b1f627fba484d29e2d9f918a75616ac.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (60, N'Thùng 24 Túi Nước Trái Cây KUN 110ml/túi', 116000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/b7/9b/3b/eb240c196d3707df4cf7d3973381d058.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (61, N'Thùng 24 hộp Nước dừa Vico Fresh Hương vị Sen', 320000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/4b/87/1f/0aae139574bb9797263838b8f73ee972.png', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (62, N'Melon Yogurt - Sữa chua dưa lưới OKF 500ml', 32000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/42/10/f3/583dae8d69b87bda39f5f514dc38d9e2.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (63, N'Hộp quà tặng 2 hộp Nước dừa Vico Fresh 1L', 80000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/47/31/60/8325f93a0ec9b3d92d25ec877078785f.png', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (64, N'Thùng 24 chai Nước uống sữa trái cây TH True Juice Milk Dâu tự nhiên', 265000, 200, N'https://salt.tikicdn.com/cache/280x280/media/catalog/producttmp/51/e0/50/71a95fc531d1992c8ecd547889c6bfc7.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (65, N'Nước Ép Cherry Và Hỗn Hợp Rau Quả Malee 1L (Thái Lan)', 64800, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/49/b0/d2/fa22d25c1d728debefbb027b1b7d6cea.png', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (66, N'Combo Double Giải nhiệt mùa hè Big size - 6 Xiêm Xanh 1 Lít', 231000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/05/14/21/12192aea83c214e6374ef16fae39ffca.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (67, N'Nước Ép Táo Malee 1L (Thái Lan)', 64800, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/9f/83/6f/4e111819ab9f0762e2d09b3efd048757.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (68, N'Thùng 12 hộp Nước dừa dứa VICO FRESH (1 lít / hộp)', 500000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/a5/7f/91/2ec939d26b10460f6806590586e69cd5.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (69, N'COMBO6 HỘP NƯỚC DỪA TƯƠI UHT VIETCOCO 330ML', 89000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/e1/a6/ce/ecdfca67552b2c2a69811fa016005fd9.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (70, N'Nước ép Táo nguyên chất 100% hiệu Rauch - Happy Day 1L', 62000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/e3/35/c0/df4f68d992110aa676a3ad27af753ece.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (71, N'Thùng 24 hộp Nước dừa dứa Vico Fresh (330ml / hộp)', 389000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/2c/79/d3/06b5470911ceb83a5d960b067c835dcc.png', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (72, N'Nước Ép Lựu Và Trái Cây Tổng Hợp Tipco (1 Lít)', 68000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/b5/85/7e/8229c92c00db6267359aca433aff8bc8.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (73, N'Thùng 24 lon Nước Dứa Ép YOOH', 239000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/1d/6f/de/040aa85adc8a816ca4b615c9d2024e92.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (74, N'Thùng 12 Chai Nước Trái Cây Twister Cam (1L/chai)', 262000, 200, N'https://salt.tikicdn.com/cache/280x280/media/catalog/producttmp/4b/9b/01/8cf06e8350c7b1f96410da6698a15511.PNG', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (75, N'Nước Ép Quýt Malee 1L (Thái Lan)', 64800, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/7f/77/9f/c8f523bd086c796385fce8ae2156da64.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (76, N'Nước Ép Berry Và Trái Cây Hỗn Hợp Malee 1L (Thái Lan)', 64800, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/25/fb/a5/fa8cb9f5d218e7581889336a7a63e260.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (77, N'COMBO 4 HỘP NƯỚC VFRESH ỔI ÉP - HỘP GIẤY 1L', 180000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/f3/f0/e3/9cebc1ac681d55b615ae5e4c1011a5ec.PNG', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (78, N'Nước cốt dâu tằm L angfarm, 300ml, chai, mẫu antique', 54000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/a2/99/d5/e6373b33b1e156232294ed5574a2d4b8.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (79, N'COMBO2 HỘP NƯỚC DỪA TƯƠI ORGANIC UHT VIETCOCO 330ML', 39500, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/bb/e5/e1/66bb0d66ab9f0d12ee02f7b7314357d5.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (80, N'Nước dưa hấu lô hội OKF Hàn Quốc 500ml', 30000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/ed/14/be/7d201713215cdbba8a78e961f43538f3.jpg', 2)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (81, N'Pure noni juice - Nước ép trái nhàu nguyên chất', 130000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/f4/51/49/3596b729a576b67afd097abd48ead536.jpg', 2)
GO
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (82, N'Rượu Whisky Ballantine s Finest 350ml 39.7% - 40.3% - Không Kèm Hộp', 179000, 197, N'https://salt.tikicdn.com/cache/280x280/ts/product/40/43/6f/b8e4e4417987d6a11f03d7d0043d21b9.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (83, N'Rượu Jägermeister Vietmax 2021 Edition 35% 700ml - Có Hộp tặng kèm 2 Ly Shot + Dock Tag', 800000, 197, N'https://salt.tikicdn.com/cache/280x280/ts/product/cd/b8/88/07e63aa5d3bcd162c0517c6b24d6ab97.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (84, N'Rượu Vodka Absolut 700ml 39% - 41% - Không Kèm Hộp', 314000, 197, N'https://salt.tikicdn.com/cache/280x280/ts/product/d8/b3/13/d3b7562e95359362348c353b012f7e17.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (85, N'Rượu Gin Beefeater London 700ml 39% - 41% - Không Kèm Hộp', 292000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/42/30/0d/63ef95df32edfac794a790c24532f9da.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (86, N'Rượu Whisky Chivas Extra 13YO American Rye Cask 700ml 40% - Có hộp', 615000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/dc/cf/d0/45b292c861132a54c093db27f1a15934.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (87, N'Rượu whisky Jameson 700ml 39.7% - 40.3% - Không hộp', 361000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/66/3b/9c/bb522159a2a324c7451c8abd7b1f48a0.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (88, N'Rượu Whisky Chivas Regal 12 (700ml) 39.7% - 40.3% - Kèm Hộp', 569000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/7b/df/f8/729412662515b065cf8b77b6963bdb45.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (89, N'Rượu Whisky Imperial Blue 375ml 29,5% - Không Kèm Hộp', 74000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/bb/3b/77/af071031196d0336cc40e30c06a5ed8d.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (90, N'Rượu Vodka Men 500ml 39,5%', 91000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/eb/f6/4b/aa22e0bf6b9f085a3ef8fcd70b3edee1.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (91, N'Rượu whisky Chivas Regal 18 Blue Signature 700ml39.7% - 40.3% - Kèm hộp', 1490000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/a3/da/0a/c30de838dca3765c9836bee2d86a21b6.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (92, N'Rượu Whisky Chivas Regal 12 375ml 39.7% - 40.3% - Kèm Hộp', 295000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/f2/b5/05/5ea754416a11f439a0c9246c762bd55d.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (93, N'Rượu Gin SÔNG CÁI 700ml - 45% - Không Hộp', 1060000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/7a/89/d1/98d9151f14b5165582443f0fcfb81f6b.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (94, N'Rượu Gin Bombay Sapphire 750ml 47% không hộp', 502000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/26/ba/0f/d79102d9e2da0f128fb0c2e4e880384c.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (95, N'Rượu mùi Jagermeister', 436000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/dd/5a/fd/86ce86707d7408f7cf9efbddace3610f.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (96, N'Bộ Sản Phẩm Rượu Napoleon Ballon D OR X.O 700ml 40% Hộp Cứng + Ly', 415000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/d8/12/a2/efa9d5139bbb24760aa82d6491e8c65d.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (97, N' Rượu Vodka Alligator 500ml Xanh 30%', 117000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/ed/f0/6a/35d59def14482fb90fa812cc617b35ff.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (98, N'Rượu tequila Jose Cuervo Reposado Gold', 366000, 200, N'https://salt.tikicdn.com/cache/280x280/media/catalog/producttmp/a0/28/96/d7894d77f73193c109fe10013b535804.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (99, N'Rượu Whisky Imperial Blue 700ml 29,5% - Kèm Hộp', 138000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/d0/61/00/c7257bf92db9379756202cca7149f7a3.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (100, N'Rượu Vodka Men 29,5%', 52000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/6e/26/7a/9793519f474e302ef7fdf9d943c3635c.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (101, N'Rượu Vodka Absolut Vị Chanh Citron 700ml 39% - 41% - Không kèm hộp', 419000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/ad/64/24/8e6f93d609180b8c2df8930b380d4d2a.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (102, N'Rượu Vodka Men 300ml 39,5%', 60000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/00/51/0f/4fdeb848f6f0143f5bdaae43951e3ea6.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (103, N'Rượu Brandy Bellenat Napoleon 700ml 39%', 138000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/14/95/49/bf0eaa3cf576651161a1ed70957cdc73.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (104, N'Rượu Vodka Poliakod 200ml 37,5%', 99000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/88/32/3d/d7491a3a9905d68325cd091583074a93.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (105, N'Rượu Vodka Men 500ml 29,5%', 85000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/1c/00/e0/f9bdf40be27a7ef802fc2e668c8a5728.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (106, N'Rượu Brandy St. Remy VSOP 700ml 40% - Không Hộp', 349000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/d9/04/d3/ce4c4fc89f8072c05ae6eb62749bbcb3.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (107, N'Rượu whisky Dewar s The Ancestor 12 Years Old 750ml 40% có hộp kèm theo', 701000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/95/3a/bb/8ae77bc71f4f1a1c4c4f3a40204f4708.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (108, N'Rượu gin 40% Boodles London Dry 700ml không hộp', 499000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/db/f9/a7/e17fdab5fc58032a9674b4fc92a2120b.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (109, N'Rượu Vodka Alligator 500ml 31%', 233000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/4d/71/b4/96b1e2c111aa05b628e49f5aff558bc1.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (110, N'Rượu Mùi Hương Cam Cointreau 700ml 40% không hộp', 508000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/7a/41/24/b0945fa658d4e694b805962df85ce639.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (111, N'Rượu Rum Bacardi Superior Carta Blanca White 350ml 37.5% không hộp', 270000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/20/f9/21/7600a600c9c4a533bce6ce49bbdeb1fd.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (112, N'Bộ Sản Phẩm Rượu Brandy Calyso X.O 750ml 40% Hộp Cứng + Ly', 777000, 200, N'https://salt.tikicdn.com/cache/280x280/media/catalog/producttmp/bf/9e/f1/752a84a4af76a965a97dca2ca07851a1.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (113, N'Thùng rượu JING 35% Vol 520ml/ 12 chai ', 3020000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/c2/33/4f/1407e947661af87c443192026a21351b.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (114, N'Rượu Vodka Poliakod 700ml 37,5%', 260000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/7c/1f/7b/e9d70cc85de9e2c06754c10c1a850f27.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (115, N'Combo 2 hộp rượu MAOPU kiều mạch tím 45% Vol 500ml tặng 1 túi đựng', 2140000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/55/9f/56/53fb463e9ff2149cd97821195ff14413.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (116, N'Rượu Remy Martin VSOP 700ml 40% - Phiên bản Tết giới hạn - Kèm hộp', 1699000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/10/5e/b7/3cb50f4fda1a31fc359ca21505b46bd8.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (117, N'Rượu Vodka Absolut Vị Quýt 700ml 39% - 41% - Không Kèm Hộp', 419000, 200, N'https://salt.tikicdn.com/cache/280x280/media/catalog/producttmp/25/92/43/6b22599690632754496a5b0da67b8226.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (118, N'Rượu Vodka Absolut Vị vanilla 700ml 39% - 41% - Không kèm hộp', 419000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/3b/7e/dd/127dfe566e0de50fa9f3184049d39f9a.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (119, N'Rượu whisky Chivas Regal 12 Phiên bản Night 1.5L 39.7% - 40.3% - Không hộp', 1150000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/7e/a4/9a/fa7d6eba600147ebd5df9af4f39101f8.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (120, N'Rượu Vodka Men 300ml 27% Korea Baby Ginseng - Sâm', 85000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/a2/cc/bd/826afbe348ee2443b6cf1408b6463d6e.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (121, N'Rượu Vodka Absolut Vị mâm xôi Raspberri 700ml39% - 41% - Không kèm hộp', 419000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/95/10/54/76b04378cd0b12284670e85f2be91108.jpg', 3)
INSERT [dbo].[Food] ([foodID], [name], [price], [quantity], [foodImage], [foodCategoryId]) VALUES (122, N'Rượu Gin Lady Trieu Hoi An Spice Road Gin 750ml - 43% - Không Hộp', 905000, 200, N'https://salt.tikicdn.com/cache/280x280/ts/product/59/d2/36/d1d354aa462ec27e0d18133e031a7eae.jpg', 3)
SET IDENTITY_INSERT [dbo].[Food] OFF

GO
CREATE TABLE [dbo].[FoodCategory](
	[foodCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[foodCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FoodCategory] ON 

INSERT [dbo].[FoodCategory] ([foodCategoryId], [name]) VALUES (1, N'Đồ ăn')
INSERT [dbo].[FoodCategory] ([foodCategoryId], [name]) VALUES (2, N'Nước uống')
INSERT [dbo].[FoodCategory] ([foodCategoryId], [name]) VALUES (3, N'Rượu')
SET IDENTITY_INSERT [dbo].[FoodCategory] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [fk_Role_Account] FOREIGN KEY([roleID])
REFERENCES [dbo].[Role] ([roleID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [fk_Role_Account]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [fk_Booking_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [fk_Booking_Account]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [fk_Booking_Room] FOREIGN KEY([roomNo])
REFERENCES [dbo].[Room] ([RoomNO])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [fk_Booking_Room]
GO
ALTER TABLE [dbo].[Food]  WITH CHECK ADD  CONSTRAINT [fk_Food_Category] FOREIGN KEY([foodCategoryId])
REFERENCES [dbo].[FoodCategory] ([foodCategoryId])
GO
ALTER TABLE [dbo].[Food] CHECK CONSTRAINT [fk_Food_Category]
GO

ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [fk_Review_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [fk_Review_Account]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [fk_Review_Room] FOREIGN KEY([roomType])
REFERENCES [dbo].[RoomType] ([typeID])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [fk_Review_Room]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [fk_Room_Type] FOREIGN KEY([RoomType])
REFERENCES [dbo].[RoomType] ([typeID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [fk_Room_Type]
GO
