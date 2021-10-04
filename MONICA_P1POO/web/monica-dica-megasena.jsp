<%-- 
    Document   : monica-dica-megasena
    Created on : 4 de out. de 2021, 02:08:03
    Author     : or_mo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MonicaAPP</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <%if(usuario !=null){%>
        <table border="3">
                    <%if (session.getAttribute("randomlist") != null) { 
                            numeros_lista = (ArrayList<Integer>) session.getAttribute("randomlist");
                            for (int i = 0; i <numeros_lista.size(); i++) { %>
                                <tr> 
                                    <td><%=i+1%></td>
                                    <td><%=numeros_lista.get(i)%></td>
                                </tr>
                            <%}
                    }%>
                </table>
                  <%}else{%>
                  <h3>Acesso negado!</h3><!-- comment -->
                  <%}%>
    </body>
</html>
