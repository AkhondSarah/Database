-- FileName: DML.sql
-- Description: to mmodify and insert values into the table
-- CST 8215
-- Author: Akhond Sarah Mesbah
-- Year: 2020
-- Last Modified: 17 June 2020 





DELETE FROM Invoice_Line_T;
DELETE FROM Invoice_T;
DELETE FROM Customer_T;
DELETE FROM Product_T;
DELETE FROM City_T;
DELETE FROM Country_T;




INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) VALUES('RUS','Russian Federation', 144192450 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) VALUES('MEX','Mexico', 119530753 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) VALUES('CAN','Canada', 36155487 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) VALUES('DZA','Algeria', 40400000 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) VALUES('CHN','China', 1376049000 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) VALUES('CHL','Chile', 18006407 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) VALUES('BGD','Bangladesh', 164633132);
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) VALUES('AFG','Afghanistan', 38897809);
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) VALUES('CUB','Cuba',11423000);
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) VALUES('DNK','Denmark',5484000);
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) VALUES('ECU','Ecuador',14790608);
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) VALUES('FJI','Fiji',875983);
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) VALUES('GEO','Georgia',4630000);
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) VALUES('HTI','Haiti',9648924);
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) VALUES('IDN','Indonesia',242968342);

INSERT INTO City_T( City_ID,City_Name,Cntry_Code,City_Population ) VALUES(1,'Kabul','AFG',1780000); 
INSERT INTO City_T( City_ID,City_Name,Cntry_Code,City_Population ) VALUES(2,'Qandahar','AFG',237500); 
INSERT INTO City_T( City_ID,City_Name,Cntry_Code,City_Population ) VALUES(3645,'Kostroma','RUS',288100); 
INSERT INTO City_T( City_ID,City_Name,Cntry_Code,City_Population ) VALUES(3646,'Volzski','RUS',286900); 
INSERT INTO City_T( City_ID,City_Name,Cntry_Code,City_Population ) VALUES(3635,'Vladimir','RUS',337100); 
INSERT INTO City_T( City_ID,City_Name,Cntry_Code,City_Population ) VALUES(3580,'Moscow','RUS',8389200); 
INSERT INTO City_T( City_ID,City_Name,Cntry_Code,City_Population ) VALUES(2643,'Zinacantepec','MEX',121715); 
INSERT INTO City_T( City_ID,City_Name,Cntry_Code,City_Population ) VALUES(2638,'Manzanillo','MEX',124014); 
INSERT INTO City_T( City_ID,City_Name,Cntry_Code,City_Population ) VALUES(2644,'San Martín Texmelucan','MEX',121093); 
INSERT INTO City_T( City_ID,City_Name,Cntry_Code,City_Population ) VALUES(2515,'Ciudad de México','MEX',8591309); 
INSERT INTO City_T( City_ID,City_Name,Cntry_Code,City_Population ) VALUES(1822,'Ottawa','CAN',335277); 
INSERT INTO City_T( City_ID,City_Name,Cntry_Code,City_Population ) VALUES(1823,'Laval','CAN',330393); 
INSERT INTO City_T( City_ID,City_Name,Cntry_Code,City_Population ) VALUES(1825,'Brampton','CAN',296711); 
INSERT INTO City_T( City_ID,City_Name,Cntry_Code,City_Population ) VALUES(579,'Ovalle','CHL',94854);
INSERT INTO City_T( City_ID,City_Name,Cntry_Code,City_Population ) VALUES(578,'Curicó','CHL',115766); 
INSERT INTO City_T( City_ID,City_Name,Cntry_Code,City_Population ) VALUES(569,'Puerto Montt','CHL',152194); 
INSERT INTO City_T( City_ID,City_Name,Cntry_Code,City_Population ) VALUES(156,'Mymensingh','BGD',188713); 
INSERT INTO City_T( City_ID,City_Name,Cntry_Code,City_Population ) VALUES(157,'Barisal','BGD',170232); 
INSERT INTO City_T( City_ID,City_Name,Cntry_Code,City_Population ) VALUES(170,'Sirajganj','BGD',99669); 
INSERT INTO City_T( City_ID,City_Name,Cntry_Code,City_Population ) VALUES(160,'Comilla','BGD',135313); 

