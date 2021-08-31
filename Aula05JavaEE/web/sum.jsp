<%-- 
    Document   : sum
    Created on : 30 de ago. de 2021, 17:44:12
    Author     : or_mo
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String errorMessage = null;
double n1 = 0, n2 = 0, result = 0;

try{
    n1 = Double.parseDouble(request.getParameter("n1"));
    }catch(Exception e){
        errorMessage = "Erro ao ler parâmetro n1: " + request.getParameter ("n1");
    }
    try {
    n2 = Double.parseDouble(request.getParameter("n2"));
    }catch (Exception e){
    errorMessage = "Erro ao ler parâmetro n2: " + request.getParameter ("n2");    
}   try{
    result = n1+n2;
    }catch(Exception E){
        errorMessage = "Erro ao calcular - " + request.getParameter("n2");
        
    }
    
%> <!-- guardando informações  -->
 <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java EE - JSP </title>
    </head>
    <body>
        <h1>Java EE</h1>
        <h2> Java Server Pages </h2>
        <h4><a href="index.html">Voltar</a> </h4>
        <h3> Soma </h3><!-- comment -->
        <% if (errorMessage==null){%>
        <h4><%= n1 %> + <%= n2 %> = <%= result %></h4>
        <%} else{%>
        <div style = "color: red"> <%= errorMessage %></div>
<% }%>
        <form action="sum.jsp">
        <input type="number" name="n1">+ 
        <input  type="number" name="n2">
        <input type="submit" value="=">
        </form>
    </head>
</html>
