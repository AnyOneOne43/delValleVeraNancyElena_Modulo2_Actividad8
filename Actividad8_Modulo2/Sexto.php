<?php
    session_start();
    $area=$_SESSION["area"];
    echo "Area ".$area;

    echo "<form action='Sexto.php' method='post'>
      <fieldset>
        <legend><h3>Promedio Sexto Año</h3></legend>
        Matemáticas VI:<input type='number' name='Mate6'>
        <br>
        Derecho:<input type='number' name='Derecho'>
        <br>
        Literatura Mexicana e Iberoamericana:<input type='number' name='LMeIb'>
        <br>
        Lengua Extranjera VI o II:<input type='number' name='Lextra6o2'>
        <br>
        Psicoligía:<input type='number' name='sico'>
        <br>";

        if($area==1){
            echo "<br>
            Dibujo Constructivo II:<input type='number' name='DibC2'>
            <br>
            Física IV:<input type='number' name='Fisica4'>
            <br>
            Química IV:<input type='number' name='Quimica4'>
            <br>
            Biología V:<input type='number' name='Bio5'>
            <br>
            Optativa:
            <select name='Op1'>
                <option value='1'>Temas Selectos de Matemáticas</option>
                <option value='2'>Estadística y Probabilidad</option>
                <option value='3'>Físico</option>
                <option value='4'>Química</option>
                <option value='5'>Cosmografía</option>
                <option value='6'>Astronomía</option>
                <option value='7'>Informática aplicada a la Ciencia y la Industria</option>
                <option value='8'>Geología y Minerología</option>
                <option value='9'>Higiene Mental</option>
            </select>
            <br>";
        }

        if($area==2){
            echo " <br>
            Biología V:<input type='number' name='Bio5'>
            <br>
            Física IV:<input type='number' name='Fisica4'>
            <br>
            Química IV:<input type='number' name='Quimica4'>
            <br>
            Optativa:
            <select name='Op2'>
                <option value='1'>Geología y Minerología</option>
                <option value='2'>Físico-Química</option>
                <option value='3'>Temas Selectos de Biología</option>
                <option value='4'>Temas Selectos de Morfología y Fisiología</option>
                <option value='5'>Informática aplicada a la Ciencia y la Industria</option>
                <option value='6'>Higiene Mental</option>
            </select>
            <br>";
        }

        if($area==3){
        echo "<br>
        Geografía Económica:<input type='number' name='GeoEco'>
        <br>
        Introducción al estudio de las Ciencias Sociales y Económicas<input type='number' name='IntroCSE'>
        <br>
        Problemas socio-políticos de México:<input type='number' name='ProblemSPM'>
        <br>
        Optativa:
        <select name='Op3'>
            <option value='1'>Contabilidad y Gestión Administrativas</option>
            <option value='2'>Geografía Política</option>
            <option value='3'>Sociología</option>
            <option value='4'>Higiene Mental</option>
        </select>
        <br>";
        }

        if($area==4){
        echo "<br>
        Introducción al Estudio de las Ciencias Sociales y Económicas:<input type='number' name='IntroCSE'>
        <br>
        Historia de la Cultura:<input type='number' name='HistoCult'>
        <br>
        Historia de las Doctrinas Filosóficas:<input type='number' name='HistoDfilo'>
        <br>
        <select name='Op4'>
            <option value='1'>Revolución Mexicana</option>
            <option value='2'>Latín</option>
            <option value='3'>Griego</option>
            <option value='4'>Modelado II</option>
            <option value='5'>Pensamiento Filosófico en México</option>
            <option value='6'>Higiene Mental</option>
            <option value='7'>Estética</option>
            <option value='8'>Historia del Arte</option>
        </select>
        <br>";
        }
        
        echo "Calificación Optativa:<input type='number' name='Optativa'>
        <br>
        
        <input type='submit' name='P6' value='Calcular Posibilidades'>
      </fieldset>
    </form>";

    if(isset($_POST['P6'])){
        $a=$_POST['Mate6'];
        $b=$_POST['Derecho'];
        $c=$_POST['LMeIb'];
        $d=$_POST['Lextra6o2'];
        $e=$_POST['sico'];
        $opt=$_POST['Optativa'];

        if($area==1){
            $f=$_POST['DibC2'];
            $g=$_POST['Fisica4'];
            $h=$_POST['Quimica4'];
            $i=$_POST['Bio5'];
            
            $PROMEDIO6=($a+$b+$c+$d+$e+$f+$g+$h+$i+$opt)/10;
        }

        if($area==2){
            $f=$_POST['Bio5'];
            $g=$_POST['Fisica4'];
            $h=$_POST['Quimica4'];
            
            $PROMEDIO6=($a+$b+$c+$d+$e+$f+$g+$h+$opt)/9;
        }

        if($area==3){
            $f=$_POST['GeoEco'];
            $g=$_POST['IntroCSE'];
            $h=$_POST['ProblemSPM'];
            
            $PROMEDIO6=($a+$b+$c+$d+$e+$f+$g+$h+$opt)/9;
        }

        if($area==4){
            $f=$_POST['IntroCSE'];
            $g=$_POST['HistoCult'];
            $h=$_POST['HistoDfilo'];
            
            $PROMEDIO6=($a+$b+$c+$d+$e+$f+$g+$h+$opt)/9;
        }
        echo $PROMEDIO6;
        $_SESSION["Promedio6"]=$PROMEDIO6;
        $_SESSION["Existo"]="Sip";
        header('Location:./Redireccionar.php');
    }
?>