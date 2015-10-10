business = LOAD '/home/prasad/Desktop/BigData/psp150030_HW2/business2.csv' USING PigStorage('^');
filtered_business = FILTER business by $2 is not null and $2!='NaN';
review = LOAD '/home/prasad/Desktop/BigData/psp150030_HW2/review2.csv' using PigStorage('^');
filtered_review = FILTER review by $2 is not null and $2!='NaN';
cogroup_relation = COGROUP filtered_business by $2, filtered_review by $2;
Top_records = LIMIT cogroup_relation 6;
STORE Top_records into '/home/prasad/Desktop/BigData/psp150030_HW2/Pig_Question2/Pig_Question2_Output' using PigStorage(':');




