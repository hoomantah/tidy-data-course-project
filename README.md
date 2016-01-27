## Getting and Cleaning Data Course Project
This is the project github repo for the Johns Hopkins University, **Getting and Cleaning Data** course

### Intro
The data used for this project are from UCI Human Activity Recognition dataset. You can find detailed information [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.


### How To Run The Analysis
First, download the zipped dataset from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), and unzip the source files and directories into the folder where the *`run_analysis.R`* is located.

The script checks if the files are located correctly. Notice that the unzipped files must be under the `UCI HAR Dataset/` folder of the working directory.

Run the script, and if no errors, it may take a while to produce the output file containing tidy data, named `UCI_HAR_averages.txt`.

### How Does The Analysis Work
Shortly, the script follows the following steps:

- Check for the required files, and stop if any of them is missed.
- Find the required features column indeces and names, from the `features.txt`.
- Clean the feature names to a little more readable ones.
- Load the **Test** & **Train** datasets and keep the features data we want.
- Fix the variable names cleaned.
- Load respecting *activity* labels and *subject IDs* for each record.
- Merge the datasets altogether.
- Change the *activity* labels into *descriptive* ones: ***`"WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS","SITTING", "STANDING", "LAYING"`***.
- *Aggregate* the average of all features, by all subjects, for each activity.
- Save the final data into `UCI_HAR_averages.txt`.



### Summary
The assignment was to create one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

### The CodeBook
There are more information about the variables in the CodeBook.MD file.


> **Note:**

> - Source files of the database (*unzipped*) are not small; the order of **100MB**.
> - Running the script requires enough memory (aka *RAM*) for loading the datasets from the disk.
> - The `UCI_HAR_averages.txt` has the blank separator of (" "); anyways you can read it using `read.table` command in **R**.
> - Order of the final output variables are:
> 
> | activity | subject | tBodyAccMeanX |  ...  |
> | :----------------------------- | :-----: | ------------: | :---: |
> | WALKING                      | 1   |  0.277330758736842    | ...   |
> | WALKING_UPSTAIRS      | 1   |  0.255461689622641   | ...   |
> | WALKING_DOWNSTAIRS | 1   |  0.289188320408163  | ...   |



Good luck :)
`Hoomant`
