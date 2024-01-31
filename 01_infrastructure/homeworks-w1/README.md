# Homework Solution

## Question 1
- Run a `docker run --help`
- The tag  that has the following text? - Automatically remove the container when it exits is `-rm`

## Question 2
- run docker command `docker run -it pythin:3.9 bash`
- check the installed modules `pip list`
- the version of package wheel is 0.42.0

## Question 3

Query to answer the question
```sql
select 
	count(*)
from green_taxi_trips
where date(lpep_pickup_datetime) = '2019-09-18'
  and date(lpep_pickup_datetime) = '2019-09-18';
```
As a result, the total trips was `15767`

## Question 4

Query to answer the question
```sql
select 
	date(lpep_pickup_datetime)
from green_taxi_trips
where trip_distance = (
  select max(trip_distance)
  from green_taxi_trips
)
```
As a result, the longest trip was on `2019-09-26`

## Question 5

Query to answer the question
```sql
with 
  get_borough as (
    select
	  z."Borough",
	  sum(total_amount) as total_amount
	from green_taxi_trips as t
	left join zone_data as z
	  on t."PULocationID" = z."LocationID"
	where date(lpep_pickup_datetime) = '2019-09-18'
	  and z."Borough" != 'Unknown'
    group by z."Borough"
  )

select *
from get_borough
where total_amount >= 50000
order by total_amount desc;
```
As a result, the top three Borough were Brooklyn, Manhattan, and Queens

## Question 6

Query to answer the question
```sql
with 
  get_zone as (
    select
	  zdo."Zone" as dropoff_zone,
	  max(tip_amount) as largest_tip
	from green_taxi_trips as t
	left join zone_data as zpu
	  on t."PULocationID" = zpu."LocationID"
	left join zone_data as zdo
	  on t."DOLocationID" = zdo."LocationID"
	where date_trunc('month',lpep_pickup_datetime) = '2019-09-01'
	  and zpu."Zone" = 'Astoria'
  	group by 1
  )

select *
from get_zone
order by largest_tip desc
limit 1;
```
As a result, the drop-off zone with the highest trip were JFK Airport