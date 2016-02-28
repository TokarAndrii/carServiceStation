DROP DATABASE IF EXISTS tokarServiceStation;
CREATE DATABASE tokarServiceStation;

use tokarServiceStation;
DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS workers;
DROP TABLE IF EXISTS services;
DROP TABLE IF EXISTS workers_services;



CREATE TABLE clients(
id int AUTO_INCREMENT,
firstName VARCHAR(255) NOT NULL,
secondName VARCHAR(255) NOT NULL,
phoneNumber VARCHAR(10) UNIQUE,
email VARCHAR(255) NOT NULL UNIQUE,
driverLicenseNumber VARCHAR (255) NOT NULL UNIQUE,
pass VARCHAR (255) NOT NULL UNIQUE,
PRIMARY KEY (id)

);

CREATE TABLE workers(
id int AUTO_INCREMENT,
firstName VARCHAR(255) NOT NULL,
secondName VARCHAR(255) NOT NULL,
salary DOUBLE NOT NULL,
password VARCHAR (255) NOT NULL UNIQUE,
login VARCHAR (255) NOT NULL UNIQUE,
PRIMARY KEY (id),
workerTypes ENUM(MASTER_OF_REPAIR_1_KATEGORY, MASTER_OF_REPAIR_2_KATEGORY, MASTER_OF_REPAIR_3_KATEGORY,
                 WASHER_WORKER,SECRETARY, ADMINISTRATOR)
);

CREATE TABLE workers_services(
id_workerServices INT AUTO_INCREMENT,
worker_id INT,
service_id INT,
PRIMARY KEY (id_workerServices),
FOREIGN KEY (worker_id) REFERENCES workers (worker_id),
FOREIGN KEY (service_id) REFERENCES services(service_id)
);

CREATE TABLE services(
service_id INT AUTO_INCREMENT,
serviceTypes ENUM(REPAIR_BODY_CAR, REPAIR_MOTOR, REPAIR_CHASSIS, REPAIR_BRAKE, REPAIR_CLUTCH,
                  REPAIR_GEARBOX, CHANGE_TIRES, CHANGE_CONSUMABLES, DIAGNOSTIC, WASH_CAR_OUTSIDE,
                  WASH_CAR_INSIDE, WASH_TOTAL, WARRANTY_SERVICE),
timeToDo TIME,
startDate DATETIME,
finishDate DATETIME,
priceOfService DOUBLE NOT NULL,
client_id INT,
FOREIGN KEY (client_id) REFERENCES clients(id),
PRIMARY KEY (service_id)

);


