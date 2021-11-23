<%@page import="com.utp.model.entities.Categoria"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--Título de la página-->
        <title>PlanetKIDS | Categoria</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!------ BootStrap | JS ---------->
             

    <%@include file="WEB-INF/jspf/Styles.jspf" %>
        <!------ Estilos CSS ---------->
        <link href="Resources/css/Index.css" rel="stylesheet" type="text/css"/>        
        <link href="https://fonts.googleapis.com/css?family=Chilanka&display=swap" rel="stylesheet">
    </head>
    <body>
        <%@include file="WEB-INF/jspf/cheader.jspf" %>
        <br><br><br>
        <%
            List<Categoria> lis = (ArrayList) request.getAttribute("Categoria");
            int cuenta = 0;
        %>    
    <center>
      
        <table cellspacing="15" cellpadding="15">
            <tr>   
                <%
                    for (Categoria x : lis) {
                %>
                <td  >
                    <div class="card-title">
                        <div class="text-center">
                           
                            <a href="ProductoServlet?accion=listar&id=<%=x.getCod()%>">
                                <img src="Resources/Imgcategoria/<%=x.getImagen()%>" height="200" width="200">
                                <br><button  type="submit" class="btn btn-outline-primary" id="anadir" onclick="window.location = 'ProductoServlet?accion=listar&id=<%= x.getCod()%>'"><%=x.getNom()%></button>
                            </a>   
                        </div>
                    </div>
                </td>

                <%
                        cuenta++;
                        if (cuenta % 3 == 0) {
                            out.print("<tr>");
                        }
                    }
                %>

        </table>
        <BR> <BR> <BR>
    </center>
    <%@include file="WEB-INF/jspf/cfooter.jspf" %>

</body>
</html>
