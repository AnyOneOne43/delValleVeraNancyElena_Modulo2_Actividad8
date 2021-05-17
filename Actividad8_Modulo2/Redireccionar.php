<?php 
    include("./config.php");
    $conexion = connect_db();
    session_start();
    $usuario=$_SESSION['idus'];
    $promedio4=$_SESSION['Promedio4'];
    $promedio5=$_SESSION['Promedio5'];
    $promedio6=$_SESSION['Promedio6'];
    $Nombre="Nombre";
    $id_usuario="id_usuario";
    $id_carrera="id_carrera";
    $Carrera="Carrera";


    if(isset($_POST['Datos'])){
        $Nombre=$_POST['Nombre'];
        $Paterno=$_POST['Pat'];
        $Materno=$_POST['Mat'];
        $A=$_POST['Area'];
        $profesion=$_POST['Carrera'];
        $sql = "UPDATE Usuario SET Nombre='$Nombre', Paterno='$Paterno', Materno='$Materno', id_carrera='$profesion', id_area='$A' WHERE id_usuario='$usuario'";
        $query = mysqli_query($conexion, $sql); 
        if ($query) {
            $_SESSION["area"]=$A;
            $_SESSION["carrera"]=$profesion;
            header('Location:./Cuarto.php');
        } else {
            echo "Datos Erroneos, intente de nuevo.";
        }
        
    }
    if($_SESSION["Existo"]=="Sip"){ 
        echo "Entro";
        $sql1 = "UPDATE Usuario SET Prom_4=$promedio4, Prom_5=$promedio5, Prom_6=$promedio6 WHERE id_usuario='$usuario'";
        $query1 = mysqli_query($conexion, $sql1);
        header('Location:./Resultados.php');
        if ($query1) {
            echo "Se estan Calculando tus Posibilidades";
        } else {
            echo "Datos Erroneos, intente de nuevo.";
        }
        
    }
   
?>