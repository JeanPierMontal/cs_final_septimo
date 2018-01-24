$(busca_productos());


function busca_productos(consulta) {

    $.ajax({
        url: 'productos.php',
        type: 'POST',
        dataType: 'html',
        data: {consulta: consulta},
          
    })
    .done(function (respuesta) {
        $("·datos").html(respuesta);
               
    })
    .fail(function(){
        console.log("error");
    })
    
}