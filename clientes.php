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
    <link rel="stylesheet" type="text/css" media="screen" href="css/main_cli.css" />
    <script src="js/main.js"></script>
</head>

<STYLE>a {text-decoration: none;} </STYLE> 

<body  background="img/clientes.png" >
    <H1 class="titilocli">CLIENTES</H1>
    
   <ul><a href="www.google.com">
                <img src="img/nuevo.png" alt="nuevo" > 
                    </a></ul>


<center>
    <table border="1" class="tabla_cli">
       
            <hr>
            <br>
        <tr class="clientes_enca">
            
            <td>IDENTIFICACIÓN</td>
            <td>NOMBRE</td>
            <td>APELLIDO</td>
            <td>DIRECCIÓN</td>
            <td>TELEFONO</td>
            
            <td>ACCIÓN</td>
        </tr>
        <?php
        
        $sql="select * from clientes";
        $result=mysqli_query($conexion,$sql);
        while ($mostrar=mysqli_fetch_array($result)) {
           
       
        ?>
        <tr>
            
            <td><?php echo $mostrar['identificacion_cli']?></td>
            <td><?php echo $mostrar['nom_cli']?></td>
            <td><?php echo $mostrar['apellido_cli']?></td>
            <td><?php echo $mostrar['direc_cli']?></td>
            <td><?php echo $mostrar['tele_cli']?></td>
             <td class="acciones"> <a href="www.google.com">
                <img src="img/editar.png" alt="edita" > </a>  <a href="dsa">
                    <img src="img/eliminar.png" alt="elimina"></a></td>
        </tr>

        <?php
        }
        ?>

    </table></center>
</body>
</html>