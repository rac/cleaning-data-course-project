# Getting and Cleaning Data Code Book

## Description

This dataset contains the mean values of the standard deviation and mean measurements taken from the raw data of the [UCI HAR Dataset](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip).

A description of the study can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Study Design

Using the README.txt found in the UCI HAR Dataset 

## Variables

### Column 1

Subject IDs ranging from 1-30. Obtained from the 'test/subject_test.txt' and the 'train/subject_train.txt'

- subjectId

### Column 2

Description of the activity the subject was performing while the measurement was taken. The activity labels were obtained from the 'activity_labels.txt' and 
transformed into tidy column names by removing the underscore and lowercasing all characters.

- activity

### Columns 3-68

Tidy variable names from the 'features.txt'.

- `tbodyaccelerationmeanx` Contains the mean of: `tBodyAcc-mean()-X`
- `tbodyaccelerationmeany` Contains the mean of: `tBodyAcc-mean()-Y`
- `tbodyaccelerationmeanz` Contains the mean of: `tBodyAcc-mean()-Z`
- `tbodyaccelerationstdx` Contains the mean of: `tBodyAcc-std()-X`
- `tbodyaccelerationstdy` Contains the mean of: `tBodyAcc-std()-Y`
- `tbodyaccelerationstdz` Contains the mean of: `tBodyAcc-std()-Z`
- `tgravityaccelerationmeanx` Contains the mean of: `tGravityAcc-mean()-X`
- `tgravityaccelerationmeany` Contains the mean of: `tGravityAcc-mean()-Y`
- `tgravityaccelerationmeanz` Contains the mean of: `tGravityAcc-mean()-Z`
- `tgravityaccelerationstdx` Contains the mean of: `tGravityAcc-std()-X`
- `tgravityaccelerationstdy` Contains the mean of: `tGravityAcc-std()-Y`
- `tgravityaccelerationstdz` Contains the mean of: `tGravityAcc-std()-Z`
- `tbodyaccelerationjerkmeanx` Contains the mean of: `tBodyAccJerk-mean()-X`
- `tbodyaccelerationjerkmeany` Contains the mean of: `tBodyAccJerk-mean()-Y`
- `tbodyaccelerationjerkmeanz` Contains the mean of: `tBodyAccJerk-mean()-Z`
- `tbodyaccelerationjerkstdx` Contains the mean of: `tBodyAccJerk-std()-X`
- `tbodyaccelerationjerkstdy` Contains the mean of: `tBodyAccJerk-std()-Y`
- `tbodyaccelerationjerkstdz` Contains the mean of: `tBodyAccJerk-std()-Z`
- `tbodygyromeanx` Contains the mean of: `tBodyGyro-mean()-X`
- `tbodygyromeany` Contains the mean of: `tBodyGyro-mean()-Y`
- `tbodygyromeanz` Contains the mean of: `tBodyGyro-mean()-Z`
- `tbodygyrostdx` Contains the mean of: `tBodyGyro-std()-X`
- `tbodygyrostdy` Contains the mean of: `tBodyGyro-std()-Y`
- `tbodygyrostdz` Contains the mean of: `tBodyGyro-std()-Z`
- `tbodygyrojerkmeanx` Contains the mean of: `tBodyGyroJerk-mean()-X`
- `tbodygyrojerkmeany` Contains the mean of: `tBodyGyroJerk-mean()-Y`
- `tbodygyrojerkmeanz` Contains the mean of: `tBodyGyroJerk-mean()-Z`
- `tbodygyrojerkstdx` Contains the mean of: `tBodyGyroJerk-std()-X`
- `tbodygyrojerkstdy` Contains the mean of: `tBodyGyroJerk-std()-Y`
- `tbodygyrojerkstdz` Contains the mean of: `tBodyGyroJerk-std()-Z`
- `tbodyaccelerationmagmean` Contains the mean of: `tBodyAccMag-mean()`
- `tbodyaccelerationmagstd` Contains the mean of: `tBodyAccMag-std()`
- `tgravityaccelerationmagmean` Contains the mean of: `tGravityAccMag-mean()`
- `tgravityaccelerationmagstd` Contains the mean of: `tGravityAccMag-std()`
- `tbodyaccelerationjerkmagmean` Contains the mean of: `tBodyAccJerkMag-mean()`
- `tbodyaccelerationjerkmagstd` Contains the mean of: `tBodyAccJerkMag-std()`
- `tbodygyromagmean` Contains the mean of: `tBodyGyroMag-mean()`
- `tbodygyromagstd` Contains the mean of: `tBodyGyroMag-std()`
- `tbodygyrojerkmagmean` Contains the mean of: `tBodyGyroJerkMag-mean()`
- `tbodygyrojerkmagstd` Contains the mean of: `tBodyGyroJerkMag-std()`
- `fbodyaccelerationmeanx` Contains the mean of: `fBodyAcc-mean()-X`
- `fbodyaccelerationmeany` Contains the mean of: `fBodyAcc-mean()-Y`
- `fbodyaccelerationmeanz` Contains the mean of: `fBodyAcc-mean()-Z`
- `fbodyaccelerationstdx` Contains the mean of: `fBodyAcc-std()-X`
- `fbodyaccelerationstdy` Contains the mean of: `fBodyAcc-std()-Y`
- `fbodyaccelerationstdz` Contains the mean of: `fBodyAcc-std()-Z`
- `fbodyaccelerationjerkmeanx` Contains the mean of: `fBodyAccJerk-mean()-X`
- `fbodyaccelerationjerkmeany` Contains the mean of: `fBodyAccJerk-mean()-Y`
- `fbodyaccelerationjerkmeanz` Contains the mean of: `fBodyAccJerk-mean()-Z`
- `fbodyaccelerationjerkstdx` Contains the mean of: `fBodyAccJerk-std()-X`
- `fbodyaccelerationjerkstdy` Contains the mean of: `fBodyAccJerk-std()-Y`
- `fbodyaccelerationjerkstdz` Contains the mean of: `fBodyAccJerk-std()-Z`
- `fbodygyromeanx` Contains the mean of: `fBodyGyro-mean()-X`
- `fbodygyromeany` Contains the mean of: `fBodyGyro-mean()-Y`
- `fbodygyromeanz` Contains the mean of: `fBodyGyro-mean()-Z`
- `fbodygyrostdx` Contains the mean of: `fBodyGyro-std()-X`
- `fbodygyrostdy` Contains the mean of: `fBodyGyro-std()-Y`
- `fbodygyrostdz` Contains the mean of: `fBodyGyro-std()-Z`
- `fbodyaccelerationmagmean` Contains the mean of: `fBodyAccMag-mean()`
- `fbodyaccelerationmagstd` Contains the mean of: `fBodyAccMag-std()`
- `fbodybodyaccelerationjerkmagmean` Contains the mean of: `fBodyBodyAccJerkMag-mean()`
- `fbodybodyaccelerationjerkmagstd` Contains the mean of: `fBodyBodyAccJerkMag-std()`
- `fbodybodygyromagmean` Contains the mean of: `fBodyBodyGyroMag-mean()`
- `fbodybodygyromagstd` Contains the mean of: `fBodyBodyGyroMag-std()`
- `fbodybodygyrojerkmagmean` Contains the mean of: `fBodyBodyGyroJerkMag-mean()`
- `fbodybodygyrojerkmagstd` Contains the mean of: `fBodyBodyGyroJerkMag-std()`
