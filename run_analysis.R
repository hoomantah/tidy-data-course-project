###################################################################
## This is the course project for the "Getting and Cleaning Data"
## course, John Hopkins University @Coursera.org
###################################################################

## Check for the required files
listfiles <- dir(c("UCI HAR Dataset","UCI HAR Dataset/test","UCI HAR Dataset/train"))
reqfiles <- c("X_test.txt","subject_test.txt","X_train.txt","subject_train.txt","y_test.txt","y_train.txt","features.txt","activity_labels.txt")
if (sum(is.na(match(reqfiles,listfiles))) != 0 ) {
    print("Required files are listed below. Please set the 'working directory' so that these are available:")
    print(reqfiles)
    stop("files not found")
}

###################################################################
## NOW, Let's do the core analysis of the assignment:
###################################################################

## (2) "Extracts only the measurements on the mean and standard
##     deviation for each measurement."
##
##     Load the features list dataset
allFeatures <- read.table("UCI HAR Dataset/features.txt")

##     and find index of mean/std
reqFeatures <- grep("(mean|std)[(][)]",allFeatures[,2], ignore.case=T)

##     get the required features subset off the 'allFeatures'
features <- allFeatures[reqFeatures,]

##     we do not need 'allFeatures' any more:
rm("allFeatures")

##     Here we load the Test & Train datasets, and store required
##     columns (features) only.
Test           <- read.table("UCI HAR Dataset/test/X_test.txt")[reqFeatures]
Train          <- read.table("UCI HAR Dataset/train/X_train.txt")[reqFeatures]


## (4) "Appropriately labels the data set with descriptive variable
##     names."
##
##     We create a matrix for the values we want to replace in the
##     variable names; the first column is a regexp.
d <- cbind(c("mean","std","[()-]"),c("Mean","StDev",""))

##     for each row of 'd', replace the match from d[,1] with d[,2]
##     in the 'features'
for (i in c(1:nrow(d))) {
    features[,2] <- gsub(d[i,1],d[i,2],features[,2])
}

##     Rename the columns
names(Test) <- features[,2]
names(Train) <- features[,2]


## (1) Merges the training and the test sets to create one data set.
##
##     Load the records activity labels, according to the CodeBook
TestActivities <- read.table("UCI HAR Dataset/test/y_test.txt",col.names="activity")
TrainActivities<- read.table("UCI HAR Dataset/train/y_train.txt",col.names="activity")

##     As for the 5th task of the assignment code requires, we load
##     the subjects of each record for the analysis
TestSubjects   <- read.table("UCI HAR Dataset/test/subject_test.txt",col.names="subject")
TrainSubjects  <- read.table("UCI HAR Dataset/train/subject_train.txt",col.names="subject")

##     Now we create a the tidy Test dataset:
allData <- rbind(cbind(TestSubjects, TestActivities, Test ),
                 cbind(TrainSubjects, TrainActivities, Train))

##     Let's free the memory a little bit!
rm(list = ls()[grep("test|train|feature",ls(),ignore.case=T)])


## (3) "Uses descriptive activity names to name the activities in the
##     data set"
##
##     So we must get the following vector from the the
##     activity_labels.txt:
##
##     c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS",
##       "SITTING", "STANDING", "LAYING")
##
##     And reset the levels for the allData's activity column
l <- as.character(read.table("UCI HAR Dataset/activity_labels.txt")$V2)
allData$activity <- as.factor(allData$activity)
levels(allData$activity) <- l


## (5) From the data set in step 4, creates a second, independent
##     tidy data set with the average of each variable for each
##     activity and each subject.
##
TidyData <- aggregate(allData[,3:ncol(allData)],
                      by=list(activity=allData$activity,subject = allData$subject),mean);


###################################################################
## WRITE THE Tidy data into a TXT file:
###################################################################
write.table(TidyData, "UCI_HAR_averages.txt", row.name=FALSE)


##EOF.
