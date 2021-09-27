<%-- 
    Document   : about
    Created on : 27 de set. de 2021, 08:45:59
    Author     : or_mo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <%if (usuario == null){%>
        <h2>Sem permissão de acesso!!</h2><!-- comment -->
        <%}else {%>
        <center>
        <h1>Monica Olimpio Ribeiro</h1><!-- comment -->
        <h2> RA:1290482012041</h2><!-- comment -->
        <hr/>
    </center>
    <h1><a href="https://github.com/mnclmp"> GITHUB </a></h1>
        <%}%>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
       
</html>
