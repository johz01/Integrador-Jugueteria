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
        <div class="col-sm-10">
            <div class="">
                <div class="card col-sm-8">
                    <table class="table-hover">   
                        <thead>
                            <tr>
                                <th>CODIGO</th>
                                <th>PRODUCTO</th>
                                <th>DESCRIPCION</th>
                                <th>PRECIO</th>
                                <th>CANTIDAD</th>
                                <th>COSTO</th>
                                <th>ACCION</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                               <% int indece = 0;
                                int cat = 10;
                             
                                double totalCompra = 0;
                                if (lista == null) {
                                    out.print("<H1>LISTA DE COMPRA </h1>");
                                } else {
                                    for (Compra x : lista) {
                            %>
                            <tr>
                                <td><%=indece + 1%></td>
                                <td><%=x.getNom()%></td>
                                <td><img src="Resources/Imgproductos/<%=x.getImg()%>"width="70" height="70"></td>
                                <td><%=x.getPrecio()%></td>

                                <td>
                                    <input name="cat" type="number" id="Cantidad" value="<%=x.getCant()%>" class="form-control text-center" min="1" >
                                </td>
                                <td><%=x.total()%></td>
                                <td><a class="btn btn-warning  "href="CompraServlet?accion=Borrar&id=<%=indece%>">Borrar</a></td>               
                                <td><a class="btn btn-danger"   href="CompraServlet?accion=Actualizar&cat=<%=cat%>&id=<%=x.getCod()%>&idc=<%=indece%>">Actualizar</a></td>

                                <% indece++;
                                            totalCompra = totalCompra + x.total();
                                        }
                                    }
                                %>

                            </tr>
                        </tbody>
                    </table>
                </div> <br><br><br><br><br><br><br><br><br><br><br><br>
                                <a class="btn btn-warning btn-outline-dark" href="generar_compra.jsp">Ir a Pago</a>
                             
            </div>
        </div>
    <br><br><br>
    </center> 
    <%@include file="WEB-INF/jspf/cfooter.jspf" %> 
</body>

</html>
