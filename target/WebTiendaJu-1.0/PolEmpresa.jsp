<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>PlanetKIDS | Políticas </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!------ BootStrap | JS ---------->

        <%@include file="WEB-INF/jspf/Styles.jspf" %>
        <link href="Resources/css/PolEmpresa.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/cheader.jspf" %>
        <br> <br> <br> 
        <!-- Políticas -->
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="faq-section">
                        <h1>POLITICA DE LA EMPRESA</h1>
                        <div class="accordion" id="accordionExample">
                            <div class="card cstm-card">
                                <div class="card-header" id="headingOne">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            INFORMACION JUGUETERIA
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <dt>planerKIDS</dt>
                                        Empresa con fines de crecer en el mercado local tiene como mision ofrecer seguridad a los niños 
                                        como tambien brindar una atencion adecuada, promoviendo valores, tales como respeto y amabilidad. Asímismo fomentaremos el
                                        crecimiento personal de cada uno de nuestros trabajadores.  Tenemos como vision, ser la jugueteria de su preferencia,buscamos 
                                        expadirnos y darnos a conocer a nivel nacional como una de las mejores jugueteria, ante ello trataremos de brindarle el mejor 
                                        servicio juntos con los mejores profesionales
                                    </div>
                                </div>
                            </div>
                            <div class="card cstm-card">
                                <div class="card-header" id="headingTwo">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseThree">
                                            POLITICAS DE PRIVACIDAD
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <dt> INFORMACION BRINDADA POR EL USUARIO </dt>
                                        La informacion que brindara el cliente tales como NOMBRES COMPLETOS, DNI, FECHA DE NACEMIENTO,etc , sera confidencial y sera protegido , 
                                        contaremos con protocolos de seguridad de informacion, la cual garantize la seguridad de sus datos.
                                        <dt> INFORMACION RECOGIDA </dt>
                                        La informacion recolectada sera con el fin de poder mejorar el servicio. Nuestra meta es poder tener 
                                        un registro de todos nuestros usuarios. Asimismo el usuario tenga facilidades para adquirir algun producto o cita. 
                                        Ante ello la informacion recogida sera protegida como uno de los activos más importante de la empresa, manteniendo su informacion segura.
                                        <dt> CONTROL DE INFORMACION PERSONAL</dt>
                                        El usuario tiene la potestad de poder restringir todos sus datos brindados a la jugueteria. Nuestra 
                                        jugueteria no distribuira, ni prestara sus datos si no es bajo su permiso.La jugueteria se compromete a cuidar y proteger su informacion.                                     
                                    </div>
                                </div>
                            </div>
                            <div class="card cstm-card">
                                <div class="card-header" id="headingThree">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                            PRODUCTOS
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <dt>CONTAMOS CON PRODUCTOS EN CATEGORIAS COMO </dt>
                                        <DT>DISCAPACIDAD</DT>
                                        Todos nuestros jueguetes estan enfocados en alguna discapacidad tales visual,auditivo, motriz, y demas

                                    </div>
                                </div>
                            </div>
                            <div class="card cstm-card">
                                <div class="card-header" id="headingFour">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                            HORARIOS
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                                    <div class="card-body">

                                        <dt>Lunes y Viernes  </dt>
                                        10:00am - 7:00pm<br>  
                                        <dt>  Sabado</dt>
                                        10:00am - 5:00pm<br>    
                                        <dt>  Domingos </dt>
                                        10:00am - 2:00pm 
                                    </div> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br> <br> <br> 
        <!-- Footer -->
        <%@include file="WEB-INF/jspf/cfooter.jspf" %>
    </body>
</html>
