-- 1. Create the database
CREATE DATABASE IF NOT EXISTS airlinemanagementsystem;
USE airlinemanagementsystem;

-- 2. Login table
CREATE TABLE IF NOT EXISTS login(
    username VARCHAR(20),
    password VARCHAR(20)
);

-- Insert default admin
INSERT INTO login VALUES('admin','admin');

-- 3. Passenger table
CREATE TABLE IF NOT EXISTS passenger(
    name VARCHAR(20),
    nationality VARCHAR(20),
    phone VARCHAR(15),
    address VARCHAR(50),
    aadhar VARCHAR(20),
    gender VARCHAR(20)
);

-- 4. Flight table
CREATE TABLE IF NOT EXISTS flight(
    f_code VARCHAR(20),
    f_name VARCHAR(20),
    source VARCHAR(40),
    destination VARCHAR(40)
);

-- Insert sample flights
INSERT INTO flight VALUES("2001","AI-1001","Delhi","Mumbai");
INSERT INTO flight VALUES("2002","AI-1002","Delhi","Chennai");
INSERT INTO flight VALUES("2003","AI-1003","Delhi","Kolkata");
INSERT INTO flight VALUES("2004","AI-1004","Delhi","Bengaluru");
INSERT INTO flight VALUES("2005","AI-1005","Delhi","Hyderabad");

-- (You can add all your other flights here exactly like you sent)

-- 5. Reservation table
CREATE TABLE IF NOT EXISTS reservation(
    PNR VARCHAR(15),
    TICKET VARCHAR(20),
    aadhar VARCHAR(20),
    name VARCHAR(20),
    nationality VARCHAR(30),
    flightname VARCHAR(15),
    flightcode VARCHAR(20),
    src VARCHAR(30),
    des VARCHAR(30),
    ddate VARCHAR(30)
);

-- 6. Cancel table
CREATE TABLE IF NOT EXISTS cancel(
    pnr VARCHAR(20),
    name VARCHAR(40),
    cancelno VARCHAR(20),
    fcode VARCHAR(20),
    ddate VARCHAR(30)
);

-- Optional: Show tables to check
SHOW TABLES;
