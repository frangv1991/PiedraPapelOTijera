<%-- 
    Document   : index
    Created on : 06-nov-2017, 20:12:18
    Author     : frangv1991
--%>

<%@page import="es.ayesa.cursoweb.GestorPartidas"%>
<%@page import="es.ayesa.cursoweb.Partida"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <main>
            <h1>Partidas en curso</h1>
            <table border="1">
                <tr>
                    <th>Fecha</th>
                    <th>Jugador A</th>
                    <th>Jugada A</th>
                    <th>¡Jugar!</th>
                </tr>
            <%
                for(Partida partidaEnCurso: GestorPartidas.getComenzadas()){
            %> <tr> <td><%= partidaEnCurso.getFechaCreacion() %></td> <td><%= partidaEnCurso.getJugadorA() %></td> <td> <%= partidaEnCurso.getJugadaA()
                    %></td> <td><a href="/jugar.jsp?idPartida=<%= partidaEnCurso.getId() %> "> Jugar </a></td> </tr>
            <%  } %>
            </table>
            <br/>
            <form action="/crearPartida.jsp">
                <label for="nombreJugador">Nombre:</label><input name="nombreJugador" required> <br/>
                <label for="jugada">Jugada:</label><br/>
                <input type="radio" name="jugada" value="PIEDRA" required>PIEDRA<br/>
                <input type="radio" name="jugada" value="PAPEL">PAPEL<br/>
                <input type="radio" name="jugada" value="TIJERAS">TIJERA<br/>
                <br/>
                <input type="submit" value="Jugar!">
            </form>
            <br/>
            <a href="partidasCompletadas.jsp">Ver partidas completadas</a>
        </main>
    </body>
</html>
