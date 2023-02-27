-- Obtener todos los usuarios que tienen una imagen de perfil:

SELECT nombre, imagen_perfil 
FROM usuarios 
WHERE imagen_perfil IS NOT NULL;