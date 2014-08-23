## Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#######################################################################################################################

if (!require("reshape2"))
  install.packages("reshape2")
library("reshape2")

Main <- function (MaxRows = -1) {
if (MaxRows <= 0)
  MaxRows <- -1
## Reading Train and Test Files into Data frames
#################################################

## Activities Master
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
names(activity_labels)<-c("ActivityID","ActivityDesc")

## Features Master
features <- read.table("UCI HAR Dataset/features.txt")
names(features)<-c("FeatureID","FeatureDesc")

## flag the feature as being a mean or std or not, useful for subsetting accordingly
features$isMeanStd<- ifelse(grepl("-mean\\(\\)",features$FeatureDesc),"MEAN",
                            ifelse(grepl("-std\\(\\)",features$FeatureDesc),"STD",
                                   "NONE"))

## To use to filter the Mean and STD columns from the X file
## extracting specific columns of X will enhance the performance of melting greatly!
extractFeatures <- subset(x=features,isMeanStd!="NONE")$FeatureID
## To extract All features, enable the following
##extractFeatures <- features$FeatureID


## Subjects Data
subjects <- read.table("UCI HAR Dataset/train/subject_train.txt",nrows=MaxRows)
subjects <- rbind(subjects,read.table("UCI HAR Dataset/test/subject_test.txt",nrows=MaxRows))
names(subjects)<-"subjectID"

## X Data
X <- read.table("UCI HAR Dataset/train/X_train.txt",sep="",nrows=MaxRows)[extractFeatures]
X <- rbind(X,read.table("UCI HAR Dataset/test/X_test.txt",sep="",nrows=MaxRows)[extractFeatures])
names(X) <- extractFeatures # 1:ncol(X)

y <- read.table("UCI HAR Dataset/train/y_train.txt",nrows=MaxRows)
y <- rbind(y,read.table("UCI HAR Dataset/test/y_test.txt",nrows=MaxRows))
names(y)<-"ActivityID"



## create an autonumber sequence and bind it to the dataframe
#MasterData<-cbind("train",as.data.frame(1:nrow(X_train)))
#names(MasterData)<-c("FileType","LineID")
#MasterData<-cbind(MasterData, subject_train)
MasterData<-cbind(subjects, y)
MasterData<-cbind(MasterData, X)

## Melt the data to make all the Features in 2 columns only, Variable and Value format
MasterData <- melt(MasterData, id = c("subjectID","ActivityID"), measure.vars=as.character(extractFeatures), variable.name="FeatureID",value.name="FeatureValue")

## Merge the Melt Data and Activities to attach descriptions
MasterData <- merge(MasterData, activity_labels)

## Merge the Melt Data and Features to attach descriptions
MasterData <- merge(MasterData, features)


return (subset(x=MasterData,isMeanStd!="NONE")[,c(1,2,3,4,5,6)])
#return (TidyMean)
}

df<-Main()
df <- aggregate(FeatureValue ~ subjectID + ActivityDesc + FeatureDesc, data = df, mean)
write.table(df,"TidyMean.txt",row.name=FALSE)
