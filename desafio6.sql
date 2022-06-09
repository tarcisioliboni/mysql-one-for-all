SELECT MIN(planos.valor_do_plano) AS faturamento_minimo,
MAX(planos.valor_do_plano) AS faturamento_maximo,
ROUND(AVG(planos.valor_do_plano), 2) AS faturamento_medio,
SUM(planos.valor_do_plano) AS faturamento_total
FROM SpotifyClone.planos
JOIN usuarios ON planos.plano_id = usuarios.plano_id;