<%-- 
    Document   : index
    Created on : 27 de set. de 2021, 11:41:10
    Author     : or_mo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%if(session.getAttribute("numero_aleatorio")== null){
   double numero_aleatorio = Math.round(Math.random()*(100-10)+10);//gerando numeros de 10 a 100
   session.setAttribute("numero_aleatorio", numero_aleatorio);
    }
double numero_aleatorio = (double)session.getAttribute("numero_aleatorio");
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MonicaAPP</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <%if (usuario == null){%>
        <h2>Sem permissão de acesso!!</h2><!-- comment -->
        <%}else {%>
        <h1><%=numero_aleatorio%><br></h1>
            <h1><a href="about.jsp">About me.</a></h1>
        <%}%>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
