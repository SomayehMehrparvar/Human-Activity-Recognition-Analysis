install.packages("dplyr")
library(dplyr)
# Step 1: Download and unzip the dataset
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "data.zip")
unzip("data.zip" )

# Step 2: Load necessary files
features <- read.table("./UCI HAR Dataset/features.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Step 3: Merge the training and test datasets
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

X <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)

# Step 4: Extract only the measurements on the mean and standard deviation
mean_std_indices <- grep("-(mean|std)\\(\\)", features$V2)
X_mean_std <- X[, mean_std_indices]
names(X_mean_std) <- features$V2[mean_std_indices]

# Step 5: Use descriptive activity names
y$V1 <- factor(y$V1, levels = 1:6, labels = activity_labels$V2)

# Step 6: Label the dataset with descriptive variable names
names(subject) <- "subject"
names(y) <- "activity"
data <- cbind(subject, y, X_mean_std)

# Step 7: Create a second tidy dataset with the average of each variable for each activity and each subject

tidy_data <- data %>%
        group_by(subject, activity) %>%
        summarise_all(funs(mean))

# Write tidy dataset to a file
write.table(tidy_data, file = "tidy_data.txt", row.names = FALSE)

# Read the tidy data into R
tidy_data <- read.table("tidy_data.txt", header = TRUE)

# View the first few rows of the tidy data
head(tidy_data)



names(X_mean_std) <- features$V2[mean_std_indices]

# Step 5: Use descriptive activity names
y$V1 <- factor(y$V1, levels = 1:6, labels = activity_labels$V2)

# Step 6: Label the dataset with descriptive variable names
names(subject) <- "subject"
names(y) <- "activity"
data <- cbind(subject, y, X_mean_std)

# Step 7: Create a second tidy dataset with the average of each variable for each activity and each subject

tidy_data <- data %>%
        group_by(subject, activity) %>%
        summarise_all(funs(mean))

# Write tidy dataset to a file
write.table(tidy_data, file = "tidy_data.txt", row.names = FALSE)

# Read the tidy data into R
tidy_data <- read.table("tidy_data.txt", header = TRUE)

# View the first few rows of the tidy data
head(tidy_data)
view(tidy_data)

