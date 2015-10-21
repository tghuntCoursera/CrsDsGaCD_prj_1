library(data.table)

dataFile <- 'ucihardata.zip'
datadir <- "UCI HAR Dataset"

# If the local file does not exist, download it
if (!file.exists(dataFile) && !file.exists(datadir)) {
  dataUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  print("Attempting to download the data file")
  
  if (Sys.info()['sysname'] == "Windows") {
    print("Downloading on Windows")
    download.file(dataUrl, destfile = dataFile)
  }
  else {
    # If something other than windows add curl
    print("Downloading on Mac/Linux with curl")
    download.file(dataUrl, destfile = localFile, method = 'curl')
  }
  
  # Check to see if the file is present
  # If not print error message and stop
  if (!file.exists(dataFile)) {
    print('Unable to download the file')
    stop()
  }
} else {
  print("Skipping download, the file already exists")
}

# Check to see if we need to unzip the file
if ( !file.exists(datadir) ) {
  if (file.exists(dataFile) ) {
    unzip(dataFile, overwrite = TRUE, unzip = "internal")
  }
  else {
    mess <- paste("The file <", dataFile, "is not present to unzip", sep=" ")
    print(mess)
    stop()
  }
} else {
  mess <- paste0("The dir <", datadir, "> already exists,")
  mess <- paste(mess, "if you would like to download new data please delete ucihardata.zip and UCI HAR Dataset", sep=" ")
  print(mess)
}


# Read in the activity labels, 6 items, character
activityFile <- paste0(datadir, '\\activity_labels.txt')
activities <- read.table(activityFile, blank.lines.skip = TRUE)

# Read in the features file 'features_info.txt', 561 items, character
featureFile <- paste0(datadir, '\\features.txt')
features <- read.table(featureFile, blank.lines.skip = TRUE)

#~~~~
# Process test files
#~~~~

# Read in the test data set (scientific)
print("Reading in the test data")
testDataFile <- paste0(datadir, '\\test\\X_test.txt')
testData <- read.table(testDataFile, blank.lines.skip = TRUE)

# Apply row names to testData, features
print("Applying column names to the test data")
colnames(testData) <- features[[2]]

# Read in the test subjects (numerics)
testSubjectsFile <- paste0(datadir, '\\test\\subject_test.txt')
testSubjects <- read.table(testSubjectsFile, blank.lines.skip = TRUE)

# Read in the test activities (numerics)
testActivitiesFile <- paste0(datadir, '\\test\\y_test.txt')
testActivities <- read.table(testActivitiesFile, blank.lines.skip = TRUE)

# add activities to the testData table
print("Adding the activity column to the test data")
testData$Activities <- apply(testActivities, 1, function(x) activities[x,2] )

# add the subjects to the testData table
print("Adding the Subjects column to the test data")
testData$Subjects <- testSubjects[[1]]

print("Deleting unused test objects")
remove(testDataFile)
remove(testSubjectsFile)
remove(testSubjects)
remove(testActivitiesFile)
remove(testActivities)

print("Completed processing of the test data")

#~~~~
# Process train files
#~~~~

# Read in the train data set (scientific)
print("Reading in the train data")
trainDataFile <- paste0(datadir, '\\train\\X_train.txt')
trainData <- read.table(trainDataFile, blank.lines.skip = TRUE)

# Apply row names to trainData, features
print("Applying column names to the train data")
colnames(trainData) <- features[[2]]

# Read in the train subjects (numerics)
trainSubjectsFile <- paste0(datadir, '\\train\\subject_train.txt')
trainSubjects <- read.table(trainSubjectsFile, blank.lines.skip = TRUE)

# Read in the train activities (numerics)
trainActivitiesFile <- paste0(datadir, '\\train\\y_train.txt')
trainActivities <- read.table(trainActivitiesFile, blank.lines.skip = TRUE)

# add activities to the trainData table
print("Adding the activity column to the train data")
trainData$Activities <- apply(trainActivities, 1, function(x) activities[x,2] )

# add the subjects to the trainData table
print("Adding the Subjects column to the test data")
trainData$Subjects <- trainSubjects[[1]]

print("Deleting unused train objects")
remove(trainDataFile)
remove(trainSubjectsFile)
remove(trainSubjects)
remove(trainActivitiesFile)
remove(trainActivities)

print("Completed processing of the train data")

print("Deleting unused objects")
remove(activityFile)
remove(activities)
remove(featureFile)
remove(features)

print("Combining the test and training data")
combinedData <- rbind(testData, trainData)

print("Deleting the test and train data object")
remove(testData)
remove(trainData)

print("Subsetting the data")
sdata <- as.data.table(combinedData[,c(grep('mean|std', names(combinedData)), 562,563 )])

print("Deleting combined data object")
remove(combinedData)

# Create a summary dataset where the mean of the means and the mean of the stdev (incorrect) values are grouped by activity and subject
print("Creating summary data object")
sumdata <- sdata[, lapply(.SD,mean), by="Activities,Subjects"]

# Write out the subset data file
#print("Creating subset data file subsetMeanAndStdevsBySubjectAndActivity.csv")
#write.table(sdata, file="subsetMeanAndStdevsBySubjectAndActivity.csv", sep=",", row.name=FALSE)

# Write out the summary data file
#print("Creating subset data file subsetMeanOfMeansAndMeanOfStdevsForSubjectAndActivity.csv")
#write.table(sumdata, file="subsetMeanOfMeansAndMeanOfStdevsForSubjectAndActivity.csv", sep=",", row.name=FALSE)

print("Writing the tidy data file tidy_data.txt")
write.table(sumdata, file="tidy_data.txt", row.name=FALSE)

