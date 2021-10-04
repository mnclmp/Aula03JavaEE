<%-- 
    Document   : index
    Created on : 4 de out. de 2021, 02:07:43
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
            Usuários na aplicação:
          <%if(application.getAttribute("contador") != null){%>
          <%=application.getAttribute("contador")%>
          <%}else{%>
          0
          <%}%>
          <%if(usuario != null){%>
          <table border="3">
              <th>###</th><!-- comment -->
              <th>Online no momento</th>
              <%if(application.getAttribute("usuarios_online") !=null){
              lista_usuarios = (ArrayList) application.getAttribute("usuarios_online");
              for(int i =0; i<lista_usuarios.size(); i++){
              %>
              <tr>
                  <td><%=i+1%>
                  <td><%=lista_usuarios.get(i)%></td>
              </tr>
              <%}}%>
              
          </table>
              <%}%>
          </body>