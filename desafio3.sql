SELECT
u.nome_do_usuario AS usuario,
COUNT(historico.cancao_id) AS qtde_musicas_ouvidas,
ROUND(SUM(cancao.duracao_segundo)/60,2) AS total_minutos
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.cancoes AS cancao
INNER JOIN SpotifyClone.historico_de_reproducoes AS historico
ON u.usuario_id = historico.usuario_id AND cancao.cancao_id = historico.cancao_id
GROUP BY u.usuario_id
ORDER BY u.nome_do_usuario;