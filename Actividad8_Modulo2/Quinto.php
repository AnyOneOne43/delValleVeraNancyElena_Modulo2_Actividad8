<?php
    session_start();

    echo "<form action='Quinto.php' method='post'>
    <fieldset>
      <legend><h3>Promedio Quinto Año</h3></legend>
      Matemáticas V:<input type='number' name='Mate5'>
      <br>
      Química:<input type='number' name='Quimica'>
      <br>
      Biología IV:<input type='number' name='Bio4'>
      <br>
      Educación para la Salud:<input type='number' name='EduSalud'>
      <br>
      Historia de México II:<input type='number' name='HistoMex2'>
      <br>
      Etimologias Grecolatinas:<input type='number' name='Etimologias'>
      <br>
      Lengua Extranjera V o I:<input type='number' name='LenguaExtra5o1'>
      <br>
      Ética:<input type='number' name='Etica'>
      <br>
      Educación Física V:<input type='number' name='EduFis5'>
      <br>
      Educación Estética y Artística V:<input type='number' name='EEArt5'>
      <br>
      Orientación Educativa:<input type='number' name='OEdu'>
      <br>
      Literatura Universal:<input type='number' name='Lite'>
      <br>
      <input type='submit' name='P5' value='Enviar'>
    </fieldset>
  </form>";

  if(isset($_POST['P5'])){
    $a=$_POST['Mate5'];
    $b=$_POST['Quimica'];
    $c=$_POST['Bio4'];
    $d=$_POST['EduSalud'];
    $e=$_POST['HistoMex2'];
    $f=$_POST['Etimologias'];
    $g=$_POST['LenguaExtra5o1'];
    $h=$_POST['Etica'];
    $i=$_POST['EduFis5'];
    $j=$_POST['EEArt5'];
    $k=$_POST['OEdu'];
    $l=$_POST['Lite'];
    
    $PROMEDIO5=($a+$b+$c+$d+$e+$f+$g+$h+$i+$j+$k+$l)/12;
    echo $PROMEDIO5;
    $_SESSION["Promedio5"]=$PROMEDIO5;
    header('Location:./Sexto.php');
}
?>