SELECT FORMAT(MIN(P.plan_value),2) AS faturamento_minimo,
 FORMAT(MAX(P.plan_value),2) AS faturamento_maximo,
 FORMAT(AVG(P.plan_value),2) AS faturamento_medio,
 FORMAT(SUM(P.plan_value),2) AS faturamento_total
FROM SpotifyClone.plans AS P
LEFT JOIN SpotifyClone.users AS U
ON U.plan_id = P.plan_id;