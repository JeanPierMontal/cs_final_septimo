select nombre_pro, cantidad_pro, precio_pro, nombre_linea, nombre_cat from productos inner join categoria on 
productos.id_cat=categoria.id_cat inner join lineas on productos.id_linea = lineas.id_linea