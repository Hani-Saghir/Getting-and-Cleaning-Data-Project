Data Dictionary - Getting and Cleaning Course Project

Feature Selection 
=================

The features selected for this database are the mean averages of a subset of the original Human 
Activity Recognition Using Smartphones Dataset Version 1.0.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The values shown are the averages of the original values and grouped by activity and subjectid.

They are accelerometer and gyroscope 3-axial raw signals. For relevant features,
'-xyz' is used to denote 3-axial signals in the X, Y and Z directions. So for
'tbodyacc' there will be three corresponding variables versions one for each axis.

	ex: tbodyaccmeanx, tbodyaccmeany, tbodyaccmeanz

	tbodyacc-xyz
	tgravityacc-xyz
	tbodyaccjerk-xyz
	tbodygyro-xyz
	tbodygyrojerk-xyz
	tbodyaccmag
	tgravityaccmag
	tbodyaccjerkmag
	tbodygyromag
	tbodygyrojerkmag
	fbodyacc-xyz
	fbodyaccjerk-xyz
	fbodygyro-xyz
	fbodyaccmag
	fbodyaccjerkmag
	fbodygyromag
	fbodygyrojerkmag


Only signals with mean and standard deviation were chosen from the original set. 
	mean: Mean value
	std: Standard deviation

	ex: tbodyaccmeanx, tbodyaccstdx

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

	gravitymean
	tbodyaccmean
	tbodyaccjerkmean
	tbodygyromean
	tbodygyrojerkmean

All signals were recorded when certain activities performed. These are indicated by the activity 
column.

All signals were performed by 30 differenct subjects shown by its subjectid value.


Data variable from the data frame returned after executing the Main() in run_analysis.R script:

'data.frame':	813621 obs. of  6 variables:
 $ FeatureID   : Factor w/ 561 levels "1","2","3","4",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ FeatureDesc : Factor w/ 477 levels "angle(tBodyAccJerkMean),gravityMean)",..: 243 243 243 243 243 243 243 243 243 243 ...
 $ ActivityID  : int  4 5 2 5 5 5 5 3 4 5 ...
 $ ActivityDesc: Factor w/ 6 levels "LAYING","SITTING",..: 2 3 6 3 3 3 3 5 2 3 ...
 $ subjectID   : int  23 9 27 19 17 12 12 17 23 19 ...
 $ FeatureValue: num  0.283 0.275 0.133 0.278 0.269 ...
