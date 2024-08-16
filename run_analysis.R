## Week 4 - Project

# Author: Leone Yisrael
date_of_project = date()
# [1] "Fri Aug 16 12:19:27 2024"

packages <- c("data.table", "reshape2")
sapply(packages, require, character.only=TRUE, quietly=TRUE)
path <- getwd()
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, file.path(path, "dataFiles.zip"))
unzip(zipfile = "dataFiles.zip")

activities_labels <- fread(file.path(path, "UCI HAR Dataset/activity_labels.txt")
                           , col.names = c("classLabels", "activityName"))
feature <- fread(file.path(path, "UCI HAR Dataset/features.txt")
                             , col.names = c("index", "featureNames"))

features_I_need <- grep("(mean|std)\\(\\)", feature[, featureNames])
measurements <- feature[features_I_need, featureNames]
measurements <- gsub('[()]', '', measurements)

## Train data
train <- fread(file.path(path, "UCI HAR Dataset/train/X_train.txt"))[, features_I_need, with = FALSE]
data.table::setnames(train, colnames(train), measurements)
trainActivities <- fread(file.path(path, "UCI HAR Dataset/train/Y_train.txt")
                         , col.names = c("Activity"))
trainSubjects <- fread(file.path(path, "UCI HAR Dataset/train/subject_train.txt")
                       , col.names = c("SubjectNum"))
train <- cbind(trainSubjects, trainActivities, train)

test <- fread(file.path(path, "UCI HAR Dataset/test/X_test.txt"))[, features_I_need, with = FALSE]
data.table::setnames(test, colnames(test), measurements)
testActivities <- fread(file.path(path, "UCI HAR Dataset/test/Y_test.txt")
                        , col.names = c("Activity"))
testSubjects <- fread(file.path(path, "UCI HAR Dataset/test/subject_test.txt")
                      , col.names = c("SubjectNum"))
test <- cbind(testSubjects, testActivities, test)

# merge datasets
combined <- rbind(train, test)

# Convert classLabels to activityName basically. More explicit. 
combined[["Activity"]] <- factor(combined[, Activity]
                                 , levels = activities_labels[["classLabels"]]
                                 , labels = activities_labels[["activityName"]])

combined[["SubjectNum"]] <- as.factor(combined[, SubjectNum])
combined <- reshape2::melt(data = combined, id = c("SubjectNum", "Activity"))
combined <- reshape2::dcast(data = combined, SubjectNum + Activity ~ variable, fun.aggregate = mean)

data.table::fwrite(x = combined, file = "tidyData.txt", quote = FALSE)
