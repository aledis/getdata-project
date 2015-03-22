names<-read.csv("UCI HAR Dataset/features.txt", sep = " ", header = FALSE)[,2]
activities<-read.csv("UCI HAR Dataset/activity_labels.txt", sep = " ", header = FALSE)[,2]
stdAndMean<-which(grepl("^t.*mean\\()", names) | grepl("^t.*std\\()", names))
stdAndMeanNames<-names[stdAndMean]

xVector<-scan("UCI HAR Dataset/train/X_train.txt")
yVector<-scan("UCI HAR Dataset/train/y_train.txt")
sVector<-scan("UCI HAR Dataset/train/subject_train.txt")

dataMatrix <- data.frame(matrix(xVector, ncol = 561))[,stdAndMean]
colnames(dataMatrix)<-stdAndMeanNames
traindf<-as_data_frame(as.data.frame(dataMatrix)) %>% 
        mutate(subject=sVector, activity=activities[yVector])

xVector<-scan("UCI HAR Dataset/test/X_test.txt")
yVector<-scan("UCI HAR Dataset/test/y_test.txt")
sVector<-scan("UCI HAR Dataset/test/subject_test.txt")

dataMatrix <- data.frame(matrix(xVector, ncol = 561))[,stdAndMean]
colnames(dataMatrix)<-stdAndMeanNames
testdf<-as_data_frame(as.data.frame(dataMatrix)) %>%
        mutate(subject=sVector, activity=activities[yVector])

fullsetdf<-bind_rows(testdf, traindf) %>% group_by(activity, subject) %>% summarise_each("mean")
write.table(fullsetdf, file="UCIHARDataset.txt", row.name = FALSE)
