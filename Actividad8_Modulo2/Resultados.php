<?php
   include("./config.php");
   $conexion = connect_db();
   session_start();
   $usuario=$_SESSION['idus'];
   $Prom_4="Prom_4";
   $Prom_5="Prom_5";
   $Prom_6="Prom_6";
   $id_carrera="id_carrera";
   $Carrera="Carrera";
   $Facultad="Facultad";
   $Promedio="Promedio";

   $consultasql="SELECT * FROM Usuario WHERE id_usuario='$usuario'";
    $query= mysqli_query($conexion,$consultasql);
    while($row=mysqli_fetch_array($query)){
        $PROMEDIOGENERAL=($row[$Prom_4]+$row[$Prom_5]+$row[$Prom_6])/3;
        echo "<table border='1' style='text-align:center'>
        <tr>
          <th>".$usuario."</th>
          <td>Promedio Cuarto:".$row[$Prom_4]."</td>
          <td>Promedio Quinto:".$row[$Prom_5]."</td>
          <td>Promedio Sexto:".$row[$Prom_6]."</td>
          <th>Promedio General:".$PROMEDIOGENERAL."</th>
        </tr>";
        $consultasql1="SELECT * FROM Carrera WHERE id_carrera='$row[$id_carrera]'";
        $query1= mysqli_query($conexion,$consultasql1);
        while($row1=mysqli_fetch_array($query1)){
            $PromCarrera=$row1[$Promedio]-.5;
            $Prom=$row1[$Promedio]+.5;
            if($row1[$Promedio]==0){
                $posibilidad="Carrera de Acceso Indirecto";
            }
            else if($PROMEDIOGENERAL>$row1[$Promedio]){
                $posibilidad="Alta";
            }
            else if($PROMEDIOGENERAL>=$Prom){
                $posibilidad="Media";
            }
            else if($PROMEDIOGENERAL>=$PromCarrera){
                $posibilidad="Baja";
            }
            else{
                $posibilidad="Casi Nula";
            }
        echo "<tr>
          <th colspan='2'>".$row1[$Carrera]."</th>
          <td colspan='2'>".$row1[$Facultad]."</td>
          <th colspan='2'>Tu posibilidad de entrar es:".$posibilidad."</th>
        </tr>";
        }
      echo "</table>";
      echo "<br>";
      echo "<form action='Cerrar.php' method='post'>
      <input type='submit' name='Cerrar' value='Eliminar Registro'>
      </form>";
    }
   

?>