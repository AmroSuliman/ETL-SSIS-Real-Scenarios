CREATE TABLE [dbo].[EmailSS](
	[Id] [int] NULL,
	[First_name] [varchar](50) NULL,
	[Last_name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Gender] [char](1) NULL
) ON [PRIMARY]


TRUNCATE TABLE [dbo].[EmailSS]
select * From [dbo].[EmailSS]


use msdb
go 
exec sp_start_job N'Run SSIS Package';
go