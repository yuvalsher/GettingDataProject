# Preparations: Download the data files, and load into R.
##########################################################
library(dplyr)

# Download the dataset
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="Dataset.zip",method="curl")
# Unzip the text data files
unzip("Dataset.zip")

# Load the data files from the test directory
# Note: This script was written on Windows. For other OSs, you may need to change the paths 
# used when loading data files, and replace "\\" with "/".
subject_test <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
X_test <- read.table("UCI HAR Dataset\\test\\X_test.txt")
Y_test <- read.table("UCI HAR Dataset\\test\\Y_test.txt")

# Load the data files from the test directory
subject_train <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
X_train <- read.table("UCI HAR Dataset\\train\\X_train.txt")
Y_train <- read.table("UCI HAR Dataset\\train\\Y_train.txt")

# Step 1: Merge all the data into a single dataset.
####################################################

# Combine the test data to a single data table
test_full <- cbind(subject_test, Y_test, X_test);

# Combine the test data to a single data table
train_full <- cbind(subject_train, Y_train, X_train);

# Combine the test and train data into a single data table
full_data <- tbl_dt(rbind(train_full, test_full))

# Step 4: Appropriately label the data set with descriptive variable names
###################################################################

# Use the features.txt file for the column names, and column numbers.
features <- read.table("UCI HAR Dataset\\features.txt", sep=" ", stringsAsFactors=FALSE)
col_names <- c("subject", "activity", features$V2)
full_data <- setNames(full_data, col_names)

# Step 2: Extract only the mean and standard deviation measurments
###################################################################
# Filter only the column names that have "mean()" or "std()" in them.
needed_data <- select(full_data, subject, activity, contains("mean()"), contains("std()") )

# Step 3. Use descriptive activity names to name the activities in the data set
###################################################################

# Use the activity_labels.txt file for the activity names, and activity numbers.
activity_labels <- read.table("UCI HAR Dataset\\activity_labels.txt", sep=" ")
activity_labels <- setNames(activity_labels, c("act_number", "act_name"))

# Now replace the activity numbers with the corresponding activity names.
needed_data <- mutate(needed_data, activity=activity_labels[activity, ]$act_name)

# Step 5: Compute averages, Group by subject and activity
###################################################################

# Use group_by to group data by subject and activity.
# Use summarise_each to apply mean() to each group, for each column.
grouped_data <- needed_data %>%
    group_by(subject, activity) %>%
    summarise_each(funs(mean))

# Final step: write out the data to a file.
write.table(grouped_data, "clean_data.txt", row.name = FALSE)
