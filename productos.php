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
    <link rel="stylesheet" type="text/css" media="screen" href="css/main_pro.css" />
    <script src="js/main.js"></script>
</head>

<STYLE>a {text-decoration: none;} </STYLE> 

<body  background="img/clientes.png" >
    <H1 class="titilocli">PRODUCTOS</H1>
    
    
   <ul><a href="nuevo_pro.php">
                <img src="img/nuevo.png" alt="nuevo" > 
                    </a></ul>



    <table border="1" class="tabla_cli">
        <tr> 
            <input type="text" size="50" maxlength="30" placeholder="Buscar Producto" name="nombre">
          
            

        </tr>
            <hr>
            <br>
        <tr class="prod_enca">
            
            <td>NOMBRE</td>
            <td>CANTIDAD</td>
            <td>PRECIO</td>
            <td>LINEA</td>
            <td>CATEGORIA</td>
            
            <td>ACCIÓN</td>
        </tr>
        <?php
        
        $sql="select nombre_pro, cantidad_pro, precio_pro, nombre_linea, nombre_cat from productos inner join categoria on 
        productos.id_cat=categoria.id_cat inner join lineas on productos.id_linea = lineas.id_linea";
        $result=mysqli_query($conexion,$sql);
        while ($mostrar=mysqli_fetch_array($result)) {
           
               
       
        ?>
        <tr>
            
            <td><?php echo $mostrar['nombre_pro']?></td>
            <td><?php echo $mostrar['cantidad_pro']?></td>
            <td><?php echo $mostrar['precio_pro']?></td>
            <td><?php echo $mostrar['nombre_linea']?></td>
            <td><?php echo $mostrar['nombre_cat']?></td>
             <td class="acciones"> 
             <a href=""><img src="img/editar.png" alt="edita" ></a>
             <a href=""><img src="img/eliminar.png" alt="elimina"></a>
             <a href="factura.html" target="hud"><img src="img/comprar.png" alt="comprar"></a>
             </td>
        </tr>

        <?php
        }
        
        ?>

    </table>
    
</body>
</html>