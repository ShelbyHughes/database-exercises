-- Create the albums database
CREATE DATABASE IF NOT EXISTS codeup_test_db;
-- Use the database
USE codeup_test_db;
-- If table already exist, delete it
DROP TABLE IF EXISTS albums;
-- Create new table called albums
CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(255) NOT NULL,
    name  VARCHAR(255) NOT NULL,
    release_date CHAR(4),
    sales DECIMAL(4,1),
    genre VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);