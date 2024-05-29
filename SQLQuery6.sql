USE NewMusicCollection;
GO

-- Вставка даних в таблицю MusicDisks
INSERT INTO MusicDisks (DiskID, Title, Artist, Publisher, ReleaseDate, Genre, NumberOfTracks) VALUES
(1, 'Album 1', 'Artist 1', 'Publisher A', '2020-01-01', 'Rock', 10),
(2, 'Album 2', 'Artist 2', 'Publisher B', '2021-02-02', 'Pop', 12),
(3, 'Album 3', 'Artist 3', 'Publisher C', '2019-03-03', 'Jazz', 8),
(4, 'Album 4', 'Artist 4', 'Publisher D', '2022-04-04', 'Pop', 14);