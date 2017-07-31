# Getting and Cleaning Data - Assignment

This is the Assignment for the "Getting and Cleaning Data" Coursera course.

### Overview
This project serves to demonstrate the collection and cleaning of a tidy data set that can be used for subsequent
analysis.

### Algorithm
The R script, `run_analysis.R`, does the following:

1. Download the dataset https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Unzips it
3. Load all training & test data Files
4. Concatenate the Data Files, row-wise
5. Free memory, which is no more required
6. Assign Column Names
7. Combining and creating a single data set
8. Select only columnNames where either `mean()` or `std()` is present
9. Append columns of Subject and activity.
10. Describe the activity names as defined in activity_labels.txt:
* 1 as WALKING
* 2 as WALKING_UPSTAIRS
* 3 as WALKING_DOWNSTAIRS
* 4 as SITTING
* 5 as STANDING
* 6 as LAYING
11. Appropriately labels the data set with descriptive variable names.
* prefix 't' denotes time
* Acc denotes Accelerometer
* Mag denotes Magnitude
* Gyro denotes Gyroscope
* prefix 'f' denotes frequency 
* Double words like "BodyBody" to replace by "Body"
* Remove all '-' and '()'
* replace `mean` with `Mean` and `std` with `StdDev`
12. Take mean of all columns group by Subject then by Activity
13. Order first with Subject then with Activity
14. Save dataset to a local file named: `tidydata.txt`

### Additional Information
Description of the variables is present in `CodeBook.md` file

### The Data Set
Final Tidy data set is present in `tidydata.txt` file.