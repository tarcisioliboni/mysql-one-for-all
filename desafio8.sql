SELECT art.nome_do_artista AS artista, alb.nome_do_album AS album
FROM SpotifyClone.artistas AS art 
INNER JOIN SpotifyClone.albuns AS alb
ON art.artista_id = alb.artista_id
WHERE art.nome_do_artista LIKE 'Walter Phoenix'
GROUP BY artista, album
ORDER BY artista DESC, album;