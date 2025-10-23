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

USE ProjectPlans;
GO

INSERT INTO planned_projects.planned_makes (
    name,
    category,
    estimated_hours,
    materials_needed,
    start_date,
    is_completed
)
VALUES
-- Row 1
('Build a custom bookshelf', 'Woodworking', 12, 'Pine boards, screws, wood glue, varnish', '2025-11-01', 0),
-- Row 2
('Design a holiday greeting card set', 'Crafting', 6, 'Cardstock, markers, stickers, envelopes', '2025-11-10', 0),
-- Row 3
('Create a Raspberry Pi weather station', 'Electronics', 15, 'Raspberry Pi, sensors, wires, soldering kit', '2025-11-15', 0);

--Test it
SELECT *
FROM ProjectPlans.planned_projects.planned_makes