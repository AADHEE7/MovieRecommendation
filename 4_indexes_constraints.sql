-- Add Foreign Keys
ALTER TABLE ratings
ADD CONSTRAINT fk_ratings_movieId
FOREIGN KEY (movieId) REFERENCES movies(movieId);

ALTER TABLE tags
ADD CONSTRAINT fk_tags_movieId
FOREIGN KEY (movieId) REFERENCES movies(movieId);

ALTER TABLE links
ADD CONSTRAINT fk_links_movieId
FOREIGN KEY (movieId) REFERENCES movies(movieId);

-- Add Indexes
CREATE INDEX idx_ratings_userId ON ratings (userId);
CREATE INDEX idx_tags_userId ON tags (userId);
