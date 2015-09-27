# getdata-032-Course-Project

Welcome to the readme for the online part of my submission.

##Contents:
1. The original wording of the assignment.
2. How my code for run_analysis.R works.
3. Some code for reading and viewing the completed, tidy datasets.
4. What this repo contains.

##The assignment

You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

 You should create one R script called run_analysis.R that does the following. 
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##In this repo:

##How run_analysis.R works

###In order for this code to work in one go, the files "activity_labels.txt", "features.txt", "X_test.txt", "Y_test.txt, "X_train.txt" and "Y_train.txt" must all be in the same working directory. Otherwise if you are reading in the files as the are in the UCI HAR Dataset file, you must run the initial steps of the code in stages and change working directory as you go.

1. The packages plyr and dplyr used in this code are loaded from the library.
2. The files to be used: "activity_labels.txt", "features.txt", "X_test.txt", "Y_test.txt" are read in and assigned.
3. The descriptive variable names in the features.txt file are input to the train and test dataframes, fulfilling step 4 of the assignment. 
4. Next the descriptive activity names in "activity_lables.txt" are merged with the Ytest and Ytrain data and added to their respective X data frames, fulfilling step 3 of the assignment.
5. The subject data is added to the front of the X train and test data frames.
6. Now both X dataframes have all the descriptive names and identifiers attached, they are row-bound together.
7. Subject and Activity columns are renamed.
8. This stage fulfills step 2 of the assignment, extracting only the measurements on the mean and standard deviation for each measurement.
9. Finally the average of each measurement for each activity is taken, which fulfils step 5.

I have also annotated the code itself with the following descriptions of how each step works.

##Reading and Viewing the Tidy Data

Use the following code to read in the tidy data .txt files in this repo and view it in RStudio. This lets you see the dimensions and column names easily:

data <- read.table(file_path, header = TRUE) 
    View(data)
