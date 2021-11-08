<%-- 
    Document   : index
    Created on : 8 de nov. de 2021, 17:05:23
    Author     : or_mo
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="DB.Tasks"%>
<%@page import="WEB.DBListener"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   Exception requestException = null;
   ArrayList<String> taskList = new ArrayList<>();
   try{
    if(request.getParameter("add")!=null){
       String taskName = request.getParameter("taskName");
       Tasks.addTask(taskName);
       response.sendRedirect(request.getRequestURI());
    }
    if(request.getParameter("remove")!=null){
       String taskName = request.getParameter("taskName");
       Tasks.removeTask(taskName);
       response.sendRedirect(request.getRequestURI());
    }
       taskList =  Tasks.getTasks();
    }catch(Exception ex){
       requestException = ex;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JDBC</title>
    </head>
    <body>
        <h1>JDBC - Monica Olimpio Ribeiro</h1>
        <div><%= new java.util.Date() %></div>
        <h3></h3>
        <h2>To-Do List</h2>
        <%if(DBListener.exception!=null){%>
        <div style="color:red">
            Erro na criação do banco de dados:
            <%=DBListener.exception.getMessage()%>
        </div>
        <%}%>
         <%if(requestException!=null){%>
        <div style="color:red">
            Erro na leitura ou gravação de tarefas:
            <%=requestException.getMessage()%>
        </div>
        <%}%>
        <h3>Tarefas</h3>
        <form>
            <input type='text' name='taskName'/>
            <input type='submit' name='add' value="Adicionar"/>
        </form>
        <table>
            <%for(String taskName: taskList){%>
            <tr>
                <td><%= taskName%></td>
                <td>
                    <form>
                        <input type="hidden" name="taskName" value="<%= taskName %>"/>
                        <input type="submit" name="remove" value="-"/>
                    </form>
                </td>          
            </tr>
            <%}%>
        </table>
    </body>
</html>
