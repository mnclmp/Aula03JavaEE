<%-- 
    Document   : tabela-price
    Created on : 13 de set. de 2021, 17:49:49
    Author     : or_mo
--%>

<%@page import="java.lang.Exception"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    //colocando variáveis para a fórmula
    
    int tempo = 0; 
    double txjuros = 0, amortizacao = 0, parcela = 0, juros = 0, valor = 1000;
    String errorMessage = null;
    
    try{ //try e catch usando apenas para os valores de entrada
    valor = Double.parseDouble(request.getParameter("valor"));
    txjuros = Double.parseDouble(request.getParameter("txjuros"));
    tempo = Integer.parseInt(request.getParameter("tempo"));
     
    }catch(Exception erro){
    errorMessage = "Erro de parâmetro"+erro;
    }
     //formula tabela price
      txjuros = txjuros/100;
     //price vai fazer uma conta no início, tudo de uma vez.
     //define uma parcela fixa para pagar durante todo o período
     parcela = valor*txjuros/(1-(1/Math.pow((1+txjuros), tempo)));//calculo pmt, a parcela média
     
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>  
        <h1>CÁLCULO DE EMPRÉSTIMO </h1>
        <form action="tabela-price.jsp">
            <div>
               
            <label> EMPRÉSTIMO (R$) </label><br>
            <input type="number"  name="valor" value="<%=valor%>"/><br>
            <label>TAXA DE JUROS (%)</label><br>
            <input type="number"  name="txjuros" value="<%=txjuros%>"/><br>
            <label> PERÍODO QUE DESEJA DE EMPRÉSTIMO (TEMPO) </label><br>
           <input type="number"  name="tempo" value="<%=tempo%>"/><br>
            <input type='submit' value='CALCULAR!'>
            <br>
            <hr/>
    </form>
    <center>
         <table class="table-price" border="10">
             <h1>TABELA</h1>
             <tr>
               <th>PERÍODO (TEMPO)</th>
               <th> SALDO DEVEDOR (-A)</th>
               <th>PARCELA</th><th>JUROS</th>
               <th>AMORTIZAÇÃO (A)</th>
             </tr>
                 </center>
    <% for(int i = 0; i<tempo;i++){
        //amortização é a parcela - os juros
         juros = valor*txjuros; //valor é a soma dos juros, menos a parcela.
         valor = (valor+juros)-parcela; //atualizar o valor
         amortizacao = parcela - juros;
         
    
        %> 
    
    <tr>
        <th><%=i+1%></th>
        <th><%=Math.round(valor*100d)/100d%></th>
        <th><%=Math.round(parcela*100d)/100d%></th>
        <th><%=Math.round(juros*100d)/100d%></th>
        <th><%=Math.round(amortizacao*100d)/100d%></th>
      
        <%}%>
    
   
    </table>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
