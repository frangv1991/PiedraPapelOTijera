<%-- 
    Document   : crearPartida
    Created on : 06-nov-2017, 20:24:58
    Author     : frangv1991
--%>

<%@page import="es.ayesa.cursoweb.GestorPartidas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            GestorPartidas.crearPartida(request.getParameter("nombreJugador"), request.getParameter("jugada"));
            response.sendRedirect("/index.jsp");
        %>
    </body>
</html>
