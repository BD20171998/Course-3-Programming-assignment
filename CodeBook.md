Each row in the data set "merged_data2" (aka the tidy data set) contains averages of the measurements of 79 variables for each subject grouped by each subject's numeric code and their corresponding activity they had completed.

Activities completed by the subjects were taken from "Y_test.txt" and "y_train.". Their activity codes listed in those files were converted as listed below to give a more useful description of the activity completed:

Activities descriptions were 
1 -> Walking
2 -> Walking Upstairs
3 -> Walking Downstairs
4 -> Sitting
5 -> Standing
6 -> Laying


The measurements for the 79 variables used to calculate their averages were extracted from the original data sets "X_test.txt" & "X_train.txt". The names of these variables, used to calculate the averages for the tidy data set, are listed below as given in the "features.txt" file:

tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-mean()
tBodyAccMag-std()
tGravityAccMag-mean()
tGravityAccMag-std()
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
tBodyGyroMag-mean()
tBodyGyroMag-std()
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAcc-meanFreq()-X
fBodyAcc-meanFreq()-Y
fBodyAcc-meanFreq()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyAccJerk-meanFreq()-X
fBodyAccJerk-meanFreq()-Y
fBodyAccJerk-meanFreq()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyGyro-meanFreq()-X
fBodyGyro-meanFreq()-Y
fBodyGyro-meanFreq()-Z
fBodyAccMag-mean()
fBodyAccMag-std()
fBodyAccMag-meanFreq()
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()
fBodyBodyAccJerkMag-meanFreq()
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()
fBodyBodyGyroMag-meanFreq()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()
fBodyBodyGyroJerkMag-meanFreq()

Column names for the tidy data set are listed below:

