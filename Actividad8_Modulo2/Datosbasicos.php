<?php
    include("./config.php");
    $conexion = connect_db();
    session_start();
    $usuario=$_SESSION['idus'];
    $Nombre="Nombre";
    $id_usuario="id_usuario";
    $id_carrera="id_carrera";
    $Carrera="Carrera";
    echo "<form action='Redireccionar.php' method='post'>
      <fieldset>
        <legend><h3>Datos del Usuario</h3></legend>
        Nombre(s):
        <input type='text' name='Nombre'>
        <br>
        Apellido Paterno:
        <input type='text' name='Pat'>
        <br>
        Apellido Materno:
        <input type='text' name='Mat'>
        <br>
        Area:
        <select name='Area'>";
            $consultasql="SELECT * FROM Area";
            $query= mysqli_query($conexion,$consultasql);
            while($row=mysqli_fetch_array($query)){
                echo "<option value='".$row[$id_usuario]."'>".$row[$Nombre]."</option>";
            }
        echo "</select>
        <br>
        Carrera:
        <select name='Carrera'>";
        $consultas="SELECT * FROM Carrera";
        $query1= mysqli_query($conexion,$consultas);
        while($row1=mysqli_fetch_array($query1)){
            echo "<option value='".$row1[$id_carrera]."'>".$row1[$Carrera]."</option>";
        }
        echo "</select>
        <br>
        <input type='submit' name='Datos' value='Enviar Datos'>
      </fieldset>
    </form>";

    

?>