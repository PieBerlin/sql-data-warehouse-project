Use master;
GO 

  -- drop and recreate the 'DataWareHouse' database 
  IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWareHouse' )
  BEGIN 
    ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWareHouse
  END;
GO

CREATE DATABASE DataWareHouse;

USE DataWareHouse;

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;





