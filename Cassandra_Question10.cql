DROP KEYSPACE yelpData;

CREATE KEYSPACE yelpData
  WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1};

USE yelpData;
 
CREATE TABLE yelpData.business
(
	review_id varchar,
	review_text text,
	business_id text,
	full_address text,
	schools text,
	longitude float,
	average_stars text,
	date text,
	user_id  text,
	open boolean,
	categories text,
	photo_url text,
	city text,
	review_count int,
	name text,
	neighborhoods text,
	url text,
	votes_cool text,
	votes_funny text,
	state text,
	stars float,
	latitude float,
	type text,
	votes_useful text,
	PRIMARY KEY (business_id)
); 

COPY business(review_id,review_text,business_id,full_address,schools,longitude,average_stars,date,user_id,open,categories,photo_url,city,review_count,name,
neighborhoods,url,votes_cool,votes_funny,state,stars,latitude,type,votes_useful) from '/home/prasad/Desktop/BigData/psp150030_HW2/business2.csv' WITH DELIMITER = '^';

SELECT * FROM business LIMIT 10;

SELECT * FROM business WHERE business_id='axPZazfSZFnynOV52mbe2Q';

TRUNCATE yelpData.business;

SELECT * FROM business;

DROP TABLE yelpData.business;

