<%-- 
    Document   : jugar
    Created on : 06-nov-2017, 20:34:07
    Author     : frangv1991
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="/completarPartida.jsp">
            <input type="hidden" name="idPartida" value="<%= request.getParameter("idPartida") %>"><br/>
            <label for="nombreJugador">Nombre:</label><input name="nombreJugador" required> <br/>
            <label for="jugada">Jugada:</label><br/>
            <input type="radio" name="jugada" value="PIEDRA" required>PIEDRA<br/>
            <input type="radio" name="jugada" value="PAPEL">PAPEL<br/>
            <input type="radio" name="jugada" value="TIJERAS">TIJERA<br/>
            <br/>
            <input type="submit" value="Jugar!">
        </form>
    </body>
</html>
