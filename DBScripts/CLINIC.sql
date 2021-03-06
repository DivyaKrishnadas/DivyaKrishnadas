USE [master]
GO
/****** Object:  Database [CLINIC]    Script Date: 07/29/2022 17:20:03 ******/
CREATE DATABASE [CLINIC] ON  PRIMARY 
( NAME = N'CLINIC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS1\MSSQL\DATA\CLINIC.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CLINIC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS1\MSSQL\DATA\CLINIC_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CLINIC] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CLINIC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CLINIC] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CLINIC] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CLINIC] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CLINIC] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CLINIC] SET ARITHABORT OFF
GO
ALTER DATABASE [CLINIC] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [CLINIC] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CLINIC] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CLINIC] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CLINIC] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CLINIC] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CLINIC] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CLINIC] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CLINIC] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CLINIC] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CLINIC] SET  DISABLE_BROKER
GO
ALTER DATABASE [CLINIC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CLINIC] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CLINIC] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CLINIC] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CLINIC] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CLINIC] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [CLINIC] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CLINIC] SET  READ_WRITE
GO
ALTER DATABASE [CLINIC] SET RECOVERY SIMPLE
GO
ALTER DATABASE [CLINIC] SET  MULTI_USER
GO
ALTER DATABASE [CLINIC] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CLINIC] SET DB_CHAINING OFF
GO
USE [CLINIC]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 07/29/2022 17:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Account_id] [int] IDENTITY(1,1) NOT NULL,
	[Account_Username] [nvarchar](50) NOT NULL,
	[Account_Password] [nvarchar](50) NOT NULL,
	[Account_Email] [nvarchar](50) NOT NULL,
	[Account_Mobile] [nvarchar](50) NULL,
	[Account_Type] [nvarchar](50) NULL,
	[Account_CreatedAt] [datetime] NULL,
	[Account_Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Account_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([Account_id], [Account_Username], [Account_Password], [Account_Email], [Account_Mobile], [Account_Type], [Account_CreatedAt], [Account_Status]) VALUES (11, N'Arjun', N'arjun', N'arjun@gmail', N'9611672255', N'doctor', CAST(0x0000AEE1004DFE8B AS DateTime), N'Registered')
INSERT [dbo].[Account] ([Account_id], [Account_Username], [Account_Password], [Account_Email], [Account_Mobile], [Account_Type], [Account_CreatedAt], [Account_Status]) VALUES (12, N'Divya', N'divya', N'divya@gmail', N'8301829219', N'doctor', CAST(0x0000AEE1004E4DB2 AS DateTime), N'Registered')
INSERT [dbo].[Account] ([Account_id], [Account_Username], [Account_Password], [Account_Email], [Account_Mobile], [Account_Type], [Account_CreatedAt], [Account_Status]) VALUES (13, N'Jishnu', N'jishnu', N'jishnu@gmail', N'9496726354', N'doctor', CAST(0x0000AEE1004E7187 AS DateTime), N'Registered')
INSERT [dbo].[Account] ([Account_id], [Account_Username], [Account_Password], [Account_Email], [Account_Mobile], [Account_Type], [Account_CreatedAt], [Account_Status]) VALUES (14, N'Vidhya', N'vidhya', N'vidhya@gmail', N'9496346622', N'doctor', CAST(0x0000AEE1004EA1DE AS DateTime), N'Registered')
INSERT [dbo].[Account] ([Account_id], [Account_Username], [Account_Password], [Account_Email], [Account_Mobile], [Account_Type], [Account_CreatedAt], [Account_Status]) VALUES (15, N'Krishnadas', N'krishnadas', N'krishnadas@gmail', N'9447618370', N'patient', CAST(0x0000AEE1004EF69F AS DateTime), N'Registered')
INSERT [dbo].[Account] ([Account_id], [Account_Username], [Account_Password], [Account_Email], [Account_Mobile], [Account_Type], [Account_CreatedAt], [Account_Status]) VALUES (16, N'Prema', N'prema', N'prema@gmail', N'9400384455', N'patient', CAST(0x0000AEE1004F1FD1 AS DateTime), N'Registered')
INSERT [dbo].[Account] ([Account_id], [Account_Username], [Account_Password], [Account_Email], [Account_Mobile], [Account_Type], [Account_CreatedAt], [Account_Status]) VALUES (17, N'Radhakrishnan', N'radhakrishnan', N'radhakrishnan@gmail', N'8700384455', N'patient', CAST(0x0000AEE1004F42D8 AS DateTime), N'Registered')
INSERT [dbo].[Account] ([Account_id], [Account_Username], [Account_Password], [Account_Email], [Account_Mobile], [Account_Type], [Account_CreatedAt], [Account_Status]) VALUES (18, N'Sumangala', N'sumangala', N'sumangala@gmail', N'9483726491', N'patient', CAST(0x0000AEE1004F6AD9 AS DateTime), N'Registered')
INSERT [dbo].[Account] ([Account_id], [Account_Username], [Account_Password], [Account_Email], [Account_Mobile], [Account_Type], [Account_CreatedAt], [Account_Status]) VALUES (19, N'John', N'john', N'john@gmail', N'8253627183', N'admin', CAST(0x0000AEE1004FDDD6 AS DateTime), N'Registered')
INSERT [dbo].[Account] ([Account_id], [Account_Username], [Account_Password], [Account_Email], [Account_Mobile], [Account_Type], [Account_CreatedAt], [Account_Status]) VALUES (20, N'Mary', N'mary', N'mary@gmail', N'9892939654', N'admin', CAST(0x0000AEE10050CBC5 AS DateTime), N'Registered')
SET IDENTITY_INSERT [dbo].[Account] OFF
/****** Object:  Table [dbo].[Patient]    Script Date: 07/29/2022 17:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[Patient_id] [int] IDENTITY(1,1) NOT NULL,
	[Patient_FirstName] [nvarchar](50) NOT NULL,
	[Patient_LastName] [nvarchar](50) NOT NULL,
	[Patient_Gender] [nvarchar](50) NOT NULL,
	[Patient_Mobile] [nvarchar](50) NOT NULL,
	[Patient_Email] [nvarchar](50) NOT NULL,
	[Patient_Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[Patient_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Patient] ON
INSERT [dbo].[Patient] ([Patient_id], [Patient_FirstName], [Patient_LastName], [Patient_Gender], [Patient_Mobile], [Patient_Email], [Patient_Address]) VALUES (14, N'Krishnadas', N'K', N'm', N'9447618370', N'krishnadas@gmail', N'krishnadas_wadakanchery')
INSERT [dbo].[Patient] ([Patient_id], [Patient_FirstName], [Patient_LastName], [Patient_Gender], [Patient_Mobile], [Patient_Email], [Patient_Address]) VALUES (15, N'Prema', N'K P', N'f', N'9400384455', N'prema@gmail', N'prema_wadakanchery')
INSERT [dbo].[Patient] ([Patient_id], [Patient_FirstName], [Patient_LastName], [Patient_Gender], [Patient_Mobile], [Patient_Email], [Patient_Address]) VALUES (16, N'Radhakrishnan', N'C', N'm', N'8700384455', N'radhakrishnan@gmail', N'radhakrishnan_palakkad')
INSERT [dbo].[Patient] ([Patient_id], [Patient_FirstName], [Patient_LastName], [Patient_Gender], [Patient_Mobile], [Patient_Email], [Patient_Address]) VALUES (17, N'Sumangala', N'K V', N'f', N'9483726491', N'sumangala@gmail', N'sumangala_palakkad')
SET IDENTITY_INSERT [dbo].[Patient] OFF
/****** Object:  Table [dbo].[Doctor]    Script Date: 07/29/2022 17:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[Doctor_id] [int] IDENTITY(1,1) NOT NULL,
	[Doctor_FirstName] [nvarchar](50) NOT NULL,
	[Doctor_LastName] [nvarchar](50) NOT NULL,
	[Doctor_Gender] [nvarchar](50) NOT NULL,
	[Doctor_Specialization] [nvarchar](50) NULL,
	[Doctor_Mobile] [nvarchar](50) NOT NULL,
	[Doctor_Email] [nvarchar](50) NOT NULL,
	[Doctor_Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[Doctor_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Doctor] ON
INSERT [dbo].[Doctor] ([Doctor_id], [Doctor_FirstName], [Doctor_LastName], [Doctor_Gender], [Doctor_Specialization], [Doctor_Mobile], [Doctor_Email], [Doctor_Address]) VALUES (7, N'Arjun', N'K V', N'm', N'md ortho', N'9611672255', N'arjun@gmail.com', N'arjun_palakkad')
INSERT [dbo].[Doctor] ([Doctor_id], [Doctor_FirstName], [Doctor_LastName], [Doctor_Gender], [Doctor_Specialization], [Doctor_Mobile], [Doctor_Email], [Doctor_Address]) VALUES (8, N'Divya', N'K P', N'f', N'md gynach', N'8301829219', N'divya@gmail.com', N'divya_thrissur')
INSERT [dbo].[Doctor] ([Doctor_id], [Doctor_FirstName], [Doctor_LastName], [Doctor_Gender], [Doctor_Specialization], [Doctor_Mobile], [Doctor_Email], [Doctor_Address]) VALUES (9, N'Jishnu', N'Narayanan', N'm', N'md pediatrics', N'9496726354', N'jishnu@gmail.com', N'jishnu_malappuram')
INSERT [dbo].[Doctor] ([Doctor_id], [Doctor_FirstName], [Doctor_LastName], [Doctor_Gender], [Doctor_Specialization], [Doctor_Mobile], [Doctor_Email], [Doctor_Address]) VALUES (10, N'Vidhya', N'K P', N'f', N'md dentist', N'9496346622', N'vidhya@gmail.com', N'vidhya_thrissur')
SET IDENTITY_INSERT [dbo].[Doctor] OFF
/****** Object:  Table [dbo].[Appointment]    Script Date: 07/29/2022 17:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[Appointment_id] [int] IDENTITY(1,1) NOT NULL,
	[Appointment_Date] [date] NOT NULL,
	[Appointment_Time] [datetime] NOT NULL,
	[Appointment_Duration] [int] NOT NULL,
	[Appointment_Status] [nvarchar](50) NOT NULL,
	[Appointment_PatientId] [int] NOT NULL,
	[Appointment_DoctorId] [int] NOT NULL,
	[Appointment_CreatedBy] [nvarchar](50) NULL,
	[Appointment_CreatedTime] [datetime] NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[Appointment_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Appointment] ON
INSERT [dbo].[Appointment] ([Appointment_id], [Appointment_Date], [Appointment_Time], [Appointment_Duration], [Appointment_Status], [Appointment_PatientId], [Appointment_DoctorId], [Appointment_CreatedBy], [Appointment_CreatedTime]) VALUES (1, CAST(0x3C440B00 AS Date), CAST(0x0000AEE100A4CB80 AS DateTime), 30, N'closed', 16, 7, NULL, NULL)
INSERT [dbo].[Appointment] ([Appointment_id], [Appointment_Date], [Appointment_Time], [Appointment_Duration], [Appointment_Status], [Appointment_PatientId], [Appointment_DoctorId], [Appointment_CreatedBy], [Appointment_CreatedTime]) VALUES (2, CAST(0x3C440B00 AS Date), CAST(0x0000AEE100A4CB80 AS DateTime), 30, N'active', 14, 8, NULL, NULL)
INSERT [dbo].[Appointment] ([Appointment_id], [Appointment_Date], [Appointment_Time], [Appointment_Duration], [Appointment_Status], [Appointment_PatientId], [Appointment_DoctorId], [Appointment_CreatedBy], [Appointment_CreatedTime]) VALUES (3, CAST(0x3C440B00 AS Date), CAST(0x0000AEE100B54640 AS DateTime), 30, N'active', 15, 8, NULL, NULL)
INSERT [dbo].[Appointment] ([Appointment_id], [Appointment_Date], [Appointment_Time], [Appointment_Duration], [Appointment_Status], [Appointment_PatientId], [Appointment_DoctorId], [Appointment_CreatedBy], [Appointment_CreatedTime]) VALUES (4, CAST(0x3C440B00 AS Date), CAST(0x0000AEE100A4CB80 AS DateTime), 30, N'closed', 17, 7, NULL, NULL)
INSERT [dbo].[Appointment] ([Appointment_id], [Appointment_Date], [Appointment_Time], [Appointment_Duration], [Appointment_Status], [Appointment_PatientId], [Appointment_DoctorId], [Appointment_CreatedBy], [Appointment_CreatedTime]) VALUES (5, CAST(0x3C440B00 AS Date), CAST(0x0000AEE100A4CB80 AS DateTime), 30, N'active', 17, 7, NULL, NULL)
INSERT [dbo].[Appointment] ([Appointment_id], [Appointment_Date], [Appointment_Time], [Appointment_Duration], [Appointment_Status], [Appointment_PatientId], [Appointment_DoctorId], [Appointment_CreatedBy], [Appointment_CreatedTime]) VALUES (6, CAST(0x3C440B00 AS Date), CAST(0x0000AEE100A4CB80 AS DateTime), 30, N'active', 14, 9, NULL, NULL)
INSERT [dbo].[Appointment] ([Appointment_id], [Appointment_Date], [Appointment_Time], [Appointment_Duration], [Appointment_Status], [Appointment_PatientId], [Appointment_DoctorId], [Appointment_CreatedBy], [Appointment_CreatedTime]) VALUES (7, CAST(0x3C440B00 AS Date), CAST(0x0000AEE100A4CB80 AS DateTime), 30, N'active', 15, 9, NULL, NULL)
INSERT [dbo].[Appointment] ([Appointment_id], [Appointment_Date], [Appointment_Time], [Appointment_Duration], [Appointment_Status], [Appointment_PatientId], [Appointment_DoctorId], [Appointment_CreatedBy], [Appointment_CreatedTime]) VALUES (8, CAST(0x3C440B00 AS Date), CAST(0x0000AEE100C5C100 AS DateTime), 30, N'active', 17, 8, NULL, NULL)
INSERT [dbo].[Appointment] ([Appointment_id], [Appointment_Date], [Appointment_Time], [Appointment_Duration], [Appointment_Status], [Appointment_PatientId], [Appointment_DoctorId], [Appointment_CreatedBy], [Appointment_CreatedTime]) VALUES (9, CAST(0x3C440B00 AS Date), CAST(0x0000AEE100A4CB80 AS DateTime), 30, N'active', 14, 7, NULL, NULL)
INSERT [dbo].[Appointment] ([Appointment_id], [Appointment_Date], [Appointment_Time], [Appointment_Duration], [Appointment_Status], [Appointment_PatientId], [Appointment_DoctorId], [Appointment_CreatedBy], [Appointment_CreatedTime]) VALUES (10, CAST(0x3C440B00 AS Date), CAST(0x0000AEE100A4CB80 AS DateTime), 30, N'active', 15, 7, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Appointment] OFF
/****** Object:  StoredProcedure [dbo].[sp_DelAcct]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery17.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vs3C43.sql
create procedure [dbo].[sp_DelAcct]
@Account_id int

as
begin
	
	delete from Account where Account_id=@Account_id
			
end
GO
/****** Object:  Table [dbo].[Session]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Session](
	[Session_id] [int] IDENTITY(1,1) NOT NULL,
	[Session_AccountId] [int] NOT NULL,
	[Session_AppId] [varchar](50) NULL,
	[Session_UserName] [nvarchar](50) NULL,
	[Session_StartTime] [datetime] NULL,
	[Session_LastActivityTime] [datetime] NULL,
	[Session_IsTerminated] [bit] NULL,
	[Session_IsKilled] [bit] NULL,
	[Session_IPAddress] [varchar](512) NULL,
	[Session_HostName] [nvarchar](256) NULL,
	[Session_VersionNo] [int] NULL,
	[Session_TransactionId] [varchar](50) NULL,
	[Session_CreatedBy] [nvarchar](50) NULL,
	[Session_CreatedTime] [datetime] NULL,
	[Session_LastUpdatedBy] [nvarchar](256) NULL,
	[Session_LastUpdatedTime] [datetime] NULL,
 CONSTRAINT [PK_Session2] PRIMARY KEY CLUSTERED 
(
	[Session_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_DelPat]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery41.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vsEED4.sql
-- Batch submitted through debugger: SQLQuery16.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vsC4DC.sql
CREATE procedure [dbo].[sp_DelPat]

@Patient_id int 

as
begin
	
	delete from Patient where Patient_id=@Patient_id
	
end
GO
/****** Object:  StoredProcedure [dbo].[sp_DelDoc]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery18.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vs7108.sql
create procedure [dbo].[sp_DelDoc]

@Doctor_id int 

as
begin
	
	delete from Doctor where Doctor_id=@Doctor_id
	
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsAcct]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery56.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vsCB0F.sql
-- Batch submitted through debugger: SQLQuery29.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vs9817.sql
CREATE procedure [dbo].[sp_InsAcct]

@Account_Username nvarchar(50),
@Account_Password  nvarchar(50),
@Account_Email nvarchar(50),
@Account_Mobile nvarchar(50),
@Account_Type nvarchar(50),
@Account_Status nvarchar(50)

as
begin
	
		
		insert into Account(Account_Username,Account_Password,Account_Email,Account_Mobile,Account_Type,Account_Status) 
		values (@Account_Username,@Account_Password,@Account_Email,@Account_Mobile,@Account_Type,@Account_Status)
		
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsPat]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery36.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs470A.sql
-- Batch submitted through debugger: SQLQuery27.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vs72EB.sql
CREATE procedure [dbo].[sp_InsPat]

@Patient_FirstName nvarchar(50) ,
@Patient_LastName nvarchar(50) ,
@Patient_Gender  nvarchar(50) ,
@Patient_Mobile nvarchar(50) ,
@Patient_Email nvarchar(50) ,
@Patient_Address nvarchar(50)



as
begin
	insert into Patient(Patient_FirstName,Patient_LastName,Patient_Gender,Patient_Mobile,Patient_Email,Patient_Address) 
	values (@Patient_FirstName,@Patient_LastName,@Patient_Gender,@Patient_Mobile,@Patient_Email,@Patient_Address)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsDoc]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery28.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vs1518.sql
create procedure [dbo].[sp_InsDoc]

@Doctor_FirstName nvarchar(50),
@Doctor_LastName nvarchar(50),
@Doctor_Gender  nvarchar(50) ,
@Doctor_Specialization nvarchar(50),
@Doctor_Mobile nvarchar(50) ,
@Doctor_Email nvarchar(50),
@Doctor_Address nvarchar(50)

as
begin
	insert into Doctor(Doctor_FirstName,Doctor_LastName,Doctor_Gender,Doctor_Specialization,Doctor_Mobile,Doctor_Email,Doctor_Address) 
	values (@Doctor_FirstName,@Doctor_LastName,@Doctor_Gender,@Doctor_Specialization,@Doctor_Mobile,@Doctor_Email,@Doctor_Address)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdAcct]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery57.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs9608.sql
-- Batch submitted through debugger: SQLQuery39.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vs9D89.sql
CREATE procedure [dbo].[sp_UpdAcct]
@Account_id int,
@Account_Username nvarchar(50),
@Account_Password  nvarchar(50),
@Account_Email nvarchar(50),
@Account_Mobile nvarchar(50),
@Account_Type nvarchar(50),
@Account_CreatedAt datetime,
@Account_Status nvarchar(50)

as
begin

	update Account
	set Account_Username=@Account_Username,Account_Password=@Account_Password,Account_Email=@Account_Email,
	Account_Mobile=@Account_Mobile,Account_Type=@Account_Type,Account_CreatedAt=@Account_CreatedAt,
	Account_Status=@Account_Status
	where Account_id=@Account_id
	
end
GO
/****** Object:  StoredProcedure [dbo].[sp_registerAcct]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery81.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs5DD1.sql
-- Batch submitted through debugger: SQLQuery78.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vsC080.sql
-- Batch submitted through debugger: SQLQuery56.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vsCB0F.sql
-- Batch submitted through debugger: SQLQuery29.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vs9817.sql
CREATE procedure [dbo].[sp_registerAcct]

--Requirement
--	1> Setup Authentication for the accounts 
--		1.1>Each account must be authenticated to be able to use the app
--		1.2>Each account must be able to register

@Account_Username nvarchar(50),
@Account_Password  nvarchar(50),
@Account_Email nvarchar(50),
@Account_Mobile nvarchar(50),
@Account_Type nvarchar(50)

as
begin
	
		
		insert into Account(Account_Username,Account_Password,Account_Email,Account_Mobile,Account_Type) 
		values (@Account_Username,@Account_Password,@Account_Email,@Account_Mobile,@Account_Type)
		
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ViewAcctTab]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery20.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vsA9B7.sql
create procedure [dbo].[sp_ViewAcctTab]

as
begin

	select * from Account
		
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ViewAcctById]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery23.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vs5FF.sql
create procedure [dbo].[sp_ViewAcctById]

@Account_id int 

as
begin

	select * from Account where Account_id=@Account_id
		
end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdPat]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery37.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vsB94.sql
-- Batch submitted through debugger: SQLQuery39.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vs9D89.sql
CREATE procedure [dbo].[sp_UpdPat]

@Patient_id int ,
@Patient_FirstName nvarchar(50) ,
@Patient_LastName nvarchar(50) ,
@Patient_Gender  nvarchar(50) ,
@Patient_Mobile nvarchar(50) ,
@Patient_Email nvarchar(50) ,
@Patient_Address nvarchar(50)

as
begin
	
	update Patient
	set Patient_FirstName=@Patient_FirstName,Patient_LastName=@Patient_LastName,Patient_Gender=@Patient_Gender,Patient_Mobile=@Patient_Mobile,Patient_Email=@Patient_Email,Patient_Address=@Patient_Address
	where Patient_id=@Patient_id
				
end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdDoc]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery39.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vs9D89.sql
create procedure [dbo].[sp_UpdDoc]

@Doctor_id int ,
@Doctor_FirstName nvarchar(50),
@Doctor_LastName nvarchar(50),
@Doctor_Gender  nvarchar(50) ,
@Doctor_Specialization nvarchar(50),
@Doctor_Mobile nvarchar(50) ,
@Doctor_Email nvarchar(50),
@Doctor_Address nvarchar(50)

as
begin
	
	update Doctor
	set Doctor_FirstName=@Doctor_FirstName,Doctor_LastName=@Doctor_LastName,Doctor_Gender=@Doctor_Gender,Doctor_Specialization=@Doctor_Specialization,Doctor_Mobile=@Doctor_Mobile,Doctor_Email=@Doctor_Email,Doctor_Address=@Doctor_Address
	where Doctor_id=@Doctor_id
		
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ViewPatTab]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery42.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs5418.sql
-- Batch submitted through debugger: SQLQuery22.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vsE25F.sql
CREATE procedure [dbo].[sp_ViewPatTab]

as
begin

	select * from Patient
		
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ViewPatById]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery45.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vsF501.sql
-- Batch submitted through debugger: SQLQuery23.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vs5FF.sql
CREATE procedure [dbo].[sp_ViewPatById]

@Patient_id int 

as
begin

	select * from Patient where Patient_id=@Patient_id
		
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ViewDocTab]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery21.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vsC843.sql
create procedure [dbo].[sp_ViewDocTab]

as
begin

	select * from Doctor
		
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ViewDocById]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery23.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vs5FF.sql
create procedure [dbo].[sp_ViewDocById]

@Doctor_id int 

as
begin

	select * from Doctor where Doctor_id=@Doctor_id
		
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ViewApmtTab]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery23.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vsB485.sql
create procedure [dbo].[sp_ViewApmtTab]

as
begin

	select * from Appointment
		
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ViewApmtById]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery23.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vs5FF.sql
create procedure [dbo].[sp_ViewApmtById]

@Appointment_id int 

as
begin

	select * from Appointment where Appointment_id=@Appointment_id
		
end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdApmt]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery52.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vsCC00.sql
-- Batch submitted through debugger: SQLQuery39.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vs9D89.sql
CREATE procedure [dbo].[sp_UpdApmt]

@Appointment_id int,
@Appointment_Date date ,
@Appointment_Time datetime ,
@Appointment_Duration int,
@Appointment_Status  nvarchar(50) ,
@Appointment_PatientId int ,
@Appointment_DoctorId int,
@Appointment_CreatedBy varchar(50),
@Appointment_CreatedTime datetime

as
begin
	
	update Appointment
	set Appointment_Date=@Appointment_Date,Appointment_Time=@Appointment_Time,
	Appointment_Duration=@Appointment_Duration,Appointment_Status=@Appointment_Status,
	Appointment_PatientId=@Appointment_PatientId,Appointment_DoctorId=@Appointment_DoctorId,
	Appointment_CreatedBy=@Appointment_CreatedBy,Appointment_CreatedTime=@Appointment_CreatedTime
	where Appointment_id=@Appointment_id
		
end
GO
/****** Object:  StoredProcedure [dbo].[sp_MaxDocAppointments]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery91.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs3DE5.sql
-- Batch submitted through debugger: SQLQuery88.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs22F7.sql
-- Batch submitted through debugger: sp_MostAppointments.sql|9|0|D:\divya\Tech Unicorn Assignment\sp_MostAppointments.sql


CREATE PROCEDURE [dbo].[sp_MaxDocAppointments]

--Requirement
--	8>Clinic Admins must be able to see which doctors have the most appointments in a given day
--		8.1>(Bonus) viewing a sorted list of doctors who are


@Date date,
@User_Type varchar(50)

AS
BEGIN

DECLARE @USERTYPE VARCHAR(50)
SET @USERTYPE = @User_Type

	IF(@USERTYPE = 'admin')
	BEGIN
		SELECT 
			DOC.DOCTOR_ID, 
			DOC.DOCTOR_FIRSTNAME, 
			DOC.DOCTOR_LASTNAME,
			COUNT(AP.Appointment_PatientId) AS No_of_Patients
		FROM Doctor DOC
		INNER JOIN Appointment AP
		ON DOC.DOCTOR_ID = AP.Appointment_DoctorId WHERE AP.Appointment_Date = @Date 
		GROUP BY DOC.DOCTOR_ID,DOC.DOCTOR_FIRSTNAME, DOC.DOCTOR_LASTNAME
		ORDER BY No_of_Patients DESC	-- Sorting Doctors on basis of number of Appoinments
	END
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsSession]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery80.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vsBBE2.sql
-- Batch submitted through debugger: SQLQuery77.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs1DFE.sql
-- Batch submitted through debugger: SQLQuery57.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vsE0ED.sql
CREATE procedure [dbo].[sp_InsSession]
  
--	Requirement
--  1> Setup Authentication for the accounts 
--		1.1>Each account must be authenticated to be able to use the app
--		1.2>Each account must be able to register
	
	@Session_AppId	varchar(50),
	@Session_UserName	nvarchar(50),
	@Session_StartTime	datetime,
	@Session_LastActivityTime	datetime,
	@Session_IsTerminated	bit,
	@Session_IsKilled	bit,
	@Session_IPAddress	varchar(512),
	@Session_HostName	nvarchar(256),
	@Session_VersionNo	int,
	@Session_TransactionId	varchar(50),
	@Session_CreatedBy	nvarchar(50),
	@Session_CreatedTime	datetime,
	@Session_LastUpdatedBy	nvarchar(256),
	@Session_LastUpdatedTime	datetime,
	@Username nvarchar(50),
	@Password nvarchar(50)

	

AS
BEGIN

  DECLARE @Session_AccountId	int
  DECLARE @Outputpara int 
    
  IF EXISTS ( SELECT  1
              FROM    Account
              WHERE   Account_Username = @Username AND
                      Account_Password = @Password AND
                      Account_Status = 'Registered')
                        
   BEGIN
    
    
	
    SET @Session_AccountId = (select Account_id from Account WHERE   Account_Username = @Username AND
							  Account_Password = @Password);
    SET @Session_UserName = @Username;
 
    -- ======================================================
	-- Values to be supplied from frontend hardcoded for now
	-- ======================================================
	
	SET @Session_AppId	= 'AppId01';
	SET @Session_StartTime = GETDATE();
	SET @Session_LastActivityTime = GETDATE();
	SET @Session_IsTerminated = 0;
	SET @Session_IsKilled	= 0;
	SET @Session_IPAddress	= '192.168.2';
	SET @Session_HostName	= 'Server01';
	SET @Session_VersionNo	= 1.0;
	SET @Session_TransactionId	= 'TransId01';
	SET @Session_CreatedBy	= 'CreatedBy01';
	SET @Session_CreatedTime	= GETDATE();
	SET @Session_LastUpdatedBy	= 'LastUpd01';
	SET @Session_LastUpdatedTime	= GETDATE();
	
        INSERT  INTO Session(Session_AccountId,Session_AppId,Session_UserName,Session_StartTime,
        Session_LastActivityTime,Session_IsTerminated,Session_IsKilled,Session_IPAddress,Session_HostName,
        Session_VersionNo,Session_TransactionId,Session_CreatedBy,Session_CreatedTime,Session_LastUpdatedBy,
        Session_LastUpdatedTime)
        VALUES(@Session_AccountId,@Session_AppId,@Session_UserName,@Session_StartTime,@Session_LastActivityTime,
        @Session_IsTerminated,@Session_IsKilled,@Session_IPAddress,@Session_HostName,@Session_VersionNo,
        @Session_TransactionId,@Session_CreatedBy,@Session_CreatedTime,@Session_LastUpdatedBy,@Session_LastUpdatedTime)
        
        select @Outputpara = 1
        
   END
   
   ELSE
   
   BEGIN
	
        select @Outputpara = 0
        
   END
   
 select @Outputpara 
    
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsApmtByPat]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery83.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs74DF.sql
-- Batch submitted through debugger: SQLQuery47.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs598E.sql
-- Batch submitted through debugger: SQLQuery62.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vsA49D.sql
-- Batch submitted through debugger: SQLQuery60.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vsA40C.sql
-- Batch submitted through debugger: sp_InsApmtByPat.sql|0|0|D:\divya\Tech Unicorn Assignment\sp_InsApmtByPat.sql
CREATE PROCEDURE [dbo].[sp_InsApmtByPat]

--Requirement
--	3>Patients must be able to book an appointment with a doctor
--		3.1>a doctor can have a maximum of 12 appointments
--		3.2>a doctor can have a maximum total appointments time of 8 hours in a day

@Doctor_id int,
@NewAppointment_Date datetime,
@NewAppointment_Time datetime,
@Patient_id int



AS
BEGIN

DECLARE @RET_VAL int
DECLARE @NO_OF_APPOINMENTS INT
DECLARE @TOTAL_APPOINMENT_DURATION INT -- Minutes
DECLARE @CURRENT_TIME_SLOT_BOOKED INT = 0 -- Variable to check whether the Current Time slot is Booked or not
DECLARE @APPOINMENT_TIME_BOOKED DATETIME



SET @NO_OF_APPOINMENTS = (SELECT COUNT(*) 
						  FROM Appointment 
						  WHERE Appointment_DoctorId= @Doctor_id AND Appointment_Date = @NewAppointment_Date) 
						  
SET @TOTAL_APPOINMENT_DURATION = (SELECT SUM(Appointment_Duration) 
								  FROM Appointment 
								  WHERE Appointment_DoctorId= @Doctor_id AND Appointment_Date = @NewAppointment_Date) 


SET @CURRENT_TIME_SLOT_BOOKED = (SELECT 1 FROM Appointment WHERE Appointment_DoctorId= @Doctor_id
																		AND Appointment_Date = @NewAppointment_Date
																		AND Appointment_Time = @NewAppointment_Time)
																		


																	
	IF(@CURRENT_TIME_SLOT_BOOKED=1) --Check if Slot is Booked
		BEGIN 
			SET @RET_VAL = 1
			
		END
		ELSE
		BEGIN
			
			IF(@CURRENT_TIME_SLOT_BOOKED is null)-- Start Insertion only if Timeslot not Booked
			BEGIN 
				
				IF(@NO_OF_APPOINMENTS>=12)-- Count of Appoinment > 12
				BEGIN
					
					SET @RET_VAL = 2
					
				END
				ELSE
				BEGIN
					
					IF(@TOTAL_APPOINMENT_DURATION>465)--Total Duration greater than 7.45 Hrs
					BEGIN
						
						SET @RET_VAL = 3
						
					END
					ELSE 
					BEGIN  --Slot not booked & Count of Appoinment < 12 & TOTAL_APPOINMENT_DURATION<465 
						
						insert into Appointment(Appointment_Date,Appointment_Time,Appointment_PatientId,Appointment_DoctorId) 
						values (@NewAppointment_Date,@NewAppointment_Time,@Patient_id,@Doctor_id)
						
						SET @RET_VAL = 4
						
					END
				END
			END
		END
	SELECT @RET_VAL
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsApmt]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery51.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vsE54.sql
-- Batch submitted through debugger: SQLQuery55.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs19CA.sql
-- Batch submitted through debugger: SQLQuery26.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vs8609.sql
CREATE procedure [dbo].[sp_InsApmt]

@Appointment_Date date ,
@Appointment_Time datetime ,
@Appointment_Duration int,
@Appointment_Status  nvarchar(50) ,
@Appointment_PatientId int ,
@Appointment_DoctorId int,
@Appointment_CreatedBy varchar(50),
@Appointment_CreatedTime datetime


as
begin
	
	insert into Appointment(Appointment_Date,Appointment_Time,Appointment_Duration,Appointment_Status,Appointment_PatientId,Appointment_DoctorId,Appointment_CreatedBy,Appointment_CreatedTime) 
	values (@Appointment_Date,@Appointment_Time,@Appointment_Duration,@Appointment_Status,@Appointment_PatientId,@Appointment_DoctorId,@Appointment_CreatedBy,@Appointment_CreatedTime)
		
end
GO
/****** Object:  StoredProcedure [dbo].[sp_DoctorSchedule]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery82.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs3CD9.sql
-- Batch submitted through debugger: SQLQuery79.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs3DCC.sql
-- Batch submitted through debugger: sp_DoctorSchedule.sql|0|0|D:\divya\Tech Unicorn Assignment\sp_DoctorSchedule.sql
CREATE PROCEDURE [dbo].[sp_DoctorSchedule]

--Requirement
--	2>Patients and Doctors and Clinic Admins are Able to see any given doctors schedule.
--	2.1>Patient info must be hidden to Patient users but shown to doctors and Clinic Admins


@Doctor_id int,
@Appointment_Date datetime,
@User_Type varchar(50)


AS
BEGIN

DECLARE @USERTYPE VARCHAR(50)
SET @USERTYPE = @User_Type 

	IF(@USERTYPE = 'doctor') OR (@USERTYPE = 'admin')
	BEGIN 
		SELECT 
			AP.Appointment_Date, 
			AP.Appointment_Time, 
			AP.Appointment_Duration,
			AP.Appointment_Status,
			DOC.Doctor_FirstName,
			DOC.Doctor_LastName,
			DOC.Doctor_Gender,
			DOC.Doctor_Specialization,		
			PAT.Patient_FirstName,
			PAT.Patient_LastName,
			PAT.Patient_Gender,
			PAT.Patient_Mobile,
			PAT.Patient_Email
			
		FROM Appointment AP 
		INNER JOIN Doctor DOC 	
		ON  AP.Appointment_DoctorId = DOC.Doctor_id
		INNER JOIN Patient PAT
		ON AP.Appointment_PatientId = PAT.Patient_id
				WHERE (AP.Appointment_DoctorId = @Doctor_id) AND (AP.Appointment_Date = @Appointment_Date)
	END

	IF(@USERTYPE = 'patient')
	BEGIN 
		SELECT 
			AP.Appointment_Date, 
			AP.Appointment_Time, 
			AP.Appointment_Duration,
			AP.Appointment_Status,
			DOC.Doctor_FirstName,
			DOC.Doctor_LastName,
			DOC.Doctor_Gender,
			DOC.Doctor_Specialization
			
		FROM Appointment AP 
		INNER JOIN Doctor DOC 
		ON  AP.Appointment_DoctorId = DOC.Doctor_id
			WHERE (AP.Appointment_DoctorId = @Doctor_id) AND (AP.Appointment_Date = @Appointment_Date)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DocExceed6Hour]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery89.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs77EA.sql
-- Batch submitted through debugger: sp_DocExceed6.sql|7|0|D:\divya\Tech Unicorn Assignment\sp_DocExceed6.sql


CREATE PROCEDURE [dbo].[sp_DocExceed6Hour]

--Requirement
--	9>Clinic Admins must be able to view which doctors have total appointments in a day exceeding 6 hours.

@Date date,
@User_Type varchar(50)

AS
BEGIN

DECLARE @USERTYPE VARCHAR(50)
SET @USERTYPE = @User_Type

	IF(@USERTYPE = 'admin')
		BEGIN 
		SELECT 
			DOC.DOCTOR_ID, 
			DOC.DOCTOR_FIRSTNAME, 
			DOC.DOCTOR_LASTNAME,
			COUNT(AP.Appointment_PatientId) AS NOOFPATIENTS,
			SUM(AP.Appointment_Duration) AS TOTALDURATION
		FROM  Doctor DOC
		INNER JOIN Appointment AP
		ON DOC.DOCTOR_ID = AP.Appointment_DoctorId WHERE AP.Appointment_Date = @Date 
		GROUP BY DOC.DOCTOR_ID,DOC.DOCTOR_FIRSTNAME, DOC.DOCTOR_LASTNAME
		HAVING SUM(AP.Appointment_Duration)>360		-- Checking if total Duration greater than 6 Hours
		ORDER BY NOOFPATIENTS DESC					-- Sorting Doctors on basis of number of Appoinments
		END

END
GO
/****** Object:  StoredProcedure [dbo].[sp_DocAvailableSlotsById]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery97.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vsD0A0.sql
-- Batch submitted through debugger: SQLQuery95.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs316D.sql
-- Batch submitted through debugger: slots_query.sql|7|0|D:\divya\Tech Unicorn Assignment\slots_query.sql
-- Batch submitted through debugger: SQLQuery50.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs146C.sql
-- Batch submitted through debugger: sp_DocAvailability.sql|6|0|D:\divya\Tech Unicorn Assignment\sp_DocAvailability.sql


CREATE PROCEDURE [dbo].[sp_DocAvailableSlotsById]

--Requirement
--Patients and doctors are able to see the doctors' available schedule
--  when a doctor uses that endpoint they are able to see the patient name,
--  However when a patient uses it the patient name is not sent in the response.


@Doctor_id int


AS
BEGIN


			SELECT 
			AP.Appointment_Date, 
			AP.Appointment_Time, 
			AP.Appointment_Duration,
			AP.Appointment_Status,
			DOC.DOCTOR_FIRSTNAME,
			DOC.DOCTOR_LASTNAME,
			DOC.DOCTOR_GENDER,
			DOC.DOCTOR_SPECIALIZATION
			
			FROM Appointment AP 
			INNER JOIN Doctor DOC 
			ON  AP.Appointment_DoctorId = DOC.DOCTOR_ID
					WHERE (AP.Appointment_DoctorId = @Doctor_id) 
					AND (AP.Appointment_Status = 'active') AND (AP.Appointment_Date = CONVERT(date,GETDATE()))
			ORDER BY AP.Appointment_Time ASC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DocAvailability]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery93.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vsA53A.sql
-- Batch submitted through debugger: SQLQuery87.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs470F.sql
-- Batch submitted through debugger: SQLQuery73.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs4EA4.sql
-- Batch submitted through debugger: SQLQuery50.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs146C.sql
-- Batch submitted through debugger: sp_DocAvailability.sql|6|0|D:\divya\Tech Unicorn Assignment\sp_DocAvailability.sql


CREATE PROCEDURE [dbo].[sp_DocAvailability]

--Requirement
--	7>Clinic Admins must able to view the the availability of ALL doctors in the clinic
--		7.1>Patients are able to see the list of all available doctors

@Doctor_id int,
@Start_Time datetime,		--Pass 2 PArameters to check the Slot Start Time and Slot End Time
@End_Time datetime,
@Date date,
@User_Type varchar(50),
@Availability_Condition varchar(50)



AS
BEGIN



DECLARE @USERTYPE VARCHAR(50)
SET @USERTYPE = @User_Type		--admin/payient/doctor

DECLARE @AVAILABILITYCONDITION VARCHAR(50) -- This Condition to Decide whether to Check Current Availability or SLot Based Availability.
SET @AVAILABILITYCONDITION = @Availability_Condition		--current/slot

	IF(@USERTYPE = 'admin')
	BEGIN 
		IF(@AVAILABILITYCONDITION='current')
		BEGIN
			SELECT 
				DOC.DOCTOR_ID, 
				DOC.DOCTOR_FIRSTNAME, 
				DOC.DOCTOR_LASTNAME, 
				DOC.DOCTOR_GENDER, 
				DOC.DOCTOR_SPECIALIZATION, 
				DOC.DOCTOR_MOBILE,
				DOC.DOCTOR_EMAIL,
				DOC.DOCTOR_ADDRESS
				
			FROM Doctor DOC 
			WHERE DOC.Doctor_id NOT IN 
			(SELECT AP.Appointment_DoctorId FROM Appointment AP 
			 WHERE AP.Appointment_Date =CONVERT( DATE,GETDATE()) AND 
					(AP.Appointment_Time BETWEEN DateADD(mi, -30, Current_TimeStamp) AND DateADD(mi, +30, Current_TimeStamp)))
		END
		IF(@AVAILABILITYCONDITION='slot')
		BEGIN
			SELECT 
				DOC.DOCTOR_ID, 
				DOC.DOCTOR_FIRSTNAME, 
				DOC.DOCTOR_LASTNAME, 
				DOC.DOCTOR_GENDER, 
				DOC.DOCTOR_SPECIALIZATION, 
				DOC.DOCTOR_MOBILE,
				DOC.DOCTOR_EMAIL,
				DOC.DOCTOR_ADDRESS
				
			FROM Doctor DOC 
			WHERE DOC.DOCTOR_ID NOT IN 
			(SELECT AP.Appointment_DoctorId FROM Appointment AP WHERE AP.Appointment_Date =@Date AND AP.Appointment_Time BETWEEN @Start_Time AND @End_Time)
		END
	END

	IF(@USERTYPE = 'patient')
	BEGIN 
		IF(@AVAILABILITYCONDITION='current')
		BEGIN
			SELECT 
				DOC.DOCTOR_ID, 
				DOC.DOCTOR_FIRSTNAME, 
				DOC.DOCTOR_LASTNAME, 
				DOC.DOCTOR_GENDER, 
				DOC.DOCTOR_SPECIALIZATION,
				DOC.DOCTOR_MOBILE,
				DOC.DOCTOR_EMAIL,
				DOC.DOCTOR_ADDRESS
				
			FROM Doctor DOC 
			WHERE DOC.DOCTOR_ID NOT IN 
			(SELECT AP.Appointment_DoctorId FROM Appointment AP 
			 WHERE AP.Appointment_Date =CONVERT( DATE,GETDATE()) AND 
					(AP.Appointment_Time BETWEEN DateADD(mi, -30, Current_TimeStamp) AND DateADD(mi, +30, Current_TimeStamp)))
		END
		IF(@AVAILABILITYCONDITION='slot')
		BEGIN
			SELECT 
				DOC.DOCTOR_ID, 
				DOC.DOCTOR_FIRSTNAME, 
				DOC.DOCTOR_LASTNAME, 
				DOC.DOCTOR_GENDER, 
				DOC.DOCTOR_SPECIALIZATION,
				DOC.DOCTOR_MOBILE,
				DOC.DOCTOR_EMAIL,
				DOC.DOCTOR_ADDRESS
				
			FROM Doctor DOC 
			WHERE DOC.DOCTOR_ID NOT IN 
			(SELECT AP.Appointment_DoctorId FROM Appointment AP WHERE AP.Appointment_Date =@Date AND AP.Appointment_Time BETWEEN @Start_Time AND @End_Time)
		END
	END
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DelApmt]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery19.sql|0|0|C:\Users\DVYA\AppData\Local\Temp\~vsD147.sql
create procedure [dbo].[sp_DelApmt]

@Appointment_id int

as
begin

	delete from Appointment where Appointment_id=@Appointment_id
		
end
GO
/****** Object:  StoredProcedure [dbo].[sp_CancelApmt]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery86.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs1999.sql
-- Batch submitted through debugger: sp_CancelApmt.sql|6|0|D:\divya\Tech Unicorn Assignment\sp_CancelApmt.sql


CREATE PROCEDURE [dbo].[sp_CancelApmt]

--Requirement
--	6>Doctors and Clinic admins can cancel appointments

@Appointment_id int,
@User_Type varchar(50)


AS
BEGIN

DECLARE @USERTYPE VARCHAR(50)
SET @USERTYPE = @User_Type

	IF(@USERTYPE = 'doctor') OR (@USERTYPE = 'admin')
	BEGIN 
		UPDATE Appointment
			SET Appointment_Status = 'cancelled'
		WHERE (Appointment_id = @Appointment_id)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ApmtHistory]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery85.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs5216.sql
-- Batch submitted through debugger: SQLQuery29.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs49FF.sql
-- Batch submitted through debugger: sp_ApmtHistory.sql|7|0|D:\divya\Tech Unicorn Assignment\sp_ApmtHistory.sql


CREATE PROCEDURE [dbo].[sp_ApmtHistory]

--Requirement
--	5>Patients must be able to see a history of their previous appointments
--	 5.1>Doctors must also be able to see the patient's appointment history

@Patient_id int,
@User_Type varchar(50)



AS
BEGIN

DECLARE @USERTYPE VARCHAR(50)
SET @USERTYPE = @User_Type 

	IF(@USERTYPE = 'doctor') OR (@USERTYPE = 'admin')
	BEGIN 
		SELECT 
			AP.Appointment_Date, 
			AP.Appointment_Time, 
			AP.Appointment_Duration,
			AP.Appointment_Status,
			DOC.DOCTOR_FIRSTNAME,
			DOC.DOCTOR_LASTNAME,
			DOC.DOCTOR_GENDER,
			DOC.DOCTOR_SPECIALIZATION,
			PAT.PATIENT_FIRSTNAME,
			PAT.PATIENT_LASTNAME,
			PAT.PATIENT_GENDER,
			PAT.PATIENT_MOBILE
			
		FROM Appointment AP 
		INNER JOIN Doctor DOC 
		ON  AP.Appointment_DoctorId = DOC.DOCTOR_ID
		INNER JOIN Patient PAT
		ON AP.Appointment_PatientId = PAT.Patient_id
				WHERE (AP.Appointment_PatientId = @Patient_id) 
		ORDER BY AP.Appointment_Date DESC
	END

	IF(@USERTYPE = 'patient')
	BEGIN 
		SELECT 
			AP.Appointment_Date, 
			AP.Appointment_Time, 
			AP.Appointment_Duration,
			AP.Appointment_Status,
			DOC.DOCTOR_FIRSTNAME,
			DOC.DOCTOR_LASTNAME,
			DOC.DOCTOR_GENDER,
			DOC.DOCTOR_SPECIALIZATION,
			PAT.PATIENT_FIRSTNAME,
			PAT.PATIENT_LASTNAME,
			PAT.PATIENT_GENDER,
			PAT.PATIENT_MOBILE
		FROM Appointment AP 
		INNER JOIN Doctor DOC 
		ON  AP.Appointment_DoctorId = DOC.DOCTOR_ID
		INNER JOIN Patient PAT
		ON AP.Appointment_PatientId = PAT.Patient_id
			WHERE (AP.Appointment_PatientId = @Patient_id) 
		ORDER BY AP.Appointment_Date DESC
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ApmtDetails]    Script Date: 07/29/2022 17:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery84.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs1EC9.sql
-- Batch submitted through debugger: SQLQuery69.sql|7|0|C:\Users\DVYA\AppData\Local\Temp\~vs441D.sql
-- Batch submitted through debugger: sp_DoctorSchedule.sql|0|0|D:\divya\Tech Unicorn Assignment\sp_DoctorSchedule.sql
CREATE PROCEDURE [dbo].[sp_ApmtDetails]

--Requirement
--4>Doctors must be able to see the appointment details
--	4.1> the patient who booked the appointment is also able to see the appointment details

@Doctor_id int,
@Patient_id int,
@Appointment_Date datetime,
@User_Type varchar(50)


AS
BEGIN

DECLARE @USERTYPE VARCHAR(50)
SET @USERTYPE = @User_Type 

	IF(@USERTYPE = 'doctor') OR (@USERTYPE = 'admin')
	BEGIN 
		SELECT 
			AP.Appointment_Date, 
			AP.Appointment_Time, 
			AP.Appointment_Duration,
			AP.Appointment_Status,
			DOC.Doctor_FirstName,
			DOC.Doctor_LastName,
			DOC.Doctor_Gender,
			DOC.Doctor_Specialization,		
			PAT.Patient_FirstName,
			PAT.Patient_LastName,
			PAT.Patient_Gender,
			PAT.Patient_Mobile,
			PAT.Patient_Email
			
		FROM Appointment AP 
		INNER JOIN Doctor DOC 	
		ON  AP.Appointment_DoctorId = DOC.Doctor_id
		INNER JOIN Patient PAT
		ON AP.Appointment_PatientId = PAT.Patient_id
				WHERE (AP.Appointment_DoctorId = @Doctor_id) AND (AP.Appointment_Date = @Appointment_Date)
	END

	IF(@USERTYPE = 'patient')
	BEGIN 
		SELECT 
			AP.Appointment_Date, 
			AP.Appointment_Time, 
			AP.Appointment_Duration,
			AP.Appointment_Status,
			DOC.Doctor_FirstName,
			DOC.Doctor_LastName,
			DOC.Doctor_Gender,
			DOC.Doctor_Specialization,
			PAT.Patient_FirstName,
			PAT.Patient_LastName,
			PAT.Patient_Gender,
			PAT.Patient_Mobile,
			PAT.Patient_Email
			
		FROM Appointment AP 
		INNER JOIN Doctor DOC 
		ON  AP.Appointment_DoctorId = DOC.Doctor_id
		INNER JOIN Patient PAT
		ON AP.Appointment_PatientId = PAT.Patient_id
			WHERE (AP.Appointment_PatientId = @Patient_id) AND (AP.Appointment_Date = @Appointment_Date)
	END
END
GO
/****** Object:  Default [DF_Account_Account_CreatedAt]    Script Date: 07/29/2022 17:20:06 ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_Account_CreatedAt]  DEFAULT (getdate()) FOR [Account_CreatedAt]
GO
/****** Object:  Default [DF_Account_Account_Status]    Script Date: 07/29/2022 17:20:06 ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_Account_Status]  DEFAULT ('Registered') FOR [Account_Status]
GO
/****** Object:  Default [DF_Appointment_Appointment_Status]    Script Date: 07/29/2022 17:20:06 ******/
ALTER TABLE [dbo].[Appointment] ADD  CONSTRAINT [DF_Appointment_Appointment_Status]  DEFAULT (N'active') FOR [Appointment_Status]
GO
/****** Object:  ForeignKey [FK_Appointment_Doctor]    Script Date: 07/29/2022 17:20:06 ******/
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Doctor] FOREIGN KEY([Appointment_DoctorId])
REFERENCES [dbo].[Doctor] ([Doctor_id])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Doctor]
GO
/****** Object:  ForeignKey [FK_Appointment_Patient1]    Script Date: 07/29/2022 17:20:06 ******/
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Patient1] FOREIGN KEY([Appointment_PatientId])
REFERENCES [dbo].[Patient] ([Patient_id])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Patient1]
GO
/****** Object:  ForeignKey [FK_Session_Account]    Script Date: 07/29/2022 17:20:11 ******/
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Account] FOREIGN KEY([Session_AccountId])
REFERENCES [dbo].[Account] ([Account_id])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Account]
GO
