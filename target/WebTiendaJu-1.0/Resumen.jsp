<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos de la compra</h1>
        <%
          String cli=(String)request.getAttribute("cli");
          String fac=(String)request.getAttribute("factura");
         
          double tot=(double)request.getAttribute("total");
         %>
         <h2>
             Factura nro: <%=fac%>
             <br>Cliente :<%=cli%>
             <br>Total a Pagar:<%=tot%>
         </h2>
         <a href="index.jsp">Pagina inicial</a>
         
    </body>
</html>
