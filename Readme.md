# Power BI SEC Project

**Status**: Work in Progress 🚧

## Overview

This project aims to analyze and visualize financial data from the U.S. Securities and Exchange Commission (SEC) using Power BI. The goal is to provide insights into financial statements, trends, and other key metrics to support data-driven decision-making.

## Project Structure

The repository is organized into the following directories:

- **BalanceSheet**: Contains metadata to prepare the balance sheet view.
- **Business Requirements**: Documents outlining the objectives and requirements of the project.
- **Data Modelling**: Resources and diagrams related to data modeling for the project.
- **Miscellaneous Code**: Various scripts and code snippets used throughout the project.
- **Power BI Files**: Power BI Desktop files for data visualization and reporting.
- **Visualization Mappings**: Mapping documents that link data fields to visual representations.

## Getting Started

   To explore and utilize this project:

1. **Clone the Repository**:

    ```bash
    git clone https://github.com/hravat/powerbi-sec-project.git
    ```

2. **Create data folders**

    Create 4 folders to hold the raw data 
    num , pre , sub ,tag

3. **Download the data to these folders** 

    https://www.sec.gov/data-research/sec-markets-data/financial-statement-data-sets 


4. **File Renaming** 

    There would be multiple files with the same name.
    Therefore give the files different names 

    For example :- < File-Name >-< Year >-< Quarter >.txt


5. **Connect the Power BI Template file to the DataSource** 

    Naviagte to Power BI Files -> SEC_Dashboard.pbit 

    Connect to all the data sources and check if the data is visible 

Once these steps are perfoemed you shoud be able to use the project  


 ## The Data Model 

   ![Data Model](<Readme Images/SecProjecttDataModel.svg>)


## CEO Views 

## 1.) Filing Status on Filing Date

   ![Filing Status](<Readme Images/FilingStatusFilingDate.png>)

## 2.) Filing Status on Finaincial Year

   ![Filing Status](<Readme Images/FilingStatusFilnacialYear.png>)

## 3.) Condensed Consolidated Balance Sheet 

  ![Condensed Consolidated Balance Sheet ](<Readme Images/CondensedCOnsolidatedBlalanceSheet.png>)

## 4.) Condensed Consolidated Statement of Earnings 

  ![Condesed Consolidated Statement of Earnings ](<Readme Images/CondesedConsolidatedStatementofEarnings.png>)



## Links to Medium Articles 

https://medium.com/@hussain.ravat786/role-based-navigation-button-display-in-power-bi-fb783c36c669