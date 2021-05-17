<?php
    include("./config.php");
    $conexion = connect_db();

    echo "<form action=IniciarSesion.php method=post>
      <fieldset>
        <legend><h3>Iniciar Sesion</h3></legend>
        Usuario:<input type='text' name='NoCuenta'>
        <br>
        <input type='submit' name='Iniciar' value='Iniciar Sesion'>
      </fieldset>
    </form>";

    if(isset($_POST['Iniciar'])){
        $id=$_POST["NoCuenta"];
        $sql = "INSERT INTO Usuario (id_usuario) VALUES ('$id')";
        $query = mysqli_query($conexion, $sql); 
        if ($query) {
            session_start();
            $_SESSION["idus"]=$id;
            header('Location:./Datosbasicos.php');
        } else {
            echo "Ya tienes un registro en Consultoria Kiki, para verlo presione en Ver.";
            echo "<form action=Resultados.php method=post>";
            session_start();
                $_SESSION["idus"]=$id;
                echo "<input type='hidden' name='id' value=$id>";
                echo "<input type='submit' name='Ver' value='Ver'>";
            echo "</form>";
        }
    }
?>
