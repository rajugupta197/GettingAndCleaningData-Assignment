# Code Book

This code book summarizes the resulting data fields in `tidydata.txt`.

## Identifiers

* `SubjectIndex` - The ID of the test subject
* `Activity` - The type of activity performed when the corresponding measurements were taken

## Measurements

* `timeBodyAccelerometerMeanX` 
* `timeBodyAccelerometerMeanY` 
* `timeBodyAccelerometerMeanZ` 
* `timeBodyAccelerometerStdDevX` 
* `timeBodyAccelerometerStdDevY` 
* `timeBodyAccelerometerStdDevZ` 
* `timeGravityAccelerometerMeanX` 
* `timeGravityAccelerometerMeanY` 
* `timeGravityAccelerometerMeanZ` 
* `timeGravityAccelerometerStdDevX` 
* `timeGravityAccelerometerStdDevY` 
* `timeGravityAccelerometerStdDevZ` 
* `timeBodyAccelerometerJerkMeanX` 
* `timeBodyAccelerometerJerkMeanY` 
* `timeBodyAccelerometerJerkMeanZ` 
* `timeBodyAccelerometerJerkStdDevX` 
* `timeBodyAccelerometerJerkStdDevY` 
* `timeBodyAccelerometerJerkStdDevZ` 
* `timeBodyGyroscopeMeanX` 
* `timeBodyGyroscopeMeanY` 
* `timeBodyGyroscopeMeanZ` 
* `timeBodyGyroscopeStdDevX` 
* `timeBodyGyroscopeStdDevY` 
* `timeBodyGyroscopeStdDevZ` 
* `timeBodyGyroscopeJerkMeanX` 
* `timeBodyGyroscopeJerkMeanY` 
* `timeBodyGyroscopeJerkMeanZ` 
* `timeBodyGyroscopeJerkStdDevX` 
* `timeBodyGyroscopeJerkStdDevY` 
* `timeBodyGyroscopeJerkStdDevZ` 
* `timeBodyAccelerometerMagnitudeMean` 
* `timeBodyAccelerometerMagnitudeStdDev` 
* `timeGravityAccelerometerMagnitudeMean` 
* `timeGravityAccelerometerMagnitudeStdDev` 
* `timeBodyAccelerometerJerkMagnitudeMean` 
* `timeBodyAccelerometerJerkMagnitudeStdDev` 
* `timeBodyGyroscopeMagnitudeMean` 
* `timeBodyGyroscopeMagnitudeStdDev` 
* `timeBodyGyroscopeJerkMagnitudeMean` 
* `timeBodyGyroscopeJerkMagnitudeStdDev` 
* `frequencyBodyAccelerometerMeanX` 
* `frequencyBodyAccelerometerMeanY` 
* `frequencyBodyAccelerometerMeanZ` 
* `frequencyBodyAccelerometerStdDevX` 
* `frequencyBodyAccelerometerStdDevY` 
* `frequencyBodyAccelerometerStdDevZ` 
* `frequencyBodyAccelerometerJerkMeanX` 
* `frequencyBodyAccelerometerJerkMeanY` 
* `frequencyBodyAccelerometerJerkMeanZ` 
* `frequencyBodyAccelerometerJerkStdDevX` 
* `frequencyBodyAccelerometerJerkStdDevY` 
* `frequencyBodyAccelerometerJerkStdDevZ` 
* `frequencyBodyGyroscopeMeanX` 
* `frequencyBodyGyroscopeMeanY` 
* `frequencyBodyGyroscopeMeanZ` 
* `frequencyBodyGyroscopeStdDevX` 
* `frequencyBodyGyroscopeStdDevY` 
* `frequencyBodyGyroscopeStdDevZ` 
* `frequencyBodyAccelerometerMagnitudeMean` 
* `frequencyBodyAccelerometerMagnitudeStdDev` 
* `frequencyBodyAccelerometerJerkMagnitudeMean` 
* `frequencyBodyAccelerometerJerkMagnitudeStdDev`
* `frequencyBodyGyroscopeMagnitudeMean` 
* `frequencyBodyGyroscopeMagnitudeStdDev` 
* `frequencyBodyGyroscopeJerkMagnitudeMean` 
* `frequencyBodyGyroscopeJerkMagnitudeStdDev` 

## Activity Labels

* `WALKING` (value `1`): subject was walking during the test
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test
* `SITTING` (value `4`): subject was sitting during the test
* `STANDING` (value `5`): subject was standing during the test
* `LAYING` (value `6`): subject was laying down during the test

## Attribute Information
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### Notes
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
- The gyroscope units are rad/seg.
