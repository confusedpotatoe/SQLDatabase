INSERT INTO Artist (Name) VALUES
('Imagine Dragons'),
('Adele'),
('Coldplay'),
('Ed Sheeran'),
('Taylor Swift'),
('The Weeknd'),
('Bruno Mars'),
('Billie Eilish'),
('Linkin Park'),
('Eminem');

INSERT INTO Album (Title, ReleaseYear, ArtistId) VALUES
('Night Visions', 2012, 1),              -- Imagine Dragons
('25', 2015, 2),                          -- Adele
('Parachutes', 2000, 3),                  -- Coldplay
('Divide', 2017, 4),                      -- Ed Sheeran
('1989', 2014, 5),                         -- Taylor Swift
('After Hours', 2020, 6),                 -- The Weeknd
('24K Magic', 2016, 7),                   -- Bruno Mars
('When We All Fall Asleep', 2019, 8),     -- Billie Eilish
('Hybrid Theory', 2000, 9),               -- Linkin Park
('The Eminem Show', 2002, 10);            -- Eminem

INSERT INTO Track (Title, Length, AlbumId) VALUES
-- Night Visions
('Radioactive', 186, 1),
('Demons', 177, 1),
('On Top of the World', 202, 1),

-- 25
('Hello', 295, 2),
('Send My Love', 223, 2),
('Water Under the Bridge', 240, 2),

-- Parachutes
('Yellow', 270, 3),
('Shiver', 299, 3),
('Trouble', 270, 3),

-- Divide
('Shape of You', 234, 4),
('Castle on the Hill', 261, 4),
('Perfect', 263, 4),

-- 1989
('Blank Space', 231, 5),
('Shake It Off', 242, 5),
('Style', 231, 5),

-- After Hours
('Blinding Lights', 200, 6),
('Save Your Tears', 215, 6),
('In Your Eyes', 239, 6),

-- 24K Magic
('24K Magic', 227, 7),
('Chunky', 210, 7),
('That’s What I Like', 247, 7),

-- When We All Fall Asleep
('Bad Guy', 194, 8),
('Bury a Friend', 193, 8),
('When the Party’s Over', 199, 8),

-- Hybrid Theory
('In the End', 216, 9),
('Crawling', 203, 9),
('Papercut', 184, 9),

-- The Eminem Show
('Without Me', 290, 10),
('Cleanin Out My Closet', 297, 10),
('Sing for the Moment', 339, 10);