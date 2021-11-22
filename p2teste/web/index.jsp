<%-- 
    Document   : index
    Created on : 22 de nov. de 2021, 15:23:01
    Author     : or_mo
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="DB.monica_tasks"%>
<%@page import="WEB.MonicaDBListener"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     
    Exception requestException = null;
    ArrayList<String> task_lista = new ArrayList<>();
    try{
        if(request.getParameter("adicionar") != null){
        String task_nome = request.getParameter("taskName");
        monica_tasks.addTask(task_nome);
        response.sendRedirect(request.getRequestURI());
        }
        if(request.getParameter("remove") != null){
        String task_nome = request.getParameter("taskName");
        monica_tasks.removeTask(task_nome);
        response.sendRedirect(request.getRequestURI());
        }
        task_lista = monica_tasks.getTasks();
    }catch(Exception ex){
            requestException = ex;
     }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>

        </hr>
        <%if(MonicaDBListener.exception != null){%>
                Erro na criação do banco!
                <%= MonicaDBListener.exception.getMessage() %>
        <%}%>
                <%if(requestException != null){%>
            <h3>
              ERRO. Tente novamente.     
                <%= requestException.getMessage() %>
                </h3>
        <%}%>
                <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <h3> Cadastre a tarefa abaixo </h3>
        <form>  
            <input  type="text" name="task_nome">
            <input  type="submit" name="adicionar" value="ADICIONAR">
        </form>
        <br>
        <div >
        <table>
            <tr>
                <th>Lista de Tarefas no Banco de Dados</th>
            </tr>
            <%for(String task_nome: task_lista){%>
            
            <tr>
                <td><%= task_nome %></td>
                <td >
                    <form>
                        <input  type="hidden" name="task_nome" value="<%= task_nome %>"/>
                        <input type="submit" name="remove" value="Remover"/>
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
        </div>
    </body>
</html>