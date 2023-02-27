
-- Obtenha o nome do usuário que enviou a mensagem mais recente em uma determinada conversa

SELECT u.nombre 
FROM usuarios u
JOIN mensajes m ON u.id = m.usuario_id AND
                   m.conversacion_id = 2
ORDER BY m.fecha_envio DESC
LIMIT 1;
