<?php
     include("./config.php");
     $conexion = connect_db();
     session_start();
     $usuario=$_SESSION['idus'];
     $sql ="DELETE FROM Usuario WHERE id_usuario=$usuario";
     $query = mysqli_query($conexion, $sql); 
        if ($query) {
            echo "Datos Eliminados Correctamente.";
        } else {
            echo "No se eliminaron los datos.";
        }
     session_unset();
     session_destroy();
?>