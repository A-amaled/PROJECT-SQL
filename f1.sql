SELECT * FROM [F1 - Race Result 2025].[dbo].[F1_2025_RaceResults]
select distinct(Track) from [F1 - Race Result 2025].[dbo].[F1_2025_RaceResults]

SELECT( Driver)
from [F1 - Race Result 2025].[dbo].[F1_2025_RaceResults]
ORDER BY  Points 

SELECT( Driver) ,SUM(Points)as total_points
from [F1 - Race Result 2025].[dbo].[F1_2025_RaceResults]
group by ( Driver) 
ORDER BY  ( Driver) desc

SELECT top 10( Driver) ,SUM(Points)as total_points
from [F1 - Race Result 2025].[dbo].[F1_2025_RaceResults]
group by ( Driver) 
ORDER BY  ( Driver) desc
 
 select sum (Points) as lewis_points from [F1 - Race Result 2025].[dbo].[F1_2025_RaceResults] 
    where driver ='Lewis Hamilton'

 select sum (Points) as lando_points from [F1 - Race Result 2025].[dbo].[F1_2025_RaceResults] 
    where driver ='Lando Norris'

 select sum (Points) as teams_points from [F1 - Race Result 2025].[dbo].[F1_2025_RaceResults] 
    where Team like 'Ferrari'

	SELECT TOP (10) Q3, Driver
  FROM [F1 - Race Result 2025].[dbo].[F1_2025_QualifyingResults]


 
 
