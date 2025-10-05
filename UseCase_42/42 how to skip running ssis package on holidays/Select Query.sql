select  count(*) from Holiday where cast(getdate() as date) in
(select dated from holiday)


insert into Holiday
select 'test holiday', cast(getdate() as date), datename(dw,getdate())

select  datename(dw,getdate())




----INSERT INTO [tbl_logs]SELECT 'Package.dtsx', 'Package Completed', GETDATE()GO
------CREATE TABLE [dbo].[tbl_logs] (Id INT IDENTITY(1,1) PRIMARY KEY, PackageName VARCHAR(100), Step VARCHAR(100), Dated DATETIME)GO
