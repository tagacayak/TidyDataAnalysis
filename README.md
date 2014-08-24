==================================================================
Human Activity Recognition Using Smartphones Tidy Dataset
Version 1.0
Produced by: Tara Agacayak
https://github.com/tagacayak

==================================================================

Obtained and Tidied from: 
Human Activity Recognition Using Smartphones Dataset
Version 1.0

Originally created by:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the orignal team captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

For more information on the original experiement and datasets from which this
tidy dataset was created, please download this file: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


======================================
For tidySamsungData.txt, the data are organized into 180 rows and 88 columns.

- The first column represents the subject Identifier (subjectID) for each of      the 30 volunteers who participated in the experiement. 

- The second column represents the type of activity (activityLabel) being     measured.

- The remaining columns contain the mean values for each specific mean or 
  standard deviation value originally collected.

Please see the code book for more detailed information on all the variables
and values included in this file.


The dataset includes the following files:
=========================================

- 'README.txt'

- 'run_analysis.R': This is the code I used to acquire, merge and transform    and finally write out the tidy dataset.

- 'tidySamsungDataCodebook.pdf': This includes descriptions of the variables
   included in tidySamsungData.txt

Notes: 
======
You will be downloading this zipped file to your local working directory and you will need to unzip it.

"http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

I've anotated the code pretty heavily to describe what I'm trying to do at each
step. I've also included checks at various places to encourage you to make
sure your merged datasets carry forward the correct number of observations (rows) and variables (columns).

Where I extracted columns for the mean and standard deviation of each measurement, I included any column that had 'mean' or 'std' included in the
column name. This resulted in extracting 86 variables from the orignal dataset.

When I created "meaningful" variable names, I mostly just removed extraneous
characters that made it difficult to read the names. I did not change them all
to lower case because I found it more difficult to read the names.

Each row in the dataset has one record for each activity that each subject 
performed. To make this dataset even tidier, I think it would have been better
to created one row for each measurement for each activity for each subject, but
I didn't have time to create this tall and narrow version.


=========================================
License for the original work:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

For more information about this dataset contact: activityrecognition@smartlab.ws
