
-- Mostrar todas as conversas em grupo nas quais o usuário em questão participa

SELECT conversaciones.* 
FROM conversaciones 
JOIN miembros_grupo ON conversaciones.id = miembros_grupo.usuario_id  AND 
					   conversaciones.tipo = 'grupo'
     WHERE miembros_grupo.usuario_id = 2 

