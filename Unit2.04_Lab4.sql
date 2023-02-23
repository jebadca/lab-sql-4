USE sakila;

#1.Get film ratings.
SELECT film_id, rating
FROM film;

#2.Get release years.
SELECT film_id, release_year
FROM film;

#3.Get all films with ARMAGEDDON in the title.
SELECT title
FROM film 
WHERE title REGEXP 'armageddon';

#4.Get all films with APOLLO in the title
SELECT title
FROM film 
WHERE title REGEXP 'apollo';

#5.Get all films which title ends with APOLLO.
SELECT title
FROM film 
WHERE title REGEXP 'apollo$';

#6.Get all films with word DATE in the title.
SELECT title
FROM film 
WHERE title REGEXP 'date';

#7.Get 10 films with the longest title.
SELECT film_id, title, length(title) as len_title
FROM film
ORDER BY length(title) DESC
LIMIT 10;

#8.Get 10 the longest films.
SELECT film_id, title, length
FROM film
ORDER BY length DESC
LIMIT 10;

#9.How many films include Behind the Scenes content?
SELECT COUNT(film_id)
FROM film
WHERE special_features REGEXP "behind the scenes";

#10.List films ordered by release year and title in alphabetical order.
SELECT title, release_year
FROM film
ORDER BY release_year ASC, title ASC;
