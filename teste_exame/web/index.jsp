<%-- 
    Document   : index
    Created on : 12 de dez. de 2021, 19:22:48
    Author     : or_mo
--%>

<%@page import="DB.MonicaTasks"%>
<%@page import="WEB.MonicaDBListener"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.Exception"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    Exception requestException = null;
    ArrayList<String> monica_tasks = new ArrayList<>();
    try {
        if (request.getParameter("adicionar") != null) {
            String task_name = request.getParameter("task_name");
            String usuario = (String)session.getAttribute("usuario");
            MonicaTasks.addTask(task_name, usuario);
            response.sendRedirect(request.getRequestURI());
        }
        if (request.getParameter("remove") != null) {
            String task_name = request.getParameter("task_name");
            MonicaTasks.removeTask(task_name);
            response.sendRedirect(request.getRequestURI());
        }
        monica_tasks = MonicaTasks.getTasks();
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
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%if (MonicaDBListener.exception!= null) {%>
            Erro na criação do BD: <%=MonicaDBListener.exception.getMessage() %>
        <%}%>
        <%if (requestException!= null) {%>
            ERRO. Verifique e tente novamente. <%= requestException.getMessage() %>
        <%}%>
        <%if (session.getAttribute("usuario") == null) {%>
        <h3> É necessário identificar-se para visualizar as tarefas</h3>
        <%} else {%>
        
        <form>
            <input type="text" name="task_name"/>
            <input type="submit" name="adicionar" value="+"/>
        </form>
        
        <table border="1">
            <%for(String task : monica_tasks){%>
            <tr>
                <td><%= task %></td>
                <td>
                    <form>
                        <input type="hidden" name="task_name" value="<%= task %>"/>
                        <input type="submit" name="remove" value="-"/>
                    </form>
                </td>
            </tr>
            <%}%>
            
        </table>        
        <%}%>
    </body>
</html>
