
-- Obtenha todos os membros de uma conversa em grupo, incluindo seus nomes e datas de ingresso

SELECT u.nombre, mg.fecha_union 
FROM usuarios u
JOIN miembros_grupo mg ON u.id = mg.usuario_id
WHERE mg.conversacion_id = 1;