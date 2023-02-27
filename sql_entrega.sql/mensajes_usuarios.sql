
-- Obter todas as mensagens enviadas por um determinado usuário

SELECT nombre, texto
FROM usuarios AS u
JOIN mensajes AS m ON (u.id = m.usuario_id) AND
				 u.id = 1

