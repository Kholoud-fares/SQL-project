with hotels as
(
select * from dbo.['2019$']
union
select * from dbo.['2020$']
)

/*select hotel, cost from hotels
left join dbo.meal_cost$
on hotels.meal = dbo.meal_cost$.meal
left join dbo.market_segment$
on hotels.market_segment = dbo.market_segment$.market_segment*/

-- calculate revenue for each hotel in 2 years
/*select arrival_date_year,hotel,
round(sum((stays_in_weekend_nights + stays_in_week_nights)*adr),2) as Revenue
from hotels
group by arrival_date_year,hotel*/


-- calculate revenue for each hotel grouped by months
select arrival_date_month,hotel,
round(sum((stays_in_weekend_nights + stays_in_week_nights)*adr),2) as Revenue
from hotels
group by arrival_date_month,hotel

