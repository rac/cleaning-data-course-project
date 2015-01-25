## Cleaning Data Project Assignment

## Author James Maloney

## This script is broken down into functions that perform independent tasks. The first function is called on line 113

#' downloadData downloads the UCI HAR Dataset if missing. The dirName argument is the directory inside
#'
#' @param dirName a string. Path to the UCI HAR Dataset inside of your working directory.
#'
#' @return bool. FALSE if the data exists TRUE if the data was downloaded
downloadData <- function(dirName) {
	# quick check to see if we need to download the data set
	if (file.exists(paste(dirName, "/README.txt", sep="")) == TRUE) {
		return(FALSE)
	}

	print("Missing dataset. Downloading now...")

	zipFile <- paste(dirName, ".zip", sep="")

	# dataset location
	url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

	download.file(url, zipFile, method="curl")
	unzip(zipFile)
	return(TRUE)
}

#' buildTidyDataSet combines the test and train raw data into a tidy dataset.
#'
#' @param dirName a string. Path to the UCI HAR Dataset inside of your working directory.
#'
#' @return data.frame containing both test and train tidy data from the UCI HAR Dataset
buildTidyDataSet <- function(dirName) {
	# get names from the features text
	rowNames <- read.table(cc(dirName, "/features.txt"))[["V2"]]
	# find mean and std rows
	stdMeanRows <- rowNames[grep("-std\\(\\)|-mean\\(\\)", rowNames)]

	# tidy up row names by lowercasing all letters, replacing "acc" to "acceleration" to make
	# the names more descriptive and removing non alpha characters
	tidy <- "-|\\(|\\)|_"	
	rowNames <- gsub("acc", "acceleration", tolower(gsub(tidy, "",rowNames)))
	stdMeanRows <- gsub("acc", "acceleration", tolower(gsub(tidy, "",stdMeanRows)))

	# get a vector of tidy activity labels
	activityLabels <- tolower(gsub(tidy, "", read.table(cc(dirName, "/activity_labels.txt"))[["V2"]]))

	# create test and train frames
	testFrame <- createFrame(dirName, "test", activityLabels, rowNames, stdMeanRows)
	trainFrame <- createFrame(dirName, "train", activityLabels, rowNames, stdMeanRows)

	# combine test and train
	rbind(testFrame, trainFrame)
}

#' buildMeanDataSet creates a dataset of the average of each variable for each activity and each subject.
#'
#' @param tidyData a data.frame that contains a tidy dataset
#'
#' @return data.frame
buildMeanDataSet <- function(tidyData) {
	library(reshape2) # found using ??melt in RStudio

	# melt the data using the subjectId and activity columns
	# NOTE: described in https://class.coursera.org/getdata-010/lecture/37
	meltedData <- melt(tidyData, id=c("subjectId", "activity"))

	# cast back using the mean function
	# NOTE: variable is the default in melt
	dcast(meltedData, subjectId + activity ~ variable, mean)
}

# cc is a helper function that concatenates text with no spaces
cc <- function(...) {
	paste(..., sep="")
}

#' createFrame creates a data frame containing using the test or train data.
#'
#' @param dirName a string. Directory inside of your working directory that contains the UCI HAR Dataset
#' @param dataType a string that should be "test" or "train"
#' @param activityLabels a vector of strings used to apply labels to the activity ids.
#' @param rowNames a vector of strings that contain all of the tidy feature column headers.
#' @param stdMeanRows a vector of strings that contain only the std() and mean() feature column headers.
#'
#' @return data.frame
createFrame <- function(dirName, dataType, activityLabels, rowNames, stdMeanRows) {
	dir <- cc(dirName, "/", dataType)

	# get a vector of the subjects
	subjects <- read.table(cc(dir, "/subject_", dataType, ".txt"))[["V1"]]
	# apply activity labels to the activity ids
	activites <- sapply(read.table(cc(dir, "/y_", dataType, ".txt"))[["V1"]], function(x) {
		activityLabels[x];
	})

	# read raw data in with rowNames
	data <- read.table(cc(dir, "/X_", dataType, ".txt"), col.names=rowNames)

	# filter out everything but std, and mean columns
	data <- data[stdMeanRows]

	# create data frame
	data.frame(subjectId=subjects, activity=activites, data)
}

# name of the directory containing dataset
dirName <- "UCI HAR Dataset"

# download the dataset if we need to
downloadData(dirName)

# combines test and train data
tidyData <- buildTidyDataSet(dirName)

# average of each variable for each activity and each subject.
meanDataSet <- buildMeanDataSet(tidyData)

# tidy data with no row names used to upload to Coursera.
write.table(meanDataSet, file="tidyDataset.txt", row.names=FALSE)

# write csv file with row names for easy viewing on Github
write.csv(meanDataSet, file="tidyDataset.csv", row.names=FALSE)
