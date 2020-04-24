## This code executes the five step instructions listed below:
## Step 1: Merges the training and the test sets to create one data set.
## Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.
## Step 3: Uses descriptive activity names to name the activities in the data set
## Step 4: Appropriately labels the data set with descriptive variable names.
## Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
## The data source is from the Human Activity Recognition Using Smartphones, and the data is from
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Load libary for dplyr
library(dplyr)

## set working directory to the location of the downloaded data files
setwd("C:/Users/ronda/Documents/RWorkingFiles/UCI HAR Dataset")

> library(dplyr)


## use read.table to read and load the data in the train "training set" file
x_train   <- read.table("./train/X_train.txt", col.names = features$functions)
y_train   <- read.table("./train/y_train.txt", col.names = "code")
subject_train <- read.table("./train/subject_train.txt", col.names = "subject")


## use read.table to read and load the data in the test file
x_test   <- read.table("./test/X_test.txt", col.names = features$functions)
y_test   <- read.table("./test/y_test.txt", col.names = "code") 
subject_test <- read.table("./test/subject_test.txt", col.names = "subject")


## use read.table to read and load the data in the features file
features <- read.table("./features.txt", col.names = c("n","functions"))

## use read.table to read and load the data in the activity labels file
activity_labels <- read.table("./activity_labels.txt", col.names = c("code", "activity"))

## Step 1: merge the data sets
x_combo <- rbind(x_train, x_test)
y_combo <- rbind(y_train, y_test)
subject_combo <- rbind(subject_train, subject_test)
ALLData <- cbind(subject_combo, y_combo, x_combo)

## Step 2: only get the mean and standard deviation
MyTidyData <- ALLData %>% select(subject, code, contains("mean"), contains("std"))


## Step 3: use descriptive activity names to name the activities in the data set
MyTidyData$code <- activity_labels[MyTidyData$code, 2]
names(MyTidyData)[2] = "activity"

## Step 4: label the data set with descriptive variable names
##         fixing those that need a better description
names(MyTidyData)<-gsub("Acc", "Accel", names(MyTidyData))
names(MyTidyData)<-gsub("BodyBody", "Body", names(MyTidyData))
names(MyTidyData)<-gsub("^t", "Time", names(MyTidyData))
names(MyTidyData)<-gsub("^f", "Frequency", names(MyTidyData))
names(MyTidyData)<-gsub("-freq()", "frequency", names(MyTidyData), ignore.case = TRUE)

##Step 5: Using the data set in step 4, creates a second tidy data set with the average of each variable, activity and subject
MyTidyDataGrouped <- MyTidyData %>% group_by(subject, activity) %>% summarise_all(funs(mean))
write.table(MyTidyDataGrouped, "TidyData.txt", row.name=FALSE, col.names = TRUE)







