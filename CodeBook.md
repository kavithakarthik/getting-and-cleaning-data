# CodeBook for the tidy dataset

## Data source

The dataset for this assignment was derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally made avaiable here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Feature Selection

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## Tidy_data variables

The output of run_analysis.R is 'tidy_data.csv'. Following is the explanation of each of the 68 variables in this result data set:

* subject                                   - Integer values between 1 and 30 repersenting subjects who were involved in the test/training
* activity	                                - Activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) performed by subjects wearing a smartphone(Samsung Galaxy S II)
* timeBodyAccelerometer-mean()-X            - Mean of time domain body acceleration signals in X direction
* timeBodyAccelerometer-mean()-Y	        - Mean of time domain body acceleration signals in Y direction
* timeBodyAccelerometer-mean()-Z	        - Mean of time domain body acceleration signals in Z direction
* timeBodyAccelerometer-std()-X	            - Standard deviation of time domain body acceleration signals in X direction
* timeBodyAccelerometer-std()-Y	            - Standard deviation of time domain body acceleration signals in Y direction
* timeBodyAccelerometer-std()-Z	            - Standard deviation of time domain body acceleration signals in Z direction
* timeGravityAccelerometer-mean()-X         - Mean of time domain gravity acceleration signals in X direction
* timeGravityAccelerometer-mean()-Y         - Mean of time domain gravity acceleration signals in Y direction	
* timeGravityAccelerometer-mean()-Z         - Mean of time domain gravity acceleration signals in Z direction	
* timeGravityAccelerometer-std()-X          - Standard deviation of time domain gravity acceleration signals in X direction	
* timeGravityAccelerometer-std()-Y          - Standard deviation of time domain gravity acceleration signals in Y direction		
* timeGravityAccelerometer-std()-Z          - Standard deviation of time domain gravity acceleration signals in Z direction		
* timeBodyAccelerometerJerk-mean()-X        - Mean of time domain body acceleration jerk signals in X direction 	
* timeBodyAccelerometerJerk-mean()-Y        - Mean of time domain body acceleration jerk signals in Y direction 	
* timeBodyAccelerometerJerk-mean()-Z        - Mean of time domain body acceleration jerk signals in Z direction 	
* timeBodyAccelerometerJerk-std()-X         - Standard deviation of time domain body acceleration jerk signals in X direction 	
* timeBodyAccelerometerJerk-std()-Y         - Standard deviation of time domain body acceleration jerk signals in Y direction 		
* timeBodyAccelerometerJerk-std()-Z         - Standard deviation of time domain body acceleration jerk signals in Z direction 	
* timeBodyGyroscope-mean()-X	            - Mean of time domain angular velocity signals in X direction 	
* timeBodyGyroscope-mean()-Y	            - Mean of time domain angular velocity signals in Y direction
* timeBodyGyroscope-mean()-Z	            - Mean of time domain angular velocity signals in Z direction
* timeBodyGyroscope-std()-X	                - Standard deviation of time domain angular velocity signals in X direction
* timeBodyGyroscope-std()-Y	                - Standard deviation of time domain angular velocity signals in Y direction
* timeBodyGyroscope-std()-Z	                - Standard deviation of time domain angular velocity signals in Z direction
* timeBodyGyroscopeJerk-mean()-X	        - Mean of time domain angular velocity jerk signals in X direction 
* timeBodyGyroscopeJerk-mean()-Y	        - Mean of time domain angular velocity jerk signals in Y direction 
* timeBodyGyroscopeJerk-mean()-Z	        - Mean of time domain angular velocity jerk signals in Z direction 
* timeBodyGyroscopeJerk-std()-X	            - Standard deviation of time domain angular velocity jerk signals in X direction 
* timeBodyGyroscopeJerk-std()-Y             - Standard deviation of time domain angular velocity jerk signals in Y direction 
* timeBodyGyroscopeJerk-std()-Z	            - Standard deviation of time domain angular velocity jerk signals in Z direction 
* timeBodyAccelerometerMagnitude-mean()	    - Mean of magnitude of time domain body acceleration signals
* timeBodyAccelerometerMagnitude-std()	    - Standard deviation of magnitude of time domain body acceleration signals
* timeGravityAccelerometerMagnitude-mean()  - Mean of magnitude of time domain gravity acceleration signals 	
* timeGravityAccelerometerMagnitude-std()	- Standard deviation of magnitude of time domain gravity acceleration signals
* timeBodyAccelerometerJerkMagnitude-mean() - Mean of magnitude of time domain body acceleration jerk signals	
* timeBodyAccelerometerJerkMagnitude-std()  - Standard deviation of magnitude of time domain body acceleration jerk signals	
* timeBodyGyroscopeMagnitude-mean()	        - Mean of magnitude of time domain angular velocity signals
* timeBodyGyroscopeMagnitude-std()	        - Standard deviation of magnitude of time domain angular velocity signals
* timeBodyGyroscopeJerkMagnitude-mean()	    - Mean of magnitude of time domain angular velocity jerk signals
* timeBodyGyroscopeJerkMagnitude-std()	    - Standard deviation of magnitude of time domain angular velocity jerk signals
* frequencyBodyAccelerometer-mean()-X	    - Mean of frequency domain body acceleration signals in X direction
* frequencyBodyAccelerometer-mean()-Y	    - Mean of frequency domain body acceleration signals in Y direction
* frequencyBodyAccelerometer-mean()-Z	    - Mean of frequency domain body acceleration signals in Z direction
* frequencyBodyAccelerometer-std()-X	    - Standard deviation of frequency domain body acceleration signals in X direction
* frequencyBodyAccelerometer-std()-Y	    - Standard deviation of frequency domain body acceleration signals in Y direction
* frequencyBodyAccelerometer-std()-Z	    - Standard deviation of frequency domain body acceleration signals in Z direction
* frequencyBodyAccelerometerJerk-mean()-X	- Mean of frequency domain body acceleration jerk signals in X direction 	
* frequencyBodyAccelerometerJerk-mean()-Y	- Mean of frequency domain body acceleration jerk signals in Y direction 
* frequencyBodyAccelerometerJerk-mean()-Z	- Mean of frequency domain body acceleration jerk signals in Z direction 
* frequencyBodyAccelerometerJerk-std()-X	- Standard deviation of frequency domain body acceleration jerk signals in X direction
* frequencyBodyAccelerometerJerk-std()-Y	- Standard deviation of frequency domain body acceleration jerk signals in Y direction
* frequencyBodyAccelerometerJerk-std()-Z	- Standard deviation of frequency domain body acceleration jerk signals in Z direction
* frequencyBodyGyroscope-mean()-X	        - Mean of frequency domain angular velocity signals in X direction 	
* frequencyBodyGyroscope-mean()-Y	        - Mean of frequency domain angular velocity signals in Y direction 	
* frequencyBodyGyroscope-mean()-Z	        - Mean of frequency domain angular velocity signals in Z direction 	
* frequencyBodyGyroscope-std()-X	        - Standard deviation of frequency domain angular velocity signals in X direction
* frequencyBodyGyroscope-std()-Y	        - Standard deviation of frequency domain angular velocity signals in Y direction
* frequencyBodyGyroscope-std()-Z	        - Standard deviation of frequency domain angular velocity signals in Z direction
* frequencyBodyAccelerometerMagnitude-mean()	- Mean of magnitude of frequency domain body acceleration signals
* frequencyBodyAccelerometerMagnitude-std()	    - Standard deviation of magnitude of frequency domain body acceleration signals
* frequencyBodyAccelerometerJerkMagnitude-mean()- Mean of magnitude of frequency domain body acceleration jerk signals	
* frequencyBodyAccelerometerJerkMagnitude-std()	- Standard deviation of magnitude of frequency domain body acceleration jerk signals
* frequencyBodyGyroscopeMagnitude-mean()	    - Mean of magnitude of frequency domain angular velocity signals
* frequencyBodyGyroscopeMagnitude-std()	        - Standard deviation of magnitude of frequency domain angular velocity signals
* frequencyBodyGyroscopeJerkMagnitude-mean()	- Mean of magnitude of frequency domain angular velocity jerk signals
* frequencyBodyGyroscopeJerkMagnitude-std()     - Standard deviation of magnitude of frequency domain angular velocity jerk signals

## Tidy_data observations:

Each observation in this file is the mean of each of the variables for a subject and activity type. There is a total of 180 observations which is 30 subjects times 6 activity types.

## Transformations done on the original dataset to obtain tidy_data:

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

