-- FileName: Delete query.sql
-- Description:Explanation on DELETE statements
-- CST 8215
-- Author: Akhond Sarah Mesbah
-- Year: 2020
-- Last Modified: 17 June 2020

DELETE FROM Customer_T WHERE Cust_Country ='CHL';
DELETE FROM Product_T WHERE Cntry_Origin ='RUS';
--in the second statment we would need to delete the foreign  key constraint(in the invoice_line_t table) as we cant delete the primary key values(which are in the product_t table) without first deleting the foreign key (in the invoice_line_t table)
