<%-- 
    Document   : data
    Created on : 25 de out. de 2021, 15:39:53
    Author     : or_mo
--%>
<%@page import="MODEL.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Data padrão = new Data();
    
    Data hoje = new Data();
    hoje.setDia(26);
    hoje.setMês(10);
    hoje.setAno(2021);
    
    Data MonicaBday = new Data(14, 11, 1994);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data - Java OO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
    <center>
        <h2>CLASSE DATA</h2>
        <h3>Data padrão da classe</h3>
        <div><%= padrão.getDia() %>/<%= padrão.getMês() %>/<%= padrão.getAno() %></div>
        <h3>Data de hoje:</h3>
        <div><%= hoje.getData() %></div>
        <h3>Meu aniversário:</h3>
        <div><%= MonicaBday.getData() %></div>
    </center>
    </body>
</html>
