USE NewMusicCollection;
GO

-- Показ повної інформації про музичні диски
EXEC GetAllMusicDisks;
GO

-- Показ повної інформації про музичні диски конкретного видавця
EXEC GetMusicDisksByPublisher @Publisher = 'Publisher A';
GO

-- Показ назви найпопулярнішого стилю
EXEC GetMostPopularGenre;
GO

-- Показ інформації про диск конкретного стилю з найбільшою кількістю пісень
EXEC GetDiskByGenreWithMostTracks @Genre = 'Pop';
GO

-- Видалення всіх дисків заданого стилю
EXEC DeleteDisksByGenre @Genre = 'Jazz';
GO

-- Видалення всіх дисків в назві яких є задане слово
EXEC DeleteDisksByTitleWord @Word = 'Album';
GO

-- Показ інформації про самий «старий» альбом і самий «молодий»
EXEC GetOldestAndYoungestAlbum;