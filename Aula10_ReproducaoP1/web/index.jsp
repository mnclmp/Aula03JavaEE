<%-- 
    Document   : index
    Created on : 18 de out. de 2021, 16:24:04
    Author     : or_mo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int sessions = 0;
    ArrayList<String> sessionList = null;
    if(application.getAttribute("sessionList")!=null){
        sessionList = (ArrayList)application.getAttribute("sessionList");
        sessions = sessionList.size();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MonicaAPP</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h3>Usuários: <u><%= sessions %></u></h3>
        <%if(session.getAttribute("usuario")!=null && sessionList!=null){%>
        <table border="3">
            <th>ONLINE</th>
            <%for(String name: sessionList){%>
            <tr><td><%= name %></tr><td>
            <%}%>
        </table>
        <%}%>
    </body>
</html>