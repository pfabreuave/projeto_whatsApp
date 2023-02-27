
-- Obtenha o número total de mensagens não lidas em uma determinada conversa em grupo

SELECT COUNT(*) 
FROM mensajes 
WHERE conversacion_id = 3 AND leido = 0;

