-- select_basic.sql
-- using of WHERE, ORDER BY, LIKE, GROUP BY

-- 1. WHERE: Find all artists whose names start with 'E'
SELECT *
FROM Artist
WHERE Name LIKE 'E%';

-- 2. ORDER BY: List albums sorted by release year (oldest first)
SELECT Title, ReleaseYear
FROM Album
ORDER BY ReleaseYear ASC;

-- 3. LIKE: Find tracks containing the word 'Love'
SELECT Title
FROM Track
WHERE Title LIKE '%Love%';

-- 4. WHERE + ORDER BY: Albums released after 2010 sorted alphabetically
SELECT Title, ReleaseYear
FROM Album
WHERE ReleaseYear > 2010
ORDER BY Title;

-- 5. GROUP BY: Count how many albums each artist has
SELECT ArtistId, COUNT(*) AS AlbumCount
FROM Album
GROUP BY ArtistId;

-- 6. GROUP BY (sum): Calculate total track length per album
SELECT AlbumId, SUM(Length) AS TotalAlbumLength
FROM Track
GROUP BY AlbumId;

-- 7. Find all tracks where the title starts with 'B'
SELECT Title
FROM Track
WHERE Title LIKE 'B%';