<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/cabecera.css">

</head>
<body>
    <form action="validar.php" method="post">
        <h1>Sistema de Login</h1>
        <p>Usuario</p><input type="text" placeholder="ingrese su nombre" name="usuario"></p>
        <p>Contraseña</p><input type="password" placeholder="ingrese su contraseña" name="contraseña"></p>
        <input type="submit" value="ingresar">
</body>
</html>