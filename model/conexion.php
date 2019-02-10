<?php
/* Conectar a una base de datos de MySQL invocando al controlador */
$dsn = 'mysql:dbname=gestion_tareas;host=127.0.0.1';
$usuario = 'root';
$contrasena = '';

try {
    $gbd = new PDO($dsn, $usuario, $contrasena);
} catch (PDOException $e) {
    echo 'Falló la conexión: ' . $e->getMessage();
}

?>