--FUNCTIONS: 

---FISCAL YEAR FUNCTION           
 CREATE FUNCTION FISCALYEAR(@Date DateTime)
 RETURNS INT
 AS
 BEGIN
 RETURN
        CASE 
		  WHEN MONTH(@Date) > 6 
		   THEN YEAR(@Date) + 1
		   ELSE YEAR(@Date)
		  END --AS FicalYear  
 END   
SEleCT dbo.FISCALYEAR(GETDATE())      

---FISCAL QUATER FUNCTION
ALTER FUNCTION FISCALQUATER(@Date Datetime)
RETURNS INT
AS 
BEGIN
RETURN 
      --declare @mydate date = '04/01/2012'
--SELECT
    --@mydate as date,
    CASE
        WHEN MONTH(@date) BETWEEN 1  AND 3  THEN 1
        WHEN MONTH(@date) BETWEEN 4  AND 6  THEN 2 
        WHEN MONTH(@date) BETWEEN 7  AND 9  THEN 3   
        WHEN MONTH(@date) BETWEEN 10 AND 12 THEN 4 
    END 
 END
SELECT dbo.FISCALQUATER(GETDATE()),DATEPART(QUARTER,GETDATE())


