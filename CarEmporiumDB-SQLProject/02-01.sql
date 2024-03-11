-- Find the least and most expensive car sold by each employee this year

SELECT 
    emp.employeeId, 
    emp.firstName, 
    emp.lastName, 
    EXTRACT(YEAR FROM sls.soldDate) AS SaleYear,
    MIN(sls.salesAmount) AS MinSalesAmount, 
    MAX(sls.salesAmount) AS MaxSalesAmount
FROM 
    sales sls
INNER JOIN 
    employee emp 
	ON sls.employeeId = emp.employeeId
WHERE 
   sls.soldDate >= DATE_TRUNC('year', CURRENT_DATE) - INTERVAL '1 year'
GROUP BY 
    emp.employeeId, 
    emp.firstName, 
    emp.lastName,
    SaleYear;

|employeeid|firstname |lastname |saleyear|minsalesamount|maxsalesamount|
|----------|----------|---------|--------|--------------|--------------|
|74        |Suzi      |Fletcher |2023   |16,274.99     |44,077.99     |
|48        |Cherice   |McQuie   |2023   |18,721.99     |35,329.99     |
|14        |Anette    |Perelli  |2023   |11,426.99     |25,637.99     |
|96        |Saleem    |Pitcher  |2023   |15,370.99     |48,378.99     |
|79        |Vincenty  |Splaven  |2023   |24,199.99     |48,779.99     |
|59        |Fair      |Ferroni  |2023   |35,707.99     |35,707.99     |
|72        |Wilhelmina|O'Crevan |2023   |20,084.99     |48,115.99     |
|33        |Jena      |Carnie   |2023   |16,249.99     |49,785.99     |
|78        |Freddie   |Heiton   |2023   |28,645.99     |35,237.99     |
|32        |Jourdan   |Crowhurst|2023   |11,765.99     |16,248.99     |
|35        |Fleur     |Lorenzin |2023   |23,753.99     |44,277.99     |
|81        |Abel      |Dolle    |2023   |11,074.99     |37,929.99     |
|43        |Marie     |Powys    |2023   |21,884.99     |48,715.99     |
|95        |Chrissy   |Barta    |2023   |19,546.99     |37,190.99     |
|30        |Lester    |Danielsky|2023   |17,345.99     |44,094.99     |
|29        |Mariette  |Camerello|2023   |13,500.99     |38,499.99     |
|12        |Bel       |McBrier  |2023   |13,248.99     |38,673.99     |
|23        |Miof mela |Slograve |2023   |17,122.99     |20,684.99     |
|67        |Giorgia   |Ricciardi|2023   |39,566.99     |41,450.99     |
|11        |Cammy     |Jesse    |2023   |41,060.99     |41,060.99     |
|62        |Caddric   |Brendel  |2023   |32,103.99     |32,103.99     |
|3         |Lorant    |Barlow   |2023   |26,562.99     |26,562.99     |
|5         |Salvatore |Humbee   |2023   |33,734.99     |33,734.99     |
|73        |Sutton    |Acosta   |2023   |28,911.99     |31,318.99     |
|52        |Charmaine |Brownlea |2023   |27,033.99     |27,033.99     |
|51        |Adriana   |Hexam    |2023   |17,115.99     |40,218.99     |
|57        |Berty     |Dannel   |2023   |13,678.99     |46,649.99     |
|21        |Natale    |Rimington|2023   |18,410.99     |39,313.99     |
|39        |Barnabas  |Pinnegar |2023   |31,400.99     |31,400.99     |
|9         |Erika     |Kemson   |2023   |23,685.99     |31,792.99     |
|82        |Barrie    |Toone    |2023   |12,969.99     |44,829.99     |
|19        |Renard    |Ulrik    |2023   |20,993.99     |20,993.99     |

