<%-- 
    Document   : monica-dica-megasena
    Created on : 18 de out. de 2021, 17:10:04
    Author     : or_mo
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<Integer> numeros = (ArrayList)session.getAttribute("numeros_lista");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MonicaAPP</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%if(session.getAttribute("usuario")==null){%>
            <h4>Acesso negado!</h4>
        <%}else if(numeros == null){%>
            <h4>Sem números da sorte. Tente outra vez!</h4>
        <%}else{%>
    <center>
        <h2>Seus números da sorte:</h2>
            <table border="10">
                <tr>
                    <th>Número</th>
                </tr>
                <%for(int n: numeros){%>
                <tr>
                    <td><%= n %></td>
                </tr>
                <%}%>
            </table>
    </center>
        <%}%>
    </body>
</html>