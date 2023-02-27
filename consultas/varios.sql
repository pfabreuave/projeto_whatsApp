SELECT conversaciones.* 
FROM conversaciones 
JOIN miembros_grupo ON conversaciones.id = miembros_grupo.id 
WHERE miembros_grupo.usuario_id = 2 AND conversaciones.tipo = 'grupo';

SELECT conversaciones.* 
FROM conversaciones 
JOIN miembros_grupo ON miembros_grupo.usuario_id = 2 AND conversaciones.tipo = 'grupo'; 

SELECT conversaciones.* 
FROM conversaciones 
WHERE conversaciones.tipo = 'individual' AND 
	 (conversaciones.id = (SELECT conversacion_id FROM mensajes WHERE usuario_id = 2) OR 
	  conversaciones.id = (SELECT usuario_id FROM mensajes 
						   WHERE conversacion_id = (SELECT conversacion_id 
						   FROM mensajes 
						   WHERE usuario_id = 2)));


SELECT conversaciones.* 
FROM conversaciones 
WHERE conversaciones.tipo = 'individual' AND 
	 (conversaciones.id = (SELECT conversacion_id FROM mensajes WHERE mensajes.usuario_id > 1) OR 
	  conversaciones.id = (SELECT usuario_id FROM mensajes 
						   WHERE conversacion_id = (SELECT conversacion_id 
						   FROM mensajes 
						   WHERE usuario_id > 1)));						   
						  
--Mostrar la cantidad de miembros que tiene cada grupo:
SELECT conversacion_id, COUNT(*) FROM miembros_grupo GROUP BY conversacion_id;

