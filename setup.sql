USE [master]
GO
/****** Object:  Database [example]    Script Date: 25/02/2024 19:26:54 ******/
CREATE DATABASE [example]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Example', FILENAME = N'/var/opt/mssql/data/Example.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Example_log', FILENAME = N'/var/opt/mssql/data/Example_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [example] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [example].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [example] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [example] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [example] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [example] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [example] SET ARITHABORT OFF 
GO
ALTER DATABASE [example] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [example] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [example] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [example] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [example] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [example] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [example] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [example] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [example] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [example] SET  DISABLE_BROKER 
GO
ALTER DATABASE [example] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [example] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [example] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [example] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [example] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [example] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [example] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [example] SET RECOVERY FULL 
GO
ALTER DATABASE [example] SET  MULTI_USER 
GO
ALTER DATABASE [example] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [example] SET DB_CHAINING OFF 
GO
ALTER DATABASE [example] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [example] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [example] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'example', N'ON'
GO
ALTER DATABASE [example] SET QUERY_STORE = OFF
GO
USE [example]
GO
/****** Object:  Table [dbo].[Sample_Table_1]    Script Date: 25/02/2024 19:26:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sample_Table_1](
	[Id] [bigint] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sample_Table_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (1, N'John', N'Doe')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (2, N'Jane', N'Doe')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (3, N'Alice', N'Smith')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (4, N'Bob', N'Johnson')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (5, N'Emma', N'Brown')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (6, N'Michael', N'Davis')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (7, N'Emily', N'Wilson')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (8, N'David', N'Martinez')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (9, N'Sarah', N'Anderson')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (10, N'James', N'Taylor')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (11, N'Olivia', N'Thomas')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (12, N'William', N'Jackson')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (13, N'Sophia', N'White')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (14, N'Benjamin', N'Harris')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (15, N'Ava', N'Clark')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (16, N'Ethan', N'Lewis')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (17, N'Mia', N'Lee')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (18, N'Alexander', N'Walker')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (19, N'Charlotte', N'Hall')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (20, N'Daniel', N'Young')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (21, N'Amelia', N'Allen')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (22, N'Logan', N'Adams')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (23, N'Chloe', N'Nelson')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (24, N'Jacob', N'Scott')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (25, N'Liam', N'Green')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (26, N'Madison', N'Evans')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (27, N'Elijah', N'King')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (28, N'Harper', N'Baker')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (29, N'Aiden', N'Hill')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (30, N'Abigail', N'Rivera')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (31, N'Evelyn', N'Mitchell')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (32, N'Sebastian', N'Carter')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (33, N'Avery', N'Perez')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (34, N'Ryan', N'Roberts')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (35, N'Ella', N'Turner')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (36, N'Jackson', N'Phillips')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (37, N'Sofia', N'Campbell')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (38, N'Lucas', N'Parker')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (39, N'Scarlett', N'Edwards')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (40, N'Mateo', N'Stewart')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (41, N'Grace', N'Morris')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (42, N'Aria', N'Nguyen')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (43, N'Luna', N'Gray')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (44, N'Matthew', N'James')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (45, N'Riley', N'Sanchez')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (46, N'Nora', N'Torres')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (47, N'Jack', N'Collins')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (48, N'Aiden', N'Bryant')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (49, N'Zoe', N'Russell')
GO
INSERT [dbo].[Sample_Table_1] ([Id], [FirstName], [LastName]) VALUES (50, N'Lucy', N'Gonzalez')
GO
USE [master]
GO
ALTER DATABASE [example] SET  READ_WRITE 
GO
