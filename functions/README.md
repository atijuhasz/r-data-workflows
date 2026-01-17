# Functions

Reusable R functions for data analysis workflows.

## read_multiple_csvs.R
Reads all CSV files from a specified folder and combines them into a single tibble.
Adds columns that track the source file for each row.

## clean_basic.R
Does some basic cleaning steps: standardizes column names, removes duplicate rows and
trims whitespace and character columns.

## summary_helper.R
Prints a compact overview of the data. Uses skimr for rich summaries. 
Invisibly returns the skimr summary object.
