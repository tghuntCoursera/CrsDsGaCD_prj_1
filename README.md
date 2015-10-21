# CrsDsGaCD_prj_1
Coursera Data Science, Getting and Cleaning Data project 1

##Contents
* [run_analysis.R] (./run_analysis.R) 
* README.md
* [CookBook.md] (./CookBook.md) 
* DatasetDocs/
    * [features_info.txt] (./DatasetDocs/features_info.txt) 
    * [README.txt] (./DatasetDocs/README.txt) 

##Purpose of this project
* Create a tidy_data.txt file which summarizes the data collected from the Samsung SII:
    * To create the file run the R script run_analysis.R:
    * List of script operations:
        * Download the Samsung zipped data file if it is not present
        * Unzip the file if the data directory does not exist
        * Read in the test data set
        * Add the column names, descriptive activity names and subject numbers to the test dataset
        * Delete unused objects
        * Read in the train dataset
        * Add the column names, descriptive activity names and subject numbers to the train dataset
        * Delete unused objects
        * Combine the train and test data
        * subset column names with mean or stdev in the name, along with the activity and subject columns
        * Summarize the subset by calculating the mean of the means and mean of the stdev by activity and subject
            * It should be noted that it is not proper to calculate the mean of stdev as it is done here

###Data sources
* Details of the study:
    * http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* Link to the data file
    * https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
