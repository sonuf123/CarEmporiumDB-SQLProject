-- List all customers & their sales, even if some data is gone

SELECT cus.firstName, cus.lastName, cus.email, sls.salesAmount, sls.soldDate
FROM customer cus
INNER JOIN sales sls
    ON cus.customerId = sls.customerId
UNION
-- UNION WITH CUSTOMERS WHO HAVE NO SALES
SELECT cus.firstName, cus.lastName, cus.email, sls.salesAmount, sls.soldDate
FROM customer cus
LEFT JOIN sales sls
    ON cus.customerId = sls.customerId
WHERE sls.salesId IS NULL
UNION
-- UNION WITH SALES MISSING CUSTOMER DATA
SELECT cus.firstName, cus.lastName, cus.email, sls.salesAmount, sls.soldDate
FROM sales sls
LEFT JOIN customer cus
    ON cus.customerId = sls.customerId
WHERE cus.customerId IS NULL;

firstname|lastname   |email                           |salesamount|solddate               |
---------+-----------+--------------------------------+-----------+-----------------------+
         |           |                                |   46423.99|2021-02-18 00:00:00.000|
         |           |                                |   17990.99|2021-12-11 00:00:00.000|
         |           |                                |   32842.99|2022-06-09 00:00:00.000|
Shany    |Keeling    |Duane_Lesch@hotmail.com         |   25422.99|2021-12-28 00:00:00.000|
         |           |                                |   13796.99|2022-01-31 00:00:00.000|
Zechariah|Jacobi     |Avery_Borer10@gmail.com         |   25405.99|2022-02-13 00:00:00.000|
         |           |                                |   26871.99|2021-03-05 00:00:00.000|
         |           |                                |   47384.99|2022-08-02 00:00:00.000|
         |           |                                |   18410.99|2023-01-02 00:00:00.000|
Jamal    |Kris       |Enrique.Marquardt@gmail.com     |   13423.99|2022-04-06 00:00:00.000|
Orval    |Doyle      |Valerie_McGlynn14@yahoo.com     |           |                       |
Daphney  |Corkery    |Reinhold.Feil@hotmail.com       |   27035.99|2022-01-16 00:00:00.000|
         |           |                                |   44119.99|2022-05-19 00:00:00.000|
Foster   |Yundt      |Justyn_Mayert73@yahoo.com       |   37519.99|2021-01-28 00:00:00.000|
Beatrice |Shields    |Emerson50@gmail.com             |   40701.99|2023-01-06 00:00:00.000|
         |           |                                |   44277.99|2023-01-12 00:00:00.000|
         |           |                                |   37190.99|2023-01-03 00:00:00.000|
         |           |                                |   16249.99|2023-01-19 00:00:00.000|
         |           |                                |   42125.99|2021-05-30 00:00:00.000|
         |           |                                |   15717.99|2022-08-03 00:00:00.000|
Al       |Nitzsche   |Valentina_Kozey@gmail.com       |   17977.99|2022-09-30 00:00:00.000|
Arnold   |Friesen    |Percival.Keeling13@gmail.com    |   42503.99|2021-07-24 00:00:00.000|
Roel     |Braun      |Pierce.Larkin4@hotmail.com      |   19507.99|2023-01-23 00:00:00.000|
Leila    |Walker     |Lesly.Cole55@yahoo.com          |   25488.99|2022-02-05 00:00:00.000|
         |           |                                |   20113.99|2022-09-28 00:00:00.000|
Stanley  |Jacobson   |Moriah1@gmail.com               |           |                       |
Robin    |Schaefer   |Justice_Jacobi63@gmail.com      |   24199.99|2023-01-13 00:00:00.000|
Leila    |Walker     |Lesly.Cole55@yahoo.com          |   24748.99|2022-08-29 00:00:00.000|
Jannie   |Volkman    |Anya30@hotmail.com              |           |                       |
Frankie  |Kunze      |Harrison.Barton15@yahoo.com     |   15807.99|2021-11-16 00:00:00.000|
Hermann  |Hilll      |Bart9@gmail.com                 |   32366.99|2021-10-31 00:00:00.000|
         |           |                                |   35237.99|2023-01-08 00:00:00.000|
Jazmyne  |Kerluke    |Cayla_Jacobs83@hotmail.com      |   33734.99|2023-01-09 00:00:00.000|
Dax      |Heathcote  |Della69@yahoo.com               |   45774.99|2021-04-18 00:00:00.000|
Carson   |Wiza       |Meggie_Glover96@yahoo.com       |   20090.99|2022-06-16 00:00:00.000|
