names<-read.csv("UCI HAR Dataset/features.txt", sep = " ", header = FALSE)[,2]
activities<-read.csv("UCI HAR Dataset/activity_labels.txt", sep = " ", header = FALSE)[,2]
stdAndMean<-which(grepl("^t.*mean\\()", names) | grepl("^t.*std\\()", names))
stdAndMeanNames<-names[stdAndMean]

xVector<-c(scan("UCI HAR Dataset/train/X_train.txt"), scan("UCI HAR Dataset/test/X_test.txt"))
yVector<-c(scan("UCI HAR Dataset/train/y_train.txt"), scan("UCI HAR Dataset/test/y_test.txt"))
sVector<-c(scan("UCI HAR Dataset/train/subject_train.txt"), scan("UCI HAR Dataset/test/subject_test.txt"))

dataMatrix <- data.frame(matrix(xVector, ncol = 561))[,stdAndMean]
colnames(dataMatrix)<-stdAndMeanNames
fullsetdf<-as_data_frame(as.data.frame(dataMatrix)) %>% 
        mutate(subject=sVector, activity=activities[yVector])

write.table(fullsetdf, file="UCIHARDataset.txt", row.name = FALSE)
