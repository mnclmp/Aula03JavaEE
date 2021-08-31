<%-- 
    Document   : timestamp
    Created on : 30 de ago. de 2021, 17:08:29
    Author     : or_mo
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java EE - JSP </title>
    </head>
    <body>
        <h1>Java EE</h1>
        <h2> Java Server Pages </h2>
        <h4><a href="index.html"> Voltar. </a></h4>
        <h3> Data e Hora do Servidor </h3>
        <% 
            Date now = new Date ();
            %> 
            <div><%=  now %></div> 
        
    </body>
</html>
