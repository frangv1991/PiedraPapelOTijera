<%-- 
    Document   : partidasCompletadas
    Created on : 06-nov-2017, 20:41:23
    Author     : frangv1991
--%>

<%@page import="es.ayesa.cursoweb.GestorPartidas"%>
<%@page import="es.ayesa.cursoweb.Partida"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <th>Fecha</th>
                <th>Jugador A</th>
                <th>Jugada A</th>
                <th>Jugador B</th>
                <th>Jugada B</th>
                <th>Ganador</th>
            </tr>
            <%
                for (Partida partidaEnCurso : GestorPartidas.getTerminadas()) {
                    %> <tr> <td> <%= partidaEnCurso.getFechaCreacion()%></td> <td> <%= partidaEnCurso.getJugadorA()%></td> <td> <%= partidaEnCurso.getJugadaA()%></td> <td> <%= partidaEnCurso.getJugadorB()%></td> <td> <%= partidaEnCurso.getJugadaB()%></td> <td> <%= partidaEnCurso.resultado() %></td></tr>
                <%  }%>
        </table>
    </body>
</html>
