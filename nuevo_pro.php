<?php
$conexion=mysqli_connect('localhost','root','','cs_final_septimo');
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="css/main_nuevo_pro.css" />
    <script src="js/main.js"></script>
</head>
<body >

    <h1> <center>NUEVO PRODUCTO</center> </h1>
        <hr>
        <P>
        
    <fieldset>
        <hr>
        <p>
        <label>
            <span class="dato_pro" > Nombre Pro:</span>
            <input name="nombre_pro" size="30" maxlength="20" >
        </label><p>
        <label>
                <span class="dato_pro"> Cantidad Pro:</span> 
                <input name="cantidad_pro" size="30" maxlength="20">
        </label><p>
        <label>
                <span class="dato_pro"> Precio Pro:</span>
                <input name="precio_pro" size="30" maxlength="10" >
        </label><p>
        <label>
            
            <form method='POST'>
                <span class="dato_pro"> Linea:</span>
                <select class="com_id_linea" name="id_linea">

                <?php
        
        $sql="select * from lineas";
        $result=mysqli_query($conexion,$sql);
        while ($mostrar=mysqli_fetch_array($result)) {
            echo "<option>";
            echo $mostrar['nombre_linea'];
            echo "</option>";

        }
                  
        ?>
                </select>
                           
            </form>
        </label><p>
        <label>
            
            <form method='POST'>
                <span class="dato_pro" > Categoria:</span>
                <select class="com_id_cat" name="id_linea">

                <?php
        
        $sql="select * from categoria";
        $result=mysqli_query($conexion,$sql);
        while ($mostrar=mysqli_fetch_array($result)) {
            echo "<option>";
            echo $mostrar['nombre_cat'];
            echo "</option>";

        }
                  
        ?>
                </select>
                           
            </form>
        </label><p>

        <a href="productos.php">
        
                <img src="img/guardar.png" alt="guardar" > 
                    </a>

    </fieldset>
    
    <table>
        <tr>
            <td><h2>Ejemplo</h2><hr></td>
        </tr>
        <tr>
            <td> <h3>Nombre Pro: &#160; &#160; Pasta Dental</h3> </td>
        </tr>
        <tr>
            <td> <h3>Cantidad Pro: &#160;  50</h3> </td>
        </tr>
        <tr>
            <td> <h3>Precio Pro: &#160; &#160; &#160; &#160; $ 1,00</h3> </td>
        </tr>
        <tr>
            <td> <h3>Linea: &#160; &#160; &#160;&#160; &#160;&#160; &#160; &#160; &#160; Linea de aseo</h3> </td>
        </tr>
        <tr>
            <td> <h3>Categoria: &#160; &#160; &#160; &#160;&#160; Lacteos</h3> </td>
        </tr>
    </table>
    



    
</body>
</html>