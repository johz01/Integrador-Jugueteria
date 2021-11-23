<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--Título de la página-->
        <title> PlanetKIDS | Login </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!------ BootStrap | JS ---------->

        <%@include file="WEB-INF/jspf/Styles.jspf" %>
        <!------ Estilos CSS ---------->                    
        <link href="Resources/css/Index.css" rel="stylesheet" type="text/css"/>   

    </head>
    <body>
        <!-- Área de cabezera-->
        <%@include file="WEB-INF/jspf/cheader.jspf" %>
        <br><br><br>
        <!-- Área de login-->
        <%
            String mensaje = "";
            if (request.getAttribute("mensaje") != null) {
                mensaje = (String) request.getAttribute("mensaje");
            }
        %>  
        <div class="container login__container my-5">
            <div class="row login__row">
                <div class="col-md-6 d-flex">               
                    <img class="login__imagek align-self-center" src="Resources/ImgVisionMision/fondo11.jpg" width="120%" alt="" />
                </div>
                <div class="col-md-4 d-flex">
                    <div class="align-self-center card login__card shadow-sm w-100">
                        <div class="card-body">
                            <form action="ClienteServlet" method="POST">

                                <h2 class="text-muted text-center">INICIAR SESIÓN</h2> 
                                <div class="container">
                                    <div class="form-group">
                                        <label>USUARIO</label>
                                        <input type="text" name="user" class="form-control form-control-lg" placeholder="Ingresar usuario"/>
                                    </div>
                                    <div class="form-group">
                                        <label>CONTRASEÑA</label>
                                        <input type="password" name="pass" class="form-control form-control-lg"placeholder="Ingresar contraseña"/>
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" name="accion" value="Login" class="btn btn-outline-dark btn-block"> <br> <br>   
                                        <div class="d-flex justify-content-between">
                                            <center>Si no tienes cuenta
                                                <a href="registrarse.jsp"> Resgistrate aquí </a> 
                                            </center>
                                        </div>                                        
                                    </div>
                                    <div class="form-group">

                                        <h2 class="text-center">${mensaje}</h2>                                        
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br> <br> <br>
        <%@include file="WEB-INF/jspf/cfooter.jspf" %>
    </body>
</html>
