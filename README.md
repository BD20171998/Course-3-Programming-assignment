This is a guide to the R script "run_analysis.R" 
===================================================================================
The data used to create the tidy data set for the Course 3-week 4 assignment was used from the following zip file downloaded from the UCI site:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

30 subjects participated in the study were assigned a numeric code from 1-30 as their identifier. 

The data files extracted from the zip file used to create the data sets for the assignment along with their descriptions are as follows:

Test data

*subject_test.txt  - List of all subjects, by numeric code, in the "test" group with each row corresponding to an action the subject completed as listed in the "Y_test.txt" file

*Y_test.txt - List of all activities, by numeric code, completed by the subjects in the "test" group

*X_test.txt - Measurements taken for each subject in the "test" group for their activity completed

Train data

*subject_train.txt  - List of all subjects, by numeric code, in the "Train" group with each row corresponding to an action the subject completed as listed in the "Y_train.txt" file

*Y_train.txt - List of all activities, by numeric code, completed by the subjects in the "Train" group

*X_train.txt - Measurements taken for each subject in the "Train" group for their activity completed

Labels 
*features.txt - Listing of all variables measured from the original data sets downloaded (561 total)

*activity_labels.txt - Listing of all activities each subject complected with their respective code number. Ranges from 1-6

===================================================================================
####  Assembling the first data set #####

Data for the "test" group was first read into separate variables that were then combined to create a temporary data set. This temporary data set included columns for the subject's numeric code and activity code. The same procedure was done for the "Train" data. 

The temporary data sets were then merged together to form the "merged_data" data set and column names were assigned for the variables based on the names specified in the "features.txt" file. ("col_labels")

The "merged_data" data set was then subsetted to keep only the variables required by the assignment and the data in the "Activity" column was transformed from numeric codes to more meaningful names for the activity performed by a subject. Variables that contained a mean or standard deviation measurement were kept (79 total from the original 561 variables listed in the "features.txt" file)
===================================================================================
####  Assembling the second data set aka tidy data set#####

Means were taken for each variable in the first data set ("merged_data") and grouped by the subject's numeric code then activity. This was accomplished using the aggregate function to assemble the tidy data set (listed in the code as "merged_data2").

The column names for the tidy data set were created by first creating a separate character vector ("name_list") to house the current column names. Next, this character vector was transformed as follows:

1.Assigning a simple character vector of size 2 for the first 2 elements in order to label the subjects and activities columns (columns 1-2)
2.Using the sub function to add more descriptive text for the time variables (columns 3-42)
3.Using the sub function to add more descriptive text for the frequency variables (columns 43-81)

The character vector, now with more descriptive column names, was used to rename the columns in the tidy data set for the final part of the assignment. A final script was written to create a text file to house the tidy data set.
