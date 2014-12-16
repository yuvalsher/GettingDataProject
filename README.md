README file for Getting And Cleaning Data course project
==========================================================

This file describes the steps made to create the clean dataset file from the 
input data, as implemented in the script run_analysis.R. Further details are 
also in comments in the script itself.

The algorithm used supports new measurments and activity types to be added 
in the future, in that they are not hardcoded into the script.
  
R Libraries used: dplyer  
Note: This script was written on Windows. For other OSs, you may need to change the paths 
used when loading data files, and replace "\\" with "/".
  
### 1. Preparations: Download the data files, and load into R.  
1.1  Download the dataset ZIP file from:  
1.2 Unzip the text data files to a subdirectory "UCI HAR Dataset" of the current working directory.  
1.3 Load the data files from the test directory: There are 3 files (X, Y and subject) 
for each dataset (test and train)  

### 2. Merge all the data into a single dataset.  
2.1 Use subject as the first column, Y (the activity labels) as the second column, followed by all the data columns in X. Do this for both the test and train datasets using cbind().  
2.2 Combine the test and train data into a single data table using rbind().  

### 3. Appropriately label the data set with descriptive variable names  
3.1 Load the features.txt file for the column names, and column numbers.  
3.2 Add "subject"" and "activity" as the first two columns.
3.2 Use setnames() to set the column names to the dataset.

### 4. Extract only the mean and standard deviation measurments  
4.1 Use select() to filter only the column names that have "mean()" or "std()" in them.
plus the first two columns, of course.  
  
### 5. Use descriptive activity names to name the activities in the data set  
5.1 Load the activity_labels.txt file for the activity names, and activity numbers.  
5.2 Now use mutate() to replace the activity numbers in the dataset with the corresponding activity names.  
  
### 6. Compute averages, Group by subject and activity  
6.1 Use group_by to group data by subject and activity.  
6.2 Use summarise_each to apply mean() to each group, for each column.  
  
### 7. Final step: write out the data to the file clean_data.txt.  

