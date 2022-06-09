SELECT u.nome_do_usuario AS usuario,
IF(MAX(YEAR(h.data_da_reproducao)) = 2021,
  'Usuário ativo',
  'Usuário inativo')
AS condicao_usuario
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON u.usuario_id = h.usuario_id
GROUP BY usuario
ORDER BY usuario;