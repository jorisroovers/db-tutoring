# INNER JOIN: combine 2 tables using
# IMPLICIT INNER JOIN:
SELECT * FROM address, city WHERE  address.city_id = city.city_id
# EXPLICIT INNER JOIN:
SELECT * FROM address INNER JOIN city ON  address.city_id = city.city_id