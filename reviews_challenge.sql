CREATE TABLE review_id_table (  
	review_id TEXT PRIMARY KEY NOT NULL,  
	customer_id INTEGER,  
	product_id TEXT,  
	product_parent INTEGER,  
	review_date DATE -- this should be in the formate yyyy-mm-dd
);
-- This table will contain only unique values
CREATE TABLE products (  
	product_id TEXT PRIMARY KEY NOT NULL UNIQUE,  
	product_title TEXT
);
-- Customer table for first data set
CREATE TABLE customers (  
	customer_id INT PRIMARY KEY NOT NULL UNIQUE,  
	customer_count INT
);
-- vine table
CREATE TABLE vine_table (  
	review_id TEXT PRIMARY KEY,  
	star_rating INTEGER,  
	helpful_votes INTEGER,  
	total_votes INTEGER,  
	vine TEXT
);

-- Confirm data loaded
SELECT * FROM vine_table;

-- Split vine table by Y/N Vine
SELECT *
INTO non_vine
FROM vine_table
WHERE vine = 'N'

SELECT *
INTO yes_vine
FROM vine_table
WHERE vine = 'Y'

-- Count number of reviews for each
SELECT COUNT(review_id)
FROM non_vine

SELECT COUNT(review_id)
FROM yes_vine

-- Count number of 5 star ratings for each
SELECT COUNT(star_rating)
FROM non_vine
WHERE star_rating = '5'

SELECT COUNT(star_rating)
FROM yes_vine
WHERE star_rating = '5'

-- Count total number of helpful votes for each 
SELECT SUM(helpful_votes)
FROM non_vine

SELECT SUM(helpful_votes)
FROM yes_vine

-- Count number of reviews with helpful votes for each
SELECT COUNT(helpful_votes)
FROM non_vine
WHERE NOT helpful_votes = '0'

SELECT COUNT(helpful_votes)
FROM yes_vine
WHERE NOT helpful_votes = '0'

-- Find average rating for each, rounded to 2 decimal places
SELECT vine, round(AVG(star_rating),2) FROM vine_table GROUP BY vine;