setwd("UCI HAR Dataset")
test <- read.table("test/X_test.txt")
train <- read.table("train/X_train.txt")
trSub <- read.table("train/subject_train.txt")
teSub <- read.table("test/subject_test.txt")
trAct <- read.table("train/y_train.txt")
teAct <- read.table("test/y_test.txt")


labels <- read.table('activity_labels.txt')

title <- read.table("features.txt")
colnames(test) <- title[["V2"]]

a <- grepl("mean\\(\\)",names(test))
b <- grepl("std\\(\\)",names(test))
test <- test[,a|b]

colnames(train) <- title[["V2"]]

a <- grepl("mean\\(\\)",names(train))
b <- grepl("std\\(\\)",names(train))
train <- train[,a|b]

test[,"Subject"] <- teSub[["V1"]]
train[,"Subject"] <- trSub[["V1"]]

test[,"Activity"] <- teAct[["V1"]]
train[,"Activity"] <- trAct[["V1"]]
test$Activity <- factor(test$Activity)
levels(test$Activity) <- labels$'V2'
train$Activity <- factor(train$Activity)
levels(train$Activity) <- labels$'V2'


df <- join(test,train)
dMelt <- melt(df,id = c("Subject","Activity"))
tidyData <- dcast(dMelt,Subject+Activity ~ variable,mean)
tidyData
