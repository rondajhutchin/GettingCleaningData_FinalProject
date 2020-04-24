This is the Code Book for the Coursera "Getting and Cleaning Data" project.

Authur:   Ronda Hutchin

Created:  April 24, 2020

Quick Summary of the Project:  The datasets are from a study from the two websites listed below.  The data was collected from the accelerometers from the Samsung Galaxy S smartphone.  For more details on the study and data source, refer to the README.md within this repository. This same repository contains the script that is outlined in this code book.

The data sets downloaded and used in the script described below need to be placed in the work directory with the folders and files named as specified in the quotes. Verify the download from this site  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip uses the exact names specified below and in the script.
1. Within the folder named "test", are three (3) files named "subject_test", "X_test" and "y_test".  They are formatted as text documents.
2. Within the folder named "train", are three (3) files named "subject_train", "X_train" and "y_train".  They are formatted as text documents.
3. At the same folder structure level as the two above "test" and "train" folders are two (2) files named "activity_labels" and "features".  They are formated as text documents.

The "run_analysis.R" script (written in R) executes the five (5) steps specified in the course project guidelines and listed below.  The script contains comments before each section of code that executes the steps listed to make it easier to understand and maintain the code.

The dplyr library is used in the "run_analysis.R" script.

The working directory is set and can be adjusted to the location of where the files are downloaded.

  Step 1.	Merges the training and the test sets to create one data set.
  
  Step 2.	Extracts only the measurements on the mean and standard deviation for each measurement.
  
  Step 3.	Uses descriptive activity names to name the activities in the data set
  
  Step 4.	Appropriately labels the data set with descriptive variable names.
  
  Step 5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity    and each subject.


