SELECT * FROM online_retail.sales_data;
select count(InvoiceNo) from sales_data;
-- 1
select Round(sum(TotalAmount),2) as TotalSales from sales_data;
-- 2
select Country,Round(sum(TotalAmount),2) as TotalSales from sales_data
group by Country
order by Totalsales desc
limit 5;
-- 3
select Country,Round(sum(TotalAmount),2) as TotalSales from sales_data
group by Country
order by Totalsales asc
limit 5;
-- 4
select Description,Round(sum(TotalAmount),2) as TotalSales from sales_data
group by Description
order by Totalsales desc
limit 5;
-- 5
select Description,Round(sum(TotalAmount),2) as TotalSales from sales_data
group by Description
order by Totalsales asc
limit 5;
-- 6
SELECT 
    MONTHNAME(InvoiceDate) AS Month,
    ROUND(SUM(TotalAmount),2) AS TotalSales
FROM sales_data
GROUP BY MONTH(InvoiceDate), MONTHNAME(InvoiceDate)
ORDER BY MONTH(InvoiceDate);
