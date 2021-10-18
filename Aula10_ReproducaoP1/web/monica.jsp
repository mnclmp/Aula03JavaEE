<%-- 
    Document   : monica
    Created on : 18 de out. de 2021, 16:24:15
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
        <%if(usuario_auth!=null){%>
        <center>
        <h1>Monica Olimpio Ribeiro</h1>
        <h2>RA:	1290482012041</h2>
        <h3>Semestre Ingressado: 1º Semestre de 2020 - TURMA A</h3>
        <h3><a href="https://github.com/mnclmp">Github</a></h3>
        </hr>
        <h4>MATÉRIAS EM QUE ESTOU MATRICULADA </h4>
        <table border="10">
            <th>DISCIPLINAS</th>
        <tr><td>Banco de Dados</td></tr>
        <tr><td> Engenharia de Software III</td></tr>
        <tr><td> Programação Orientada a Objetos</td></tr>
        <tr><td>Linguagem de Programação IV - INTERNET</td></tr>
        <tr><td>Sistemas Operacionais II</td></tr>
        <tr><td> InglÊs IV</td></tr>
        <tr><td>Metodologia da Pesquisa Científico-Tecnológica</td></tr>
	</table>
    </center>
        <%}else{%>
        <h4>Acesso negado!</h4>
        <%}%>
    </body>
</html>

