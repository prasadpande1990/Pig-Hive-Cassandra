business_dump = LOAD '/home/prasad/Desktop/BigData/psp150030_HW2/business2.csv' USING PigStorage('^');
filtered_business = FILTER business_dump by $2 is not null and $2!='NaN';
review_dump = LOAD '/home/prasad/Desktop/BigData/psp150030_HW2/review2.csv' using PigStorage('^');
filtered_review = FILTER review_dump by $2 is not null and $2!='NaN';
cogroup_relation = COGROUP filtered_business by $2, filtered_review by $2;
cogroup_relation1 = LIMIT cogroup_relation 5;
review_business = FOREACH cogroup_relation GENERATE FLATTEN(filtered_business),FLATTEN(filtered_review);
Clean_data = LIMIT review_business 6;
dump Clean_data;
dump cogroup_relation1;




	
