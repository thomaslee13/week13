USE [master]
GO
/****** Object:  Database [WossaMotta_U]    Script Date: 3/28/2022 4:41:50 PM ******/
CREATE DATABASE [WossaMotta_U]
GO

USE [WossaMotta_U]
GO

CREATE TABLE [dbo].[Classes](
	[ClassID] [varchar](8) NOT NULL,
	[SubjectID] [varchar](8) NULL,
	[Credits] [int] NULL,
	[ClassRoomNumber] [varchar](25) NULL,
	[StartDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculty]    Script Date: 3/28/2022 4:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculty](
	[FacultyID] [varchar](8) NOT NULL,
	[Title] [varchar](40) NULL,
	[Tenure_is_checked] [bit] NULL,
	[FacFirstName] [varchar](40) NULL,
	[FacLastName] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[FacultyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculty_Classes]    Script Date: 3/28/2022 4:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculty_Classes](
	[Faculty_ClassesID] [varchar](8) NOT NULL,
	[ClassID] [varchar](8) NULL,
	[FacultyID] [varchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[Faculty_ClassesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Schedules]    Script Date: 3/28/2022 4:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Schedules](
	[ScheduleID] [varchar](8) NOT NULL,
	[ClassID] [varchar](8) NULL,
	[StudentID] [varchar](8) NULL,
	[Grade] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[ScheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 3/28/2022 4:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentID] [varchar](8) NOT NULL,
	[StudFirstName] [varchar](25) NULL,
	[StudLastName] [varchar](25) NULL,
	[StudMajor] [varchar](40) NULL,
	[StudPhone] [varchar](14) NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 3/28/2022 4:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[SubjectID] [varchar](8) NOT NULL,
	[ClassID] [varchar](8) NULL,
	[SubjectCode] [varchar](25) NULL,
	[SubjectName] [varchar](50) NULL,
	[SubjectDescription] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Classes] ([ClassID], [SubjectID], [Credits], [ClassRoomNumber], [StartDate]) VALUES (N'CL000001', N'SU000001', 3, N'Bulwinkle Hall 315', CAST(N'2022-08-26' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [SubjectID], [Credits], [ClassRoomNumber], [StartDate]) VALUES (N'CL000011', N'SU000017', 1, N'Natasha Hall', CAST(N'2022-08-25' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [SubjectID], [Credits], [ClassRoomNumber], [StartDate]) VALUES (N'CL000013', N'SU000045', 3, N'Badenov Center', CAST(N'2022-08-29' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [SubjectID], [Credits], [ClassRoomNumber], [StartDate]) VALUES (N'CL000019', N'SU000004', 3, N'Rocky Auditorium A100', CAST(N'2022-08-28' AS Date))
GO
INSERT [dbo].[Classes] ([ClassID], [SubjectID], [Credits], [ClassRoomNumber], [StartDate]) VALUES (N'CL000023', N'SU000051', 3, N'Fearless Leader Dungeon', CAST(N'2022-09-01' AS Date))
GO
INSERT [dbo].[Faculty] ([FacultyID], [Title], [Tenure_is_checked], [FacFirstName], [FacLastName]) VALUES (N'FA000012', N'Professor Emeritus', 1, N'Jacob', N'Marley')
GO
INSERT [dbo].[Faculty] ([FacultyID], [Title], [Tenure_is_checked], [FacFirstName], [FacLastName]) VALUES (N'FA000024', N'Instructor', 0, N'Pete', N'Fleet')
GO
INSERT [dbo].[Faculty] ([FacultyID], [Title], [Tenure_is_checked], [FacFirstName], [FacLastName]) VALUES (N'FA000036', N'Uber Mentor', 1, N'Nora', N'Pinata')
GO
INSERT [dbo].[Faculty] ([FacultyID], [Title], [Tenure_is_checked], [FacFirstName], [FacLastName]) VALUES (N'FA000048', N'Professor', 0, N'Sally', N'Gomez')
GO
INSERT [dbo].[Faculty] ([FacultyID], [Title], [Tenure_is_checked], [FacFirstName], [FacLastName]) VALUES (N'FA000060', N'Teach', 0, N'Vic', N'MacBeth')
GO
INSERT [dbo].[Faculty_Classes] ([Faculty_ClassesID], [ClassID], [FacultyID]) VALUES (N'FC000001', N'CL000023', N'FA000012')
GO
INSERT [dbo].[Faculty_Classes] ([Faculty_ClassesID], [ClassID], [FacultyID]) VALUES (N'FC000002', N'CL000013', N'FA000024')
GO
INSERT [dbo].[Faculty_Classes] ([Faculty_ClassesID], [ClassID], [FacultyID]) VALUES (N'FC000003', N'CL000011', N'FA000036')
GO
INSERT [dbo].[Faculty_Classes] ([Faculty_ClassesID], [ClassID], [FacultyID]) VALUES (N'FC000004', N'CL000019', N'FA000048')
GO
INSERT [dbo].[Faculty_Classes] ([Faculty_ClassesID], [ClassID], [FacultyID]) VALUES (N'FC000005', N'CL000001', N'FA000060')
GO
INSERT [dbo].[Student_Schedules] ([ScheduleID], [ClassID], [StudentID], [Grade]) VALUES (N'SC000001', N'CL000001', N'ST000099', N'A')
GO
INSERT [dbo].[Student_Schedules] ([ScheduleID], [ClassID], [StudentID], [Grade]) VALUES (N'SC000002', N'CL000019', N'ST000115', N'B')
GO
INSERT [dbo].[Student_Schedules] ([ScheduleID], [ClassID], [StudentID], [Grade]) VALUES (N'SC000003', N'CL000011', N'ST000217', N'C')
GO
INSERT [dbo].[Student_Schedules] ([ScheduleID], [ClassID], [StudentID], [Grade]) VALUES (N'SC000004', N'CL000013', N'ST000317', N'B')
GO
INSERT [dbo].[Student_Schedules] ([ScheduleID], [ClassID], [StudentID], [Grade]) VALUES (N'SC000005', N'CL000023', N'ST000523', N'A')
GO
INSERT [dbo].[Students] ([StudentID], [StudFirstName], [StudLastName], [StudMajor], [StudPhone]) VALUES (N'ST000099', N'Buck', N'Rogers', N'Rocketry', N'(444)-555-9873')
GO
INSERT [dbo].[Students] ([StudentID], [StudFirstName], [StudLastName], [StudMajor], [StudPhone]) VALUES (N'ST000115', N'Louisa May', N'Alcott', N'Literature', N'(448)-355-9383')
GO
INSERT [dbo].[Students] ([StudentID], [StudFirstName], [StudLastName], [StudMajor], [StudPhone]) VALUES (N'ST000217', N'Dave', N'Bowman', N'Astronomy', N'(449)-755-3373')
GO
INSERT [dbo].[Students] ([StudentID], [StudFirstName], [StudLastName], [StudMajor], [StudPhone]) VALUES (N'ST000317', N'Ripley', N'Just_Ripley', N'Astrophysics', N'(424)-515-9673')
GO
INSERT [dbo].[Students] ([StudentID], [StudFirstName], [StudLastName], [StudMajor], [StudPhone]) VALUES (N'ST000523', N'Mulligan', N'Stu', N'Culinary Arts', N'(416)-165-9163')
GO
INSERT [dbo].[Subjects] ([SubjectID], [ClassID], [SubjectCode], [SubjectName], [SubjectDescription]) VALUES (N'SU000001', N'CL000001', N'USH101', N'U.S. History 101', N'Required Freshman history class')
GO
INSERT [dbo].[Subjects] ([SubjectID], [ClassID], [SubjectCode], [SubjectName], [SubjectDescription]) VALUES (N'SU000004', N'CL000019', N'ENG203', N'Lyric Poetry and the Self', N'A bunch of sappy romantic poems')
GO
INSERT [dbo].[Subjects] ([SubjectID], [ClassID], [SubjectCode], [SubjectName], [SubjectDescription]) VALUES (N'SU000017', N'CL000011', N'SCI311', N'Rocketry for Dummies', N'Building rockets out of sprockets')
GO
INSERT [dbo].[Subjects] ([SubjectID], [ClassID], [SubjectCode], [SubjectName], [SubjectDescription]) VALUES (N'SU000045', N'CL000013', N'PHY031', N'Zamboni Driving Lessons', N'Learn to drive the Zamboni at the Field House Ice Rink')
GO
INSERT [dbo].[Subjects] ([SubjectID], [ClassID], [SubjectCode], [SubjectName], [SubjectDescription]) VALUES (N'SU000051', N'CL000023', N'MATH202', N'Imaginary Numbers for Dummies', N'Advanced Math targeting nooknudgies like Winston over there')
GO
ALTER TABLE [dbo].[Classes]  WITH CHECK ADD  CONSTRAINT [SubjectID] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subjects] ([SubjectID])
GO
ALTER TABLE [dbo].[Classes] CHECK CONSTRAINT [SubjectID]
GO
ALTER TABLE [dbo].[Faculty_Classes]  WITH CHECK ADD FOREIGN KEY([ClassID])
REFERENCES [dbo].[Classes] ([ClassID])
GO
ALTER TABLE [dbo].[Faculty_Classes]  WITH CHECK ADD FOREIGN KEY([FacultyID])
REFERENCES [dbo].[Faculty] ([FacultyID])
GO
ALTER TABLE [dbo].[Student_Schedules]  WITH CHECK ADD FOREIGN KEY([ClassID])
REFERENCES [dbo].[Classes] ([ClassID])
GO
ALTER TABLE [dbo].[Student_Schedules]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([StudentID])
GO
ALTER TABLE [dbo].[Subjects]  WITH CHECK ADD FOREIGN KEY([ClassID])
REFERENCES [dbo].[Classes] ([ClassID])
GO
USE [master]
GO
ALTER DATABASE [WossaMotta_U] SET  READ_WRITE 
GO
