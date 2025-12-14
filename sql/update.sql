-- UPDATES Statments that modify exsisting data

-- Change the name of an artist
-- This updates the artist with Id = 1 and sets a new name
UPDATE Artist
SET Name = 'Imagine Dragons (Updated)'
WHERE Id = 1;

-- Update the release year of an album
-- This changes the release year for a specific album
UPDATE Album
SET ReleaseYear = 2013
WHERE Title = 'Night Visions';