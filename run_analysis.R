#Loads packages plyr and dplyr.
library(plyr)
library(dplyr)

#Set the working directory to one where all the files needed are in the same place or run the code in this step in stages,
#changing the working directory as needed to ensure all files are read in properly.
#reads in the files needed
activityLabels <- read.table("activity_labels.txt")
features <- read.table("features.txt")
Xtest <- read.table("X_test.txt", stringsAsFactors = F)
Ytest <- read.table("Y_test.txt", stringsAsFactors = F)
Xtrain <- read.table("X_train.txt", stringsAsFactors = F) 
Ytrain <- read.table("Y_train.txt", stringsAsFactors = F)
subjectTest <- read.table("subject_test.txt", stringsAsFactors = F)
subjectTrain <- read.table("subject_train.txt", stringsAsFactors = F)

#changes the names of the training and test data sets to the descriptive variable names in the features.txt file)
names(Xtrain) <- features$V2
names(Xtest) <- features$V2

#Merges the Y files with activityLabels to get a dataframe of activities corresponding with their incidences.
activTest <- merge(Ytest, activityLabels, sort = F)
activTrain <- merge(activityLabels, Ytrain, sort = F)

#binds the descriptive activity names columns with the train and test dataframes
Xtrainact <- cbind(activTrain[,2], Xtrain)
Xtestact <- cbind(activTest[,2], Xtest)

#binds the subject identifiers to the front of the train and test datasets
Xtrainactsub <- cbind(subjectTrain, Xtrainact)
Xtestactsub <- cbind(subjectTest, Xtestact)

#Combines the two train and test datasets into one
Xdata <- rbind(Xtestactsub, Xtrainactsub)

#renames the subject identifier column and the activity column
names(Xdata)[1] <- "Subject"
names(Xdata)[2] <- "Activity"

#Pulls out any columns which include the strings "mean" or "std". This is the data for step 4 and is saved.
Wdata <- select(Xdata, Activity, contains("mean", ignore.case = T), contains("std", ignore.case = T))

#Here the means for each activity are taken, giving the final saved dataset for step 5.
Zdata <- tbl_df(Wdata) %>% group_by(Activity) %>% summarise_each(c("mean"))
