# Getting And Cleaning Data

## Contents

This repo contains:

* run_analysis.R - R scrip to perform analysis
* CodeBook.md - document that describes the variables, data, and transformations
* tidy_data.csv - the resulting tidy data set created by executing run_analysis.R

## About run_analysis.R

If the data files for this project is not in your working directory, the script will automatically donwnload it to your working directory, then will unzip it.

For creating tidy data, this script uses dplyr package, if it is not installed in your system, the script will automaticaly install.

## About CodeBook

The CodeBook.md file explains the transformations performed and the resulting data and variables.

## About tidy_data.csv

Each observation in this file is the mean of each of the variables(explained in CodeBook.md) for a subject and activity type. There is a total of 180 observations which is 30 subjects times 6 activity types.