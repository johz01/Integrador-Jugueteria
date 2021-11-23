<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--Título de la página-->
        <title>PlanetKIDS | Registrarse</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!------ BootStrap | JS ---------->

        <%@include file="WEB-INF/jspf/Styles.jspf" %>
        <!------ Estilos CSS ---------->                    
        <link href="Resources/css/Index.css" rel="stylesheet" type="text/css"/>   
    </head>
    <body>
        <%@include file="WEB-INF/jspf/cheader.jspf" %>
        <!-- Área de login-->
        <div class="container login__container my-5">
            <div class="row login__row">
                <div class="col-md-6 d-flex">               
                    <img class="login__imagek align-self-center" src="Resources/ImgVisionMision/fondo11.jpg" width="120%" alt="" />
                </div>
                <div class="col-md-4 d-flex">
                    <div class="align-self-center card login__card shadow-sm w-100">
                        <div class="card-body">
                            <form action="" method="post">
                                <input type="hidden" name="accion" value="IngresarAdmin">
                                <h2 class="text-muted text-center">REGISTRARSE</h2> 
                                <div class="container">
                                    <div class="form-group">
                                        <label>NOMBRE</label>
                                        <input type="text" name="nombre" class="form-control form-control-lg" placeholder="nombre compledo"/>
                                    </div>
                                    <div class="form-group">
                                        <label>APELLIDO</label>
                                        <input type="text" name="apellido" class="form-control form-control-lg" placeholder="apeliidos"/>
                                    </div>
                                    <div class="form-group">
                                        <label>DNI</label>
                                        <input type="text" name="dni" class="form-control form-control-lg" placeholder="dni"/>
                                    </div>
                                    <div class="form-group">
                                        <label>CONTRASEÑA</label>
                                        <input type="password" name="passAdmin" class="form-control form-control-lg"placeholder="Ingresar contraseña"/>
                                    </div>
                                    <div class="form-group">

                                        <input type="submit" class="btn btn-outline-dark btn-block"> <br> <br>   

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
        <%@include file="WEB-INF/jspf/cfooter.jspf" %>
    </body>
</html>
