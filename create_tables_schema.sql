-- Create the Driver table
CREATE TABLE Driver (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    country VARCHAR(50)
);

-- Create the Point table
CREATE TABLE Point (
    id INT PRIMARY KEY,
    latitude DECIMAL(10, 6),
    longitude DECIMAL(10, 6)
);

-- Create the Ride table
CREATE TABLE Ride (
    ride_id INT PRIMARY KEY,
    driver_id INT,
    time_of_ride DATETIME,
    starting_point_id INT,
    ending_point_id INT,
    duration INT,
    FOREIGN KEY (driver_id) REFERENCES Driver(id),
    FOREIGN KEY (starting_point_id) REFERENCES Point(id),
    FOREIGN KEY (ending_point_id) REFERENCES Point(id)
);

