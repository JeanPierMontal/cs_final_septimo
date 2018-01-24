<?php
$conexion=mysqli_connect('localhost','root','','cs_final_septimo');
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>CLIENTES</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="css/main.css" />
    <script src="js/main.js"></script>
</head>
<body  background="img/fc.jpg" >
    <H1 class="titilocli">CLIENTES</H1>
    <br>
    <table border="1">
        <tr >
            <td>ID</td>
            <td>IDENTIFICACIÓN</td>
            <td>NOMBRE</td>
            <td>APELLIDO</td>
            <td>DIRECCIÓN</td>
            <td>TELEFONO</td>
        </tr>
        <?php
        
        $sql="select * from clientes";
        $result=mysqli_query($conexion,$sql);
        while ($mostrar=mysqli_fetch_array($result)) {
           
       
        ?>
        <tr>
            <td><?php echo $mostrar['id_cli']?></td>
            <td><?php echo $mostrar['identificacion_cli']?></td>
            <td><?php echo $mostrar['nom_cli']?></td>
            <td><?php echo $mostrar['apellido_cli']?></td>
            <td><?php echo $mostrar['direc_cli']?></td>
            <td><?php echo $mostrar['tele_cli']?></td>
        </tr>

        <?php
        }
        ?>

    </table>
</body>
</html>