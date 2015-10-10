business_dump = LOAD '/home/prasad/Desktop/BigData/psp150030_HW2/business2.csv' USING PigStorage('^');
business = FOREACH business_dump GENERATE $2 as business_id,$3 as full_address,$10 as categories;

review_dump = LOAD '/home/prasad/Desktop/BigData/psp150030_HW2/review2.csv' using PigStorage('^');
review = FOREACH review_dump GENERATE $2 as business_id,$20 as stars;

jnd = join business by business_id,review by business_id;

dump jnd;

review_group = GROUP review by business_id;
stars_avg =  FOREACH review_group generate group as business_id, AVG($1.stars) as avg_ratings;
business_review = JOIN business by business_id, stars_avg by business_id;
filtered_business_review = FILTER business_review by full_address is not null and categories is not null;
sorted_business = ORDER filtered_business_review BY avg_ratings DESC;
limit_business = LIMIT sorted_business 10;
STORE limit_business into '/home/prasad/Desktop/BigData/psp150030_HW2/Pig_Question1/Pig_Question1_Output' using PigStorage(':');


