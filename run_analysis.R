#load libraries
library(dplyr)
library(tidyr)

#Read feature names 
features<-read.table("features.txt",sep=" ",col.names=c("fnbr","feature"),stringsAsFactors=FALSE)
#create feature nbr for join
features$fnbr<-paste0("V",features$fnbr)


#Read in activities names
activities <- read.csv("activity_labels.txt", sep = "", col.names=c("anbr","activity"),header = FALSE,stringsAsFactors=FALSE)

#Import data 
#test
test_x<-read.table("test/X_test.txt")
test_y<-read.table("test/y_test.txt")
test_subject<-read.table("test/subject_test.txt")
test<-cbind(test_y,test_subject,test_x)
names(test)[1]<-"anbr"
names(test)[2]<-"personID"
test$set<-"test"

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

#join activity names
data<-left_join(data,activities,by=c("anbr"="anbr"))%>%
  select(-anbr)

#create tidy narrow data set, add feature names, filter only the measurements on the mean and standard deviation for each measurement
data_narrow<-data%>%
  gather(key="fnbr",value="value",-activity,-set,-personID)%>%
  inner_join(features,by=c("fnbr"="fnbr"))%>%
  filter(grepl("std()",feature,fixed=TRUE)|grepl("mean()",feature,fixed=TRUE))%>%
  select(-fnbr)%>%
  group_by(personID,activity,feature,set)%>%
  arrange(personID,activity,feature,set)%>%
  mutate(repetition=row_number(personID))%>%
  arrange(personID,activity,feature,set,repetition)

#create a tidy data set with the average of each variable for each activity and each subject.
data_averages<-data_narrow%>%
  group_by(personID,activity,feature)%>%
  summarize(avg=mean(value))%>%
  spread(key=feature,value=avg)


