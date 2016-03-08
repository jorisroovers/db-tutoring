# More functions: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html
# SELECT WEEK(last_update) FROM film
# SELECT WEEKOFYEAR(last_update) FROM film # same as WEEK()
# SELECT MONTH(last_update) FROM film
# SELECT YEAR(last_update) FROM film

# SELECT MONTHNAME(last_update) FROM film
# SELECT WEEKDAY(last_update) FROM film; # # Returns the weekday index for date (0 = Monday, 1 = Tuesday, … 6 = Sunday).
# SELECT DAYOFWEEK(last_update) FROM film; # Returns the weekday index for date (1 = Sunday, 2 = Monday, …, 7 = Saturday)


# Number of days between today and when the last update occured
# SELECT DATEDIFF(NOW(),last_update) FROM film