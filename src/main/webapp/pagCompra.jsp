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
        <link href="Resources/css/Index.css" rel="stylesheet" type="text/css"/>        

    </head>
    <!-- Cabezera -->

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <!-- ====================Navegación-Izquierda==================== -->
            <a class="navbar-brand" href="index.jsp">         
                <img src="Resources/ImgLogin/logo.png" alt="" height="70" width="120"/>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- ====================Navegación-Derecha==================== -->
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav m-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">INICIO</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Nosotros.jsp">NOSOTROS</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="CategoriaServlet?accion=listar">PRODUCTOS</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Contacto.jsp">CONTACTANOS</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Login.jsp">LOGIN</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"   href="CategoriaServlet?accion=listar">SEGUIR COMPRANDO</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <body> 
        <br><br><br>
    <center>
        <%
            HttpSession ses = request.getSession();
            List<Compra> lista = (ArrayList) ses.getAttribute("canasta");
        %> 
        <div class=" col-sm-10">
            <div class="row ">
                <div class="card col-sm-8">
                    <table class="table table-hover">   
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
                                    out.print("<H1>LISTA DE COMPRA VACIA</h1>");
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
                                <td><a class="btn btn-danger"   href="CompraServlet?accion=Actualizar&cat=<%=cat%>&id=<%=x.getCod()%>&idc=<%=indece%>">actualizar</a></td>

                                <% indece++;
                                            totalCompra = totalCompra + x.total();
                                        }
                                    }
                                %>


                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card-header">
                            <h3>Generar Compra</h3>
                            <div class="card-body">
                                <label>Subtotal:</label>
                                <input type="text" value="<%=totalCompra%>" readonly="" class="form-control">
                                <label>Descuento:</label>
                                <input type="text"value="0.00%" readonly="" class="form-control">
                                <label>Total Pagar:</label>
                                <input type="text"value="<%=totalCompra%>" readonly="" class="form-control">
                            </div>
                            <div class="card-footer">
                                <a href="# "  class="btn btn-info btn-block" >Realizar Pago</a>
                                <a  href="CompraServlet?accion=Grabar&id=<%=indece%>"class="btn btn-danger btn-block">Generar Compra</a>

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
