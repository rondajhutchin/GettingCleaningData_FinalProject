# GettingCleaningData_FinalProject
The Getting and Cleaning Data in R final project 
Getting and Cleaning Data Course Project

This repository has a ReadMe, CodeBook, and code (R script called run_analysis.R) for the "Getting and Cleaning Data" final Project.

  First, download and unzip the data file into your R working directory.  
  Second, download the R source code into your R working directory.  
  Finally, execute R source code to generate tidy data file (TidyFile.txt).

The datasets are from a study from the two websites listed below.  The data was collected from the accelerometers from the Samsung Galaxy S smartphone. A full description of the study is available at this site:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This site below is the source of the data files for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The "run_analysis.R" script does the following per the instuctions below:
Create one R script called run_analysis.R that does the following.
1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for each measurement.
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive variable names.
5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
The dplyr library is used in the R Script, and the script has comments to explain each of the 5 steps as they are scripted.

