# Starts with P
SELECT * FROM actor WHERE first_name LIKE "P%"
# Ends with P
# SELECT * FROM actor WHERE first_name LIKE "%P"
# Contains P
# SELECT * FROM actor WHERE first_name LIKE "%P%"

# Doesn't contain P
# SELECT * FROM actor WHERE first_name NOT LIKE "%P%"

# Single character match: _ (underscore)
# This will match TIM and TOM nothing with more letters (unfortunately, no good examples in DB)
# SELECT * FROM actor WHERE first_name LIKE "T_M"

