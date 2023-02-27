
-- selecionar todas as conversas individuais

SELECT mensajes.conversacion_id, 
	   usuarios.id AS "USER", 
	   usuarios.numero_telefono AS "TELEF. USER",
	   mensajes.texto AS "Mens Enviado",
	   mensajes.fecha_envio
	  
	   
FROM conversaciones
JOIN mensajes on (conversaciones.id = mensajes.conversacion_id) AND
				  conversaciones.tipo = "individual"
						
JOIN usuarios on (mensajes.usuario_id = usuarios.id)						

ORDER BY  conversaciones.id, mensajes.fecha_envio 