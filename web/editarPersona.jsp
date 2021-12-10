<%-- 
    Document   : editarPersona
    Created on : 02/12/2021, 10:56:46
    Author     : Sebastian
--%>

<%@page import="logica.Persona"%>
<%@page import="persistencia.PersonaJpaController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editor de personas</title>
        <link rel="stylesheet" href="styles/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <%
            Persona per = (Persona) request.getSession().getAttribute("per");
        %>
        <main class="container">
            <div class="card">
                <h1>Editor de personas</h1>
            </div>
            <div class="card">
                <form action="SvEditar" method="POST">
                    <p class="h6"><b>ID</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="<%=per.getId()%>" name="id"></p>
                    <p class="h6"><b>D.N.I.</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="<%=per.getDni()%>" name="dni"></p>
                    <p class="h6"><b>Nombre</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="<%=per.getNombre()%>" name="nombre"></p>
                    <p class="h6"><b>Apellido</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="<%=per.getApellido()%>" name="apellido"></p>
                    <p class="h6"><b>Teléfono</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="<%=per.getTelefono()%>" name="telefono"></p>
                    <button type="submit" class="btn-secundary">Editar persona</button>
                </form>
            </div>
        </main>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
