tidySamsungData.txt CODEBOOK – 2014 August

subjectID
Identification code for one of thirty voluntary participants in the original experiment for Human Activity Recognition Using Smartphones.

Integer values from 1 to 30

activityLabel
One of six types of activities performed by the voluntary participants.

Walking
Walking Upstairs
Walking Downstairs
Sitting
Standing
Laying

The following measurements were taken from the Human Activity Recognition Using Smartphones Dataset Version 1.0

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAccXYZ and tGyroXYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAccXYZ and tGravityAccXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerkXYZ and tBodyGyroJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAccXYZ, fBodyAccJerkXYZ, fBodyGyroXYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAccXYZ
tGravityAccXYZ
tBodyAccJerkXYZ
tBodyGyroXYZ
tBodyGyroJerkXYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAccXYZ
fBodyAccJerkXYZ
fBodyGyroXYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt' from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following measurements were extracted from the original dataset and their means were calculated:

tBodyAccmeanX

tBodyAccmeanY

tBodyAccmeanZ

tBodyAccstdX

tBodyAccstdY

tBodyAccstdZ

tGravityAccmeanX

tGravityAccmeanY

tGravityAccmeanZ

tGravityAccstdX

tGravityAccstdY

tGravityAccstdZ

tBodyAccJerkmeanX

tBodyAccJerkmeanY

tBodyAccJerkmeanZ

tBodyAccJerkstdX

tBodyAccJerkstdY

tBodyAccJerkstdZ

tBodyGyromeanX

tBodyGyromeanY

tBodyGyromeanZ

tBodyGyrostdX

tBodyGyrostdY

tBodyGyrostdZ

tBodyGyroJerkmeanX

tBodyGyroJerkmeanY

tBodyGyroJerkmeanZ

tBodyGyroJerkstdX

tBodyGyroJerkstdY

tBodyGyroJerkstdZ

tBodyAccMagmean

tBodyAccMagstd

tGravityAccMagmean

tGravityAccMagstd

tBodyAccJerkMagmean

tBodyAccJerkMagstd

tBodyGyroMagmean

tBodyGyroMagstd

tBodyGyroJerkMagmean

tBodyGyroJerkMagstd

fBodyAccmeanX

fBodyAccmeanY

fBodyAccmeanZ

fBodyAccstdX

fBodyAccstdY

fBodyAccstdZ

fBodyAccmeanFreqX

fBodyAccmeanFreqY

fBodyAccmeanFreqZ

fBodyAccJerkmeanX

fBodyAccJerkmeanY

fBodyAccJerkmeanZ

fBodyAccJerkstdX

fBodyAccJerkstdY

fBodyAccJerkstdZ

fBodyAccJerkmeanFreqX

fBodyAccJerkmeanFreqY

fBodyAccJerkmeanFreqZ

fBodyGyromeanX

fBodyGyromeanY

fBodyGyromeanZ

fBodyGyrostdX

fBodyGyrostdY

fBodyGyrostdZ

fBodyGyromeanFreqX

fBodyGyromeanFreqY

fBodyGyromeanFreqZ

fBodyAccMagmean

fBodyAccMagstd

fBodyAccMagmeanFreq

fBodyBodyAccJerkMagmean

fBodyBodyAccJerkMagstd

fBodyBodyAccJerkMagmeanFreq

fBodyBodyGyroMagmean

fBodyBodyGyroMagstd

fBodyBodyGyroMagmeanFreq

fBodyBodyGyroJerkMagmean

fBodyBodyGyroJerkMagstd

fBodyBodyGyroJerkMagmeanFreq

angletBodyAccMeangravity

angletBodyAccJerkMeangravityMean

angletBodyGyroMeangravityMean

angletBodyGyroJerkMeangravityMean

angleXgravityMean

angleYgravityMean

angleZgravityMean
