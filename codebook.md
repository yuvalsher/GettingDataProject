Code Book for clean_data.txt file
========================================================

This file describes the clean_data.txt data file.  
Read the file into R using the default read.table().  
This data is based on the UCI HAR Dataset, obtained from:  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
  
The data includes mean values of attributes, grouped by subject and activity. 
The full detils of the data processing done are in README.md
  
The first two columns are the grouping columns:  
1.  subject   : A number in the range 1:30, that specified the test subject.  
2.  activity  : One of 6 activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING  
      
The rest of the columns contain the mean calculated for each group on the following measurments:  
3.  tBodyAcc-mean()-X            
4.  tBodyAcc-mean()-Y            
5.  tBodyAcc-mean()-Z            
6.  tGravityAcc-mean()-X         
7.  tGravityAcc-mean()-Y         
8.  tGravityAcc-mean()-Z         
9.  tBodyAccJerk-mean()-X        
10. tBodyAccJerk-mean()-Y        
11. tBodyAccJerk-mean()-Z        
12. tBodyGyro-mean()-X           
13. tBodyGyro-mean()-Y           
14. tBodyGyro-mean()-Z           
15. tBodyGyroJerk-mean()-X       
16. tBodyGyroJerk-mean()-Y       
17. tBodyGyroJerk-mean()-Z       
18. tBodyAccMag-mean()           
19. tGravityAccMag-mean()        
20. tBodyAccJerkMag-mean()       
21. tBodyGyroMag-mean()          
22. tBodyGyroJerkMag-mean()      
23. fBodyAcc-mean()-X            
24. fBodyAcc-mean()-Y            
25. fBodyAcc-mean()-Z            
26. fBodyAccJerk-mean()-X        
27. fBodyAccJerk-mean()-Y        
28. fBodyAccJerk-mean()-Z        
29. fBodyGyro-mean()-X           
30. fBodyGyro-mean()-Y           
31. fBodyGyro-mean()-Z           
32. fBodyAccMag-mean()           
33. fBodyBodyAccJerkMag-mean()   
34. fBodyBodyGyroMag-mean()      
35. fBodyBodyGyroJerkMag-mean()  
36. tBodyAcc-std()-X             
37. tBodyAcc-std()-Y             
38. tBodyAcc-std()-Z             
39. tGravityAcc-std()-X          
40. tGravityAcc-std()-Y          
41. tGravityAcc-std()-Z          
42. tBodyAccJerk-std()-X         
43. tBodyAccJerk-std()-Y         
44. tBodyAccJerk-std()-Z         
45. tBodyGyro-std()-X            
46. tBodyGyro-std()-Y            
47. tBodyGyro-std()-Z            
48. tBodyGyroJerk-std()-X        
49. tBodyGyroJerk-std()-Y        
50. tBodyGyroJerk-std()-Z        
51. tBodyAccMag-std()            
52. tGravityAccMag-std()         
53. tBodyAccJerkMag-std()        
54. tBodyGyroMag-std()           
55. tBodyGyroJerkMag-std()       
56. fBodyAcc-std()-X             
57. fBodyAcc-std()-Y             
58. fBodyAcc-std()-Z             
59. fBodyAccJerk-std()-X         
60. fBodyAccJerk-std()-Y         
61. fBodyAccJerk-std()-Z         
62. fBodyGyro-std()-X            
63. fBodyGyro-std()-Y            
64. fBodyGyro-std()-Z            
65. fBodyAccMag-std()            
66. fBodyBodyAccJerkMag-std()    
67. fBodyBodyGyroMag-std()       
68. fBodyBodyGyroJerkMag-std()   
  
  