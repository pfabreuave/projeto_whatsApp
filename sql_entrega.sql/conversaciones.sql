
-- seleção de conversas em grupo em sequência

SELECT mensajes.conversacion_id, 
	   usuarios.id AS "USER", 
	   usuarios.numero_telefono AS "TELEF. USER",
	   mensajes.texto AS "Mens Enviado",
	   mensajes.fecha_envio
	  
	   
FROM conversaciones
JOIN mensajes ON (conversaciones.id = mensajes.conversacion_id) AND
						conversaciones.tipo = "grupo"
						
JOIN usuarios ON (mensajes.usuario_id = usuarios.id)						

ORDER BY  conversaciones.id, mensajes.fecha_envio 

