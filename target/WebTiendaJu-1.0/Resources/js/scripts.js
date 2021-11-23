
function validarFormLogin()
{

    var correo, clave, expresion, aceptar, numeros;

    correo = document.getElementById("txtCorreo").value;
    clave = document.getElementById("txtClave").value;
    aceptar = document.getElementById("chkAceptar").checked;
    /* Expresion Regular para validar el correo */
    expresion = /\w+@+\w+\.+[a-zA-Z]{2,4}/;
    numeros = /[0-9]{4}/
    if (correo === "") {
        alertify.alert('Mensaje de advertencia', 'Deberá de ingresar un correo!');
        return false;
    } else if (!expresion.test(correo)) {
        alertify.alert('Mensaje de advertencia', 'Deberá de ingresar un correo válido!');
        return false;

    } else if (correo.length < 4 || correo.length > 30) {
        alertify.alert('Mensaje de advertencia', 'El numero de caracteres no cumple con las condiciones!');
        return false;

    }
    if (clave === "") {
        alertify.alert('Mensaje de advertencia', 'Deberá de ingresar una clave!');
        return false;
    } else if (isNaN(clave)) {
        alertify.alert('Mensaje de advertencia', 'Deberá de ingresar una clave numérica!');
        return false;
    } else if (clave.length != 4) {
        alertify.alert('Mensaje de advertencia', 'Deberá de ingresar una clave de 4 digitos!');
        return false;
    }

    if (!aceptar) {
        alertify.alert('Mensaje de advertencia', 'Deberá de aceptar los terminos y condiciones!');
        return false;
    }

}

function validarFormRegistro() {
    
    var correo, clave1, clave2;
    expresion = /\w+@+\w+\.+[a-zA-Z]{2,4}/;

    clave1 = document.getElementById("txtClave1").value;
    clave2 = document.getElementById("txtClave2").value;
//    correo = document.getElementById("txtCorreo").value;
    correo = document.getElementById("txtEmaUsu").value;
    
    if (correo === "") {
        alertify.alert('Mensaje de advertencia', 'Deberá de ingresar un correo!');
        return false;
    } else if (!expresion.test(correo)) {
        alertify.alert('Mensaje de advertencia', 'Deberá de ingresar un correo válido!');
        return false;
    }
    if (clave1 ===""){
        alertify.alert('Mensaje de advertencia','Debera llenar todos los campos');
        return false;
    }
    if (clave2 ===""){
        alertify.alert('Mensaje de advertencia','Debera llenar todos los campos');
        return false;
    }
    if (clave1 !== clave2) {
        alertify.alert('Mensaje de advertencia', 'Las claves no coinciden');
        return false;
    }

}