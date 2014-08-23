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

Complete list of variables
==========================

| names.result. |                              |                                                            |
|---------------|------------------------------|------------------------------------------------------------|
| 1             | activity                     | : Factor w/ 6 levels:                                      |
|               |                              | 1. laying                                                  |
|               |                              | 2. sitting                                                 |
|               |                              | 3. standing                                                |
|               |                              | 4. walking                                                 |
|               |                              | 5. walking_downstairs                                      |
|               |                              | 6. walking_upstairs                                        |
| 2             | subjectid                    | : int  1 2 3 4 5 6 7 8 9 10 ...                            |
| 3             | tbodyaccmeanx                | : num  0.277 0.276 0.276 0.279 0.278 ...                   |
| 4             | tbodyaccmeany                | : num  -0.0174 -0.0186 -0.0172 -0.0148 -0.0173 ...         |
| 5             | tbodyaccmeanz                | : num  -0.111 -0.106 -0.113 -0.111 -0.108 ...              |
| 6             | tbodyaccstdx                 | : num  -0.284 -0.424 -0.36 -0.441 -0.294 ...               |
| 7             | tbodyaccstdy                 | : num  0.1145 -0.0781 -0.0699 -0.0788 0.0767 ...           |
| 8             | tbodyaccstdz                 | : num  -0.26 -0.425 -0.387 -0.586 -0.457 ...               |
| 9             | tgravityaccmeanx             | : num  0.935 0.913 0.937 0.964 0.973 ...                   |
| 10            | tgravityaccmeany             | : num  -0.2822 -0.3466 -0.262 -0.0859 -0.1004 ...          |
| 11            | tgravityaccmeanz             | : num  -0.0681 0.08473 -0.13811 0.12776 0.00248 ...        |
| 12            | tgravityaccstdx              | : num  -0.977 -0.973 -0.978 -0.984 -0.979 ...              |
| 13            | tgravityaccstdy              | : num  -0.971 -0.972 -0.962 -0.968 -0.962 ...              |
| 14            | tgravityaccstdz              | : num  -0.948 -0.972 -0.952 -0.963 -0.965 ...              |
| 15            | tbodyaccjerkmeanx            | : num  0.074 0.0618 0.0815 0.0784 0.0846 ...               |
| 16            | tbodyaccjerkmeany            | : num  0.02827 0.01825 0.01006 0.00296 -0.01632 ...        |
| 17            | tbodyaccjerkmeanz            | : num  -4.17e-03 7.90e-03 -5.62e-03 -7.68e-04 8.32e-05 ... |
| 18            | tbodyaccjerkstdx             | : num  -0.114 -0.278 -0.269 -0.297 -0.303 ...              |
| 19            | tbodyaccjerkstdy             | : num  0.067 -0.0166 -0.045 -0.2212 -0.091 ...             |
| 20            | tbodyaccjerkstdz             | : num  -0.503 -0.586 -0.529 -0.751 -0.613 ...              |
| 21            | tbodygyromeanx               | : num  -0.0418 -0.053 -0.0256 -0.0318 -0.0489 ...          |
| 22            | tbodygyromeany               | : num  -0.0695 -0.0482 -0.0779 -0.0727 -0.069 ...          |
| 23            | tbodygyromeanz               | : num  0.0849 0.0828 0.0813 0.0806 0.0815 ...              |
| 24            | tbodygyrostdx                | : num  -0.474 -0.562 -0.572 -0.501 -0.491 ...              |
| 25            | tbodygyrostdy                | : num  -0.0546 -0.5385 -0.5638 -0.6654 -0.5046 ...         |
| 26            | tbodygyrostdz                | : num  -0.344 -0.481 -0.477 -0.663 -0.319 ...              |
| 27            | tbodygyrojerkmeanx           | : num  -0.09 -0.0819 -0.0952 -0.1153 -0.0888 ...           |
| 28            | tbodygyrojerkmeany           | : num  -0.0398 -0.0538 -0.0388 -0.0393 -0.045 ...          |
| 29            | tbodygyrojerkmeanz           | : num  -0.0461 -0.0515 -0.0504 -0.0551 -0.0483 ...         |
| 30            | tbodygyrojerkstdx            | : num  -0.207 -0.39 -0.386 -0.492 -0.358 ...               |
| 31            | tbodygyrojerkstdy            | : num  -0.304 -0.634 -0.639 -0.807 -0.571 ...              |
| 32            | tbodygyrojerkstdz            | : num  -0.404 -0.435 -0.537 -0.64 -0.158 ...               |
| 33            | tbodyaccmagmean              | : num  -0.137 -0.29 -0.255 -0.312 -0.158 ...               |
| 34            | tbodyaccmagstd               | : num  -0.22 -0.423 -0.328 -0.528 -0.377 ...               |
| 35            | tgravityaccmagmean           | : num  -0.137 -0.29 -0.255 -0.312 -0.158 ...               |
| 36            | tgravityaccmagstd            | : num  -0.22 -0.423 -0.328 -0.528 -0.377 ...               |
| 37            | tbodyaccjerkmagmean          | : num  -0.141 -0.281 -0.28 -0.367 -0.288 ...               |
| 38            | tbodyaccjerkmagstd           | : num  -0.0745 -0.1642 -0.1399 -0.3169 -0.2822 ...         |
| 39            | tbodygyromagmean             | : num  -0.161 -0.447 -0.466 -0.498 -0.356 ...              |
| 40            | tbodygyromagstd              | : num  -0.187 -0.553 -0.562 -0.553 -0.492 ...              |
| 41            | tbodygyrojerkmagmean         | : num  -0.299 -0.548 -0.566 -0.681 -0.445 ...              |
| 42            | tbodygyrojerkmagstd          | : num  -0.325 -0.558 -0.567 -0.73 -0.489 ...               |
| 43            | fbodyaccmeanx                | : num  -0.203 -0.346 -0.317 -0.427 -0.288 ...              |
| 44            | fbodyaccmeany                | : num  0.08971 -0.0219 -0.0813 -0.1494 0.00946 ...         |
| 45            | fbodyaccmeanz                | : num  -0.332 -0.454 -0.412 -0.631 -0.49 ...               |
| 46            | fbodyaccstdx                 | : num  -0.319 -0.458 -0.379 -0.447 -0.298 ...              |
| 47            | fbodyaccstdy                 | : num  0.056 -0.1692 -0.124 -0.1018 0.0426 ...             |
| 48            | fbodyaccstdz                 | : num  -0.28 -0.455 -0.423 -0.594 -0.483 ...               |
| 49            | fbodyaccmeanfreqx            | : num  -0.208 -0.146 -0.247 -0.139 -0.322 ...              |
| 50            | fbodyaccmeanfreqy            | : num  0.11309 0.19859 0.17174 0.01235 -0.00204 ...        |
| 51            | fbodyaccmeanfreqz            | : num  0.0497 0.0689 0.0749 -0.0788 0.0247 ...             |
| 52            | fbodyaccjerkmeanx            | : num  -0.171 -0.305 -0.305 -0.359 -0.345 ...              |
| 53            | fbodyaccjerkmeany            | : num  -0.0352 -0.0788 -0.1405 -0.2796 -0.1811 ...         |
| 54            | fbodyaccjerkmeanz            | : num  -0.469 -0.555 -0.514 -0.729 -0.59 ...               |
| 55            | fbodyaccjerkstdx             | : num  -0.134 -0.314 -0.297 -0.297 -0.321 ...              |
| 56            | fbodyaccjerkstdy             | : num  0.10674 -0.01533 -0.00561 -0.2099 -0.05452 ...      |
| 57            | fbodyaccjerkstdz             | : num  -0.535 -0.616 -0.544 -0.772 -0.633 ...              |
| 58            | fbodyaccjerkmeanfreqx        | : num  -0.2093 -0.0727 -0.216 -0.1353 -0.3594 ...          |
| 59            | fbodyaccjerkmeanfreqy        | : num  -0.386 -0.264 -0.259 -0.386 -0.534 ...              |
| 60            | fbodyaccjerkmeanfreqz        | : num  -0.186 -0.255 -0.347 -0.326 -0.344 ...              |
| 61            | fbodygyromeanx               | : num  -0.339 -0.43 -0.438 -0.373 -0.373 ...               |
| 62            | fbodygyromeany               | : num  -0.103 -0.555 -0.562 -0.688 -0.514 ...              |
| 63            | fbodygyromeanz               | : num  -0.256 -0.397 -0.418 -0.601 -0.213 ...              |
| 64            | fbodygyrostdx                | : num  -0.517 -0.604 -0.615 -0.543 -0.529 ...              |
| 65            | fbodygyrostdy                | : num  -0.0335 -0.533 -0.5689 -0.6547 -0.5027 ...          |
| 66            | fbodygyrostdz                | : num  -0.437 -0.56 -0.546 -0.716 -0.42 ...                |
| 67            | fbodygyromeanfreqx           | : num  0.01478 0.00728 0.03376 -0.12715 -0.04586 ...       |
| 68            | fbodygyromeanfreqy           | : num  -0.0658 -0.0427 -0.038 -0.2747 -0.0192 ...          |
| 69            | fbodygyromeanfreqz           | : num  0.000773 0.139752 -0.044508 0.149852 0.167458 ...   |
| 70            | fbodyaccmagmean              | : num  -0.129 -0.324 -0.29 -0.451 -0.305 ...               |
| 71            | fbodyaccmagstd               | : num  -0.398 -0.577 -0.456 -0.651 -0.52 ...               |
| 72            | fbodyaccmagmeanfreq          | : num  0.191 0.393 0.113 0.382 0.15 ...                    |
| 73            | fbodybodyaccjerkmagmean      | : num  -0.0571 -0.1691 -0.1868 -0.3186 -0.2695 ...         |
| 74            | fbodybodyaccjerkmagstd       | : num  -0.1035 -0.1641 -0.0899 -0.3205 -0.3057 ...         |
| 75            | fbodybodyaccjerkmagmeanfreq  | : num  0.09382 0.2075 -0.11716 0.11149 -0.00497 ...        |
| 76            | fbodybodygyromagmean         | : num  -0.199 -0.531 -0.57 -0.609 -0.484 ...               |
| 77            | fbodybodygyromagstd          | : num  -0.321 -0.652 -0.633 -0.594 -0.59 ...               |
| 78            | fbodybodygyromagmeanfreq     | : num  0.2688 0.3053 0.1809 0.0697 0.2506 ...              |
| 79            | fbodybodygyrojerkmagmean     | : num  -0.319 -0.583 -0.608 -0.724 -0.548 ...              |
| 80            | fbodybodygyrojerkmagstd      | : num  -0.382 -0.558 -0.549 -0.758 -0.456 ...              |
| 81            | fbodybodygyrojerkmagmeanfreq | : num  0.1907 0.1263 0.0458 0.2654 0.0527 ...              |
