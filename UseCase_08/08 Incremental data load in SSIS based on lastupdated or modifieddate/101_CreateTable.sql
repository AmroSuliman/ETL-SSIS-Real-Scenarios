RecordsUpdated int, Dated datetime)

---Create a config_table
create table config_table (Id int identity,TableName varchar(200),lastupdatedColumn varchar(100),lastupdatedvalue datetime)

go

insert into config_table
select ' [Person].[EmailAddress]','ModifiedDate','2015-04-15 16:33:33.123'
go 
insert into config_table
select ' [Sales].[CreditCard]','ModifiedDate',''
select * from [Sales].[CreditCard]

select * from config_table
select *from audit_log

select max(lastupdatedvalue) 
from config_table
where TableName =' [Person].[EmailAddress]'

select @@SERVERNAME

update config_table
set lastupdatedvalue = '1900-01-01'
where TableName= ' [Person].[EmailAddress]'
select top 4 * from [Person].[EmailAddress]
select top 4 * from [Sales].[CreditCard]

select top 4 *
from [Person].[EmailAddress]
where  ModifiedDate >'2008-01-24 00:00:00.000'


 select * from  [Person].[EmailAddress] where [EmailAddressID]  in(1,2)

 go
 update [Person].[EmailAddress]
 set EmailAddress ='ken0_neww@adventure-works.com',
 ModifiedDate =GETDATE()
 where  EmailAddressID=1
 go
 update [Person].[EmailAddress]
 set EmailAddress ='terri0_@gmail.com',
 ModifiedDate =GETDATE()
 where  EmailAddressID=2
 go
select [EmailAddressID] 
from [Person].[EmailAddress]
----
 update [Sales].[CreditCard]
 set[ExpYear]  ='2021',
[ModifiedDate] = getdate()
where
CreditCardID =1

USE [AdventureWorks2017]
GO

UPDATE [Person].[EmailAddress]
   SET [BusinessEntityID] = <BusinessEntityID, int,>
      ,[EmailAddress] = <EmailAddress, nvarchar(50),>
      ,[rowguid] = <rowguid, uniqueidentifier,>
      ,[ModifiedDate] = <ModifiedDate, datetime,>
 WHERE <Search Conditions,,>
GO

IF OBJECT_ID(N'dbo.zz_EmailAddress', N'U') IS NOT NULL
drop table zz_EmailAddress
CREATE TABLE [dbo].[zz_EmailAddress](
	[BusinessEntityID] [int] NULL,
	[EmailAddressID] [int] NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[rowguid] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY]

declare @updatedrecords int
UPDATE a
   SET a.[BusinessEntityID] = b.[BusinessEntityID]
      ,a.[EmailAddress] = b.EmailAddress
      ,a.[rowguid] = b.rowguid
      ,a.[ModifiedDate] = b.ModifiedDate
from [Person].[EmailAddress] a inner join [dbo].[ZZ_EmailAddress] b
on a.[EmailAddressID] = b.[EmailAddressID]
set @updatedrecords = (select @@ROWCOUNT)
insert into audit_log
select 'Incremental Data Update.dtsx', '[Person].[EmailAddress]',?,@updatedrecords, getdate()
update config_table
set Lastupdatedvalue = (select max(ModifiedDate) from [Person].[EmailAddress])
where tablename = '[Person].[EmailAddress]'
and (select count(*) from [Person].[EmailAddress])>0
USE [AdventureWorks2017]
GO
select * from [Person].[EmailAddress]
INSERT INTO [Person].[EmailAddress]
           ([BusinessEntityID]
           ,[EmailAddress]
           ,[rowguid]
           ,[ModifiedDate])
     VALUES
           (3
           ,'amr@gamil.com'
           ,'C8A51084-1C03-4C58-A8B3-55854AE7C499'
           ,getdate())
GO

select * from [Person].[EmailAddress] order by ModifiedDate desc


USE [AdventureWorks2017]
GO
select * from [Person].[EmailAddress]
INSERT INTO [Person].[EmailAddress]
           ([BusinessEntityID]
           ,[EmailAddress]
           ,[rowguid]
           ,[ModifiedDate])
     VALUES
           (3
           ,'amr@gamil.com'
           ,'C8A51084-1C03-4C58-A8B3-55854AE7C499'
           ,getdate())
GO

select * from [Person].[EmailAddress] order by ModifiedDate desc

select max ([ModifiedDate])
from [Sales].[CreditCard]

insert into config_table
select ' [Sales].[CreditCard]','ModifiedDate','2014-06-30 00:00:00.000'
select[CreditCardID] from [Sales].[CreditCard]

select * from config_table
select * from audit_log
 select * from  [Person].[EmailAddress] where [EmailAddressID]  in(1,2)

 IF OBJECT_ID(N'dbo.ZZ_CreditCard', N'U') IS NOT NULL
drop table ZZ_CreditCard
CREATE TABLE [dbo].[ZZ_CreditCard](
	[ModifiedDate] [datetime] NULL,
	[CreditCardID] [int] NULL,
	[CardType] [nvarchar](50) NULL,
	[CardNumber] [nvarchar](25) NULL,
	[ExpMonth] [tinyint] NULL,
	[ExpYear] [smallint] NULL
) ON [PRIMARY]

declare @updatedrecords int
UPDATE a
   SET a.[CardType] = b.CardType
      ,a.[CardNumber] = b.CardNumber
      ,a.[ExpMonth] = b.ExpMonth
      ,a.[ExpYear] = b.ExpYear
      ,a.[ModifiedDate] = b.ModifiedDate
from [Sales].[CreditCard] a inner join [dbo].[ZZ_CreditCard] b
on a.CreditCardID = b.CreditCardID
set @updatedrecords = (select @@ROWCOUNT)
insert into audit_log
select 'Incremental Data Update.dtsx', '[Sales].[CreditCard]',?,@updatedrecords, getdate()
update config_table
set Lastupdatedvalue = (select max(ModifiedDate) from [Sales].[CreditCard])
where tablename = '[Sales].[CreditCard]'
and (select count(*) from [Sales].[CreditCard])>0


USE [AdventureWorks2017]
GO

INSERT INTO [Sales].[CreditCard]
           ([CardType]
           ,[CardNumber]
           ,[ExpMonth]
           ,[ExpYear]
           ,[ModifiedDate])
     VALUES
           ('SuperiorCard'
           ,'77778674838353'
           ,'08'
           ,'2025'
           ,GETDATE()
		   )
GO

select top 4 * from 
[Sales].[CreditCard] order by ModifiedDate

