<%@page import="com.utp.model.entities.Producto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--Título de la página-->
        <title>PlanetKIDS | Producto</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!------ BootStrap | JS ---------->


        <%@include file="WEB-INF/jspf/Styles.jspf" %> 

        <!------ Estilos CSS ---------->
        <link href="Resources/css/Index.css" rel="stylesheet" type="text/css"/>        
    </head>
    <body>
        <%@include file="WEB-INF/jspf/cheader.jspf" %>

        <%

            List<Producto> lis = (ArrayList) request.getAttribute("producto");

            int cuenta = 0;
        %>    

    <center>
        <BR> <BR>
        <div class="container mt-4">
            <div class="row">
                <%
                    for (Producto x : lis) {
                %>
                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-header">
                            <lap><%=x.getNom()%></lap>
                        </div>
                        <div class="card-body">
                            <i>S/<%=x.getPrecio()%></i>
                            <img src="Resources/Imgproductos/<%=x.getImg()%>" width="200" height="180">
                        </div>
                        <div class="card-footer text-center">

                            <div>
                                <a href="CompraServlet?accion=Agregar&cod=<%=x.getCod()%>&id=<%=x.getCodCat()%>"  class="btn btn-outline-info">Agregar a Carrito</a>
                                <a  href="ProductoServlet?accion=buscar&id=<%=x.getCod()%>" class="btn btn-danger">ver producto</a>

                            </div>
                        </div>
                    </div>
                </div>
                <br>

                <%
                        cuenta++;
                        if (cuenta % 3 == 0) {
                            out.print("<tr>");
                        }
                    }

                %>

            </div>
        </div>

        <BR> <BR> <BR>
    </center>



    <%@include file="WEB-INF/jspf/cfooter.jspf" %>


</body>
</html>
