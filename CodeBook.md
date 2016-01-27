## Getting and Cleaning Data Course Project
by Hooman Taherinia

**Dataset:** `UCI_HAR_averages.txt`

### CodeBook.md
Descriptions of the variables, the data, and any transformations or work that is performed to clean up the data.


### Source
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws



### Source Data
The data used for this project are from UCI Human Activity Recognition dataset. You can find detailed information [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) (*from* **UCI Machine Learning Repository**).

Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.



### Source Dataset Info
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For the analysis, we extract only the variables related to the ***mean*** and ***standard deviation*** measurements.

| DS Attributes | Values |
| --- | --- |
| Data Set Characteristics:  | Multivariate, Time-Series |
| Number of Instances: | 10299 |
| Area: | Computer |
| Attribute Characteristics: | N/A |
| Number of Attributes: | 561 |
| Date Donated | 2012-12-10 |
| Associated Tasks: | Classification, Clustering |
| Missing Values? | N/A |

### Results Dataset Attributes
There are **`180`** records, produced by the analysis script; for each record in the dataset it is provided: 

- Its *activity* label. 
- An *identifier* of the subject who carried out the experiment.
- A **66-feature** vector with average of time and frequency means and standard deviations, from domain variables. 

### Analysis Steps
- Check for the required files, and stop if any of them is missed.
- Find the required features column indeces and names, from the `features.txt`.
- Clean the feature names to a little more readable ones.
- Load the **Test** & **Train** datasets and keep the features data we want.
- Fix the variable names cleaned.
- Load respecting *activity* labels and *subject IDs* for each record.
- Merge the datasets altogether.
- Change the *activity* labels into *descriptive* ones: ***`"WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS","SITTING", "STANDING", "LAYING"`***.
- *Aggregate* the average of all features, by all subjects, for *each activity*.
- Save the final data into `UCI_HAR_averages.txt`.

## Variables
We renamed the feature (variables) names to more convenient ones listed below:

* *`activity`* - *Activity* label for the measurement
* *`subject`* - Experiment *subject ID*
* `tBodyAccMeanX`
* `tBodyAccMeanY`
* `tBodyAccMeanZ`
* `tBodyAccStDevX`
* `tBodyAccStDevY`
* `tBodyAccStDevZ`
* `tGravityAccMeanX`
* `tGravityAccMeanY`
* `tGravityAccMeanZ`
* `tGravityAccStDevX`
* `tGravityAccStDevY`
* `tGravityAccStDevZ`
* `tBodyAccJerkMeanX`
* `tBodyAccJerkMeanY`
* `tBodyAccJerkMeanZ`
* `tBodyAccJerkStDevX`
* `tBodyAccJerkStDevY`
* `tBodyAccJerkStDevZ`
* `tBodyGyroMeanX`
* `tBodyGyroMeanY`
* `tBodyGyroMeanZ`
* `tBodyGyroStDevX`
* `tBodyGyroStDevY`
* `tBodyGyroStDevZ`
* `tBodyGyroJerkMeanX`
* `tBodyGyroJerkMeanY`
* `tBodyGyroJerkMeanZ`
* `tBodyGyroJerkStDevX`
* `tBodyGyroJerkStDevY`
* `tBodyGyroJerkStDevZ`
* `tBodyAccMagMean`
* `tBodyAccMagStDev`
* `tGravityAccMagMean`
* `tGravityAccMagStDev`
* `tBodyAccJerkMagMean`
* `tBodyAccJerkMagStDev`
* `tBodyGyroMagMean`
* `tBodyGyroMagStDev`
* `tBodyGyroJerkMagMean`
* `tBodyGyroJerkMagStDev`
* `fBodyAccMeanX`
* `fBodyAccMeanY`
* `fBodyAccMeanZ`
* `fBodyAccStDevX`
* `fBodyAccStDevY`
* `fBodyAccStDevZ`
* `fBodyAccJerkMeanX`
* `fBodyAccJerkMeanY`
* `fBodyAccJerkMeanZ`
* `fBodyAccJerkStDevX`
* `fBodyAccJerkStDevY`
* `fBodyAccJerkStDevZ`
* `fBodyGyroMeanX`
* `fBodyGyroMeanY`
* `fBodyGyroMeanZ`
* `fBodyGyroStDevX`
* `fBodyGyroStDevY`
* `fBodyGyroStDevZ`
* `fBodyAccMagMean`
* `fBodyAccMagStDev`
* `fBodyBodyAccJerkMagMean`
* `fBodyBodyAccJerkMagStDev`
* `fBodyBodyGyroMagMean`
* `fBodyBodyGyroMagStDev`
* `fBodyBodyGyroJerkMagMean`
* `fBodyBodyGyroJerkMagStDev`


