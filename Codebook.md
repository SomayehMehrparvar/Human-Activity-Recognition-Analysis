# Code Book for Human Activity Recognition Dataset

## Introduction

This codebook describes the variables, the data, and any transformations or work performed to clean up the data for the Human Activity Recognition Dataset.

## Variables

1. `subject`
   - Description: Identifier for the subject who performed the activity
   - Values: 1, 2, ..., 30

2. `activity`
   - Description: Type of activity performed by the subject
   - Values:
     - WALKING
     - WALKING_UPSTAIRS
     - WALKING_DOWNSTAIRS
     - SITTING
     - STANDING
     - LAYING

3. Time Domain Variables (Prefix: tBodyAcc, tGravityAcc, tBodyAccJerk, tBodyGyro,                   tBodyGyroJerk)

- Description: These variables represent accelerometer and gyroscope measurements in the time domain.
- Units: g (gravity unit, 1g = 9.81 m/s^2) for accelerometer readings; degrees/second for gyroscope readings.

4. Frequency Domain Variables (Prefix: fBodyAcc, fBodyAccJerk, fBodyGyro)

- Description: These variables represent accelerometer and gyroscope measurements in the frequency domain.
- Units: Hz (Hertz).

5. Magnitude Variables (Suffix: Mag)

- Description: These variables represent magnitude calculations derived from accelerometer and gyroscope measurements.
- Units: Varies depending on the specific measurement.


## Summaries

1. `average_acceleration`
   - Description: Average acceleration calculated from the accelerometer readings
   - Calculation: Mean of the accelerometer readings for each activity and each subject
   - Units: g (gravity unit, 1g = 9.81 m/s^2)

2. `average_gyro`
   - Description: Average gyroscope readings
   - Calculation: Mean of the gyroscope readings for each activity and each subject
   - Units: degrees/second

3. `average_magnitude`
   - Description: Average magnitude calculated from the accelerometer and gyroscope readings
   - Calculation: Mean of the magnitude calculations for each activity and each subject
   - Units: Varies depending on the specific measurement

4. `standard_deviation_acceleration`
   - Description: Standard deviation of acceleration calculated from the accelerometer readings
   - Calculation: Standard deviation of the accelerometer readings for each activity and each subject
   - Units: g (gravity unit, 1g = 9.81 m/s^2)

5. `standard_deviation_gyro`
   - Description: Standard deviation of gyroscope readings
   - Calculation: Standard deviation of the gyroscope readings for each activity and each subject
   - Units: degrees/second

6. `standard_deviation_magnitude`
   - Description: Standard deviation of magnitude calculated from the accelerometer and gyroscope readings
   - Calculation: Standard deviation of the magnitude calculations for each activity and each subject
   - Units: Varies depending on the specific measurement


## Data Transformation

1. Data Cleaning
   - Description: Removed missing values and outliers from the dataset.
   - Rationale: Ensured data quality and accuracy for analysis.

2. Variable Renaming
   - Description: Renamed variables to be more descriptive and readable.
   - Rationale: Improved interpretability of the dataset.

3. Activity Labeling
   - Description: Replaced activity codes with descriptive activity names.
   - Rationale: Enhanced understandability of activity labels.

...

## References

- Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra, Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL), 2012.
- [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

