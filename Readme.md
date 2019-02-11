# Getting And Cleaning Data

## Contents

This repo contains:

* run_analysis.R - R scrip to perform analysis
* CodeBook.md - document that describes the variables, data, and transformations
* tidy_data.csv - the resulting tidy data set created by executing run_analysis.R

## About run_analysis.R

If the data files for this project is not in your working directory, the script will automatically download it to your working directory, then will unzip it.

For creating tidy data, this script uses dplyr package, if it is not installed in your system, the script will automaticaly install.

## About CodeBook

The CodeBook.md file explains the original data set and the resulting data and variables.

## About tidy_data.csv

Each observation in this file is the mean of each of the variables(explained in CodeBook.md) for a subject and activity type. There is a total of 180 observations which is 30 subjects times 6 activity types.

## How run_analysis.R works:

* Download file if not present in working directory.
* Unzip file to **UCI HAR Dataset** in working directory.
* Load data present as txt files into their respective data frames without column labels.
* Label **X_train** and **X_test** data frames.
* Merge X_train and X_test into **merged** df.
* From **merged** feature data frame, select columns with names that contain only mean() and std() and create a new data frame **meanStd**. 
* Merge **Y_train** and **Y_test** into **activity**.
* Set label for activity.
* Set descriptive activity names as values to the activity df.
* Merge **subject_test** and **subject_train** into **subject** and set label on subject df.
* Combine **meanStd**, **subject** and **activity** into **data** df.
* Label **data** set with descriptive variable names.
* install and load dplyr.
* Group **data** by subject and activity.
* Get the average of each variable for each activity and subject and create **tideData**.
* Write **tidyData** into **tidy_data.csv** in the working directory.
