CREATE TABLE IF NOT EXISTS  restaurant(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name varchar(255),
    address varchar(255),
    cuisineType varchar(255),
    rating INT
);

CREATE TABLE IF NOT EXISTS  chef(
    id INT PRIMARY KEY AUTO_INCREMENT,
    firstName varchar(255),
    lastName varchar(255),
    expertise varchar(255),
    experienceYears INT,
    restaurantId INT,
    FOREIGN KEY(restaurantId) REFERENCES restaurant(id)
);