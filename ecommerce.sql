USE [master]
GO
DROP DATABASE [ECommerce]
GO
CREATE DATABASE [ECommerce]
GO
USE [ECommerce]
GO

CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[name] [nvarchar](255) NOT NULL,
    [image_url] [nvarchar](255) NOT NULL,
	[price] [money] NOT NULL DEFAULT 0,
)
--description

CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[name] [nvarchar](255) NOT NULL,
)

CREATE TABLE [dbo].[Count](
	[visit] int NOT NULL DEFAULT 0,
)

INSERT [dbo].[Count] ([visit]) VALUES (0)
