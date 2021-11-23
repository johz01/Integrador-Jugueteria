<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
           <title>PlanetKIDS</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!------ BootStrap | JS ---------->
        <%@include file="WEB-INF/jspf/Styles.jspf" %> 
        <!------ Estilos CSS ---------->
        <link href="Resources/css/Index.css" rel="stylesheet" type="text/css"/>        
    </head>
    <body>

        <!-- Cabezera -->
        <%@include file="WEB-INF/jspf/cheader.jspf" %>
        <!-- Carrusel de Img -->  
        <%@include file="WEB-INF/jspf/ccarusel.jspf" %>
        <!--Servicios-->
        <div class="container section">
            <center><h1 class="my-5">CATEGORIA DE PRODUCTOS</h1></center> 
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-12 p-3">
                    <div class="card h-100">
                        <img class="card-img-top img-fluid" src="Resources/Imgcategoria/AUDITIVOS.jpg" width="150" height="350" alt="img">
                        <div class="card-body">
                            <h4 class="card-title">JUGUETES AUDITIVOS</h4>
                            <p class="card-text">Para los niños que presentan problemas de audición o algún tipo de discapacidad auditiva, la mejor forma para conocer el mundo que los rodea y comunicarse es a través del resto de sus sentidos. Por esto precisan 
                                juguetes sensoriales, como juguetes visuales, o táctiles</p>
                        </div>

                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12 p-3">
                    <div class="card h-100">
                        <img class="card-img-top img-fluid" src="Resources/Imgcategoria/VISUAL.jpg" alt="img">
                        <div class="card-body">
                            <h4 class="card-title">DISCAPACIDAD VISUAL</h4>
                            <p class="card-text"> Cuando un niño presenta problemas de visión o algún grado de discapacidad visual, la mejor forma para conocer el mundo que tiene alrededor es a través del resto de sus sentidos. Es importante que pueda jugar y sentir, descubrir su alrededor, y así alejarse de cualquier duda o miedo que pudiera presentar su entorno  Por esto es 
                                importante facilitar el juego y el uso de juguetes, eligiendo aquellos que tienen efectos sonoros</p>
                        </div>
                        <div class="card-footer text-center bg-white">
                            <a class="btn btn-outline-dark" href="CategoriaServlet?accion=listar">Seguir Observando</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12 p-3">
                    <div class="card h-100">
                        <img class="card-img-top img-fluid" src="Resources/Imgcategoria/MOTRICIDAD.jpg" alt="img">
                        <div class="card-body">
                            <h4 class="card-title">DISCAPACIDAD MOTRIZ</h4>
                            <p class="card-text">El juego de los niños con discapacidad motora  va a estar condicionado a la capacidad de movimientos de cada chico en particular. Por este motivo hay que seleccionar juegos y juguetes que les ayuden a superar barreras, en principio físicas. Pueden ser interesantes para ellos los juguetes con piezas fáciles de encajar, estructuras grandes,
                                que no lo obliguen a realizar movimientos demasiados rápidos ni precisos.</p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <br> <br> <br> 
        <!-- Contacto | Mapa -->
        <section class="contact" id="contact">
            <div class="jumbotron jumbotron-fluid">
                <section>
                    <h2>
                        <center><span> NUESTRA UBICACION</span></center>
                    </h2>
            </div>
            <br>
            <img.grande>
                <center> 
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3901.0716201142727!2d-77.04046908518681!3d-12.107249491427055!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c840b960eafd%3A0x1edd86f5b6fd724a!2sCaramba!5e0!3m2!1ses-419!2spe!4v1635797379606!5m2!1ses-419!2spe" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                </center>
            </img.grande>

        </section>
        <br> <br> <br> <br>
        <!-- Footer -->
        <%@include file="WEB-INF/jspf/cfooter.jspf" %>
    </body>
</html>

