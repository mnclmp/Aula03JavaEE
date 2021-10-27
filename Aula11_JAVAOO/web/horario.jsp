<%-- 
    Document   : horario
    Created on : 25 de out. de 2021, 15:40:23
    Author     : or_mo
--%>
<%@page import="MODEL.Horario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    Horario atual = new Horario();
    atual.setHoras(22);
    atual.setMinutos(8);
    atual.setSegundos(-3);
    
    Horario intervalo = new Horario();
    intervalo.setHoras(16);
    intervalo.setMinutos(40);
    intervalo.setSegundos(-3);

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Horário - Java OO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <center>
        <h2>Classe Horário</h2>
        <fieldset>
        <h3>Horário atual da classe</h3>
        <div><%= atual.getHorario()%></div>
        <h3>Intervalo:</h3>
        <div><%= intervalo.getHorario() %></div>
        </fieldset>
    </center>
    </body>
    </body>
</html>
