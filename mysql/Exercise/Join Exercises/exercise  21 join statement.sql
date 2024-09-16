-- From the following tables write a SQL query to select all rows from both participating tables as
-- long as there is a match between pro_com and com_id.

SELECT 
    *
FROM
    item_mast IM
        INNER JOIN
    company_mast CM ON IM.pro_com = CM.com_id;