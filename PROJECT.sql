--simple project
--select* FROM [Analysis].[dbo].[gold.fact_sales]

SELECT NEW_DATE,
	 Total_sales,
	 SUM(Total_sales) OVER(ORDER BY NEW_DATE ) AS NEW,
	 SUM(Total_sales) OVER( PARTITION BY YEAR (NEW_DATE) ORDER BY NEW_DATE ) AS NEWY
FROM 
(
select DATETRUNC(MONTH,order_date) AS NEW_DATE,
		 --year(order_date) as Year,
		 --month(order_date) as Monthly ,
		 sum(sales_amount) as Total_sales,
		 sum(quantity) as Total_quantity,
		 count(distinct(customer_key)) as Total_cudtomr
FROM [Analysis].[dbo].[gold.fact_sales]
where  order_date is not null
group by DATETRUNC(MONTH,order_date)
)T


