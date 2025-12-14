-- THE QUERY shows all artist and their albums
-- it also counts the tracks in each album
-- LEFT JOIN is used to show artists and albums even without tracks

-- 'ON' “Join each album to the artist where the album’s ArtistId matches the artist’s Id.” 
SELECT 
    Album.Title,                  -- The title of the album
    Artist.Name,                  -- The name of the artist
    COUNT(Track.Id) AS TrackCount -- Number of tracks per album
FROM Artist                       -- Start from the Artist table
LEFT JOIN Album
    ON Album.ArtistId = Artist.Id -- Connect albums to their artist
LEFT JOIN Track
    ON Track.AlbumId = Album.Id  -- Connect tracks to their album
GROUP BY 
    Album.Title,                  -- Group results by album
    Artist.Name;                  -- Group results by artist

-- THE QUERY shows all artist and their albums
-- it also counts the tracks in each album
-- INNER JOIN is used so only albums that have artist and tracks will show

SELECT 
    Album.Title,                  -- The title of the album
    Artist.Name,                  -- The name of the artist
    COUNT(Track.Id) AS TrackCount -- Number of tracks in the album
FROM Album                        -- Start from the Album table
INNER JOIN Artist 
    ON Album.ArtistId = Artist.Id -- Match albums to their artist (foreign key → primary key)
INNER JOIN Track 
    ON Track.AlbumId = Album.Id  -- Match tracks to their album (foreign key → primary key)
GROUP BY 
    Album.Title,                  -- Group rows by album title
    Artist.Name;                  -- Group rows by artist name