##Download the original data and unzip it to current work directory
url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
setInternet2(use=TRUE)
download.file(url,destfile="Dataset.zip") 
unzip("Dataset.zip")
##Read training and test data
file1X="UCI HAR Dataset\\test\\X_test.txt"
file2X="UCI HAR Dataset\\train\\X_train.txt"
file3X="UCI HAR Dataset\\train\\subject_train.txt"
file1Y="UCI HAR Dataset\\test\\y_test.txt"
file2Y="UCI HAR Dataset\\train\\y_train.txt"
file3Y="UCI HAR Dataset\\test\\subject_test.txt"
columns<-read.table("UCI HAR Dataset\\features.txt")
activity_labels<-read.table("UCI HAR Dataset\\activity_labels.txt")
testActivity<-read.table(file1Y)##load the activities
trainActivity<-read.table(file2Y)##load the activities
test<-read.table(file1X)##load the test data,default columns are "v1,v2,...v561"
train<-read.table(file2X)##load the train data
##merge two data sets and create one
dataset<-rbind(test,train)
##Extracts the measurements on the mean and standard deviation for each measurement
temp1<-grep("mean",columns[,2])
temp2<-grep("std",columns[,2])
temp<-sort(c(temp1,temp2))
dataset<-dataset[,temp]
##label the data set with descriptive variable names
HumanActivity<-rbind(testActivity,trainActivity)
HumanActivity$Activity<-activity_labels[HumanActivity[[1]],2]
##rownames(dataset)<-HumanActivity[,"Activity"]
dataset$Activity<-HumanActivity[,"Activity"]
##labels the data set with descriptive variable names
names(dataset)<-c(as.character(columns[temp,2]),"Activity")
##creates a new and tydy data set with the average of each variable for each activity and each subject
library(reshape2)
subjectTrain<-read.table(file3X)
subjectTest<-read.table(file3Y)
subjects<-rbind(subjectTest,subjectTrain)
dataset$Subject<-subjects[[1]]
names(dataset$Subject)="Subject"
meltData<-melt(dataset,id=c("Subject","Activity"))##melt the data
splitData<-split(meltData,meltData$Subject)
subject<-sort(unique(subjects)[,1])
output<-data.frame()
for(i in 1:length(subject))
{
splitdata<-splitData[[i]]
split2<-dcast(splitdata,Activity~variable,mean)
split2$Subject<-rep(subject[i],nrow(split2))
output<-rbind(output,split2)
}
##write the dataset
write.table(output,"output.txt",row.name=FALSE)





