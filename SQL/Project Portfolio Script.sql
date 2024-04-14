-- GRAPH 0: AVERAGE OVERALL RATING PER AIRLINE

SELECT

Airline,
ROUND(AVG(`Overall Rating`),1) AS 'Average Overall Rating'

FROM airlines_dataset

GROUP BY 1	

-- GRAPH 1: TOTAL REVIEWED FLIGHTS

SELECT 

Airline,
COUNT(`Review Date`) AS 'Total Reviewed Flights'

FROM airlines_dataset
GROUP BY 1	

-- GRAPH 2: CUSTOMER SATISFACTION

SELECT 

Airline,
Recommended,
COUNT(`Review Date`) as 'Customer Satisfaction'

FROM airlines_dataset

GROUP BY 1,2
ORDER BY 1, 2 DESC

-- GRAPH 3: CUSTOMER SATISFACTION BASED ON MONTH FLOWN 

SELECT 

Airline,
Month_Flown_Cleaned,
Recommended,
COUNT(`Review Date`) as 'Reviews'

FROM airlines_dataset

GROUP BY 1, 2,3

-- GRAPH 4: CUSTOMER SATISFACTION: VERIFIED VS NOT VERIFIED

SELECT 

Airline,
Verified,
Recommended,
COUNT(`Review Date`) as 'Customer Satisfaction: Verified vs Not Verified'

FROM airlines_dataset

GROUP BY 1, 2, 3

-- GRAPH 5: CUSTOMER SATISFACTION BASED ON CLASS

SELECT 

Airline,
Class,
Recommended,
COUNT(`Review Date`) as 'Customer Satisfaction per Class'

FROM airlines_dataset

GROUP BY 1, 2, 3
ORDER BY 1,2 DESC

-- GRAPH 6: CUSTOMER SATISFACTION BASED ON TYPE OF TRAVELLER

SELECT 

Airline,
`Type of Traveller`,
Recommended,
COUNT(`Review Date`) as 'Customer Satisfaction per Class'

FROM airlines_dataset

GROUP BY 1, 2, 3
ORDER BY 1,2 DESC

-- GRAPH 7: CUSTOMER SATISFACTION PER AIRLINE

SELECT 

Airline,
Recommended,
COUNT(`Review Date`) as 'Customer Satisfaction per Airline'

FROM airlines_dataset
WHERE Recommended = 'yes'
GROUP BY 1, 2
ORDER BY 1


-- GRAPH 8: AVERAGE OF DIFFERENT CATEGORIES PER AIRLINE

SELECT 

Airline,
ROUND(AVG(`Seat Comfort`),1) AS 'Average Seat Comfort Rating',
ROUND(AVG(`Staff Service`),1) AS 'Average Staff Service Rating',
ROUND(AVG(`Food & Beverages`),1) AS 'Average Food & Beverage Rating',
ROUND(AVG(`Inflight Entertainment`),1) AS 'Average Inflight Entertainment Rating',
ROUND(AVG(`Value For Money`),1) AS 'Average Value for Money Rating'

FROM airlines_dataset

GROUP BY 1
