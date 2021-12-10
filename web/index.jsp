<%-- 
    Document   : index
    Created on : 01/12/2021, 11:05:13
    Author     : Sebastian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar persona</title>
        <link rel="stylesheet" href="styles/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <style>
            div{
                margin: 1vh;
                padding: 1vh;
            }
        </style>
    </head>
    <body>
        <main class="container">
            <!-- ALTA -->
            <div class="card">
                <h1>Datos de la persona</h1>
                <p class="h5">Complete los datos de la persona que desea agregar</p>
                <form action="SvPersona" method="POST">
                    <p class="h6">NºD.N.I.&nbsp;&nbsp;<input type="text" name="dni"></p>
                    <p class="h6">Nombre&nbsp;&nbsp;<input type="text" name="nombre"></p>
                    <p class="h6">Apellido&nbsp;&nbsp;<input type="text" name="apellido"></p>
                    <p class="h6">Teléfono&nbsp;&nbsp;<input type="text" name="telefono"></p>
                    <button type="submit" class="btn-secundary">Agregar persona</button>
                </form>
            </div>
            <!-- LECTURA -->
            <div class="card">
                <h1>Ver lista de personas</h1>
                <p class="h5">Presione el botón para ver el listado completo de personas</p>
                <form action="SvPersona" method="GET">
                    <button type="submit" class="btn-secundary">Mostrar personas</button>
                </form>
            </div>
            <!-- MODIFICACION -->
            <div class="card">
                <h1>Editar persona</h1>
                <p class="h5">Ingrese el ID de la persona que desea editar</p>
                <form action="SvEditar" method="GET">
                    <input type="text" name="id_edit">
                    <button type="submit" class="btn-secundary">Editar persona</button>
                </form>
            </div>
            <!-- BAJA -->
            <div class="card">
                <h1>Eliminar persona</h1>
                <p class="h5">Ingrese el ID de la persona que desea eliminar</p>
                <form action="SvEliminar" method="POST">
                    <input type="text" name="id_elim">
                    <button type="submit" class="btn-secundary">Eliminar persona</button>
                </form>
            </div>
        </main>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>

</html>
