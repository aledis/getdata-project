# read features names and activities
names<-read.csv("UCI HAR Dataset/features.txt", sep = " ", header = FALSE)[,2]
activities<-read.csv("UCI HAR Dataset/activity_labels.txt", sep = " ", header = FALSE)[,2]

# extract those with std and mean
# we exclude ZZZ-meanFreq() as these have corresponding ZZZ-mean() measurements
# we only include original time measurements, not the Fourier Transforms
stdAndMean<-which(grepl("^t.*mean\\()", names) | grepl("^t.*std\\()", names))
stdAndMeanNames<-names[stdAndMean]

# normalize naming of measurements
strAndMeanNames<-sub("-","",sub("-std\\()","Stdev",sub("-mean\\()", "Mean", stdAndMeanNames)))

# read the data
xVector<-c(scan("UCI HAR Dataset/train/X_train.txt"), scan("UCI HAR Dataset/test/X_test.txt"))
yVector<-c(scan("UCI HAR Dataset/train/y_train.txt"), scan("UCI HAR Dataset/test/y_test.txt"))
sVector<-c(scan("UCI HAR Dataset/train/subject_train.txt"), scan("UCI HAR Dataset/test/subject_test.txt"))

# create data matrix, name the columns and 
dataMatrix <- data.frame(matrix(xVector, ncol = 561))[,stdAndMean]
colnames(dataMatrix)<-stdAndMeanNames

# form the final data set by adding subjects and activities using activities names,
# grouping by activity and subject and summarizing the rest of measurements through mean
fullsetdf<-as_data_frame(as.data.frame(dataMatrix)) %>% 
        mutate(subject=sVector, activity=activities[yVector]) %>% 
        group_by(activity, subject) %>% 
        summarise_each("mean")

write.table(fullsetdf, file="UCIHARDataset.txt", row.name = FALSE)
