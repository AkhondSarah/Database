
-- FileName:DDL.sql
-- Description: script to create Inventory databaseII, create TABLEs
-- CST 8215
-- Author: Akhond Sarah Mesbah
-- Year: 2020
-- Last Modified: 17 June 2020 

DROP VIEW IF EXISTS Bangladesh_V;


DROP MATERIALIZED VIEW IF EXISTS Bangladesh_MV;


DROP TABLE IF EXISTS Invoice_Line_T;
DROP TABLE IF EXISTS Invoice_T;
DROP TABLE IF EXISTS Customer_T;
DROP TABLE IF EXISTS Product_T;
DROP TABLE IF EXISTS CITY_T;
DROP TABLE IF EXISTS COUNTRY_T;

--Creating DDL statements for the tables
CREATE TABLE COUNTRY_T (
Cntry_Code       CHAR (3),
Cntry_Name       VARCHAR(30) NOT NULL,
Cntry_Population  BIGINT NULL,
CONSTRAINT PK_Country PRIMARY KEY( Cntry_Code )
);
CREATE TABLE CITY_T (
City_ID           INT,
City_Name         VARCHAR(30)NOT NULL,
Cntry_Code        CHAR (3),
City_Population   BIGINT NULL,
CONSTRAINT PK_City PRIMARY KEY(City_ID ),
CONSTRAINT FK_Cntry_Code FOREIGN KEY( Cntry_Code ) REFERENCES Country_T( Cntry_Code ) 
);
CREATE TABLE Product_T (
  Prod_Code        CHAR( 5 ),
  Prod_Description VARCHAR( 60 ) NOT NULL,
  Prod_Indate      DATE NOT NULL DEFAULT NOW(),
  Prod_QOH         INTEGER NOT NULL,
  Prod_Min         INTEGER,
  Prod_Price       DECIMAL( 5, 2 ) NOT NULL,
  Prod_Discount    INTEGER,
  Cntry_Origin     CHAR( 3 ),
  CONSTRAINT PK_Product PRIMARY KEY( Prod_Code ),
  CONSTRAINT FK_Cntry_Origin FOREIGN KEY( Cntry_Origin ) REFERENCES Country_T( Cntry_Code ) 
);
CREATE TABLE Customer_T (
  Cust_Id         CHAR( 4 ),
  Cust_Fname      VARCHAR( 30 ) NULL,
  Cust_Lname      VARCHAR( 30 ) NOT NULL,
  Cust_Phone      VARCHAR( 15 ) NOT NULL,
  Cust_Address    VARCHAR( 20 ) NOT NULL,
  Cust_City       VARCHAR( 15 ) NOT NULL,
  Cust_Prov       CHAR( 2 ) NULL,
  Cust_PostCode   CHAR( 6 ) NOT NULL,
  Cust_Balance    DECIMAL( 9, 2 ), 
  Cust_Country    CHAR (3),
  CONSTRAINT PK_Customer PRIMARY KEY( Cust_Id ),
  CONSTRAINT FK_Cust_Country FOREIGN KEY( Cust_Country ) REFERENCES Country_T( Cntry_Code )
);
CREATE TABLE Invoice_T (
  Invoice_Number     CHAR( 6 ),
  Cust_Id            CHAR( 4 ) NOT NULL,
  Invoice_Date       DATE DEFAULT NOW(),
  CONSTRAINT PK_Invoice PRIMARY KEY( Invoice_Number ),
  CONSTRAINT FK_Cust_ID FOREIGN KEY( Cust_Id ) REFERENCES Customer_T( Cust_ID )
  );
CREATE TABLE Invoice_Line_T (
  Invoice_Number       CHAR( 6 ),
  Invoice_Line         INTEGER,
  Prod_Code CHAR( 5 )  NOT NULL,
  Line_Unit            INTEGER NOT NULL,
  Line_Price           DECIMAL( 9, 2 ) NOT NULL,
  CONSTRAINT PK_Invoice_Line  PRIMARY KEY( Invoice_Number, Invoice_Line ),
  CONSTRAINT FK1_Invoice_Line FOREIGN KEY( Invoice_Number ) REFERENCES Invoice_T( Invoice_Number ),
  CONSTRAINT FK2_Invoice_Line FOREIGN KEY( Prod_Code ) REFERENCES Product_T( Prod_Code )
);
CREATE VIEW Bangladesh_V AS
SELECT * FROM country_T
WHERE Cntry_Code = 'BGD';

CREATE MATERIALIZED VIEW Bangladesh_MV AS
SELECT * FROM Country_T
WHERE Cntry_Code = 'BGD';



-- eof: Inventory-DDL.sql
