Select * 
--Into new_vine_table 
From vine_table
Where total_votes >=20

-- Select  rows where the number of helpful_votes divided by 
-- Total_votes is equal to or greater than 50%.

Select * from new_vine_table 
where cast(helpful_votes as float)/cast(total_votes as float) >= 0.5

Select * From new_vine_table 
where vine = 'Y'

-- Number of Vine members
Select count(*) From new_vine_table 
where vine = 'Y'
 
--Number of nonVine member
Select count(*) From new_vine_table 
where vine = 'N'
 
Select * From new_vine_table 
where vine = 'N'

--Determine the total number of reviews, the number of 5-star reviews, 
--and the percentage of 5-star reviews for paid reviews.
select total_paid_reviews, total_5_star_reviews,
	cast(total_5_star_reviews as float)/cast(total_paid_reviews as float) as percent_5_star 
	from (select count(*) as total_paid_reviews, 
		(select  count(*) 
			from new_vine_table
		where vine = 'Y' and star_rating = 5)as total_5_star_reviews
from new_vine_table
where vine = 'Y') paid_review

-- Determine the total number of reviews, the number of 5-star reviews,
--and the percentage of 5-star reviews for unpaid reviews.
select total_unpaid_reviews, total_5_star_reviews_unpaid,
	cast(total_5_star_reviews_unpaid as float)/cast(total_unpaid_reviews as float) as percent_5_star_unpaid 
	from (select count(*) as total_unpaid_reviews, 
		(select count(*) 
			from new_vine_table
			where vine = 'N' and star_rating = 5)as total_5_star_reviews_unpaid
from new_vine_table
where vine = 'N') unpaid_review

Select sum(helpful_votes) from new_vine_table
where vine = 'N'

Select count(*) from new_vine_table
where vine = 'N' and verified_purchase ='Y'


Select count(*) from new_vine_table
where vine = 'N' and verified_purchase ='N'


