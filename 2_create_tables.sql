-- Movies Table
CREATE TABLE movies (
    movieId INT PRIMARY KEY,
    title VARCHAR(255),
    genres VARCHAR(255)
);

-- Ratings Table
CREATE TABLE ratings (
    userId INT,
    movieId INT,
    rating FLOAT,
    timestamp BIGINT,
    PRIMARY KEY (userId, movieId)
);

-- Tags Table
CREATE TABLE tags (
    userId INT,
    movieId INT,
    tag VARCHAR(255),
    timestamp BIGINT
);

-- Links Table
CREATE TABLE links (
    movieId INT PRIMARY KEY,
    imdbId INT,
    tmdbId INT
);
