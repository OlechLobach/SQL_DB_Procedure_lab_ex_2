CREATE DATABASE NewMusicCollection;
GO

USE NewMusicCollection;
GO

-- Створення таблиці MusicDisks
CREATE TABLE MusicDisks (
    DiskID INT PRIMARY KEY,
    Title VARCHAR(255),
    Artist VARCHAR(255),
    Publisher VARCHAR(255),
    ReleaseDate DATE,
    Genre VARCHAR(255),
    NumberOfTracks INT
);
GO

-- Збережені процедури

-- Показ повної інформації про музичні диски
CREATE PROCEDURE GetAllMusicDisks
AS
BEGIN
    SELECT * FROM MusicDisks;
END;
GO

-- Показ повної інформації про музичні диски конкретного видавця
CREATE PROCEDURE GetMusicDisksByPublisher @Publisher VARCHAR(255)
AS
BEGIN
    SELECT * FROM MusicDisks WHERE Publisher = @Publisher;
END;
GO

-- Показ назви найпопулярнішого стилю
CREATE PROCEDURE GetMostPopularGenre
AS
BEGIN
    SELECT TOP 1 Genre, COUNT(*) AS NumberOfDisks
    FROM MusicDisks
    GROUP BY Genre
    ORDER BY COUNT(*) DESC;
END;
GO

-- Показ інформації про диск конкретного стилю з найбільшою кількістю пісень
CREATE PROCEDURE GetDiskByGenreWithMostTracks @Genre VARCHAR(255)
AS
BEGIN
    SELECT TOP 1 * 
    FROM MusicDisks 
    WHERE Genre = @Genre 
    ORDER BY NumberOfTracks DESC;
END;
GO

-- Видалення всіх дисків заданого стилю
CREATE PROCEDURE DeleteDisksByGenre @Genre VARCHAR(255)
AS
BEGIN
    DELETE FROM MusicDisks WHERE Genre = @Genre;
    SELECT @@ROWCOUNT AS NumberOfDeletedDisks;
END;
GO

-- Видалення всіх дисків в назві яких є задане слово
CREATE PROCEDURE DeleteDisksByTitleWord @Word VARCHAR(255)
AS
BEGIN
    DELETE FROM MusicDisks WHERE Title LIKE '%' + @Word + '%';
    SELECT @@ROWCOUNT AS NumberOfDeletedDisks;
END;
GO

-- Показ інформації про самий «старий» альбом і самий «молодий»
CREATE PROCEDURE GetOldestAndYoungestAlbum
AS
BEGIN
    SELECT TOP 1 WITH TIES Title, ReleaseDate FROM MusicDisks ORDER BY ReleaseDate;
END;