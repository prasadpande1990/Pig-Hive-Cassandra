# Pig-Hive-Cassandra
Yelp Data Analysis using Pig and Hive and Cassandra

Dataset:
Yelp Academic dataset under ~/data directory


Part 1: Pig Latin

Q1:
List the business_id , full address and categories of the Top 10 businesses using the
average ratings. This will require you to use review2.csv and business2.csv files.
Please answer the question by calculating the average ratings given to each business using the
review2.csv file. Do not use the already calculated ratings (average_stars) contained in the
business entity rows.

Q2:
Using Pig Latin script, Implement co-group command on business_id for the datasets review
and business. Print first 5+<X> rows.

Q3:
Repeat Question 2 (implement join) with co-group commands. Print first 5+<X> rows.

Q4:
Write a UDF(User Define Function) FORMAT_CAT in Pig which basically formats the categories
in business in the following:
Before formatting: ['Photographers', 'Event Planning & Services']
After formatting: 1) ['Photographers'|'Event Planning & Services']
Before formatting: ['Print Media', 'Mass Media']
After formatting: 1) ['Print Media'| 'Mass Media'

Part-2
Q5:
List the business_id , full address of the Top 10 businesses using the
average ratings. This will require you to use review2.csv and business2.csv files.
(Show the create table command, load from local, and the Hive query).
Please answer the question by calculating the average ratings given to each
business using the review data. Do not use the already calculated ratings
(average_stars) contained in the business entity rows.

Q6:
Using Hive script, List the 'business_id' and 'categories' of businesses located in 'Stanford'.
(Show the create table command, load from local, and the Hive query).

Q7:
Using Hive script, create one table partitioned by year. (Show the create table with one command,
load from local w i t h three commands, and one Hive query that selects all columns from the
table for the virtual column month of year 2013).

Q8:
Requirement:
Create three tables that have 3 columns each (namely business_id,full_address and longitude).
Each table will represent a year. The three years are 2013, 2014 and 2015.
Using Hive multi-table insert, insert values from columns (business_id,full_address and longitude)
from the table you created in Q7 to these three tables
(each table should have names in form of business_year e.g. business_2013 etc. for the
specified year).

Q9:
Write a UDF(User Define Function) FORMAT_CAT in Pig which basically formats the categories
in business in the following:
Before formatting: ['Photographers', 'Event Planning & Services']
After formatting: 1) ['Photographers'|'Event Planning & Services']
Before formatting: ['Print Media', 'Mass Media']
After formatting: 1) ['Print Media'|'Mass Media']
Using Hive script, use the FORMAT_CAT function on business dataset and print the
business_id, full_address and the categories. Limit your result to 10 rows.
