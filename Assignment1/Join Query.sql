- FileName: Join Query.sql
-- Description: join queries
-- CST 8215
-- Author: Akhond Sarah Mesbah
-- Year: 2020
-- Last Modified: 17 June 2020 

--join query to list countries that do not have any Customers.
SELECT
Cntry_Name,COUNTRY_T.Cntry_Code,Customer_T. Cust_Id 
From
Country_T
left join
Customer_t ON  COUNTRY_T.Cntry_Code=Customer_T.Cust_Country
WHERE Cust_Id IS NULL;

--join query to list countries from which no products are bought.
SELECT
Cntry_Name,COUNTRY_T.Cntry_Code,Product_T.Prod_Code 
From
Product_T
right join
COUNTRY_T ON COUNTRY_T.Cntry_Code=Product_T.Cntry_Origin
where Prod_Code IS null


         
