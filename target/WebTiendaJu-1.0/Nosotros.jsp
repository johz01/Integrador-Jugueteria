<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--Título de la página-->
        <title>PlanetKIDS | Nosotros</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!------ BootStrap | JS ---------->


        <%@include file="WEB-INF/jspf/Styles.jspf" %> 
        <!------ Estilos CSS ---------->
        <link href="Resources/css/Nosotros.css" rel="stylesheet" type="text/css"/>                  

    </head>
    <body>
        <!-- Cabezera -->
        <%@include file="WEB-INF/jspf/cheader.jspf" %>
        <!-- Mision | Vision -->
        <div class="container section">
            <div class="row">
                <div class="col-md-6">
                    <img src="Resources/ImgVisionMision/fondo11.jpg" alt=""/>
                </div>
                <div class="col-md-6">
                    <h3>PlanetKids</h3>
                    <p>
                        Juguetes que puedan ser utilizados por el mayor número posible de niños. No supone un conjunto de criterios de diseño fijo, sino que propone mas bien una estrategia dinámica basado en la diversidad humana, la inclusión social y la igualdad. No pretende abarcar cada necesidad individual, sino considerar la diversidad 
                        como cualidad de la humanidad y conseguir mejores juguetes para beneficiar a mas niños.
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <h3>¿Que Hacemos?</h3>
                    <p> 
                        Juguetes Universales es la primera juguetería online focalizada en productos para niños con discapacidad en Argentina. Contamos con una amplia variedad
                        de juguetes pensados, diseñados y creados desde una mirada inclusiva y orientada a la comprensión de la diversidad.
                    </p>
                </div>
                <div class="col-md-6">
                    <img src="Resources/ImgVisionMision/fondo12.jpg" alt=""/>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <img src="Resources/ImgVisionMision/fondo13.jpg" alt=""/>
                </div>
                <div class="col-md-6">
                    <h3>¿Por qué?</h3>
                    <p>
                        Porque jugar en los niños es sinónimo de vida. A través de él aprenden a manejar el mundo que los rodea y adquieren habilidades para interactuar con el ambiente.
                    </p>
                </div>
            </div>

        </div>

        <!-- Footer -->
        <%@include file="WEB-INF/jspf/cfooter.jspf" %>
    </body>
</html>
