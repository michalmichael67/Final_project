# Final_project

## Project Overview
- Topic : Predicting Whether Stock Exchange Prices will Close Higher or Lower than They Open
- Reason topic was selected : We believe that the price of the stock exchange is an indicator of general financial stability which is crucial to people's decision-making. 
- Main goal : Our goal is to use machine learning models to predict stock exchange prices to hopefully understand the level of financial stability. 
In this project, we will be focusing specifically on the ^NYA, the stock market index covering all common stock listed on the New York Stock Exchange.
- Description of their source of data: we are using a Kaggle dataset (https://www.kaggle.com/mattiuzc/stock-exchange-data) that has daily price data for indexes tracking stock exchanges from all over the world (United States, China, Canada, Germany, Japan, and more). The data was all collected from Yahoo Finance, which had several decades of data available for most exchanges. We will be focusing on 2 CSV files:
    1. A CSV with stock exchange data inclusing the columns: Stock Exchange Index, Date, Open, High, Low, Close, Adj Close, Volume
    2. A reference CSV with columns: Region, Exchange, Index, Currency
- Questions they hope to answer with the data: Based on the opening price of a particular index, will the closing price be higher or lower?

## Project Outline

### Data Cleansing
In order to proceed with our project, we needed to prepare the data in a way that we could consume. Below were the initial columns:

![NYA_dtypes.png](Resources/NYA_dtypes.png) 

We added PrevClose, PrevHigh, PrevLow to train our machine learning model. We added Delta and Target to understand if the day closed up or down (this was then used to compare against the predicted outcome). Below please find the final list of columns in our dataset:

![NYA_updated_dtypes.png](Resources/NYA_updated_dtypes.png) 

### Database Creation
We created a SQL database which included 2 main tables - A table with open/close data for the last 60 years for all indexes and another table with reference data. From these intial tables, we created 2 additional tables that were used in the machine learning model. 

The structure of the tables can be viewed below:

![ERD_Diagram.png](Resources/ERD_Diagram.png) 

### Machine Learning Model
We decided to go with a supervised machine learning model that would classify the data and to try and predict whether the index would go up or down based on a combination of today and yesterdays data.  Over the couse fo this project, we tried 4 machine learning models:

1. Logistic Regression - This was a base level model to see where we could improve
2. Balanced Random Forest Classifier - the next 2 machine learning models try to account for a slight imbalance in data
3. SMOTE oversampling 
4. Undersampling
5. Decision Tree Model

### Visualization
To visualize the data we used a combination of exploratory data analysis before performing logistic regression and then created more visualizations after the fact. In this proccess we used:

1. Seaborn to create line plots and pie plots to understand the opening/closing data
2. Pyplot to produce regression plots
3. Tableau to create interactive plots to better explain and understand our data

### Presentation 
Our presentation has been created in google sheets and has the following slides:

1. Title
2. Big Question
3. Why we chose this topic
4. Dataset, Variables, Technology
5. ER Diagram
6. Machine Learning Models - Random Forest
7. SMOTE Oversampling
8. Undersampling
8. Decision Tree Model

Link to Google Slides :
https://docs.google.com/presentation/d/18oep-1vExz-zX89DUcph0Wy5RHCpYYMkG6KXo5J1TsE/edit#slide=id.g19fc555e75fdc6a8_26

### Dashboard
We will create our dashboard using Tableau. We intend to use filters on Year, Index, and Machine Learning Model to focus on certain outcomes that we would like to highlight.

## Communication Protocols
Our main plan is to touch base through slack as that has been an active and functional method thus far. If a team member is unreachable through slack, we have shared our emails as a secondary line of communication.
