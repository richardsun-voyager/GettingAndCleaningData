# GettingAndCleaningData

GettingAndCleaningData Project
Version 1.0

Sun Xiaobing
https://github.com/topsun888

This project aims to create a tidy data set for Human Activity Recognition Experiment, through merging two data set, extracting measures, using descriptive activity names, labelling the data set, and calculating the means of
variables for each subject and activity by "melt" and "dcast"

This project includes two files:
1.output.txt the means of variables for each avtivity and subject
2.run_analysis.R the codes which read the original data given by the assignments and take 5 procedures according to the instruction, finally create and output a new data set

output.txt includes 81 columns(all of which are measures including mean or std except the activity and subject), the names are as following:
[1] tBodyAcc-mean()-X               tBodyAcc-mean()-Y              
 [3] tBodyAcc-mean()-Z               tBodyAcc-std()-X               
 [5] tBodyAcc-std()-Y                tBodyAcc-std()-Z               
 [7] tGravityAcc-mean()-X            tGravityAcc-mean()-Y           
 [9] tGravityAcc-mean()-Z            tGravityAcc-std()-X            
[11] tGravityAcc-std()-Y             tGravityAcc-std()-Z            
[13] tBodyAccJerk-mean()-X           tBodyAccJerk-mean()-Y          
[15] tBodyAccJerk-mean()-Z           tBodyAccJerk-std()-X           
[17] tBodyAccJerk-std()-Y            tBodyAccJerk-std()-Z           
[19] tBodyGyro-mean()-X              tBodyGyro-mean()-Y             
[21] tBodyGyro-mean()-Z              tBodyGyro-std()-X              
[23] tBodyGyro-std()-Y               tBodyGyro-std()-Z              
[25] tBodyGyroJerk-mean()-X          tBodyGyroJerk-mean()-Y         
[27] tBodyGyroJerk-mean()-Z          tBodyGyroJerk-std()-X          
[29] tBodyGyroJerk-std()-Y           tBodyGyroJerk-std()-Z          
[31] tBodyAccMag-mean()              tBodyAccMag-std()              
[33] tGravityAccMag-mean()           tGravityAccMag-std()           
[35] tBodyAccJerkMag-mean()          tBodyAccJerkMag-std()          
[37] tBodyGyroMag-mean()             tBodyGyroMag-std()             
[39] tBodyGyroJerkMag-mean()         tBodyGyroJerkMag-std()         
[41] fBodyAcc-mean()-X               fBodyAcc-mean()-Y              
[43] fBodyAcc-mean()-Z               fBodyAcc-std()-X               
[45] fBodyAcc-std()-Y                fBodyAcc-std()-Z               
[47] fBodyAcc-meanFreq()-X           fBodyAcc-meanFreq()-Y          
[49] fBodyAcc-meanFreq()-Z           fBodyAccJerk-mean()-X          
[51] fBodyAccJerk-mean()-Y           fBodyAccJerk-mean()-Z          
[53] fBodyAccJerk-std()-X            fBodyAccJerk-std()-Y           
[55] fBodyAccJerk-std()-Z            fBodyAccJerk-meanFreq()-X      
[57] fBodyAccJerk-meanFreq()-Y       fBodyAccJerk-meanFreq()-Z      
[59] fBodyGyro-mean()-X              fBodyGyro-mean()-Y             
[61] fBodyGyro-mean()-Z              fBodyGyro-std()-X              
[63] fBodyGyro-std()-Y               fBodyGyro-std()-Z              
[65] fBodyGyro-meanFreq()-X          fBodyGyro-meanFreq()-Y         
[67] fBodyGyro-meanFreq()-Z          fBodyAccMag-mean()             
[69] fBodyAccMag-std()               fBodyAccMag-meanFreq()         
[71] fBodyBodyAccJerkMag-mean()      fBodyBodyAccJerkMag-std()      
[73] fBodyBodyAccJerkMag-meanFreq()  fBodyBodyGyroMag-mean()        
[75] fBodyBodyGyroMag-std()          fBodyBodyGyroMag-meanFreq()    
[77] fBodyBodyGyroJerkMag-mean()     fBodyBodyGyroJerkMag-std()     
[79] fBodyBodyGyroJerkMag-meanFreq()
