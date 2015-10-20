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
*For specific information regarding the base study please refer to the following link
* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

*Data processing performed by run_analysis.R:
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
*  It should be noted that it is not proper to calculate the mean of stdev as it is done here
*

###Collection of the raw data
The data transformation by the runAnalysis.R script was obtained from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Notes on the original (raw) data 
Some additional notes (if avaialble, otherwise you can leave this section out).

##Creating the tidy datafile

###Guide to create the tidy data file
Description on how to create the tidy data file (1. download the data, ...)/

###Cleaning of the data
Short, high-level description of what the cleaning script does. [link to the readme document that describes the code in greater detail]()

##Description of the variables in the tiny_data.txt file
General description of the file including:
 - Dimensions of the dataset
 - Summary of the data
 - Variables present in the dataset

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

###Variable 1 (repeat this section for all variables in the dataset)
Short description of what the variable describes.

Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

####Notes on variable 1:
If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.

##Sources
Sources you used if any, otherise leave out.

##Annex
If you used any code in the codebook that had the echo=FALSE attribute post this here (make sure you set the results parameter to 'hide' as you do not want the results to show again)