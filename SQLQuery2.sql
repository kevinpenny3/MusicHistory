Select * from Genre

Insert Into Artist (ArtistName, YearEstablished) VALUES ('S Club 7', '1995')

INSERT INTO Album(Title, ReleaseDate, AlbumLength, [Label], ArtistId, GenreId ) VALUES ('S Club Its a thing', '1995', '15000', 'Def Jam', '28', '7');
INSERT INTO Song(Title, SongLength, ReleaseDate, GenreId, AlbumId, ArtistId) VALUES ('S Club Party', '120' , '1995', '7', '23', '29');


Select * from Artist
Select * from Album
Select * from Song


SELECT a.Title, s.Title, ar.ArtistName, g.[Label]
FROM Song s 
LEFT JOIN Album a 
ON s.AlbumId = a.Id
LEFT JOIN Artist ar
ON s.ArtistId = ar.Id
LEFT JOIN Genre g
ON s.GenreId = g.Id;

SELECT Count(AlbumId) 
AS 'Song Count', a.Title
FROM Song s
LEFT JOIN Album a
ON s.AlbumId = a.Id
GROUP BY AlbumId, a.Title
ORDER BY COUNT(AlbumId) desc;

SELECT Count(ArtistId) 
AS 'Song Count', ar.ArtistName
FROM Song s
LEFT JOIN Artist ar
ON s.ArtistId = ar.Id
GROUP BY ArtistId, ar.ArtistName
ORDER BY COUNT(ArtistId) desc;

SELECT Count(GenreId) 
AS 'Song Count', g.Label
FROM Song s
LEFT JOIN Genre g
ON s.GenreId = g.Id
GROUP BY GenreId, g.Label
ORDER BY COUNT(GenreId) desc;

SELECT Title, AlbumLength
AS 'Album Length'
FROM Album
WHERE AlbumLength = (SELECT MAX(AlbumLength) FROM Album);

SELECT s.Title as 'Song Title', a.Title as 'Album Title', SongLength as 'Song Length'
FROM Song s
LEFT JOIN Album a
ON s.AlbumId = a.Id
WHERE SongLength = (SELECT MAX(SongLength) from Song);








