---
title: "Codebook for summarized samsung data"
author: "Thomas Hunt"
ISO date: "2015/10/19"
output:
  html_document:
    keep_md: yes
---

## Project Description
The purpose of this project is to demonstrate an ability to collect, work with and clean a data set.  The goal
is to prepare a tidy dataset that can be used for analysis.

##Study design and data processing
* For specific information regarding the base study please refer to the following link:
    *  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

###Collection of the raw data
* For specific information regarding the base study please refer to the following link:
    * http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

###Notes on the original (raw) data 
* The original data can be obtained from here:
    * https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Creating the tidy datafile
The file runAnalysis.R script performs a data transformation per the guidelines of the project.

###Guide to create the tidy data file
Running the runAnalysis.R file will take care of downloading the file, unzipping it and creating the tidy dataset.

###Cleaning of the data
* Functions performed by run_analysis.R:
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
    * Summarize the subset by calculating the mean of the means and stdev
        * It should be noted that it is not proper to calculate the mean of stdev as it is done here


##Description of the variables in the tidy_data.txt file
* Contains 180 observations (summarized means by activity (6) and subject (30)
    * 81 columns
        * Subject
        * Activity
        * 79 summarized observations from the original data
    * Summary of the data
    * Variables present in the dataset
* Please use the links provided above to review the details for the data collected.


