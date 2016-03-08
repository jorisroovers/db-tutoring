# Count all
# SELECT COUNT(*) FROM actor;
# You can also count a field -> same result
SELECT COUNT(last_name) FROM actor;
# Count + where
# SELECT COUNT(*) FROM actor WHERE first_name = "PENELOPE"
# SELECT * FROM actor WHERE first_name = "PENELOPE"