<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--Título de la página-->
        <title>planetKIDS | Conctacto</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!------ BootStrap | JS ---------->
        <%@include file="WEB-INF/jspf/Styles.jspf" %>
        <!------ Estilos CSS ---------->                    
        <link href="Resources/css/Contacto.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <%@include file="WEB-INF/jspf/cheader.jspf" %>
        <!-- Contacto -->
        <section class="contact" id="contact">
            <div class="jumbotron jumbotron-fluid">
                <div class="container">
                    <div class="heading text-center wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
                        <h2>
                            <span>DÉJANOS UN MENSAJE</span>
                        </h2>
                        <p>Tus sugerencias seran de gran apoyo para mejorar constantemente<br></p>
                    </div>
                    <div class="main wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
                        <div class="row">
                            <div class="col-lg-8 left">
                                <h3>MENSAJERÍA</h3>
                                <form action=#" method="post">                                    
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <input type="text" name="nombre" class="form-control" placeholder="Nombres y Apellidos">
                                        </div>
                                        <div class="col-sm-6">
                                            <input type="email" name="correo" class="form-control" placeholder="Correo Electrónico">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <textarea class="form-control" name="mensaje" rows="5" id="comment" placeholder="Tú Mensaje" maxlength="240"></textarea>
                                    </div>
                                    <button class="btn btn-outline-dark" type="submit" name="Contacto.jsp" value="mensaje" onclick="alert('Mensaje Enviado')">Enviar</button>
                                </form>
                            </div>
                            <!-- Left -->
                            <div class="col-lg-4">
                                <div class="right">
                                    <h4>VEN A VISITARNOS</h4>
                                    <div class="info d-flex align-items-center">
                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                        <span>Av. Carlos Izaguirre, Los Olivos<br></span>
                                    </div>
                                    <div class="info d-flex align-items-center">
                                        <i class="fa fa-phone" aria-hidden="true"></i>
                                        <span> Llámanos a: <br> (01) 758-142  |  (+51) 993-987-245 </span>
                                    </div>
                                    <div class="info d-flex align-items-center">
                                        <i class="fas fa-envelope" aria-hidden="true"></i>
                                        <span> PlanetKIDS@hotmail.com
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>        
        <!-- Footer -->
        <%@include file="WEB-INF/jspf/cfooter.jspf" %>
    </body>
</html>
