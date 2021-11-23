
$ (document).ready (function () {

$ ("tr #Cantidad").click (function () {
  var idp = $(this).parent ().find ("#idpro").val () ;
  var cantidad = $ (this).parent (). find ("#Cantidad").val ();
  var url = "CompraServlet?accion=Acualizar";
   $.ajax ({
     type: 'POST',
     url: url,
     data: "idp=" + idp + "&cantidad=" + cantidad,
     success: function (data, textStatus, jgXHR) {
      }
  });
});
});