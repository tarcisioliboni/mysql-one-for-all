SELECT art.nome_do_artista AS artista, alb.nome_do_album AS album,
COUNT(s.artista_id) AS seguidores
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON art.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS s
ON art.artista_id = s.artista_id
GROUP BY artista, album, s.artista_id
ORDER BY seguidores DESC, artista, album