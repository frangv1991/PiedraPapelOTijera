<%-- 
    Document   : jugarContraLaMaquina2
    Created on : 06-nov-2017, 19:47:12
    Author     : frangv1991
--%>

<%@page import="es.ayesa.cursoweb.Partida"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String jugadorA = request.getParameter("nombreJugador");
            String jugadaA = request.getParameter("jugada");

            String jugadorB = "la máquina";
            String jugadaB = Partida.generarJugadaAleatoria();

            Partida partida = new Partida(jugadorA, jugadaA, jugadorB, jugadaB);
            String[] posiblesJugadas = {"PIEDRA", "PAPEL", "TIJERAS"};
        %>
        <h1><%= partida.resultado() %></h1>
        Jugador humano: <%= jugadorA %>, jugada <b><%= jugadaA %></b><br/>
        
        Máquina: <%= jugadorB %>, jugada <b><%= jugadaB %></b><br/>
        <% if(partida.getGanador().equals(jugadorA)){%>
        <h2>No me creo que le hyas ganado a la máquina</h2>
        <% }%>
        
        Las opciones son:
        <%
            for(String opcion:posiblesJugadas){
        %>
        <h2><%= opcion %></h2>
            <% } %>
    </body>
</html>
