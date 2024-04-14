/*CREATE TEMPORARY TABLE TEST

SELECT 
`Month Flown`
FROM airlines_dataset*/

-- SELECT * FROM TEST
-- set sql_safe_updates = 0

------------------------------------------------------------------------------------
-- ADD COLUMNS FOR MONTH AND SET TO RESPECTIVE NUMERICAL VALUE
ALTER TABLE airlines_dataset
ADD Month_Flown VARCHAR(255)

UPDATE airlines_dataset
SET Month_Flown = 

CASE
	WHEN LEFT(`Month Flown`,3) = 'Jan' THEN '01'
    WHEN LEFT(`Month Flown`,3)  = 'Feb' THEN '02'
    WHEN LEFT(`Month Flown`,3)  = 'Mar' THEN '03'
    WHEN LEFT(`Month Flown`,3)  = 'Apr' THEN '04'
    WHEN LEFT(`Month Flown`,3)  = 'May' THEN '05'
    WHEN LEFT(`Month Flown`,3)  = 'Jun' THEN '06'
    WHEN LEFT(`Month Flown`,3)  = 'Jul' THEN '07'
    WHEN LEFT(`Month Flown`,3)  = 'Aug' THEN '08'
    WHEN LEFT(`Month Flown`,3)  = 'Sep' THEN '09'
    WHEN LEFT(`Month Flown`,3)  = 'Oct' THEN '10'
    WHEN LEFT(`Month Flown`,3)  = 'Nov' THEN '11'
    WHEN LEFT(`Month Flown`,3)  = 'Dec' THEN '12'
    END
)
    
    

-------------------------------------------------------------------------------------
-- ADD COLUMNS FOR YEAR

ALTER TABLE airlines_dataset
ADD Year_Flown VARCHAR(255)

UPDATE airlines_dataset
SET Year_Flown = CONCAT('20',RIGHT(`Month Flown`,2))

--------------------------------------------------------------------------------------
-- ADD COLUMN FOR DAY AND SET DAY TO 1

ALTER TABLE airlines_dataset
ADD Day_Flown VARCHAR(255)

UPDATE airlines_dataset
SET Day_Flown = '01'


---------------------------------------------------------------------------------------
-- CONCATENATE ALL THE DATE CATEGORIES
ALTER TABLE airlines_dataset
ADD Date_Flown VARCHAR(255)

UPDATE airlines_dataset
SET Date_Flown = CONCAT(Year_Flown, "-" , Month_Flown,  "-", Day_Flown)

---------------------------------------------------------------------------------------
ALTER TABLE airlines_dataset
ADD Month_Flown_Cleaned VARCHAR(255)

UPDATE airlines_dataset
SET Month_Flown_Cleaned = DATE_FORMAT(CAST(Date_Flown as date), '%b-%Y') 


SELECT Month_Flown_Cleaned FROM airlines_dataset



