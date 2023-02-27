
-- Mostrar a última vez que cada usuário fez login:

SELECT usuario_id, MAX(fecha_envio) 
FROM mensajes 
GROUP BY usuario_id;
