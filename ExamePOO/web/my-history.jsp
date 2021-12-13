<%-- 
    Document   : my-history
    Created on : 13 de dez. de 2021, 15:24:14
    Author     : or_mo
--%>

<%@page import="DB.MonicaTable"%>
<%@page import="WEB.MonicaDBListener"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Exception requestException = null;
    ArrayList<String> usuarios_historico = new ArrayList<>();
    String usuario = null;
    try {
        if (request.getParameter("usuario") != null) {
            usuario = (String)session.getAttribute("usuario");
            MonicaTable.addUser("usuario", usuario);
            response.sendRedirect(request.getRequestURI());
        }
        if (request.getParameter("usuario") != null) {
            usuario = request.getParameter("usuario");
            MonicaTable.allUser(usuario);
            response.sendRedirect(request.getRequestURI());
        }
        usuarios_historico = MonicaTable.getTable();
    } catch (Exception e) {
        requestException = e;
    }

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>   
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h1>Histórico de Acesso</h1>
        <%if (usuario == null){%>
            Permissão negada! 
        <%}else{%>
        <table border="10">
             <%for(String user : usuarios_historico){%>
            <tr>
                <td><%= user %></td>
            </tr>
            <%}%>
            
        </table>
    </body>
</html>
