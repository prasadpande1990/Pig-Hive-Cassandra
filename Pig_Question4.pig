REGISTER '/home/prasad/Desktop/BigData/psp150030_HW2/Pig_Question4/Pig_Question4.jar';
business = LOAD '/home/prasad/Desktop/BigData/psp150030_HW2/business2.csv' USING PigStorage('^');
filtered_business = FILTER business by $10 != '[]';
business_data = FOREACH filtered_business GENERATE $2 as business_id, (chararray) $3 as full_address,FORMAT_CAT((chararray)$10) as categories;
top_business = LIMIT business_data 10;
STORE top_business into '/home/prasad/Desktop/BigData/psp150030_HW2/Pig_Question4/Pig_Question4_Output' using PigStorage(':');
