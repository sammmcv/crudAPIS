Sistema para el consumo de APIs externas como TVMaze, Open Library y Google API. Además cuanta con funcionalidades CRUD de usuarios por roles. Este proyecto es elaborado con Spring Boot y la base de datos MySQL.

INSTRUCCIONES PARA EJECUTAR EL PROYECTO:

o Tener instalado Docker (desktop preferentemente)

o Ejecutar o importar en nuestro gestor de base de datos el archivo "crud.sql" con la base de datos que utilizaremos.

o En el archivo "application.properties" debemos cambiar la contraseña de MySQL a la que tengamos nosotros en nuestra maquina local . Colocar de igual forma las llaves correspondiente para la autentificación con Google.

o Abrir una terminal en la ruta de nuestro proyecto para ejecutar el siguiente comando: "docker-compose up".

o Verificar en nuestro navegador que se haya levantado nuestra app en "localhost:8080".

*Nota por defecto se desplegara en el puerto 8080.

INTERACCION CON LOS ENDPOINTS DE NUESTRA API:

Ejemplos:

-Registro de Usuario Endpoint: POST /api/auth/register

-Inicio de Sesión: Endpoint: POST /api/auth/login

-Obtener Lista de Usuarios (Administrador) Endpoint: GET /api/users

-Actualizar Información del Usuario Endpoint: PUT /api/users/{id}

-Eliminar Usuario Endpoint: DELETE /api/users/{id}

-Buscar Películas por Nombre Endpoint: GET /api/movies?name={movieName}

-Buscar Libros por Nombre Endpoint: GET /api/books?name={bookName}

