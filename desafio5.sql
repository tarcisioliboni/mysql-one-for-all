SELECT c.cancao AS cancao, COUNT(h.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN historico_de_reproducoes AS h
ON h.cancao_id = c.cancao_id
GROUP BY c.cancao ORDER BY reproducoes desc, cancao LIMIT 2;