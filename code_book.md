Human Activity Recognition Using Smartphones Dataset: code book
================

Data
====

This is an aggregated version of dataset containing information about human activity recognition using smartphones.

The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Only the mean and standard deviation of measured variables were selected and averages of these means and variables over person and activity calculated.

Variables
=========

<table>
<colgroup>
<col width="14%" />
<col width="57%" />
<col width="28%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">variable</th>
<th align="left">explanation</th>
<th align="left">unit</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">personID</td>
<td align="left">Id of the person whose activities are measured</td>
<td align="left">NA</td>
</tr>
<tr class="even">
<td align="left">activity</td>
<td align="left">Activity measured, possible values are: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS</td>
<td align="left">NA</td>
</tr>
<tr class="odd">
<td align="left">fBodyAcc-mean()-Z</td>
<td align="left">Average mean of BodyAcc on Z axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">fBodyAcc-mean()-X</td>
<td align="left">Average mean of BodyAcc on X axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">fBodyAcc-mean()-Y</td>
<td align="left">Average mean of BodyAcc on Y axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">fBodyAcc-std()-Z</td>
<td align="left">Average standard deviation of BodyAcc on Z axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">fBodyAcc-std()-X</td>
<td align="left">Average standard deviation of BodyAcc on X axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">fBodyAcc-std()-Y</td>
<td align="left">Average standard deviation of BodyAcc on Y axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">fBodyAccJerk-mean()-Z</td>
<td align="left">Average mean of BodyAccJerk on Z axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">fBodyAccJerk-mean()-X</td>
<td align="left">Average mean of BodyAccJerk on X axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">fBodyAccJerk-mean()-Y</td>
<td align="left">Average mean of BodyAccJerk on Y axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">fBodyAccJerk-std()-Z</td>
<td align="left">Average standard deviation of BodyAccJerk on Z axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">fBodyAccJerk-std()-X</td>
<td align="left">Average standard deviation of BodyAccJerk on X axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">fBodyAccJerk-std()-Y</td>
<td align="left">Average standard deviation of BodyAccJerk on Y axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">fBodyAccMag-mean()</td>
<td align="left">Average mean of BodyAccMag</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">fBodyAccMag-std()</td>
<td align="left">Average standard deviation of BodyAccMag</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">fBodyBodyAccJerkMag-mean()</td>
<td align="left">Average mean of BodyBodyAccJerkMag</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">fBodyBodyAccJerkMag-std()</td>
<td align="left">Average standard deviation of BodyBodyAccJerkMag</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">fBodyBodyGyroJerkMag-mean()</td>
<td align="left">Average mean of BodyBodyGyroJerkMag</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">fBodyBodyGyroJerkMag-std()</td>
<td align="left">Average standard deviation of BodyBodyGyroJerkMag</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">fBodyBodyGyroMag-mean()</td>
<td align="left">Average mean of BodyBodyGyroMag</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">fBodyBodyGyroMag-std()</td>
<td align="left">Average standard deviation of BodyBodyGyroMag</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">fBodyGyro-mean()-Z</td>
<td align="left">Average mean of BodyGyro on Z axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">fBodyGyro-mean()-X</td>
<td align="left">Average mean of BodyGyro on X axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">fBodyGyro-mean()-Y</td>
<td align="left">Average mean of BodyGyro on Y axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">fBodyGyro-std()-Z</td>
<td align="left">Average standard deviation of BodyGyro on Z axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">fBodyGyro-std()-X</td>
<td align="left">Average standard deviation of BodyGyro on X axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">fBodyGyro-std()-Y</td>
<td align="left">Average standard deviation of BodyGyro on Y axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">tBodyAcc-mean()-Z</td>
<td align="left">Average mean of BodyAcc on Z axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">tBodyAcc-mean()-X</td>
<td align="left">Average mean of BodyAcc on X axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">tBodyAcc-mean()-Y</td>
<td align="left">Average mean of BodyAcc on Y axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">tBodyAcc-std()-Z</td>
<td align="left">Average standard deviation of BodyAcc on Z axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">tBodyAcc-std()-X</td>
<td align="left">Average standard deviation of BodyAcc on X axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">tBodyAcc-std()-Y</td>
<td align="left">Average standard deviation of BodyAcc on Y axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">tBodyAccJerk-mean()-Z</td>
<td align="left">Average mean of BodyAccJerk on Z axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">tBodyAccJerk-mean()-X</td>
<td align="left">Average mean of BodyAccJerk on X axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">tBodyAccJerk-mean()-Y</td>
<td align="left">Average mean of BodyAccJerk on Y axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">tBodyAccJerk-std()-Z</td>
<td align="left">Average standard deviation of BodyAccJerk on Z axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">tBodyAccJerk-std()-X</td>
<td align="left">Average standard deviation of BodyAccJerk on X axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">tBodyAccJerk-std()-Y</td>
<td align="left">Average standard deviation of BodyAccJerk on Y axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">tBodyAccJerkMag-mean()</td>
<td align="left">Average mean of BodyAccJerkMag</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">tBodyAccJerkMag-std()</td>
<td align="left">Average standard deviation of BodyAccJerkMag</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">tBodyAccMag-mean()</td>
<td align="left">Average mean of BodyAccMag</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">tBodyAccMag-std()</td>
<td align="left">Average standard deviation of BodyAccMag</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyro-mean()-Z</td>
<td align="left">Average mean of BodyGyro on Z axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">tBodyGyro-mean()-X</td>
<td align="left">Average mean of BodyGyro on X axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyro-mean()-Y</td>
<td align="left">Average mean of BodyGyro on Y axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">tBodyGyro-std()-Z</td>
<td align="left">Average standard deviation of BodyGyro on Z axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyro-std()-X</td>
<td align="left">Average standard deviation of BodyGyro on X axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">tBodyGyro-std()-Y</td>
<td align="left">Average standard deviation of BodyGyro on Y axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyroJerk-mean()-Z</td>
<td align="left">Average mean of BodyGyroJerk on Z axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">tBodyGyroJerk-mean()-X</td>
<td align="left">Average mean of BodyGyroJerk on X axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyroJerk-mean()-Y</td>
<td align="left">Average mean of BodyGyroJerk on Y axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">tBodyGyroJerk-std()-Z</td>
<td align="left">Average standard deviation of BodyGyroJerk on Z axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyroJerk-std()-X</td>
<td align="left">Average standard deviation of BodyGyroJerk on X axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">tBodyGyroJerk-std()-Y</td>
<td align="left">Average standard deviation of BodyGyroJerk on Y axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyroJerkMag-mean()</td>
<td align="left">Average mean of BodyGyroJerkMag</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">tBodyGyroJerkMag-std()</td>
<td align="left">Average standard deviation of BodyGyroJerkMag</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyroMag-mean()</td>
<td align="left">Average mean of BodyGyroMag</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">tBodyGyroMag-std()</td>
<td align="left">Average standard deviation of BodyGyroMag</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">tGravityAcc-mean()-Z</td>
<td align="left">Average mean of GravityAcc on Z axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">tGravityAcc-mean()-X</td>
<td align="left">Average mean of GravityAcc on X axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">tGravityAcc-mean()-Y</td>
<td align="left">Average mean of GravityAcc on Y axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">tGravityAcc-std()-Z</td>
<td align="left">Average standard deviation of GravityAcc on Z axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">tGravityAcc-std()-X</td>
<td align="left">Average standard deviation of GravityAcc on X axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">tGravityAcc-std()-Y</td>
<td align="left">Average standard deviation of GravityAcc on Y axis</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="odd">
<td align="left">tGravityAccMag-mean()</td>
<td align="left">Average mean of GravityAccMag</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
<tr class="even">
<td align="left">tGravityAccMag-std()</td>
<td align="left">Average standard deviation of GravityAccMag</td>
<td align="left">Measurements were normalized and bounded within [-1,1]</td>
</tr>
</tbody>
</table>
