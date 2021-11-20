SELECT Playlist.Name as Playlist, Track.Name as "Track Title", Album.Title as Album, Artist.Name as Artist FROM Track
JOIN Album on Track.AlbumId = Album.AlbumId
JOIN Artist on Album.ArtistId = Artist.ArtistId
JOIN PlaylistTrack on Track.TrackId = PlaylistTrack.TrackId
JOIN Playlist on PlaylistTrack.PlaylistId = Playlist.PlaylistId
GROUP BY Playlist.PlaylistId
WHERE COUNT(Playlist.PlaylistId) = 1;