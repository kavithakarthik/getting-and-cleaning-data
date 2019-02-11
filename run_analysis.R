run_analysis <- function() {
  fileName <- "UCIdata.zip"
  url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  dir <- "UCI HAR Dataset"
  
  # Download file
  if(!file.exists(fileName)){
    download.file(url,fileName, mode = "wb") 
  }
  
  # Unzip file to `UCI HAR Dataset` in working directory
  if(!file.exists(dir)){
    unzip("UCIdata.zip", files = NULL, exdir=".")
  }
  
  # Load data into data frames without colnames
  X_train <- read.csv("./UCI HAR Dataset/train/X_train.txt", sep = "", header = FALSE)
  X_test <- read.csv("./UCI HAR Dataset/test/X_test.txt", sep = "", header = FALSE)
  features = read.table("./UCI HAR Dataset/features.txt", header = FALSE)
  activity_labels <- read.csv("./UCI HAR Dataset/activity_labels.txt", header = FALSE)
  subject_train <- read.csv("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
  subject_test <- read.csv("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
  Y_train <- read.csv("./UCI HAR Dataset/train/Y_train.txt", sep = "", header = FALSE)
  Y_test <- read.csv("./UCI HAR Dataset/test/Y_test.txt", sep = "", header = FALSE)
  # Set colnames for X_train and X_test
  colnames(X_train) <- features$V2
  colnames(X_test) <- features$V2
  # Merge X_train and X_test into merged
  merged <- rbind(X_train, X_test)
  # From merged feature data frame, select columns with names that contain only mean() and std() 
  meanStd <- merged[, grep("mean\\(\\)|std\\(\\)", colnames(merged))]
  # Merge Y_train and Y_test into activity
  activity <- rbind(Y_train, Y_test)
  # Set colname for activity
  names(activity) <- 'activity'
  # Set descriptive activity names to name the activities in the data set
  activity_group <- factor(activity$activity)
  levels(activity_group) <- activity_labels$V1
  activity$activity <- activity_group
  activity$activity <- as.character(activity$activity)
  activity$activity <- substr(activity$activity, 3, nchar(activity$activity))
  # Merge subject_test and subject_train into subject
  names(subject_test) <- 'subject'
  names(subject_train) <- 'subject'
  subject <- rbind(subject_train, subject_test)
  # Combine meanStd, subject and activity into `data` df
  data <- cbind(meanStd, subject, activity)
  
  # label the data set with descriptive variable names.
  colnames(data) <- gsub("^t", "time", colnames(data))
  colnames(data) <- gsub("^f", "frequency", colnames(data))
  colnames(data) <- gsub("Acc", "Accelerometer", colnames(data))
  colnames(data) <- gsub("Gyro", "Gyroscope", colnames(data))
  colnames(data) <- gsub("Mag", "Magnitude", colnames(data))
  colnames(data) <- gsub("BodyBody", "Body", colnames(data))
  
  # install and load dplyr
  if (!"dplyr" %in% installed.packages()) {
    install.packages("dplyr")
  }
  library(dplyr)
  
  # Group data by subject and activity
  groupedData <- group_by(data, subject, activity)
  # Get the average of each variable for each activity and subject
  tidyData <- summarize_all(groupedData, mean)
  # Write tidyData into tidy_data.csv in the working directory
  write.table(tidyData, "./tidy_data.csv", sep = ",", row.name=FALSE)
}