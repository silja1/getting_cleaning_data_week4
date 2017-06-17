Human Activity Recognition Using Smartphones Dataset: readme
================

This is a readme file explaining the submission for peer-graded assignment for week 4 in "Getting and cleaning data" course

### Files in repository

This repository includes 3 files:

-   README.Md: file explaning the steps taken in R code

-   run\_analysis.R: R script which completes the steps required in the assignment. The assumption is that working directory contains all files provided for the assignment when running this script.

-   human\_activity\_tidy.txt - a tidy data set created in step 5 of the assignment

-   code\_book.md: codebook with explanations for all variables in data set "human\_activity\_tidy.txt"

### Explanations for calculation

First, I read in the file with meaningful names for features. I add "V" to the beginning for joining to data files.

``` r
#load libraries
library(dplyr)
library(tidyr)

#Read feature names 
features<-read.table("features.txt",sep=" ",col.names=c("fnbr","feature"),stringsAsFactors=FALSE)
#create feature nbr for join
features$fnbr<-paste0("V",features$fnbr)
```

Read in the activities names

``` r
activities <- read.csv("activity_labels.txt", sep = "", col.names=c("anbr","activity"),header = FALSE,stringsAsFactors=FALSE)
```

Read feature values,activities and person\_Id's (subjects) for test set, join the columns into one data set. Assign names for feature number and "personId" columns.

``` r
#Import data 
#test
test_x<-read.table("test/X_test.txt")
test_y<-read.table("test/y_test.txt")
test_subject<-read.table("test/subject_test.txt")
test<-cbind(test_y,test_subject,test_x)
names(test)[1]<-"anbr"
names(test)[2]<-"personID"
test$set<-"test"
```

Do the same for training set and join test and training set.

``` r
#train
train_x<-read.table("train/X_train.txt")
train_y<-read.table("train/y_train.txt")
train_subject<-read.table("train/subject_train.txt")
train<-cbind(train_y,train_subject,train_x)
names(train)[1]<-"anbr"
names(train)[2]<-"personID"
train$set<-"train"
#join test and training set
data<-rbind(test,train)
```

Here I add activity names.

``` r
#join activity names
data<-left_join(data,activities,by=c("anbr"="anbr"))%>%
  select(-anbr)
```

I reshape the dataset into a narrow form, where each row contains one measurement (of the 50) with columns describing the personID, activity, variable which was calculated, whether it was a training or test data set and arbitrary "repetition" ID to separate different measurements of the 50 whih were done.

I filter out only the variables which contains strings "std()" or "mean()", since I considered only these to be means or standard deviations.

I do not consider "angle(Z,gravityMean)" and similar a mean since it is and angle and I do not consider "fBodyAcc-meanFreq()-Z" and similar a mean since I understand it as mean frequency, not mean of a variable.

``` r
#create tidy narrow data set, add feature names, filter only the measurements on the mean and standard deviation for each measurement
data_narrow<-data%>%
  gather(key="fnbr",value="value",-activity,-set,-personID)%>%
  inner_join(features,by=c("fnbr"="fnbr"))%>%
  filter(grepl("std()",feature,fixed=TRUE)|grepl("mean()",feature,fixed=TRUE))%>%
  select(-fnbr)
```

I transform this dataset into a tidy form, where each row contains personID, activity and columns starting from 3 contains the average of variables included in previous data set (means and standard deviations).

``` r
#create a tidy data set with the average of each variable for each activity and each subject.
data_averages<-data_narrow%>%
  group_by(personID,activity,feature)%>%
  summarize(avg=mean(value))%>%
  spread(key=feature,value=avg)
```

As a result I get a tidy data set with the average of each variable for each activity and each subject.
