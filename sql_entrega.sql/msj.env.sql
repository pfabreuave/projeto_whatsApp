
-- Obtenha todas as mensagens enviadas em uma conversa "INDIVIDUAL", classificadas por data de envio

SELECT ms.texto, ms.fecha_envio 
FROM mensajes AS ms
JOIN conversaciones AS cv ON (ms.conversacion_id = cv.id) AND
							  ms.conversacion_id = 3 AND 
							  cv.tipo = 'individual'
ORDER BY ms.fecha_envio ASC;
