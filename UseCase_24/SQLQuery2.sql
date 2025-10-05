SELECT  [BusinessEntityID]
      ,[NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[HireDate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2017].[HumanResources].[Employee]
  order  by [HireDate] desc

  1. **Add a new column "Level"** using SSIS transformation like below:

   * If a person is hired between 2006 and 2008 then "Senior"
   * If a person is hired between 2009 and 2010 then "Intermediate"
   * If a person is hired between 2011 and 2013 then "Junior"

2. **Add a new column "Title"** using SSIS transformations like below:

   * If Gender is M and Marital Status is M then "Master"
   * If Gender is M and Marital Status is S then "Mister"
   * If Gender is F and Marital Status is S then "Miss"
   * If Gender is F and Marital Status is M then "Missus"

3. **Add a new column "LoadDate"** using SSIS transformation.

4. **Make a copy of BusinessEntityId** and call it as **Id**.

5. **Insert the data into a CSV file**, sorted on **HireDate**.