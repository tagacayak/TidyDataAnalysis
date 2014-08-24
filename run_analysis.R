## assign the URL to a variable
dataset.url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

## download the .zip file from the website
download.file(dataset.url, "smartphonedata.zip")

## unzip the file
unzip("smartphonedata.zip", exdir="smartPhoneData")

## read in the text files & assign to variables
subjectTrainRawData <- read.table("smartPhoneData/UCI HAR Dataset/train/subject_train.txt")
xTrainRawData <- read.table("smartPhoneData/UCI HAR Dataset/train/x_train.txt")
yTrainRawData <- read.table("smartPhoneData/UCI HAR Dataset/train/y_train.txt")

subjectTestRawData <- read.table("smartPhoneData/UCI HAR Dataset/test/subject_test.txt")
xTestRawData <- read.table("smartPhoneData/UCI HAR Dataset/test/x_test.txt")
yTestRawData <- read.table("smartPhoneData/UCI HAR Dataset/test/y_test.txt")

## check to make sure each file has 7352 obs
## subjectTrainRawData and yTrainRawData should each have 1 variable (columns)
## xTrainRawData should have 561 variables (columns)

nrow(subjectTrainRawData)
nrow(xTrainRawData)
nrow(yTrainRawData)

ncol(subjectTrainRawData)
ncol(yTrainRawData)
ncol(xTrainRawData)

## check to make sure each file has 2947 obs
## subjectTestRawData and yTestRawData should each have 1 variable (columns)
## xTestRawData should have 561 variables (columns)

nrow(subjectTestRawData)
nrow(xTestRawData)
nrow(yTestRawData)

ncol(subjectTestRawData)
ncol(yTestRawData)
ncol(xTestRawData)

## Read in the "features.txt" file to grab the variable names 
## in order to add them to the xTestRawData and yTestRawData files
features <- read.table("smartPhoneData/UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)

## Turn this into a vector in order to add as column names to the xTrainRawData & yTrainRawData datasets
featuresNames <- as.vector(features$V2)

## Name the variables in each of the datasets
names(subjectTrainRawData) <- "subjectID"
names(subjectTestRawData)  <- "subjectID"

names(yTrainRawData) <- "activityLabel"
names(yTestRawData)  <- "activityLabel"

names(xTrainRawData) <- featuresNames
names(xTestRawData)  <- featuresNames


## Merge the training and test datasets to create two datasets, 
## one for the training data and one for the testing data
trainRawData <- cbind(subjectTrainRawData, yTrainRawData, xTrainRawData)
testRawData  <- cbind(subjectTestRawData,  yTestRawData,  xTestRawData)

## trainRawData should have 7352 obs and 563 variables
## testRawData  should have 2947 obs and 563 variables

## Add a column to each dataset indicating if it's training or testing data
## This was not needed for the assignment, but I thought it might be useful anyway
trainRawData["data.source"] <- "train"
testRawData["data.source"]  <- "test"

## each file should now have 564 variables

## Now merge the train and test datasets together with rbind()
allRawData <- rbind(trainRawData, testRawData)

## allRawData should have 10299 obs and 564 variables

## change $activityLabel class from integer to factor vector in order to change the value
## of this variable
allRawData$activityLabel <- factor(allRawData$activityLabel)

## Create a vector of Activity Label levels that are meaningful names and correspond to the
## activities described in activity_labels.txt
activityLabelLevels <- c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", 
                         "Standing", "Laying")

## change the levels for $activityLabel with the levels() function
levels(allRawData$activityLabel) <- activityLabelLevels

## extract only the measurements on the mean and standard deviation for each measurement
## and create a dataframe of just these variables
meanStdData <- grep("[Mm]ean|[Ss][Tt][Dd]", names(allRawData))
allMeanStdData <- allRawData[,(meanStdData)]

## create a dataframe of subjectID and activityLabel to merge together with the extracted
## variables from previous step
subjActData <- allRawData[, c("subjectID", "activityLabel")]

## combine the subjectID, activityLabel and extracted mean/std variables together in a new
## dataframe
calcData <- cbind(subjActData, allMeanStdData)

## rename variables to something more readable & meaningful
names(calcData) <- gsub("-|\\()|_|\\(|\\)|\\,", "", names(calcData),)

## create a tidy dataset with the average (mean) of each variable for each activity and 
## each subject. You will need the reshape2 package for this step.
## The output should have 180 rows
install.packages("reshape2")
library(reshape2)
meltData <- melt(calcData,id=c("subjectID","activityLabel"))
castData <- dcast(meltData, subjectID + activityLabel ~ variable,mean)

## the tidy dataset should have 180 rows and 88 columns. It should show the mean for each variable
## for each activity recorded for each subject.

## write out the tidy dataset to a text file
write.table(castData, file = "tidySamsungData.txt",row.names=FALSE)



