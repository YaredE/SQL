-- Insert sample data into the Ride table
INSERT INTO Ride (ride_id, driver_id, time_of_ride, starting_point_id, ending_point_id, duration)
VALUES
    (1, 1, '2023-08-10 10:00:00', 1, 2, 30),
    (2, 2, '2023-08-10 14:30:00', 2, 3, 45),
    (3, 3, '2023-08-10 12:15:00', 3, 1, 20),
    -- ... Add more rides as needed
    (148, 1, '2023-08-11 11:30:00', 1, 3, 40),
    (149, 2, '2023-08-11 15:45:00', 2, 1, 35),
    (150, 3, '2023-08-11 13:20:00', 3, 2, 25);

-- Duplicate the sample data to generate 150 rows with 15 random drivers
INSERT INTO Ride (driver_id, time_of_ride, starting_point_id, ending_point_id, duration)
SELECT
    driver_id,
    time_of_ride,
    starting_point_id,
    ending_point_id,
    duration
FROM
    Ride
CROSS JOIN (
    SELECT 1 AS n UNION ALL
    SELECT 2 AS n UNION ALL
    SELECT 3 AS n UNION ALL
    SELECT 4 AS n UNION ALL
    SELECT 5 AS n UNION ALL
    SELECT 6 AS n UNION ALL
    SELECT 7 AS n UNION ALL
    SELECT 8 AS n UNION ALL
    SELECT 9 AS n UNION ALL
    SELECT 10 AS n
) AS random_numbers;

-- Update ride IDs for the duplicated rows
UPDATE Ride
SET ride_id = ride_id + (SELECT MAX(ride_id) FROM Ride);

-- Insert sample data into the Ride table
INSERT INTO Ride (ride_id, driver_id, time_of_ride, starting_point_id, ending_point_id, duration)
VALUES
    (1, 1, '2023-08-10 10:00:00', 1, 2, 30),
    (2, 2, '2023-08-10 14:30:00', 2, 3, 45),
    (3, 3, '2023-08-10 12:15:00', 3, 1, 20),
    (148, 1, '2023-08-11 11:30:00', 1, 3, 40),
    (149, 2, '2023-08-11 15:45:00', 2, 1, 35),
    (150, 3, '2023-08-11 13:20:00', 3, 2, 25);

-- Duplicate the sample data to generate 150 rows with 15 random drivers
INSERT INTO Ride (driver_id, time_of_ride, starting_point_id, ending_point_id, duration)
SELECT
    driver_id,
    time_of_ride,
    starting_point_id,
    ending_point_id,
    duration
FROM
    Ride
CROSS JOIN (
    SELECT 1 AS n UNION ALL
    SELECT 2 AS n UNION ALL
    SELECT 3 AS n UNION ALL
    SELECT 4 AS n UNION ALL
    SELECT 5 AS n UNION ALL
    SELECT 6 AS n UNION ALL
    SELECT 7 AS n UNION ALL
    SELECT 8 AS n UNION ALL
    SELECT 9 AS n UNION ALL
    SELECT 10 AS n
) AS random_numbers;

-- Update ride IDs for the duplicated rows
UPDATE Ride
SET ride_id = ride_id + (SELECT MAX(ride_id) FROM Ride);