-- Add Product data
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount,cntry_origin )
  VALUES( 'P2011', 'Compac Presario', '2011-02-14', 20, 5, 499.99, 0,'RUS' );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount,cntry_origin ) 
  VALUES( 'P2012', 'HP laptop', '2010-09-25', 40, 5, 529.99, 0,'RUS' );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount,cntry_origin ) 
  VALUES( 'P2013', 'Samsung LCD', '2010-02-15', 22, 8, 329.99, 0,'CHL' );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount,cntry_origin ) 
  VALUES( 'P2014', 'Brother Network All-In-One Laser Printer', '2010-10-10', 50, 10, 159.99, 0,'CHL' );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount,cntry_origin ) 
  VALUES( 'P2015', 'Western Digital External Hard drive', '2010-04-08', 30, 10, 149.99, NULL,'CHL' );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount,cntry_origin ) 
  VALUES( 'P2016', 'Apple iPad 2 with Wi-Fi + 3G', '2011-02-23', 90, 200, 849.00, 0,'BGD' );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount,cntry_origin) 
  VALUES( 'P2017', 'iPAD 2 Smart Cover', '2011-02-14', 70, 10, 45.00, 10,'BGD' );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_InDate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount )
  VALUES('P2119','Organic Chard','2018-01-14', 240, 100,'RUS', 15.00, 5 );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_InDate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount )
  VALUES('P2020','Organic Collard Green','2018-01-14', 140, 110,'RUS', 11.00, 5 );


-- Add Customer data
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Balance,cust_Country )
  VALUES( 'C001', 'Samantha', 'Joness', '613-727-4723', '1385 Woodroffe Ave', 'Ottawa', 'ON', 'K2G1V8', 0 ,'CAN'  );
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Balance,cust_Country )
  VALUES( 'C002', 'Ikeas', 'Vlodmir', '613-727-4723', '1385 Woodroffe Ave', 'Ottawa', 'ON', 'K2G1V8', 0,'CAN'  );
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Balance,cust_Country )
  VALUES( 'C003', 'John', 'Smith', '613-727-4723', '1385 Woodroffe Ave', 'Ottawa', 'ON', 'K2G1V8', 0,'CAN'  );
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Balance,cust_Country )
  VALUES( 'C004', 'Yelena', 'Ackerman', '613-727-4723', '854 Younge Street' , 'Toronto','ON', 'K2G1V8', 0,'CAN'  );
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Balance,cust_Country )
  VALUES( 'C005', 'Ben', 'Bacth', '613-727-4723', '264 Main Street'   , 'Kitchener', 'ON', 'K2G1V8', 0,'CAN'  );
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Balance,cust_Country ) 
  VALUES( 'C006', 'Omar', 'Imsn', '613-727-4723', '357 Rue Catherine' , 'Montreal', 'ON', 'K2G1V8', 0,'CAN'  );
INSERT INTO Customer_T( Cust_ID, Cust_FName, Cust_LName, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country,Cust_Balance ) 
  VALUES('C097','Aze','Balai','7-731-707-7243','Ulitsa Aleutskaya','Valdivostok','VL','VL7SK4','RUS', 0 );  

-- Add Invocie data
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23001', 'C001', '2011-02-15' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23002', 'C001', '2011-04-25' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23003', 'C004', '2011-06-12' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23004', 'C002', '2011-07-08' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23005', 'C005', '2011-08-24' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23006', 'C006', '2011-09-07' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23007', 'C006', '2010-12-28' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23008', 'C006', '2011-12-15' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date ) 
 VALUES('I88001','C097','2018-01-15');




-- Add Invoice Line Data
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
 VALUES( 'I23001', 1, 'P2011', 1, 650.75 ); 
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23001', 2, 'P2014', 3, 159.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23002', 1, 'P2012', 1, 529.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23003', 1, 'P2015', 3, 140.75 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23004', 1, 'P2014', 1, 159.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23005', 1, 'P2016', 1, 798.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23006', 1, 'P2011', 1, 499.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23007', 1, 'P2012', 1, 529.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23008', 1, 'P2016', 3, 689.00 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23008', 2, 'P2017', 3, 35.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES('I88001', 1,'P2119', 3, 15.00 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price ) 
VALUES('I88001', 2,'P2020', 3, 11.00 )
