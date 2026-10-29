# Retail Sales Data Warehouse

## Project Overview
This project demonstrates a simple Retail Sales Data Warehouse built using Microsoft SQL Server, SQL Server Integration Services (SSIS), Visual Studio, and Microsoft Excel.

The project loads retail sales data from Excel into SQL Server staging and dimension tables, then loads the sales fact table for analysis.

## Tools Used
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- Visual Studio with SQL Server Integration Services (SSIS)
- Microsoft Excel
- SQL

## Data Model
- **SalesRaw** — staging table containing the source sales records.
- **DimProduct** — product dimension.
- **DimCustomer** — customer dimension.
- **DimStore** — store dimension.
- **FactSales** — fact table containing sales transactions and measures.

## ETL Workflow
1. Read the source data from Excel.
2. Clear previously loaded data in the correct order.
3. Load the sales data into the staging table.
4. Load product, customer, and store dimensions.
5. Load the fact table.
6. Validate the loaded data and relationships.

## Analysis Examples
The SQL analysis covers:
- Total sales and quantities by product.
- Sales by city.
- Monthly sales trends.

## Source Data
The workbook `Retail_Sales_Source.xlsx` contains sample retail sales, product, customer, and store data for learning and demonstration purposes.

## How to Run
1. Install SQL Server and SSMS.
2. Install Visual Studio with the required SSIS extension.
3. Create the `RetailSalesDW` database.
4. Open the SSIS project file in Visual Studio.
5. Update the Excel and SQL Server connection managers to match your local paths and server.
6. Run the SSIS package.
7. Execute SQL queries in SSMS to analyze the loaded data.

## Notes
- The source data is synthetic sample data.
- Connection settings may need to be updated on another computer.
- Do not commit passwords, secrets, or personal connection settings to the repository.
