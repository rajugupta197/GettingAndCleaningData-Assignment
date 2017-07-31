############### Assignment ############

### Downloading and unzipping

setwd("D:\\Coursera\\Data Science - Specialization\\03_Getting and Cleaning Data\\RCode")

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
f <- "UCIHARDataset.zip"
download.file(url=url,destfile = f, mode = "wb")

unzip(f)

###############################################################
##### 1. Merges the training and the test sets to create one data set.

#### Read Data Files
## Read training Files
trainX <- read.table("UCI HAR Dataset\\train\\X_train.txt")
trainY <- read.table("UCI HAR Dataset\\train\\y_train.txt")
trainSub <- read.table("UCI HAR Dataset\\train\\subject_train.txt")

## Read Test Files
testX <- read.table("UCI HAR Dataset\\test\\X_test.txt")
testY <- read.table("UCI HAR Dataset\\test\\y_test.txt")
testSub <- read.table("UCI HAR Dataset\\test\\subject_test.txt")

#### Concatenate the Data Files, row-wise
MergeX <- rbind(trainX, testX)
MergeY <- rbind(trainY, testY)
MergeSub <- rbind(trainSub, testSub)

#### Free memory, which is no more required
rm(trainX)
rm(testX)
rm(trainY)
rm(testY)
rm(trainSub)
rm(testSub)

#### Assign Column Names

## Read Feature name file
FeaturesColnames <- read.table("UCI HAR Dataset\\features.txt", sep = " ")
## Assign Column names
names(MergeX) <- FeaturesColnames$V2
names(MergeY) <- "Activity"
names(MergeSub) <- "SubjectIndex"

#### Combining and creating a single data set
DataSet <- cbind(MergeX, MergeSub, MergeY)

#### Free memory, which is no more required
rm(MergeX)
rm(MergeY)
rm(MergeSub)

##############################################
##### 2. Extracts only the measurements on the mean and standard deviation for each measurement

#### Select only columnNames where either "mean()" or "std()" is present
SelectedColumns <- grep("mean\\(\\)|std\\(\\)",FeaturesColnames$V2,value = TRUE)

#### Choose only selected columns along with subject & activity
DataSet <- DataSet[,c(SelectedColumns, "SubjectIndex", "Activity")]

###############################################
##### 3. Uses descriptive activity names to name the activities in the data set
activityLabels <- read.table("UCI HAR Dataset\\activity_labels.txt", sep = " ")

DataSet$Activity <- gsub(activityLabels$V1[1], activityLabels$V2[1], DataSet$Activity)
DataSet$Activity <- gsub(activityLabels$V1[2], activityLabels$V2[2], DataSet$Activity)
DataSet$Activity <- gsub(activityLabels$V1[3], activityLabels$V2[3], DataSet$Activity)
DataSet$Activity <- gsub(activityLabels$V1[4], activityLabels$V2[4], DataSet$Activity)
DataSet$Activity <- gsub(activityLabels$V1[5], activityLabels$V2[5], DataSet$Activity)
DataSet$Activity <- gsub(activityLabels$V1[6], activityLabels$V2[6], DataSet$Activity)

###########################################################
##### 4. Appropriately labels the data set with descriptive variable names.

# prefix 't' denotes time
# Acc denotes Accelerometer
# Mag denotes Magnitude
# Gyro denotes Gyroscope
# prefix 'f' denotes frequency 
# Double words like "BodyBody" to replace by "Body"
# Remove all '-' and '()'
# replace "mean" with "Mean" and "std" with "StdDev"

names(DataSet) <- gsub("^t", "time", names(DataSet))
names(DataSet) <- gsub("Acc", "Accelerometer", names(DataSet))
names(DataSet) <- gsub("Mag", "Magnitude", names(DataSet))
names(DataSet) <- gsub("Gyro", "Gyroscope", names(DataSet))
names(DataSet) <- gsub("^f", "frequency", names(DataSet))
names(DataSet) <- gsub("BodyBody", "Body", names(DataSet))
names(DataSet) <- gsub("-", "", names(DataSet))
names(DataSet) <- gsub("\\(|\\)", "", names(DataSet))
names(DataSet) <- gsub("mean", "Mean", names(DataSet))
names(DataSet) <- gsub("std", "StdDev", names(DataSet))


###########################################################
##### 5. From the data set in step 4, creates a second, independent 
##### tidy data set with the average of each variable for 
##### each activity and each subject.

library(plyr)

## taking mean of all columns group by Subject then by Activity
DataSet2 <- aggregate(. ~SubjectIndex + Activity, DataSet, mean)

## Ordering first with Subject then with Activity
DataSet2 <- setorder(DataSet2, SubjectIndex, Activity)

## Saving the dataset by Writing it in a file on Local disk
write.table(DataSet2, file = "tidydata.txt", row.name=FALSE)