1 - Subject
2 - Activity
3 - Average Time per activity for the subject: BodyAcc-mean()-X
4 - Average Time per activity for the subject: BodyAcc-mean()-Y
5 - Average Time per activity for the subject: BodyAcc-mean()-Z
6 - Average Time per activity for the subject: BodyAcc-std()-X
7 - Average Time per activity for the subject: BodyAcc-std()-Y
8 - Average Time per activity for the subject: BodyAcc-std()-Z
9 - Average Time per activity for the subject: GravityAcc-mean()-X
10 - Average Time per activity for the subject: GravityAcc-mean()-Y
11 - Average Time per activity for the subject: GravityAcc-mean()-Z
12 - Average Time per activity for the subject: GravityAcc-std()-X
13 - Average Time per activity for the subject: GravityAcc-std()-Y
14 - Average Time per activity for the subject: GravityAcc-std()-Z
15 - Average Time per activity for the subject: BodyAccJerk-mean()-X
16 - Average Time per activity for the subject: BodyAccJerk-mean()-Y
17 - Average Time per activity for the subject: BodyAccJerk-mean()-Z
18 - Average Time per activity for the subject: BodyAccJerk-std()-X
19 - Average Time per activity for the subject: BodyAccJerk-std()-Y
20 - Average Time per activity for the subject: BodyAccJerk-std()-Z
21 - Average Time per activity for the subject: BodyGyro-mean()-X
22 - Average Time per activity for the subject: BodyGyro-mean()-Y
23 - Average Time per activity for the subject: BodyGyro-mean()-Z
24 - Average Time per activity for the subject: BodyGyro-std()-X
25 - Average Time per activity for the subject: BodyGyro-std()-Y
26 - Average Time per activity for the subject: BodyGyro-std()-Z
27 - Average Time per activity for the subject: BodyGyroJerk-mean()-X
28 - Average Time per activity for the subject: BodyGyroJerk-mean()-Y
29 - Average Time per activity for the subject: BodyGyroJerk-mean()-Z
30 - Average Time per activity for the subject: BodyGyroJerk-std()-X
31 - Average Time per activity for the subject: BodyGyroJerk-std()-Y
32 - Average Time per activity for the subject: BodyGyroJerk-std()-Z
33 - Average Time per activity for the subject: BodyAccMag-mean()
34 - Average Time per activity for the subject: BodyAccMag-std()
35 - Average Time per activity for the subject: GravityAccMag-mean()
36 - Average Time per activity for the subject: GravityAccMag-std()
37 - Average Time per activity for the subject: BodyAccJerkMag-mean()
38 - Average Time per activity for the subject: BodyAccJerkMag-std()
39 - Average Time per activity for the subject: BodyGyroMag-mean()
40 - Average Time per activity for the subject: BodyGyroMag-std()
41 - Average Time per activity for the subject: BodyGyroJerkMag-mean()
42 - Average Time per activity for the subject: BodyGyroJerkMag-std()
43 - Average Frequency of activity for the subject: BodyAcc-mean()-X
44 - Average Frequency of activity for the subject: BodyAcc-mean()-Y
45 - Average Frequency of activity for the subject: BodyAcc-mean()-Z
46 - Average Frequency of activity for the subject: BodyAcc-std()-X
47 - Average Frequency of activity for the subject: BodyAcc-std()-Y
48 - Average Frequency of activity for the subject: BodyAcc-std()-Z
49 - Average Frequency of activity for the subject: BodyAcc-meanFreq()-X
50 - Average Frequency of activity for the subject: BodyAcc-meanFreq()-Y
51 - Average Frequency of activity for the subject: BodyAcc-meanFreq()-Z
52 - Average Frequency of activity for the subject: BodyAccJerk-mean()-X
53 - Average Frequency of activity for the subject: BodyAccJerk-mean()-Y
54 - Average Frequency of activity for the subject: BodyAccJerk-mean()-Z
55 - Average Frequency of activity for the subject: BodyAccJerk-std()-X
56 - Average Frequency of activity for the subject: BodyAccJerk-std()-Y
57 - Average Frequency of activity for the subject: BodyAccJerk-std()-Z
58 - Average Frequency of activity for the subject: BodyAccJerk-meanFreq()-X
59 - Average Frequency of activity for the subject: BodyAccJerk-meanFreq()-Y
60 - Average Frequency of activity for the subject: BodyAccJerk-meanFreq()-Z
61 - Average Frequency of activity for the subject: BodyGyro-mean()-X
62 - Average Frequency of activity for the subject: BodyGyro-mean()-Y
63 - Average Frequency of activity for the subject: BodyGyro-mean()-Z
64 - Average Frequency of activity for the subject: BodyGyro-std()-X
65 - Average Frequency of activity for the subject: BodyGyro-std()-Y
66 - Average Frequency of activity for the subject: BodyGyro-std()-Z
67 - Average Frequency of activity for the subject: BodyGyro-meanFreq()-X
68 - Average Frequency of activity for the subject: BodyGyro-meanFreq()-Y
69 - Average Frequency of activity for the subject: BodyGyro-meanFreq()-Z
70 - Average Frequency of activity for the subject: BodyAccMag-mean()
71 - Average Frequency of activity for the subject: BodyAccMag-std()
72 - Average Frequency of activity for the subject: BodyAccMag-meanFreq()
73 - Average Frequency of activity for the subject: BodyBodyAccJerkMag-mean()
74 - Average Frequency of activity for the subject: BodyBodyAccJerkMag-std()
75 - Average Frequency of activity for the subject: BodyBodyAccJerkMag-meanFreq()
76 - Average Frequency of activity for the subject: BodyBodyGyroMag-mean()
77 - Average Frequency of activity for the subject: BodyBodyGyroMag-std()
78 - Average Frequency of activity for the subject: BodyBodyGyroMag-meanFreq()
79 - Average Frequency of activity for the subject: BodyBodyGyroJerkMag-mean()
80 - Average Frequency of activity for the subject: BodyBodyGyroJerkMag-std()
81 - Average Frequency of activity for the subject: BodyBodyGyroJerkMag-meanFreq()


