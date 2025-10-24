/*

Add three rows to your table that are your planned makes.

*/


INSERT INTO Sep2025JunkDB.ornela_golloshi.planned_makes (
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
FROM  Sep2025JunkDB.ornela_golloshi.planned_makes