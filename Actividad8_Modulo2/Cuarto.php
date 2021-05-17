<?php
    session_start();

    echo "<form action='Cuarto.php' method='post'>
    <fieldset>
      <legend><h3>Promedio Cuarto Año</h3></legend>
      Matemáticas IV:<input type='number' name='Mate4'>
      <br>
      Fisica III:<input type='number' name='Fisica3'>
      <br>
      Lengua Española:<input type='number' name='LE'>
      <br>
      Historia Universal III:<input type='number' name='HU3'>
      <br>
      Lógica:<input type='number' name='Logic'>
      <br>
      Geogrfía:<input type='number' name='Geo'>
      <br>
      Dibujo II:<input type='number' name='D2'>
      <br>
      Lengua Extranjera IV:<input type='number' name='Lenguaestra4'>
      <br>
      Educación Estética y Artística IV:<input type='number' name='EEA4'>
      <br>
      Educación Física IV: <input type='number' name='EduFIV'>
      <br>
      Orientación Educativa IV:<input type='number' name='OrientaIV'>
      <br>
      Informática:<input type='number' name='Informa'>
      <br>
      <input type='submit' name='P4' value='Enviar'>
    </fieldset>
  </form>";

  if(isset($_POST['P4'])){
      $a=$_POST['Mate4'];
      $b=$_POST['Fisica3'];
      $c=$_POST['LE'];
      $d=$_POST['HU3'];
      $e=$_POST['Logic'];
      $f=$_POST['Geo'];
      $g=$_POST['D2'];
      $h=$_POST['Lenguaestra4'];
      $i=$_POST['EEA4'];
      $j=$_POST['EduFIV'];
      $k=$_POST['OrientaIV'];
      $l=$_POST['Informa'];
      
      $PROMEDIO4=($a+$b+$c+$d+$e+$f+$g+$h+$i+$j+$k+$l)/12;
      $_SESSION["Promedio4"]=$PROMEDIO4;
      header('Location:./Quinto.php');
  }
?>