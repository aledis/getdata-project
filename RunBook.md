Feature Selection 
=================
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain 
signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low 
pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and 
gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, 
tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, 
fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'.XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc.XYZ
- tGravityAcc.XYZ
- tBodyAccJerk.XYZ
- tBodyGyro.XYZ
- tBodyGyroJerk.XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc.XYZ
- fBodyAccJerk.XYZ
- fBodyGyro.XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value - denoted by .Mean in the features names
- std(): Standard deviation - denoted by .Stdev in the features names

Average of means and standard deviations was taken by subject and activity

The complete list of variables:

- activity
- subject
- Avg.tBodyAcc.Mean.X
- Avg.tBodyAcc.Mean.Y
- Avg.tBodyAcc.Mean.Z
- Avg.tBodyAcc.Stdev.X
- Avg.tBodyAcc.Stdev.Y
- Avg.tBodyAcc.Stdev.Z
- Avg.tGravityAcc.Mean.X
- Avg.tGravityAcc.Mean.Y
- Avg.tGravityAcc.Mean.Z
- Avg.tGravityAcc.Stdev.X
- Avg.tGravityAcc.Stdev.Y
- Avg.tGravityAcc.Stdev.Z
- Avg.tBodyAccJerk.Mean.X
- Avg.tBodyAccJerk.Mean.Y
- Avg.tBodyAccJerk.Mean.Z
- Avg.tBodyAccJerk.Stdev.X
- Avg.tBodyAccJerk.Stdev.Y
- Avg.tBodyAccJerk.Stdev.Z
- Avg.tBodyGyro.Mean.X
- Avg.tBodyGyro.Mean.Y
- Avg.tBodyGyro.Mean.Z
- Avg.tBodyGyro.Stdev.X
- Avg.tBodyGyro.Stdev.Y
- Avg.tBodyGyro.Stdev.Z
- Avg.tBodyGyroJerk.Mean.X
- Avg.tBodyGyroJerk.Mean.Y
- Avg.tBodyGyroJerk.Mean.Z
- Avg.tBodyGyroJerk.Stdev.X
- Avg.tBodyGyroJerk.Stdev.Y
- Avg.tBodyGyroJerk.Stdev.Z
- Avg.tBodyAccMag.Mean
- Avg.tBodyAccMag.Stdev
- Avg.tGravityAccMag.Mean
- Avg.tGravityAccMag.Stdev
- Avg.tBodyAccJerkMag.Mean
- Avg.tBodyAccJerkMag.Stdev
- Avg.tBodyGyroMag.Mean
- Avg.tBodyGyroMag.Stdev
- Avg.tBodyGyroJerkMag.Mean
- Avg.tBodyGyroJerkMag.Stdev
- Avg.fBodyAcc.Mean.X
- Avg.fBodyAcc.Mean.Y
- Avg.fBodyAcc.Mean.Z
- Avg.fBodyAcc.Stdev.X
- Avg.fBodyAcc.Stdev.Y
- Avg.fBodyAcc.Stdev.Z
- Avg.fBodyAccJerk.Mean.X
- Avg.fBodyAccJerk.Mean.Y
- Avg.fBodyAccJerk.Mean.Z
- Avg.fBodyAccJerk.Stdev.X
- Avg.fBodyAccJerk.Stdev.Y
- Avg.fBodyAccJerk.Stdev.Z
- Avg.fBodyGyro.Mean.X
- Avg.fBodyGyro.Mean.Y
- Avg.fBodyGyro.Mean.Z
- Avg.fBodyGyro.Stdev.X
- Avg.fBodyGyro.Stdev.Y
- Avg.fBodyGyro.Stdev.Z
- Avg.fBodyAccMag.Mean
- Avg.fBodyAccMag.Stdev
- Avg.fBodyBodyAccJerkMag.Mean
- Avg.fBodyBodyAccJerkMag.Stdev
- Avg.fBodyBodyGyroMag.Mean
- Avg.fBodyBodyGyroMag.Stdev
- Avg.fBodyBodyGyroJerkMag.Mean
- Avg.fBodyBodyGyroJerkMag.Stdev


