USE NewMusicCollection;
GO

-- ����� ����� ���������� ��� ������ �����
EXEC GetAllMusicDisks;
GO

-- ����� ����� ���������� ��� ������ ����� ����������� �������
EXEC GetMusicDisksByPublisher @Publisher = 'Publisher A';
GO

-- ����� ����� ��������������� �����
EXEC GetMostPopularGenre;
GO

-- ����� ���������� ��� ���� ����������� ����� � ��������� ������� �����
EXEC GetDiskByGenreWithMostTracks @Genre = 'Pop';
GO

-- ��������� ��� ����� �������� �����
EXEC DeleteDisksByGenre @Genre = 'Jazz';
GO

-- ��������� ��� ����� � ���� ���� � ������ �����
EXEC DeleteDisksByTitleWord @Word = 'Album';
GO

-- ����� ���������� ��� ����� ������� ������ � ����� ��������
EXEC GetOldestAndYoungestAlbum;