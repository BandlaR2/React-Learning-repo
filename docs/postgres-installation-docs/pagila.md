## Installation Instructions:
For PostgreSQL:

1. Ensure you have PostgreSQL installed on your system. If not, you can download it from the official PostgreSQL website: PostgreSQL Downloads.

2. Load the Pagila Database:
Open a terminal and navigate to the pagila/sql directory.

        cd pagila/sql

3. Connect to your PostgreSQL server using the psql command. Replace username with your PostgreSQL username.

         psql -U username
         
4. Once connected to the PostgreSQL server, run the following command to load the Pagila database:
  
       \i pagila-schema.sql
       \i pagila-data.sql
This will create the Pagila schema and populate it with sample data.

## Commands for Execution:

You can use the following commands to navigate and interact with the Pagila database:

Connect to PostgreSQL:

             psql -U username -d pagila
Replace username with your PostgreSQL username.

### List tables:
       \dt
    
Run SQL queries:

SELECT * FROM actor;


## How the Data is Populated?
The data is populated by executing the pagila-schema.sql and pagila-data.sql scripts. These scripts create the database schema and insert sample data into the tables.

##  Data Source:
The Pagila sample database is provided as part of the Pagila GitHub repository. The data is included in the repository under the pagila/sql directory.