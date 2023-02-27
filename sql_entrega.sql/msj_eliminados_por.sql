
-- Mostrar todas as mensagens excluídas pelo usuário fornecido

SELECT mensajes.*, mensajes_eliminados.fecha_eliminacion 
FROM mensajes 
JOIN mensajes_eliminados ON 
	 mensajes.id = mensajes_eliminados.mensaje_id AND
	 mensajes_eliminados.usuario_id = 2;

