# Luggage Reviews Analysis
Used Amazon review data from an S3 bucket to analyze whether Vine reviews effect the helpfulness of the reviews. Extracted and transformed the data from an S3 bucket using Google Colab and Pyspark. Loaded the data into a PostgreSQL database in AWS. Used SQL to peform the queries on the data. 

## Analysis
I analyzed the Amazon reviews data on luggage from Amazon’s S3 server. After cleaning and organizing the data, I specifically analyzed the difference between Vine and non-Vine reviews. Vine is Amazon’s trusted review program and reviewers are a part of the program by invite only. Vine reviewers are also given free products.
</br>
From the data set of 348,651 reviews, only .26% were Vine reviews. Based on the data, I believe that the Vine reviews are giving honest feedback that is generally more helpful to buyers than the non-Vine reviews. I found that there is not a significant skew between the two groups with average star rating, 4.36 for Vine reviewers and 4.22 for others, and that Vine reviewers did not give 5 star ratings more often. In fact, Vine reviewers only gave a 5-star rating in 52% of their reviews while non-Vine reviewers gave it in 62% of their reviewers. 
</br>
I did find that Vine reviewers were more helpful. Vine reviewers had 2.4 helpful votes per a review versus 2 helpful votes per review for non-Vine. Based on reviews receiving at least one helpful vote, 53% of Vine reviews were helpful versus 37% of non-Vine reviews. 
</br>
Non-Vine Reviews
Total: 347747
Number with 5 Stars: 216023
Sum of Helpful: 717399
Number of reviews with helpful votes: 127870
Avg. rating: 4.22
</br>
Vine Reviews
Total: 904
Number with 5 Stars: 472
SUM of Helpful: 2132
Number of reviews with helpful votes: 475
Avg. rating: 4.36

### Tech Used
- Google Colab
- Pyspark
- AWS
- PostgreSQL

#### SQL Tables 
![Sql table](/image/sql_tables.png)
