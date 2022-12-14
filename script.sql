USE [prn_project]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 11/13/2022 10:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[AnswerId] [int] IDENTITY(1,1) NOT NULL,
	[QuizId] [int] NULL,
	[AnswerDetail] [varchar](100) NULL,
	[correct] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[AnswerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 11/13/2022 10:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[QuizId] [int] IDENTITY(1,1) NOT NULL,
	[QuizsetId] [int] NULL,
	[QuizDetail] [varchar](100) NULL,
	[QuizType] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[QuizId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuizSet]    Script Date: 11/13/2022 10:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuizSet](
	[QuizsetId] [int] IDENTITY(1,1) NOT NULL,
	[QuizsetTitle] [varchar](100) NULL,
	[Category] [varchar](100) NULL,
	[Score] [decimal](18, 0) NULL,
	[Time] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[QuizsetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblQuestions]    Script Date: 11/13/2022 10:16:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblQuestions](
	[QuestionId] [int] NOT NULL,
	[Question] [varchar](500) NULL,
	[Option1] [varchar](255) NULL,
	[Option2] [varchar](255) NULL,
	[Option3] [varchar](255) NULL,
	[Option4] [varchar](255) NULL,
	[QuestionAnswer] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Answer] ON 

INSERT [dbo].[Answer] ([AnswerId], [QuizId], [AnswerDetail], [correct]) VALUES (1, 1, N'10', 1)
INSERT [dbo].[Answer] ([AnswerId], [QuizId], [AnswerDetail], [correct]) VALUES (2, 1, N'0', 0)
INSERT [dbo].[Answer] ([AnswerId], [QuizId], [AnswerDetail], [correct]) VALUES (3, 1, N'6', 0)
INSERT [dbo].[Answer] ([AnswerId], [QuizId], [AnswerDetail], [correct]) VALUES (4, 1, N'7', 0)
INSERT [dbo].[Answer] ([AnswerId], [QuizId], [AnswerDetail], [correct]) VALUES (5, 2, N'12', 1)
INSERT [dbo].[Answer] ([AnswerId], [QuizId], [AnswerDetail], [correct]) VALUES (6, 2, N'0', 0)
INSERT [dbo].[Answer] ([AnswerId], [QuizId], [AnswerDetail], [correct]) VALUES (7, 2, N'54', 0)
INSERT [dbo].[Answer] ([AnswerId], [QuizId], [AnswerDetail], [correct]) VALUES (8, 2, N'676', 0)
INSERT [dbo].[Answer] ([AnswerId], [QuizId], [AnswerDetail], [correct]) VALUES (9, 3, N'co', 1)
INSERT [dbo].[Answer] ([AnswerId], [QuizId], [AnswerDetail], [correct]) VALUES (10, 3, N'ngu', 1)
INSERT [dbo].[Answer] ([AnswerId], [QuizId], [AnswerDetail], [correct]) VALUES (11, 3, N'cuc ngu', 1)
INSERT [dbo].[Answer] ([AnswerId], [QuizId], [AnswerDetail], [correct]) VALUES (12, 3, N'ngu vai ca loz', 1)
INSERT [dbo].[Answer] ([AnswerId], [QuizId], [AnswerDetail], [correct]) VALUES (13, 4, N'1', 0)
INSERT [dbo].[Answer] ([AnswerId], [QuizId], [AnswerDetail], [correct]) VALUES (14, 4, N'2', 0)
INSERT [dbo].[Answer] ([AnswerId], [QuizId], [AnswerDetail], [correct]) VALUES (15, 4, N'3', 1)
INSERT [dbo].[Answer] ([AnswerId], [QuizId], [AnswerDetail], [correct]) VALUES (16, 4, N'4', 0)
INSERT [dbo].[Answer] ([AnswerId], [QuizId], [AnswerDetail], [correct]) VALUES (17, 5, N'a', 1)
INSERT [dbo].[Answer] ([AnswerId], [QuizId], [AnswerDetail], [correct]) VALUES (18, 5, N'b', 0)
INSERT [dbo].[Answer] ([AnswerId], [QuizId], [AnswerDetail], [correct]) VALUES (19, 5, N'c', 0)
SET IDENTITY_INSERT [dbo].[Answer] OFF
GO
SET IDENTITY_INSERT [dbo].[Quiz] ON 

INSERT [dbo].[Quiz] ([QuizId], [QuizsetId], [QuizDetail], [QuizType]) VALUES (1, 1, N'5+5=', N'Radio')
INSERT [dbo].[Quiz] ([QuizId], [QuizsetId], [QuizDetail], [QuizType]) VALUES (2, 1, N'6+6=', N'Radio')
INSERT [dbo].[Quiz] ([QuizId], [QuizsetId], [QuizDetail], [QuizType]) VALUES (3, 1, N'Long co ngu khong', N'Check')
INSERT [dbo].[Quiz] ([QuizId], [QuizsetId], [QuizDetail], [QuizType]) VALUES (4, 2, N'Abc co may chu', N'Radio')
INSERT [dbo].[Quiz] ([QuizId], [QuizsetId], [QuizDetail], [QuizType]) VALUES (5, 1, N'abc', N'Radio')
SET IDENTITY_INSERT [dbo].[Quiz] OFF
GO
SET IDENTITY_INSERT [dbo].[QuizSet] ON 

INSERT [dbo].[QuizSet] ([QuizsetId], [QuizsetTitle], [Category], [Score], [Time]) VALUES (1, N'Quiz1', N'Math', CAST(10 AS Decimal(18, 0)), 65)
INSERT [dbo].[QuizSet] ([QuizsetId], [QuizsetTitle], [Category], [Score], [Time]) VALUES (2, N'Quiz2', N'Physics', CAST(10 AS Decimal(18, 0)), 65)
SET IDENTITY_INSERT [dbo].[QuizSet] OFF
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD FOREIGN KEY([QuizId])
REFERENCES [dbo].[Quiz] ([QuizId])
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD FOREIGN KEY([QuizsetId])
REFERENCES [dbo].[QuizSet] ([QuizsetId])
GO
