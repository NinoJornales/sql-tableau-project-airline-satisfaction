# Airline Customer Satisfaction Analysis

### Project Overview

   This data analysis project aims to provide insights into the different factors affecting customer satisfaction across different airlines. By analyzing the customer satisfaction data,
   the project seeks to gain a deeper understanding of the distribution of satisfied and unsatisfied customers based on month flown, class, type of traveller, and whether the user is verified or not. 
   The project also provides a deeper look into the categories the top airlines excel at in order to ensure customer satisfaction.

  
### Data Sources

   Airline Customer Satisfaction Data - The primary dataset used for this project is the "airlines_dataset.csv" that was sourced from Kaggle.com. This contains detailed information about the distribution customers based on 
   different factors along with the different categories affecting customer satisfaction.

### Tools

  - MySQL - Data Cleaning & Preparation
  - Tableau - Data Visualization

### Data Cleaning 

One of the major steps to ensure the accuracy of the analysis and guarantee that the results will translate well when visualized is cleaning the data. 


#### Month Flown

The steps below showcase the thought process while cleaning the data for the dates:

1. Since the data given for the dates is not the traditional format recognized by MySQL, the query converts the the string values for the months into numerical data.

![image](https://github.com/NinoJornales/sql-tableau-project-airline-satisfaction/assets/166905805/0dbc3c43-7d30-4559-90e6-ddffa3cfef4b)

![image](https://github.com/NinoJornales/sql-tableau-project-airline-satisfaction/assets/166905805/bf766aa5-8927-4d04-ae81-e0c8679ef517)

2. The query below transforms the year data into a 4-digit format and uses the value 1 as a place holder for the day. 

![image](https://github.com/NinoJornales/sql-tableau-project-airline-satisfaction/assets/166905805/cc887640-1b00-4628-9040-f222de536ce4)

3. Below combines the different columns in order for a recognizable date format to be produced.

![image](https://github.com/NinoJornales/sql-tableau-project-airline-satisfaction/assets/166905805/7ebda0bc-e95b-4113-8761-3ab21daccf97)

4. The resulting data is then casted as a date in order to obtain the date format desired.

![image](https://github.com/NinoJornales/sql-tableau-project-airline-satisfaction/assets/166905805/eb1e8cd5-1f78-4221-9b72-fff44ed425a0)


#### Verified Users

Some entries did not fall into the categories 'Verified' and 'Not Verified'. 

![image](https://github.com/NinoJornales/sql-tableau-project-airline-satisfaction/assets/166905805/1776e5b8-1560-498c-bf5b-620dd125eda0)

The query above transforms the entries that did not fit and assigned them to their respective category.

### Data Preparation

In order to prepare the data for visualization, a similar thought process was used to extract the distribution of satisfied and unsatisfied customers across different areas.

![image](https://github.com/NinoJornales/sql-tableau-project-airline-satisfaction/assets/166905805/3301ea41-bf7c-4621-8e3a-5753a5617668)

![image](https://github.com/NinoJornales/sql-tableau-project-airline-satisfaction/assets/166905805/d7c37a09-2bd4-4b05-b619-82eed813a4b2)

The query below takes the average of different categories based on the airline

![image](https://github.com/NinoJornales/sql-tableau-project-airline-satisfaction/assets/166905805/4d7cb8a1-bb88-4f45-8353-49c99ac3bdaf)


### Exploratory Data Analysis

The EDA aims to answer key questions such as:

- What is the total number reviews and how much of them were satisfied.
- How are the reviews distributed based on Verification, Class, and Type of Traveller.
- How does the different categories affect customer satisfaction.
  

### Analysis and Findings

Upon analyzing the data, results show that:

1. The overall number of reviewed flights were 4392 with 60.95% of them being satisfied. 

![image](https://github.com/NinoJornales/sql-tableau-project-airline-satisfaction/assets/166905805/e6a5ef6a-d048-4ecd-a577-75c4a2fe1692)

2. 

Data shows that majority of the reviews were from verified users amounting to 3414 with 59.87% of them being satisfied.
   
![image](https://github.com/NinoJornales/sql-tableau-project-airline-satisfaction/assets/166905805/c8897bf8-352f-4b4f-b06f-28d81de6c3d3)

A large portion of the flyers are from the Economy class with a value of 2974, 55.85% of them being satisfied.

![image](https://github.com/NinoJornales/sql-tableau-project-airline-satisfaction/assets/166905805/48684c74-8e3a-4ce3-897f-67f51cfd2760)

The most common type of traveller are those travelling for leisure with a value of 1744, 67.14% of them being satisfied.

![image](https://github.com/NinoJornales/sql-tableau-project-airline-satisfaction/assets/166905805/5ca95ad3-d7ca-4afa-b0d0-0274f6643573)


3.  
Qatar Airways, who has the most reviewed flights, has an average of 4.02 when all categories are considered. This lead to an overall customer satisfaction of 72.6% of 1624 passengers.

![image](https://github.com/NinoJornales/sql-tableau-project-airline-satisfaction/assets/166905805/7406c12e-082a-43fd-9a77-c8d1f7da68cf)


Compared to Emirates, which only has an average of 3.14 for all the categories, only saw a 39.26% customer satisfaction across 1350 passengers. 

![image](https://github.com/NinoJornales/sql-tableau-project-airline-satisfaction/assets/166905805/599c635e-01eb-4c95-980b-c8efc6fbb50b)


### Dashboard


![Airline Satisfaction Analysis](https://github.com/NinoJornales/sql-tableau-project-airline-satisfaction/assets/166905805/25619d11-35af-4313-a173-6421404a6809)

