# Getting-and-Cleaning-Data-Project-3.0
Provided is the "Step.R" script file. Here is a step by step explanation of what it does: <br />
1. It sets the working directory to the folder containing all the data: "UCI HAR Dataset". (Line 1) <br />
2. It loads the data for "test/X_test.txt", "train/X_train.txt", (the recorded data), "train/subject_train.txt", "test/subject_test.txt", (the subject id), "train/y_train.txt", "test/y_test.txt" (identifies what activities were performed), and 'activity_labels.txt' (labels that identify activities). (Lines 2-10) <br />
3. Next, it read the "features.txt" and uses it to label the columns of the dataframe. (Lines 12-13 and 19) <br />
4. Using the "grepl" function, it removes data not dealing with the mean or the standard deviations. (Lines 15-23) <br />
5. It adds columns to both the training and testing data frames identifying subjects. (Lines 25-26) <br />
6. It adds columns to both the training and testing data frames identifying what activities were performed. (Lines 28-29) <br />
7. It then casts those activities as a factor, and replaces the numbers with the labels given in "activity_labels.txt". (Lines 30-33) <br />
8. It combines the testing and training dataframes (Line 36) <br />
9. It melts and recasts the dataframe as tidyData, finding the mean of every column, grouped by Subject and Activity. (Lines 37-39) <br />

t's in front of variables indicate a three dimensional vector, whereas f's indicate the variable was a result of a fourier transform. "Acc" is short for accelerator and "Gyro" is short for gyroscope and "Mag" is short for Magnitude.
