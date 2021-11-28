
<%@page import="com.utp.model.entities.Compra"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--Título de la página-->
        <title>PlanetKIDS | Compra</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!------ BootStrap | JS ---------->
        <%@include file="WEB-INF/jspf/Styles.jspf" %>

        <!------ Estilos CSS ---------->
        <link href="Resources/css/Carrito.css" rel="stylesheet" type="text/css"/>
        <link href="Resources/css/Index.css" rel="stylesheet" type="text/css"/>
    </head>
    <!-- Cabezera -->
    <%@include file="WEB-INF/jspf/cheader.jspf" %>
    <body> 
        <br><br><br>
    <center>
        <%
            HttpSession ses = request.getSession();
            List<Compra> lista = (ArrayList) ses.getAttribute("canasta");
        %> 
        <div class="">
            <div class="">
                
                            <% int indece = 0;
                                int cat = 10;
                             
                                double totalCompra = 0;
                                if (lista == null) {
                                    out.print("<H1>Juguetes para todos</h1>");
                                } else {
                                    for (Compra x : lista) {
                            %>
                            <
                                <% indece++;
                                            totalCompra = totalCompra + x.total();
                                        }
                                    }
                                %>
             
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card-header">
                            <h3>Genere su compra</h3>
                            <div class="">
                                <label>Subtotal:</label>
                                <input type="text" value="<%=totalCompra%>" readonly="" class="form-control">
                                <label>Descuento:</label>
                                <input type="text"value="0%" readonly="" class="form-control">
                                <label>Total Pagar:</label>
                                <input type="text"value="<%=totalCompra%>" readonly="" class="form-control">
                            </div>
                            <br>
                            <div class="">
                                <a href="# "  class="btn btn-block btn-outline-dark" >Realizar Pago</a>
                                
                                <a  href="CompraServlet?accion=Grabar&id=<%=indece%>"class="btn btn-block btn-outline-dark" >Generar Compra</a>
                                <a  href="pagCompra.jsp"  class="btn btn-block btn-outline-dark" >Ver compras</a>
                            </div>
                        </div>
                    </div>
                </div>        
            </div>
        </div>
                                <br><br><br>
    </center> 
    <%@include file="WEB-INF/jspf/cfooter.jspf" %> 
</body>
</html>