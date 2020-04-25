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

The data sets are read into a variables named the same as the data set and read-in the columns needed.
Read the train data sets into variables named "x_train", "y_train", "subject_train"
Read the test data sets into variables named "x_test", "y_test", "subject_test"
Read the other two (2) data sets into variables named "features" and "activity_labels"

  Step 1.	Merges the training and the test sets to create one data set.
  
    Using rbind, combine the training, test and subject data sets into 3 variables - "x_combo", "y_combo" and "subject_combo".
    Using rbind, combine again into a variable named "ALLData".
     
  Step 2.	Extracts only the measurements on the mean and standard deviation for each measurement.
  
    Using select to extract the "mean" and "std" measurements from the "ALLData" set and assign it to the "MyTidyData" variable.
    
  Step 3.	Uses descriptive activity names to name the activities in the data set
  
   Using the "activity_labels" data set and "MyTidyData" name the activity data.
  
  Step 4.	Appropriately labels the data set with descriptive variable names.
    
    Using gsub, rename some of the data columns with a more descriptive variable name.
  
  Step 5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity    and each subject.
    Using group_by and ummarise_all, create tidy data set with the average of each variable, activity and subject as the variable "MyTidyDataGrouped".  Export this as the text document named "TidyDate.txt" which is in this repository.
  
 Data Elements:
 subject  
 activity  
 TimeBodyAccel.mean...X  
 TimeBodyAccel.mean...Y  
 TimeBodyAccel.mean...Z  
 TimeGravityAccel.mean...X  
 TimeGravityAccel.mean...Y  
 TimeGravityAccel.mean...Z  
 TimeBodyAccelJerk.mean...X  
 TimeBodyAccelJerk.mean...Y  
 TimeBodyAccelJerk.mean...Z  
 TimeBodyGyro.mean...X  
 TimeBodyGyro.mean...Y  
 TimeBodyGyro.mean...Z  
 TimeBodyGyroJerk.mean...X  
 TimeBodyGyroJerk.mean...Y  
 TimeBodyGyroJerk.mean...Z  
 TimeBodyAccelMag.mean..  
 TimeGravityAccelMag.mean..  
 TimeBodyAccelJerkMag.mean..  
 TimeBodyGyroMag.mean..  
 TimeBodyGyroJerkMag.mean..  
 FrequencyBodyAccel.mean...X  
 FrequencyBodyAccel.mean...Y  
 FrequencyBodyAccel.mean...Z  
 FrequencyBodyAccel.meanFreq...X  
 FrequencyBodyAccel.meanFreq...Y  
 FrequencyBodyAccel.meanFreq...Z  
 FrequencyBodyAccelJerk.mean...X  
 FrequencyBodyAccelJerk.mean...Y  
 FrequencyBodyAccelJerk.mean...Z  
 FrequencyBodyAccelJerk.meanFreq...X  
 FrequencyBodyAccelJerk.meanFreq...Y  
 FrequencyBodyAccelJerk.meanFreq...Z  
 FrequencyBodyGyro.mean...X  
 FrequencyBodyGyro.mean...Y  
 FrequencyBodyGyro.mean...Z  
 FrequencyBodyGyro.meanFreq...X  
 FrequencyBodyGyro.meanFreq...Y  
 FrequencyBodyGyro.meanFreq...Z  
 FrequencyBodyAccelMag.mean..  
 FrequencyBodyAccelMag.meanFreq..  
 FrequencyBodyAccelJerkMag.mean..  
 FrequencyBodyAccelJerkMag.meanFreq..  
 FrequencyBodyGyroMag.mean..  
 FrequencyBodyGyroMag.meanFreq..  
 FrequencyBodyGyroJerkMag.mean..  
 FrequencyBodyGyroJerkMag.meanFreq..  
 angle.tBodyAccelMean.gravity.  
 angle.tBodyAccelJerkMean..gravityMean.  
 angle.tBodyGyroMean.gravityMean.  
 angle.tBodyGyroJerkMean.gravityMean.  
 angle.X.gravityMean.  
 angle.Y.gravityMean.  
 angle.Z.gravityMean.  
 TimeBodyAccel.std...X  
 TimeBodyAccel.std...Y  
 TimeBodyAccel.std...Z  
 TimeGravityAccel.std...X  
 TimeGravityAccel.std...Y  
 TimeGravityAccel.std...Z  
 TimeBodyAccelJerk.std...X  
 TimeBodyAccelJerk.std...Y  
 TimeBodyAccelJerk.std...Z  
 TimeBodyGyro.std...X  
 TimeBodyGyro.std...Y  
 TimeBodyGyro.std...Z  
 TimeBodyGyroJerk.std...X  
 TimeBodyGyroJerk.std...Y  
 TimeBodyGyroJerk.std...Z  
 TimeBodyAccelMag.std..  
 TimeGravityAccelMag.std..  
 TimeBodyAccelJerkMag.std..  
 TimeBodyGyroMag.std..  
 TimeBodyGyroJerkMag.std..  
 FrequencyBodyAccel.std...X  
 FrequencyBodyAccel.std...Y  
 FrequencyBodyAccel.std...Z  
 FrequencyBodyAccelJerk.std...X  
 FrequencyBodyAccelJerk.std...Y  
 FrequencyBodyAccelJerk.std...Z  
 FrequencyBodyGyro.std...X  
 FrequencyBodyGyro.std...Y  
 FrequencyBodyGyro.std...Z  
 FrequencyBodyAccelMag.std..  
 FrequencyBodyAccelJerkMag.std..  
 FrequencyBodyGyroMag.std..  
 FrequencyBodyGyroJerkMag.std..
 
 more sample....
 
1 "LAYING" 0.22159824394 
1 "SITTING" 0.261237565425532 
1 "STANDING" 0.278917629056604 
1 "WALKING" 0.277330758736842 
1 "WALKING_DOWNSTAIRS" 0.289188320408163 

1 "WALKING_UPSTAIRS" 0.255461689622641 

2 "LAYING" 0.281373403958333 

2 "SITTING" 0.27708735173913 

2 "STANDING" 0.277911472222222 

2 "WALKING" 0.276426586440678 

2 "WALKING_DOWNSTAIRS" 0.27761534806383 

2 "WALKING_UPSTAIRS" 0.247164790395833 

3 "LAYING" 0.275516852741935 

3 "SITTING" 0.257197599134615 

3 "STANDING" 0.280046513278689 

3 "WALKING" 0.275567462068966 

3 "WALKING_DOWNSTAIRS" 0.292423484693878 

3 "WALKING_UPSTAIRS" 

4 "LAYING" 0.263559214981481 

4 "SITTING" 0.27153827992 

4 "STANDING" 0.280499745892857 

4 "WALKING" 0.278582015166667 

4 "WALKING_DOWNSTAIRS" 0.279965329555556 

4 "WALKING_UPSTAIRS" 0.270876696730769 


 
  
  
  
    

