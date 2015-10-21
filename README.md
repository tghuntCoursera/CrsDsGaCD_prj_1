# CrsDsGaCD_prj_1
Coursera Data Science, Getting and Cleaning Data project 1

##Contents
* [run_analysis.R] (./run_analysis.R) 
* README.md
* [Cookbook.md] (./Cookbook.md) 
* DatasetDocs/
    * [features_info.txt] (./DatasetDocs/features_info.txt) 
    * [README.txt] (./DatasetDocs/README.txt) 

##Purpose of this project
* Creating the tidy_data.txt file which summarizes the data collected from the Samsung SII:
    * Data processing performed by run_analysis.R:
        * Download the samsung zipped data file if it is not present
        * Unzip the file if the data directory does not exist
        * Read in the test data set
        * Add the column names, descriptive activity names and subject numbers to the dataset
        * Delete unsed objects
        * Read in the train dataset
        * Add the column names, descriptive activity names and subject numbers to the dataset
        * Delete unsed objects
        * Combine the train and test data
        * subset the mean, stdev, activity and subject columns from the dataset
        * Summaries the subset by calculating the mean of the means and stdev
            * It should be noted that it is not proper to calculate the mean of stdev as it is done here

###Data sources
* Details of the study:
    * http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* Link to the data file
    * https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
