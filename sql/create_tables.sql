
-- Creating all the diffrent tables
-- using IDENTITY (1,1) for auto-incremented ID, it atomaticly increses the ID nr.
-- using NVARCHAR(200) becouse it use UNICORD so it also reads in å,ä,ö. 200 is maximum amount of characters

-- Create the Artist table
-- This table stores information about music artists
CREATE TABLE Artist (
    Id INT IDENTITY(1,1) PRIMARY KEY, -- Primary key, auto-incremented unique ID for each artist
    Name NVARCHAR(200) NOT NULL       -- Artist name, must always have a value
);

-- Create the Album table
-- Each album belongs to one artist
CREATE TABLE Album (
    Id INT IDENTITY(1,1) PRIMARY KEY, -- Primary key, auto-incremented unique ID for each album
    Title NVARCHAR(200) NOT NULL,     -- Album title, required
    ReleaseYear INT,                  -- Year the album was released must be numbers
    ArtistId INT NOT NULL,            -- Foreign key that links the album to an artist
    FOREIGN KEY (ArtistId) REFERENCES Artist(Id)  -- ArtistId must match an existing Artist.Id
                
);

-- Create the Track table
-- Each track belongs to one album
CREATE TABLE Track (
    Id INT IDENTITY(1,1) PRIMARY KEY, -- Primary key, auto-incremented unique ID for each track
    Title NVARCHAR(200) NOT NULL,     -- Track title, required
    Length INT NOT NULL,              -- Length of the track in seconds
    AlbumId INT NOT NULL,             -- Foreign key that links the track to an album
    FOREIGN KEY (AlbumId) REFERENCES Album(Id) -- AlbumId must match an existing Album.Id
        
);
