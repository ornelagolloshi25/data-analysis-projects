/*

# Exercises: Creating, Updating, and Destroying Objects

For the exercises, you will be working with objects and data you create. 
Before opening this notebook, make sure that you have set up the new connection to 
the server and that you have located the database and your schema.

## Object Creation

Before coding, think of three things you want to make. 
These could be coding projects, new recipes, or planned projects for a woodworking hobby. 
Brainstorm the appropriate column names and data types as well.

Create a table under your schema called `planned_makes`.

*/
CREATE DATABASE ProjectPlans
ON PRIMARY (
    NAME = ProjectPlans_data,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ProjectPlans_data.mdf'
)
LOG ON (
    NAME = ProjectPlans_log,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ProjectPlans_log.ldf'
);

USE ProjectPlans;
GO

CREATE SCHEMA planned_projects AUTHORIZATION dbo;
GO

CREATE TABLE planned_projects.planned_makes (
    make_id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(100),
    category NVARCHAR(50),
    estimated_hours INT,
    materials_needed NVARCHAR(MAX),
    start_date DATE,
    is_completed BIT
);

--


CREATE TABLE Sep2025JunkDB.ornela_golloshi.planned_makes (
    make_id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(100),
    category NVARCHAR(50),
    estimated_hours INT,
    materials_needed NVARCHAR(MAX),
    start_date DATE,
    is_completed BIT
);
