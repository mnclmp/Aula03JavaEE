<%-- 
    Document   : random-list
    Created on : 30 de ago. de 2021, 18:51:56
    Author     : or_mo
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String errorMessage = null;
int n = 4;
    try{
    n = Integer.parseInt(request.getParameter("n"));
    }catch(Exception e){
        errorMessage = "O parâmetro: " + request.getParameter("n")+" não é um parâmetro do tipo inteiro.";
     }
   %> 

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java EE - JSP </title>
    </head>
    <body>
        <h1>Java EE</h1>
        <h2> Java Server Pages </h2>
        <h4><a href="index.html">Voltar</a> </h4>
        <h3> Números aleatórios </h3>
        <% if (errorMessage==null){%>
        <table border="1">
            <tr>
                <th>Índice</th>
                <th>Número</th>
            </tr>
            <% for(int i=1 ;i<=n; i++){%>
            <tr>
                <td><%=i %></td>
                <td><%=((int)(100*Math.random()))%></td>
                <%}%>
            </tr>
            </table>
            <% }else{%>
            <div style = "color: red"> <%= errorMessage %></div>
            <% }%>
            <hr/>
            <form action="random-list.jsp">
                <input  type="number" name="n" value="<%=n%>"/>
                <input type="submit" value="Gerar">
            </form>
    </body>
</html>
