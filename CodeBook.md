---
title: "getdata-032 Course Project Code Book"
output: html_document
---

This codebook gives details regarding the clean dataset submitted on the Coursera Getting and Cleaning Data, getdata-032, Week 3 course project.

Using the UCI HAR dataset by the following creators:
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The dataset has the 6 observations for 87 variables, these are the variables:

[1] "Activity"                             "tBodyAcc-mean()-X"                    "tBodyAcc-mean()-Y"                   
 [4] "tBodyAcc-mean()-Z"                    "tGravityAcc-mean()-X"                 "tGravityAcc-mean()-Y"                
 [7] "tGravityAcc-mean()-Z"                 "tBodyAccJerk-mean()-X"                "tBodyAccJerk-mean()-Y"               
[10] "tBodyAccJerk-mean()-Z"                "tBodyGyro-mean()-X"                   "tBodyGyro-mean()-Y"                  
[13] "tBodyGyro-mean()-Z"                   "tBodyGyroJerk-mean()-X"               "tBodyGyroJerk-mean()-Y"              
[16] "tBodyGyroJerk-mean()-Z"               "tBodyAccMag-mean()"                   "tGravityAccMag-mean()"               
[19] "tBodyAccJerkMag-mean()"               "tBodyGyroMag-mean()"                  "tBodyGyroJerkMag-mean()"             
[22] "fBodyAcc-mean()-X"                    "fBodyAcc-mean()-Y"                    "fBodyAcc-mean()-Z"                   
[25] "fBodyAcc-meanFreq()-X"                "fBodyAcc-meanFreq()-Y"                "fBodyAcc-meanFreq()-Z"               
[28] "fBodyAccJerk-mean()-X"                "fBodyAccJerk-mean()-Y"                "fBodyAccJerk-mean()-Z"               
[31] "fBodyAccJerk-meanFreq()-X"            "fBodyAccJerk-meanFreq()-Y"            "fBodyAccJerk-meanFreq()-Z"           
[34] "fBodyGyro-mean()-X"                   "fBodyGyro-mean()-Y"                   "fBodyGyro-mean()-Z"                  
[37] "fBodyGyro-meanFreq()-X"               "fBodyGyro-meanFreq()-Y"               "fBodyGyro-meanFreq()-Z"              
[40] "fBodyAccMag-mean()"                   "fBodyAccMag-meanFreq()"               "fBodyBodyAccJerkMag-mean()"          
[43] "fBodyBodyAccJerkMag-meanFreq()"       "fBodyBodyGyroMag-mean()"              "fBodyBodyGyroMag-meanFreq()"         
[46] "fBodyBodyGyroJerkMag-mean()"          "fBodyBodyGyroJerkMag-meanFreq()"      "angle(tBodyAccMean,gravity)"         
[49] "angle(tBodyAccJerkMean),gravityMean)" "angle(tBodyGyroMean,gravityMean)"     "angle(tBodyGyroJerkMean,gravityMean)"
[52] "angle(X,gravityMean)"                 "angle(Y,gravityMean)"                 "angle(Z,gravityMean)"                
[55] "tBodyAcc-std()-X"                     "tBodyAcc-std()-Y"                     "tBodyAcc-std()-Z"                    
[58] "tGravityAcc-std()-X"                  "tGravityAcc-std()-Y"                  "tGravityAcc-std()-Z"                 
[61] "tBodyAccJerk-std()-X"                 "tBodyAccJerk-std()-Y"                 "tBodyAccJerk-std()-Z"                
[64] "tBodyGyro-std()-X"                    "tBodyGyro-std()-Y"                    "tBodyGyro-std()-Z"                   
[67] "tBodyGyroJerk-std()-X"                "tBodyGyroJerk-std()-Y"                "tBodyGyroJerk-std()-Z"               
[70] "tBodyAccMag-std()"                    "tGravityAccMag-std()"                 "tBodyAccJerkMag-std()"               
[73] "tBodyGyroMag-std()"                   "tBodyGyroJerkMag-std()"               "fBodyAcc-std()-X"                    
[76] "fBodyAcc-std()-Y"                     "fBodyAcc-std()-Z"                     "fBodyAccJerk-std()-X"                
[79] "fBodyAccJerk-std()-Y"                 "fBodyAccJerk-std()-Z"                 "fBodyGyro-std()-X"                   
[82] "fBodyGyro-std()-Y"                    "fBodyGyro-std()-Z"                    "fBodyAccMag-std()"                   
[85] "fBodyBodyAccJerkMag-std()"            "fBodyBodyGyroMag-std()"               "fBodyBodyGyroJerkMag-std()"  

Only the variables for mean and standard deviation have been extracted from the original dataset.

The Activity variable has 6 levels:

1. LAYING
2. SITTING
3. STANDING
4. WALKING
5. WALKING_DOWNSTAIRS
6. WALKING_UPSTAIRS

Below is the information regarding the original dataset:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

License:
========
This dataset was produced from data provided at the Getting and Cleaning Data course by John Hopkins Bloomberg School of Public Health, was downloaded from the following link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

and acknowledges the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
