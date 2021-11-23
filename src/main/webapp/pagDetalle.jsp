<%@page import="com.utp.model.entities.Producto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <!--Título de la página-->
        <title>PlanetKIDS | Detalle </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <!------ BootStrap | JS ---------->

    <%@include file="WEB-INF/jspf/Styles.jspf" %>
    <!------ Estilos CSS ---------->
        <link href="Resources/css/Index.css" rel="stylesheet" type="text/css"/>        

    </head>
    
    <body >
        <%@include file="WEB-INF/jspf/cheader.jspf" %>
        <%
            Producto lis=(Producto)request.getAttribute("producto");
        %>    
    <center>
        <h1>Lista de Categorias</h1>
           <form action="CompraServlet"method="POST">
            <table>
               
                <input type="hidden" name="cod" value="<%=lis.getCod()%>">
                <tr><td rowspan="5"><img src="Resources/Imgproductos/<%=lis.getImg()%>" width="200" height="200">
                     <td>DESCRIPCION:  <td><%=lis.getNom()%>
                <tr> <td>PRECIO: <td><%=lis.getPrecio()%>
                <tr> <td>DISPONIBLE: <td><%=lis.getStk()%>
                <tr> <td>CANTIDAD:  <td><input name="cant" type="number" id="Cantidad" value="1" class="form-control text-center" min="1" max="<%=lis.getStk()%>">
                <di>    
                    <input type="submit" name="accion" value="Comprar"  class="btn btn-primary">
                </di>
              
                           
                      

            </table>
        </form>
    </center>

         <script>
               function compra(){
                  can= Number(fr.cantidad.value);
                  stk= <%=lis.getStk()%>;
                  if(can>stk){
                      alert('cantidad no disponible ');
                    }else
                        fr.submit();
                    
                }
            </script> 





 <%@include file="WEB-INF/jspf/cfooter.jspf" %>
</body>
</html>
