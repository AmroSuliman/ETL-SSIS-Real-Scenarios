USE [SSIS]
GO

/****** Object:  Table [dbo].[Addresses]    Script Date: 6/11/2025 3:29:18 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Addresses]') AND type in (N'U'))
DROP TABLE [dbo].[Addresses]
GO

/****** Object:  Table [dbo].[Addresses]    Script Date: 6/11/2025 3:29:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Addresses](
	
	[Id] [int] NULL,
	[Name] [varchar](50) NULL,
	[Sal] [int] NULL,
	[Address] [varchar](100) NULL
) ON [PRIMARY]
GO


