<%-- 
    Document   : verPersonas
    Created on : 01/12/2021, 13:13:54
    Author     : Sebastian
--%>

<%@page import="java.util.List"%>
<%@page import="logica.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de personas</title>
        <link rel="stylesheet" href="styles/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>

    <body>
        <main class="container">
            <div class="card">
                <h1>Lista de personas</h1>
            </div>
            <%
                List<Persona> listaPersonas = (List) request.getSession().getAttribute("listaPersonas");
                for (Persona per : listaPersonas) {
            %>
            <div class="card">
                    <p class="h6"><b>ID</b>&nbsp;&nbsp;&nbsp;&nbsp;<%=per.getId()%></p>
                    <p class="h6"><b>D.N.I.</b>&nbsp;&nbsp;&nbsp;&nbsp;<%=per.getDni()%></p>
                    <p class="h6"><b>Nombre</b>&nbsp;&nbsp;&nbsp;&nbsp;<%=per.getNombre()%></p>
                    <p class="h6"><b>Apellido</b>&nbsp;&nbsp;&nbsp;&nbsp;<%=per.getApellido()%></p>
                    <p class="h6"><b>Teléfono</b>&nbsp;&nbsp;&nbsp;&nbsp;<%=per.getTelefono()%></p>
            </div>
            <%
                }
            %>            
        </main>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
