# Amazon_Vine_Analysis
## Overview of this analysis
In this analysis, we utilized Amazon AWS, PySpark and PostgreSql to query to analyze Amazon reviews by paid and unpaid Vine members for US cameras. We utilized PySpark to perform the ETL process of extracting, transforming, and cleaning the data. Next, we connected to an AWS RDS instance, and load the transformed data into pgAdmin where we utilized SQL to determine if there was bias from Vine members.

# Results
How many Vine reviews and non-Vine reviews were there?
 -There were 172 vine reviews; while, there were 13,086 non-vine members.

How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars?
 - Of the 172 Vine reviews, 88 provided 5 star reviews. 
 - Of the 13,086 non-Vine members only 5,813 idnividuals provided 5 star reviews.

What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars?
 - 51.2% of all 5 star ratings were provided by Vine reviews.
 - 44.4% of all five star ratings were provided by non-Vine reviews.
 
 # Summary 
There was a positivity bias for review in the Vine program as more members gave 5 star ratings when compared to the non-Vine members. We should look into the distribition of ratings among non-Vine members and their Verified purchase status. 
