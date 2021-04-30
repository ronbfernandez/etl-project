drop table movies;

create table movies(
	id int,
	title varchar,
	release_date varchar,
	genre varchar,
	description varchar,
	budget float,
	gross_earnings float,
	world_wide_earnings float)
	

select * from movies;

-- Query for movies with most earnings
select title, to_char(world_wide_earnings,'$999,999,999,999') worldwide_earnings from movies
order by worldwide_earnings desc;
-- Avengers: Endgame has the most world_wide_earnings at $2.7 billion

-- Query for movies with most profit
select title, to_char(world_wide_earnings-budget, '$999,999,999,999') profit from movies
order by profit desc;
-- Avatar made the most profit at $2.5 billion
