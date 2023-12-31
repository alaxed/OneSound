USE [ASM_java6]
GO
/****** Object:  Table [dbo].[access_log]    Script Date: 09/12/2023 1:02:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[access_log](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ip_address] [varchar](255) NULL,
	[timestamp] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 09/12/2023 1:02:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts](
	[username] [varchar](255) NOT NULL,
	[email] [varchar](255) NULL,
	[fullname] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[phone_number] [varchar](255) NULL,
	[role] [bit] NULL,
	[role_id] [varchar](255) NULL,
	[user_id] [varchar](255) NULL,
	[avatar_url] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[albums]    Script Date: 09/12/2023 1:02:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[albums](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[image] [nvarchar](255) NULL,
	[release_year] [int] NULL,
	[title] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[daily_access_dto]    Script Date: 09/12/2023 1:02:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[daily_access_dto](
	[date] [datetime2](6) NOT NULL,
	[access_count] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[favorites]    Script Date: 09/12/2023 1:02:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[favorites](
	[id] [bigint] NOT NULL,
	[createdate] [date] NULL,
	[songid] [bigint] NOT NULL,
	[userid] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[genres]    Script Date: 09/12/2023 1:02:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genres](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[passwordresettoken]    Script Date: 09/12/2023 1:02:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[passwordresettoken](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[expiry_date_time] [datetime2](6) NULL,
	[token] [varchar](255) NULL,
	[account_username] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[playlist_song]    Script Date: 09/12/2023 1:02:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[playlist_song](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[playlist_id] [bigint] NULL,
	[song_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[playlists]    Script Date: 09/12/2023 1:02:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[playlists](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[creator] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report_account]    Script Date: 09/12/2023 1:02:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_account](
	[role] [varchar](255) NOT NULL,
	[quan] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 09/12/2023 1:02:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [varchar](255) NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[singer_album]    Script Date: 09/12/2023 1:02:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[singer_album](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[album_id] [bigint] NULL,
	[singer_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[singers]    Script Date: 09/12/2023 1:02:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[singers](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[song_genres]    Script Date: 09/12/2023 1:02:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[song_genres](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[genre_id] [bigint] NULL,
	[song_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[song_listen]    Script Date: 09/12/2023 1:02:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[song_listen](
	[listen_id] [bigint] IDENTITY(1,1) NOT NULL,
	[listen_time] [datetime2](6) NULL,
	[song_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[listen_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[song_singer]    Script Date: 09/12/2023 1:02:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[song_singer](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[singer_id] [bigint] NULL,
	[song_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[songs]    Script Date: 09/12/2023 1:02:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[songs](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[image] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[path] [nvarchar](255) NULL,
	[album_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[access_log] ON 

INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (1, N'42.119.232.123', CAST(N'2023-11-30T07:32:59.1311970' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (2, N'113.161.52.175', CAST(N'2023-12-01T14:27:22.5990790' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (3, N'183.80.3.70', CAST(N'2023-12-03T08:25:02.5441070' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (4, N'183.80.3.70', CAST(N'2023-12-03T08:28:00.3830180' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (5, N'183.80.3.70', CAST(N'2023-12-03T08:29:17.8453770' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (6, N'113.161.50.174', CAST(N'2023-12-04T14:39:46.6070600' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (7, N'113.161.50.174', CAST(N'2023-12-04T14:54:19.7000210' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (8, N'113.161.52.213', CAST(N'2023-12-04T14:56:47.3874710' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (9, N'113.161.52.213', CAST(N'2023-12-04T14:57:52.8480710' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (10, N'113.161.52.213', CAST(N'2023-12-04T14:58:03.3349950' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (11, N'113.161.52.175', CAST(N'2023-12-04T15:22:22.1657900' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (12, N'113.161.52.175', CAST(N'2023-12-04T16:33:23.4157700' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (13, N'113.161.50.174', CAST(N'2023-12-04T16:37:15.5435640' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (14, N'113.161.52.213', CAST(N'2023-12-04T16:47:07.4527410' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (15, N'113.161.52.213', CAST(N'2023-12-04T17:06:04.3427000' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (16, N'113.161.52.175', CAST(N'2023-12-04T17:10:59.3445860' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (17, N'42.115.148.74', CAST(N'2023-12-05T08:03:29.1052810' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (18, N'42.115.148.74', CAST(N'2023-12-05T08:03:33.2650420' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (19, N'42.115.148.74', CAST(N'2023-12-05T08:03:46.4351310' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (20, N'42.115.148.74', CAST(N'2023-12-05T08:34:15.1856350' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (21, N'42.115.148.74', CAST(N'2023-12-05T08:48:03.5317090' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (22, N'42.115.148.74', CAST(N'2023-12-05T08:48:15.7313240' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (23, N'42.115.148.74', CAST(N'2023-12-05T09:22:32.7673030' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (24, N'42.115.148.74', CAST(N'2023-12-05T09:36:44.5992230' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (25, N'42.115.148.74', CAST(N'2023-12-05T09:36:54.8757420' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (26, N'113.161.50.174', CAST(N'2023-12-06T09:54:47.6460240' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (27, N'113.161.50.174', CAST(N'2023-12-06T11:30:09.4543260' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (28, N'113.161.50.174', CAST(N'2023-12-06T11:30:18.0409900' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (29, N'113.161.50.174', CAST(N'2023-12-06T12:25:25.9434600' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (30, N'113.161.50.174', CAST(N'2023-12-06T12:26:56.6900620' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (31, N'113.161.52.213', CAST(N'2023-12-06T12:29:55.6599290' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (32, N'113.161.52.175', CAST(N'2023-12-06T13:15:03.7618860' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (33, N'113.161.52.175', CAST(N'2023-12-06T13:15:11.6506480' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (34, N'113.161.50.174', CAST(N'2023-12-06T15:25:15.8682460' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (35, N'113.161.50.174', CAST(N'2023-12-06T15:25:22.1172830' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (36, N'1.55.144.95', CAST(N'2023-12-07T07:40:21.0145380' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (37, N'1.55.144.95', CAST(N'2023-12-07T07:40:29.6820140' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (38, N'1.55.144.95', CAST(N'2023-12-07T08:22:26.0212250' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (39, N'1.55.144.95', CAST(N'2023-12-07T08:35:41.2320650' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (40, N'1.55.144.95', CAST(N'2023-12-07T08:36:07.2936970' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (41, N'1.55.144.95', CAST(N'2023-12-07T08:37:17.5879170' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (42, N'1.55.144.95', CAST(N'2023-12-07T08:40:23.9405190' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (43, N'1.55.144.95', CAST(N'2023-12-07T10:05:47.0426070' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (44, N'1.55.144.95', CAST(N'2023-12-07T10:05:55.8583970' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (45, N'113.161.52.175', CAST(N'2023-12-08T15:19:01.0431880' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (46, N'183.80.33.145', CAST(N'2023-12-09T07:04:50.3824500' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (47, N'183.80.33.145', CAST(N'2023-12-09T09:12:23.4301570' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (48, N'183.80.33.145', CAST(N'2023-12-09T09:12:28.9534150' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (49, N'183.80.33.145', CAST(N'2023-12-09T09:24:14.6919240' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (50, N'183.80.33.145', CAST(N'2023-12-09T09:24:19.1126910' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (51, N'183.80.33.145', CAST(N'2023-12-09T09:24:43.9370950' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (52, N'183.80.33.145', CAST(N'2023-12-09T09:25:32.1558690' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (53, N'183.80.33.145', CAST(N'2023-12-09T10:13:58.6513230' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (54, N'183.80.33.145', CAST(N'2023-12-09T10:51:33.0215310' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (55, N'183.80.33.145', CAST(N'2023-12-09T11:18:51.1134920' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (56, N'183.80.33.145', CAST(N'2023-12-09T11:30:56.4422760' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (57, N'183.80.33.145', CAST(N'2023-12-09T12:04:10.3477810' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (58, N'183.80.33.145', CAST(N'2023-12-09T12:12:27.5027630' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (59, N'183.80.33.145', CAST(N'2023-12-09T12:12:35.9239620' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (60, N'183.80.33.145', CAST(N'2023-12-09T12:25:28.2263670' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (61, N'183.80.33.145', CAST(N'2023-12-09T12:25:40.4318620' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (62, N'183.80.33.145', CAST(N'2023-12-09T12:28:45.5886810' AS DateTime2))
INSERT [dbo].[access_log] ([id], [ip_address], [timestamp]) VALUES (63, N'183.80.33.145', CAST(N'2023-12-09T12:31:07.3525980' AS DateTime2))
SET IDENTITY_INSERT [dbo].[access_log] OFF
GO
INSERT [dbo].[accounts] ([username], [email], [fullname], [password], [phone_number], [role], [role_id], [user_id], [avatar_url]) VALUES (N'US000001', N'phuong@gmail.com', N'Uyen Phuong', N'$2a$10$o4PtRExZ0GlkT.NuuYE8gu5UYMrSqjLseD164AWBT7HtsT8VpxDOW', N'0328645096', NULL, N'USER', NULL, NULL)
INSERT [dbo].[accounts] ([username], [email], [fullname], [password], [phone_number], [role], [role_id], [user_id], [avatar_url]) VALUES (N'US000002', N'uyen@gmail.com', N'Uyên Phuong', N'$2a$10$X9IowT3EoeJAnOsM7YOtDOTbqmWQEg412ZVcJGb774EokrRfkEiTm', N'0328645096', NULL, N'ADMIN', NULL, NULL)
INSERT [dbo].[accounts] ([username], [email], [fullname], [password], [phone_number], [role], [role_id], [user_id], [avatar_url]) VALUES (N'US000003', N'alex@gmail.com', N'Alexed', N'$2a$10$fgc6Cjb7k1.PppWoZe5PWugRYjqA3f01BrtugJDz635R3h4C/NxJO', N'0328645096', NULL, N'USER', NULL, NULL)
INSERT [dbo].[accounts] ([username], [email], [fullname], [password], [phone_number], [role], [role_id], [user_id], [avatar_url]) VALUES (N'US000004', N'testing@gmail.com', N'Uyên Phuong', N'$2a$10$AwS8olgK7OWF4xB/dNFi4utiyobwUWpfp3fGcSPfskkLtxXOmIVqq', N'0328645096', NULL, N'USER', NULL, NULL)
INSERT [dbo].[accounts] ([username], [email], [fullname], [password], [phone_number], [role], [role_id], [user_id], [avatar_url]) VALUES (N'US000006', N'baokhays@gmail.com', N'Thanh Tùng', N'$2a$10$jMemg7hxwANEoc1jLxaJxuTaInlLeFb9RBzF.rTptr65vts0l5bte', N'0328645095', NULL, N'ADMIN', NULL, N'wallpaperflare.com_wallpaperadfadf.jpg')
GO
SET IDENTITY_INSERT [dbo].[albums] ON 

INSERT [dbo].[albums] ([id], [image], [release_year], [title]) VALUES (1, N'taylor.jpg', 2008, N'Fearless')
INSERT [dbo].[albums] ([id], [image], [release_year], [title]) VALUES (2, N'Divide.jpg', 2017, N'Divide')
INSERT [dbo].[albums] ([id], [image], [release_year], [title]) VALUES (3, N'Off The Wall.jpg', 1979, N'Off The Wall')
INSERT [dbo].[albums] ([id], [image], [release_year], [title]) VALUES (6, N'Đánh Đổi.jpg', 2023, N'Đánh Đổi')
INSERT [dbo].[albums] ([id], [image], [release_year], [title]) VALUES (7, N'm-tp M-TP.jpg', 2017, N'm-tp M-TP')
INSERT [dbo].[albums] ([id], [image], [release_year], [title]) VALUES (8, N'dongvui harmony.jpg', 2022, N'dongvui harmony')
INSERT [dbo].[albums] ([id], [image], [release_year], [title]) VALUES (9, N'99.jpg', 2023, N'99%')
SET IDENTITY_INSERT [dbo].[albums] OFF
GO
INSERT [dbo].[favorites] ([id], [createdate], [songid], [userid]) VALUES (156, CAST(N'2023-12-06' AS Date), 2, N'US000006')
INSERT [dbo].[favorites] ([id], [createdate], [songid], [userid]) VALUES (157, CAST(N'2023-12-06' AS Date), 3, N'US000006')
INSERT [dbo].[favorites] ([id], [createdate], [songid], [userid]) VALUES (159, CAST(N'2023-12-06' AS Date), 8, N'US000006')
INSERT [dbo].[favorites] ([id], [createdate], [songid], [userid]) VALUES (202, CAST(N'2023-12-07' AS Date), 6, N'US000006')
INSERT [dbo].[favorites] ([id], [createdate], [songid], [userid]) VALUES (209, CAST(N'2023-12-07' AS Date), 5, N'US000006')
INSERT [dbo].[favorites] ([id], [createdate], [songid], [userid]) VALUES (252, CAST(N'2023-12-09' AS Date), 15, N'US000006')
INSERT [dbo].[favorites] ([id], [createdate], [songid], [userid]) VALUES (253, CAST(N'2023-12-09' AS Date), 16, N'US000006')
INSERT [dbo].[favorites] ([id], [createdate], [songid], [userid]) VALUES (254, CAST(N'2023-12-09' AS Date), 17, N'US000006')
INSERT [dbo].[favorites] ([id], [createdate], [songid], [userid]) VALUES (255, CAST(N'2023-12-09' AS Date), 18, N'US000006')
INSERT [dbo].[favorites] ([id], [createdate], [songid], [userid]) VALUES (256, CAST(N'2023-12-09' AS Date), 19, N'US000006')
INSERT [dbo].[favorites] ([id], [createdate], [songid], [userid]) VALUES (257, CAST(N'2023-12-09' AS Date), 20, N'US000006')
INSERT [dbo].[favorites] ([id], [createdate], [songid], [userid]) VALUES (258, CAST(N'2023-12-09' AS Date), 21, N'US000006')
INSERT [dbo].[favorites] ([id], [createdate], [songid], [userid]) VALUES (259, CAST(N'2023-12-09' AS Date), 22, N'US000006')
INSERT [dbo].[favorites] ([id], [createdate], [songid], [userid]) VALUES (260, CAST(N'2023-12-09' AS Date), 23, N'US000006')
INSERT [dbo].[favorites] ([id], [createdate], [songid], [userid]) VALUES (261, CAST(N'2023-12-09' AS Date), 24, N'US000006')
INSERT [dbo].[favorites] ([id], [createdate], [songid], [userid]) VALUES (302, CAST(N'2023-12-09' AS Date), 27, N'US000006')
GO
SET IDENTITY_INSERT [dbo].[genres] ON 

INSERT [dbo].[genres] ([id], [name]) VALUES (1, N'Pop')
INSERT [dbo].[genres] ([id], [name]) VALUES (2, N'Rock')
INSERT [dbo].[genres] ([id], [name]) VALUES (3, N'R&B')
INSERT [dbo].[genres] ([id], [name]) VALUES (4, N'RAP')
SET IDENTITY_INSERT [dbo].[genres] OFF
GO
SET IDENTITY_INSERT [dbo].[passwordresettoken] ON 

INSERT [dbo].[passwordresettoken] ([id], [expiry_date_time], [token], [account_username]) VALUES (1, CAST(N'2023-12-09T09:42:57.3167600' AS DateTime2), N'8a25de42-8ebb-4c43-9083-8ab3644a770f', N'US000006')
SET IDENTITY_INSERT [dbo].[passwordresettoken] OFF
GO
SET IDENTITY_INSERT [dbo].[playlists] ON 

INSERT [dbo].[playlists] ([id], [name], [creator]) VALUES (4, N'pl1', N'US000006')
SET IDENTITY_INSERT [dbo].[playlists] OFF
GO
INSERT [dbo].[roles] ([id], [name]) VALUES (N'ADMIN', N'ADMIN')
INSERT [dbo].[roles] ([id], [name]) VALUES (N'USER', N'USER')
GO
SET IDENTITY_INSERT [dbo].[singer_album] ON 

INSERT [dbo].[singer_album] ([id], [album_id], [singer_id]) VALUES (1, 1, 1)
INSERT [dbo].[singer_album] ([id], [album_id], [singer_id]) VALUES (2, 2, 2)
INSERT [dbo].[singer_album] ([id], [album_id], [singer_id]) VALUES (3, 3, 3)
SET IDENTITY_INSERT [dbo].[singer_album] OFF
GO
SET IDENTITY_INSERT [dbo].[singers] ON 

INSERT [dbo].[singers] ([id], [name]) VALUES (1, N'Taylor Swift')
INSERT [dbo].[singers] ([id], [name]) VALUES (2, N'Ed Sheeran')
INSERT [dbo].[singers] ([id], [name]) VALUES (3, N'Michael Jackson')
INSERT [dbo].[singers] ([id], [name]) VALUES (4, N'Min')
INSERT [dbo].[singers] ([id], [name]) VALUES (5, N'Obito')
INSERT [dbo].[singers] ([id], [name]) VALUES (6, N'MCK')
INSERT [dbo].[singers] ([id], [name]) VALUES (7, N'Sơn Tùng M-TP')
INSERT [dbo].[singers] ([id], [name]) VALUES (8, N'Đen Vâu')
INSERT [dbo].[singers] ([id], [name]) VALUES (9, N'MCK')
SET IDENTITY_INSERT [dbo].[singers] OFF
GO
SET IDENTITY_INSERT [dbo].[song_genres] ON 

INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (1, 1, 1)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (2, 3, 3)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (3, 2, 5)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (4, 2, 2)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (5, 1, 4)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (6, 3, 6)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (7, 1, 8)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (8, 2, 1)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (9, 2, 9)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (10, 4, 10)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (11, 4, 11)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (12, 4, 12)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (13, 4, 13)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (14, 4, 14)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (15, 1, 15)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (16, 1, 16)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (17, 1, 17)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (18, 1, 18)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (19, 1, 19)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (20, 1, 20)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (21, 1, 21)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (22, 1, 22)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (23, 1, 23)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (24, 4, 22)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (25, 4, 23)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (26, 4, 24)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (27, 4, 25)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (28, 4, 26)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (29, 4, 27)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (30, 4, 28)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (31, 4, 29)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (32, 4, 30)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (33, 4, 31)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (34, 4, 32)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (35, 4, 33)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (36, 4, 34)
INSERT [dbo].[song_genres] ([id], [genre_id], [song_id]) VALUES (37, 4, 35)
SET IDENTITY_INSERT [dbo].[song_genres] OFF
GO
SET IDENTITY_INSERT [dbo].[song_singer] ON 

INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (1, 1, 1)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (2, 2, 2)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (3, 3, 3)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (4, 1, 2)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (5, 3, 4)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (6, 2, 1)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (7, 2, 5)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (8, 1, 6)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (9, 4, 8)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (10, 1, 4)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (11, 3, 9)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (12, 5, 10)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (13, 5, 11)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (14, 5, 12)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (15, 5, 13)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (16, 5, 14)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (17, 6, 12)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (18, 7, 15)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (19, 7, 16)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (20, 7, 17)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (21, 7, 18)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (22, 7, 19)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (23, 7, 20)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (24, 7, 21)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (25, 7, 22)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (26, 7, 23)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (27, 8, 24)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (28, 8, 25)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (29, 8, 26)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (30, 8, 27)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (31, 8, 28)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (32, 9, 29)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (33, 9, 30)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (34, 9, 31)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (35, 9, 32)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (36, 9, 33)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (37, 9, 34)
INSERT [dbo].[song_singer] ([id], [singer_id], [song_id]) VALUES (38, 9, 35)
SET IDENTITY_INSERT [dbo].[song_singer] OFF
GO
SET IDENTITY_INSERT [dbo].[songs] ON 

INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (1, N'Blank Space.jpg', N'Blank Space', N'/asset/audio/1-800-273-8255.mp3
', 1)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (2, N'Shake It Off.jpg', N'Shake It Off', N'/asset/audio/drunk-keshi.mp3
', 1)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (3, N'Thinking Out Loud.jpg', N'Thinking Out Loud', N'/asset/audio/Ehrling-Typhoon.mp3
', 2)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (4, N'Shape of You.jpg', N'Shape of You', N'/asset/audio/END SCENE Ruel.mp3
', 2)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (5, N'Rolling in the Deep.jpg', N'Rolling in the Deep', N'/asset/audio/IF ANDOR WHEN Ruel.mp3
', 3)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (6, N'Someone Like You.jpg', N'Someone Like You', N'/asset/audio/LIMBO.mp3
', 3)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (8, N'Hoa Nhip Giang Sinh.jpg', N'Hoa Nhip Giang Sinh', N'/asset/audio/Hoa Nhip Giang Sinh.mp3', 1)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (9, N'danghuutai.jpg', N'danghuutai', N'/asset/audio/danghuutai.mp3', 1)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (10, N'Xuất Phát Điểm.jpg', N'Xuất Phát Điểm', N'/asset/audio/Xuất Phát Điểm.mp3', 6)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (11, N'Trốn Chạy.jpg', N'Trốn Chạy', N'/asset/audio/Trốn Chạy.mp3', 6)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (12, N'Đánh Đổi.jpg', N'Đánh Đổi', N'/asset/audio/Đánh Đổi.mp3', 6)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (13, N'Backstage Freestyle.jpg', N'Backstage Freestyle', N'/asset/audio/Backstage Freestyle.mp3', 6)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (14, N'Champion.jpg', N'Champion', N'/asset/audio/Champion.mp3', 6)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (15, N'Cơn Mưa Ngang Qua.jpg', N'Cơn Mưa Ngang Qua', N'/asset/audio/Cơn Mưa Ngang Qua.mp3', 7)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (16, N'Chúng Ta Không Thuộc Về Nhau.jpg', N'Chúng Ta Không Thuộc Về Nhau', N'/asset/audio/Chúng Ta Không Thuộc Về Nhau.mp3', 7)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (17, N'Em Của Ngày Hôm Qua.jpg', N'Em Của Ngày Hôm Qua', N'/asset/audio/Em Của Ngày Hôm Qua.mp3', 7)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (18, N'Buông Đôi Tay Nhau Ra.jpg', N'Buông Đôi Tay Nhau Ra', N'/asset/audio/Buông Đôi Tay Nhau Ra.mp3', 7)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (19, N'Như Ngày Hôm Qua.jpg', N'Như Ngày Hôm Qua', N'/asset/audio/Như Ngày Hôm Qua.mp3', 7)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (20, N'Lạc Trôi.jpg', N'Lạc Trôi', N'/asset/audio/Lạc Trôi.mp3', 7)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (21, N'Nơi Này Có Anh.jpg', N'Nơi Này Có Anh', N'/asset/audio/Nơi Này Có Anh.mp3', 7)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (22, N'Chạy Ngay Đi.jpg', N'Chạy Ngay Đi', N'/asset/audio/Chạy Ngay Đi.mp3', 7)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (23, N'Hãy Trao Cho Anh.jpg', N'Hãy Trao Cho Anh', N'/asset/audio/Hãy Trao Cho Anh.mp3', 7)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (24, N'Anh Đếch Cần Gì Nhiều Ngoài Em.jpg', N'Anh Đếch Cần Gì Nhiều Ngoài Em', N'/asset/audio/Anh Đếch Cần Gì Nhiều Ngoài Em.mp3', 8)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (25, N'Trốn Tìm.jpg', N'Trốn Tìm', N'/asset/audio/Trốn Tìm.mp3', 8)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (26, N'Bài Này Chill Phết.jpg', N'Bài Này Chill Phết', N'/asset/audio/Bài Này Chill Phết.mp3', 8)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (27, N'Mang Tiền Về Cho Mẹ.jpg', N'Mang Tiền Về Cho Mẹ', N'/asset/audio/Mang Tiền Về Cho Mẹ.mp3', 8)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (28, N'Một Triệu Like.jpg', N'Một Triệu Like', N'/asset/audio/Một Triệu Like.mp3', 8)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (29, N'Chìm Sâu.jpg', N'Chìm Sâu', N'/asset/audio/Chìm Sâu.mp3', 9)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (30, N'Suit & Tie.jpg', N'Suit & Tie', N'/asset/audio/Suit & Tie.mp3', 9)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (31, N'Va Vào Giai Điệu Này.jpg', N'Va Vào Giai Điệu Này', N'/asset/audio/Va Vào Giai Điệu Này.mp3', 9)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (32, N'Tối Nay Ta Đi Đâu Nhờ.jpg', N'Tối Nay Ta Đi Đâu Nhờ', N'/asset/audio/Tối Nay Ta Đi Đâu Nhờ.mp3', 9)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (33, N'Chỉ Một Đêm Nữa Thôi.jpg', N'Chỉ Một Đêm Nữa Thôi', N'/asset/audio/Chỉ Một Đêm Nữa Thôi.mp3', 9)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (34, N'Tại Vì Sao.jpg', N'Tại Vì Sao', N'/asset/audio/Tại Vì Sao.mp3', 9)
INSERT [dbo].[songs] ([id], [image], [name], [path], [album_id]) VALUES (35, N'Giàu Vì Bạn Sang Vì Vợ.jpg', N'Giàu Vì Bạn Sang Vì Vợ', N'/asset/audio/Giàu Vì Bạn Sang Vì Vợ.mp3', 9)
SET IDENTITY_INSERT [dbo].[songs] OFF
GO
ALTER TABLE [dbo].[accounts]  WITH CHECK ADD  CONSTRAINT [FKrxh4jy51ntuxfw4nu117h0in4] FOREIGN KEY([user_id])
REFERENCES [dbo].[accounts] ([username])
GO
ALTER TABLE [dbo].[accounts] CHECK CONSTRAINT [FKrxh4jy51ntuxfw4nu117h0in4]
GO
ALTER TABLE [dbo].[accounts]  WITH CHECK ADD  CONSTRAINT [FKt3wava8ssfdspnh3hg4col3m1] FOREIGN KEY([role_id])
REFERENCES [dbo].[roles] ([id])
GO
ALTER TABLE [dbo].[accounts] CHECK CONSTRAINT [FKt3wava8ssfdspnh3hg4col3m1]
GO
ALTER TABLE [dbo].[favorites]  WITH CHECK ADD  CONSTRAINT [FK6i60djvd34y1rvegenufbw4dh] FOREIGN KEY([songid])
REFERENCES [dbo].[songs] ([id])
GO
ALTER TABLE [dbo].[favorites] CHECK CONSTRAINT [FK6i60djvd34y1rvegenufbw4dh]
GO
ALTER TABLE [dbo].[favorites]  WITH CHECK ADD  CONSTRAINT [FKocjjmfmpqs0ai2kfeyisera37] FOREIGN KEY([userid])
REFERENCES [dbo].[accounts] ([username])
GO
ALTER TABLE [dbo].[favorites] CHECK CONSTRAINT [FKocjjmfmpqs0ai2kfeyisera37]
GO
ALTER TABLE [dbo].[passwordresettoken]  WITH CHECK ADD  CONSTRAINT [FK56wyjlwa43y1u0107ipju5wlt] FOREIGN KEY([account_username])
REFERENCES [dbo].[accounts] ([username])
GO
ALTER TABLE [dbo].[passwordresettoken] CHECK CONSTRAINT [FK56wyjlwa43y1u0107ipju5wlt]
GO
ALTER TABLE [dbo].[playlist_song]  WITH CHECK ADD  CONSTRAINT [FKhimqe90is8m3m0mm8rmtmht6] FOREIGN KEY([playlist_id])
REFERENCES [dbo].[playlists] ([id])
GO
ALTER TABLE [dbo].[playlist_song] CHECK CONSTRAINT [FKhimqe90is8m3m0mm8rmtmht6]
GO
ALTER TABLE [dbo].[playlist_song]  WITH CHECK ADD  CONSTRAINT [FKi0j8d774d3em1dgonqnc1x1g7] FOREIGN KEY([song_id])
REFERENCES [dbo].[songs] ([id])
GO
ALTER TABLE [dbo].[playlist_song] CHECK CONSTRAINT [FKi0j8d774d3em1dgonqnc1x1g7]
GO
ALTER TABLE [dbo].[playlists]  WITH CHECK ADD  CONSTRAINT [FKq47t9aoh2te3409x4ohwgjjwk] FOREIGN KEY([creator])
REFERENCES [dbo].[accounts] ([username])
GO
ALTER TABLE [dbo].[playlists] CHECK CONSTRAINT [FKq47t9aoh2te3409x4ohwgjjwk]
GO
ALTER TABLE [dbo].[singer_album]  WITH CHECK ADD  CONSTRAINT [FK6p08mrhc7pnfrsjbgsv04ibo1] FOREIGN KEY([album_id])
REFERENCES [dbo].[albums] ([id])
GO
ALTER TABLE [dbo].[singer_album] CHECK CONSTRAINT [FK6p08mrhc7pnfrsjbgsv04ibo1]
GO
ALTER TABLE [dbo].[singer_album]  WITH CHECK ADD  CONSTRAINT [FKmkxvi5faqngom1g34lqsty9gp] FOREIGN KEY([singer_id])
REFERENCES [dbo].[singers] ([id])
GO
ALTER TABLE [dbo].[singer_album] CHECK CONSTRAINT [FKmkxvi5faqngom1g34lqsty9gp]
GO
ALTER TABLE [dbo].[song_genres]  WITH CHECK ADD  CONSTRAINT [FK55mmt06br4cdjyvl0rpk6dvn1] FOREIGN KEY([genre_id])
REFERENCES [dbo].[genres] ([id])
GO
ALTER TABLE [dbo].[song_genres] CHECK CONSTRAINT [FK55mmt06br4cdjyvl0rpk6dvn1]
GO
ALTER TABLE [dbo].[song_genres]  WITH CHECK ADD  CONSTRAINT [FKxds8owij907p9cernosbpof5] FOREIGN KEY([song_id])
REFERENCES [dbo].[songs] ([id])
GO
ALTER TABLE [dbo].[song_genres] CHECK CONSTRAINT [FKxds8owij907p9cernosbpof5]
GO
ALTER TABLE [dbo].[song_listen]  WITH CHECK ADD  CONSTRAINT [FKj37koshguwjw1lri11xgrb3on] FOREIGN KEY([song_id])
REFERENCES [dbo].[songs] ([id])
GO
ALTER TABLE [dbo].[song_listen] CHECK CONSTRAINT [FKj37koshguwjw1lri11xgrb3on]
GO
ALTER TABLE [dbo].[song_singer]  WITH CHECK ADD  CONSTRAINT [FK1sngeopmant61m9mg03rgvcyn] FOREIGN KEY([singer_id])
REFERENCES [dbo].[singers] ([id])
GO
ALTER TABLE [dbo].[song_singer] CHECK CONSTRAINT [FK1sngeopmant61m9mg03rgvcyn]
GO
ALTER TABLE [dbo].[song_singer]  WITH CHECK ADD  CONSTRAINT [FKgiqo14hwrl4y8qqeh8j128onq] FOREIGN KEY([song_id])
REFERENCES [dbo].[songs] ([id])
GO
ALTER TABLE [dbo].[song_singer] CHECK CONSTRAINT [FKgiqo14hwrl4y8qqeh8j128onq]
GO
ALTER TABLE [dbo].[songs]  WITH CHECK ADD  CONSTRAINT [FKte4gkb2cqtk2erfa87oopj2cj] FOREIGN KEY([album_id])
REFERENCES [dbo].[albums] ([id])
GO
ALTER TABLE [dbo].[songs] CHECK CONSTRAINT [FKte4gkb2cqtk2erfa87oopj2cj]
GO
