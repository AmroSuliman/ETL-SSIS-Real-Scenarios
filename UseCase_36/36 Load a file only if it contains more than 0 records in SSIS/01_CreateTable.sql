CREATE TABLE [dbo].[Currency](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[Currency] [varchar](50) NULL,
	[gender] [varchar](50) NULL
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[fileLoging](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FileLoaded] [varchar](200) NULL,
	[RecordsInserted] [int] NULL,
	[Dated] [datetime] NULL
) ON [PRIMARY]
GO
select * from tbl_log

CREATE TABLE fileLogin (
   ID INT IDENTITY(1,1),
   Status VARCHAR(50),
   FilePath VARCHAR(200),
   RecordCount INT,
   InsertedAt DATETIME
)

 truncate table   Currency fileLogin 
 select * from Currency
 select * from fileLogin