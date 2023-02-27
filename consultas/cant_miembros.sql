-- Mostrar la cantidad de miembros que tiene cada grupo:

SELECT conversacion_id, COUNT(*) 
FROM miembros_grupo 
GROUP BY conversacion_id;