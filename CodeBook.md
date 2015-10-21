---
title: "Codebook for summarized Samsung data"
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
Running the runAnalysis.R file will take care of downloading the file (if not present), unzipping it (if needed) and creating the tidy dataset.

###Cleaning of the data
* Functions performed by run_analysis.R:
    * Download the Samsung zipped data file if it is not present
    * Unzip the file if the data directory does not exist
    * Read in the test data set
    * Add the column names, descriptive activity names and subject numbers to the dataset
    * Delete unused objects
    * Read in the train dataset
    * Add the column names, descriptive activity names and subject numbers to the dataset
    * Delete unused objects
    * Combine the train and test data
    * subset the mean, stdev, activity and subject columns from the dataset
    * Summarize the subset by calculating the mean of the means and stdev
        * It should be noted that it is not proper to calculate the mean of stdev as it is done here


##Description of the variables in the tidy_data.txt file
* Contains 180 observations (summarized means by activity and subject)
    * 81 columns
        * Subject
        * Activity
        * 79 summarized observations (Mean of means, Mean of stdev) from the original data where mean or stdev was in the column name
    * Summary of the data
        * Using the embedded accelerometer and gyroscope in the Samsung S2, 3-axial linear acceleration and 3-axial angular velocity data were collected at a constant rate of 50Hz.
    * Variables present in the dataset
        * For a description of the features in the dataset please see the file [feature_info.txt] (./DatasetDocs/feature_info.txt) 
    * There are 6 activities measured in the study
        * WALKING
        * WALKING_UPSTAIRS
        * WALKING_DOWNSTAIRS
        * SITTING
        * STANDING
        * LAYING
    * There are 30 subjects that took part in the study
        * Ages 19-48
        * 30% were selected to be in the test data set
        * 70% were selected to be in the train data set
    * For more information please see the projects [README.txt] (./DatasetDocs/README.txt) file here or download the dataset using the link above.


Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 




