/* Top 3 drivers per country with most hours... 

    Joins the Driver and Ride tables based on the id and driver_id columns, respectively.
    Groups the results by driver_name and country while calculating the sum of duration for each driver.
    Uses the HAVING clause to filter the results to include only the drivers with the maximum total_drive_hours for each country.
    Orders the results by country and total_drive_hours in descending order.
    Limits the output to the top 3 drivers per country.
    Execute this query in your DBMS to get the desired result: the top 3 drivers with the maximum drive hours for each country.
*/

SELECT d.name AS driver_name, d.country, SUM(r.duration) AS total_drive_hours
FROM Driver d
JOIN Ride r ON d.id = r.driver_id
GROUP BY d.name, d.country
HAVING total_drive_hours = (
    SELECT SUM(duration)
    FROM Ride r2
    WHERE r2.driver_id = d.id
    ORDER BY SUM(duration) DESC
    LIMIT 1
)
ORDER BY d.country, total_drive_hours DESC
LIMIT 3;


