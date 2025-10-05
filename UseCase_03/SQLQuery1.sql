CREATE TABLE [dbo].[Email03](
	[Id] [int] NULL,
	[First_name] [varchar](50) NULL,
	[Last_name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Gender] [char](1) NULL
) ON [PRIMARY]

alter table [dbo].[Email03]
alter column Gender varchar(10)
sELECT * FROM [dbo].[Email03]

truncate table [dbo].[Email03]