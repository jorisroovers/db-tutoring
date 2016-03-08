# Selecting from 2 different table determines the cartesian product
# This is known as a CROSS JOIN
# IMPLICIT CROSS JOIN:
SELECT * FROM address, city
# EXPLICIT CROSS JOIN:
# SELECT * FROM address CROSS JOIN city