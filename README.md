# Getting and Cleaning Data
## Course Project

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Steps to work on this course project

1. Download the data source and put into a folder on your working directory. You'll have a ```UCI HAR Dataset``` folder.
2. Put ```run_analysis.R``` in your working directory in RStudio.
3. Run ```source("run_analysis.R")```
4. Sourcing the R file will Run ```Main()``` and will generate a new file ```TidyMean.txt``` in your working directory. For testing purposes, you may limit the number of rows to consider from each X and y files using the argument of Main MaxRows = -1.


## Dependencies

```run_analysis.R``` file will help you to install the dependencies automatically. It depends on ```reshape2```. 
