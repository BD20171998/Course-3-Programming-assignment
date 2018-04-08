
#read in the test data
thedata1a<-read.table("./subject_test.txt")
thedata1b<-read.table("./Y_test.txt")
thedata1c<-read.table("./X_test.txt")

#combining the test data pieces
test_data<-cbind(thedata1a,thedata1b,thedata1c)

#read in the train data
thedata2a<-read.table("./subject_train.txt")
thedata2b<-read.table("./Y_train.txt")
thedata2c<-read.table("./X_train.txt")

#combining the train data pieces
train_data<-cbind(thedata2a,thedata2b,thedata2c)

#combining test & train data
merged_data<-rbind(test_data,train_data)

#reading in column lables for data
col_lables<- read.table("./features.txt", header=FALSE, sep=" ")
col_lables<-as.character(unlist(col_lables$V2))

#relabeling merged data set column names
colnames(merged_data)<-c("Subject","Activity",col_lables)

#Keep columns only that are needed
cols_to_keep<-c(1:2,3:8,43:48,83:88,123:128,
                163:168,203:204,216:217,229:230,
                242:243,255:256,268:273,296:298,
                347:352,375:377,426:431,454:456,
                505:506,515,518:519,528,531:532,541,544:545,554)
merged_data<-merged_data[,cols_to_keep]

#Relabel activity codes with proper names
merged_data$Activity[merged_data$Activity=="1"]<-"Walking"
merged_data$Activity[merged_data$Activity=="2"]<-"Walking Upstairs"
merged_data$Activity[merged_data$Activity=="3"]<-"Walking Downstairs"
merged_data$Activity[merged_data$Activity=="4"]<-"Sitting"
merged_data$Activity[merged_data$Activity=="5"]<-"Standing"
merged_data$Activity[merged_data$Activity=="6"]<-"Laying"

#Taking mean of variables by Subject and Activty 
#from original data set to create second data set (the tidy data set)
merged_data2<-aggregate(merged_data[,3:81],by=list(merged_data$Subject,merged_data$Activity), FUN = mean)

#Renaming columns for tidy data set
name_list<-names(merged_data2)
name_list[1:2]<-c("Subject","Activity")
name_list[3:42]<-sub("t","Average Time per activity for the subject: ", names(merged_data2[3:42]))
name_list[43:81]<-sub("f","Average Frequency of activity for the subject: ", names(merged_data2[43:81]))
colnames(merged_data2)<-name_list

#create tidy data file 
write.table(merged_data2,"./TidyData.txt",row.names = FALSE)
