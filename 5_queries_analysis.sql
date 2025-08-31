-- Basic Counts
SELECT COUNT(*) AS total_movies FROM movies;
SELECT COUNT(*) AS total_ratings FROM ratings;
SELECT COUNT(*) AS total_tags FROM tags;
SELECT COUNT(*) AS total_links FROM links;

-- Top 5 Movies by Average Rating
SELECT
    m.title,
    AVG(r.rating) AS average_rating
FROM movies AS m
JOIN ratings AS r ON m.movieId = r.movieId
GROUP BY m.title
ORDER BY average_rating DESC
LIMIT 5;

-- Top 10 Movies with >= 50 Ratings
SELECT
    m.title,
    AVG(r.rating) AS average_rating,
    COUNT(r.rating) AS number_of_ratings
FROM movies AS m
JOIN ratings AS r ON m.movieId = r.movieId
GROUP BY m.title
HAVING COUNT(r.rating) >= 50
ORDER BY average_rating DESC
LIMIT 10;

-- Top Users with Most Ratings
SELECT
    r.userId,
    COUNT(r.rating) AS total_ratings
FROM ratings AS r
GROUP BY r.userId
ORDER BY total_ratings DESC
LIMIT 5;

-- Movies Tagged as Classic
SELECT
    m.title,
    AVG(r.rating) AS average_rating
FROM movies AS m
JOIN ratings AS r ON m.movieId = r.movieId
JOIN tags AS t ON m.movieId = t.movieId
WHERE t.tag = 'classic'
GROUP BY m.title
ORDER BY average_rating DESC;

-- Most Common Tags
SELECT
    t.tag,
    COUNT(t.tag) AS tag_count
FROM tags AS t
GROUP BY t.tag
ORDER BY tag_count DESC
LIMIT 10;

-- Average Rating of Action Movies
SELECT
    AVG(r.rating) AS average_action_rating
FROM movies AS m
JOIN ratings AS r ON m.movieId = r.movieId
WHERE m.genres LIKE '%Action%';

-- Movies Released in 1995
SELECT COUNT(*) AS movie_count
FROM movies
WHERE title LIKE '%(1995)%';

-- Ratings per Year
SELECT
    YEAR(FROM_UNIXTIME(timestamp)) AS rating_year,
    COUNT(*) AS number_of_ratings,
    AVG(rating) AS average_rating_for_year
FROM ratings
GROUP BY rating_year
ORDER BY rating_year;

-- Sample
SELECT 
    m.title, 
    AVG(r.rating) AS average_rating
FROM movies AS m
JOIN ratings AS r ON m.movieId = r.movieId
GROUP BY m.title
ORDER BY average_rating DESC
LIMIT 5;
