# etl-project
Class project to apply extraction, transformation, and loading of multiple data sets.  


We used 2 different datasets in the category of Movies, which were found in Data.world. 
We based our Query analysis on 2 questions for Movies from the years 1989 - 2019:

1) Query on movies with the most earnings

2) Query for movies with the most profit

#### Links to datasets we used:
https://data.world/mahe432/movies/workspace/file?filename=IMDb+movies.csv
https://data.world/jamesgaskin/movies/workspace/file?filename=view


## Transformation
-------------------------

We performed the following steps in order to transform the data to use for our study.

* Used Pandas functions in Jupyter Notebook to load the CSV data.
* Transformed the data set information into data frames.
* Removed multiple columns that were not relevant to the focus of our study. (rating types, runtimes, cast & crew, etc.)
* Identified duplicate movies by concatenating the dataframes, and then dropping them on the title id.
* Made key changes to presentation of data by renaming column ids to better read categories, removal of empty irrelevent datas, and currency reformatting. 
* Dilligently went through the gross income data columns to resolve any code formality issues, and then reformatted to provide the best organization and visualization.


## Load
----------------
The last part of our etl project was to take our final output and transfer into a Database. 

We created a database and respective table to match the columns from the Panda's Data Frame by using Postgres database, using PG admin to store our original clean data sets.


## Summary
------------------
Here are the results found after the query has ran:

* Avengers: Endgame has the most world_wide_earning at $2.7 billion
* Avatar made the most profit at $2.5 billion

In conclusion of our findings, we were able to address our declared project questions.
Though we ran into issues along the way of the ETL process, we were able to resolve and  learn from them.


##### Some issues included:
-------------------------
#### Difficulty in finding the right merge type between the 2 data sets.
Finding the right one did not come easy, and understanding Panda's different merge/join functions was key to finding the right one for the job.

#### Discovery of special character issues (', ",) as bad syntax in some of our columns.
We found many problematic issues found in the extensive text of the description id column.  With some tinkering help, we were able to isolate and pick through to find that the special character usage in the paragraphs were causing syntax issues.  we were able to run clean up functions to best tackle the issue and replace them successfully.

#### Critical thinking on best formatting of currency datatypes after data put into Postgress.







