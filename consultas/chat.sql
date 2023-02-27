-- Mostrar todos los usuarios cuyo estado es "Disponible":

SELECT * FROM usuarios WHERE estado='Disponible';


-- Mostrar todas las conversaciones en las que participa el usuario con ID 2:

SELECT conversaciones.* 
FROM conversaciones 
JOIN miembros_grupo ON conversaciones.id = miembros_grupo.usuario_id  AND 
					   conversaciones.tipo = 'grupo'
     WHERE miembros_grupo.usuario_id = 2 

-- Mostrar todas las conversaciones en las que participa el usuario con ID 2:  pendiente

SELECT conversaciones.* 
FROM conversaciones 
WHERE conversaciones.tipo = 'individual' AND 
     (conversaciones.id = (SELECT conversacion_id 
                           FROM mensajes 
                           WHERE usuario_id = 2) OR 
      conversaciones.id = (SELECT usuario_id 
                            FROM mensajes 
                            WHERE conversacion_id = (SELECT conversacion_id 
                            FROM mensajes 
                            WHERE usuario_id = 2)));


-- todos los mensages enviados por un usuario

SELECT * 
FROM mensajes 
WHERE usuario_id=1;


-- Mostrar todos los mensajes enviados en la conversación con ID 3 (usuario 3):

SELECT * 
FROM mensajes 
WHERE conversacion_id = 3;

-- Mostrar todos los miembros del grupo con ID 1 y su rol:   pendiente

SELECT usuarios.*
FROM usuarios 
JOIN miembros_grupo ON usuarios.id = miembros_grupo.usuario_id 
WHERE miembros_grupo.id = 1;

-- Mostrar todos los mensajes eliminados por el usuario con ID 2:

SELECT mensajes.*, mensajes_eliminados.fecha_eliminacion 
FROM mensajes 
JOIN mensajes_eliminados ON mensajes.id = mensajes_eliminados.mensaje_id AND
							mensajes_eliminados.usuario_id = 2;


-- Mostrar todas las notificaciones del usuario con ID 1:

SELECT * 
FROM notificaciones 
WHERE usuario_id = 1;


-- Mostrar la última vez que cada usuario inició sesión:

SELECT usuario_id, MAX(fecha_envio) 
FROM mensajes 
GROUP BY usuario_id;

-- Mostrar la cantidad de miembros que tiene cada grupo:

SELECT conversacion_id, COUNT(*) 
FROM miembros_grupo 
GROUP BY conversacion_id;

-- Mostrar todas las conversaciones que tienen más de dos miembros:  pendiente

SELECT conversaciones.* 
FROM conversaciones 
JOIN miembros_grupo ON conversaciones.id = miembros_grupo.id 
WHERE conversaciones.tipo = 'grupo' 
GROUP BY conversaciones.id 
HAVING COUNT(*) > 2;


[00:29, 26/02/2023] Danilson Nunes Dos Reis: \\\*****---------------********------------------*******---------/////
AQUI 10 QUERYS MAS:


-- Obtener todos los usuarios que tienen una imagen de perfil:

SELECT nombre, imagen_perfil 
FROM usuarios 
WHERE imagen_perfil IS NOT NULL;


-- Obtener todas las conversaciones individuales en las que ha participado un usuario determinado: pendiente

SELECT id, nombre 
FROM conversaciones
WHERE tipo = 'individual' AND 
      id IN (SELECT DISTINCT conversacion_id  
	  FROM mensajes 
	  WHERE usuario_id = 2
);


-- Obtener la cantidad de miembros que tiene una conversación de grupo:

SELECT COUNT(*) 
FROM miembros_grupo 
WHERE conversacion_id = 1;

-- Obtener el nombre del usuario que ha enviado el mensaje más reciente en una conversación determinada:

SELECT u.nombre 
FROM usuarios u
JOIN mensajes m ON u.id = m.usuario_id AND
                   m.conversacion_id = 2
ORDER BY m.fecha_envio DESC
LIMIT 1;

--- Obtener el número de teléfono de un usuario a partir de su nombre:

SELECT numero_telefono, nombre 
FROM usuarios 
WHERE nombre LIKE 'Pedro%'

-- Obtener el número de mensajes enviados por un usuario determinado:

SELECT COUNT(*) 
FROM mensajes 
WHERE usuario_id = 3;

-- Obtener todos los miembros de una conversación de grupo, incluyendo sus nombres y fechas de unión:

SELECT u.nombre, mg.fecha_union 
FROM usuarios u
JOIN miembros_grupo mg ON u.id = mg.usuario_id
WHERE mg.conversacion_id = 1;

-- Obtener todos los mensajes enviados en una conversación individual, ordenados por fecha de envío:

SELECT ms.texto, ms.fecha_envio 
FROM mensajes AS ms
JOIN conversaciones as cv on (ms.conversacion_id = cv.id) AND
							  ms.conversacion_id = 3 AND 
							  cv.tipo = 'individual'
ORDER BY ms.fecha_envio ASC;


-- Obtener la fecha y hora de la última vez que un usuario determinado inició sesión:

SELECT ultima_conexion 
FROM usuarios 
WHERE id = 5;

-- Obtener el número total de mensajes no leídos en una conversación de grupo determinada:

SELECT COUNT(*) 
FROM mensajes 
WHERE conversacion_id = 3 AND leido = 0;