SELECT Playlist.Name as Playlist, COUNT(*) From Playlist 
INNER JOIN PlaylistTrack on Playlist.PlaylistId = PlaylistTrack.PlaylistId 
GROUP BY Playlist 
HAVING count(*) = 1;